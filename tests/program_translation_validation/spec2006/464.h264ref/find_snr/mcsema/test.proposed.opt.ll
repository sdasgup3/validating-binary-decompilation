; ModuleID = 'mcsema/test.proposed.inline.ll'
source_filename = "llvm-link"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu-elf"

%__bss_start_type = type <{ [8 x i8] }>
%G_0x2a00b5__rip__type = type <{ [8 x i8] }>
%G_0x6cb8f8_type = type <{ [8 x i8] }>
%G_0x6cb900_type = type <{ [8 x i8] }>
%G_0x6cb910_type = type <{ [8 x i8] }>
%G_0x6ccf80_type = type <{ [8 x i8] }>
%G_0x6cee50_type = type <{ [4 x i8] }>
%G_0x6f6f90_type = type <{ [8 x i8] }>
%G_0x6f8edc_type = type <{ [4 x i8] }>
%G_0x6f96f0_type = type <{ [8 x i8] }>
%G_0x70fcf0_type = type <{ [8 x i8] }>
%G_0x710a40_type = type <{ [8 x i8] }>
%G_0x710a50_type = type <{ [8 x i8] }>
%G_0x722c90_type = type <{ [8 x i8] }>
%G_0x722ca8_type = type <{ [4 x i8] }>
%G_0x726418_type = type <{ [8 x i8] }>
%G_0x8600e__rip__type = type <{ [8 x i8] }>
%G_0x8604c__rip__type = type <{ [8 x i8] }>
%G_0x8609f__rip__type = type <{ [8 x i8] }>
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
@G_0x2a00b5__rip_ = global %G_0x2a00b5__rip__type zeroinitializer
@G_0x6cb8f8 = local_unnamed_addr global %G_0x6cb8f8_type zeroinitializer
@G_0x6cb900 = local_unnamed_addr global %G_0x6cb900_type zeroinitializer
@G_0x6cb910 = local_unnamed_addr global %G_0x6cb910_type zeroinitializer
@G_0x6ccf80 = local_unnamed_addr global %G_0x6ccf80_type zeroinitializer
@G_0x6cee50 = local_unnamed_addr global %G_0x6cee50_type zeroinitializer
@G_0x6f6f90 = local_unnamed_addr global %G_0x6f6f90_type zeroinitializer
@G_0x6f8edc = local_unnamed_addr global %G_0x6f8edc_type zeroinitializer
@G_0x6f96f0 = local_unnamed_addr global %G_0x6f96f0_type zeroinitializer
@G_0x70fcf0 = local_unnamed_addr global %G_0x70fcf0_type zeroinitializer
@G_0x710a40 = local_unnamed_addr global %G_0x710a40_type zeroinitializer
@G_0x710a50 = local_unnamed_addr global %G_0x710a50_type zeroinitializer
@G_0x722c90 = local_unnamed_addr global %G_0x722c90_type zeroinitializer
@G_0x722ca8 = local_unnamed_addr global %G_0x722ca8_type zeroinitializer
@G_0x726418 = local_unnamed_addr global %G_0x726418_type zeroinitializer
@G_0x8600e__rip_ = global %G_0x8600e__rip__type zeroinitializer
@G_0x8604c__rip_ = global %G_0x8604c__rip__type zeroinitializer
@G_0x8609f__rip_ = global %G_0x8609f__rip__type zeroinitializer

; Function Attrs: nounwind readnone
declare i32 @llvm.ctpop.i32(i32) #0

declare %struct.Memory* @sub_401100.log10_plt(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

; Function Attrs: alwaysinline
define %struct.Memory* @find_snr(%struct.State* noalias, i64, %struct.Memory* noalias readnone) local_unnamed_addr #1 {
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
  %40 = add i64 %7, -24
  %41 = add i64 %10, 15
  store i64 %41, i64* %3, align 8
  %42 = inttoptr i64 %40 to i64*
  store i64 0, i64* %42, align 8
  %43 = load i64, i64* %RBP.i, align 8
  %44 = add i64 %43, -24
  %45 = load i64, i64* %3, align 8
  %46 = add i64 %45, 8
  store i64 %46, i64* %3, align 8
  %47 = inttoptr i64 %44 to i64*
  store i64 0, i64* %47, align 8
  %48 = load i64, i64* %RBP.i, align 8
  %49 = add i64 %48, -32
  %50 = load i64, i64* %3, align 8
  %51 = add i64 %50, 8
  store i64 %51, i64* %3, align 8
  %52 = inttoptr i64 %49 to i64*
  store i64 0, i64* %52, align 8
  %RAX.i1238 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %53 = load i64, i64* %3, align 8
  %54 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*), align 8
  store i64 %54, i64* %RAX.i1238, align 8
  %RCX.i1236 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %55 = add i64 %54, 72684
  %56 = add i64 %53, 14
  store i64 %56, i64* %3, align 8
  %57 = inttoptr i64 %55 to i32*
  %58 = load i32, i32* %57, align 4
  %59 = zext i32 %58 to i64
  store i64 %59, i64* %RCX.i1236, align 8
  store i64 %54, i64* %RAX.i1238, align 8
  %60 = add i64 %53, 29
  store i64 %60, i64* %3, align 8
  %61 = load i32, i32* %57, align 4
  %62 = sext i32 %58 to i64
  %63 = sext i32 %61 to i64
  %64 = mul nsw i64 %63, %62
  %65 = trunc i64 %64 to i32
  %66 = and i64 %64, 4294967295
  store i64 %66, i64* %RCX.i1236, align 8
  %67 = shl i64 %64, 32
  %68 = ashr exact i64 %67, 32
  %69 = icmp ne i64 %68, %64
  %70 = zext i1 %69 to i8
  store i8 %70, i8* %14, align 1
  %71 = and i32 %65, 255
  %72 = tail call i32 @llvm.ctpop.i32(i32 %71)
  %73 = trunc i32 %72 to i8
  %74 = and i8 %73, 1
  %75 = xor i8 %74, 1
  store i8 %75, i8* %21, align 1
  store i8 0, i8* %27, align 1
  store i8 0, i8* %30, align 1
  %76 = lshr i32 %65, 31
  %77 = trunc i32 %76 to i8
  store i8 %77, i8* %33, align 1
  store i8 %70, i8* %39, align 1
  %78 = load i64, i64* %RBP.i, align 8
  %79 = add i64 %78, -44
  %80 = trunc i64 %64 to i32
  %81 = add i64 %53, 32
  store i64 %81, i64* %3, align 8
  %82 = inttoptr i64 %79 to i32*
  store i32 %80, i32* %82, align 4
  %83 = load i64, i64* %3, align 8
  %84 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*), align 8
  store i64 %84, i64* %RAX.i1238, align 8
  %85 = add i64 %84, 72688
  %86 = add i64 %83, 14
  store i64 %86, i64* %3, align 8
  %87 = inttoptr i64 %85 to i32*
  %88 = load i32, i32* %87, align 4
  %89 = zext i32 %88 to i64
  store i64 %89, i64* %RCX.i1236, align 8
  store i64 %84, i64* %RAX.i1238, align 8
  %90 = add i64 %83, 29
  store i64 %90, i64* %3, align 8
  %91 = load i32, i32* %87, align 4
  %92 = sext i32 %88 to i64
  %93 = sext i32 %91 to i64
  %94 = mul nsw i64 %93, %92
  %95 = trunc i64 %94 to i32
  %96 = and i64 %94, 4294967295
  store i64 %96, i64* %RCX.i1236, align 8
  %97 = shl i64 %94, 32
  %98 = ashr exact i64 %97, 32
  %99 = icmp ne i64 %98, %94
  %100 = zext i1 %99 to i8
  store i8 %100, i8* %14, align 1
  %101 = and i32 %95, 255
  %102 = tail call i32 @llvm.ctpop.i32(i32 %101)
  %103 = trunc i32 %102 to i8
  %104 = and i8 %103, 1
  %105 = xor i8 %104, 1
  store i8 %105, i8* %21, align 1
  store i8 0, i8* %27, align 1
  store i8 0, i8* %30, align 1
  %106 = lshr i32 %95, 31
  %107 = trunc i32 %106 to i8
  store i8 %107, i8* %33, align 1
  store i8 %100, i8* %39, align 1
  %108 = load i64, i64* %RBP.i, align 8
  %109 = add i64 %108, -48
  %110 = trunc i64 %94 to i32
  %111 = add i64 %83, 32
  store i64 %111, i64* %3, align 8
  %112 = inttoptr i64 %109 to i32*
  store i32 %110, i32* %112, align 4
  %113 = load i64, i64* %3, align 8
  %114 = load i64, i64* bitcast (%G_0x6cb8f8_type* @G_0x6cb8f8 to i64*), align 8
  store i64 %114, i64* %RAX.i1238, align 8
  %115 = add i64 %114, 68
  %116 = add i64 %113, 11
  store i64 %116, i64* %3, align 8
  %117 = inttoptr i64 %115 to i32*
  %118 = load i32, i32* %117, align 4
  %119 = zext i32 %118 to i64
  store i64 %119, i64* %RCX.i1236, align 8
  store i64 %114, i64* %RAX.i1238, align 8
  %120 = add i64 %114, 64
  %121 = add i64 %113, 23
  store i64 %121, i64* %3, align 8
  %122 = inttoptr i64 %120 to i32*
  %123 = load i32, i32* %122, align 4
  %124 = sext i32 %118 to i64
  %125 = sext i32 %123 to i64
  %126 = mul nsw i64 %125, %124
  %127 = trunc i64 %126 to i32
  %128 = and i64 %126, 4294967295
  store i64 %128, i64* %RCX.i1236, align 8
  %129 = shl i64 %126, 32
  %130 = ashr exact i64 %129, 32
  %131 = icmp ne i64 %130, %126
  %132 = zext i1 %131 to i8
  store i8 %132, i8* %14, align 1
  %133 = and i32 %127, 255
  %134 = tail call i32 @llvm.ctpop.i32(i32 %133)
  %135 = trunc i32 %134 to i8
  %136 = and i8 %135, 1
  %137 = xor i8 %136, 1
  store i8 %137, i8* %21, align 1
  store i8 0, i8* %27, align 1
  store i8 0, i8* %30, align 1
  %138 = lshr i32 %127, 31
  %139 = trunc i32 %138 to i8
  store i8 %139, i8* %33, align 1
  store i8 %132, i8* %39, align 1
  %140 = load i64, i64* %RBP.i, align 8
  %141 = add i64 %140, -36
  %142 = trunc i64 %126 to i32
  %143 = add i64 %113, 26
  store i64 %143, i64* %3, align 8
  %144 = inttoptr i64 %141 to i32*
  store i32 %142, i32* %144, align 4
  %145 = load i64, i64* %3, align 8
  %146 = load i64, i64* bitcast (%G_0x6cb8f8_type* @G_0x6cb8f8 to i64*), align 8
  store i64 %146, i64* %RAX.i1238, align 8
  %147 = add i64 %146, 3304
  %148 = add i64 %145, 14
  store i64 %148, i64* %3, align 8
  %149 = inttoptr i64 %147 to i32*
  %150 = load i32, i32* %149, align 4
  %151 = zext i32 %150 to i64
  store i64 %151, i64* %RCX.i1236, align 8
  store i64 %146, i64* %RAX.i1238, align 8
  %152 = add i64 %146, 3308
  %153 = add i64 %145, 29
  store i64 %153, i64* %3, align 8
  %154 = inttoptr i64 %152 to i32*
  %155 = load i32, i32* %154, align 4
  %156 = sext i32 %150 to i64
  %157 = sext i32 %155 to i64
  %158 = mul nsw i64 %157, %156
  %159 = trunc i64 %158 to i32
  %160 = and i64 %158, 4294967295
  store i64 %160, i64* %RCX.i1236, align 8
  %161 = shl i64 %158, 32
  %162 = ashr exact i64 %161, 32
  %163 = icmp ne i64 %162, %158
  %164 = zext i1 %163 to i8
  store i8 %164, i8* %14, align 1
  %165 = and i32 %159, 255
  %166 = tail call i32 @llvm.ctpop.i32(i32 %165)
  %167 = trunc i32 %166 to i8
  %168 = and i8 %167, 1
  %169 = xor i8 %168, 1
  store i8 %169, i8* %21, align 1
  store i8 0, i8* %27, align 1
  store i8 0, i8* %30, align 1
  %170 = lshr i32 %159, 31
  %171 = trunc i32 %170 to i8
  store i8 %171, i8* %33, align 1
  store i8 %164, i8* %39, align 1
  %172 = load i64, i64* %RBP.i, align 8
  %173 = add i64 %172, -40
  %174 = trunc i64 %158 to i32
  %175 = add i64 %145, 32
  store i64 %175, i64* %3, align 8
  %176 = inttoptr i64 %173 to i32*
  store i32 %174, i32* %176, align 4
  %177 = load i64, i64* %3, align 8
  %178 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*), align 8
  store i64 %178, i64* %RAX.i1238, align 8
  %179 = add i64 %178, 71800
  %180 = add i64 %177, 15
  store i64 %180, i64* %3, align 8
  %181 = inttoptr i64 %179 to i32*
  %182 = load i32, i32* %181, align 4
  store i8 0, i8* %14, align 1
  %183 = and i32 %182, 255
  %184 = tail call i32 @llvm.ctpop.i32(i32 %183)
  %185 = trunc i32 %184 to i8
  %186 = and i8 %185, 1
  %187 = xor i8 %186, 1
  store i8 %187, i8* %21, align 1
  store i8 0, i8* %27, align 1
  %188 = icmp eq i32 %182, 0
  %189 = zext i1 %188 to i8
  store i8 %189, i8* %30, align 1
  %190 = lshr i32 %182, 31
  %191 = trunc i32 %190 to i8
  store i8 %191, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %.v59 = select i1 %188, i64 510, i64 21
  %192 = add i64 %177, %.v59
  store i64 %192, i64* %3, align 8
  br i1 %188, label %block_.L_42b548, label %block_42b35f

block_42b35f:                                     ; preds = %entry
  %193 = load i64, i64* %RBP.i, align 8
  %194 = add i64 %193, -16
  %195 = add i64 %192, 8
  store i64 %195, i64* %3, align 8
  %196 = inttoptr i64 %194 to i64*
  store i64 0, i64* %196, align 8
  %197 = load i64, i64* %RBP.i, align 8
  %198 = add i64 %197, -4
  %199 = load i64, i64* %3, align 8
  %200 = add i64 %199, 7
  store i64 %200, i64* %3, align 8
  %201 = inttoptr i64 %198 to i32*
  store i32 0, i32* %201, align 4
  %RDX.i1150 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RSI.i1142 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %RDI.i1127 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %.pre = load i64, i64* %3, align 8
  br label %block_.L_42b36e

block_.L_42b36e:                                  ; preds = %block_.L_42b3fb, %block_42b35f
  %202 = phi i64 [ %448, %block_.L_42b3fb ], [ %.pre, %block_42b35f ]
  %203 = load i64, i64* %RBP.i, align 8
  %204 = add i64 %203, -4
  %205 = add i64 %202, 3
  store i64 %205, i64* %3, align 8
  %206 = inttoptr i64 %204 to i32*
  %207 = load i32, i32* %206, align 4
  %208 = zext i32 %207 to i64
  store i64 %208, i64* %RAX.i1238, align 8
  %209 = load i64, i64* bitcast (%G_0x6cb8f8_type* @G_0x6cb8f8 to i64*), align 8
  store i64 %209, i64* %RCX.i1236, align 8
  %210 = add i64 %209, 64
  %211 = add i64 %202, 14
  store i64 %211, i64* %3, align 8
  %212 = inttoptr i64 %210 to i32*
  %213 = load i32, i32* %212, align 4
  %214 = sub i32 %207, %213
  %215 = icmp ult i32 %207, %213
  %216 = zext i1 %215 to i8
  store i8 %216, i8* %14, align 1
  %217 = and i32 %214, 255
  %218 = tail call i32 @llvm.ctpop.i32(i32 %217)
  %219 = trunc i32 %218 to i8
  %220 = and i8 %219, 1
  %221 = xor i8 %220, 1
  store i8 %221, i8* %21, align 1
  %222 = xor i32 %213, %207
  %223 = xor i32 %222, %214
  %224 = lshr i32 %223, 4
  %225 = trunc i32 %224 to i8
  %226 = and i8 %225, 1
  store i8 %226, i8* %27, align 1
  %227 = icmp eq i32 %214, 0
  %228 = zext i1 %227 to i8
  store i8 %228, i8* %30, align 1
  %229 = lshr i32 %214, 31
  %230 = trunc i32 %229 to i8
  store i8 %230, i8* %33, align 1
  %231 = lshr i32 %207, 31
  %232 = lshr i32 %213, 31
  %233 = xor i32 %232, %231
  %234 = xor i32 %229, %231
  %235 = add nuw nsw i32 %234, %233
  %236 = icmp eq i32 %235, 2
  %237 = zext i1 %236 to i8
  store i8 %237, i8* %39, align 1
  %238 = icmp ne i8 %230, 0
  %239 = xor i1 %238, %236
  %.v60 = select i1 %239, i64 20, i64 160
  %240 = add i64 %202, %.v60
  store i64 %240, i64* %3, align 8
  br i1 %239, label %block_42b382, label %block_.L_42b40e

block_42b382:                                     ; preds = %block_.L_42b36e
  %241 = add i64 %203, -8
  %242 = add i64 %240, 7
  store i64 %242, i64* %3, align 8
  %243 = inttoptr i64 %241 to i32*
  store i32 0, i32* %243, align 4
  %.pre42 = load i64, i64* %3, align 8
  br label %block_.L_42b389

block_.L_42b389:                                  ; preds = %block_42b39d, %block_42b382
  %244 = phi i64 [ %418, %block_42b39d ], [ %.pre42, %block_42b382 ]
  %245 = load i64, i64* %RBP.i, align 8
  %246 = add i64 %245, -8
  %247 = add i64 %244, 3
  store i64 %247, i64* %3, align 8
  %248 = inttoptr i64 %246 to i32*
  %249 = load i32, i32* %248, align 4
  %250 = zext i32 %249 to i64
  store i64 %250, i64* %RAX.i1238, align 8
  %251 = load i64, i64* bitcast (%G_0x6cb8f8_type* @G_0x6cb8f8 to i64*), align 8
  store i64 %251, i64* %RCX.i1236, align 8
  %252 = add i64 %251, 68
  %253 = add i64 %244, 14
  store i64 %253, i64* %3, align 8
  %254 = inttoptr i64 %252 to i32*
  %255 = load i32, i32* %254, align 4
  %256 = sub i32 %249, %255
  %257 = icmp ult i32 %249, %255
  %258 = zext i1 %257 to i8
  store i8 %258, i8* %14, align 1
  %259 = and i32 %256, 255
  %260 = tail call i32 @llvm.ctpop.i32(i32 %259)
  %261 = trunc i32 %260 to i8
  %262 = and i8 %261, 1
  %263 = xor i8 %262, 1
  store i8 %263, i8* %21, align 1
  %264 = xor i32 %255, %249
  %265 = xor i32 %264, %256
  %266 = lshr i32 %265, 4
  %267 = trunc i32 %266 to i8
  %268 = and i8 %267, 1
  store i8 %268, i8* %27, align 1
  %269 = icmp eq i32 %256, 0
  %270 = zext i1 %269 to i8
  store i8 %270, i8* %30, align 1
  %271 = lshr i32 %256, 31
  %272 = trunc i32 %271 to i8
  store i8 %272, i8* %33, align 1
  %273 = lshr i32 %249, 31
  %274 = lshr i32 %255, 31
  %275 = xor i32 %274, %273
  %276 = xor i32 %271, %273
  %277 = add nuw nsw i32 %276, %275
  %278 = icmp eq i32 %277, 2
  %279 = zext i1 %278 to i8
  store i8 %279, i8* %39, align 1
  %280 = icmp ne i8 %272, 0
  %281 = xor i1 %280, %278
  %.v56 = select i1 %281, i64 20, i64 114
  %282 = add i64 %244, %.v56
  store i64 %282, i64* %3, align 8
  br i1 %281, label %block_42b39d, label %block_.L_42b3fb

block_42b39d:                                     ; preds = %block_.L_42b389
  %283 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*), align 8
  store i64 %283, i64* %RAX.i1238, align 8
  %284 = add i64 %283, 71776
  %285 = add i64 %282, 15
  store i64 %285, i64* %3, align 8
  %286 = inttoptr i64 %284 to i64*
  %287 = load i64, i64* %286, align 8
  store i64 %287, i64* %RAX.i1238, align 8
  %288 = load i64, i64* bitcast (%G_0x726418_type* @G_0x726418 to i64*), align 8
  store i64 %288, i64* %RCX.i1236, align 8
  %289 = add i64 %282, 27
  store i64 %289, i64* %3, align 8
  %290 = load i32, i32* %248, align 4
  %291 = sext i32 %290 to i64
  store i64 %291, i64* %RDX.i1150, align 8
  %292 = shl nsw i64 %291, 3
  %293 = add i64 %292, %288
  %294 = add i64 %282, 31
  store i64 %294, i64* %3, align 8
  %295 = inttoptr i64 %293 to i64*
  %296 = load i64, i64* %295, align 8
  store i64 %296, i64* %RCX.i1236, align 8
  %297 = add i64 %245, -4
  %298 = add i64 %282, 35
  store i64 %298, i64* %3, align 8
  %299 = inttoptr i64 %297 to i32*
  %300 = load i32, i32* %299, align 4
  %301 = sext i32 %300 to i64
  store i64 %301, i64* %RDX.i1150, align 8
  %302 = shl nsw i64 %301, 1
  %303 = add i64 %302, %296
  %304 = add i64 %282, 39
  store i64 %304, i64* %3, align 8
  %305 = inttoptr i64 %303 to i16*
  %306 = load i16, i16* %305, align 2
  %307 = zext i16 %306 to i64
  store i64 %307, i64* %RSI.i1142, align 8
  %308 = load i64, i64* bitcast (%G_0x722c90_type* @G_0x722c90 to i64*), align 8
  store i64 %308, i64* %RCX.i1236, align 8
  %309 = add i64 %282, 51
  store i64 %309, i64* %3, align 8
  %310 = load i32, i32* %248, align 4
  %311 = sext i32 %310 to i64
  store i64 %311, i64* %RDX.i1150, align 8
  %312 = shl nsw i64 %311, 3
  %313 = add i64 %312, %308
  %314 = add i64 %282, 55
  store i64 %314, i64* %3, align 8
  %315 = inttoptr i64 %313 to i64*
  %316 = load i64, i64* %315, align 8
  store i64 %316, i64* %RCX.i1236, align 8
  %317 = add i64 %282, 59
  store i64 %317, i64* %3, align 8
  %318 = load i32, i32* %299, align 4
  %319 = sext i32 %318 to i64
  store i64 %319, i64* %RDX.i1150, align 8
  %320 = shl nsw i64 %319, 1
  %321 = add i64 %320, %316
  %322 = add i64 %282, 63
  store i64 %322, i64* %3, align 8
  %323 = inttoptr i64 %321 to i16*
  %324 = load i16, i16* %323, align 2
  %325 = zext i16 %324 to i64
  store i64 %325, i64* %RDI.i1127, align 8
  %326 = zext i16 %324 to i32
  %327 = zext i16 %306 to i32
  %328 = sub nsw i32 %327, %326
  %329 = zext i32 %328 to i64
  store i64 %329, i64* %RSI.i1142, align 8
  %330 = icmp ult i16 %306, %324
  %331 = zext i1 %330 to i8
  store i8 %331, i8* %14, align 1
  %332 = and i32 %328, 255
  %333 = tail call i32 @llvm.ctpop.i32(i32 %332)
  %334 = trunc i32 %333 to i8
  %335 = and i8 %334, 1
  %336 = xor i8 %335, 1
  store i8 %336, i8* %21, align 1
  %337 = xor i16 %324, %306
  %338 = zext i16 %337 to i32
  %339 = xor i32 %338, %328
  %340 = lshr i32 %339, 4
  %341 = trunc i32 %340 to i8
  %342 = and i8 %341, 1
  store i8 %342, i8* %27, align 1
  %343 = icmp eq i32 %328, 0
  %344 = zext i1 %343 to i8
  store i8 %344, i8* %30, align 1
  %345 = lshr i32 %328, 31
  %346 = trunc i32 %345 to i8
  store i8 %346, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %347 = sext i32 %328 to i64
  store i64 %347, i64* %RCX.i1236, align 8
  %348 = shl nsw i64 %347, 2
  %349 = add i64 %287, %348
  %350 = add i64 %282, 72
  store i64 %350, i64* %3, align 8
  %351 = inttoptr i64 %349 to i32*
  %352 = load i32, i32* %351, align 4
  %353 = sext i32 %352 to i64
  store i64 %353, i64* %RAX.i1238, align 8
  %354 = load i64, i64* %RBP.i, align 8
  %355 = add i64 %354, -16
  %356 = add i64 %282, 76
  store i64 %356, i64* %3, align 8
  %357 = inttoptr i64 %355 to i64*
  %358 = load i64, i64* %357, align 8
  %359 = add i64 %358, %353
  store i64 %359, i64* %RAX.i1238, align 8
  %360 = icmp ult i64 %359, %353
  %361 = icmp ult i64 %359, %358
  %362 = or i1 %360, %361
  %363 = zext i1 %362 to i8
  store i8 %363, i8* %14, align 1
  %364 = trunc i64 %359 to i32
  %365 = and i32 %364, 255
  %366 = tail call i32 @llvm.ctpop.i32(i32 %365)
  %367 = trunc i32 %366 to i8
  %368 = and i8 %367, 1
  %369 = xor i8 %368, 1
  store i8 %369, i8* %21, align 1
  %370 = xor i64 %358, %353
  %371 = xor i64 %370, %359
  %372 = lshr i64 %371, 4
  %373 = trunc i64 %372 to i8
  %374 = and i8 %373, 1
  store i8 %374, i8* %27, align 1
  %375 = icmp eq i64 %359, 0
  %376 = zext i1 %375 to i8
  store i8 %376, i8* %30, align 1
  %377 = lshr i64 %359, 63
  %378 = trunc i64 %377 to i8
  store i8 %378, i8* %33, align 1
  %379 = lshr i64 %353, 63
  %380 = lshr i64 %358, 63
  %381 = xor i64 %377, %379
  %382 = xor i64 %377, %380
  %383 = add nuw nsw i64 %381, %382
  %384 = icmp eq i64 %383, 2
  %385 = zext i1 %384 to i8
  store i8 %385, i8* %39, align 1
  %386 = add i64 %282, 80
  store i64 %386, i64* %3, align 8
  store i64 %359, i64* %357, align 8
  %387 = load i64, i64* %RBP.i, align 8
  %388 = add i64 %387, -8
  %389 = load i64, i64* %3, align 8
  %390 = add i64 %389, 3
  store i64 %390, i64* %3, align 8
  %391 = inttoptr i64 %388 to i32*
  %392 = load i32, i32* %391, align 4
  %393 = add i32 %392, 1
  %394 = zext i32 %393 to i64
  store i64 %394, i64* %RAX.i1238, align 8
  %395 = icmp eq i32 %392, -1
  %396 = icmp eq i32 %393, 0
  %397 = or i1 %395, %396
  %398 = zext i1 %397 to i8
  store i8 %398, i8* %14, align 1
  %399 = and i32 %393, 255
  %400 = tail call i32 @llvm.ctpop.i32(i32 %399)
  %401 = trunc i32 %400 to i8
  %402 = and i8 %401, 1
  %403 = xor i8 %402, 1
  store i8 %403, i8* %21, align 1
  %404 = xor i32 %393, %392
  %405 = lshr i32 %404, 4
  %406 = trunc i32 %405 to i8
  %407 = and i8 %406, 1
  store i8 %407, i8* %27, align 1
  %408 = zext i1 %396 to i8
  store i8 %408, i8* %30, align 1
  %409 = lshr i32 %393, 31
  %410 = trunc i32 %409 to i8
  store i8 %410, i8* %33, align 1
  %411 = lshr i32 %392, 31
  %412 = xor i32 %409, %411
  %413 = add nuw nsw i32 %412, %409
  %414 = icmp eq i32 %413, 2
  %415 = zext i1 %414 to i8
  store i8 %415, i8* %39, align 1
  %416 = add i64 %389, 9
  store i64 %416, i64* %3, align 8
  store i32 %393, i32* %391, align 4
  %417 = load i64, i64* %3, align 8
  %418 = add i64 %417, -109
  store i64 %418, i64* %3, align 8
  br label %block_.L_42b389

block_.L_42b3fb:                                  ; preds = %block_.L_42b389
  %419 = add i64 %245, -4
  %420 = add i64 %282, 8
  store i64 %420, i64* %3, align 8
  %421 = inttoptr i64 %419 to i32*
  %422 = load i32, i32* %421, align 4
  %423 = add i32 %422, 1
  %424 = zext i32 %423 to i64
  store i64 %424, i64* %RAX.i1238, align 8
  %425 = icmp eq i32 %422, -1
  %426 = icmp eq i32 %423, 0
  %427 = or i1 %425, %426
  %428 = zext i1 %427 to i8
  store i8 %428, i8* %14, align 1
  %429 = and i32 %423, 255
  %430 = tail call i32 @llvm.ctpop.i32(i32 %429)
  %431 = trunc i32 %430 to i8
  %432 = and i8 %431, 1
  %433 = xor i8 %432, 1
  store i8 %433, i8* %21, align 1
  %434 = xor i32 %423, %422
  %435 = lshr i32 %434, 4
  %436 = trunc i32 %435 to i8
  %437 = and i8 %436, 1
  store i8 %437, i8* %27, align 1
  %438 = zext i1 %426 to i8
  store i8 %438, i8* %30, align 1
  %439 = lshr i32 %423, 31
  %440 = trunc i32 %439 to i8
  store i8 %440, i8* %33, align 1
  %441 = lshr i32 %422, 31
  %442 = xor i32 %439, %441
  %443 = add nuw nsw i32 %442, %439
  %444 = icmp eq i32 %443, 2
  %445 = zext i1 %444 to i8
  store i8 %445, i8* %39, align 1
  %446 = add i64 %282, 14
  store i64 %446, i64* %3, align 8
  store i32 %423, i32* %421, align 4
  %447 = load i64, i64* %3, align 8
  %448 = add i64 %447, -155
  store i64 %448, i64* %3, align 8
  br label %block_.L_42b36e

block_.L_42b40e:                                  ; preds = %block_.L_42b36e
  %449 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*), align 8
  store i64 %449, i64* %RAX.i1238, align 8
  %450 = add i64 %449, 72700
  %451 = add i64 %240, 15
  store i64 %451, i64* %3, align 8
  %452 = inttoptr i64 %450 to i32*
  %453 = load i32, i32* %452, align 4
  store i8 0, i8* %14, align 1
  %454 = and i32 %453, 255
  %455 = tail call i32 @llvm.ctpop.i32(i32 %454)
  %456 = trunc i32 %455 to i8
  %457 = and i8 %456, 1
  %458 = xor i8 %457, 1
  store i8 %458, i8* %21, align 1
  store i8 0, i8* %27, align 1
  %459 = icmp eq i32 %453, 0
  %460 = zext i1 %459 to i8
  store i8 %460, i8* %30, align 1
  %461 = lshr i32 %453, 31
  %462 = trunc i32 %461 to i8
  store i8 %462, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %.v61 = select i1 %459, i64 309, i64 21
  %463 = add i64 %240, %.v61
  store i64 %463, i64* %3, align 8
  br i1 %459, label %block_.L_42b543, label %block_42b423

block_42b423:                                     ; preds = %block_.L_42b40e
  %464 = add i64 %203, -24
  %465 = add i64 %463, 8
  store i64 %465, i64* %3, align 8
  %466 = inttoptr i64 %464 to i64*
  store i64 0, i64* %466, align 8
  %467 = load i64, i64* %RBP.i, align 8
  %468 = add i64 %467, -32
  %469 = load i64, i64* %3, align 8
  %470 = add i64 %469, 8
  store i64 %470, i64* %3, align 8
  %471 = inttoptr i64 %468 to i64*
  store i64 0, i64* %471, align 8
  %472 = load i64, i64* %RBP.i, align 8
  %473 = add i64 %472, -4
  %474 = load i64, i64* %3, align 8
  %475 = add i64 %474, 7
  store i64 %475, i64* %3, align 8
  %476 = inttoptr i64 %473 to i32*
  store i32 0, i32* %476, align 4
  %.pre40 = load i64, i64* %3, align 8
  br label %block_.L_42b43a

block_.L_42b43a:                                  ; preds = %block_.L_42b52b, %block_42b423
  %477 = phi i64 [ %847, %block_.L_42b52b ], [ %.pre40, %block_42b423 ]
  %478 = load i64, i64* %RBP.i, align 8
  %479 = add i64 %478, -4
  %480 = add i64 %477, 3
  store i64 %480, i64* %3, align 8
  %481 = inttoptr i64 %479 to i32*
  %482 = load i32, i32* %481, align 4
  %483 = zext i32 %482 to i64
  store i64 %483, i64* %RAX.i1238, align 8
  %484 = load i64, i64* bitcast (%G_0x6cb8f8_type* @G_0x6cb8f8 to i64*), align 8
  store i64 %484, i64* %RCX.i1236, align 8
  %485 = add i64 %484, 3308
  %486 = add i64 %477, 17
  store i64 %486, i64* %3, align 8
  %487 = inttoptr i64 %485 to i32*
  %488 = load i32, i32* %487, align 4
  %489 = sub i32 %482, %488
  %490 = icmp ult i32 %482, %488
  %491 = zext i1 %490 to i8
  store i8 %491, i8* %14, align 1
  %492 = and i32 %489, 255
  %493 = tail call i32 @llvm.ctpop.i32(i32 %492)
  %494 = trunc i32 %493 to i8
  %495 = and i8 %494, 1
  %496 = xor i8 %495, 1
  store i8 %496, i8* %21, align 1
  %497 = xor i32 %488, %482
  %498 = xor i32 %497, %489
  %499 = lshr i32 %498, 4
  %500 = trunc i32 %499 to i8
  %501 = and i8 %500, 1
  store i8 %501, i8* %27, align 1
  %502 = icmp eq i32 %489, 0
  %503 = zext i1 %502 to i8
  store i8 %503, i8* %30, align 1
  %504 = lshr i32 %489, 31
  %505 = trunc i32 %504 to i8
  store i8 %505, i8* %33, align 1
  %506 = lshr i32 %482, 31
  %507 = lshr i32 %488, 31
  %508 = xor i32 %507, %506
  %509 = xor i32 %504, %506
  %510 = add nuw nsw i32 %509, %508
  %511 = icmp eq i32 %510, 2
  %512 = zext i1 %511 to i8
  store i8 %512, i8* %39, align 1
  %513 = icmp ne i8 %505, 0
  %514 = xor i1 %513, %511
  %.v62 = select i1 %514, i64 23, i64 260
  %515 = add i64 %477, %.v62
  store i64 %515, i64* %3, align 8
  br i1 %514, label %block_42b451, label %block_.L_42b53e

block_42b451:                                     ; preds = %block_.L_42b43a
  %516 = add i64 %478, -8
  %517 = add i64 %515, 7
  store i64 %517, i64* %3, align 8
  %518 = inttoptr i64 %516 to i32*
  store i32 0, i32* %518, align 4
  %.pre41 = load i64, i64* %3, align 8
  br label %block_.L_42b458

block_.L_42b458:                                  ; preds = %block_42b46f, %block_42b451
  %519 = phi i64 [ %817, %block_42b46f ], [ %.pre41, %block_42b451 ]
  %520 = load i64, i64* %RBP.i, align 8
  %521 = add i64 %520, -8
  %522 = add i64 %519, 3
  store i64 %522, i64* %3, align 8
  %523 = inttoptr i64 %521 to i32*
  %524 = load i32, i32* %523, align 4
  %525 = zext i32 %524 to i64
  store i64 %525, i64* %RAX.i1238, align 8
  %526 = load i64, i64* bitcast (%G_0x6cb8f8_type* @G_0x6cb8f8 to i64*), align 8
  store i64 %526, i64* %RCX.i1236, align 8
  %527 = add i64 %526, 3304
  %528 = add i64 %519, 17
  store i64 %528, i64* %3, align 8
  %529 = inttoptr i64 %527 to i32*
  %530 = load i32, i32* %529, align 4
  %531 = sub i32 %524, %530
  %532 = icmp ult i32 %524, %530
  %533 = zext i1 %532 to i8
  store i8 %533, i8* %14, align 1
  %534 = and i32 %531, 255
  %535 = tail call i32 @llvm.ctpop.i32(i32 %534)
  %536 = trunc i32 %535 to i8
  %537 = and i8 %536, 1
  %538 = xor i8 %537, 1
  store i8 %538, i8* %21, align 1
  %539 = xor i32 %530, %524
  %540 = xor i32 %539, %531
  %541 = lshr i32 %540, 4
  %542 = trunc i32 %541 to i8
  %543 = and i8 %542, 1
  store i8 %543, i8* %27, align 1
  %544 = icmp eq i32 %531, 0
  %545 = zext i1 %544 to i8
  store i8 %545, i8* %30, align 1
  %546 = lshr i32 %531, 31
  %547 = trunc i32 %546 to i8
  store i8 %547, i8* %33, align 1
  %548 = lshr i32 %524, 31
  %549 = lshr i32 %530, 31
  %550 = xor i32 %549, %548
  %551 = xor i32 %546, %548
  %552 = add nuw nsw i32 %551, %550
  %553 = icmp eq i32 %552, 2
  %554 = zext i1 %553 to i8
  store i8 %554, i8* %39, align 1
  %555 = icmp ne i8 %547, 0
  %556 = xor i1 %555, %553
  %.v = select i1 %556, i64 23, i64 211
  %557 = add i64 %519, %.v
  store i64 %557, i64* %3, align 8
  br i1 %556, label %block_42b46f, label %block_.L_42b52b

block_42b46f:                                     ; preds = %block_.L_42b458
  %558 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*), align 8
  store i64 %558, i64* %RAX.i1238, align 8
  %559 = add i64 %558, 71776
  %560 = add i64 %557, 15
  store i64 %560, i64* %3, align 8
  %561 = inttoptr i64 %559 to i64*
  %562 = load i64, i64* %561, align 8
  store i64 %562, i64* %RAX.i1238, align 8
  %563 = load i64, i64* bitcast (%G_0x6f6f90_type* @G_0x6f6f90 to i64*), align 8
  store i64 %563, i64* %RCX.i1236, align 8
  %564 = add i64 %557, 26
  store i64 %564, i64* %3, align 8
  %565 = inttoptr i64 %563 to i64*
  %566 = load i64, i64* %565, align 8
  store i64 %566, i64* %RCX.i1236, align 8
  %567 = add i64 %557, 30
  store i64 %567, i64* %3, align 8
  %568 = load i32, i32* %523, align 4
  %569 = sext i32 %568 to i64
  store i64 %569, i64* %RDX.i1150, align 8
  %570 = shl nsw i64 %569, 3
  %571 = add i64 %570, %566
  %572 = add i64 %557, 34
  store i64 %572, i64* %3, align 8
  %573 = inttoptr i64 %571 to i64*
  %574 = load i64, i64* %573, align 8
  store i64 %574, i64* %RCX.i1236, align 8
  %575 = add i64 %520, -4
  %576 = add i64 %557, 38
  store i64 %576, i64* %3, align 8
  %577 = inttoptr i64 %575 to i32*
  %578 = load i32, i32* %577, align 4
  %579 = sext i32 %578 to i64
  store i64 %579, i64* %RDX.i1150, align 8
  %580 = shl nsw i64 %579, 1
  %581 = add i64 %580, %574
  %582 = add i64 %557, 42
  store i64 %582, i64* %3, align 8
  %583 = inttoptr i64 %581 to i16*
  %584 = load i16, i16* %583, align 2
  %585 = zext i16 %584 to i64
  store i64 %585, i64* %RSI.i1142, align 8
  %586 = load i64, i64* bitcast (%G_0x6f96f0_type* @G_0x6f96f0 to i64*), align 8
  store i64 %586, i64* %RCX.i1236, align 8
  %587 = add i64 %557, 53
  store i64 %587, i64* %3, align 8
  %588 = inttoptr i64 %586 to i64*
  %589 = load i64, i64* %588, align 8
  store i64 %589, i64* %RCX.i1236, align 8
  %590 = add i64 %557, 57
  store i64 %590, i64* %3, align 8
  %591 = load i32, i32* %523, align 4
  %592 = sext i32 %591 to i64
  store i64 %592, i64* %RDX.i1150, align 8
  %593 = shl nsw i64 %592, 3
  %594 = add i64 %593, %589
  %595 = add i64 %557, 61
  store i64 %595, i64* %3, align 8
  %596 = inttoptr i64 %594 to i64*
  %597 = load i64, i64* %596, align 8
  store i64 %597, i64* %RCX.i1236, align 8
  %598 = add i64 %557, 65
  store i64 %598, i64* %3, align 8
  %599 = load i32, i32* %577, align 4
  %600 = sext i32 %599 to i64
  store i64 %600, i64* %RDX.i1150, align 8
  %601 = shl nsw i64 %600, 1
  %602 = add i64 %601, %597
  %603 = add i64 %557, 69
  store i64 %603, i64* %3, align 8
  %604 = inttoptr i64 %602 to i16*
  %605 = load i16, i16* %604, align 2
  %606 = zext i16 %605 to i64
  store i64 %606, i64* %RDI.i1127, align 8
  %607 = zext i16 %605 to i32
  %608 = zext i16 %584 to i32
  %609 = sub nsw i32 %608, %607
  %610 = zext i32 %609 to i64
  store i64 %610, i64* %RSI.i1142, align 8
  %611 = icmp ult i16 %584, %605
  %612 = zext i1 %611 to i8
  store i8 %612, i8* %14, align 1
  %613 = and i32 %609, 255
  %614 = tail call i32 @llvm.ctpop.i32(i32 %613)
  %615 = trunc i32 %614 to i8
  %616 = and i8 %615, 1
  %617 = xor i8 %616, 1
  store i8 %617, i8* %21, align 1
  %618 = xor i16 %605, %584
  %619 = zext i16 %618 to i32
  %620 = xor i32 %619, %609
  %621 = lshr i32 %620, 4
  %622 = trunc i32 %621 to i8
  %623 = and i8 %622, 1
  store i8 %623, i8* %27, align 1
  %624 = icmp eq i32 %609, 0
  %625 = zext i1 %624 to i8
  store i8 %625, i8* %30, align 1
  %626 = lshr i32 %609, 31
  %627 = trunc i32 %626 to i8
  store i8 %627, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %628 = sext i32 %609 to i64
  store i64 %628, i64* %RCX.i1236, align 8
  %629 = load i64, i64* %RAX.i1238, align 8
  %630 = shl nsw i64 %628, 2
  %631 = add i64 %629, %630
  %632 = add i64 %557, 78
  store i64 %632, i64* %3, align 8
  %633 = inttoptr i64 %631 to i32*
  %634 = load i32, i32* %633, align 4
  %635 = sext i32 %634 to i64
  store i64 %635, i64* %RAX.i1238, align 8
  %636 = load i64, i64* %RBP.i, align 8
  %637 = add i64 %636, -24
  %638 = add i64 %557, 82
  store i64 %638, i64* %3, align 8
  %639 = inttoptr i64 %637 to i64*
  %640 = load i64, i64* %639, align 8
  %641 = add i64 %640, %635
  %642 = icmp ult i64 %641, %635
  %643 = icmp ult i64 %641, %640
  %644 = or i1 %642, %643
  %645 = zext i1 %644 to i8
  store i8 %645, i8* %14, align 1
  %646 = trunc i64 %641 to i32
  %647 = and i32 %646, 255
  %648 = tail call i32 @llvm.ctpop.i32(i32 %647)
  %649 = trunc i32 %648 to i8
  %650 = and i8 %649, 1
  %651 = xor i8 %650, 1
  store i8 %651, i8* %21, align 1
  %652 = xor i64 %640, %635
  %653 = xor i64 %652, %641
  %654 = lshr i64 %653, 4
  %655 = trunc i64 %654 to i8
  %656 = and i8 %655, 1
  store i8 %656, i8* %27, align 1
  %657 = icmp eq i64 %641, 0
  %658 = zext i1 %657 to i8
  store i8 %658, i8* %30, align 1
  %659 = lshr i64 %641, 63
  %660 = trunc i64 %659 to i8
  store i8 %660, i8* %33, align 1
  %661 = lshr i64 %635, 63
  %662 = lshr i64 %640, 63
  %663 = xor i64 %659, %661
  %664 = xor i64 %659, %662
  %665 = add nuw nsw i64 %663, %664
  %666 = icmp eq i64 %665, 2
  %667 = zext i1 %666 to i8
  store i8 %667, i8* %39, align 1
  %668 = add i64 %557, 86
  store i64 %668, i64* %3, align 8
  store i64 %641, i64* %639, align 8
  %669 = load i64, i64* %3, align 8
  %670 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*), align 8
  store i64 %670, i64* %RAX.i1238, align 8
  %671 = add i64 %670, 71776
  %672 = add i64 %669, 15
  store i64 %672, i64* %3, align 8
  %673 = inttoptr i64 %671 to i64*
  %674 = load i64, i64* %673, align 8
  store i64 %674, i64* %RAX.i1238, align 8
  %675 = load i64, i64* bitcast (%G_0x6f6f90_type* @G_0x6f6f90 to i64*), align 8
  store i64 %675, i64* %RCX.i1236, align 8
  %676 = add i64 %675, 8
  %677 = add i64 %669, 27
  store i64 %677, i64* %3, align 8
  %678 = inttoptr i64 %676 to i64*
  %679 = load i64, i64* %678, align 8
  store i64 %679, i64* %RCX.i1236, align 8
  %680 = load i64, i64* %RBP.i, align 8
  %681 = add i64 %680, -8
  %682 = add i64 %669, 31
  store i64 %682, i64* %3, align 8
  %683 = inttoptr i64 %681 to i32*
  %684 = load i32, i32* %683, align 4
  %685 = sext i32 %684 to i64
  store i64 %685, i64* %RDX.i1150, align 8
  %686 = shl nsw i64 %685, 3
  %687 = add i64 %686, %679
  %688 = add i64 %669, 35
  store i64 %688, i64* %3, align 8
  %689 = inttoptr i64 %687 to i64*
  %690 = load i64, i64* %689, align 8
  store i64 %690, i64* %RCX.i1236, align 8
  %691 = add i64 %680, -4
  %692 = add i64 %669, 39
  store i64 %692, i64* %3, align 8
  %693 = inttoptr i64 %691 to i32*
  %694 = load i32, i32* %693, align 4
  %695 = sext i32 %694 to i64
  store i64 %695, i64* %RDX.i1150, align 8
  %696 = shl nsw i64 %695, 1
  %697 = add i64 %696, %690
  %698 = add i64 %669, 43
  store i64 %698, i64* %3, align 8
  %699 = inttoptr i64 %697 to i16*
  %700 = load i16, i16* %699, align 2
  %701 = zext i16 %700 to i64
  store i64 %701, i64* %RSI.i1142, align 8
  %702 = load i64, i64* bitcast (%G_0x6f96f0_type* @G_0x6f96f0 to i64*), align 8
  store i64 %702, i64* %RCX.i1236, align 8
  %703 = add i64 %702, 8
  %704 = add i64 %669, 55
  store i64 %704, i64* %3, align 8
  %705 = inttoptr i64 %703 to i64*
  %706 = load i64, i64* %705, align 8
  store i64 %706, i64* %RCX.i1236, align 8
  %707 = add i64 %669, 59
  store i64 %707, i64* %3, align 8
  %708 = load i32, i32* %683, align 4
  %709 = sext i32 %708 to i64
  store i64 %709, i64* %RDX.i1150, align 8
  %710 = shl nsw i64 %709, 3
  %711 = add i64 %710, %706
  %712 = add i64 %669, 63
  store i64 %712, i64* %3, align 8
  %713 = inttoptr i64 %711 to i64*
  %714 = load i64, i64* %713, align 8
  store i64 %714, i64* %RCX.i1236, align 8
  %715 = add i64 %669, 67
  store i64 %715, i64* %3, align 8
  %716 = load i32, i32* %693, align 4
  %717 = sext i32 %716 to i64
  store i64 %717, i64* %RDX.i1150, align 8
  %718 = shl nsw i64 %717, 1
  %719 = add i64 %718, %714
  %720 = add i64 %669, 71
  store i64 %720, i64* %3, align 8
  %721 = inttoptr i64 %719 to i16*
  %722 = load i16, i16* %721, align 2
  %723 = zext i16 %722 to i64
  store i64 %723, i64* %RDI.i1127, align 8
  %724 = zext i16 %722 to i32
  %725 = zext i16 %700 to i32
  %726 = sub nsw i32 %725, %724
  %727 = zext i32 %726 to i64
  store i64 %727, i64* %RSI.i1142, align 8
  %728 = icmp ult i16 %700, %722
  %729 = zext i1 %728 to i8
  store i8 %729, i8* %14, align 1
  %730 = and i32 %726, 255
  %731 = tail call i32 @llvm.ctpop.i32(i32 %730)
  %732 = trunc i32 %731 to i8
  %733 = and i8 %732, 1
  %734 = xor i8 %733, 1
  store i8 %734, i8* %21, align 1
  %735 = xor i16 %722, %700
  %736 = zext i16 %735 to i32
  %737 = xor i32 %736, %726
  %738 = lshr i32 %737, 4
  %739 = trunc i32 %738 to i8
  %740 = and i8 %739, 1
  store i8 %740, i8* %27, align 1
  %741 = icmp eq i32 %726, 0
  %742 = zext i1 %741 to i8
  store i8 %742, i8* %30, align 1
  %743 = lshr i32 %726, 31
  %744 = trunc i32 %743 to i8
  store i8 %744, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %745 = sext i32 %726 to i64
  store i64 %745, i64* %RCX.i1236, align 8
  %746 = load i64, i64* %RAX.i1238, align 8
  %747 = shl nsw i64 %745, 2
  %748 = add i64 %746, %747
  %749 = add i64 %669, 80
  store i64 %749, i64* %3, align 8
  %750 = inttoptr i64 %748 to i32*
  %751 = load i32, i32* %750, align 4
  %752 = sext i32 %751 to i64
  store i64 %752, i64* %RAX.i1238, align 8
  %753 = load i64, i64* %RBP.i, align 8
  %754 = add i64 %753, -32
  %755 = add i64 %669, 84
  store i64 %755, i64* %3, align 8
  %756 = inttoptr i64 %754 to i64*
  %757 = load i64, i64* %756, align 8
  %758 = add i64 %757, %752
  store i64 %758, i64* %RAX.i1238, align 8
  %759 = icmp ult i64 %758, %752
  %760 = icmp ult i64 %758, %757
  %761 = or i1 %759, %760
  %762 = zext i1 %761 to i8
  store i8 %762, i8* %14, align 1
  %763 = trunc i64 %758 to i32
  %764 = and i32 %763, 255
  %765 = tail call i32 @llvm.ctpop.i32(i32 %764)
  %766 = trunc i32 %765 to i8
  %767 = and i8 %766, 1
  %768 = xor i8 %767, 1
  store i8 %768, i8* %21, align 1
  %769 = xor i64 %757, %752
  %770 = xor i64 %769, %758
  %771 = lshr i64 %770, 4
  %772 = trunc i64 %771 to i8
  %773 = and i8 %772, 1
  store i8 %773, i8* %27, align 1
  %774 = icmp eq i64 %758, 0
  %775 = zext i1 %774 to i8
  store i8 %775, i8* %30, align 1
  %776 = lshr i64 %758, 63
  %777 = trunc i64 %776 to i8
  store i8 %777, i8* %33, align 1
  %778 = lshr i64 %752, 63
  %779 = lshr i64 %757, 63
  %780 = xor i64 %776, %778
  %781 = xor i64 %776, %779
  %782 = add nuw nsw i64 %780, %781
  %783 = icmp eq i64 %782, 2
  %784 = zext i1 %783 to i8
  store i8 %784, i8* %39, align 1
  %785 = add i64 %669, 88
  store i64 %785, i64* %3, align 8
  store i64 %758, i64* %756, align 8
  %786 = load i64, i64* %RBP.i, align 8
  %787 = add i64 %786, -8
  %788 = load i64, i64* %3, align 8
  %789 = add i64 %788, 3
  store i64 %789, i64* %3, align 8
  %790 = inttoptr i64 %787 to i32*
  %791 = load i32, i32* %790, align 4
  %792 = add i32 %791, 1
  %793 = zext i32 %792 to i64
  store i64 %793, i64* %RAX.i1238, align 8
  %794 = icmp eq i32 %791, -1
  %795 = icmp eq i32 %792, 0
  %796 = or i1 %794, %795
  %797 = zext i1 %796 to i8
  store i8 %797, i8* %14, align 1
  %798 = and i32 %792, 255
  %799 = tail call i32 @llvm.ctpop.i32(i32 %798)
  %800 = trunc i32 %799 to i8
  %801 = and i8 %800, 1
  %802 = xor i8 %801, 1
  store i8 %802, i8* %21, align 1
  %803 = xor i32 %792, %791
  %804 = lshr i32 %803, 4
  %805 = trunc i32 %804 to i8
  %806 = and i8 %805, 1
  store i8 %806, i8* %27, align 1
  %807 = zext i1 %795 to i8
  store i8 %807, i8* %30, align 1
  %808 = lshr i32 %792, 31
  %809 = trunc i32 %808 to i8
  store i8 %809, i8* %33, align 1
  %810 = lshr i32 %791, 31
  %811 = xor i32 %808, %810
  %812 = add nuw nsw i32 %811, %808
  %813 = icmp eq i32 %812, 2
  %814 = zext i1 %813 to i8
  store i8 %814, i8* %39, align 1
  %815 = add i64 %788, 9
  store i64 %815, i64* %3, align 8
  store i32 %792, i32* %790, align 4
  %816 = load i64, i64* %3, align 8
  %817 = add i64 %816, -206
  store i64 %817, i64* %3, align 8
  br label %block_.L_42b458

block_.L_42b52b:                                  ; preds = %block_.L_42b458
  %818 = add i64 %520, -4
  %819 = add i64 %557, 8
  store i64 %819, i64* %3, align 8
  %820 = inttoptr i64 %818 to i32*
  %821 = load i32, i32* %820, align 4
  %822 = add i32 %821, 1
  %823 = zext i32 %822 to i64
  store i64 %823, i64* %RAX.i1238, align 8
  %824 = icmp eq i32 %821, -1
  %825 = icmp eq i32 %822, 0
  %826 = or i1 %824, %825
  %827 = zext i1 %826 to i8
  store i8 %827, i8* %14, align 1
  %828 = and i32 %822, 255
  %829 = tail call i32 @llvm.ctpop.i32(i32 %828)
  %830 = trunc i32 %829 to i8
  %831 = and i8 %830, 1
  %832 = xor i8 %831, 1
  store i8 %832, i8* %21, align 1
  %833 = xor i32 %822, %821
  %834 = lshr i32 %833, 4
  %835 = trunc i32 %834 to i8
  %836 = and i8 %835, 1
  store i8 %836, i8* %27, align 1
  %837 = zext i1 %825 to i8
  store i8 %837, i8* %30, align 1
  %838 = lshr i32 %822, 31
  %839 = trunc i32 %838 to i8
  store i8 %839, i8* %33, align 1
  %840 = lshr i32 %821, 31
  %841 = xor i32 %838, %840
  %842 = add nuw nsw i32 %841, %838
  %843 = icmp eq i32 %842, 2
  %844 = zext i1 %843 to i8
  store i8 %844, i8* %39, align 1
  %845 = add i64 %557, 14
  store i64 %845, i64* %3, align 8
  store i32 %822, i32* %820, align 4
  %846 = load i64, i64* %3, align 8
  %847 = add i64 %846, -255
  store i64 %847, i64* %3, align 8
  br label %block_.L_42b43a

block_.L_42b53e:                                  ; preds = %block_.L_42b43a
  %848 = add i64 %515, 5
  store i64 %848, i64* %3, align 8
  br label %block_.L_42b543

block_.L_42b543:                                  ; preds = %block_.L_42b53e, %block_.L_42b40e
  %849 = phi i64 [ %478, %block_.L_42b53e ], [ %203, %block_.L_42b40e ]
  %850 = phi i64 [ %848, %block_.L_42b53e ], [ %463, %block_.L_42b40e ]
  %851 = add i64 %850, 584
  br label %block_.L_42b78b

block_.L_42b548:                                  ; preds = %entry
  %852 = load i64, i64* bitcast (%G_0x710a40_type* @G_0x710a40 to i64*), align 8
  store i64 %852, i64* bitcast (%G_0x726418_type* @G_0x726418 to i64*), align 8
  %853 = load i64, i64* bitcast (%G_0x6ccf80_type* @G_0x6ccf80 to i64*), align 8
  store i64 %853, i64* bitcast (%G_0x6f6f90_type* @G_0x6f6f90 to i64*), align 8
  %854 = load i64, i64* bitcast (%G_0x6cb8f8_type* @G_0x6cb8f8 to i64*), align 8
  store i64 %854, i64* %RAX.i1238, align 8
  %855 = add i64 %854, 2880
  %856 = add i64 %192, 47
  store i64 %856, i64* %3, align 8
  %857 = inttoptr i64 %855 to i32*
  %858 = load i32, i32* %857, align 4
  %859 = add i32 %858, -2
  %860 = icmp ult i32 %858, 2
  %861 = zext i1 %860 to i8
  store i8 %861, i8* %14, align 1
  %862 = and i32 %859, 255
  %863 = tail call i32 @llvm.ctpop.i32(i32 %862)
  %864 = trunc i32 %863 to i8
  %865 = and i8 %864, 1
  %866 = xor i8 %865, 1
  store i8 %866, i8* %21, align 1
  %867 = xor i32 %859, %858
  %868 = lshr i32 %867, 4
  %869 = trunc i32 %868 to i8
  %870 = and i8 %869, 1
  store i8 %870, i8* %27, align 1
  %871 = icmp eq i32 %859, 0
  %872 = zext i1 %871 to i8
  store i8 %872, i8* %30, align 1
  %873 = lshr i32 %859, 31
  %874 = trunc i32 %873 to i8
  store i8 %874, i8* %33, align 1
  %875 = lshr i32 %858, 31
  %876 = xor i32 %873, %875
  %877 = add nuw nsw i32 %876, %875
  %878 = icmp eq i32 %877, 2
  %879 = zext i1 %878 to i8
  store i8 %879, i8* %39, align 1
  %.v71 = select i1 %871, i64 53, i64 69
  %880 = add i64 %192, %.v71
  store i64 %880, i64* %3, align 8
  br i1 %871, label %block_42b57d, label %block_.L_42b58d

block_42b57d:                                     ; preds = %block_.L_42b548
  %881 = load i64, i64* bitcast (%G_0x710a50_type* @G_0x710a50 to i64*), align 8
  store i64 %881, i64* %RAX.i1238, align 8
  %882 = add i64 %880, 16
  store i64 %882, i64* %3, align 8
  store i64 %881, i64* bitcast (%G_0x70fcf0_type* @G_0x70fcf0 to i64*), align 8
  br label %block_.L_42b58d

block_.L_42b58d:                                  ; preds = %block_.L_42b548, %block_42b57d
  %883 = phi i64 [ %882, %block_42b57d ], [ %880, %block_.L_42b548 ]
  %884 = load i64, i64* %RBP.i, align 8
  %885 = add i64 %884, -16
  %886 = add i64 %883, 8
  store i64 %886, i64* %3, align 8
  %887 = inttoptr i64 %885 to i64*
  store i64 0, i64* %887, align 8
  %888 = load i64, i64* %RBP.i, align 8
  %889 = add i64 %888, -4
  %890 = load i64, i64* %3, align 8
  %891 = add i64 %890, 7
  store i64 %891, i64* %3, align 8
  %892 = inttoptr i64 %889 to i32*
  store i32 0, i32* %892, align 4
  %RDX.i883 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RSI.i875 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %RDI.i858 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %.pre43 = load i64, i64* %3, align 8
  br label %block_.L_42b59c

block_.L_42b59c:                                  ; preds = %block_.L_42b630, %block_.L_42b58d
  %893 = phi i64 [ %1144, %block_.L_42b630 ], [ %.pre43, %block_.L_42b58d ]
  %894 = load i64, i64* %RBP.i, align 8
  %895 = add i64 %894, -4
  %896 = add i64 %893, 3
  store i64 %896, i64* %3, align 8
  %897 = inttoptr i64 %895 to i32*
  %898 = load i32, i32* %897, align 4
  %899 = zext i32 %898 to i64
  store i64 %899, i64* %RAX.i1238, align 8
  %900 = load i64, i64* bitcast (%G_0x6cb8f8_type* @G_0x6cb8f8 to i64*), align 8
  store i64 %900, i64* %RCX.i1236, align 8
  %901 = add i64 %900, 64
  %902 = add i64 %893, 14
  store i64 %902, i64* %3, align 8
  %903 = inttoptr i64 %901 to i32*
  %904 = load i32, i32* %903, align 4
  %905 = sub i32 %898, %904
  %906 = icmp ult i32 %898, %904
  %907 = zext i1 %906 to i8
  store i8 %907, i8* %14, align 1
  %908 = and i32 %905, 255
  %909 = tail call i32 @llvm.ctpop.i32(i32 %908)
  %910 = trunc i32 %909 to i8
  %911 = and i8 %910, 1
  %912 = xor i8 %911, 1
  store i8 %912, i8* %21, align 1
  %913 = xor i32 %904, %898
  %914 = xor i32 %913, %905
  %915 = lshr i32 %914, 4
  %916 = trunc i32 %915 to i8
  %917 = and i8 %916, 1
  store i8 %917, i8* %27, align 1
  %918 = icmp eq i32 %905, 0
  %919 = zext i1 %918 to i8
  store i8 %919, i8* %30, align 1
  %920 = lshr i32 %905, 31
  %921 = trunc i32 %920 to i8
  store i8 %921, i8* %33, align 1
  %922 = lshr i32 %898, 31
  %923 = lshr i32 %904, 31
  %924 = xor i32 %923, %922
  %925 = xor i32 %920, %922
  %926 = add nuw nsw i32 %925, %924
  %927 = icmp eq i32 %926, 2
  %928 = zext i1 %927 to i8
  store i8 %928, i8* %39, align 1
  %929 = icmp ne i8 %921, 0
  %930 = xor i1 %929, %927
  %.v72 = select i1 %930, i64 20, i64 167
  %931 = add i64 %893, %.v72
  store i64 %931, i64* %3, align 8
  br i1 %930, label %block_42b5b0, label %block_.L_42b643

block_42b5b0:                                     ; preds = %block_.L_42b59c
  %932 = add i64 %894, -8
  %933 = add i64 %931, 7
  store i64 %933, i64* %3, align 8
  %934 = inttoptr i64 %932 to i32*
  store i32 0, i32* %934, align 4
  %.pre55 = load i64, i64* %3, align 8
  br label %block_.L_42b5b7

block_.L_42b5b7:                                  ; preds = %block_42b5cb, %block_42b5b0
  %935 = phi i64 [ %1114, %block_42b5cb ], [ %.pre55, %block_42b5b0 ]
  %936 = load i64, i64* %RBP.i, align 8
  %937 = add i64 %936, -8
  %938 = add i64 %935, 3
  store i64 %938, i64* %3, align 8
  %939 = inttoptr i64 %937 to i32*
  %940 = load i32, i32* %939, align 4
  %941 = zext i32 %940 to i64
  store i64 %941, i64* %RAX.i1238, align 8
  %942 = load i64, i64* bitcast (%G_0x6cb8f8_type* @G_0x6cb8f8 to i64*), align 8
  store i64 %942, i64* %RCX.i1236, align 8
  %943 = add i64 %942, 68
  %944 = add i64 %935, 14
  store i64 %944, i64* %3, align 8
  %945 = inttoptr i64 %943 to i32*
  %946 = load i32, i32* %945, align 4
  %947 = sub i32 %940, %946
  %948 = icmp ult i32 %940, %946
  %949 = zext i1 %948 to i8
  store i8 %949, i8* %14, align 1
  %950 = and i32 %947, 255
  %951 = tail call i32 @llvm.ctpop.i32(i32 %950)
  %952 = trunc i32 %951 to i8
  %953 = and i8 %952, 1
  %954 = xor i8 %953, 1
  store i8 %954, i8* %21, align 1
  %955 = xor i32 %946, %940
  %956 = xor i32 %955, %947
  %957 = lshr i32 %956, 4
  %958 = trunc i32 %957 to i8
  %959 = and i8 %958, 1
  store i8 %959, i8* %27, align 1
  %960 = icmp eq i32 %947, 0
  %961 = zext i1 %960 to i8
  store i8 %961, i8* %30, align 1
  %962 = lshr i32 %947, 31
  %963 = trunc i32 %962 to i8
  store i8 %963, i8* %33, align 1
  %964 = lshr i32 %940, 31
  %965 = lshr i32 %946, 31
  %966 = xor i32 %965, %964
  %967 = xor i32 %962, %964
  %968 = add nuw nsw i32 %967, %966
  %969 = icmp eq i32 %968, 2
  %970 = zext i1 %969 to i8
  store i8 %970, i8* %39, align 1
  %971 = icmp ne i8 %963, 0
  %972 = xor i1 %971, %969
  %.v58 = select i1 %972, i64 20, i64 121
  %973 = add i64 %935, %.v58
  store i64 %973, i64* %3, align 8
  br i1 %972, label %block_42b5cb, label %block_.L_42b630

block_42b5cb:                                     ; preds = %block_.L_42b5b7
  %974 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*), align 8
  store i64 %974, i64* %RAX.i1238, align 8
  %975 = add i64 %974, 71776
  %976 = add i64 %973, 15
  store i64 %976, i64* %3, align 8
  %977 = inttoptr i64 %975 to i64*
  %978 = load i64, i64* %977, align 8
  store i64 %978, i64* %RAX.i1238, align 8
  %979 = load i64, i64* bitcast (%G_0x726418_type* @G_0x726418 to i64*), align 8
  store i64 %979, i64* %RCX.i1236, align 8
  %980 = add i64 %973, 27
  store i64 %980, i64* %3, align 8
  %981 = load i32, i32* %939, align 4
  %982 = sext i32 %981 to i64
  store i64 %982, i64* %RDX.i883, align 8
  %983 = shl nsw i64 %982, 3
  %984 = add i64 %983, %979
  %985 = add i64 %973, 31
  store i64 %985, i64* %3, align 8
  %986 = inttoptr i64 %984 to i64*
  %987 = load i64, i64* %986, align 8
  store i64 %987, i64* %RCX.i1236, align 8
  %988 = add i64 %936, -4
  %989 = add i64 %973, 35
  store i64 %989, i64* %3, align 8
  %990 = inttoptr i64 %988 to i32*
  %991 = load i32, i32* %990, align 4
  %992 = sext i32 %991 to i64
  store i64 %992, i64* %RDX.i883, align 8
  %993 = shl nsw i64 %992, 1
  %994 = add i64 %993, %987
  %995 = add i64 %973, 39
  store i64 %995, i64* %3, align 8
  %996 = inttoptr i64 %994 to i16*
  %997 = load i16, i16* %996, align 2
  %998 = zext i16 %997 to i64
  store i64 %998, i64* %RSI.i875, align 8
  %999 = load i64, i64* bitcast (%G_0x70fcf0_type* @G_0x70fcf0 to i64*), align 8
  store i64 %999, i64* %RCX.i1236, align 8
  %1000 = add i64 %999, 6424
  %1001 = add i64 %973, 54
  store i64 %1001, i64* %3, align 8
  %1002 = inttoptr i64 %1000 to i64*
  %1003 = load i64, i64* %1002, align 8
  store i64 %1003, i64* %RCX.i1236, align 8
  %1004 = add i64 %973, 58
  store i64 %1004, i64* %3, align 8
  %1005 = load i32, i32* %939, align 4
  %1006 = sext i32 %1005 to i64
  store i64 %1006, i64* %RDX.i883, align 8
  %1007 = shl nsw i64 %1006, 3
  %1008 = add i64 %1007, %1003
  %1009 = add i64 %973, 62
  store i64 %1009, i64* %3, align 8
  %1010 = inttoptr i64 %1008 to i64*
  %1011 = load i64, i64* %1010, align 8
  store i64 %1011, i64* %RCX.i1236, align 8
  %1012 = add i64 %973, 66
  store i64 %1012, i64* %3, align 8
  %1013 = load i32, i32* %990, align 4
  %1014 = sext i32 %1013 to i64
  store i64 %1014, i64* %RDX.i883, align 8
  %1015 = shl nsw i64 %1014, 1
  %1016 = add i64 %1015, %1011
  %1017 = add i64 %973, 70
  store i64 %1017, i64* %3, align 8
  %1018 = inttoptr i64 %1016 to i16*
  %1019 = load i16, i16* %1018, align 2
  %1020 = zext i16 %1019 to i64
  store i64 %1020, i64* %RDI.i858, align 8
  %1021 = zext i16 %1019 to i32
  %1022 = zext i16 %997 to i32
  %1023 = sub nsw i32 %1022, %1021
  %1024 = zext i32 %1023 to i64
  store i64 %1024, i64* %RSI.i875, align 8
  %1025 = icmp ult i16 %997, %1019
  %1026 = zext i1 %1025 to i8
  store i8 %1026, i8* %14, align 1
  %1027 = and i32 %1023, 255
  %1028 = tail call i32 @llvm.ctpop.i32(i32 %1027)
  %1029 = trunc i32 %1028 to i8
  %1030 = and i8 %1029, 1
  %1031 = xor i8 %1030, 1
  store i8 %1031, i8* %21, align 1
  %1032 = xor i16 %1019, %997
  %1033 = zext i16 %1032 to i32
  %1034 = xor i32 %1033, %1023
  %1035 = lshr i32 %1034, 4
  %1036 = trunc i32 %1035 to i8
  %1037 = and i8 %1036, 1
  store i8 %1037, i8* %27, align 1
  %1038 = icmp eq i32 %1023, 0
  %1039 = zext i1 %1038 to i8
  store i8 %1039, i8* %30, align 1
  %1040 = lshr i32 %1023, 31
  %1041 = trunc i32 %1040 to i8
  store i8 %1041, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %1042 = sext i32 %1023 to i64
  store i64 %1042, i64* %RCX.i1236, align 8
  %1043 = load i64, i64* %RAX.i1238, align 8
  %1044 = shl nsw i64 %1042, 2
  %1045 = add i64 %1043, %1044
  %1046 = add i64 %973, 79
  store i64 %1046, i64* %3, align 8
  %1047 = inttoptr i64 %1045 to i32*
  %1048 = load i32, i32* %1047, align 4
  %1049 = sext i32 %1048 to i64
  store i64 %1049, i64* %RAX.i1238, align 8
  %1050 = load i64, i64* %RBP.i, align 8
  %1051 = add i64 %1050, -16
  %1052 = add i64 %973, 83
  store i64 %1052, i64* %3, align 8
  %1053 = inttoptr i64 %1051 to i64*
  %1054 = load i64, i64* %1053, align 8
  %1055 = add i64 %1054, %1049
  store i64 %1055, i64* %RAX.i1238, align 8
  %1056 = icmp ult i64 %1055, %1049
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
  %1066 = xor i64 %1054, %1049
  %1067 = xor i64 %1066, %1055
  %1068 = lshr i64 %1067, 4
  %1069 = trunc i64 %1068 to i8
  %1070 = and i8 %1069, 1
  store i8 %1070, i8* %27, align 1
  %1071 = icmp eq i64 %1055, 0
  %1072 = zext i1 %1071 to i8
  store i8 %1072, i8* %30, align 1
  %1073 = lshr i64 %1055, 63
  %1074 = trunc i64 %1073 to i8
  store i8 %1074, i8* %33, align 1
  %1075 = lshr i64 %1049, 63
  %1076 = lshr i64 %1054, 63
  %1077 = xor i64 %1073, %1075
  %1078 = xor i64 %1073, %1076
  %1079 = add nuw nsw i64 %1077, %1078
  %1080 = icmp eq i64 %1079, 2
  %1081 = zext i1 %1080 to i8
  store i8 %1081, i8* %39, align 1
  %1082 = add i64 %973, 87
  store i64 %1082, i64* %3, align 8
  store i64 %1055, i64* %1053, align 8
  %1083 = load i64, i64* %RBP.i, align 8
  %1084 = add i64 %1083, -8
  %1085 = load i64, i64* %3, align 8
  %1086 = add i64 %1085, 3
  store i64 %1086, i64* %3, align 8
  %1087 = inttoptr i64 %1084 to i32*
  %1088 = load i32, i32* %1087, align 4
  %1089 = add i32 %1088, 1
  %1090 = zext i32 %1089 to i64
  store i64 %1090, i64* %RAX.i1238, align 8
  %1091 = icmp eq i32 %1088, -1
  %1092 = icmp eq i32 %1089, 0
  %1093 = or i1 %1091, %1092
  %1094 = zext i1 %1093 to i8
  store i8 %1094, i8* %14, align 1
  %1095 = and i32 %1089, 255
  %1096 = tail call i32 @llvm.ctpop.i32(i32 %1095)
  %1097 = trunc i32 %1096 to i8
  %1098 = and i8 %1097, 1
  %1099 = xor i8 %1098, 1
  store i8 %1099, i8* %21, align 1
  %1100 = xor i32 %1089, %1088
  %1101 = lshr i32 %1100, 4
  %1102 = trunc i32 %1101 to i8
  %1103 = and i8 %1102, 1
  store i8 %1103, i8* %27, align 1
  %1104 = zext i1 %1092 to i8
  store i8 %1104, i8* %30, align 1
  %1105 = lshr i32 %1089, 31
  %1106 = trunc i32 %1105 to i8
  store i8 %1106, i8* %33, align 1
  %1107 = lshr i32 %1088, 31
  %1108 = xor i32 %1105, %1107
  %1109 = add nuw nsw i32 %1108, %1105
  %1110 = icmp eq i32 %1109, 2
  %1111 = zext i1 %1110 to i8
  store i8 %1111, i8* %39, align 1
  %1112 = add i64 %1085, 9
  store i64 %1112, i64* %3, align 8
  store i32 %1089, i32* %1087, align 4
  %1113 = load i64, i64* %3, align 8
  %1114 = add i64 %1113, -116
  store i64 %1114, i64* %3, align 8
  br label %block_.L_42b5b7

block_.L_42b630:                                  ; preds = %block_.L_42b5b7
  %1115 = add i64 %936, -4
  %1116 = add i64 %973, 8
  store i64 %1116, i64* %3, align 8
  %1117 = inttoptr i64 %1115 to i32*
  %1118 = load i32, i32* %1117, align 4
  %1119 = add i32 %1118, 1
  %1120 = zext i32 %1119 to i64
  store i64 %1120, i64* %RAX.i1238, align 8
  %1121 = icmp eq i32 %1118, -1
  %1122 = icmp eq i32 %1119, 0
  %1123 = or i1 %1121, %1122
  %1124 = zext i1 %1123 to i8
  store i8 %1124, i8* %14, align 1
  %1125 = and i32 %1119, 255
  %1126 = tail call i32 @llvm.ctpop.i32(i32 %1125)
  %1127 = trunc i32 %1126 to i8
  %1128 = and i8 %1127, 1
  %1129 = xor i8 %1128, 1
  store i8 %1129, i8* %21, align 1
  %1130 = xor i32 %1119, %1118
  %1131 = lshr i32 %1130, 4
  %1132 = trunc i32 %1131 to i8
  %1133 = and i8 %1132, 1
  store i8 %1133, i8* %27, align 1
  %1134 = zext i1 %1122 to i8
  store i8 %1134, i8* %30, align 1
  %1135 = lshr i32 %1119, 31
  %1136 = trunc i32 %1135 to i8
  store i8 %1136, i8* %33, align 1
  %1137 = lshr i32 %1118, 31
  %1138 = xor i32 %1135, %1137
  %1139 = add nuw nsw i32 %1138, %1135
  %1140 = icmp eq i32 %1139, 2
  %1141 = zext i1 %1140 to i8
  store i8 %1141, i8* %39, align 1
  %1142 = add i64 %973, 14
  store i64 %1142, i64* %3, align 8
  store i32 %1119, i32* %1117, align 4
  %1143 = load i64, i64* %3, align 8
  %1144 = add i64 %1143, -162
  store i64 %1144, i64* %3, align 8
  br label %block_.L_42b59c

block_.L_42b643:                                  ; preds = %block_.L_42b59c
  %1145 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*), align 8
  store i64 %1145, i64* %RAX.i1238, align 8
  %1146 = add i64 %1145, 72700
  %1147 = add i64 %931, 15
  store i64 %1147, i64* %3, align 8
  %1148 = inttoptr i64 %1146 to i32*
  %1149 = load i32, i32* %1148, align 4
  store i8 0, i8* %14, align 1
  %1150 = and i32 %1149, 255
  %1151 = tail call i32 @llvm.ctpop.i32(i32 %1150)
  %1152 = trunc i32 %1151 to i8
  %1153 = and i8 %1152, 1
  %1154 = xor i8 %1153, 1
  store i8 %1154, i8* %21, align 1
  store i8 0, i8* %27, align 1
  %1155 = icmp eq i32 %1149, 0
  %1156 = zext i1 %1155 to i8
  store i8 %1156, i8* %30, align 1
  %1157 = lshr i32 %1149, 31
  %1158 = trunc i32 %1157 to i8
  store i8 %1158, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %.v73 = select i1 %1155, i64 323, i64 21
  %1159 = add i64 %931, %.v73
  store i64 %1159, i64* %3, align 8
  br i1 %1155, label %block_.L_42b786, label %block_42b658

block_42b658:                                     ; preds = %block_.L_42b643
  %1160 = add i64 %894, -24
  %1161 = add i64 %1159, 8
  store i64 %1161, i64* %3, align 8
  %1162 = inttoptr i64 %1160 to i64*
  store i64 0, i64* %1162, align 8
  %1163 = load i64, i64* %RBP.i, align 8
  %1164 = add i64 %1163, -32
  %1165 = load i64, i64* %3, align 8
  %1166 = add i64 %1165, 8
  store i64 %1166, i64* %3, align 8
  %1167 = inttoptr i64 %1164 to i64*
  store i64 0, i64* %1167, align 8
  %1168 = load i64, i64* %RBP.i, align 8
  %1169 = add i64 %1168, -4
  %1170 = load i64, i64* %3, align 8
  %1171 = add i64 %1170, 7
  store i64 %1171, i64* %3, align 8
  %1172 = inttoptr i64 %1169 to i32*
  store i32 0, i32* %1172, align 4
  %.pre44 = load i64, i64* %3, align 8
  br label %block_.L_42b66f

block_.L_42b66f:                                  ; preds = %block_.L_42b76e, %block_42b658
  %1173 = phi i64 [ %1551, %block_.L_42b76e ], [ %.pre44, %block_42b658 ]
  %1174 = load i64, i64* %RBP.i, align 8
  %1175 = add i64 %1174, -4
  %1176 = add i64 %1173, 3
  store i64 %1176, i64* %3, align 8
  %1177 = inttoptr i64 %1175 to i32*
  %1178 = load i32, i32* %1177, align 4
  %1179 = zext i32 %1178 to i64
  store i64 %1179, i64* %RAX.i1238, align 8
  %1180 = load i64, i64* bitcast (%G_0x6cb8f8_type* @G_0x6cb8f8 to i64*), align 8
  store i64 %1180, i64* %RCX.i1236, align 8
  %1181 = add i64 %1180, 3308
  %1182 = add i64 %1173, 17
  store i64 %1182, i64* %3, align 8
  %1183 = inttoptr i64 %1181 to i32*
  %1184 = load i32, i32* %1183, align 4
  %1185 = sub i32 %1178, %1184
  %1186 = icmp ult i32 %1178, %1184
  %1187 = zext i1 %1186 to i8
  store i8 %1187, i8* %14, align 1
  %1188 = and i32 %1185, 255
  %1189 = tail call i32 @llvm.ctpop.i32(i32 %1188)
  %1190 = trunc i32 %1189 to i8
  %1191 = and i8 %1190, 1
  %1192 = xor i8 %1191, 1
  store i8 %1192, i8* %21, align 1
  %1193 = xor i32 %1184, %1178
  %1194 = xor i32 %1193, %1185
  %1195 = lshr i32 %1194, 4
  %1196 = trunc i32 %1195 to i8
  %1197 = and i8 %1196, 1
  store i8 %1197, i8* %27, align 1
  %1198 = icmp eq i32 %1185, 0
  %1199 = zext i1 %1198 to i8
  store i8 %1199, i8* %30, align 1
  %1200 = lshr i32 %1185, 31
  %1201 = trunc i32 %1200 to i8
  store i8 %1201, i8* %33, align 1
  %1202 = lshr i32 %1178, 31
  %1203 = lshr i32 %1184, 31
  %1204 = xor i32 %1203, %1202
  %1205 = xor i32 %1200, %1202
  %1206 = add nuw nsw i32 %1205, %1204
  %1207 = icmp eq i32 %1206, 2
  %1208 = zext i1 %1207 to i8
  store i8 %1208, i8* %39, align 1
  %1209 = icmp ne i8 %1201, 0
  %1210 = xor i1 %1209, %1207
  %.v74 = select i1 %1210, i64 23, i64 274
  %1211 = add i64 %1173, %.v74
  store i64 %1211, i64* %3, align 8
  br i1 %1210, label %block_42b686, label %block_.L_42b781

block_42b686:                                     ; preds = %block_.L_42b66f
  %1212 = add i64 %1174, -8
  %1213 = add i64 %1211, 7
  store i64 %1213, i64* %3, align 8
  %1214 = inttoptr i64 %1212 to i32*
  store i32 0, i32* %1214, align 4
  %.pre45 = load i64, i64* %3, align 8
  br label %block_.L_42b68d

block_.L_42b68d:                                  ; preds = %block_42b6a4, %block_42b686
  %1215 = phi i64 [ %1521, %block_42b6a4 ], [ %.pre45, %block_42b686 ]
  %1216 = load i64, i64* %RBP.i, align 8
  %1217 = add i64 %1216, -8
  %1218 = add i64 %1215, 3
  store i64 %1218, i64* %3, align 8
  %1219 = inttoptr i64 %1217 to i32*
  %1220 = load i32, i32* %1219, align 4
  %1221 = zext i32 %1220 to i64
  store i64 %1221, i64* %RAX.i1238, align 8
  %1222 = load i64, i64* bitcast (%G_0x6cb8f8_type* @G_0x6cb8f8 to i64*), align 8
  store i64 %1222, i64* %RCX.i1236, align 8
  %1223 = add i64 %1222, 3304
  %1224 = add i64 %1215, 17
  store i64 %1224, i64* %3, align 8
  %1225 = inttoptr i64 %1223 to i32*
  %1226 = load i32, i32* %1225, align 4
  %1227 = sub i32 %1220, %1226
  %1228 = icmp ult i32 %1220, %1226
  %1229 = zext i1 %1228 to i8
  store i8 %1229, i8* %14, align 1
  %1230 = and i32 %1227, 255
  %1231 = tail call i32 @llvm.ctpop.i32(i32 %1230)
  %1232 = trunc i32 %1231 to i8
  %1233 = and i8 %1232, 1
  %1234 = xor i8 %1233, 1
  store i8 %1234, i8* %21, align 1
  %1235 = xor i32 %1226, %1220
  %1236 = xor i32 %1235, %1227
  %1237 = lshr i32 %1236, 4
  %1238 = trunc i32 %1237 to i8
  %1239 = and i8 %1238, 1
  store i8 %1239, i8* %27, align 1
  %1240 = icmp eq i32 %1227, 0
  %1241 = zext i1 %1240 to i8
  store i8 %1241, i8* %30, align 1
  %1242 = lshr i32 %1227, 31
  %1243 = trunc i32 %1242 to i8
  store i8 %1243, i8* %33, align 1
  %1244 = lshr i32 %1220, 31
  %1245 = lshr i32 %1226, 31
  %1246 = xor i32 %1245, %1244
  %1247 = xor i32 %1242, %1244
  %1248 = add nuw nsw i32 %1247, %1246
  %1249 = icmp eq i32 %1248, 2
  %1250 = zext i1 %1249 to i8
  store i8 %1250, i8* %39, align 1
  %1251 = icmp ne i8 %1243, 0
  %1252 = xor i1 %1251, %1249
  %.v57 = select i1 %1252, i64 23, i64 225
  %1253 = add i64 %1215, %.v57
  store i64 %1253, i64* %3, align 8
  br i1 %1252, label %block_42b6a4, label %block_.L_42b76e

block_42b6a4:                                     ; preds = %block_.L_42b68d
  %1254 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*), align 8
  store i64 %1254, i64* %RAX.i1238, align 8
  %1255 = add i64 %1254, 71776
  %1256 = add i64 %1253, 15
  store i64 %1256, i64* %3, align 8
  %1257 = inttoptr i64 %1255 to i64*
  %1258 = load i64, i64* %1257, align 8
  store i64 %1258, i64* %RAX.i1238, align 8
  %1259 = load i64, i64* bitcast (%G_0x6f6f90_type* @G_0x6f6f90 to i64*), align 8
  store i64 %1259, i64* %RCX.i1236, align 8
  %1260 = add i64 %1253, 26
  store i64 %1260, i64* %3, align 8
  %1261 = inttoptr i64 %1259 to i64*
  %1262 = load i64, i64* %1261, align 8
  store i64 %1262, i64* %RCX.i1236, align 8
  %1263 = add i64 %1253, 30
  store i64 %1263, i64* %3, align 8
  %1264 = load i32, i32* %1219, align 4
  %1265 = sext i32 %1264 to i64
  store i64 %1265, i64* %RDX.i883, align 8
  %1266 = shl nsw i64 %1265, 3
  %1267 = add i64 %1266, %1262
  %1268 = add i64 %1253, 34
  store i64 %1268, i64* %3, align 8
  %1269 = inttoptr i64 %1267 to i64*
  %1270 = load i64, i64* %1269, align 8
  store i64 %1270, i64* %RCX.i1236, align 8
  %1271 = add i64 %1216, -4
  %1272 = add i64 %1253, 38
  store i64 %1272, i64* %3, align 8
  %1273 = inttoptr i64 %1271 to i32*
  %1274 = load i32, i32* %1273, align 4
  %1275 = sext i32 %1274 to i64
  store i64 %1275, i64* %RDX.i883, align 8
  %1276 = shl nsw i64 %1275, 1
  %1277 = add i64 %1276, %1270
  %1278 = add i64 %1253, 42
  store i64 %1278, i64* %3, align 8
  %1279 = inttoptr i64 %1277 to i16*
  %1280 = load i16, i16* %1279, align 2
  %1281 = zext i16 %1280 to i64
  store i64 %1281, i64* %RSI.i875, align 8
  %1282 = load i64, i64* bitcast (%G_0x70fcf0_type* @G_0x70fcf0 to i64*), align 8
  store i64 %1282, i64* %RCX.i1236, align 8
  %1283 = add i64 %1282, 6464
  %1284 = add i64 %1253, 57
  store i64 %1284, i64* %3, align 8
  %1285 = inttoptr i64 %1283 to i64*
  %1286 = load i64, i64* %1285, align 8
  store i64 %1286, i64* %RCX.i1236, align 8
  %1287 = add i64 %1253, 60
  store i64 %1287, i64* %3, align 8
  %1288 = inttoptr i64 %1286 to i64*
  %1289 = load i64, i64* %1288, align 8
  store i64 %1289, i64* %RCX.i1236, align 8
  %1290 = add i64 %1253, 64
  store i64 %1290, i64* %3, align 8
  %1291 = load i32, i32* %1219, align 4
  %1292 = sext i32 %1291 to i64
  store i64 %1292, i64* %RDX.i883, align 8
  %1293 = shl nsw i64 %1292, 3
  %1294 = add i64 %1293, %1289
  %1295 = add i64 %1253, 68
  store i64 %1295, i64* %3, align 8
  %1296 = inttoptr i64 %1294 to i64*
  %1297 = load i64, i64* %1296, align 8
  store i64 %1297, i64* %RCX.i1236, align 8
  %1298 = add i64 %1253, 72
  store i64 %1298, i64* %3, align 8
  %1299 = load i32, i32* %1273, align 4
  %1300 = sext i32 %1299 to i64
  store i64 %1300, i64* %RDX.i883, align 8
  %1301 = shl nsw i64 %1300, 1
  %1302 = add i64 %1301, %1297
  %1303 = add i64 %1253, 76
  store i64 %1303, i64* %3, align 8
  %1304 = inttoptr i64 %1302 to i16*
  %1305 = load i16, i16* %1304, align 2
  %1306 = zext i16 %1305 to i64
  store i64 %1306, i64* %RDI.i858, align 8
  %1307 = zext i16 %1305 to i32
  %1308 = zext i16 %1280 to i32
  %1309 = sub nsw i32 %1308, %1307
  %1310 = zext i32 %1309 to i64
  store i64 %1310, i64* %RSI.i875, align 8
  %1311 = icmp ult i16 %1280, %1305
  %1312 = zext i1 %1311 to i8
  store i8 %1312, i8* %14, align 1
  %1313 = and i32 %1309, 255
  %1314 = tail call i32 @llvm.ctpop.i32(i32 %1313)
  %1315 = trunc i32 %1314 to i8
  %1316 = and i8 %1315, 1
  %1317 = xor i8 %1316, 1
  store i8 %1317, i8* %21, align 1
  %1318 = xor i16 %1305, %1280
  %1319 = zext i16 %1318 to i32
  %1320 = xor i32 %1319, %1309
  %1321 = lshr i32 %1320, 4
  %1322 = trunc i32 %1321 to i8
  %1323 = and i8 %1322, 1
  store i8 %1323, i8* %27, align 1
  %1324 = icmp eq i32 %1309, 0
  %1325 = zext i1 %1324 to i8
  store i8 %1325, i8* %30, align 1
  %1326 = lshr i32 %1309, 31
  %1327 = trunc i32 %1326 to i8
  store i8 %1327, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %1328 = sext i32 %1309 to i64
  store i64 %1328, i64* %RCX.i1236, align 8
  %1329 = load i64, i64* %RAX.i1238, align 8
  %1330 = shl nsw i64 %1328, 2
  %1331 = add i64 %1329, %1330
  %1332 = add i64 %1253, 85
  store i64 %1332, i64* %3, align 8
  %1333 = inttoptr i64 %1331 to i32*
  %1334 = load i32, i32* %1333, align 4
  %1335 = sext i32 %1334 to i64
  store i64 %1335, i64* %RAX.i1238, align 8
  %1336 = load i64, i64* %RBP.i, align 8
  %1337 = add i64 %1336, -24
  %1338 = add i64 %1253, 89
  store i64 %1338, i64* %3, align 8
  %1339 = inttoptr i64 %1337 to i64*
  %1340 = load i64, i64* %1339, align 8
  %1341 = add i64 %1340, %1335
  %1342 = icmp ult i64 %1341, %1335
  %1343 = icmp ult i64 %1341, %1340
  %1344 = or i1 %1342, %1343
  %1345 = zext i1 %1344 to i8
  store i8 %1345, i8* %14, align 1
  %1346 = trunc i64 %1341 to i32
  %1347 = and i32 %1346, 255
  %1348 = tail call i32 @llvm.ctpop.i32(i32 %1347)
  %1349 = trunc i32 %1348 to i8
  %1350 = and i8 %1349, 1
  %1351 = xor i8 %1350, 1
  store i8 %1351, i8* %21, align 1
  %1352 = xor i64 %1340, %1335
  %1353 = xor i64 %1352, %1341
  %1354 = lshr i64 %1353, 4
  %1355 = trunc i64 %1354 to i8
  %1356 = and i8 %1355, 1
  store i8 %1356, i8* %27, align 1
  %1357 = icmp eq i64 %1341, 0
  %1358 = zext i1 %1357 to i8
  store i8 %1358, i8* %30, align 1
  %1359 = lshr i64 %1341, 63
  %1360 = trunc i64 %1359 to i8
  store i8 %1360, i8* %33, align 1
  %1361 = lshr i64 %1335, 63
  %1362 = lshr i64 %1340, 63
  %1363 = xor i64 %1359, %1361
  %1364 = xor i64 %1359, %1362
  %1365 = add nuw nsw i64 %1363, %1364
  %1366 = icmp eq i64 %1365, 2
  %1367 = zext i1 %1366 to i8
  store i8 %1367, i8* %39, align 1
  %1368 = add i64 %1253, 93
  store i64 %1368, i64* %3, align 8
  store i64 %1341, i64* %1339, align 8
  %1369 = load i64, i64* %3, align 8
  %1370 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*), align 8
  store i64 %1370, i64* %RAX.i1238, align 8
  %1371 = add i64 %1370, 71776
  %1372 = add i64 %1369, 15
  store i64 %1372, i64* %3, align 8
  %1373 = inttoptr i64 %1371 to i64*
  %1374 = load i64, i64* %1373, align 8
  store i64 %1374, i64* %RAX.i1238, align 8
  %1375 = load i64, i64* bitcast (%G_0x6f6f90_type* @G_0x6f6f90 to i64*), align 8
  store i64 %1375, i64* %RCX.i1236, align 8
  %1376 = add i64 %1375, 8
  %1377 = add i64 %1369, 27
  store i64 %1377, i64* %3, align 8
  %1378 = inttoptr i64 %1376 to i64*
  %1379 = load i64, i64* %1378, align 8
  store i64 %1379, i64* %RCX.i1236, align 8
  %1380 = load i64, i64* %RBP.i, align 8
  %1381 = add i64 %1380, -8
  %1382 = add i64 %1369, 31
  store i64 %1382, i64* %3, align 8
  %1383 = inttoptr i64 %1381 to i32*
  %1384 = load i32, i32* %1383, align 4
  %1385 = sext i32 %1384 to i64
  store i64 %1385, i64* %RDX.i883, align 8
  %1386 = shl nsw i64 %1385, 3
  %1387 = add i64 %1386, %1379
  %1388 = add i64 %1369, 35
  store i64 %1388, i64* %3, align 8
  %1389 = inttoptr i64 %1387 to i64*
  %1390 = load i64, i64* %1389, align 8
  store i64 %1390, i64* %RCX.i1236, align 8
  %1391 = add i64 %1380, -4
  %1392 = add i64 %1369, 39
  store i64 %1392, i64* %3, align 8
  %1393 = inttoptr i64 %1391 to i32*
  %1394 = load i32, i32* %1393, align 4
  %1395 = sext i32 %1394 to i64
  store i64 %1395, i64* %RDX.i883, align 8
  %1396 = shl nsw i64 %1395, 1
  %1397 = add i64 %1396, %1390
  %1398 = add i64 %1369, 43
  store i64 %1398, i64* %3, align 8
  %1399 = inttoptr i64 %1397 to i16*
  %1400 = load i16, i16* %1399, align 2
  %1401 = zext i16 %1400 to i64
  store i64 %1401, i64* %RSI.i875, align 8
  %1402 = load i64, i64* bitcast (%G_0x70fcf0_type* @G_0x70fcf0 to i64*), align 8
  store i64 %1402, i64* %RCX.i1236, align 8
  %1403 = add i64 %1402, 6464
  %1404 = add i64 %1369, 58
  store i64 %1404, i64* %3, align 8
  %1405 = inttoptr i64 %1403 to i64*
  %1406 = load i64, i64* %1405, align 8
  store i64 %1406, i64* %RCX.i1236, align 8
  %1407 = add i64 %1406, 8
  %1408 = add i64 %1369, 62
  store i64 %1408, i64* %3, align 8
  %1409 = inttoptr i64 %1407 to i64*
  %1410 = load i64, i64* %1409, align 8
  store i64 %1410, i64* %RCX.i1236, align 8
  %1411 = add i64 %1369, 66
  store i64 %1411, i64* %3, align 8
  %1412 = load i32, i32* %1383, align 4
  %1413 = sext i32 %1412 to i64
  store i64 %1413, i64* %RDX.i883, align 8
  %1414 = shl nsw i64 %1413, 3
  %1415 = add i64 %1414, %1410
  %1416 = add i64 %1369, 70
  store i64 %1416, i64* %3, align 8
  %1417 = inttoptr i64 %1415 to i64*
  %1418 = load i64, i64* %1417, align 8
  store i64 %1418, i64* %RCX.i1236, align 8
  %1419 = add i64 %1369, 74
  store i64 %1419, i64* %3, align 8
  %1420 = load i32, i32* %1393, align 4
  %1421 = sext i32 %1420 to i64
  store i64 %1421, i64* %RDX.i883, align 8
  %1422 = shl nsw i64 %1421, 1
  %1423 = add i64 %1422, %1418
  %1424 = add i64 %1369, 78
  store i64 %1424, i64* %3, align 8
  %1425 = inttoptr i64 %1423 to i16*
  %1426 = load i16, i16* %1425, align 2
  %1427 = zext i16 %1426 to i64
  store i64 %1427, i64* %RDI.i858, align 8
  %1428 = zext i16 %1426 to i32
  %1429 = zext i16 %1400 to i32
  %1430 = sub nsw i32 %1429, %1428
  %1431 = zext i32 %1430 to i64
  store i64 %1431, i64* %RSI.i875, align 8
  %1432 = icmp ult i16 %1400, %1426
  %1433 = zext i1 %1432 to i8
  store i8 %1433, i8* %14, align 1
  %1434 = and i32 %1430, 255
  %1435 = tail call i32 @llvm.ctpop.i32(i32 %1434)
  %1436 = trunc i32 %1435 to i8
  %1437 = and i8 %1436, 1
  %1438 = xor i8 %1437, 1
  store i8 %1438, i8* %21, align 1
  %1439 = xor i16 %1426, %1400
  %1440 = zext i16 %1439 to i32
  %1441 = xor i32 %1440, %1430
  %1442 = lshr i32 %1441, 4
  %1443 = trunc i32 %1442 to i8
  %1444 = and i8 %1443, 1
  store i8 %1444, i8* %27, align 1
  %1445 = icmp eq i32 %1430, 0
  %1446 = zext i1 %1445 to i8
  store i8 %1446, i8* %30, align 1
  %1447 = lshr i32 %1430, 31
  %1448 = trunc i32 %1447 to i8
  store i8 %1448, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %1449 = sext i32 %1430 to i64
  store i64 %1449, i64* %RCX.i1236, align 8
  %1450 = load i64, i64* %RAX.i1238, align 8
  %1451 = shl nsw i64 %1449, 2
  %1452 = add i64 %1450, %1451
  %1453 = add i64 %1369, 87
  store i64 %1453, i64* %3, align 8
  %1454 = inttoptr i64 %1452 to i32*
  %1455 = load i32, i32* %1454, align 4
  %1456 = sext i32 %1455 to i64
  store i64 %1456, i64* %RAX.i1238, align 8
  %1457 = load i64, i64* %RBP.i, align 8
  %1458 = add i64 %1457, -32
  %1459 = add i64 %1369, 91
  store i64 %1459, i64* %3, align 8
  %1460 = inttoptr i64 %1458 to i64*
  %1461 = load i64, i64* %1460, align 8
  %1462 = add i64 %1461, %1456
  store i64 %1462, i64* %RAX.i1238, align 8
  %1463 = icmp ult i64 %1462, %1456
  %1464 = icmp ult i64 %1462, %1461
  %1465 = or i1 %1463, %1464
  %1466 = zext i1 %1465 to i8
  store i8 %1466, i8* %14, align 1
  %1467 = trunc i64 %1462 to i32
  %1468 = and i32 %1467, 255
  %1469 = tail call i32 @llvm.ctpop.i32(i32 %1468)
  %1470 = trunc i32 %1469 to i8
  %1471 = and i8 %1470, 1
  %1472 = xor i8 %1471, 1
  store i8 %1472, i8* %21, align 1
  %1473 = xor i64 %1461, %1456
  %1474 = xor i64 %1473, %1462
  %1475 = lshr i64 %1474, 4
  %1476 = trunc i64 %1475 to i8
  %1477 = and i8 %1476, 1
  store i8 %1477, i8* %27, align 1
  %1478 = icmp eq i64 %1462, 0
  %1479 = zext i1 %1478 to i8
  store i8 %1479, i8* %30, align 1
  %1480 = lshr i64 %1462, 63
  %1481 = trunc i64 %1480 to i8
  store i8 %1481, i8* %33, align 1
  %1482 = lshr i64 %1456, 63
  %1483 = lshr i64 %1461, 63
  %1484 = xor i64 %1480, %1482
  %1485 = xor i64 %1480, %1483
  %1486 = add nuw nsw i64 %1484, %1485
  %1487 = icmp eq i64 %1486, 2
  %1488 = zext i1 %1487 to i8
  store i8 %1488, i8* %39, align 1
  %1489 = add i64 %1369, 95
  store i64 %1489, i64* %3, align 8
  store i64 %1462, i64* %1460, align 8
  %1490 = load i64, i64* %RBP.i, align 8
  %1491 = add i64 %1490, -8
  %1492 = load i64, i64* %3, align 8
  %1493 = add i64 %1492, 3
  store i64 %1493, i64* %3, align 8
  %1494 = inttoptr i64 %1491 to i32*
  %1495 = load i32, i32* %1494, align 4
  %1496 = add i32 %1495, 1
  %1497 = zext i32 %1496 to i64
  store i64 %1497, i64* %RAX.i1238, align 8
  %1498 = icmp eq i32 %1495, -1
  %1499 = icmp eq i32 %1496, 0
  %1500 = or i1 %1498, %1499
  %1501 = zext i1 %1500 to i8
  store i8 %1501, i8* %14, align 1
  %1502 = and i32 %1496, 255
  %1503 = tail call i32 @llvm.ctpop.i32(i32 %1502)
  %1504 = trunc i32 %1503 to i8
  %1505 = and i8 %1504, 1
  %1506 = xor i8 %1505, 1
  store i8 %1506, i8* %21, align 1
  %1507 = xor i32 %1496, %1495
  %1508 = lshr i32 %1507, 4
  %1509 = trunc i32 %1508 to i8
  %1510 = and i8 %1509, 1
  store i8 %1510, i8* %27, align 1
  %1511 = zext i1 %1499 to i8
  store i8 %1511, i8* %30, align 1
  %1512 = lshr i32 %1496, 31
  %1513 = trunc i32 %1512 to i8
  store i8 %1513, i8* %33, align 1
  %1514 = lshr i32 %1495, 31
  %1515 = xor i32 %1512, %1514
  %1516 = add nuw nsw i32 %1515, %1512
  %1517 = icmp eq i32 %1516, 2
  %1518 = zext i1 %1517 to i8
  store i8 %1518, i8* %39, align 1
  %1519 = add i64 %1492, 9
  store i64 %1519, i64* %3, align 8
  store i32 %1496, i32* %1494, align 4
  %1520 = load i64, i64* %3, align 8
  %1521 = add i64 %1520, -220
  store i64 %1521, i64* %3, align 8
  br label %block_.L_42b68d

block_.L_42b76e:                                  ; preds = %block_.L_42b68d
  %1522 = add i64 %1216, -4
  %1523 = add i64 %1253, 8
  store i64 %1523, i64* %3, align 8
  %1524 = inttoptr i64 %1522 to i32*
  %1525 = load i32, i32* %1524, align 4
  %1526 = add i32 %1525, 1
  %1527 = zext i32 %1526 to i64
  store i64 %1527, i64* %RAX.i1238, align 8
  %1528 = icmp eq i32 %1525, -1
  %1529 = icmp eq i32 %1526, 0
  %1530 = or i1 %1528, %1529
  %1531 = zext i1 %1530 to i8
  store i8 %1531, i8* %14, align 1
  %1532 = and i32 %1526, 255
  %1533 = tail call i32 @llvm.ctpop.i32(i32 %1532)
  %1534 = trunc i32 %1533 to i8
  %1535 = and i8 %1534, 1
  %1536 = xor i8 %1535, 1
  store i8 %1536, i8* %21, align 1
  %1537 = xor i32 %1526, %1525
  %1538 = lshr i32 %1537, 4
  %1539 = trunc i32 %1538 to i8
  %1540 = and i8 %1539, 1
  store i8 %1540, i8* %27, align 1
  %1541 = zext i1 %1529 to i8
  store i8 %1541, i8* %30, align 1
  %1542 = lshr i32 %1526, 31
  %1543 = trunc i32 %1542 to i8
  store i8 %1543, i8* %33, align 1
  %1544 = lshr i32 %1525, 31
  %1545 = xor i32 %1542, %1544
  %1546 = add nuw nsw i32 %1545, %1542
  %1547 = icmp eq i32 %1546, 2
  %1548 = zext i1 %1547 to i8
  store i8 %1548, i8* %39, align 1
  %1549 = add i64 %1253, 14
  store i64 %1549, i64* %3, align 8
  store i32 %1526, i32* %1524, align 4
  %1550 = load i64, i64* %3, align 8
  %1551 = add i64 %1550, -269
  store i64 %1551, i64* %3, align 8
  br label %block_.L_42b66f

block_.L_42b781:                                  ; preds = %block_.L_42b66f
  %1552 = add i64 %1211, 5
  store i64 %1552, i64* %3, align 8
  br label %block_.L_42b786

block_.L_42b786:                                  ; preds = %block_.L_42b781, %block_.L_42b643
  %1553 = phi i64 [ %1174, %block_.L_42b781 ], [ %894, %block_.L_42b643 ]
  %1554 = phi i64 [ %1552, %block_.L_42b781 ], [ %1159, %block_.L_42b643 ]
  %1555 = add i64 %1554, 5
  store i64 %1555, i64* %3, align 8
  br label %block_.L_42b78b

block_.L_42b78b:                                  ; preds = %block_.L_42b786, %block_.L_42b543
  %1556 = phi i64 [ %849, %block_.L_42b543 ], [ %1553, %block_.L_42b786 ]
  %storemerge = phi i64 [ %851, %block_.L_42b543 ], [ %1555, %block_.L_42b786 ]
  %1557 = add i64 %1556, -16
  %1558 = add i64 %storemerge, 5
  store i64 %1558, i64* %3, align 8
  %1559 = inttoptr i64 %1557 to i64*
  %1560 = load i64, i64* %1559, align 8
  store i8 0, i8* %14, align 1
  %1561 = trunc i64 %1560 to i32
  %1562 = and i32 %1561, 255
  %1563 = tail call i32 @llvm.ctpop.i32(i32 %1562)
  %1564 = trunc i32 %1563 to i8
  %1565 = and i8 %1564, 1
  %1566 = xor i8 %1565, 1
  store i8 %1566, i8* %21, align 1
  store i8 0, i8* %27, align 1
  %1567 = icmp eq i64 %1560, 0
  %1568 = zext i1 %1567 to i8
  store i8 %1568, i8* %30, align 1
  %1569 = lshr i64 %1560, 63
  %1570 = trunc i64 %1569 to i8
  store i8 %1570, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %.v63 = select i1 %1567, i64 11, i64 19
  %1571 = add i64 %storemerge, %.v63
  store i64 %1571, i64* %3, align 8
  br i1 %1567, label %block_42b796, label %block_.L_42b79e

block_42b796:                                     ; preds = %block_.L_42b78b
  %1572 = add i64 %1571, 8
  store i64 %1572, i64* %3, align 8
  store i64 1, i64* %1559, align 8
  %.pre46 = load i64, i64* %RBP.i, align 8
  %.pre47 = load i64, i64* %3, align 8
  br label %block_.L_42b79e

block_.L_42b79e:                                  ; preds = %block_.L_42b78b, %block_42b796
  %1573 = phi i64 [ %.pre47, %block_42b796 ], [ %1571, %block_.L_42b78b ]
  %1574 = phi i64 [ %.pre46, %block_42b796 ], [ %1556, %block_.L_42b78b ]
  %1575 = add i64 %1574, -24
  %1576 = add i64 %1573, 5
  store i64 %1576, i64* %3, align 8
  %1577 = inttoptr i64 %1575 to i64*
  %1578 = load i64, i64* %1577, align 8
  store i8 0, i8* %14, align 1
  %1579 = trunc i64 %1578 to i32
  %1580 = and i32 %1579, 255
  %1581 = tail call i32 @llvm.ctpop.i32(i32 %1580)
  %1582 = trunc i32 %1581 to i8
  %1583 = and i8 %1582, 1
  %1584 = xor i8 %1583, 1
  store i8 %1584, i8* %21, align 1
  store i8 0, i8* %27, align 1
  %1585 = icmp eq i64 %1578, 0
  %1586 = zext i1 %1585 to i8
  store i8 %1586, i8* %30, align 1
  %1587 = lshr i64 %1578, 63
  %1588 = trunc i64 %1587 to i8
  store i8 %1588, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %.v64 = select i1 %1585, i64 11, i64 19
  %1589 = add i64 %1573, %.v64
  store i64 %1589, i64* %3, align 8
  br i1 %1585, label %block_42b7a9, label %block_.L_42b7b1

block_42b7a9:                                     ; preds = %block_.L_42b79e
  %1590 = add i64 %1589, 8
  store i64 %1590, i64* %3, align 8
  store i64 1, i64* %1577, align 8
  %.pre48 = load i64, i64* %RBP.i, align 8
  %.pre49 = load i64, i64* %3, align 8
  br label %block_.L_42b7b1

block_.L_42b7b1:                                  ; preds = %block_.L_42b79e, %block_42b7a9
  %1591 = phi i64 [ %.pre49, %block_42b7a9 ], [ %1589, %block_.L_42b79e ]
  %1592 = phi i64 [ %.pre48, %block_42b7a9 ], [ %1574, %block_.L_42b79e ]
  %1593 = add i64 %1592, -32
  %1594 = add i64 %1591, 5
  store i64 %1594, i64* %3, align 8
  %1595 = inttoptr i64 %1593 to i64*
  %1596 = load i64, i64* %1595, align 8
  store i8 0, i8* %14, align 1
  %1597 = trunc i64 %1596 to i32
  %1598 = and i32 %1597, 255
  %1599 = tail call i32 @llvm.ctpop.i32(i32 %1598)
  %1600 = trunc i32 %1599 to i8
  %1601 = and i8 %1600, 1
  %1602 = xor i8 %1601, 1
  store i8 %1602, i8* %21, align 1
  store i8 0, i8* %27, align 1
  %1603 = icmp eq i64 %1596, 0
  %1604 = zext i1 %1603 to i8
  store i8 %1604, i8* %30, align 1
  %1605 = lshr i64 %1596, 63
  %1606 = trunc i64 %1605 to i8
  store i8 %1606, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %.v65 = select i1 %1603, i64 11, i64 19
  %1607 = add i64 %1591, %.v65
  store i64 %1607, i64* %3, align 8
  br i1 %1603, label %block_42b7bc, label %block_.L_42b7c4

block_42b7bc:                                     ; preds = %block_.L_42b7b1
  %1608 = add i64 %1607, 8
  store i64 %1608, i64* %3, align 8
  store i64 1, i64* %1595, align 8
  %.pre50 = load i64, i64* %RBP.i, align 8
  %.pre51 = load i64, i64* %3, align 8
  br label %block_.L_42b7c4

block_.L_42b7c4:                                  ; preds = %block_.L_42b7b1, %block_42b7bc
  %1609 = phi i64 [ %.pre51, %block_42b7bc ], [ %1607, %block_.L_42b7b1 ]
  %1610 = phi i64 [ %.pre50, %block_42b7bc ], [ %1592, %block_.L_42b7b1 ]
  %1611 = add i64 %1610, -16
  %1612 = add i64 %1609, 5
  store i64 %1612, i64* %3, align 8
  %1613 = inttoptr i64 %1611 to i64*
  %1614 = load i64, i64* %1613, align 8
  store i8 0, i8* %14, align 1
  %1615 = trunc i64 %1614 to i32
  %1616 = and i32 %1615, 255
  %1617 = tail call i32 @llvm.ctpop.i32(i32 %1616)
  %1618 = trunc i32 %1617 to i8
  %1619 = and i8 %1618, 1
  %1620 = xor i8 %1619, 1
  store i8 %1620, i8* %21, align 1
  store i8 0, i8* %27, align 1
  %1621 = icmp eq i64 %1614, 0
  %1622 = zext i1 %1621 to i8
  store i8 %1622, i8* %30, align 1
  %1623 = lshr i64 %1614, 63
  %1624 = trunc i64 %1623 to i8
  store i8 %1624, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %.v66 = select i1 %1621, i64 258, i64 11
  %1625 = add i64 %1609, %.v66
  store i64 %1625, i64* %3, align 8
  br i1 %1621, label %block_.L_42b8c6, label %block_42b7cf

block_42b7cf:                                     ; preds = %block_.L_42b7c4
  %1626 = add i64 %1610, -44
  %1627 = add i64 %1625, 3
  store i64 %1627, i64* %3, align 8
  %1628 = inttoptr i64 %1626 to i32*
  %1629 = load i32, i32* %1628, align 4
  %1630 = zext i32 %1629 to i64
  store i64 %1630, i64* %RAX.i1238, align 8
  store i64 %1630, i64* %RCX.i1236, align 8
  %1631 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1
  %1632 = bitcast [32 x %union.VectorReg]* %1631 to i8*
  %1633 = uitofp i32 %1629 to double
  %1634 = bitcast [32 x %union.VectorReg]* %1631 to double*
  store double %1633, double* %1634, align 1
  %1635 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1
  %1636 = add i64 %1610, -36
  %1637 = add i64 %1625, 15
  store i64 %1637, i64* %3, align 8
  %1638 = inttoptr i64 %1636 to i32*
  %1639 = load i32, i32* %1638, align 4
  %1640 = sitofp i32 %1639 to double
  %1641 = bitcast %union.VectorReg* %1635 to double*
  store double %1640, double* %1641, align 1
  %1642 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 2
  %1643 = add i64 %1625, 21
  store i64 %1643, i64* %3, align 8
  %1644 = load i64, i64* %1613, align 8
  %1645 = sitofp i64 %1644 to double
  %1646 = bitcast %union.VectorReg* %1642 to double*
  store double %1645, double* %1646, align 1
  %1647 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1, i32 0, i32 0, i32 0, i64 1
  %1648 = fdiv double %1640, %1645
  store double %1648, double* %1641, align 1
  %1649 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 1
  %1650 = fmul double %1633, %1648
  store double %1650, double* %1634, align 1
  %1651 = add i64 %1625, -173775
  %1652 = add i64 %1625, 34
  %1653 = load i64, i64* %6, align 8
  %1654 = add i64 %1653, -8
  %1655 = inttoptr i64 %1654 to i64*
  store i64 %1652, i64* %1655, align 8
  store i64 %1654, i64* %6, align 8
  store i64 %1651, i64* %3, align 8
  %call2_42b7ec = tail call %struct.Memory* @sub_401100.log10_plt(%struct.State* nonnull %0, i64 %1651, %struct.Memory* %2)
  %1656 = load i64, i64* %3, align 8
  %1657 = add i64 %1656, ptrtoint (%G_0x8609f__rip__type* @G_0x8609f__rip_ to i64)
  %1658 = add i64 %1656, 8
  store i64 %1658, i64* %3, align 8
  %1659 = inttoptr i64 %1657 to double*
  %1660 = load double, double* %1659, align 8
  %1661 = load double, double* %1634, align 1
  %1662 = fmul double %1660, %1661
  store double %1662, double* %1641, align 1
  store i64 0, i64* %1647, align 1
  %1663 = bitcast double %1661 to <2 x i32>
  %1664 = bitcast i64* %1649 to <2 x i32>*
  %1665 = load <2 x i32>, <2 x i32>* %1664, align 1
  %1666 = fptrunc double %1662 to float
  %1667 = bitcast [32 x %union.VectorReg]* %1631 to float*
  store float %1666, float* %1667, align 1
  %1668 = extractelement <2 x i32> %1663, i32 1
  %1669 = getelementptr inbounds i8, i8* %1632, i64 4
  %1670 = bitcast i8* %1669 to i32*
  store i32 %1668, i32* %1670, align 1
  %1671 = extractelement <2 x i32> %1665, i32 0
  %1672 = bitcast i64* %1649 to i32*
  store i32 %1671, i32* %1672, align 1
  %1673 = extractelement <2 x i32> %1665, i32 1
  %1674 = getelementptr inbounds i8, i8* %1632, i64 12
  %1675 = bitcast i8* %1674 to i32*
  store i32 %1673, i32* %1675, align 1
  %1676 = load float*, float** bitcast (%G_0x6cb910_type* @G_0x6cb910 to float**), align 8
  %1677 = add i64 %1656, 28
  store i64 %1677, i64* %3, align 8
  %1678 = bitcast [32 x %union.VectorReg]* %1631 to <2 x float>*
  %1679 = load <2 x float>, <2 x float>* %1678, align 1
  %1680 = extractelement <2 x float> %1679, i32 0
  store float %1680, float* %1676, align 4
  %1681 = load i64, i64* %3, align 8
  %1682 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*), align 8
  store i64 %1682, i64* %RCX.i1236, align 8
  %1683 = add i64 %1682, 72700
  %1684 = add i64 %1681, 15
  store i64 %1684, i64* %3, align 8
  %1685 = inttoptr i64 %1683 to i32*
  %1686 = load i32, i32* %1685, align 4
  store i8 0, i8* %14, align 1
  %1687 = and i32 %1686, 255
  %1688 = tail call i32 @llvm.ctpop.i32(i32 %1687)
  %1689 = trunc i32 %1688 to i8
  %1690 = and i8 %1689, 1
  %1691 = xor i8 %1690, 1
  store i8 %1691, i8* %21, align 1
  store i8 0, i8* %27, align 1
  %1692 = icmp eq i32 %1686, 0
  %1693 = zext i1 %1692 to i8
  store i8 %1693, i8* %30, align 1
  %1694 = lshr i32 %1686, 31
  %1695 = trunc i32 %1694 to i8
  store i8 %1695, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %.v67 = select i1 %1692, i64 151, i64 21
  %1696 = add i64 %1681, %.v67
  store i64 %1696, i64* %3, align 8
  br i1 %1692, label %block_.L_42b8a4, label %block_42b822

block_42b822:                                     ; preds = %block_42b7cf
  %1697 = bitcast i64* %1647 to double*
  %1698 = getelementptr inbounds %union.VectorReg, %union.VectorReg* %1635, i64 0, i32 0, i32 0, i32 0, i64 0
  %1699 = load i64, i64* %RBP.i, align 8
  %1700 = add i64 %1699, -48
  %1701 = add i64 %1696, 3
  store i64 %1701, i64* %3, align 8
  %1702 = inttoptr i64 %1700 to i32*
  %1703 = load i32, i32* %1702, align 4
  %1704 = zext i32 %1703 to i64
  store i64 %1704, i64* %RAX.i1238, align 8
  store i64 %1704, i64* %RCX.i1236, align 8
  %1705 = uitofp i32 %1703 to double
  store double %1705, double* %1634, align 1
  %1706 = add i64 %1699, -40
  %1707 = add i64 %1696, 15
  store i64 %1707, i64* %3, align 8
  %1708 = inttoptr i64 %1706 to i32*
  %1709 = load i32, i32* %1708, align 4
  %1710 = sitofp i32 %1709 to double
  store double %1710, double* %1641, align 1
  %1711 = add i64 %1699, -24
  %1712 = add i64 %1696, 21
  store i64 %1712, i64* %3, align 8
  %1713 = inttoptr i64 %1711 to i64*
  %1714 = load i64, i64* %1713, align 8
  %1715 = sitofp i64 %1714 to double
  store double %1715, double* %1646, align 1
  %1716 = fdiv double %1710, %1715
  store double %1716, double* %1641, align 1
  %1717 = fmul double %1716, %1705
  store double %1717, double* %1634, align 1
  %1718 = add i64 %1696, -173858
  %1719 = add i64 %1696, 34
  %1720 = load i64, i64* %6, align 8
  %1721 = add i64 %1720, -8
  %1722 = inttoptr i64 %1721 to i64*
  store i64 %1719, i64* %1722, align 8
  store i64 %1721, i64* %6, align 8
  store i64 %1718, i64* %3, align 8
  %call2_42b83f = tail call %struct.Memory* @sub_401100.log10_plt(%struct.State* nonnull %0, i64 %1718, %struct.Memory* %call2_42b7ec)
  %1723 = load i64, i64* %3, align 8
  %1724 = add i64 %1723, ptrtoint (%G_0x8604c__rip__type* @G_0x8604c__rip_ to i64)
  %1725 = add i64 %1723, 8
  store i64 %1725, i64* %3, align 8
  %1726 = inttoptr i64 %1724 to i64*
  %1727 = load i64, i64* %1726, align 8
  store i64 %1727, i64* %1698, align 1
  store double 0.000000e+00, double* %1697, align 1
  %1728 = load double, double* %1634, align 1
  %1729 = bitcast i64* %1649 to <2 x i32>*
  %1730 = load <2 x i32>, <2 x i32>* %1729, align 1
  %.cast = bitcast i64 %1727 to double
  %1731 = fmul double %.cast, %1728
  %.cast20 = bitcast double %1731 to <2 x i32>
  %1732 = fptrunc double %1731 to float
  store float %1732, float* %1667, align 1
  %1733 = extractelement <2 x i32> %.cast20, i32 1
  store i32 %1733, i32* %1670, align 1
  %1734 = extractelement <2 x i32> %1730, i32 0
  store i32 %1734, i32* %1672, align 1
  %1735 = extractelement <2 x i32> %1730, i32 1
  store i32 %1735, i32* %1675, align 1
  %1736 = add i64 %1723, add (i64 ptrtoint (%G_0x2a00b5__rip__type* @G_0x2a00b5__rip_ to i64), i64 16)
  %1737 = add i64 %1723, 23
  store i64 %1737, i64* %3, align 8
  %1738 = inttoptr i64 %1736 to i64*
  %1739 = load i64, i64* %1738, align 8
  store i64 %1739, i64* %RCX.i1236, align 8
  %1740 = add i64 %1739, 4
  %1741 = add i64 %1723, 28
  store i64 %1741, i64* %3, align 8
  %1742 = load <2 x float>, <2 x float>* %1678, align 1
  %1743 = extractelement <2 x float> %1742, i32 0
  %1744 = inttoptr i64 %1740 to float*
  store float %1743, float* %1744, align 4
  %1745 = load i64, i64* %RBP.i, align 8
  %1746 = add i64 %1745, -48
  %1747 = load i64, i64* %3, align 8
  %1748 = add i64 %1747, 3
  store i64 %1748, i64* %3, align 8
  %1749 = inttoptr i64 %1746 to i32*
  %1750 = load i32, i32* %1749, align 4
  %1751 = zext i32 %1750 to i64
  store i64 %1751, i64* %RAX.i1238, align 8
  store i64 %1751, i64* %RCX.i1236, align 8
  %1752 = uitofp i32 %1750 to double
  store double %1752, double* %1634, align 1
  %1753 = add i64 %1745, -40
  %1754 = add i64 %1747, 15
  store i64 %1754, i64* %3, align 8
  %1755 = inttoptr i64 %1753 to i32*
  %1756 = load i32, i32* %1755, align 4
  %1757 = sitofp i32 %1756 to double
  store double %1757, double* %1641, align 1
  %1758 = add i64 %1745, -32
  %1759 = add i64 %1747, 21
  store i64 %1759, i64* %3, align 8
  %1760 = inttoptr i64 %1758 to i64*
  %1761 = load i64, i64* %1760, align 8
  %1762 = sitofp i64 %1761 to double
  store double %1762, double* %1646, align 1
  %1763 = fdiv double %1757, %1762
  store double %1763, double* %1641, align 1
  %1764 = fmul double %1763, %1752
  store double %1764, double* %1634, align 1
  %1765 = add i64 %1747, -173920
  %1766 = add i64 %1747, 34
  %1767 = load i64, i64* %6, align 8
  %1768 = add i64 %1767, -8
  %1769 = inttoptr i64 %1768 to i64*
  store i64 %1766, i64* %1769, align 8
  store i64 %1768, i64* %6, align 8
  store i64 %1765, i64* %3, align 8
  %call2_42b87d = tail call %struct.Memory* @sub_401100.log10_plt(%struct.State* nonnull %0, i64 %1765, %struct.Memory* %call2_42b83f)
  %1770 = load i64, i64* %3, align 8
  %1771 = add i64 %1770, ptrtoint (%G_0x8600e__rip__type* @G_0x8600e__rip_ to i64)
  %1772 = add i64 %1770, 8
  store i64 %1772, i64* %3, align 8
  %1773 = inttoptr i64 %1771 to double*
  %1774 = load double, double* %1773, align 8
  %1775 = load double, double* %1634, align 1
  %1776 = fmul double %1774, %1775
  store double %1776, double* %1641, align 1
  store i64 0, i64* %1647, align 1
  %.cast23 = bitcast double %1775 to <2 x i32>
  %1777 = load <2 x i32>, <2 x i32>* %1664, align 1
  %1778 = fptrunc double %1776 to float
  store float %1778, float* %1667, align 1
  %1779 = extractelement <2 x i32> %.cast23, i32 1
  store i32 %1779, i32* %1670, align 1
  %1780 = extractelement <2 x i32> %1777, i32 0
  store i32 %1780, i32* %1672, align 1
  %1781 = extractelement <2 x i32> %1777, i32 1
  store i32 %1781, i32* %1675, align 1
  %1782 = load i64, i64* bitcast (%G_0x6cb910_type* @G_0x6cb910 to i64*), align 8
  store i64 %1782, i64* %RCX.i1236, align 8
  %1783 = add i64 %1782, 8
  %1784 = add i64 %1770, 29
  store i64 %1784, i64* %3, align 8
  %1785 = load <2 x float>, <2 x float>* %1678, align 1
  %1786 = extractelement <2 x float> %1785, i32 0
  %1787 = inttoptr i64 %1783 to float*
  store float %1786, float* %1787, align 4
  %1788 = load i64, i64* %3, align 8
  %1789 = add i64 %1788, 34
  store i64 %1789, i64* %3, align 8
  br label %block_.L_42b8c1

block_.L_42b8a4:                                  ; preds = %block_42b7cf
  %1790 = bitcast [32 x %union.VectorReg]* %1631 to <4 x i32>*
  store <4 x i32> zeroinitializer, <4 x i32>* %1790, align 1
  %1791 = load i64, i64* bitcast (%G_0x6cb910_type* @G_0x6cb910 to i64*), align 8
  %1792 = add i64 %1791, 4
  %1793 = add i64 %1696, 16
  store i64 %1793, i64* %3, align 8
  %1794 = load <2 x float>, <2 x float>* %1678, align 1
  %1795 = extractelement <2 x float> %1794, i32 0
  %1796 = inttoptr i64 %1792 to float*
  store float %1795, float* %1796, align 4
  %1797 = load i64, i64* %3, align 8
  %1798 = load i64, i64* bitcast (%G_0x6cb910_type* @G_0x6cb910 to i64*), align 8
  store i64 %1798, i64* %RAX.i1238, align 8
  %1799 = add i64 %1798, 8
  %1800 = add i64 %1797, 13
  store i64 %1800, i64* %3, align 8
  %1801 = load <2 x float>, <2 x float>* %1678, align 1
  %1802 = extractelement <2 x float> %1801, i32 0
  %1803 = inttoptr i64 %1799 to float*
  store float %1802, float* %1803, align 4
  %.pre52 = load i64, i64* %3, align 8
  br label %block_.L_42b8c1

block_.L_42b8c1:                                  ; preds = %block_.L_42b8a4, %block_42b822
  %1804 = phi i64 [ %.pre52, %block_.L_42b8a4 ], [ %1789, %block_42b822 ]
  %MEMORY.15 = phi %struct.Memory* [ %call2_42b7ec, %block_.L_42b8a4 ], [ %call2_42b87d, %block_42b822 ]
  %1805 = add i64 %1804, 5
  store i64 %1805, i64* %3, align 8
  br label %block_.L_42b8c6

block_.L_42b8c6:                                  ; preds = %block_.L_42b8c1, %block_.L_42b7c4
  %1806 = phi i64 [ %1625, %block_.L_42b7c4 ], [ %1805, %block_.L_42b8c1 ]
  %MEMORY.16 = phi %struct.Memory* [ %2, %block_.L_42b7c4 ], [ %MEMORY.15, %block_.L_42b8c1 ]
  %1807 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*), align 8
  store i64 %1807, i64* %RAX.i1238, align 8
  %1808 = add i64 %1806, 11
  store i64 %1808, i64* %3, align 8
  %1809 = inttoptr i64 %1807 to i32*
  %1810 = load i32, i32* %1809, align 4
  store i8 0, i8* %14, align 1
  %1811 = and i32 %1810, 255
  %1812 = tail call i32 @llvm.ctpop.i32(i32 %1811)
  %1813 = trunc i32 %1812 to i8
  %1814 = and i8 %1813, 1
  %1815 = xor i8 %1814, 1
  store i8 %1815, i8* %21, align 1
  store i8 0, i8* %27, align 1
  %1816 = icmp eq i32 %1810, 0
  %1817 = zext i1 %1816 to i8
  store i8 %1817, i8* %30, align 1
  %1818 = lshr i32 %1810, 31
  %1819 = trunc i32 %1818 to i8
  store i8 %1819, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %.v68 = select i1 %1816, i64 17, i64 297
  %1820 = add i64 %1806, %.v68
  store i64 %1820, i64* %3, align 8
  br i1 %1816, label %block_42b8d7, label %block_.L_42b9ef

block_42b8d7:                                     ; preds = %block_.L_42b8c6
  %1821 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1
  %1822 = bitcast [32 x %union.VectorReg]* %1821 to <4 x i32>*
  store <4 x i32> zeroinitializer, <4 x i32>* %1822, align 1
  %1823 = load i64, i64* bitcast (%G_0x6cb910_type* @G_0x6cb910 to i64*), align 8
  store i64 %1823, i64* %RAX.i1238, align 8
  %1824 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1
  %1825 = bitcast %union.VectorReg* %1824 to i8*
  %1826 = add i64 %1820, 15
  store i64 %1826, i64* %3, align 8
  %1827 = inttoptr i64 %1823 to i32*
  %1828 = load i32, i32* %1827, align 4
  %1829 = bitcast %union.VectorReg* %1824 to i32*
  store i32 %1828, i32* %1829, align 1
  %1830 = getelementptr inbounds i8, i8* %1825, i64 4
  %1831 = bitcast i8* %1830 to float*
  store float 0.000000e+00, float* %1831, align 1
  %1832 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1, i32 0, i32 0, i32 0, i64 1
  %1833 = bitcast i64* %1832 to float*
  store float 0.000000e+00, float* %1833, align 1
  %1834 = getelementptr inbounds i8, i8* %1825, i64 12
  %1835 = bitcast i8* %1834 to float*
  store float 0.000000e+00, float* %1835, align 1
  %1836 = add i64 %1823, 12
  %1837 = add i64 %1820, 28
  store i64 %1837, i64* %3, align 8
  %1838 = bitcast %union.VectorReg* %1824 to <2 x float>*
  %1839 = load <2 x float>, <2 x float>* %1838, align 1
  %1840 = extractelement <2 x float> %1839, i32 0
  %1841 = inttoptr i64 %1836 to float*
  store float %1840, float* %1841, align 4
  %1842 = load i64, i64* %3, align 8
  %1843 = load i64, i64* bitcast (%G_0x6cb910_type* @G_0x6cb910 to i64*), align 8
  store i64 %1843, i64* %RAX.i1238, align 8
  %1844 = add i64 %1843, 4
  %1845 = add i64 %1842, 13
  store i64 %1845, i64* %3, align 8
  %1846 = inttoptr i64 %1844 to i32*
  %1847 = load i32, i32* %1846, align 4
  store i32 %1847, i32* %1829, align 1
  store float 0.000000e+00, float* %1831, align 1
  store float 0.000000e+00, float* %1833, align 1
  store float 0.000000e+00, float* %1835, align 1
  %1848 = add i64 %1843, 16
  %1849 = add i64 %1842, 26
  store i64 %1849, i64* %3, align 8
  %1850 = load <2 x float>, <2 x float>* %1838, align 1
  %1851 = extractelement <2 x float> %1850, i32 0
  %1852 = inttoptr i64 %1848 to float*
  store float %1851, float* %1852, align 4
  %1853 = load i64, i64* %3, align 8
  %1854 = load i64, i64* bitcast (%G_0x6cb910_type* @G_0x6cb910 to i64*), align 8
  store i64 %1854, i64* %RAX.i1238, align 8
  %1855 = add i64 %1854, 8
  %1856 = add i64 %1853, 13
  store i64 %1856, i64* %3, align 8
  %1857 = inttoptr i64 %1855 to i32*
  %1858 = load i32, i32* %1857, align 4
  store i32 %1858, i32* %1829, align 1
  store float 0.000000e+00, float* %1831, align 1
  store float 0.000000e+00, float* %1833, align 1
  store float 0.000000e+00, float* %1835, align 1
  %1859 = add i64 %1854, 20
  %1860 = add i64 %1853, 26
  store i64 %1860, i64* %3, align 8
  %1861 = load <2 x float>, <2 x float>* %1838, align 1
  %1862 = extractelement <2 x float> %1861, i32 0
  %1863 = inttoptr i64 %1859 to float*
  store float %1862, float* %1863, align 4
  %1864 = load i64, i64* %3, align 8
  %1865 = load i64, i64* bitcast (%G_0x6cb910_type* @G_0x6cb910 to i64*), align 8
  store i64 %1865, i64* %RAX.i1238, align 8
  %1866 = add i64 %1865, 12
  %1867 = add i64 %1864, 13
  store i64 %1867, i64* %3, align 8
  %1868 = inttoptr i64 %1866 to i32*
  %1869 = load i32, i32* %1868, align 4
  store i32 %1869, i32* %1829, align 1
  store float 0.000000e+00, float* %1831, align 1
  store float 0.000000e+00, float* %1833, align 1
  store float 0.000000e+00, float* %1835, align 1
  %1870 = add i64 %1865, 60
  %1871 = add i64 %1864, 26
  store i64 %1871, i64* %3, align 8
  %1872 = load <2 x float>, <2 x float>* %1838, align 1
  %1873 = extractelement <2 x float> %1872, i32 0
  %1874 = inttoptr i64 %1870 to float*
  store float %1873, float* %1874, align 4
  %1875 = load i64, i64* %3, align 8
  %1876 = load i64, i64* bitcast (%G_0x6cb910_type* @G_0x6cb910 to i64*), align 8
  store i64 %1876, i64* %RAX.i1238, align 8
  %1877 = add i64 %1876, 16
  %1878 = add i64 %1875, 13
  store i64 %1878, i64* %3, align 8
  %1879 = inttoptr i64 %1877 to i32*
  %1880 = load i32, i32* %1879, align 4
  store i32 %1880, i32* %1829, align 1
  store float 0.000000e+00, float* %1831, align 1
  store float 0.000000e+00, float* %1833, align 1
  store float 0.000000e+00, float* %1835, align 1
  %1881 = add i64 %1876, 64
  %1882 = add i64 %1875, 26
  store i64 %1882, i64* %3, align 8
  %1883 = load <2 x float>, <2 x float>* %1838, align 1
  %1884 = extractelement <2 x float> %1883, i32 0
  %1885 = inttoptr i64 %1881 to float*
  store float %1884, float* %1885, align 4
  %1886 = load i64, i64* %3, align 8
  %1887 = load i64, i64* bitcast (%G_0x6cb910_type* @G_0x6cb910 to i64*), align 8
  store i64 %1887, i64* %RAX.i1238, align 8
  %1888 = add i64 %1887, 20
  %1889 = add i64 %1886, 13
  store i64 %1889, i64* %3, align 8
  %1890 = inttoptr i64 %1888 to i32*
  %1891 = load i32, i32* %1890, align 4
  store i32 %1891, i32* %1829, align 1
  store float 0.000000e+00, float* %1831, align 1
  store float 0.000000e+00, float* %1833, align 1
  store float 0.000000e+00, float* %1835, align 1
  %1892 = add i64 %1887, 68
  %1893 = add i64 %1886, 26
  store i64 %1893, i64* %3, align 8
  %1894 = load <2 x float>, <2 x float>* %1838, align 1
  %1895 = extractelement <2 x float> %1894, i32 0
  %1896 = inttoptr i64 %1892 to float*
  store float %1895, float* %1896, align 4
  %1897 = load i64, i64* %3, align 8
  %1898 = load i64, i64* bitcast (%G_0x6cb910_type* @G_0x6cb910 to i64*), align 8
  %1899 = add i64 %1898, 32
  %1900 = add i64 %1897, 13
  store i64 %1900, i64* %3, align 8
  %1901 = bitcast [32 x %union.VectorReg]* %1821 to <2 x float>*
  %1902 = load <2 x float>, <2 x float>* %1901, align 1
  %1903 = extractelement <2 x float> %1902, i32 0
  %1904 = inttoptr i64 %1899 to float*
  store float %1903, float* %1904, align 4
  %1905 = load i64, i64* %3, align 8
  %1906 = load i64, i64* bitcast (%G_0x6cb910_type* @G_0x6cb910 to i64*), align 8
  %1907 = add i64 %1906, 44
  %1908 = add i64 %1905, 13
  store i64 %1908, i64* %3, align 8
  %1909 = load <2 x float>, <2 x float>* %1901, align 1
  %1910 = extractelement <2 x float> %1909, i32 0
  %1911 = inttoptr i64 %1907 to float*
  store float %1910, float* %1911, align 4
  %1912 = load i64, i64* %3, align 8
  %1913 = load i64, i64* bitcast (%G_0x6cb910_type* @G_0x6cb910 to i64*), align 8
  %1914 = add i64 %1913, 56
  %1915 = add i64 %1912, 13
  store i64 %1915, i64* %3, align 8
  %1916 = load <2 x float>, <2 x float>* %1901, align 1
  %1917 = extractelement <2 x float> %1916, i32 0
  %1918 = inttoptr i64 %1914 to float*
  store float %1917, float* %1918, align 4
  %1919 = load i64, i64* %3, align 8
  %1920 = load i64, i64* bitcast (%G_0x6cb910_type* @G_0x6cb910 to i64*), align 8
  %1921 = add i64 %1920, 24
  %1922 = add i64 %1919, 13
  store i64 %1922, i64* %3, align 8
  %1923 = load <2 x float>, <2 x float>* %1901, align 1
  %1924 = extractelement <2 x float> %1923, i32 0
  %1925 = inttoptr i64 %1921 to float*
  store float %1924, float* %1925, align 4
  %1926 = load i64, i64* %3, align 8
  %1927 = load i64, i64* bitcast (%G_0x6cb910_type* @G_0x6cb910 to i64*), align 8
  %1928 = add i64 %1927, 36
  %1929 = add i64 %1926, 13
  store i64 %1929, i64* %3, align 8
  %1930 = load <2 x float>, <2 x float>* %1901, align 1
  %1931 = extractelement <2 x float> %1930, i32 0
  %1932 = inttoptr i64 %1928 to float*
  store float %1931, float* %1932, align 4
  %1933 = load i64, i64* %3, align 8
  %1934 = load i64, i64* bitcast (%G_0x6cb910_type* @G_0x6cb910 to i64*), align 8
  %1935 = add i64 %1934, 48
  %1936 = add i64 %1933, 13
  store i64 %1936, i64* %3, align 8
  %1937 = load <2 x float>, <2 x float>* %1901, align 1
  %1938 = extractelement <2 x float> %1937, i32 0
  %1939 = inttoptr i64 %1935 to float*
  store float %1938, float* %1939, align 4
  %1940 = load i64, i64* %3, align 8
  %1941 = load i64, i64* bitcast (%G_0x6cb910_type* @G_0x6cb910 to i64*), align 8
  %1942 = add i64 %1941, 28
  %1943 = add i64 %1940, 13
  store i64 %1943, i64* %3, align 8
  %1944 = load <2 x float>, <2 x float>* %1901, align 1
  %1945 = extractelement <2 x float> %1944, i32 0
  %1946 = inttoptr i64 %1942 to float*
  store float %1945, float* %1946, align 4
  %1947 = load i64, i64* %3, align 8
  %1948 = load i64, i64* bitcast (%G_0x6cb910_type* @G_0x6cb910 to i64*), align 8
  %1949 = add i64 %1948, 40
  %1950 = add i64 %1947, 13
  store i64 %1950, i64* %3, align 8
  %1951 = load <2 x float>, <2 x float>* %1901, align 1
  %1952 = extractelement <2 x float> %1951, i32 0
  %1953 = inttoptr i64 %1949 to float*
  store float %1952, float* %1953, align 4
  %1954 = load i64, i64* %3, align 8
  %1955 = load i64, i64* bitcast (%G_0x6cb910_type* @G_0x6cb910 to i64*), align 8
  store i64 %1955, i64* %RAX.i1238, align 8
  %1956 = add i64 %1955, 52
  %1957 = add i64 %1954, 13
  store i64 %1957, i64* %3, align 8
  %1958 = load <2 x float>, <2 x float>* %1901, align 1
  %1959 = extractelement <2 x float> %1958, i32 0
  %1960 = inttoptr i64 %1956 to float*
  store float %1959, float* %1960, align 4
  %1961 = load i64, i64* %3, align 8
  %1962 = add i64 %1961, 280
  store i64 %1962, i64* %3, align 8
  br label %block_.L_42bb02

block_.L_42b9ef:                                  ; preds = %block_.L_42b8c6
  %1963 = load i64, i64* bitcast (%G_0x6cb910_type* @G_0x6cb910 to i64*), align 8
  store i64 %1963, i64* %RAX.i1238, align 8
  %1964 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1
  %1965 = bitcast [32 x %union.VectorReg]* %1964 to i8*
  %1966 = add i64 %1963, 60
  %1967 = add i64 %1820, 13
  store i64 %1967, i64* %3, align 8
  %1968 = inttoptr i64 %1966 to i32*
  %1969 = load i32, i32* %1968, align 4
  %1970 = bitcast [32 x %union.VectorReg]* %1964 to float*
  %1971 = bitcast [32 x %union.VectorReg]* %1964 to i32*
  store i32 %1969, i32* %1971, align 1
  %1972 = getelementptr inbounds i8, i8* %1965, i64 4
  %1973 = bitcast i8* %1972 to float*
  store float 0.000000e+00, float* %1973, align 1
  %1974 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 1
  %1975 = bitcast i64* %1974 to float*
  store float 0.000000e+00, float* %1975, align 1
  %1976 = getelementptr inbounds i8, i8* %1965, i64 12
  %1977 = bitcast i8* %1976 to float*
  store float 0.000000e+00, float* %1977, align 1
  store i64 %1807, i64* %RAX.i1238, align 8
  %1978 = add i64 %1820, 23
  store i64 %1978, i64* %3, align 8
  %1979 = load i32, i32* %1809, align 4
  %1980 = load i32, i32* bitcast (%G_0x722ca8_type* @G_0x722ca8 to i32*), align 8
  %1981 = add i32 %1980, %1979
  %1982 = zext i32 %1981 to i64
  store i64 %1982, i64* %RCX.i1236, align 8
  %1983 = icmp ult i32 %1981, %1979
  %1984 = icmp ult i32 %1981, %1980
  %1985 = or i1 %1983, %1984
  %1986 = zext i1 %1985 to i8
  store i8 %1986, i8* %14, align 1
  %1987 = and i32 %1981, 255
  %1988 = tail call i32 @llvm.ctpop.i32(i32 %1987)
  %1989 = trunc i32 %1988 to i8
  %1990 = and i8 %1989, 1
  %1991 = xor i8 %1990, 1
  store i8 %1991, i8* %21, align 1
  %1992 = xor i32 %1980, %1979
  %1993 = xor i32 %1992, %1981
  %1994 = lshr i32 %1993, 4
  %1995 = trunc i32 %1994 to i8
  %1996 = and i8 %1995, 1
  store i8 %1996, i8* %27, align 1
  %1997 = icmp eq i32 %1981, 0
  %1998 = zext i1 %1997 to i8
  store i8 %1998, i8* %30, align 1
  %1999 = lshr i32 %1981, 31
  %2000 = trunc i32 %1999 to i8
  store i8 %2000, i8* %33, align 1
  %2001 = lshr i32 %1979, 31
  %2002 = lshr i32 %1980, 31
  %2003 = xor i32 %1999, %2001
  %2004 = xor i32 %1999, %2002
  %2005 = add nuw nsw i32 %2003, %2004
  %2006 = icmp eq i32 %2005, 2
  %2007 = zext i1 %2006 to i8
  store i8 %2007, i8* %39, align 1
  %2008 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1
  %2009 = bitcast %union.VectorReg* %2008 to i8*
  %2010 = bitcast %union.VectorReg* %2008 to <2 x i32>*
  %2011 = load <2 x i32>, <2 x i32>* %2010, align 1
  %2012 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1, i32 0, i32 0, i32 0, i64 1
  %2013 = bitcast i64* %2012 to <2 x i32>*
  %2014 = load <2 x i32>, <2 x i32>* %2013, align 1
  %2015 = sitofp i32 %1981 to float
  %2016 = bitcast %union.VectorReg* %2008 to float*
  store float %2015, float* %2016, align 1
  %2017 = extractelement <2 x i32> %2011, i32 1
  %2018 = getelementptr inbounds i8, i8* %2009, i64 4
  %2019 = bitcast i8* %2018 to i32*
  store i32 %2017, i32* %2019, align 1
  %2020 = extractelement <2 x i32> %2014, i32 0
  %2021 = bitcast i64* %2012 to i32*
  store i32 %2020, i32* %2021, align 1
  %2022 = extractelement <2 x i32> %2014, i32 1
  %2023 = getelementptr inbounds i8, i8* %2009, i64 12
  %2024 = bitcast i8* %2023 to i32*
  store i32 %2022, i32* %2024, align 1
  %2025 = bitcast [32 x %union.VectorReg]* %1964 to <2 x float>*
  %2026 = load <2 x float>, <2 x float>* %2025, align 1
  %2027 = bitcast i64* %1974 to <2 x i32>*
  %2028 = load <2 x i32>, <2 x i32>* %2027, align 1
  %2029 = bitcast %union.VectorReg* %2008 to <2 x float>*
  %2030 = load <2 x float>, <2 x float>* %2029, align 1
  %2031 = extractelement <2 x float> %2026, i32 0
  %2032 = extractelement <2 x float> %2030, i32 0
  %2033 = fmul float %2031, %2032
  store float %2033, float* %1970, align 1
  %2034 = bitcast <2 x float> %2026 to <2 x i32>
  %2035 = extractelement <2 x i32> %2034, i32 1
  %2036 = bitcast i8* %1972 to i32*
  store i32 %2035, i32* %2036, align 1
  %2037 = extractelement <2 x i32> %2028, i32 0
  %2038 = bitcast i64* %1974 to i32*
  store i32 %2037, i32* %2038, align 1
  %2039 = extractelement <2 x i32> %2028, i32 1
  %2040 = bitcast i8* %1976 to i32*
  store i32 %2039, i32* %2040, align 1
  %2041 = load i64, i64* bitcast (%G_0x6cb910_type* @G_0x6cb910 to i64*), align 8
  store i64 %2041, i64* %RAX.i1238, align 8
  %2042 = add i64 %1820, 50
  store i64 %2042, i64* %3, align 8
  %2043 = load <2 x float>, <2 x float>* %2025, align 1
  %2044 = load <2 x i32>, <2 x i32>* %2027, align 1
  %2045 = inttoptr i64 %2041 to float*
  %2046 = load float, float* %2045, align 4
  %2047 = extractelement <2 x float> %2043, i32 0
  %2048 = fadd float %2047, %2046
  store float %2048, float* %1970, align 1
  %2049 = bitcast <2 x float> %2043 to <2 x i32>
  %2050 = extractelement <2 x i32> %2049, i32 1
  store i32 %2050, i32* %2036, align 1
  %2051 = extractelement <2 x i32> %2044, i32 0
  store i32 %2051, i32* %2038, align 1
  %2052 = extractelement <2 x i32> %2044, i32 1
  store i32 %2052, i32* %2040, align 1
  %2053 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*), align 8
  store i64 %2053, i64* %RAX.i1238, align 8
  %2054 = add i64 %1820, 60
  store i64 %2054, i64* %3, align 8
  %2055 = inttoptr i64 %2053 to i32*
  %2056 = load i32, i32* %2055, align 4
  %2057 = load i32, i32* bitcast (%G_0x722ca8_type* @G_0x722ca8 to i32*), align 8
  %2058 = add i32 %2057, %2056
  %2059 = lshr i32 %2058, 31
  %2060 = add i32 %2058, 1
  %2061 = zext i32 %2060 to i64
  store i64 %2061, i64* %RCX.i1236, align 8
  %2062 = icmp eq i32 %2058, -1
  %2063 = icmp eq i32 %2060, 0
  %2064 = or i1 %2062, %2063
  %2065 = zext i1 %2064 to i8
  store i8 %2065, i8* %14, align 1
  %2066 = and i32 %2060, 255
  %2067 = tail call i32 @llvm.ctpop.i32(i32 %2066)
  %2068 = trunc i32 %2067 to i8
  %2069 = and i8 %2068, 1
  %2070 = xor i8 %2069, 1
  store i8 %2070, i8* %21, align 1
  %2071 = xor i32 %2060, %2058
  %2072 = lshr i32 %2071, 4
  %2073 = trunc i32 %2072 to i8
  %2074 = and i8 %2073, 1
  store i8 %2074, i8* %27, align 1
  %2075 = zext i1 %2063 to i8
  store i8 %2075, i8* %30, align 1
  %2076 = lshr i32 %2060, 31
  %2077 = trunc i32 %2076 to i8
  store i8 %2077, i8* %33, align 1
  %2078 = xor i32 %2076, %2059
  %2079 = add nuw nsw i32 %2078, %2076
  %2080 = icmp eq i32 %2079, 2
  %2081 = zext i1 %2080 to i8
  store i8 %2081, i8* %39, align 1
  %2082 = load <2 x i32>, <2 x i32>* %2010, align 1
  %2083 = load <2 x i32>, <2 x i32>* %2013, align 1
  %2084 = sitofp i32 %2060 to float
  store float %2084, float* %2016, align 1
  %2085 = extractelement <2 x i32> %2082, i32 1
  store i32 %2085, i32* %2019, align 1
  %2086 = extractelement <2 x i32> %2083, i32 0
  store i32 %2086, i32* %2021, align 1
  %2087 = extractelement <2 x i32> %2083, i32 1
  store i32 %2087, i32* %2024, align 1
  %2088 = load <2 x float>, <2 x float>* %2025, align 1
  %2089 = load <2 x i32>, <2 x i32>* %2027, align 1
  %2090 = load <2 x float>, <2 x float>* %2029, align 1
  %2091 = extractelement <2 x float> %2088, i32 0
  %2092 = extractelement <2 x float> %2090, i32 0
  %2093 = fdiv float %2091, %2092
  store float %2093, float* %1970, align 1
  %2094 = bitcast <2 x float> %2088 to <2 x i32>
  %2095 = extractelement <2 x i32> %2094, i32 1
  store i32 %2095, i32* %2036, align 1
  %2096 = extractelement <2 x i32> %2089, i32 0
  store i32 %2096, i32* %2038, align 1
  %2097 = extractelement <2 x i32> %2089, i32 1
  store i32 %2097, i32* %2040, align 1
  %2098 = load i64, i64* bitcast (%G_0x6cb910_type* @G_0x6cb910 to i64*), align 8
  %2099 = add i64 %2098, 60
  %2100 = add i64 %1820, 91
  store i64 %2100, i64* %3, align 8
  %2101 = load <2 x float>, <2 x float>* %2025, align 1
  %2102 = extractelement <2 x float> %2101, i32 0
  %2103 = inttoptr i64 %2099 to float*
  store float %2102, float* %2103, align 4
  %2104 = load i64, i64* %3, align 8
  %2105 = load i64, i64* bitcast (%G_0x6cb910_type* @G_0x6cb910 to i64*), align 8
  store i64 %2105, i64* %RAX.i1238, align 8
  %2106 = add i64 %2105, 64
  %2107 = add i64 %2104, 13
  store i64 %2107, i64* %3, align 8
  %2108 = inttoptr i64 %2106 to i32*
  %2109 = load i32, i32* %2108, align 4
  store i32 %2109, i32* %1971, align 1
  store float 0.000000e+00, float* %1973, align 1
  store float 0.000000e+00, float* %1975, align 1
  store float 0.000000e+00, float* %1977, align 1
  %2110 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*), align 8
  store i64 %2110, i64* %RAX.i1238, align 8
  %2111 = add i64 %2104, 23
  store i64 %2111, i64* %3, align 8
  %2112 = inttoptr i64 %2110 to i32*
  %2113 = load i32, i32* %2112, align 4
  %2114 = load i32, i32* bitcast (%G_0x722ca8_type* @G_0x722ca8 to i32*), align 8
  %2115 = add i32 %2114, %2113
  %2116 = zext i32 %2115 to i64
  store i64 %2116, i64* %RCX.i1236, align 8
  %2117 = icmp ult i32 %2115, %2113
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
  %2126 = xor i32 %2114, %2113
  %2127 = xor i32 %2126, %2115
  %2128 = lshr i32 %2127, 4
  %2129 = trunc i32 %2128 to i8
  %2130 = and i8 %2129, 1
  store i8 %2130, i8* %27, align 1
  %2131 = icmp eq i32 %2115, 0
  %2132 = zext i1 %2131 to i8
  store i8 %2132, i8* %30, align 1
  %2133 = lshr i32 %2115, 31
  %2134 = trunc i32 %2133 to i8
  store i8 %2134, i8* %33, align 1
  %2135 = lshr i32 %2113, 31
  %2136 = lshr i32 %2114, 31
  %2137 = xor i32 %2133, %2135
  %2138 = xor i32 %2133, %2136
  %2139 = add nuw nsw i32 %2137, %2138
  %2140 = icmp eq i32 %2139, 2
  %2141 = zext i1 %2140 to i8
  store i8 %2141, i8* %39, align 1
  %2142 = load <2 x i32>, <2 x i32>* %2010, align 1
  %2143 = load <2 x i32>, <2 x i32>* %2013, align 1
  %2144 = sitofp i32 %2115 to float
  store float %2144, float* %2016, align 1
  %2145 = extractelement <2 x i32> %2142, i32 1
  store i32 %2145, i32* %2019, align 1
  %2146 = extractelement <2 x i32> %2143, i32 0
  store i32 %2146, i32* %2021, align 1
  %2147 = extractelement <2 x i32> %2143, i32 1
  store i32 %2147, i32* %2024, align 1
  %2148 = load <2 x float>, <2 x float>* %2025, align 1
  %2149 = load <2 x i32>, <2 x i32>* %2027, align 1
  %2150 = load <2 x float>, <2 x float>* %2029, align 1
  %2151 = extractelement <2 x float> %2148, i32 0
  %2152 = extractelement <2 x float> %2150, i32 0
  %2153 = fmul float %2151, %2152
  store float %2153, float* %1970, align 1
  %2154 = bitcast <2 x float> %2148 to <2 x i32>
  %2155 = extractelement <2 x i32> %2154, i32 1
  store i32 %2155, i32* %2036, align 1
  %2156 = extractelement <2 x i32> %2149, i32 0
  store i32 %2156, i32* %2038, align 1
  %2157 = extractelement <2 x i32> %2149, i32 1
  store i32 %2157, i32* %2040, align 1
  store i64 %2105, i64* %RAX.i1238, align 8
  %2158 = add i64 %2105, 4
  %2159 = add i64 %2104, 51
  store i64 %2159, i64* %3, align 8
  %2160 = load <2 x float>, <2 x float>* %2025, align 1
  %2161 = load <2 x i32>, <2 x i32>* %2027, align 1
  %2162 = inttoptr i64 %2158 to float*
  %2163 = load float, float* %2162, align 4
  %2164 = extractelement <2 x float> %2160, i32 0
  %2165 = fadd float %2164, %2163
  store float %2165, float* %1970, align 1
  %2166 = bitcast <2 x float> %2160 to <2 x i32>
  %2167 = extractelement <2 x i32> %2166, i32 1
  store i32 %2167, i32* %2036, align 1
  %2168 = extractelement <2 x i32> %2161, i32 0
  store i32 %2168, i32* %2038, align 1
  %2169 = extractelement <2 x i32> %2161, i32 1
  store i32 %2169, i32* %2040, align 1
  store i64 %2110, i64* %RAX.i1238, align 8
  %2170 = add i64 %2104, 61
  store i64 %2170, i64* %3, align 8
  %2171 = load i32, i32* %2112, align 4
  %2172 = add i32 %2114, %2171
  %2173 = lshr i32 %2172, 31
  %2174 = add i32 %2172, 1
  %2175 = zext i32 %2174 to i64
  store i64 %2175, i64* %RCX.i1236, align 8
  %2176 = icmp eq i32 %2172, -1
  %2177 = icmp eq i32 %2174, 0
  %2178 = or i1 %2176, %2177
  %2179 = zext i1 %2178 to i8
  store i8 %2179, i8* %14, align 1
  %2180 = and i32 %2174, 255
  %2181 = tail call i32 @llvm.ctpop.i32(i32 %2180)
  %2182 = trunc i32 %2181 to i8
  %2183 = and i8 %2182, 1
  %2184 = xor i8 %2183, 1
  store i8 %2184, i8* %21, align 1
  %2185 = xor i32 %2174, %2172
  %2186 = lshr i32 %2185, 4
  %2187 = trunc i32 %2186 to i8
  %2188 = and i8 %2187, 1
  store i8 %2188, i8* %27, align 1
  %2189 = zext i1 %2177 to i8
  store i8 %2189, i8* %30, align 1
  %2190 = lshr i32 %2174, 31
  %2191 = trunc i32 %2190 to i8
  store i8 %2191, i8* %33, align 1
  %2192 = xor i32 %2190, %2173
  %2193 = add nuw nsw i32 %2192, %2190
  %2194 = icmp eq i32 %2193, 2
  %2195 = zext i1 %2194 to i8
  store i8 %2195, i8* %39, align 1
  %2196 = load <2 x i32>, <2 x i32>* %2010, align 1
  %2197 = load <2 x i32>, <2 x i32>* %2013, align 1
  %2198 = sitofp i32 %2174 to float
  store float %2198, float* %2016, align 1
  %2199 = extractelement <2 x i32> %2196, i32 1
  store i32 %2199, i32* %2019, align 1
  %2200 = extractelement <2 x i32> %2197, i32 0
  store i32 %2200, i32* %2021, align 1
  %2201 = extractelement <2 x i32> %2197, i32 1
  store i32 %2201, i32* %2024, align 1
  %2202 = load <2 x float>, <2 x float>* %2025, align 1
  %2203 = load <2 x i32>, <2 x i32>* %2027, align 1
  %2204 = load <2 x float>, <2 x float>* %2029, align 1
  %2205 = extractelement <2 x float> %2202, i32 0
  %2206 = extractelement <2 x float> %2204, i32 0
  %2207 = fdiv float %2205, %2206
  store float %2207, float* %1970, align 1
  %2208 = bitcast <2 x float> %2202 to <2 x i32>
  %2209 = extractelement <2 x i32> %2208, i32 1
  store i32 %2209, i32* %2036, align 1
  %2210 = extractelement <2 x i32> %2203, i32 0
  store i32 %2210, i32* %2038, align 1
  %2211 = extractelement <2 x i32> %2203, i32 1
  store i32 %2211, i32* %2040, align 1
  %2212 = load i64, i64* bitcast (%G_0x6cb910_type* @G_0x6cb910 to i64*), align 8
  %2213 = add i64 %2212, 64
  %2214 = add i64 %2104, 92
  store i64 %2214, i64* %3, align 8
  %2215 = load <2 x float>, <2 x float>* %2025, align 1
  %2216 = extractelement <2 x float> %2215, i32 0
  %2217 = inttoptr i64 %2213 to float*
  store float %2216, float* %2217, align 4
  %2218 = load i64, i64* %3, align 8
  %2219 = load i64, i64* bitcast (%G_0x6cb910_type* @G_0x6cb910 to i64*), align 8
  store i64 %2219, i64* %RAX.i1238, align 8
  %2220 = add i64 %2219, 68
  %2221 = add i64 %2218, 13
  store i64 %2221, i64* %3, align 8
  %2222 = inttoptr i64 %2220 to i32*
  %2223 = load i32, i32* %2222, align 4
  store i32 %2223, i32* %1971, align 1
  store float 0.000000e+00, float* %1973, align 1
  store float 0.000000e+00, float* %1975, align 1
  store float 0.000000e+00, float* %1977, align 1
  %2224 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*), align 8
  store i64 %2224, i64* %RAX.i1238, align 8
  %2225 = add i64 %2218, 23
  store i64 %2225, i64* %3, align 8
  %2226 = inttoptr i64 %2224 to i32*
  %2227 = load i32, i32* %2226, align 4
  %2228 = load i32, i32* bitcast (%G_0x722ca8_type* @G_0x722ca8 to i32*), align 8
  %2229 = add i32 %2228, %2227
  %2230 = zext i32 %2229 to i64
  store i64 %2230, i64* %RCX.i1236, align 8
  %2231 = icmp ult i32 %2229, %2227
  %2232 = icmp ult i32 %2229, %2228
  %2233 = or i1 %2231, %2232
  %2234 = zext i1 %2233 to i8
  store i8 %2234, i8* %14, align 1
  %2235 = and i32 %2229, 255
  %2236 = tail call i32 @llvm.ctpop.i32(i32 %2235)
  %2237 = trunc i32 %2236 to i8
  %2238 = and i8 %2237, 1
  %2239 = xor i8 %2238, 1
  store i8 %2239, i8* %21, align 1
  %2240 = xor i32 %2228, %2227
  %2241 = xor i32 %2240, %2229
  %2242 = lshr i32 %2241, 4
  %2243 = trunc i32 %2242 to i8
  %2244 = and i8 %2243, 1
  store i8 %2244, i8* %27, align 1
  %2245 = icmp eq i32 %2229, 0
  %2246 = zext i1 %2245 to i8
  store i8 %2246, i8* %30, align 1
  %2247 = lshr i32 %2229, 31
  %2248 = trunc i32 %2247 to i8
  store i8 %2248, i8* %33, align 1
  %2249 = lshr i32 %2227, 31
  %2250 = lshr i32 %2228, 31
  %2251 = xor i32 %2247, %2249
  %2252 = xor i32 %2247, %2250
  %2253 = add nuw nsw i32 %2251, %2252
  %2254 = icmp eq i32 %2253, 2
  %2255 = zext i1 %2254 to i8
  store i8 %2255, i8* %39, align 1
  %2256 = load <2 x i32>, <2 x i32>* %2010, align 1
  %2257 = load <2 x i32>, <2 x i32>* %2013, align 1
  %2258 = sitofp i32 %2229 to float
  store float %2258, float* %2016, align 1
  %2259 = extractelement <2 x i32> %2256, i32 1
  store i32 %2259, i32* %2019, align 1
  %2260 = extractelement <2 x i32> %2257, i32 0
  store i32 %2260, i32* %2021, align 1
  %2261 = extractelement <2 x i32> %2257, i32 1
  store i32 %2261, i32* %2024, align 1
  %2262 = load <2 x float>, <2 x float>* %2025, align 1
  %2263 = load <2 x i32>, <2 x i32>* %2027, align 1
  %2264 = load <2 x float>, <2 x float>* %2029, align 1
  %2265 = extractelement <2 x float> %2262, i32 0
  %2266 = extractelement <2 x float> %2264, i32 0
  %2267 = fmul float %2265, %2266
  store float %2267, float* %1970, align 1
  %2268 = bitcast <2 x float> %2262 to <2 x i32>
  %2269 = extractelement <2 x i32> %2268, i32 1
  store i32 %2269, i32* %2036, align 1
  %2270 = extractelement <2 x i32> %2263, i32 0
  store i32 %2270, i32* %2038, align 1
  %2271 = extractelement <2 x i32> %2263, i32 1
  store i32 %2271, i32* %2040, align 1
  store i64 %2219, i64* %RAX.i1238, align 8
  %2272 = add i64 %2219, 8
  %2273 = add i64 %2218, 51
  store i64 %2273, i64* %3, align 8
  %2274 = load <2 x float>, <2 x float>* %2025, align 1
  %2275 = load <2 x i32>, <2 x i32>* %2027, align 1
  %2276 = inttoptr i64 %2272 to float*
  %2277 = load float, float* %2276, align 4
  %2278 = extractelement <2 x float> %2274, i32 0
  %2279 = fadd float %2278, %2277
  store float %2279, float* %1970, align 1
  %2280 = bitcast <2 x float> %2274 to <2 x i32>
  %2281 = extractelement <2 x i32> %2280, i32 1
  store i32 %2281, i32* %2036, align 1
  %2282 = extractelement <2 x i32> %2275, i32 0
  store i32 %2282, i32* %2038, align 1
  %2283 = extractelement <2 x i32> %2275, i32 1
  store i32 %2283, i32* %2040, align 1
  store i64 %2224, i64* %RAX.i1238, align 8
  %2284 = add i64 %2218, 61
  store i64 %2284, i64* %3, align 8
  %2285 = load i32, i32* %2226, align 4
  %2286 = add i32 %2228, %2285
  %2287 = lshr i32 %2286, 31
  %2288 = add i32 %2286, 1
  %2289 = zext i32 %2288 to i64
  store i64 %2289, i64* %RCX.i1236, align 8
  %2290 = icmp eq i32 %2286, -1
  %2291 = icmp eq i32 %2288, 0
  %2292 = or i1 %2290, %2291
  %2293 = zext i1 %2292 to i8
  store i8 %2293, i8* %14, align 1
  %2294 = and i32 %2288, 255
  %2295 = tail call i32 @llvm.ctpop.i32(i32 %2294)
  %2296 = trunc i32 %2295 to i8
  %2297 = and i8 %2296, 1
  %2298 = xor i8 %2297, 1
  store i8 %2298, i8* %21, align 1
  %2299 = xor i32 %2288, %2286
  %2300 = lshr i32 %2299, 4
  %2301 = trunc i32 %2300 to i8
  %2302 = and i8 %2301, 1
  store i8 %2302, i8* %27, align 1
  %2303 = zext i1 %2291 to i8
  store i8 %2303, i8* %30, align 1
  %2304 = lshr i32 %2288, 31
  %2305 = trunc i32 %2304 to i8
  store i8 %2305, i8* %33, align 1
  %2306 = xor i32 %2304, %2287
  %2307 = add nuw nsw i32 %2306, %2304
  %2308 = icmp eq i32 %2307, 2
  %2309 = zext i1 %2308 to i8
  store i8 %2309, i8* %39, align 1
  %2310 = load <2 x i32>, <2 x i32>* %2010, align 1
  %2311 = load <2 x i32>, <2 x i32>* %2013, align 1
  %2312 = sitofp i32 %2288 to float
  store float %2312, float* %2016, align 1
  %2313 = extractelement <2 x i32> %2310, i32 1
  store i32 %2313, i32* %2019, align 1
  %2314 = extractelement <2 x i32> %2311, i32 0
  store i32 %2314, i32* %2021, align 1
  %2315 = extractelement <2 x i32> %2311, i32 1
  store i32 %2315, i32* %2024, align 1
  %2316 = load <2 x float>, <2 x float>* %2025, align 1
  %2317 = load <2 x i32>, <2 x i32>* %2027, align 1
  %2318 = load <2 x float>, <2 x float>* %2029, align 1
  %2319 = extractelement <2 x float> %2316, i32 0
  %2320 = extractelement <2 x float> %2318, i32 0
  %2321 = fdiv float %2319, %2320
  store float %2321, float* %1970, align 1
  %2322 = bitcast <2 x float> %2316 to <2 x i32>
  %2323 = extractelement <2 x i32> %2322, i32 1
  store i32 %2323, i32* %2036, align 1
  %2324 = extractelement <2 x i32> %2317, i32 0
  store i32 %2324, i32* %2038, align 1
  %2325 = extractelement <2 x i32> %2317, i32 1
  store i32 %2325, i32* %2040, align 1
  %2326 = load i64, i64* bitcast (%G_0x6cb910_type* @G_0x6cb910 to i64*), align 8
  store i64 %2326, i64* %RAX.i1238, align 8
  %2327 = add i64 %2326, 68
  %2328 = add i64 %2218, 92
  store i64 %2328, i64* %3, align 8
  %2329 = load <2 x float>, <2 x float>* %2025, align 1
  %2330 = extractelement <2 x float> %2329, i32 0
  %2331 = inttoptr i64 %2327 to float*
  store float %2330, float* %2331, align 4
  %.pre53 = load i64, i64* %3, align 8
  br label %block_.L_42bb02

block_.L_42bb02:                                  ; preds = %block_.L_42b9ef, %block_42b8d7
  %2332 = phi i64 [ %.pre53, %block_.L_42b9ef ], [ %1962, %block_42b8d7 ]
  %2333 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*), align 8
  store i64 %2333, i64* %RAX.i1238, align 8
  %2334 = add i64 %2333, 24
  %2335 = add i64 %2332, 12
  store i64 %2335, i64* %3, align 8
  %2336 = inttoptr i64 %2334 to i32*
  %2337 = load i32, i32* %2336, align 4
  %2338 = add i32 %2337, -2
  %2339 = icmp ult i32 %2337, 2
  %2340 = zext i1 %2339 to i8
  store i8 %2340, i8* %14, align 1
  %2341 = and i32 %2338, 255
  %2342 = tail call i32 @llvm.ctpop.i32(i32 %2341)
  %2343 = trunc i32 %2342 to i8
  %2344 = and i8 %2343, 1
  %2345 = xor i8 %2344, 1
  store i8 %2345, i8* %21, align 1
  %2346 = xor i32 %2338, %2337
  %2347 = lshr i32 %2346, 4
  %2348 = trunc i32 %2347 to i8
  %2349 = and i8 %2348, 1
  store i8 %2349, i8* %27, align 1
  %2350 = icmp eq i32 %2338, 0
  %2351 = zext i1 %2350 to i8
  store i8 %2351, i8* %30, align 1
  %2352 = lshr i32 %2338, 31
  %2353 = trunc i32 %2352 to i8
  store i8 %2353, i8* %33, align 1
  %2354 = lshr i32 %2337, 31
  %2355 = xor i32 %2352, %2354
  %2356 = add nuw nsw i32 %2355, %2354
  %2357 = icmp eq i32 %2356, 2
  %2358 = zext i1 %2357 to i8
  store i8 %2358, i8* %39, align 1
  %.v69 = select i1 %2350, i64 18, i64 232
  %2359 = add i64 %2332, %.v69
  %2360 = add i64 %2359, 8
  store i64 %2360, i64* %3, align 8
  br i1 %2350, label %block_42bb14, label %block_.L_42bbea

block_42bb14:                                     ; preds = %block_.L_42bb02
  %2361 = load i64, i64* bitcast (%G_0x6cb910_type* @G_0x6cb910 to i64*), align 8
  store i64 %2361, i64* %RAX.i1238, align 8
  %2362 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1
  %2363 = bitcast [32 x %union.VectorReg]* %2362 to i8*
  %2364 = add i64 %2361, 32
  %2365 = add i64 %2359, 13
  store i64 %2365, i64* %3, align 8
  %2366 = inttoptr i64 %2364 to i32*
  %2367 = load i32, i32* %2366, align 4
  %2368 = bitcast [32 x %union.VectorReg]* %2362 to float*
  %2369 = bitcast [32 x %union.VectorReg]* %2362 to i32*
  store i32 %2367, i32* %2369, align 1
  %2370 = getelementptr inbounds i8, i8* %2363, i64 4
  %2371 = bitcast i8* %2370 to float*
  store float 0.000000e+00, float* %2371, align 1
  %2372 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 1
  %2373 = bitcast i64* %2372 to float*
  store float 0.000000e+00, float* %2373, align 1
  %2374 = getelementptr inbounds i8, i8* %2363, i64 12
  %2375 = bitcast i8* %2374 to float*
  store float 0.000000e+00, float* %2375, align 1
  %2376 = load i32, i32* bitcast (%G_0x6f8edc_type* @G_0x6f8edc to i32*), align 8
  %2377 = add i32 %2376, -1
  %2378 = zext i32 %2377 to i64
  store i64 %2378, i64* %RCX.i1236, align 8
  %2379 = icmp eq i32 %2376, 0
  %2380 = zext i1 %2379 to i8
  store i8 %2380, i8* %14, align 1
  %2381 = and i32 %2377, 255
  %2382 = tail call i32 @llvm.ctpop.i32(i32 %2381)
  %2383 = trunc i32 %2382 to i8
  %2384 = and i8 %2383, 1
  %2385 = xor i8 %2384, 1
  store i8 %2385, i8* %21, align 1
  %2386 = xor i32 %2377, %2376
  %2387 = lshr i32 %2386, 4
  %2388 = trunc i32 %2387 to i8
  %2389 = and i8 %2388, 1
  store i8 %2389, i8* %27, align 1
  %2390 = icmp eq i32 %2377, 0
  %2391 = zext i1 %2390 to i8
  store i8 %2391, i8* %30, align 1
  %2392 = lshr i32 %2377, 31
  %2393 = trunc i32 %2392 to i8
  store i8 %2393, i8* %33, align 1
  %2394 = lshr i32 %2376, 31
  %2395 = xor i32 %2392, %2394
  %2396 = add nuw nsw i32 %2395, %2394
  %2397 = icmp eq i32 %2396, 2
  %2398 = zext i1 %2397 to i8
  store i8 %2398, i8* %39, align 1
  %2399 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1
  %2400 = bitcast %union.VectorReg* %2399 to i8*
  %2401 = bitcast %union.VectorReg* %2399 to <2 x i32>*
  %2402 = load <2 x i32>, <2 x i32>* %2401, align 1
  %2403 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1, i32 0, i32 0, i32 0, i64 1
  %2404 = bitcast i64* %2403 to <2 x i32>*
  %2405 = load <2 x i32>, <2 x i32>* %2404, align 1
  %2406 = sitofp i32 %2377 to float
  %2407 = bitcast %union.VectorReg* %2399 to float*
  store float %2406, float* %2407, align 1
  %2408 = extractelement <2 x i32> %2402, i32 1
  %2409 = getelementptr inbounds i8, i8* %2400, i64 4
  %2410 = bitcast i8* %2409 to i32*
  store i32 %2408, i32* %2410, align 1
  %2411 = extractelement <2 x i32> %2405, i32 0
  %2412 = bitcast i64* %2403 to i32*
  store i32 %2411, i32* %2412, align 1
  %2413 = extractelement <2 x i32> %2405, i32 1
  %2414 = getelementptr inbounds i8, i8* %2400, i64 12
  %2415 = bitcast i8* %2414 to i32*
  store i32 %2413, i32* %2415, align 1
  %2416 = bitcast [32 x %union.VectorReg]* %2362 to <2 x float>*
  %2417 = load <2 x float>, <2 x float>* %2416, align 1
  %2418 = bitcast i64* %2372 to <2 x i32>*
  %2419 = load <2 x i32>, <2 x i32>* %2418, align 1
  %2420 = bitcast %union.VectorReg* %2399 to <2 x float>*
  %2421 = load <2 x float>, <2 x float>* %2420, align 1
  %2422 = extractelement <2 x float> %2417, i32 0
  %2423 = extractelement <2 x float> %2421, i32 0
  %2424 = fmul float %2422, %2423
  store float %2424, float* %2368, align 1
  %2425 = bitcast <2 x float> %2417 to <2 x i32>
  %2426 = extractelement <2 x i32> %2425, i32 1
  %2427 = bitcast i8* %2370 to i32*
  store i32 %2426, i32* %2427, align 1
  %2428 = extractelement <2 x i32> %2419, i32 0
  %2429 = bitcast i64* %2372 to i32*
  store i32 %2428, i32* %2429, align 1
  %2430 = extractelement <2 x i32> %2419, i32 1
  %2431 = bitcast i8* %2374 to i32*
  store i32 %2430, i32* %2431, align 1
  %2432 = load i64, i64* bitcast (%G_0x6cb910_type* @G_0x6cb910 to i64*), align 8
  store i64 %2432, i64* %RAX.i1238, align 8
  %2433 = add i64 %2359, 43
  store i64 %2433, i64* %3, align 8
  %2434 = load <2 x float>, <2 x float>* %2416, align 1
  %2435 = load <2 x i32>, <2 x i32>* %2418, align 1
  %2436 = inttoptr i64 %2432 to float*
  %2437 = load float, float* %2436, align 4
  %2438 = extractelement <2 x float> %2434, i32 0
  %2439 = fadd float %2438, %2437
  store float %2439, float* %2368, align 1
  %2440 = bitcast <2 x float> %2434 to <2 x i32>
  %2441 = extractelement <2 x i32> %2440, i32 1
  store i32 %2441, i32* %2427, align 1
  %2442 = extractelement <2 x i32> %2435, i32 0
  store i32 %2442, i32* %2429, align 1
  %2443 = extractelement <2 x i32> %2435, i32 1
  store i32 %2443, i32* %2431, align 1
  %2444 = bitcast <2 x float> %2421 to <2 x i32>
  %2445 = load <2 x i32>, <2 x i32>* %2404, align 1
  %2446 = load i32, i32* bitcast (%G_0x6f8edc_type* @G_0x6f8edc to i32*), align 8
  %2447 = sitofp i32 %2446 to float
  store float %2447, float* %2407, align 1
  %2448 = extractelement <2 x i32> %2444, i32 1
  store i32 %2448, i32* %2410, align 1
  %2449 = extractelement <2 x i32> %2445, i32 0
  store i32 %2449, i32* %2412, align 1
  %2450 = extractelement <2 x i32> %2445, i32 1
  store i32 %2450, i32* %2415, align 1
  %2451 = load <2 x float>, <2 x float>* %2416, align 1
  %2452 = load <2 x i32>, <2 x i32>* %2418, align 1
  %2453 = load <2 x float>, <2 x float>* %2420, align 1
  %2454 = extractelement <2 x float> %2451, i32 0
  %2455 = extractelement <2 x float> %2453, i32 0
  %2456 = fdiv float %2454, %2455
  store float %2456, float* %2368, align 1
  %2457 = bitcast <2 x float> %2451 to <2 x i32>
  %2458 = extractelement <2 x i32> %2457, i32 1
  store i32 %2458, i32* %2427, align 1
  %2459 = extractelement <2 x i32> %2452, i32 0
  store i32 %2459, i32* %2429, align 1
  %2460 = extractelement <2 x i32> %2452, i32 1
  store i32 %2460, i32* %2431, align 1
  %2461 = add i64 %2432, 32
  %2462 = add i64 %2359, 69
  store i64 %2462, i64* %3, align 8
  %2463 = load <2 x float>, <2 x float>* %2416, align 1
  %2464 = extractelement <2 x float> %2463, i32 0
  %2465 = inttoptr i64 %2461 to float*
  store float %2464, float* %2465, align 4
  %2466 = load i64, i64* %3, align 8
  %2467 = load i64, i64* bitcast (%G_0x6cb910_type* @G_0x6cb910 to i64*), align 8
  store i64 %2467, i64* %RAX.i1238, align 8
  %2468 = add i64 %2467, 44
  %2469 = add i64 %2466, 13
  store i64 %2469, i64* %3, align 8
  %2470 = inttoptr i64 %2468 to i32*
  %2471 = load i32, i32* %2470, align 4
  store i32 %2471, i32* %2369, align 1
  store float 0.000000e+00, float* %2371, align 1
  store float 0.000000e+00, float* %2373, align 1
  store float 0.000000e+00, float* %2375, align 1
  %2472 = load i32, i32* bitcast (%G_0x6f8edc_type* @G_0x6f8edc to i32*), align 8
  %2473 = add i32 %2472, -1
  %2474 = zext i32 %2473 to i64
  store i64 %2474, i64* %RCX.i1236, align 8
  %2475 = icmp eq i32 %2472, 0
  %2476 = zext i1 %2475 to i8
  store i8 %2476, i8* %14, align 1
  %2477 = and i32 %2473, 255
  %2478 = tail call i32 @llvm.ctpop.i32(i32 %2477)
  %2479 = trunc i32 %2478 to i8
  %2480 = and i8 %2479, 1
  %2481 = xor i8 %2480, 1
  store i8 %2481, i8* %21, align 1
  %2482 = xor i32 %2473, %2472
  %2483 = lshr i32 %2482, 4
  %2484 = trunc i32 %2483 to i8
  %2485 = and i8 %2484, 1
  store i8 %2485, i8* %27, align 1
  %2486 = icmp eq i32 %2473, 0
  %2487 = zext i1 %2486 to i8
  store i8 %2487, i8* %30, align 1
  %2488 = lshr i32 %2473, 31
  %2489 = trunc i32 %2488 to i8
  store i8 %2489, i8* %33, align 1
  %2490 = lshr i32 %2472, 31
  %2491 = xor i32 %2488, %2490
  %2492 = add nuw nsw i32 %2491, %2490
  %2493 = icmp eq i32 %2492, 2
  %2494 = zext i1 %2493 to i8
  store i8 %2494, i8* %39, align 1
  %2495 = load <2 x i32>, <2 x i32>* %2401, align 1
  %2496 = load <2 x i32>, <2 x i32>* %2404, align 1
  %2497 = sitofp i32 %2473 to float
  store float %2497, float* %2407, align 1
  %2498 = extractelement <2 x i32> %2495, i32 1
  store i32 %2498, i32* %2410, align 1
  %2499 = extractelement <2 x i32> %2496, i32 0
  store i32 %2499, i32* %2412, align 1
  %2500 = extractelement <2 x i32> %2496, i32 1
  store i32 %2500, i32* %2415, align 1
  %2501 = load <2 x float>, <2 x float>* %2416, align 1
  %2502 = load <2 x i32>, <2 x i32>* %2418, align 1
  %2503 = load <2 x float>, <2 x float>* %2420, align 1
  %2504 = extractelement <2 x float> %2501, i32 0
  %2505 = extractelement <2 x float> %2503, i32 0
  %2506 = fmul float %2504, %2505
  store float %2506, float* %2368, align 1
  %2507 = bitcast <2 x float> %2501 to <2 x i32>
  %2508 = extractelement <2 x i32> %2507, i32 1
  store i32 %2508, i32* %2427, align 1
  %2509 = extractelement <2 x i32> %2502, i32 0
  store i32 %2509, i32* %2429, align 1
  %2510 = extractelement <2 x i32> %2502, i32 1
  store i32 %2510, i32* %2431, align 1
  store i64 %2467, i64* %RAX.i1238, align 8
  %2511 = add i64 %2467, 4
  %2512 = add i64 %2466, 44
  store i64 %2512, i64* %3, align 8
  %2513 = load <2 x float>, <2 x float>* %2416, align 1
  %2514 = load <2 x i32>, <2 x i32>* %2418, align 1
  %2515 = inttoptr i64 %2511 to float*
  %2516 = load float, float* %2515, align 4
  %2517 = extractelement <2 x float> %2513, i32 0
  %2518 = fadd float %2517, %2516
  store float %2518, float* %2368, align 1
  %2519 = bitcast <2 x float> %2513 to <2 x i32>
  %2520 = extractelement <2 x i32> %2519, i32 1
  store i32 %2520, i32* %2427, align 1
  %2521 = extractelement <2 x i32> %2514, i32 0
  store i32 %2521, i32* %2429, align 1
  %2522 = extractelement <2 x i32> %2514, i32 1
  store i32 %2522, i32* %2431, align 1
  %2523 = bitcast <2 x float> %2503 to <2 x i32>
  %2524 = load <2 x i32>, <2 x i32>* %2404, align 1
  %2525 = sitofp i32 %2472 to float
  store float %2525, float* %2407, align 1
  %2526 = extractelement <2 x i32> %2523, i32 1
  store i32 %2526, i32* %2410, align 1
  %2527 = extractelement <2 x i32> %2524, i32 0
  store i32 %2527, i32* %2412, align 1
  %2528 = extractelement <2 x i32> %2524, i32 1
  store i32 %2528, i32* %2415, align 1
  %2529 = load <2 x float>, <2 x float>* %2416, align 1
  %2530 = load <2 x i32>, <2 x i32>* %2418, align 1
  %2531 = load <2 x float>, <2 x float>* %2420, align 1
  %2532 = extractelement <2 x float> %2529, i32 0
  %2533 = extractelement <2 x float> %2531, i32 0
  %2534 = fdiv float %2532, %2533
  store float %2534, float* %2368, align 1
  %2535 = bitcast <2 x float> %2529 to <2 x i32>
  %2536 = extractelement <2 x i32> %2535, i32 1
  store i32 %2536, i32* %2427, align 1
  %2537 = extractelement <2 x i32> %2530, i32 0
  store i32 %2537, i32* %2429, align 1
  %2538 = extractelement <2 x i32> %2530, i32 1
  store i32 %2538, i32* %2431, align 1
  %2539 = load i64, i64* bitcast (%G_0x6cb910_type* @G_0x6cb910 to i64*), align 8
  %2540 = add i64 %2539, 44
  %2541 = add i64 %2466, 70
  store i64 %2541, i64* %3, align 8
  %2542 = load <2 x float>, <2 x float>* %2416, align 1
  %2543 = extractelement <2 x float> %2542, i32 0
  %2544 = inttoptr i64 %2540 to float*
  store float %2543, float* %2544, align 4
  %2545 = load i64, i64* %3, align 8
  %2546 = load i64, i64* bitcast (%G_0x6cb910_type* @G_0x6cb910 to i64*), align 8
  store i64 %2546, i64* %RAX.i1238, align 8
  %2547 = add i64 %2546, 56
  %2548 = add i64 %2545, 13
  store i64 %2548, i64* %3, align 8
  %2549 = inttoptr i64 %2547 to i32*
  %2550 = load i32, i32* %2549, align 4
  store i32 %2550, i32* %2369, align 1
  store float 0.000000e+00, float* %2371, align 1
  store float 0.000000e+00, float* %2373, align 1
  store float 0.000000e+00, float* %2375, align 1
  %2551 = load i32, i32* bitcast (%G_0x6f8edc_type* @G_0x6f8edc to i32*), align 8
  %2552 = add i32 %2551, -1
  %2553 = zext i32 %2552 to i64
  store i64 %2553, i64* %RCX.i1236, align 8
  %2554 = icmp eq i32 %2551, 0
  %2555 = zext i1 %2554 to i8
  store i8 %2555, i8* %14, align 1
  %2556 = and i32 %2552, 255
  %2557 = tail call i32 @llvm.ctpop.i32(i32 %2556)
  %2558 = trunc i32 %2557 to i8
  %2559 = and i8 %2558, 1
  %2560 = xor i8 %2559, 1
  store i8 %2560, i8* %21, align 1
  %2561 = xor i32 %2552, %2551
  %2562 = lshr i32 %2561, 4
  %2563 = trunc i32 %2562 to i8
  %2564 = and i8 %2563, 1
  store i8 %2564, i8* %27, align 1
  %2565 = icmp eq i32 %2552, 0
  %2566 = zext i1 %2565 to i8
  store i8 %2566, i8* %30, align 1
  %2567 = lshr i32 %2552, 31
  %2568 = trunc i32 %2567 to i8
  store i8 %2568, i8* %33, align 1
  %2569 = lshr i32 %2551, 31
  %2570 = xor i32 %2567, %2569
  %2571 = add nuw nsw i32 %2570, %2569
  %2572 = icmp eq i32 %2571, 2
  %2573 = zext i1 %2572 to i8
  store i8 %2573, i8* %39, align 1
  %2574 = load <2 x i32>, <2 x i32>* %2401, align 1
  %2575 = load <2 x i32>, <2 x i32>* %2404, align 1
  %2576 = sitofp i32 %2552 to float
  store float %2576, float* %2407, align 1
  %2577 = extractelement <2 x i32> %2574, i32 1
  store i32 %2577, i32* %2410, align 1
  %2578 = extractelement <2 x i32> %2575, i32 0
  store i32 %2578, i32* %2412, align 1
  %2579 = extractelement <2 x i32> %2575, i32 1
  store i32 %2579, i32* %2415, align 1
  %2580 = load <2 x float>, <2 x float>* %2416, align 1
  %2581 = load <2 x i32>, <2 x i32>* %2418, align 1
  %2582 = load <2 x float>, <2 x float>* %2420, align 1
  %2583 = extractelement <2 x float> %2580, i32 0
  %2584 = extractelement <2 x float> %2582, i32 0
  %2585 = fmul float %2583, %2584
  store float %2585, float* %2368, align 1
  %2586 = bitcast <2 x float> %2580 to <2 x i32>
  %2587 = extractelement <2 x i32> %2586, i32 1
  store i32 %2587, i32* %2427, align 1
  %2588 = extractelement <2 x i32> %2581, i32 0
  store i32 %2588, i32* %2429, align 1
  %2589 = extractelement <2 x i32> %2581, i32 1
  store i32 %2589, i32* %2431, align 1
  store i64 %2546, i64* %RAX.i1238, align 8
  %2590 = add i64 %2546, 8
  %2591 = add i64 %2545, 44
  store i64 %2591, i64* %3, align 8
  %2592 = load <2 x float>, <2 x float>* %2416, align 1
  %2593 = load <2 x i32>, <2 x i32>* %2418, align 1
  %2594 = inttoptr i64 %2590 to float*
  %2595 = load float, float* %2594, align 4
  %2596 = extractelement <2 x float> %2592, i32 0
  %2597 = fadd float %2596, %2595
  store float %2597, float* %2368, align 1
  %2598 = bitcast <2 x float> %2592 to <2 x i32>
  %2599 = extractelement <2 x i32> %2598, i32 1
  store i32 %2599, i32* %2427, align 1
  %2600 = extractelement <2 x i32> %2593, i32 0
  store i32 %2600, i32* %2429, align 1
  %2601 = extractelement <2 x i32> %2593, i32 1
  store i32 %2601, i32* %2431, align 1
  %2602 = bitcast <2 x float> %2582 to <2 x i32>
  %2603 = load <2 x i32>, <2 x i32>* %2404, align 1
  %2604 = sitofp i32 %2551 to float
  store float %2604, float* %2407, align 1
  %2605 = extractelement <2 x i32> %2602, i32 1
  store i32 %2605, i32* %2410, align 1
  %2606 = extractelement <2 x i32> %2603, i32 0
  store i32 %2606, i32* %2412, align 1
  %2607 = extractelement <2 x i32> %2603, i32 1
  store i32 %2607, i32* %2415, align 1
  %2608 = load <2 x float>, <2 x float>* %2416, align 1
  %2609 = load <2 x i32>, <2 x i32>* %2418, align 1
  %2610 = load <2 x float>, <2 x float>* %2420, align 1
  %2611 = extractelement <2 x float> %2608, i32 0
  %2612 = extractelement <2 x float> %2610, i32 0
  %2613 = fdiv float %2611, %2612
  store float %2613, float* %2368, align 1
  %2614 = bitcast <2 x float> %2608 to <2 x i32>
  %2615 = extractelement <2 x i32> %2614, i32 1
  store i32 %2615, i32* %2427, align 1
  %2616 = extractelement <2 x i32> %2609, i32 0
  store i32 %2616, i32* %2429, align 1
  %2617 = extractelement <2 x i32> %2609, i32 1
  store i32 %2617, i32* %2431, align 1
  %2618 = load i64, i64* bitcast (%G_0x6cb910_type* @G_0x6cb910 to i64*), align 8
  store i64 %2618, i64* %RAX.i1238, align 8
  %2619 = add i64 %2618, 56
  %2620 = add i64 %2545, 70
  store i64 %2620, i64* %3, align 8
  %2621 = load <2 x float>, <2 x float>* %2416, align 1
  %2622 = extractelement <2 x float> %2621, i32 0
  %2623 = inttoptr i64 %2619 to float*
  store float %2622, float* %2623, align 4
  %2624 = load i64, i64* %3, align 8
  %2625 = add i64 %2624, 451
  br label %block_.L_42bda8

block_.L_42bbea:                                  ; preds = %block_.L_42bb02
  store i64 %2333, i64* %RAX.i1238, align 8
  %2626 = add i64 %2359, 12
  store i64 %2626, i64* %3, align 8
  %2627 = load i32, i32* %2336, align 4
  %2628 = add i32 %2627, -1
  %2629 = icmp eq i32 %2627, 0
  %2630 = zext i1 %2629 to i8
  store i8 %2630, i8* %14, align 1
  %2631 = and i32 %2628, 255
  %2632 = tail call i32 @llvm.ctpop.i32(i32 %2631)
  %2633 = trunc i32 %2632 to i8
  %2634 = and i8 %2633, 1
  %2635 = xor i8 %2634, 1
  store i8 %2635, i8* %21, align 1
  %2636 = xor i32 %2628, %2627
  %2637 = lshr i32 %2636, 4
  %2638 = trunc i32 %2637 to i8
  %2639 = and i8 %2638, 1
  store i8 %2639, i8* %27, align 1
  %2640 = icmp eq i32 %2628, 0
  %2641 = zext i1 %2640 to i8
  store i8 %2641, i8* %30, align 1
  %2642 = lshr i32 %2628, 31
  %2643 = trunc i32 %2642 to i8
  store i8 %2643, i8* %33, align 1
  %2644 = lshr i32 %2627, 31
  %2645 = xor i32 %2642, %2644
  %2646 = add nuw nsw i32 %2645, %2644
  %2647 = icmp eq i32 %2646, 2
  %2648 = zext i1 %2647 to i8
  store i8 %2648, i8* %39, align 1
  %.v70 = select i1 %2640, i64 18, i64 232
  %2649 = add i64 %2359, %.v70
  %2650 = add i64 %2649, 8
  store i64 %2650, i64* %3, align 8
  %2651 = load i64, i64* bitcast (%G_0x6cb910_type* @G_0x6cb910 to i64*), align 8
  store i64 %2651, i64* %RAX.i1238, align 8
  %2652 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1
  %2653 = bitcast [32 x %union.VectorReg]* %2652 to i8*
  br i1 %2640, label %block_42bbfc, label %block_.L_42bcd2

block_42bbfc:                                     ; preds = %block_.L_42bbea
  %2654 = add i64 %2651, 28
  %2655 = add i64 %2649, 13
  store i64 %2655, i64* %3, align 8
  %2656 = inttoptr i64 %2654 to i32*
  %2657 = load i32, i32* %2656, align 4
  %2658 = bitcast [32 x %union.VectorReg]* %2652 to float*
  %2659 = bitcast [32 x %union.VectorReg]* %2652 to i32*
  store i32 %2657, i32* %2659, align 1
  %2660 = getelementptr inbounds i8, i8* %2653, i64 4
  %2661 = bitcast i8* %2660 to float*
  store float 0.000000e+00, float* %2661, align 1
  %2662 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 1
  %2663 = bitcast i64* %2662 to float*
  store float 0.000000e+00, float* %2663, align 1
  %2664 = getelementptr inbounds i8, i8* %2653, i64 12
  %2665 = bitcast i8* %2664 to float*
  store float 0.000000e+00, float* %2665, align 1
  %2666 = load i32, i32* bitcast (%G_0x722ca8_type* @G_0x722ca8 to i32*), align 8
  %2667 = add i32 %2666, -1
  %2668 = zext i32 %2667 to i64
  store i64 %2668, i64* %RCX.i1236, align 8
  %2669 = icmp eq i32 %2666, 0
  %2670 = zext i1 %2669 to i8
  store i8 %2670, i8* %14, align 1
  %2671 = and i32 %2667, 255
  %2672 = tail call i32 @llvm.ctpop.i32(i32 %2671)
  %2673 = trunc i32 %2672 to i8
  %2674 = and i8 %2673, 1
  %2675 = xor i8 %2674, 1
  store i8 %2675, i8* %21, align 1
  %2676 = xor i32 %2667, %2666
  %2677 = lshr i32 %2676, 4
  %2678 = trunc i32 %2677 to i8
  %2679 = and i8 %2678, 1
  store i8 %2679, i8* %27, align 1
  %2680 = icmp eq i32 %2667, 0
  %2681 = zext i1 %2680 to i8
  store i8 %2681, i8* %30, align 1
  %2682 = lshr i32 %2667, 31
  %2683 = trunc i32 %2682 to i8
  store i8 %2683, i8* %33, align 1
  %2684 = lshr i32 %2666, 31
  %2685 = xor i32 %2682, %2684
  %2686 = add nuw nsw i32 %2685, %2684
  %2687 = icmp eq i32 %2686, 2
  %2688 = zext i1 %2687 to i8
  store i8 %2688, i8* %39, align 1
  %2689 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1
  %2690 = bitcast %union.VectorReg* %2689 to i8*
  %2691 = bitcast %union.VectorReg* %2689 to <2 x i32>*
  %2692 = load <2 x i32>, <2 x i32>* %2691, align 1
  %2693 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1, i32 0, i32 0, i32 0, i64 1
  %2694 = bitcast i64* %2693 to <2 x i32>*
  %2695 = load <2 x i32>, <2 x i32>* %2694, align 1
  %2696 = sitofp i32 %2667 to float
  %2697 = bitcast %union.VectorReg* %2689 to float*
  store float %2696, float* %2697, align 1
  %2698 = extractelement <2 x i32> %2692, i32 1
  %2699 = getelementptr inbounds i8, i8* %2690, i64 4
  %2700 = bitcast i8* %2699 to i32*
  store i32 %2698, i32* %2700, align 1
  %2701 = extractelement <2 x i32> %2695, i32 0
  %2702 = bitcast i64* %2693 to i32*
  store i32 %2701, i32* %2702, align 1
  %2703 = extractelement <2 x i32> %2695, i32 1
  %2704 = getelementptr inbounds i8, i8* %2690, i64 12
  %2705 = bitcast i8* %2704 to i32*
  store i32 %2703, i32* %2705, align 1
  %2706 = bitcast [32 x %union.VectorReg]* %2652 to <2 x float>*
  %2707 = load <2 x float>, <2 x float>* %2706, align 1
  %2708 = bitcast i64* %2662 to <2 x i32>*
  %2709 = load <2 x i32>, <2 x i32>* %2708, align 1
  %2710 = bitcast %union.VectorReg* %2689 to <2 x float>*
  %2711 = load <2 x float>, <2 x float>* %2710, align 1
  %2712 = extractelement <2 x float> %2707, i32 0
  %2713 = extractelement <2 x float> %2711, i32 0
  %2714 = fmul float %2712, %2713
  store float %2714, float* %2658, align 1
  %2715 = bitcast <2 x float> %2707 to <2 x i32>
  %2716 = extractelement <2 x i32> %2715, i32 1
  %2717 = bitcast i8* %2660 to i32*
  store i32 %2716, i32* %2717, align 1
  %2718 = extractelement <2 x i32> %2709, i32 0
  %2719 = bitcast i64* %2662 to i32*
  store i32 %2718, i32* %2719, align 1
  %2720 = extractelement <2 x i32> %2709, i32 1
  %2721 = bitcast i8* %2664 to i32*
  store i32 %2720, i32* %2721, align 1
  %2722 = load i64, i64* bitcast (%G_0x6cb910_type* @G_0x6cb910 to i64*), align 8
  store i64 %2722, i64* %RAX.i1238, align 8
  %2723 = add i64 %2649, 43
  store i64 %2723, i64* %3, align 8
  %2724 = load <2 x float>, <2 x float>* %2706, align 1
  %2725 = load <2 x i32>, <2 x i32>* %2708, align 1
  %2726 = inttoptr i64 %2722 to float*
  %2727 = load float, float* %2726, align 4
  %2728 = extractelement <2 x float> %2724, i32 0
  %2729 = fadd float %2728, %2727
  store float %2729, float* %2658, align 1
  %2730 = bitcast <2 x float> %2724 to <2 x i32>
  %2731 = extractelement <2 x i32> %2730, i32 1
  store i32 %2731, i32* %2717, align 1
  %2732 = extractelement <2 x i32> %2725, i32 0
  store i32 %2732, i32* %2719, align 1
  %2733 = extractelement <2 x i32> %2725, i32 1
  store i32 %2733, i32* %2721, align 1
  %2734 = bitcast <2 x float> %2711 to <2 x i32>
  %2735 = load <2 x i32>, <2 x i32>* %2694, align 1
  %2736 = load i32, i32* bitcast (%G_0x722ca8_type* @G_0x722ca8 to i32*), align 8
  %2737 = sitofp i32 %2736 to float
  store float %2737, float* %2697, align 1
  %2738 = extractelement <2 x i32> %2734, i32 1
  store i32 %2738, i32* %2700, align 1
  %2739 = extractelement <2 x i32> %2735, i32 0
  store i32 %2739, i32* %2702, align 1
  %2740 = extractelement <2 x i32> %2735, i32 1
  store i32 %2740, i32* %2705, align 1
  %2741 = load <2 x float>, <2 x float>* %2706, align 1
  %2742 = load <2 x i32>, <2 x i32>* %2708, align 1
  %2743 = load <2 x float>, <2 x float>* %2710, align 1
  %2744 = extractelement <2 x float> %2741, i32 0
  %2745 = extractelement <2 x float> %2743, i32 0
  %2746 = fdiv float %2744, %2745
  store float %2746, float* %2658, align 1
  %2747 = bitcast <2 x float> %2741 to <2 x i32>
  %2748 = extractelement <2 x i32> %2747, i32 1
  store i32 %2748, i32* %2717, align 1
  %2749 = extractelement <2 x i32> %2742, i32 0
  store i32 %2749, i32* %2719, align 1
  %2750 = extractelement <2 x i32> %2742, i32 1
  store i32 %2750, i32* %2721, align 1
  %2751 = add i64 %2722, 28
  %2752 = add i64 %2649, 69
  store i64 %2752, i64* %3, align 8
  %2753 = load <2 x float>, <2 x float>* %2706, align 1
  %2754 = extractelement <2 x float> %2753, i32 0
  %2755 = inttoptr i64 %2751 to float*
  store float %2754, float* %2755, align 4
  %2756 = load i64, i64* %3, align 8
  %2757 = load i64, i64* bitcast (%G_0x6cb910_type* @G_0x6cb910 to i64*), align 8
  store i64 %2757, i64* %RAX.i1238, align 8
  %2758 = add i64 %2757, 40
  %2759 = add i64 %2756, 13
  store i64 %2759, i64* %3, align 8
  %2760 = inttoptr i64 %2758 to i32*
  %2761 = load i32, i32* %2760, align 4
  store i32 %2761, i32* %2659, align 1
  store float 0.000000e+00, float* %2661, align 1
  store float 0.000000e+00, float* %2663, align 1
  store float 0.000000e+00, float* %2665, align 1
  %2762 = load i32, i32* bitcast (%G_0x722ca8_type* @G_0x722ca8 to i32*), align 8
  %2763 = add i32 %2762, -1
  %2764 = zext i32 %2763 to i64
  store i64 %2764, i64* %RCX.i1236, align 8
  %2765 = icmp eq i32 %2762, 0
  %2766 = zext i1 %2765 to i8
  store i8 %2766, i8* %14, align 1
  %2767 = and i32 %2763, 255
  %2768 = tail call i32 @llvm.ctpop.i32(i32 %2767)
  %2769 = trunc i32 %2768 to i8
  %2770 = and i8 %2769, 1
  %2771 = xor i8 %2770, 1
  store i8 %2771, i8* %21, align 1
  %2772 = xor i32 %2763, %2762
  %2773 = lshr i32 %2772, 4
  %2774 = trunc i32 %2773 to i8
  %2775 = and i8 %2774, 1
  store i8 %2775, i8* %27, align 1
  %2776 = icmp eq i32 %2763, 0
  %2777 = zext i1 %2776 to i8
  store i8 %2777, i8* %30, align 1
  %2778 = lshr i32 %2763, 31
  %2779 = trunc i32 %2778 to i8
  store i8 %2779, i8* %33, align 1
  %2780 = lshr i32 %2762, 31
  %2781 = xor i32 %2778, %2780
  %2782 = add nuw nsw i32 %2781, %2780
  %2783 = icmp eq i32 %2782, 2
  %2784 = zext i1 %2783 to i8
  store i8 %2784, i8* %39, align 1
  %2785 = load <2 x i32>, <2 x i32>* %2691, align 1
  %2786 = load <2 x i32>, <2 x i32>* %2694, align 1
  %2787 = sitofp i32 %2763 to float
  store float %2787, float* %2697, align 1
  %2788 = extractelement <2 x i32> %2785, i32 1
  store i32 %2788, i32* %2700, align 1
  %2789 = extractelement <2 x i32> %2786, i32 0
  store i32 %2789, i32* %2702, align 1
  %2790 = extractelement <2 x i32> %2786, i32 1
  store i32 %2790, i32* %2705, align 1
  %2791 = load <2 x float>, <2 x float>* %2706, align 1
  %2792 = load <2 x i32>, <2 x i32>* %2708, align 1
  %2793 = load <2 x float>, <2 x float>* %2710, align 1
  %2794 = extractelement <2 x float> %2791, i32 0
  %2795 = extractelement <2 x float> %2793, i32 0
  %2796 = fmul float %2794, %2795
  store float %2796, float* %2658, align 1
  %2797 = bitcast <2 x float> %2791 to <2 x i32>
  %2798 = extractelement <2 x i32> %2797, i32 1
  store i32 %2798, i32* %2717, align 1
  %2799 = extractelement <2 x i32> %2792, i32 0
  store i32 %2799, i32* %2719, align 1
  %2800 = extractelement <2 x i32> %2792, i32 1
  store i32 %2800, i32* %2721, align 1
  store i64 %2757, i64* %RAX.i1238, align 8
  %2801 = add i64 %2757, 4
  %2802 = add i64 %2756, 44
  store i64 %2802, i64* %3, align 8
  %2803 = load <2 x float>, <2 x float>* %2706, align 1
  %2804 = load <2 x i32>, <2 x i32>* %2708, align 1
  %2805 = inttoptr i64 %2801 to float*
  %2806 = load float, float* %2805, align 4
  %2807 = extractelement <2 x float> %2803, i32 0
  %2808 = fadd float %2807, %2806
  store float %2808, float* %2658, align 1
  %2809 = bitcast <2 x float> %2803 to <2 x i32>
  %2810 = extractelement <2 x i32> %2809, i32 1
  store i32 %2810, i32* %2717, align 1
  %2811 = extractelement <2 x i32> %2804, i32 0
  store i32 %2811, i32* %2719, align 1
  %2812 = extractelement <2 x i32> %2804, i32 1
  store i32 %2812, i32* %2721, align 1
  %2813 = bitcast <2 x float> %2793 to <2 x i32>
  %2814 = load <2 x i32>, <2 x i32>* %2694, align 1
  %2815 = sitofp i32 %2762 to float
  store float %2815, float* %2697, align 1
  %2816 = extractelement <2 x i32> %2813, i32 1
  store i32 %2816, i32* %2700, align 1
  %2817 = extractelement <2 x i32> %2814, i32 0
  store i32 %2817, i32* %2702, align 1
  %2818 = extractelement <2 x i32> %2814, i32 1
  store i32 %2818, i32* %2705, align 1
  %2819 = load <2 x float>, <2 x float>* %2706, align 1
  %2820 = load <2 x i32>, <2 x i32>* %2708, align 1
  %2821 = load <2 x float>, <2 x float>* %2710, align 1
  %2822 = extractelement <2 x float> %2819, i32 0
  %2823 = extractelement <2 x float> %2821, i32 0
  %2824 = fdiv float %2822, %2823
  store float %2824, float* %2658, align 1
  %2825 = bitcast <2 x float> %2819 to <2 x i32>
  %2826 = extractelement <2 x i32> %2825, i32 1
  store i32 %2826, i32* %2717, align 1
  %2827 = extractelement <2 x i32> %2820, i32 0
  store i32 %2827, i32* %2719, align 1
  %2828 = extractelement <2 x i32> %2820, i32 1
  store i32 %2828, i32* %2721, align 1
  %2829 = load i64, i64* bitcast (%G_0x6cb910_type* @G_0x6cb910 to i64*), align 8
  %2830 = add i64 %2829, 40
  %2831 = add i64 %2756, 70
  store i64 %2831, i64* %3, align 8
  %2832 = load <2 x float>, <2 x float>* %2706, align 1
  %2833 = extractelement <2 x float> %2832, i32 0
  %2834 = inttoptr i64 %2830 to float*
  store float %2833, float* %2834, align 4
  %2835 = load i64, i64* %3, align 8
  %2836 = load i64, i64* bitcast (%G_0x6cb910_type* @G_0x6cb910 to i64*), align 8
  store i64 %2836, i64* %RAX.i1238, align 8
  %2837 = add i64 %2836, 52
  %2838 = add i64 %2835, 13
  store i64 %2838, i64* %3, align 8
  %2839 = inttoptr i64 %2837 to i32*
  %2840 = load i32, i32* %2839, align 4
  store i32 %2840, i32* %2659, align 1
  store float 0.000000e+00, float* %2661, align 1
  store float 0.000000e+00, float* %2663, align 1
  store float 0.000000e+00, float* %2665, align 1
  %2841 = load i32, i32* bitcast (%G_0x722ca8_type* @G_0x722ca8 to i32*), align 8
  %2842 = add i32 %2841, -1
  %2843 = zext i32 %2842 to i64
  store i64 %2843, i64* %RCX.i1236, align 8
  %2844 = icmp eq i32 %2841, 0
  %2845 = zext i1 %2844 to i8
  store i8 %2845, i8* %14, align 1
  %2846 = and i32 %2842, 255
  %2847 = tail call i32 @llvm.ctpop.i32(i32 %2846)
  %2848 = trunc i32 %2847 to i8
  %2849 = and i8 %2848, 1
  %2850 = xor i8 %2849, 1
  store i8 %2850, i8* %21, align 1
  %2851 = xor i32 %2842, %2841
  %2852 = lshr i32 %2851, 4
  %2853 = trunc i32 %2852 to i8
  %2854 = and i8 %2853, 1
  store i8 %2854, i8* %27, align 1
  %2855 = icmp eq i32 %2842, 0
  %2856 = zext i1 %2855 to i8
  store i8 %2856, i8* %30, align 1
  %2857 = lshr i32 %2842, 31
  %2858 = trunc i32 %2857 to i8
  store i8 %2858, i8* %33, align 1
  %2859 = lshr i32 %2841, 31
  %2860 = xor i32 %2857, %2859
  %2861 = add nuw nsw i32 %2860, %2859
  %2862 = icmp eq i32 %2861, 2
  %2863 = zext i1 %2862 to i8
  store i8 %2863, i8* %39, align 1
  %2864 = load <2 x i32>, <2 x i32>* %2691, align 1
  %2865 = load <2 x i32>, <2 x i32>* %2694, align 1
  %2866 = sitofp i32 %2842 to float
  store float %2866, float* %2697, align 1
  %2867 = extractelement <2 x i32> %2864, i32 1
  store i32 %2867, i32* %2700, align 1
  %2868 = extractelement <2 x i32> %2865, i32 0
  store i32 %2868, i32* %2702, align 1
  %2869 = extractelement <2 x i32> %2865, i32 1
  store i32 %2869, i32* %2705, align 1
  %2870 = load <2 x float>, <2 x float>* %2706, align 1
  %2871 = load <2 x i32>, <2 x i32>* %2708, align 1
  %2872 = load <2 x float>, <2 x float>* %2710, align 1
  %2873 = extractelement <2 x float> %2870, i32 0
  %2874 = extractelement <2 x float> %2872, i32 0
  %2875 = fmul float %2873, %2874
  store float %2875, float* %2658, align 1
  %2876 = bitcast <2 x float> %2870 to <2 x i32>
  %2877 = extractelement <2 x i32> %2876, i32 1
  store i32 %2877, i32* %2717, align 1
  %2878 = extractelement <2 x i32> %2871, i32 0
  store i32 %2878, i32* %2719, align 1
  %2879 = extractelement <2 x i32> %2871, i32 1
  store i32 %2879, i32* %2721, align 1
  store i64 %2836, i64* %RAX.i1238, align 8
  %2880 = add i64 %2836, 8
  %2881 = add i64 %2835, 44
  store i64 %2881, i64* %3, align 8
  %2882 = load <2 x float>, <2 x float>* %2706, align 1
  %2883 = load <2 x i32>, <2 x i32>* %2708, align 1
  %2884 = inttoptr i64 %2880 to float*
  %2885 = load float, float* %2884, align 4
  %2886 = extractelement <2 x float> %2882, i32 0
  %2887 = fadd float %2886, %2885
  store float %2887, float* %2658, align 1
  %2888 = bitcast <2 x float> %2882 to <2 x i32>
  %2889 = extractelement <2 x i32> %2888, i32 1
  store i32 %2889, i32* %2717, align 1
  %2890 = extractelement <2 x i32> %2883, i32 0
  store i32 %2890, i32* %2719, align 1
  %2891 = extractelement <2 x i32> %2883, i32 1
  store i32 %2891, i32* %2721, align 1
  %2892 = bitcast <2 x float> %2872 to <2 x i32>
  %2893 = load <2 x i32>, <2 x i32>* %2694, align 1
  %2894 = sitofp i32 %2841 to float
  store float %2894, float* %2697, align 1
  %2895 = extractelement <2 x i32> %2892, i32 1
  store i32 %2895, i32* %2700, align 1
  %2896 = extractelement <2 x i32> %2893, i32 0
  store i32 %2896, i32* %2702, align 1
  %2897 = extractelement <2 x i32> %2893, i32 1
  store i32 %2897, i32* %2705, align 1
  %2898 = load <2 x float>, <2 x float>* %2706, align 1
  %2899 = load <2 x i32>, <2 x i32>* %2708, align 1
  %2900 = load <2 x float>, <2 x float>* %2710, align 1
  %2901 = extractelement <2 x float> %2898, i32 0
  %2902 = extractelement <2 x float> %2900, i32 0
  %2903 = fdiv float %2901, %2902
  store float %2903, float* %2658, align 1
  %2904 = bitcast <2 x float> %2898 to <2 x i32>
  %2905 = extractelement <2 x i32> %2904, i32 1
  store i32 %2905, i32* %2717, align 1
  %2906 = extractelement <2 x i32> %2899, i32 0
  store i32 %2906, i32* %2719, align 1
  %2907 = extractelement <2 x i32> %2899, i32 1
  store i32 %2907, i32* %2721, align 1
  %2908 = load i64, i64* bitcast (%G_0x6cb910_type* @G_0x6cb910 to i64*), align 8
  store i64 %2908, i64* %RAX.i1238, align 8
  %2909 = add i64 %2908, 52
  %2910 = add i64 %2835, 70
  store i64 %2910, i64* %3, align 8
  %2911 = load <2 x float>, <2 x float>* %2706, align 1
  %2912 = extractelement <2 x float> %2911, i32 0
  %2913 = inttoptr i64 %2909 to float*
  store float %2912, float* %2913, align 4
  %2914 = load i64, i64* %3, align 8
  %2915 = add i64 %2914, 214
  store i64 %2915, i64* %3, align 8
  br label %block_.L_42bda3

block_.L_42bcd2:                                  ; preds = %block_.L_42bbea
  %2916 = add i64 %2651, 24
  %2917 = add i64 %2649, 13
  store i64 %2917, i64* %3, align 8
  %2918 = inttoptr i64 %2916 to i32*
  %2919 = load i32, i32* %2918, align 4
  %2920 = bitcast [32 x %union.VectorReg]* %2652 to float*
  %2921 = bitcast [32 x %union.VectorReg]* %2652 to i32*
  store i32 %2919, i32* %2921, align 1
  %2922 = getelementptr inbounds i8, i8* %2653, i64 4
  %2923 = bitcast i8* %2922 to float*
  store float 0.000000e+00, float* %2923, align 1
  %2924 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 1
  %2925 = bitcast i64* %2924 to float*
  store float 0.000000e+00, float* %2925, align 1
  %2926 = getelementptr inbounds i8, i8* %2653, i64 12
  %2927 = bitcast i8* %2926 to float*
  store float 0.000000e+00, float* %2927, align 1
  %2928 = load i32, i32* bitcast (%G_0x6cee50_type* @G_0x6cee50 to i32*), align 8
  %2929 = add i32 %2928, -1
  %2930 = zext i32 %2929 to i64
  store i64 %2930, i64* %RCX.i1236, align 8
  %2931 = icmp eq i32 %2928, 0
  %2932 = zext i1 %2931 to i8
  store i8 %2932, i8* %14, align 1
  %2933 = and i32 %2929, 255
  %2934 = tail call i32 @llvm.ctpop.i32(i32 %2933)
  %2935 = trunc i32 %2934 to i8
  %2936 = and i8 %2935, 1
  %2937 = xor i8 %2936, 1
  store i8 %2937, i8* %21, align 1
  %2938 = xor i32 %2929, %2928
  %2939 = lshr i32 %2938, 4
  %2940 = trunc i32 %2939 to i8
  %2941 = and i8 %2940, 1
  store i8 %2941, i8* %27, align 1
  %2942 = icmp eq i32 %2929, 0
  %2943 = zext i1 %2942 to i8
  store i8 %2943, i8* %30, align 1
  %2944 = lshr i32 %2929, 31
  %2945 = trunc i32 %2944 to i8
  store i8 %2945, i8* %33, align 1
  %2946 = lshr i32 %2928, 31
  %2947 = xor i32 %2944, %2946
  %2948 = add nuw nsw i32 %2947, %2946
  %2949 = icmp eq i32 %2948, 2
  %2950 = zext i1 %2949 to i8
  store i8 %2950, i8* %39, align 1
  %2951 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1
  %2952 = bitcast %union.VectorReg* %2951 to i8*
  %2953 = bitcast %union.VectorReg* %2951 to <2 x i32>*
  %2954 = load <2 x i32>, <2 x i32>* %2953, align 1
  %2955 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1, i32 0, i32 0, i32 0, i64 1
  %2956 = bitcast i64* %2955 to <2 x i32>*
  %2957 = load <2 x i32>, <2 x i32>* %2956, align 1
  %2958 = sitofp i32 %2929 to float
  %2959 = bitcast %union.VectorReg* %2951 to float*
  store float %2958, float* %2959, align 1
  %2960 = extractelement <2 x i32> %2954, i32 1
  %2961 = getelementptr inbounds i8, i8* %2952, i64 4
  %2962 = bitcast i8* %2961 to i32*
  store i32 %2960, i32* %2962, align 1
  %2963 = extractelement <2 x i32> %2957, i32 0
  %2964 = bitcast i64* %2955 to i32*
  store i32 %2963, i32* %2964, align 1
  %2965 = extractelement <2 x i32> %2957, i32 1
  %2966 = getelementptr inbounds i8, i8* %2952, i64 12
  %2967 = bitcast i8* %2966 to i32*
  store i32 %2965, i32* %2967, align 1
  %2968 = bitcast [32 x %union.VectorReg]* %2652 to <2 x float>*
  %2969 = load <2 x float>, <2 x float>* %2968, align 1
  %2970 = bitcast i64* %2924 to <2 x i32>*
  %2971 = load <2 x i32>, <2 x i32>* %2970, align 1
  %2972 = bitcast %union.VectorReg* %2951 to <2 x float>*
  %2973 = load <2 x float>, <2 x float>* %2972, align 1
  %2974 = extractelement <2 x float> %2969, i32 0
  %2975 = extractelement <2 x float> %2973, i32 0
  %2976 = fmul float %2974, %2975
  store float %2976, float* %2920, align 1
  %2977 = bitcast <2 x float> %2969 to <2 x i32>
  %2978 = extractelement <2 x i32> %2977, i32 1
  %2979 = bitcast i8* %2922 to i32*
  store i32 %2978, i32* %2979, align 1
  %2980 = extractelement <2 x i32> %2971, i32 0
  %2981 = bitcast i64* %2924 to i32*
  store i32 %2980, i32* %2981, align 1
  %2982 = extractelement <2 x i32> %2971, i32 1
  %2983 = bitcast i8* %2926 to i32*
  store i32 %2982, i32* %2983, align 1
  %2984 = load i64, i64* bitcast (%G_0x6cb910_type* @G_0x6cb910 to i64*), align 8
  store i64 %2984, i64* %RAX.i1238, align 8
  %2985 = add i64 %2649, 43
  store i64 %2985, i64* %3, align 8
  %2986 = load <2 x float>, <2 x float>* %2968, align 1
  %2987 = load <2 x i32>, <2 x i32>* %2970, align 1
  %2988 = inttoptr i64 %2984 to float*
  %2989 = load float, float* %2988, align 4
  %2990 = extractelement <2 x float> %2986, i32 0
  %2991 = fadd float %2990, %2989
  store float %2991, float* %2920, align 1
  %2992 = bitcast <2 x float> %2986 to <2 x i32>
  %2993 = extractelement <2 x i32> %2992, i32 1
  store i32 %2993, i32* %2979, align 1
  %2994 = extractelement <2 x i32> %2987, i32 0
  store i32 %2994, i32* %2981, align 1
  %2995 = extractelement <2 x i32> %2987, i32 1
  store i32 %2995, i32* %2983, align 1
  %2996 = bitcast <2 x float> %2973 to <2 x i32>
  %2997 = load <2 x i32>, <2 x i32>* %2956, align 1
  %2998 = load i32, i32* bitcast (%G_0x6cee50_type* @G_0x6cee50 to i32*), align 8
  %2999 = sitofp i32 %2998 to float
  store float %2999, float* %2959, align 1
  %3000 = extractelement <2 x i32> %2996, i32 1
  store i32 %3000, i32* %2962, align 1
  %3001 = extractelement <2 x i32> %2997, i32 0
  store i32 %3001, i32* %2964, align 1
  %3002 = extractelement <2 x i32> %2997, i32 1
  store i32 %3002, i32* %2967, align 1
  %3003 = load <2 x float>, <2 x float>* %2968, align 1
  %3004 = load <2 x i32>, <2 x i32>* %2970, align 1
  %3005 = load <2 x float>, <2 x float>* %2972, align 1
  %3006 = extractelement <2 x float> %3003, i32 0
  %3007 = extractelement <2 x float> %3005, i32 0
  %3008 = fdiv float %3006, %3007
  store float %3008, float* %2920, align 1
  %3009 = bitcast <2 x float> %3003 to <2 x i32>
  %3010 = extractelement <2 x i32> %3009, i32 1
  store i32 %3010, i32* %2979, align 1
  %3011 = extractelement <2 x i32> %3004, i32 0
  store i32 %3011, i32* %2981, align 1
  %3012 = extractelement <2 x i32> %3004, i32 1
  store i32 %3012, i32* %2983, align 1
  %3013 = add i64 %2984, 24
  %3014 = add i64 %2649, 69
  store i64 %3014, i64* %3, align 8
  %3015 = load <2 x float>, <2 x float>* %2968, align 1
  %3016 = extractelement <2 x float> %3015, i32 0
  %3017 = inttoptr i64 %3013 to float*
  store float %3016, float* %3017, align 4
  %3018 = load i64, i64* %3, align 8
  %3019 = load i64, i64* bitcast (%G_0x6cb910_type* @G_0x6cb910 to i64*), align 8
  store i64 %3019, i64* %RAX.i1238, align 8
  %3020 = add i64 %3019, 36
  %3021 = add i64 %3018, 13
  store i64 %3021, i64* %3, align 8
  %3022 = inttoptr i64 %3020 to i32*
  %3023 = load i32, i32* %3022, align 4
  store i32 %3023, i32* %2921, align 1
  store float 0.000000e+00, float* %2923, align 1
  store float 0.000000e+00, float* %2925, align 1
  store float 0.000000e+00, float* %2927, align 1
  %3024 = load i32, i32* bitcast (%G_0x6cee50_type* @G_0x6cee50 to i32*), align 8
  %3025 = add i32 %3024, -1
  %3026 = zext i32 %3025 to i64
  store i64 %3026, i64* %RCX.i1236, align 8
  %3027 = icmp eq i32 %3024, 0
  %3028 = zext i1 %3027 to i8
  store i8 %3028, i8* %14, align 1
  %3029 = and i32 %3025, 255
  %3030 = tail call i32 @llvm.ctpop.i32(i32 %3029)
  %3031 = trunc i32 %3030 to i8
  %3032 = and i8 %3031, 1
  %3033 = xor i8 %3032, 1
  store i8 %3033, i8* %21, align 1
  %3034 = xor i32 %3025, %3024
  %3035 = lshr i32 %3034, 4
  %3036 = trunc i32 %3035 to i8
  %3037 = and i8 %3036, 1
  store i8 %3037, i8* %27, align 1
  %3038 = icmp eq i32 %3025, 0
  %3039 = zext i1 %3038 to i8
  store i8 %3039, i8* %30, align 1
  %3040 = lshr i32 %3025, 31
  %3041 = trunc i32 %3040 to i8
  store i8 %3041, i8* %33, align 1
  %3042 = lshr i32 %3024, 31
  %3043 = xor i32 %3040, %3042
  %3044 = add nuw nsw i32 %3043, %3042
  %3045 = icmp eq i32 %3044, 2
  %3046 = zext i1 %3045 to i8
  store i8 %3046, i8* %39, align 1
  %3047 = load <2 x i32>, <2 x i32>* %2953, align 1
  %3048 = load <2 x i32>, <2 x i32>* %2956, align 1
  %3049 = sitofp i32 %3025 to float
  store float %3049, float* %2959, align 1
  %3050 = extractelement <2 x i32> %3047, i32 1
  store i32 %3050, i32* %2962, align 1
  %3051 = extractelement <2 x i32> %3048, i32 0
  store i32 %3051, i32* %2964, align 1
  %3052 = extractelement <2 x i32> %3048, i32 1
  store i32 %3052, i32* %2967, align 1
  %3053 = load <2 x float>, <2 x float>* %2968, align 1
  %3054 = load <2 x i32>, <2 x i32>* %2970, align 1
  %3055 = load <2 x float>, <2 x float>* %2972, align 1
  %3056 = extractelement <2 x float> %3053, i32 0
  %3057 = extractelement <2 x float> %3055, i32 0
  %3058 = fmul float %3056, %3057
  store float %3058, float* %2920, align 1
  %3059 = bitcast <2 x float> %3053 to <2 x i32>
  %3060 = extractelement <2 x i32> %3059, i32 1
  store i32 %3060, i32* %2979, align 1
  %3061 = extractelement <2 x i32> %3054, i32 0
  store i32 %3061, i32* %2981, align 1
  %3062 = extractelement <2 x i32> %3054, i32 1
  store i32 %3062, i32* %2983, align 1
  store i64 %3019, i64* %RAX.i1238, align 8
  %3063 = add i64 %3019, 4
  %3064 = add i64 %3018, 44
  store i64 %3064, i64* %3, align 8
  %3065 = load <2 x float>, <2 x float>* %2968, align 1
  %3066 = load <2 x i32>, <2 x i32>* %2970, align 1
  %3067 = inttoptr i64 %3063 to float*
  %3068 = load float, float* %3067, align 4
  %3069 = extractelement <2 x float> %3065, i32 0
  %3070 = fadd float %3069, %3068
  store float %3070, float* %2920, align 1
  %3071 = bitcast <2 x float> %3065 to <2 x i32>
  %3072 = extractelement <2 x i32> %3071, i32 1
  store i32 %3072, i32* %2979, align 1
  %3073 = extractelement <2 x i32> %3066, i32 0
  store i32 %3073, i32* %2981, align 1
  %3074 = extractelement <2 x i32> %3066, i32 1
  store i32 %3074, i32* %2983, align 1
  %3075 = bitcast <2 x float> %3055 to <2 x i32>
  %3076 = load <2 x i32>, <2 x i32>* %2956, align 1
  %3077 = sitofp i32 %3024 to float
  store float %3077, float* %2959, align 1
  %3078 = extractelement <2 x i32> %3075, i32 1
  store i32 %3078, i32* %2962, align 1
  %3079 = extractelement <2 x i32> %3076, i32 0
  store i32 %3079, i32* %2964, align 1
  %3080 = extractelement <2 x i32> %3076, i32 1
  store i32 %3080, i32* %2967, align 1
  %3081 = load <2 x float>, <2 x float>* %2968, align 1
  %3082 = load <2 x i32>, <2 x i32>* %2970, align 1
  %3083 = load <2 x float>, <2 x float>* %2972, align 1
  %3084 = extractelement <2 x float> %3081, i32 0
  %3085 = extractelement <2 x float> %3083, i32 0
  %3086 = fdiv float %3084, %3085
  store float %3086, float* %2920, align 1
  %3087 = bitcast <2 x float> %3081 to <2 x i32>
  %3088 = extractelement <2 x i32> %3087, i32 1
  store i32 %3088, i32* %2979, align 1
  %3089 = extractelement <2 x i32> %3082, i32 0
  store i32 %3089, i32* %2981, align 1
  %3090 = extractelement <2 x i32> %3082, i32 1
  store i32 %3090, i32* %2983, align 1
  %3091 = load i64, i64* bitcast (%G_0x6cb910_type* @G_0x6cb910 to i64*), align 8
  %3092 = add i64 %3091, 36
  %3093 = add i64 %3018, 70
  store i64 %3093, i64* %3, align 8
  %3094 = load <2 x float>, <2 x float>* %2968, align 1
  %3095 = extractelement <2 x float> %3094, i32 0
  %3096 = inttoptr i64 %3092 to float*
  store float %3095, float* %3096, align 4
  %3097 = load i64, i64* %3, align 8
  %3098 = load i64, i64* bitcast (%G_0x6cb910_type* @G_0x6cb910 to i64*), align 8
  store i64 %3098, i64* %RAX.i1238, align 8
  %3099 = add i64 %3098, 48
  %3100 = add i64 %3097, 13
  store i64 %3100, i64* %3, align 8
  %3101 = inttoptr i64 %3099 to i32*
  %3102 = load i32, i32* %3101, align 4
  store i32 %3102, i32* %2921, align 1
  store float 0.000000e+00, float* %2923, align 1
  store float 0.000000e+00, float* %2925, align 1
  store float 0.000000e+00, float* %2927, align 1
  %3103 = load i32, i32* bitcast (%G_0x6cee50_type* @G_0x6cee50 to i32*), align 8
  %3104 = add i32 %3103, -1
  %3105 = zext i32 %3104 to i64
  store i64 %3105, i64* %RCX.i1236, align 8
  %3106 = icmp eq i32 %3103, 0
  %3107 = zext i1 %3106 to i8
  store i8 %3107, i8* %14, align 1
  %3108 = and i32 %3104, 255
  %3109 = tail call i32 @llvm.ctpop.i32(i32 %3108)
  %3110 = trunc i32 %3109 to i8
  %3111 = and i8 %3110, 1
  %3112 = xor i8 %3111, 1
  store i8 %3112, i8* %21, align 1
  %3113 = xor i32 %3104, %3103
  %3114 = lshr i32 %3113, 4
  %3115 = trunc i32 %3114 to i8
  %3116 = and i8 %3115, 1
  store i8 %3116, i8* %27, align 1
  %3117 = icmp eq i32 %3104, 0
  %3118 = zext i1 %3117 to i8
  store i8 %3118, i8* %30, align 1
  %3119 = lshr i32 %3104, 31
  %3120 = trunc i32 %3119 to i8
  store i8 %3120, i8* %33, align 1
  %3121 = lshr i32 %3103, 31
  %3122 = xor i32 %3119, %3121
  %3123 = add nuw nsw i32 %3122, %3121
  %3124 = icmp eq i32 %3123, 2
  %3125 = zext i1 %3124 to i8
  store i8 %3125, i8* %39, align 1
  %3126 = load <2 x i32>, <2 x i32>* %2953, align 1
  %3127 = load <2 x i32>, <2 x i32>* %2956, align 1
  %3128 = sitofp i32 %3104 to float
  store float %3128, float* %2959, align 1
  %3129 = extractelement <2 x i32> %3126, i32 1
  store i32 %3129, i32* %2962, align 1
  %3130 = extractelement <2 x i32> %3127, i32 0
  store i32 %3130, i32* %2964, align 1
  %3131 = extractelement <2 x i32> %3127, i32 1
  store i32 %3131, i32* %2967, align 1
  %3132 = load <2 x float>, <2 x float>* %2968, align 1
  %3133 = load <2 x i32>, <2 x i32>* %2970, align 1
  %3134 = load <2 x float>, <2 x float>* %2972, align 1
  %3135 = extractelement <2 x float> %3132, i32 0
  %3136 = extractelement <2 x float> %3134, i32 0
  %3137 = fmul float %3135, %3136
  store float %3137, float* %2920, align 1
  %3138 = bitcast <2 x float> %3132 to <2 x i32>
  %3139 = extractelement <2 x i32> %3138, i32 1
  store i32 %3139, i32* %2979, align 1
  %3140 = extractelement <2 x i32> %3133, i32 0
  store i32 %3140, i32* %2981, align 1
  %3141 = extractelement <2 x i32> %3133, i32 1
  store i32 %3141, i32* %2983, align 1
  store i64 %3098, i64* %RAX.i1238, align 8
  %3142 = add i64 %3098, 8
  %3143 = add i64 %3097, 44
  store i64 %3143, i64* %3, align 8
  %3144 = load <2 x float>, <2 x float>* %2968, align 1
  %3145 = load <2 x i32>, <2 x i32>* %2970, align 1
  %3146 = inttoptr i64 %3142 to float*
  %3147 = load float, float* %3146, align 4
  %3148 = extractelement <2 x float> %3144, i32 0
  %3149 = fadd float %3148, %3147
  store float %3149, float* %2920, align 1
  %3150 = bitcast <2 x float> %3144 to <2 x i32>
  %3151 = extractelement <2 x i32> %3150, i32 1
  store i32 %3151, i32* %2979, align 1
  %3152 = extractelement <2 x i32> %3145, i32 0
  store i32 %3152, i32* %2981, align 1
  %3153 = extractelement <2 x i32> %3145, i32 1
  store i32 %3153, i32* %2983, align 1
  %3154 = bitcast <2 x float> %3134 to <2 x i32>
  %3155 = load <2 x i32>, <2 x i32>* %2956, align 1
  %3156 = sitofp i32 %3103 to float
  store float %3156, float* %2959, align 1
  %3157 = extractelement <2 x i32> %3154, i32 1
  store i32 %3157, i32* %2962, align 1
  %3158 = extractelement <2 x i32> %3155, i32 0
  store i32 %3158, i32* %2964, align 1
  %3159 = extractelement <2 x i32> %3155, i32 1
  store i32 %3159, i32* %2967, align 1
  %3160 = load <2 x float>, <2 x float>* %2968, align 1
  %3161 = load <2 x i32>, <2 x i32>* %2970, align 1
  %3162 = load <2 x float>, <2 x float>* %2972, align 1
  %3163 = extractelement <2 x float> %3160, i32 0
  %3164 = extractelement <2 x float> %3162, i32 0
  %3165 = fdiv float %3163, %3164
  store float %3165, float* %2920, align 1
  %3166 = bitcast <2 x float> %3160 to <2 x i32>
  %3167 = extractelement <2 x i32> %3166, i32 1
  store i32 %3167, i32* %2979, align 1
  %3168 = extractelement <2 x i32> %3161, i32 0
  store i32 %3168, i32* %2981, align 1
  %3169 = extractelement <2 x i32> %3161, i32 1
  store i32 %3169, i32* %2983, align 1
  %3170 = load i64, i64* bitcast (%G_0x6cb910_type* @G_0x6cb910 to i64*), align 8
  store i64 %3170, i64* %RAX.i1238, align 8
  %3171 = add i64 %3170, 48
  %3172 = add i64 %3097, 70
  store i64 %3172, i64* %3, align 8
  %3173 = load <2 x float>, <2 x float>* %2968, align 1
  %3174 = extractelement <2 x float> %3173, i32 0
  %3175 = inttoptr i64 %3171 to float*
  store float %3174, float* %3175, align 4
  %.pre54 = load i64, i64* %3, align 8
  br label %block_.L_42bda3

block_.L_42bda3:                                  ; preds = %block_.L_42bcd2, %block_42bbfc
  %3176 = phi i64 [ %.pre54, %block_.L_42bcd2 ], [ %2915, %block_42bbfc ]
  %3177 = add i64 %3176, 5
  store i64 %3177, i64* %3, align 8
  br label %block_.L_42bda8

block_.L_42bda8:                                  ; preds = %block_.L_42bda3, %block_42bb14
  %storemerge24 = phi i64 [ %2625, %block_42bb14 ], [ %3177, %block_.L_42bda3 ]
  %3178 = load i64, i64* %6, align 8
  %3179 = add i64 %3178, 48
  store i64 %3179, i64* %6, align 8
  %3180 = icmp ugt i64 %3178, -49
  %3181 = zext i1 %3180 to i8
  store i8 %3181, i8* %14, align 1
  %3182 = trunc i64 %3179 to i32
  %3183 = and i32 %3182, 255
  %3184 = tail call i32 @llvm.ctpop.i32(i32 %3183)
  %3185 = trunc i32 %3184 to i8
  %3186 = and i8 %3185, 1
  %3187 = xor i8 %3186, 1
  store i8 %3187, i8* %21, align 1
  %3188 = xor i64 %3178, 16
  %3189 = xor i64 %3188, %3179
  %3190 = lshr i64 %3189, 4
  %3191 = trunc i64 %3190 to i8
  %3192 = and i8 %3191, 1
  store i8 %3192, i8* %27, align 1
  %3193 = icmp eq i64 %3179, 0
  %3194 = zext i1 %3193 to i8
  store i8 %3194, i8* %30, align 1
  %3195 = lshr i64 %3179, 63
  %3196 = trunc i64 %3195 to i8
  store i8 %3196, i8* %33, align 1
  %3197 = lshr i64 %3178, 63
  %3198 = xor i64 %3195, %3197
  %3199 = add nuw nsw i64 %3198, %3195
  %3200 = icmp eq i64 %3199, 2
  %3201 = zext i1 %3200 to i8
  store i8 %3201, i8* %39, align 1
  %3202 = add i64 %storemerge24, 5
  store i64 %3202, i64* %3, align 8
  %3203 = add i64 %3178, 56
  %3204 = inttoptr i64 %3179 to i64*
  %3205 = load i64, i64* %3204, align 8
  store i64 %3205, i64* %RBP.i, align 8
  store i64 %3203, i64* %6, align 8
  %3206 = add i64 %storemerge24, 6
  store i64 %3206, i64* %3, align 8
  %3207 = inttoptr i64 %3203 to i64*
  %3208 = load i64, i64* %3207, align 8
  store i64 %3208, i64* %3, align 8
  %3209 = add i64 %3178, 64
  store i64 %3209, i64* %6, align 8
  ret %struct.Memory* %MEMORY.16
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
define %struct.Memory* @routine_movq__0x0__MINUS0x10__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -16
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 8
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  store i64 0, i64* %7, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__0x0__MINUS0x18__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -24
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 8
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  store i64 0, i64* %7, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__0x0__MINUS0x20__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -32
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 8
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  store i64 0, i64* %7, align 8
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

; Function Attrs: nounwind
define %struct.Memory* @routine_imull_0x11bec__rax____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = load i64, i64* %RAX, align 8
  %5 = add i64 %4, 72684
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
  store i64 %15, i64* %RCX, align 8
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

; Function Attrs: nounwind
define %struct.Memory* @routine_imull_0x11bf0__rax____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = load i64, i64* %RAX, align 8
  %5 = add i64 %4, 72688
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
  store i64 %15, i64* %RCX, align 8
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
define %struct.Memory* @routine_movl__ecx__MINUS0x30__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %ECX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -48
  %6 = load i32, i32* %ECX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_0x44__rax____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = add i64 %3, 68
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
define %struct.Memory* @routine_imull_0x40__rax____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = load i64, i64* %RAX, align 8
  %5 = add i64 %4, 64
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 4
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %5 to i32*
  %9 = load i32, i32* %8, align 4
  %10 = shl i64 %3, 32
  %11 = ashr exact i64 %10, 32
  %12 = sext i32 %9 to i64
  %13 = mul nsw i64 %12, %11
  %14 = trunc i64 %13 to i32
  %15 = and i64 %13, 4294967295
  store i64 %15, i64* %RCX, align 8
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
define %struct.Memory* @routine_movl__ecx__MINUS0x24__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %ECX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -36
  %6 = load i32, i32* %ECX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_0xce8__rax____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = add i64 %3, 3304
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
define %struct.Memory* @routine_imull_0xcec__rax____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = load i64, i64* %RAX, align 8
  %5 = add i64 %4, 3308
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
  store i64 %15, i64* %RCX, align 8
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
define %struct.Memory* @routine_movl__ecx__MINUS0x28__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %ECX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -40
  %6 = load i32, i32* %ECX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__0x0__0x11878__rax_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = add i64 %3, 71800
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
define %struct.Memory* @routine_je_.L_42b548(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl__0x0__MINUS0x4__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -4
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  store i32 0, i32* %7, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x4__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -4
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
define %struct.Memory* @routine_movq_0x6cb8f8___rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 8
  store i64 %4, i64* %PC, align 8
  %5 = load i64, i64* bitcast (%G_0x6cb8f8_type* @G_0x6cb8f8 to i64*), align 8
  store i64 %5, i64* %RCX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl_0x40__rcx____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %4 = load i32, i32* %EAX, align 4
  %5 = load i64, i64* %RCX, align 8
  %6 = add i64 %5, 64
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
define %struct.Memory* @routine_jge_.L_42b40e(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl__0x0__MINUS0x8__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -8
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  store i32 0, i32* %7, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x8__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -8
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
define %struct.Memory* @routine_cmpl_0x44__rcx____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %4 = load i32, i32* %EAX, align 4
  %5 = load i64, i64* %RCX, align 8
  %6 = add i64 %5, 68
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
define %struct.Memory* @routine_jge_.L_42b3fb(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movq_0x11860__rax____rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = add i64 %3, 71776
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_0x726418___rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 8
  store i64 %4, i64* %PC, align 8
  %5 = load i64, i64* bitcast (%G_0x726418_type* @G_0x726418 to i64*), align 8
  store i64 %5, i64* %RCX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movslq_MINUS0x8__rbp____rdx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -8
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
define %struct.Memory* @routine_movslq_MINUS0x4__rbp____rdx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -4
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_0x722c90___rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 8
  store i64 %4, i64* %PC, align 8
  %5 = load i64, i64* bitcast (%G_0x722c90_type* @G_0x722c90 to i64*), align 8
  store i64 %5, i64* %RCX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movzwl___rcx__rdx_2____edi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
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
  store i64 %11, i64* %RDI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_subl__edi___esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0
  %EDI = bitcast %union.anon* %3 to i32*
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %4 = load i64, i64* %RSI, align 8
  %5 = load i32, i32* %EDI, align 4
  %6 = zext i32 %5 to i64
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 2
  store i64 %8, i64* %PC, align 8
  %9 = trunc i64 %4 to i32
  %10 = sub i32 %9, %5
  %11 = zext i32 %10 to i64
  store i64 %11, i64* %RSI, align 8
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
define %struct.Memory* @routine_movslq___rax__rcx_4____rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %RCX, align 8
  %5 = shl i64 %4, 2
  %6 = add i64 %5, %3
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 4
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %6 to i32*
  %10 = load i32, i32* %9, align 4
  %11 = sext i32 %10 to i64
  store i64 %11, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_addq_MINUS0x10__rbp____rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -16
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 4
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %5 to i64*
  %9 = load i64, i64* %8, align 8
  %10 = add i64 %9, %3
  store i64 %10, i64* %RAX, align 8
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__rax__MINUS0x10__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -16
  %5 = load i64, i64* %RAX, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 4
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %4 to i64*
  store i64 %5, i64* %8, align 8
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
define %struct.Memory* @routine_movl__eax__MINUS0x8__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -8
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_42b389(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_42b400(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__eax__MINUS0x4__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -4
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_42b36e(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__0x0__0x11bfc__rax_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = add i64 %3, 72700
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
define %struct.Memory* @routine_je_.L_42b543(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_cmpl_0xcec__rcx____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %4 = load i32, i32* %EAX, align 4
  %5 = load i64, i64* %RCX, align 8
  %6 = add i64 %5, 3308
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
define %struct.Memory* @routine_jge_.L_42b53e(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_cmpl_0xce8__rcx____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %4 = load i32, i32* %EAX, align 4
  %5 = load i64, i64* %RCX, align 8
  %6 = add i64 %5, 3304
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
define %struct.Memory* @routine_jge_.L_42b52b(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movq_0x6f6f90___rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 8
  store i64 %4, i64* %PC, align 8
  %5 = load i64, i64* bitcast (%G_0x6f6f90_type* @G_0x6f6f90 to i64*), align 8
  store i64 %5, i64* %RCX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq___rcx____rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = bitcast i64* %RCX to i64**
  %4 = load i64*, i64** %3, align 8
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 3
  store i64 %6, i64* %PC, align 8
  %7 = load i64, i64* %4, align 8
  store i64 %7, i64* %RCX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_0x6f96f0___rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 8
  store i64 %4, i64* %PC, align 8
  %5 = load i64, i64* bitcast (%G_0x6f96f0_type* @G_0x6f96f0 to i64*), align 8
  store i64 %5, i64* %RCX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_addq_MINUS0x18__rbp____rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -24
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 4
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %5 to i64*
  %9 = load i64, i64* %8, align 8
  %10 = add i64 %9, %3
  store i64 %10, i64* %RAX, align 8
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

; Function Attrs: nounwind
define %struct.Memory* @routine_addq_MINUS0x20__rbp____rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -32
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 4
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %5 to i64*
  %9 = load i64, i64* %8, align 8
  %10 = add i64 %9, %3
  store i64 %10, i64* %RAX, align 8
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__rax__MINUS0x20__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -32
  %5 = load i64, i64* %RAX, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 4
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %4 to i64*
  store i64 %5, i64* %8, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_42b458(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_42b530(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_42b43a(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_42b543(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_42b78b(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_0x710a40___rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 8
  store i64 %4, i64* %PC, align 8
  %5 = load i64, i64* bitcast (%G_0x710a40_type* @G_0x710a40 to i64*), align 8
  store i64 %5, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__rax__0x726418(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 8
  store i64 %5, i64* %PC, align 8
  store i64 %3, i64* bitcast (%G_0x726418_type* @G_0x726418 to i64*), align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_0x6ccf80___rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 8
  store i64 %4, i64* %PC, align 8
  %5 = load i64, i64* bitcast (%G_0x6ccf80_type* @G_0x6ccf80 to i64*), align 8
  store i64 %5, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__rax__0x6f6f90(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 8
  store i64 %5, i64* %PC, align 8
  store i64 %3, i64* bitcast (%G_0x6f6f90_type* @G_0x6f6f90 to i64*), align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__0x2__0xb40__rax_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = add i64 %3, 2880
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
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
define %struct.Memory* @routine_jne_.L_42b58d(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movq_0x710a50___rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 8
  store i64 %4, i64* %PC, align 8
  %5 = load i64, i64* bitcast (%G_0x710a50_type* @G_0x710a50 to i64*), align 8
  store i64 %5, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__rax__0x70fcf0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 8
  store i64 %5, i64* %PC, align 8
  store i64 %3, i64* bitcast (%G_0x70fcf0_type* @G_0x70fcf0 to i64*), align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jge_.L_42b643(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jge_.L_42b630(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movq_0x70fcf0___rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 8
  store i64 %4, i64* %PC, align 8
  %5 = load i64, i64* bitcast (%G_0x70fcf0_type* @G_0x70fcf0 to i64*), align 8
  store i64 %5, i64* %RCX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_0x1918__rcx____rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = add i64 %3, 6424
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RCX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_42b5b7(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_42b635(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_42b59c(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_je_.L_42b786(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jge_.L_42b781(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jge_.L_42b76e(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movq_0x1940__rcx____rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = add i64 %3, 6464
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RCX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_42b68d(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_42b773(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_42b66f(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_42b786(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpq__0x0__MINUS0x10__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -16
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
define %struct.Memory* @routine_jne_.L_42b79e(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movq__0x1__MINUS0x10__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -16
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 8
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  store i64 1, i64* %7, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpq__0x0__MINUS0x18__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -24
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
define %struct.Memory* @routine_jne_.L_42b7b1(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movq__0x1__MINUS0x18__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -24
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 8
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  store i64 1, i64* %7, align 8
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
define %struct.Memory* @routine_jne_.L_42b7c4(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movq__0x1__MINUS0x20__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -32
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 8
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  store i64 1, i64* %7, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_je_.L_42b8c6(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_cvtsi2sdq__rcx___xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %4 = load i64, i64* %RCX, align 8
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 5
  store i64 %6, i64* %PC, align 8
  %7 = sitofp i64 %4 to double
  %8 = bitcast %union.VectorReg* %3 to double*
  store double %7, double* %8, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_cvtsi2sdl_MINUS0x24__rbp____xmm1(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -36
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 5
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %5 to i32*
  %9 = load i32, i32* %8, align 4
  %10 = sitofp i32 %9 to double
  %11 = bitcast %union.VectorReg* %3 to double*
  store double %10, double* %11, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_cvtsi2sdq_MINUS0x10__rbp____xmm2(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 2
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -16
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 6
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %5 to i64*
  %9 = load i64, i64* %8, align 8
  %10 = sitofp i64 %9 to double
  %11 = bitcast %union.VectorReg* %3 to double*
  store double %10, double* %11, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_divsd__xmm2___xmm1(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 2
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = bitcast %union.VectorReg* %3 to double*
  %8 = load double, double* %7, align 1
  %9 = bitcast %union.VectorReg* %4 to double*
  %10 = load double, double* %9, align 1
  %11 = fdiv double %8, %10
  store double %11, double* %7, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_mulsd__xmm1___xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
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
  %11 = fmul double %8, %10
  store double %11, double* %7, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_callq_.log10_plt(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movsd_0x8609f__rip____xmm1(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, ptrtoint (%G_0x8609f__rip__type* @G_0x8609f__rip_ to i64)
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
define %struct.Memory* @routine_mulsd__xmm0___xmm1(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
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
  %11 = fmul double %8, %10
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_0x6cb910___rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 8
  store i64 %4, i64* %PC, align 8
  %5 = load i64, i64* bitcast (%G_0x6cb910_type* @G_0x6cb910 to i64*), align 8
  store i64 %5, i64* %RCX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movss__xmm0____rcx_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %4 = bitcast i64* %RCX to float**
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

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__0x0__0x11bfc__rcx_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
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
define %struct.Memory* @routine_je_.L_42b8a4(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl_MINUS0x30__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -48
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
define %struct.Memory* @routine_cvtsi2sdl_MINUS0x28__rbp____xmm1(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -40
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 5
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %5 to i32*
  %9 = load i32, i32* %8, align 4
  %10 = sitofp i32 %9 to double
  %11 = bitcast %union.VectorReg* %3 to double*
  store double %10, double* %11, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_cvtsi2sdq_MINUS0x18__rbp____xmm2(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 2
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -24
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 6
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %5 to i64*
  %9 = load i64, i64* %8, align 8
  %10 = sitofp i64 %9 to double
  %11 = bitcast %union.VectorReg* %3 to double*
  store double %10, double* %11, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movsd_0x8604c__rip____xmm1(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, ptrtoint (%G_0x8604c__rip__type* @G_0x8604c__rip_ to i64)
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
define %struct.Memory* @routine_cvtsd2ss__xmm0___xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %4 = bitcast %union.VectorReg* %3 to i8*
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = bitcast %union.VectorReg* %3 to <2 x i32>*
  %8 = load <2 x i32>, <2 x i32>* %7, align 1
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 1
  %10 = bitcast i64* %9 to <2 x i32>*
  %11 = load <2 x i32>, <2 x i32>* %10, align 1
  %.cast = bitcast <2 x i32> %8 to double
  %12 = fptrunc double %.cast to float
  %13 = bitcast %union.VectorReg* %3 to float*
  store float %12, float* %13, align 1
  %14 = extractelement <2 x i32> %8, i32 1
  %15 = getelementptr inbounds i8, i8* %4, i64 4
  %16 = bitcast i8* %15 to i32*
  store i32 %14, i32* %16, align 1
  %17 = extractelement <2 x i32> %11, i32 0
  %18 = bitcast i64* %9 to i32*
  store i32 %17, i32* %18, align 1
  %19 = extractelement <2 x i32> %11, i32 1
  %20 = getelementptr inbounds i8, i8* %4, i64 12
  %21 = bitcast i8* %20 to i32*
  store i32 %19, i32* %21, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_0x2a00b5__rip____rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, ptrtoint (%G_0x2a00b5__rip__type* @G_0x2a00b5__rip_ to i64)
  %5 = add i64 %3, 7
  store i64 %5, i64* %PC, align 8
  %6 = inttoptr i64 %4 to i64*
  %7 = load i64, i64* %6, align 8
  store i64 %7, i64* %RCX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movss__xmm0__0x4__rcx_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %4 = load i64, i64* %RCX, align 8
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
define %struct.Memory* @routine_cvtsi2sdq_MINUS0x20__rbp____xmm2(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 2
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -32
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 6
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %5 to i64*
  %9 = load i64, i64* %8, align 8
  %10 = sitofp i64 %9 to double
  %11 = bitcast %union.VectorReg* %3 to double*
  store double %10, double* %11, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movsd_0x8600e__rip____xmm1(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, ptrtoint (%G_0x8600e__rip__type* @G_0x8600e__rip_ to i64)
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
define %struct.Memory* @routine_movss__xmm0__0x8__rcx_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %4 = load i64, i64* %RCX, align 8
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
define %struct.Memory* @routine_jmpq_.L_42b8c1(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
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
define %struct.Memory* @routine_movq_0x6cb910___rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 8
  store i64 %4, i64* %PC, align 8
  %5 = load i64, i64* bitcast (%G_0x6cb910_type* @G_0x6cb910 to i64*), align 8
  store i64 %5, i64* %RAX, align 8
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
define %struct.Memory* @routine_jmpq_.L_42b8c6(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
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
define %struct.Memory* @routine_jne_.L_42b9ef(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movss___rax____xmm1(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1
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
  %13 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1, i32 0, i32 0, i32 0, i64 1
  %14 = bitcast i64* %13 to float*
  store float 0.000000e+00, float* %14, align 1
  %15 = getelementptr inbounds i8, i8* %4, i64 12
  %16 = bitcast i8* %15 to float*
  store float 0.000000e+00, float* %16, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movss__xmm1__0xc__rax_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1
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
define %struct.Memory* @routine_movss_0x4__rax____xmm1(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1
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
  %14 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1, i32 0, i32 0, i32 0, i64 1
  %15 = bitcast i64* %14 to float*
  store float 0.000000e+00, float* %15, align 1
  %16 = getelementptr inbounds i8, i8* %4, i64 12
  %17 = bitcast i8* %16 to float*
  store float 0.000000e+00, float* %17, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movss__xmm1__0x10__rax_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1
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
define %struct.Memory* @routine_movss__xmm1__0x14__rax_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1
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
define %struct.Memory* @routine_movss_0xc__rax____xmm1(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1
  %4 = bitcast %union.VectorReg* %3 to i8*
  %5 = load i64, i64* %RAX, align 8
  %6 = add i64 %5, 12
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
define %struct.Memory* @routine_movss__xmm1__0x3c__rax_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1
  %4 = load i64, i64* %RAX, align 8
  %5 = add i64 %4, 60
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
define %struct.Memory* @routine_movss_0x10__rax____xmm1(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1
  %4 = bitcast %union.VectorReg* %3 to i8*
  %5 = load i64, i64* %RAX, align 8
  %6 = add i64 %5, 16
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
define %struct.Memory* @routine_movss__xmm1__0x40__rax_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1
  %4 = load i64, i64* %RAX, align 8
  %5 = add i64 %4, 64
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
define %struct.Memory* @routine_movss_0x14__rax____xmm1(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1
  %4 = bitcast %union.VectorReg* %3 to i8*
  %5 = load i64, i64* %RAX, align 8
  %6 = add i64 %5, 20
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
define %struct.Memory* @routine_movss__xmm1__0x44__rax_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1
  %4 = load i64, i64* %RAX, align 8
  %5 = add i64 %4, 68
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
define %struct.Memory* @routine_movss__xmm0__0x20__rax_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %4 = load i64, i64* %RAX, align 8
  %5 = add i64 %4, 32
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
define %struct.Memory* @routine_movss__xmm0__0x2c__rax_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %4 = load i64, i64* %RAX, align 8
  %5 = add i64 %4, 44
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
define %struct.Memory* @routine_movss__xmm0__0x38__rax_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %4 = load i64, i64* %RAX, align 8
  %5 = add i64 %4, 56
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
define %struct.Memory* @routine_movss__xmm0__0x24__rax_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %4 = load i64, i64* %RAX, align 8
  %5 = add i64 %4, 36
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
define %struct.Memory* @routine_movss__xmm0__0x30__rax_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %4 = load i64, i64* %RAX, align 8
  %5 = add i64 %4, 48
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
define %struct.Memory* @routine_movss__xmm0__0x1c__rax_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %4 = load i64, i64* %RAX, align 8
  %5 = add i64 %4, 28
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
define %struct.Memory* @routine_movss__xmm0__0x28__rax_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %4 = load i64, i64* %RAX, align 8
  %5 = add i64 %4, 40
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
define %struct.Memory* @routine_movss__xmm0__0x34__rax_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %4 = load i64, i64* %RAX, align 8
  %5 = add i64 %4, 52
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
define %struct.Memory* @routine_jmpq_.L_42bb02(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movss_0x3c__rax____xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %4 = bitcast %union.VectorReg* %3 to i8*
  %5 = load i64, i64* %RAX, align 8
  %6 = add i64 %5, 60
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

; Function Attrs: nounwind
define %struct.Memory* @routine_addl_0x722ca8___ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 7
  store i64 %5, i64* %PC, align 8
  %6 = trunc i64 %3 to i32
  %7 = load i32, i32* bitcast (%G_0x722ca8_type* @G_0x722ca8 to i32*), align 8
  %8 = add i32 %7, %6
  %9 = zext i32 %8 to i64
  store i64 %9, i64* %RCX, align 8
  %10 = icmp ult i32 %8, %6
  %11 = icmp ult i32 %8, %7
  %12 = or i1 %10, %11
  %13 = zext i1 %12 to i8
  %14 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %13, i8* %14, align 1
  %15 = and i32 %8, 255
  %16 = tail call i32 @llvm.ctpop.i32(i32 %15)
  %17 = trunc i32 %16 to i8
  %18 = and i8 %17, 1
  %19 = xor i8 %18, 1
  %20 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %19, i8* %20, align 1
  %21 = xor i32 %7, %6
  %22 = xor i32 %21, %8
  %23 = lshr i32 %22, 4
  %24 = trunc i32 %23 to i8
  %25 = and i8 %24, 1
  %26 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %25, i8* %26, align 1
  %27 = icmp eq i32 %8, 0
  %28 = zext i1 %27 to i8
  %29 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %28, i8* %29, align 1
  %30 = lshr i32 %8, 31
  %31 = trunc i32 %30 to i8
  %32 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %31, i8* %32, align 1
  %33 = lshr i32 %6, 31
  %34 = lshr i32 %7, 31
  %35 = xor i32 %30, %33
  %36 = xor i32 %30, %34
  %37 = add nuw nsw i32 %35, %36
  %38 = icmp eq i32 %37, 2
  %39 = zext i1 %38 to i8
  %40 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %39, i8* %40, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_cvtsi2ssl__ecx___xmm1(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %ECX = bitcast %union.anon* %3 to i32*
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1
  %5 = bitcast %union.VectorReg* %4 to i8*
  %6 = load i32, i32* %ECX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 4
  store i64 %8, i64* %PC, align 8
  %9 = bitcast %union.VectorReg* %4 to <2 x i32>*
  %10 = load <2 x i32>, <2 x i32>* %9, align 1
  %11 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1, i32 0, i32 0, i32 0, i64 1
  %12 = bitcast i64* %11 to <2 x i32>*
  %13 = load <2 x i32>, <2 x i32>* %12, align 1
  %14 = sitofp i32 %6 to float
  %15 = bitcast %union.VectorReg* %4 to float*
  store float %14, float* %15, align 1
  %16 = extractelement <2 x i32> %10, i32 1
  %17 = getelementptr inbounds i8, i8* %5, i64 4
  %18 = bitcast i8* %17 to i32*
  store i32 %16, i32* %18, align 1
  %19 = extractelement <2 x i32> %13, i32 0
  %20 = bitcast i64* %11 to i32*
  store i32 %19, i32* %20, align 1
  %21 = extractelement <2 x i32> %13, i32 1
  %22 = getelementptr inbounds i8, i8* %5, i64 12
  %23 = bitcast i8* %22 to i32*
  store i32 %21, i32* %23, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_mulss__xmm1___xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
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
  %17 = fmul float %15, %16
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
define %struct.Memory* @routine_addss___rax____xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %4 = bitcast %union.VectorReg* %3 to i8*
  %5 = bitcast i64* %RAX to float**
  %6 = load float*, float** %5, align 8
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 4
  store i64 %8, i64* %PC, align 8
  %9 = bitcast %union.VectorReg* %3 to <2 x float>*
  %10 = load <2 x float>, <2 x float>* %9, align 1
  %11 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 1
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
define %struct.Memory* @routine_movss__xmm0__0x3c__rax_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %4 = load i64, i64* %RAX, align 8
  %5 = add i64 %4, 60
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
define %struct.Memory* @routine_movss_0x40__rax____xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %4 = bitcast %union.VectorReg* %3 to i8*
  %5 = load i64, i64* %RAX, align 8
  %6 = add i64 %5, 64
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
define %struct.Memory* @routine_addss_0x4__rax____xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movss__xmm0__0x40__rax_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %4 = load i64, i64* %RAX, align 8
  %5 = add i64 %4, 64
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
define %struct.Memory* @routine_movss_0x44__rax____xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %4 = bitcast %union.VectorReg* %3 to i8*
  %5 = load i64, i64* %RAX, align 8
  %6 = add i64 %5, 68
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
define %struct.Memory* @routine_addss_0x8__rax____xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movss__xmm0__0x44__rax_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %4 = load i64, i64* %RAX, align 8
  %5 = add i64 %4, 68
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
define %struct.Memory* @routine_jne_.L_42bbea(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movss_0x20__rax____xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %4 = bitcast %union.VectorReg* %3 to i8*
  %5 = load i64, i64* %RAX, align 8
  %6 = add i64 %5, 32
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
define %struct.Memory* @routine_movl_0x6f8edc___ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 7
  store i64 %4, i64* %PC, align 8
  %5 = load i32, i32* bitcast (%G_0x6f8edc_type* @G_0x6f8edc to i32*), align 8
  %6 = zext i32 %5 to i64
  store i64 %6, i64* %RCX, align 8
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
define %struct.Memory* @routine_cvtsi2ssl_0x6f8edc___xmm1(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1
  %4 = bitcast %union.VectorReg* %3 to i8*
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 9
  store i64 %6, i64* %PC, align 8
  %7 = bitcast %union.VectorReg* %3 to <2 x i32>*
  %8 = load <2 x i32>, <2 x i32>* %7, align 1
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1, i32 0, i32 0, i32 0, i64 1
  %10 = bitcast i64* %9 to <2 x i32>*
  %11 = load <2 x i32>, <2 x i32>* %10, align 1
  %12 = load i32, i32* bitcast (%G_0x6f8edc_type* @G_0x6f8edc to i32*), align 8
  %13 = sitofp i32 %12 to float
  %14 = bitcast %union.VectorReg* %3 to float*
  store float %13, float* %14, align 1
  %15 = extractelement <2 x i32> %8, i32 1
  %16 = getelementptr inbounds i8, i8* %4, i64 4
  %17 = bitcast i8* %16 to i32*
  store i32 %15, i32* %17, align 1
  %18 = extractelement <2 x i32> %11, i32 0
  %19 = bitcast i64* %9 to i32*
  store i32 %18, i32* %19, align 1
  %20 = extractelement <2 x i32> %11, i32 1
  %21 = getelementptr inbounds i8, i8* %4, i64 12
  %22 = bitcast i8* %21 to i32*
  store i32 %20, i32* %22, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movss_0x2c__rax____xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %4 = bitcast %union.VectorReg* %3 to i8*
  %5 = load i64, i64* %RAX, align 8
  %6 = add i64 %5, 44
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
define %struct.Memory* @routine_movss_0x38__rax____xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %4 = bitcast %union.VectorReg* %3 to i8*
  %5 = load i64, i64* %RAX, align 8
  %6 = add i64 %5, 56
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
define %struct.Memory* @routine_jmpq_.L_42bda8(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__0x1__0x18__rax_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
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
define %struct.Memory* @routine_jne_.L_42bcd2(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movss_0x1c__rax____xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %4 = bitcast %union.VectorReg* %3 to i8*
  %5 = load i64, i64* %RAX, align 8
  %6 = add i64 %5, 28
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
define %struct.Memory* @routine_movl_0x722ca8___ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 7
  store i64 %4, i64* %PC, align 8
  %5 = load i32, i32* bitcast (%G_0x722ca8_type* @G_0x722ca8 to i32*), align 8
  %6 = zext i32 %5 to i64
  store i64 %6, i64* %RCX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_cvtsi2ssl_0x722ca8___xmm1(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1
  %4 = bitcast %union.VectorReg* %3 to i8*
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 9
  store i64 %6, i64* %PC, align 8
  %7 = bitcast %union.VectorReg* %3 to <2 x i32>*
  %8 = load <2 x i32>, <2 x i32>* %7, align 1
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1, i32 0, i32 0, i32 0, i64 1
  %10 = bitcast i64* %9 to <2 x i32>*
  %11 = load <2 x i32>, <2 x i32>* %10, align 1
  %12 = load i32, i32* bitcast (%G_0x722ca8_type* @G_0x722ca8 to i32*), align 8
  %13 = sitofp i32 %12 to float
  %14 = bitcast %union.VectorReg* %3 to float*
  store float %13, float* %14, align 1
  %15 = extractelement <2 x i32> %8, i32 1
  %16 = getelementptr inbounds i8, i8* %4, i64 4
  %17 = bitcast i8* %16 to i32*
  store i32 %15, i32* %17, align 1
  %18 = extractelement <2 x i32> %11, i32 0
  %19 = bitcast i64* %9 to i32*
  store i32 %18, i32* %19, align 1
  %20 = extractelement <2 x i32> %11, i32 1
  %21 = getelementptr inbounds i8, i8* %4, i64 12
  %22 = bitcast i8* %21 to i32*
  store i32 %20, i32* %22, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movss_0x28__rax____xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %4 = bitcast %union.VectorReg* %3 to i8*
  %5 = load i64, i64* %RAX, align 8
  %6 = add i64 %5, 40
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
define %struct.Memory* @routine_movss_0x34__rax____xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %4 = bitcast %union.VectorReg* %3 to i8*
  %5 = load i64, i64* %RAX, align 8
  %6 = add i64 %5, 52
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
define %struct.Memory* @routine_jmpq_.L_42bda3(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movss_0x18__rax____xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %4 = bitcast %union.VectorReg* %3 to i8*
  %5 = load i64, i64* %RAX, align 8
  %6 = add i64 %5, 24
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
define %struct.Memory* @routine_movl_0x6cee50___ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 7
  store i64 %4, i64* %PC, align 8
  %5 = load i32, i32* bitcast (%G_0x6cee50_type* @G_0x6cee50 to i32*), align 8
  %6 = zext i32 %5 to i64
  store i64 %6, i64* %RCX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_cvtsi2ssl_0x6cee50___xmm1(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1
  %4 = bitcast %union.VectorReg* %3 to i8*
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 9
  store i64 %6, i64* %PC, align 8
  %7 = bitcast %union.VectorReg* %3 to <2 x i32>*
  %8 = load <2 x i32>, <2 x i32>* %7, align 1
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1, i32 0, i32 0, i32 0, i64 1
  %10 = bitcast i64* %9 to <2 x i32>*
  %11 = load <2 x i32>, <2 x i32>* %10, align 1
  %12 = load i32, i32* bitcast (%G_0x6cee50_type* @G_0x6cee50 to i32*), align 8
  %13 = sitofp i32 %12 to float
  %14 = bitcast %union.VectorReg* %3 to float*
  store float %13, float* %14, align 1
  %15 = extractelement <2 x i32> %8, i32 1
  %16 = getelementptr inbounds i8, i8* %4, i64 4
  %17 = bitcast i8* %16 to i32*
  store i32 %15, i32* %17, align 1
  %18 = extractelement <2 x i32> %11, i32 0
  %19 = bitcast i64* %9 to i32*
  store i32 %18, i32* %19, align 1
  %20 = extractelement <2 x i32> %11, i32 1
  %21 = getelementptr inbounds i8, i8* %4, i64 12
  %22 = bitcast i8* %21 to i32*
  store i32 %20, i32* %22, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movss_0x24__rax____xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %4 = bitcast %union.VectorReg* %3 to i8*
  %5 = load i64, i64* %RAX, align 8
  %6 = add i64 %5, 36
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
define %struct.Memory* @routine_movss_0x30__rax____xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %4 = bitcast %union.VectorReg* %3 to i8*
  %5 = load i64, i64* %RAX, align 8
  %6 = add i64 %5, 48
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
