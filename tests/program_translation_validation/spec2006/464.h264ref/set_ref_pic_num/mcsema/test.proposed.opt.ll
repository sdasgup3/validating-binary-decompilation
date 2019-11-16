; ModuleID = 'mcsema/test.proposed.inline.ll'
source_filename = "llvm-link"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu-elf"

%__bss_start_type = type <{ [8 x i8] }>
%G_0x6cb900_type = type <{ [8 x i8] }>
%G_0x70fcf0_type = type <{ [8 x i8] }>
%G_0x722b20_type = type <{ [8 x i8] }>
%G_0x722b28_type = type <{ [8 x i8] }>
%G_0x722cb0_type = type <{ [8 x i8] }>
%G_0x7247b0_type = type <{ [4 x i8] }>
%G_0x7247b4_type = type <{ [4 x i8] }>
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
@G_0x6cb900 = local_unnamed_addr global %G_0x6cb900_type zeroinitializer
@G_0x70fcf0 = local_unnamed_addr global %G_0x70fcf0_type zeroinitializer
@G_0x722b20 = local_unnamed_addr global %G_0x722b20_type zeroinitializer
@G_0x722b28 = local_unnamed_addr global %G_0x722b28_type zeroinitializer
@G_0x722cb0 = local_unnamed_addr global %G_0x722cb0_type zeroinitializer
@G_0x7247b0 = local_unnamed_addr global %G_0x7247b0_type zeroinitializer
@G_0x7247b4 = local_unnamed_addr global %G_0x7247b4_type zeroinitializer

; Function Attrs: nounwind readnone
declare i32 @llvm.ctpop.i32(i32) #0

; Function Attrs: alwaysinline nounwind
define %struct.Memory* @set_ref_pic_num(%struct.State* noalias, i64, %struct.Memory* noalias readnone returned) local_unnamed_addr #1 {
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
  store i64 %8, i64* %6, align 8
  %10 = load i64, i64* %3, align 8
  store i64 %8, i64* %RBP.i, align 8
  %11 = add i64 %7, -12
  %12 = add i64 %10, 10
  store i64 %12, i64* %3, align 8
  %13 = inttoptr i64 %11 to i32*
  store i32 0, i32* %13, align 4
  %RAX.i497 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %14 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %15 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %16 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  %17 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %18 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %19 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %20 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %RCX.i489 = getelementptr inbounds %union.anon, %union.anon* %20, i64 0, i32 0
  %RDX.i487 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RSI.i484 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %RDI.i479 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %ECX.i463 = bitcast %union.anon* %20 to i32*
  %R8.i453 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0, i32 0
  %.pre = load i64, i64* %3, align 8
  br label %block_.L_4a394b

block_.L_4a394b:                                  ; preds = %block_4a395b, %entry
  %21 = phi i64 [ %306, %block_4a395b ], [ %.pre, %entry ]
  %22 = load i64, i64* %RBP.i, align 8
  %23 = add i64 %22, -4
  %24 = add i64 %21, 3
  store i64 %24, i64* %3, align 8
  %25 = inttoptr i64 %23 to i32*
  %26 = load i32, i32* %25, align 4
  %27 = zext i32 %26 to i64
  store i64 %27, i64* %RAX.i497, align 8
  %28 = load i32, i32* bitcast (%G_0x7247b0_type* @G_0x7247b0 to i32*), align 8
  %29 = sub i32 %26, %28
  %30 = icmp ult i32 %26, %28
  %31 = zext i1 %30 to i8
  store i8 %31, i8* %14, align 1
  %32 = and i32 %29, 255
  %33 = tail call i32 @llvm.ctpop.i32(i32 %32)
  %34 = trunc i32 %33 to i8
  %35 = and i8 %34, 1
  %36 = xor i8 %35, 1
  store i8 %36, i8* %15, align 1
  %37 = xor i32 %28, %26
  %38 = xor i32 %37, %29
  %39 = lshr i32 %38, 4
  %40 = trunc i32 %39 to i8
  %41 = and i8 %40, 1
  store i8 %41, i8* %16, align 1
  %42 = icmp eq i32 %29, 0
  %43 = zext i1 %42 to i8
  store i8 %43, i8* %17, align 1
  %44 = lshr i32 %29, 31
  %45 = trunc i32 %44 to i8
  store i8 %45, i8* %18, align 1
  %46 = lshr i32 %26, 31
  %47 = lshr i32 %28, 31
  %48 = xor i32 %47, %46
  %49 = xor i32 %44, %46
  %50 = add nuw nsw i32 %49, %48
  %51 = icmp eq i32 %50, 2
  %52 = zext i1 %51 to i8
  store i8 %52, i8* %19, align 1
  %53 = icmp ne i8 %45, 0
  %54 = xor i1 %53, %51
  %.v33 = select i1 %54, i64 16, i64 241
  %55 = add i64 %21, %.v33
  store i64 %55, i64* %3, align 8
  br i1 %54, label %block_4a395b, label %block_.L_4a3a3c

block_4a395b:                                     ; preds = %block_.L_4a394b
  store i64 0, i64* %RAX.i497, align 8
  store i8 0, i8* %14, align 1
  store i8 1, i8* %15, align 1
  store i8 1, i8* %17, align 1
  store i8 0, i8* %18, align 1
  store i8 0, i8* %19, align 1
  store i8 0, i8* %16, align 1
  store i64 1, i64* %RCX.i489, align 8
  %56 = load i64, i64* bitcast (%G_0x722b20_type* @G_0x722b20 to i64*), align 8
  store i64 %56, i64* %RDX.i487, align 8
  %57 = add i64 %55, 19
  store i64 %57, i64* %3, align 8
  %58 = load i32, i32* %25, align 4
  %59 = sext i32 %58 to i64
  store i64 %59, i64* %RSI.i484, align 8
  %60 = shl nsw i64 %59, 3
  %61 = add i64 %60, %56
  %62 = add i64 %55, 23
  store i64 %62, i64* %3, align 8
  %63 = inttoptr i64 %61 to i64*
  %64 = load i64, i64* %63, align 8
  store i64 %64, i64* %RDX.i487, align 8
  %65 = add i64 %64, 4
  %66 = add i64 %55, 26
  store i64 %66, i64* %3, align 8
  %67 = inttoptr i64 %65 to i32*
  %68 = load i32, i32* %67, align 4
  %69 = shl i32 %68, 1
  %70 = icmp slt i32 %68, 0
  %71 = icmp slt i32 %69, 0
  %72 = xor i1 %70, %71
  %73 = zext i32 %69 to i64
  store i64 %73, i64* %RDI.i479, align 8
  %.lobit = lshr i32 %68, 31
  %74 = trunc i32 %.lobit to i8
  store i8 %74, i8* %14, align 1
  %75 = and i32 %69, 254
  %76 = tail call i32 @llvm.ctpop.i32(i32 %75)
  %77 = trunc i32 %76 to i8
  %78 = and i8 %77, 1
  %79 = xor i8 %78, 1
  store i8 %79, i8* %15, align 1
  store i8 0, i8* %16, align 1
  %80 = icmp eq i32 %69, 0
  %81 = zext i1 %80 to i8
  store i8 %81, i8* %17, align 1
  %82 = lshr i32 %68, 30
  %83 = trunc i32 %82 to i8
  %84 = and i8 %83, 1
  store i8 %84, i8* %18, align 1
  %85 = zext i1 %72 to i8
  store i8 %85, i8* %19, align 1
  store i64 %56, i64* %RDX.i487, align 8
  %86 = add i64 %55, 40
  store i64 %86, i64* %3, align 8
  %87 = load i32, i32* %25, align 4
  %88 = sext i32 %87 to i64
  store i64 %88, i64* %RSI.i484, align 8
  %89 = shl nsw i64 %88, 3
  %90 = add i64 %89, %56
  %91 = add i64 %55, 44
  store i64 %91, i64* %3, align 8
  %92 = inttoptr i64 %90 to i64*
  %93 = load i64, i64* %92, align 8
  store i64 %93, i64* %RDX.i487, align 8
  %94 = add i64 %55, 47
  store i64 %94, i64* %3, align 8
  %95 = inttoptr i64 %93 to i32*
  %96 = load i32, i32* %95, align 4
  %97 = icmp eq i32 %96, 2
  %98 = load i64, i64* %RAX.i497, align 8
  %.op32 = and i64 %98, 4294967295
  %99 = select i1 %97, i64 1, i64 %.op32
  store i64 %99, i64* %RAX.i497, align 8
  %100 = trunc i64 %99 to i32
  %101 = add i32 %100, %69
  %102 = zext i32 %101 to i64
  store i64 %102, i64* %RDI.i479, align 8
  %103 = icmp ult i32 %101, %69
  %104 = icmp ult i32 %101, %100
  %105 = or i1 %103, %104
  %106 = zext i1 %105 to i8
  store i8 %106, i8* %14, align 1
  %107 = and i32 %101, 255
  %108 = tail call i32 @llvm.ctpop.i32(i32 %107)
  %109 = trunc i32 %108 to i8
  %110 = and i8 %109, 1
  %111 = xor i8 %110, 1
  store i8 %111, i8* %15, align 1
  %112 = xor i64 %99, %73
  %113 = trunc i64 %112 to i32
  %114 = xor i32 %113, %101
  %115 = lshr i32 %114, 4
  %116 = trunc i32 %115 to i8
  %117 = and i8 %116, 1
  store i8 %117, i8* %16, align 1
  %118 = icmp eq i32 %101, 0
  %119 = zext i1 %118 to i8
  store i8 %119, i8* %17, align 1
  %120 = lshr i32 %101, 31
  %121 = trunc i32 %120 to i8
  store i8 %121, i8* %18, align 1
  %122 = lshr i32 %68, 30
  %123 = and i32 %122, 1
  %124 = lshr i32 %100, 31
  %125 = xor i32 %120, %123
  %126 = xor i32 %120, %124
  %127 = add nuw nsw i32 %125, %126
  %128 = icmp eq i32 %127, 2
  %129 = zext i1 %128 to i8
  store i8 %129, i8* %19, align 1
  %130 = sext i32 %101 to i64
  store i64 %130, i64* %RDX.i487, align 8
  %131 = load i64, i64* bitcast (%G_0x70fcf0_type* @G_0x70fcf0 to i64*), align 8
  store i64 %131, i64* %RSI.i484, align 8
  %132 = load i64, i64* %RBP.i, align 8
  %133 = add i64 %132, -4
  %134 = add i64 %55, 67
  store i64 %134, i64* %3, align 8
  %135 = inttoptr i64 %133 to i32*
  %136 = load i32, i32* %135, align 4
  %137 = sext i32 %136 to i64
  store i64 %137, i64* %R8.i453, align 8
  %138 = shl nsw i64 %137, 3
  %139 = add i64 %131, 24
  %140 = add i64 %139, %138
  %141 = add i64 %55, 72
  store i64 %141, i64* %3, align 8
  %142 = inttoptr i64 %140 to i64*
  store i64 %130, i64* %142, align 8
  %143 = load i64, i64* %3, align 8
  %144 = load i64, i64* bitcast (%G_0x722b20_type* @G_0x722b20 to i64*), align 8
  store i64 %144, i64* %RDX.i487, align 8
  %145 = load i64, i64* %RBP.i, align 8
  %146 = add i64 %145, -4
  %147 = add i64 %143, 12
  store i64 %147, i64* %3, align 8
  %148 = inttoptr i64 %146 to i32*
  %149 = load i32, i32* %148, align 4
  %150 = sext i32 %149 to i64
  store i64 %150, i64* %RSI.i484, align 8
  %151 = shl nsw i64 %150, 3
  %152 = add i64 %151, %144
  %153 = add i64 %143, 16
  store i64 %153, i64* %3, align 8
  %154 = inttoptr i64 %152 to i64*
  %155 = load i64, i64* %154, align 8
  store i64 %155, i64* %RDX.i487, align 8
  %156 = add i64 %155, 16
  %157 = add i64 %143, 19
  store i64 %157, i64* %3, align 8
  %158 = inttoptr i64 %156 to i32*
  %159 = load i32, i32* %158, align 4
  %160 = shl i32 %159, 1
  %161 = icmp slt i32 %159, 0
  %162 = icmp slt i32 %160, 0
  %163 = xor i1 %161, %162
  %164 = zext i32 %160 to i64
  store i64 %164, i64* %RAX.i497, align 8
  %.lobit6 = lshr i32 %159, 31
  %165 = trunc i32 %.lobit6 to i8
  store i8 %165, i8* %14, align 1
  %166 = and i32 %160, 254
  %167 = tail call i32 @llvm.ctpop.i32(i32 %166)
  %168 = trunc i32 %167 to i8
  %169 = and i8 %168, 1
  %170 = xor i8 %169, 1
  store i8 %170, i8* %15, align 1
  store i8 0, i8* %16, align 1
  %171 = icmp eq i32 %160, 0
  %172 = zext i1 %171 to i8
  store i8 %172, i8* %17, align 1
  %173 = lshr i32 %159, 30
  %174 = trunc i32 %173 to i8
  %175 = and i8 %174, 1
  store i8 %175, i8* %18, align 1
  %176 = zext i1 %163 to i8
  store i8 %176, i8* %19, align 1
  %177 = sext i32 %160 to i64
  store i64 %177, i64* %RDX.i487, align 8
  %178 = load i64, i64* bitcast (%G_0x70fcf0_type* @G_0x70fcf0 to i64*), align 8
  store i64 %178, i64* %RSI.i484, align 8
  %179 = add i64 %143, 36
  store i64 %179, i64* %3, align 8
  %180 = load i32, i32* %148, align 4
  %181 = sext i32 %180 to i64
  store i64 %181, i64* %R8.i453, align 8
  %182 = shl nsw i64 %181, 3
  %183 = add i64 %178, 1608
  %184 = add i64 %183, %182
  %185 = add i64 %143, 44
  store i64 %185, i64* %3, align 8
  %186 = inttoptr i64 %184 to i64*
  store i64 %177, i64* %186, align 8
  %187 = load i64, i64* %3, align 8
  %188 = load i64, i64* bitcast (%G_0x722b20_type* @G_0x722b20 to i64*), align 8
  store i64 %188, i64* %RDX.i487, align 8
  %189 = load i64, i64* %RBP.i, align 8
  %190 = add i64 %189, -4
  %191 = add i64 %187, 12
  store i64 %191, i64* %3, align 8
  %192 = inttoptr i64 %190 to i32*
  %193 = load i32, i32* %192, align 4
  %194 = sext i32 %193 to i64
  store i64 %194, i64* %RSI.i484, align 8
  %195 = shl nsw i64 %194, 3
  %196 = add i64 %195, %188
  %197 = add i64 %187, 16
  store i64 %197, i64* %3, align 8
  %198 = inttoptr i64 %196 to i64*
  %199 = load i64, i64* %198, align 8
  store i64 %199, i64* %RDX.i487, align 8
  %200 = add i64 %199, 8
  %201 = add i64 %187, 19
  store i64 %201, i64* %3, align 8
  %202 = inttoptr i64 %200 to i32*
  %203 = load i32, i32* %202, align 4
  %204 = shl i32 %203, 1
  %205 = icmp slt i32 %203, 0
  %206 = icmp slt i32 %204, 0
  %207 = xor i1 %205, %206
  %208 = zext i32 %204 to i64
  store i64 %208, i64* %RAX.i497, align 8
  %.lobit7 = lshr i32 %203, 31
  %209 = trunc i32 %.lobit7 to i8
  store i8 %209, i8* %14, align 1
  %210 = and i32 %204, 254
  %211 = tail call i32 @llvm.ctpop.i32(i32 %210)
  %212 = trunc i32 %211 to i8
  %213 = and i8 %212, 1
  %214 = xor i8 %213, 1
  store i8 %214, i8* %15, align 1
  store i8 0, i8* %16, align 1
  %215 = icmp eq i32 %204, 0
  %216 = zext i1 %215 to i8
  store i8 %216, i8* %17, align 1
  %217 = lshr i32 %203, 30
  %218 = trunc i32 %217 to i8
  %219 = and i8 %218, 1
  store i8 %219, i8* %18, align 1
  %220 = zext i1 %207 to i8
  store i8 %220, i8* %19, align 1
  %221 = sext i32 %204 to i64
  store i64 %221, i64* %RDX.i487, align 8
  %222 = load i64, i64* bitcast (%G_0x70fcf0_type* @G_0x70fcf0 to i64*), align 8
  store i64 %222, i64* %RSI.i484, align 8
  %223 = add i64 %187, 36
  store i64 %223, i64* %3, align 8
  %224 = load i32, i32* %192, align 4
  %225 = sext i32 %224 to i64
  store i64 %225, i64* %R8.i453, align 8
  %226 = shl nsw i64 %225, 3
  %227 = add i64 %222, 3192
  %228 = add i64 %227, %226
  %229 = add i64 %187, 44
  store i64 %229, i64* %3, align 8
  %230 = inttoptr i64 %228 to i64*
  store i64 %221, i64* %230, align 8
  %231 = load i64, i64* %3, align 8
  %232 = load i64, i64* bitcast (%G_0x722b20_type* @G_0x722b20 to i64*), align 8
  store i64 %232, i64* %RDX.i487, align 8
  %233 = load i64, i64* %RBP.i, align 8
  %234 = add i64 %233, -4
  %235 = add i64 %231, 12
  store i64 %235, i64* %3, align 8
  %236 = inttoptr i64 %234 to i32*
  %237 = load i32, i32* %236, align 4
  %238 = sext i32 %237 to i64
  store i64 %238, i64* %RSI.i484, align 8
  %239 = shl nsw i64 %238, 3
  %240 = add i64 %239, %232
  %241 = add i64 %231, 16
  store i64 %241, i64* %3, align 8
  %242 = inttoptr i64 %240 to i64*
  %243 = load i64, i64* %242, align 8
  store i64 %243, i64* %RDX.i487, align 8
  %244 = add i64 %243, 12
  %245 = add i64 %231, 19
  store i64 %245, i64* %3, align 8
  %246 = inttoptr i64 %244 to i32*
  %247 = load i32, i32* %246, align 4
  %248 = shl i32 %247, 1
  %249 = or i32 %248, 1
  %250 = zext i32 %249 to i64
  store i64 %250, i64* %RAX.i497, align 8
  store i8 0, i8* %14, align 1
  %251 = and i32 %249, 255
  %252 = tail call i32 @llvm.ctpop.i32(i32 %251)
  %253 = trunc i32 %252 to i8
  %254 = and i8 %253, 1
  %255 = xor i8 %254, 1
  store i8 %255, i8* %15, align 1
  store i8 0, i8* %16, align 1
  store i8 0, i8* %17, align 1
  %256 = lshr i32 %247, 30
  %257 = and i32 %256, 1
  %258 = trunc i32 %257 to i8
  store i8 %258, i8* %18, align 1
  %259 = lshr i32 %247, 30
  %260 = and i32 %259, 1
  %261 = xor i32 %257, %260
  %262 = add nuw nsw i32 %261, %257
  %263 = icmp eq i32 %262, 2
  %264 = zext i1 %263 to i8
  store i8 %264, i8* %19, align 1
  %265 = sext i32 %249 to i64
  store i64 %265, i64* %RDX.i487, align 8
  %266 = load i64, i64* bitcast (%G_0x70fcf0_type* @G_0x70fcf0 to i64*), align 8
  store i64 %266, i64* %RSI.i484, align 8
  %267 = add i64 %231, 39
  store i64 %267, i64* %3, align 8
  %268 = load i32, i32* %236, align 4
  %269 = sext i32 %268 to i64
  store i64 %269, i64* %R8.i453, align 8
  %270 = shl nsw i64 %269, 3
  %271 = add i64 %266, 4776
  %272 = add i64 %271, %270
  %273 = add i64 %231, 47
  store i64 %273, i64* %3, align 8
  %274 = inttoptr i64 %272 to i64*
  store i64 %265, i64* %274, align 8
  %275 = load i64, i64* %RBP.i, align 8
  %276 = add i64 %275, -4
  %277 = load i64, i64* %3, align 8
  %278 = add i64 %277, 3
  store i64 %278, i64* %3, align 8
  %279 = inttoptr i64 %276 to i32*
  %280 = load i32, i32* %279, align 4
  %281 = add i32 %280, 1
  %282 = zext i32 %281 to i64
  store i64 %282, i64* %RAX.i497, align 8
  %283 = icmp eq i32 %280, -1
  %284 = icmp eq i32 %281, 0
  %285 = or i1 %283, %284
  %286 = zext i1 %285 to i8
  store i8 %286, i8* %14, align 1
  %287 = and i32 %281, 255
  %288 = tail call i32 @llvm.ctpop.i32(i32 %287)
  %289 = trunc i32 %288 to i8
  %290 = and i8 %289, 1
  %291 = xor i8 %290, 1
  store i8 %291, i8* %15, align 1
  %292 = xor i32 %281, %280
  %293 = lshr i32 %292, 4
  %294 = trunc i32 %293 to i8
  %295 = and i8 %294, 1
  store i8 %295, i8* %16, align 1
  %296 = zext i1 %284 to i8
  store i8 %296, i8* %17, align 1
  %297 = lshr i32 %281, 31
  %298 = trunc i32 %297 to i8
  store i8 %298, i8* %18, align 1
  %299 = lshr i32 %280, 31
  %300 = xor i32 %297, %299
  %301 = add nuw nsw i32 %300, %297
  %302 = icmp eq i32 %301, 2
  %303 = zext i1 %302 to i8
  store i8 %303, i8* %19, align 1
  %304 = add i64 %277, 9
  store i64 %304, i64* %3, align 8
  store i32 %281, i32* %279, align 4
  %305 = load i64, i64* %3, align 8
  %306 = add i64 %305, -236
  store i64 %306, i64* %3, align 8
  br label %block_.L_4a394b

block_.L_4a3a3c:                                  ; preds = %block_.L_4a394b
  %307 = add i64 %55, 7
  store i64 %307, i64* %3, align 8
  store i32 0, i32* %25, align 4
  %.pre29 = load i64, i64* %3, align 8
  br label %block_.L_4a3a43

block_.L_4a3a43:                                  ; preds = %block_4a3a53, %block_.L_4a3a3c
  %308 = phi i64 [ %593, %block_4a3a53 ], [ %.pre29, %block_.L_4a3a3c ]
  %309 = load i64, i64* %RBP.i, align 8
  %310 = add i64 %309, -4
  %311 = add i64 %308, 3
  store i64 %311, i64* %3, align 8
  %312 = inttoptr i64 %310 to i32*
  %313 = load i32, i32* %312, align 4
  %314 = zext i32 %313 to i64
  store i64 %314, i64* %RAX.i497, align 8
  %315 = load i32, i32* bitcast (%G_0x7247b4_type* @G_0x7247b4 to i32*), align 8
  %316 = sub i32 %313, %315
  %317 = icmp ult i32 %313, %315
  %318 = zext i1 %317 to i8
  store i8 %318, i8* %14, align 1
  %319 = and i32 %316, 255
  %320 = tail call i32 @llvm.ctpop.i32(i32 %319)
  %321 = trunc i32 %320 to i8
  %322 = and i8 %321, 1
  %323 = xor i8 %322, 1
  store i8 %323, i8* %15, align 1
  %324 = xor i32 %315, %313
  %325 = xor i32 %324, %316
  %326 = lshr i32 %325, 4
  %327 = trunc i32 %326 to i8
  %328 = and i8 %327, 1
  store i8 %328, i8* %16, align 1
  %329 = icmp eq i32 %316, 0
  %330 = zext i1 %329 to i8
  store i8 %330, i8* %17, align 1
  %331 = lshr i32 %316, 31
  %332 = trunc i32 %331 to i8
  store i8 %332, i8* %18, align 1
  %333 = lshr i32 %313, 31
  %334 = lshr i32 %315, 31
  %335 = xor i32 %334, %333
  %336 = xor i32 %331, %333
  %337 = add nuw nsw i32 %336, %335
  %338 = icmp eq i32 %337, 2
  %339 = zext i1 %338 to i8
  store i8 %339, i8* %19, align 1
  %340 = icmp ne i8 %332, 0
  %341 = xor i1 %340, %338
  %.v34 = select i1 %341, i64 16, i64 244
  %342 = add i64 %308, %.v34
  store i64 %342, i64* %3, align 8
  br i1 %341, label %block_4a3a53, label %block_.L_4a3b37

block_4a3a53:                                     ; preds = %block_.L_4a3a43
  store i64 0, i64* %RAX.i497, align 8
  store i8 0, i8* %14, align 1
  store i8 1, i8* %15, align 1
  store i8 1, i8* %17, align 1
  store i8 0, i8* %18, align 1
  store i8 0, i8* %19, align 1
  store i8 0, i8* %16, align 1
  store i64 1, i64* %RCX.i489, align 8
  %343 = load i64, i64* bitcast (%G_0x722b28_type* @G_0x722b28 to i64*), align 8
  store i64 %343, i64* %RDX.i487, align 8
  %344 = add i64 %342, 19
  store i64 %344, i64* %3, align 8
  %345 = load i32, i32* %312, align 4
  %346 = sext i32 %345 to i64
  store i64 %346, i64* %RSI.i484, align 8
  %347 = shl nsw i64 %346, 3
  %348 = add i64 %347, %343
  %349 = add i64 %342, 23
  store i64 %349, i64* %3, align 8
  %350 = inttoptr i64 %348 to i64*
  %351 = load i64, i64* %350, align 8
  store i64 %351, i64* %RDX.i487, align 8
  %352 = add i64 %351, 4
  %353 = add i64 %342, 26
  store i64 %353, i64* %3, align 8
  %354 = inttoptr i64 %352 to i32*
  %355 = load i32, i32* %354, align 4
  %356 = shl i32 %355, 1
  %357 = icmp slt i32 %355, 0
  %358 = icmp slt i32 %356, 0
  %359 = xor i1 %357, %358
  %360 = zext i32 %356 to i64
  store i64 %360, i64* %RDI.i479, align 8
  %.lobit9 = lshr i32 %355, 31
  %361 = trunc i32 %.lobit9 to i8
  store i8 %361, i8* %14, align 1
  %362 = and i32 %356, 254
  %363 = tail call i32 @llvm.ctpop.i32(i32 %362)
  %364 = trunc i32 %363 to i8
  %365 = and i8 %364, 1
  %366 = xor i8 %365, 1
  store i8 %366, i8* %15, align 1
  store i8 0, i8* %16, align 1
  %367 = icmp eq i32 %356, 0
  %368 = zext i1 %367 to i8
  store i8 %368, i8* %17, align 1
  %369 = lshr i32 %355, 30
  %370 = trunc i32 %369 to i8
  %371 = and i8 %370, 1
  store i8 %371, i8* %18, align 1
  %372 = zext i1 %359 to i8
  store i8 %372, i8* %19, align 1
  store i64 %343, i64* %RDX.i487, align 8
  %373 = add i64 %342, 40
  store i64 %373, i64* %3, align 8
  %374 = load i32, i32* %312, align 4
  %375 = sext i32 %374 to i64
  store i64 %375, i64* %RSI.i484, align 8
  %376 = shl nsw i64 %375, 3
  %377 = add i64 %376, %343
  %378 = add i64 %342, 44
  store i64 %378, i64* %3, align 8
  %379 = inttoptr i64 %377 to i64*
  %380 = load i64, i64* %379, align 8
  store i64 %380, i64* %RDX.i487, align 8
  %381 = add i64 %342, 47
  store i64 %381, i64* %3, align 8
  %382 = inttoptr i64 %380 to i32*
  %383 = load i32, i32* %382, align 4
  %384 = icmp eq i32 %383, 2
  %385 = load i64, i64* %RAX.i497, align 8
  %.op = and i64 %385, 4294967295
  %386 = select i1 %384, i64 1, i64 %.op
  store i64 %386, i64* %RAX.i497, align 8
  %387 = trunc i64 %386 to i32
  %388 = add i32 %387, %356
  %389 = zext i32 %388 to i64
  store i64 %389, i64* %RDI.i479, align 8
  %390 = icmp ult i32 %388, %356
  %391 = icmp ult i32 %388, %387
  %392 = or i1 %390, %391
  %393 = zext i1 %392 to i8
  store i8 %393, i8* %14, align 1
  %394 = and i32 %388, 255
  %395 = tail call i32 @llvm.ctpop.i32(i32 %394)
  %396 = trunc i32 %395 to i8
  %397 = and i8 %396, 1
  %398 = xor i8 %397, 1
  store i8 %398, i8* %15, align 1
  %399 = xor i64 %386, %360
  %400 = trunc i64 %399 to i32
  %401 = xor i32 %400, %388
  %402 = lshr i32 %401, 4
  %403 = trunc i32 %402 to i8
  %404 = and i8 %403, 1
  store i8 %404, i8* %16, align 1
  %405 = icmp eq i32 %388, 0
  %406 = zext i1 %405 to i8
  store i8 %406, i8* %17, align 1
  %407 = lshr i32 %388, 31
  %408 = trunc i32 %407 to i8
  store i8 %408, i8* %18, align 1
  %409 = lshr i32 %355, 30
  %410 = and i32 %409, 1
  %411 = lshr i32 %387, 31
  %412 = xor i32 %407, %410
  %413 = xor i32 %407, %411
  %414 = add nuw nsw i32 %412, %413
  %415 = icmp eq i32 %414, 2
  %416 = zext i1 %415 to i8
  store i8 %416, i8* %19, align 1
  %417 = sext i32 %388 to i64
  store i64 %417, i64* %RDX.i487, align 8
  %418 = load i64, i64* bitcast (%G_0x70fcf0_type* @G_0x70fcf0 to i64*), align 8
  store i64 %418, i64* %RSI.i484, align 8
  %419 = load i64, i64* %RBP.i, align 8
  %420 = add i64 %419, -4
  %421 = add i64 %342, 67
  store i64 %421, i64* %3, align 8
  %422 = inttoptr i64 %420 to i32*
  %423 = load i32, i32* %422, align 4
  %424 = sext i32 %423 to i64
  store i64 %424, i64* %R8.i453, align 8
  %425 = shl nsw i64 %424, 3
  %426 = add i64 %418, 288
  %427 = add i64 %426, %425
  %428 = add i64 %342, 75
  store i64 %428, i64* %3, align 8
  %429 = inttoptr i64 %427 to i64*
  store i64 %417, i64* %429, align 8
  %430 = load i64, i64* %3, align 8
  %431 = load i64, i64* bitcast (%G_0x722b28_type* @G_0x722b28 to i64*), align 8
  store i64 %431, i64* %RDX.i487, align 8
  %432 = load i64, i64* %RBP.i, align 8
  %433 = add i64 %432, -4
  %434 = add i64 %430, 12
  store i64 %434, i64* %3, align 8
  %435 = inttoptr i64 %433 to i32*
  %436 = load i32, i32* %435, align 4
  %437 = sext i32 %436 to i64
  store i64 %437, i64* %RSI.i484, align 8
  %438 = shl nsw i64 %437, 3
  %439 = add i64 %438, %431
  %440 = add i64 %430, 16
  store i64 %440, i64* %3, align 8
  %441 = inttoptr i64 %439 to i64*
  %442 = load i64, i64* %441, align 8
  store i64 %442, i64* %RDX.i487, align 8
  %443 = add i64 %442, 16
  %444 = add i64 %430, 19
  store i64 %444, i64* %3, align 8
  %445 = inttoptr i64 %443 to i32*
  %446 = load i32, i32* %445, align 4
  %447 = shl i32 %446, 1
  %448 = icmp slt i32 %446, 0
  %449 = icmp slt i32 %447, 0
  %450 = xor i1 %448, %449
  %451 = zext i32 %447 to i64
  store i64 %451, i64* %RAX.i497, align 8
  %.lobit10 = lshr i32 %446, 31
  %452 = trunc i32 %.lobit10 to i8
  store i8 %452, i8* %14, align 1
  %453 = and i32 %447, 254
  %454 = tail call i32 @llvm.ctpop.i32(i32 %453)
  %455 = trunc i32 %454 to i8
  %456 = and i8 %455, 1
  %457 = xor i8 %456, 1
  store i8 %457, i8* %15, align 1
  store i8 0, i8* %16, align 1
  %458 = icmp eq i32 %447, 0
  %459 = zext i1 %458 to i8
  store i8 %459, i8* %17, align 1
  %460 = lshr i32 %446, 30
  %461 = trunc i32 %460 to i8
  %462 = and i8 %461, 1
  store i8 %462, i8* %18, align 1
  %463 = zext i1 %450 to i8
  store i8 %463, i8* %19, align 1
  %464 = sext i32 %447 to i64
  store i64 %464, i64* %RDX.i487, align 8
  %465 = load i64, i64* bitcast (%G_0x70fcf0_type* @G_0x70fcf0 to i64*), align 8
  store i64 %465, i64* %RSI.i484, align 8
  %466 = add i64 %430, 36
  store i64 %466, i64* %3, align 8
  %467 = load i32, i32* %435, align 4
  %468 = sext i32 %467 to i64
  store i64 %468, i64* %R8.i453, align 8
  %469 = shl nsw i64 %468, 3
  %470 = add i64 %465, 1872
  %471 = add i64 %470, %469
  %472 = add i64 %430, 44
  store i64 %472, i64* %3, align 8
  %473 = inttoptr i64 %471 to i64*
  store i64 %464, i64* %473, align 8
  %474 = load i64, i64* %3, align 8
  %475 = load i64, i64* bitcast (%G_0x722b28_type* @G_0x722b28 to i64*), align 8
  store i64 %475, i64* %RDX.i487, align 8
  %476 = load i64, i64* %RBP.i, align 8
  %477 = add i64 %476, -4
  %478 = add i64 %474, 12
  store i64 %478, i64* %3, align 8
  %479 = inttoptr i64 %477 to i32*
  %480 = load i32, i32* %479, align 4
  %481 = sext i32 %480 to i64
  store i64 %481, i64* %RSI.i484, align 8
  %482 = shl nsw i64 %481, 3
  %483 = add i64 %482, %475
  %484 = add i64 %474, 16
  store i64 %484, i64* %3, align 8
  %485 = inttoptr i64 %483 to i64*
  %486 = load i64, i64* %485, align 8
  store i64 %486, i64* %RDX.i487, align 8
  %487 = add i64 %486, 8
  %488 = add i64 %474, 19
  store i64 %488, i64* %3, align 8
  %489 = inttoptr i64 %487 to i32*
  %490 = load i32, i32* %489, align 4
  %491 = shl i32 %490, 1
  %492 = icmp slt i32 %490, 0
  %493 = icmp slt i32 %491, 0
  %494 = xor i1 %492, %493
  %495 = zext i32 %491 to i64
  store i64 %495, i64* %RAX.i497, align 8
  %.lobit11 = lshr i32 %490, 31
  %496 = trunc i32 %.lobit11 to i8
  store i8 %496, i8* %14, align 1
  %497 = and i32 %491, 254
  %498 = tail call i32 @llvm.ctpop.i32(i32 %497)
  %499 = trunc i32 %498 to i8
  %500 = and i8 %499, 1
  %501 = xor i8 %500, 1
  store i8 %501, i8* %15, align 1
  store i8 0, i8* %16, align 1
  %502 = icmp eq i32 %491, 0
  %503 = zext i1 %502 to i8
  store i8 %503, i8* %17, align 1
  %504 = lshr i32 %490, 30
  %505 = trunc i32 %504 to i8
  %506 = and i8 %505, 1
  store i8 %506, i8* %18, align 1
  %507 = zext i1 %494 to i8
  store i8 %507, i8* %19, align 1
  %508 = sext i32 %491 to i64
  store i64 %508, i64* %RDX.i487, align 8
  %509 = load i64, i64* bitcast (%G_0x70fcf0_type* @G_0x70fcf0 to i64*), align 8
  store i64 %509, i64* %RSI.i484, align 8
  %510 = add i64 %474, 36
  store i64 %510, i64* %3, align 8
  %511 = load i32, i32* %479, align 4
  %512 = sext i32 %511 to i64
  store i64 %512, i64* %R8.i453, align 8
  %513 = shl nsw i64 %512, 3
  %514 = add i64 %509, 3456
  %515 = add i64 %514, %513
  %516 = add i64 %474, 44
  store i64 %516, i64* %3, align 8
  %517 = inttoptr i64 %515 to i64*
  store i64 %508, i64* %517, align 8
  %518 = load i64, i64* %3, align 8
  %519 = load i64, i64* bitcast (%G_0x722b28_type* @G_0x722b28 to i64*), align 8
  store i64 %519, i64* %RDX.i487, align 8
  %520 = load i64, i64* %RBP.i, align 8
  %521 = add i64 %520, -4
  %522 = add i64 %518, 12
  store i64 %522, i64* %3, align 8
  %523 = inttoptr i64 %521 to i32*
  %524 = load i32, i32* %523, align 4
  %525 = sext i32 %524 to i64
  store i64 %525, i64* %RSI.i484, align 8
  %526 = shl nsw i64 %525, 3
  %527 = add i64 %526, %519
  %528 = add i64 %518, 16
  store i64 %528, i64* %3, align 8
  %529 = inttoptr i64 %527 to i64*
  %530 = load i64, i64* %529, align 8
  store i64 %530, i64* %RDX.i487, align 8
  %531 = add i64 %530, 12
  %532 = add i64 %518, 19
  store i64 %532, i64* %3, align 8
  %533 = inttoptr i64 %531 to i32*
  %534 = load i32, i32* %533, align 4
  %535 = shl i32 %534, 1
  %536 = or i32 %535, 1
  %537 = zext i32 %536 to i64
  store i64 %537, i64* %RAX.i497, align 8
  store i8 0, i8* %14, align 1
  %538 = and i32 %536, 255
  %539 = tail call i32 @llvm.ctpop.i32(i32 %538)
  %540 = trunc i32 %539 to i8
  %541 = and i8 %540, 1
  %542 = xor i8 %541, 1
  store i8 %542, i8* %15, align 1
  store i8 0, i8* %16, align 1
  store i8 0, i8* %17, align 1
  %543 = lshr i32 %534, 30
  %544 = and i32 %543, 1
  %545 = trunc i32 %544 to i8
  store i8 %545, i8* %18, align 1
  %546 = lshr i32 %534, 30
  %547 = and i32 %546, 1
  %548 = xor i32 %544, %547
  %549 = add nuw nsw i32 %548, %544
  %550 = icmp eq i32 %549, 2
  %551 = zext i1 %550 to i8
  store i8 %551, i8* %19, align 1
  %552 = sext i32 %536 to i64
  store i64 %552, i64* %RDX.i487, align 8
  %553 = load i64, i64* bitcast (%G_0x70fcf0_type* @G_0x70fcf0 to i64*), align 8
  store i64 %553, i64* %RSI.i484, align 8
  %554 = add i64 %518, 39
  store i64 %554, i64* %3, align 8
  %555 = load i32, i32* %523, align 4
  %556 = sext i32 %555 to i64
  store i64 %556, i64* %R8.i453, align 8
  %557 = shl nsw i64 %556, 3
  %558 = add i64 %553, 5040
  %559 = add i64 %558, %557
  %560 = add i64 %518, 47
  store i64 %560, i64* %3, align 8
  %561 = inttoptr i64 %559 to i64*
  store i64 %552, i64* %561, align 8
  %562 = load i64, i64* %RBP.i, align 8
  %563 = add i64 %562, -4
  %564 = load i64, i64* %3, align 8
  %565 = add i64 %564, 3
  store i64 %565, i64* %3, align 8
  %566 = inttoptr i64 %563 to i32*
  %567 = load i32, i32* %566, align 4
  %568 = add i32 %567, 1
  %569 = zext i32 %568 to i64
  store i64 %569, i64* %RAX.i497, align 8
  %570 = icmp eq i32 %567, -1
  %571 = icmp eq i32 %568, 0
  %572 = or i1 %570, %571
  %573 = zext i1 %572 to i8
  store i8 %573, i8* %14, align 1
  %574 = and i32 %568, 255
  %575 = tail call i32 @llvm.ctpop.i32(i32 %574)
  %576 = trunc i32 %575 to i8
  %577 = and i8 %576, 1
  %578 = xor i8 %577, 1
  store i8 %578, i8* %15, align 1
  %579 = xor i32 %568, %567
  %580 = lshr i32 %579, 4
  %581 = trunc i32 %580 to i8
  %582 = and i8 %581, 1
  store i8 %582, i8* %16, align 1
  %583 = zext i1 %571 to i8
  store i8 %583, i8* %17, align 1
  %584 = lshr i32 %568, 31
  %585 = trunc i32 %584 to i8
  store i8 %585, i8* %18, align 1
  %586 = lshr i32 %567, 31
  %587 = xor i32 %584, %586
  %588 = add nuw nsw i32 %587, %584
  %589 = icmp eq i32 %588, 2
  %590 = zext i1 %589 to i8
  store i8 %590, i8* %19, align 1
  %591 = add i64 %564, 9
  store i64 %591, i64* %3, align 8
  store i32 %568, i32* %566, align 4
  %592 = load i64, i64* %3, align 8
  %593 = add i64 %592, -239
  store i64 %593, i64* %3, align 8
  br label %block_.L_4a3a43

block_.L_4a3b37:                                  ; preds = %block_.L_4a3a43
  %594 = load i64, i64* bitcast (%G_0x722cb0_type* @G_0x722cb0 to i64*), align 8
  store i64 %594, i64* %RAX.i497, align 8
  %595 = add i64 %594, 1148
  %596 = add i64 %342, 15
  store i64 %596, i64* %3, align 8
  %597 = inttoptr i64 %595 to i32*
  %598 = load i32, i32* %597, align 4
  store i8 0, i8* %14, align 1
  %599 = and i32 %598, 255
  %600 = tail call i32 @llvm.ctpop.i32(i32 %599)
  %601 = trunc i32 %600 to i8
  %602 = and i8 %601, 1
  %603 = xor i8 %602, 1
  store i8 %603, i8* %15, align 1
  store i8 0, i8* %16, align 1
  %604 = icmp eq i32 %598, 0
  %605 = zext i1 %604 to i8
  store i8 %605, i8* %17, align 1
  %606 = lshr i32 %598, 31
  %607 = trunc i32 %606 to i8
  store i8 %607, i8* %18, align 1
  store i8 0, i8* %19, align 1
  %.v35 = select i1 %604, i64 21, i64 425
  %608 = add i64 %342, %.v35
  store i64 %608, i64* %3, align 8
  br i1 %604, label %block_4a3b4c, label %block_.L_4a3ce0

block_4a3b4c:                                     ; preds = %block_.L_4a3b37
  %609 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*), align 8
  store i64 %609, i64* %RAX.i497, align 8
  %610 = add i64 %609, 28
  %611 = add i64 %608, 12
  store i64 %611, i64* %3, align 8
  %612 = inttoptr i64 %610 to i32*
  %613 = load i32, i32* %612, align 4
  store i8 0, i8* %14, align 1
  %614 = and i32 %613, 255
  %615 = tail call i32 @llvm.ctpop.i32(i32 %614)
  %616 = trunc i32 %615 to i8
  %617 = and i8 %616, 1
  %618 = xor i8 %617, 1
  store i8 %618, i8* %15, align 1
  store i8 0, i8* %16, align 1
  %619 = icmp eq i32 %613, 0
  %620 = zext i1 %619 to i8
  store i8 %620, i8* %17, align 1
  %621 = lshr i32 %613, 31
  %622 = trunc i32 %621 to i8
  store i8 %622, i8* %18, align 1
  store i8 0, i8* %19, align 1
  %.v36 = select i1 %619, i64 18, i64 399
  %623 = add i64 %608, %.v36
  store i64 %623, i64* %3, align 8
  br i1 %619, label %block_4a3b5e, label %block_.L_4a3cdb

block_4a3b5e:                                     ; preds = %block_4a3b4c
  %624 = add i64 %309, -8
  %625 = add i64 %623, 7
  store i64 %625, i64* %3, align 8
  %626 = inttoptr i64 %624 to i32*
  store i32 2, i32* %626, align 4
  %.pre30 = load i64, i64* %3, align 8
  br label %block_.L_4a3b65

block_.L_4a3b65:                                  ; preds = %block_.L_4a3cc3, %block_4a3b5e
  %627 = phi i64 [ %1183, %block_.L_4a3cc3 ], [ %.pre30, %block_4a3b5e ]
  %628 = load i64, i64* %RBP.i, align 8
  %629 = add i64 %628, -8
  %630 = add i64 %627, 4
  store i64 %630, i64* %3, align 8
  %631 = inttoptr i64 %629 to i32*
  %632 = load i32, i32* %631, align 4
  %633 = add i32 %632, -6
  %634 = icmp ult i32 %632, 6
  %635 = zext i1 %634 to i8
  store i8 %635, i8* %14, align 1
  %636 = and i32 %633, 255
  %637 = tail call i32 @llvm.ctpop.i32(i32 %636)
  %638 = trunc i32 %637 to i8
  %639 = and i8 %638, 1
  %640 = xor i8 %639, 1
  store i8 %640, i8* %15, align 1
  %641 = xor i32 %633, %632
  %642 = lshr i32 %641, 4
  %643 = trunc i32 %642 to i8
  %644 = and i8 %643, 1
  store i8 %644, i8* %16, align 1
  %645 = icmp eq i32 %633, 0
  %646 = zext i1 %645 to i8
  store i8 %646, i8* %17, align 1
  %647 = lshr i32 %633, 31
  %648 = trunc i32 %647 to i8
  store i8 %648, i8* %18, align 1
  %649 = lshr i32 %632, 31
  %650 = xor i32 %647, %649
  %651 = add nuw nsw i32 %650, %649
  %652 = icmp eq i32 %651, 2
  %653 = zext i1 %652 to i8
  store i8 %653, i8* %19, align 1
  %654 = icmp ne i8 %648, 0
  %655 = xor i1 %654, %652
  %.v37 = select i1 %655, i64 10, i64 369
  %656 = add i64 %627, %.v37
  store i64 %656, i64* %3, align 8
  br i1 %655, label %block_4a3b6f, label %block_.L_4a3cd6

block_4a3b6f:                                     ; preds = %block_.L_4a3b65
  %657 = add i64 %628, -4
  %658 = add i64 %656, 7
  store i64 %658, i64* %3, align 8
  %659 = inttoptr i64 %657 to i32*
  store i32 0, i32* %659, align 4
  %.pre31 = load i64, i64* %3, align 8
  br label %block_.L_4a3b76

block_.L_4a3b76:                                  ; preds = %block_4a3b8a, %block_4a3b6f
  %660 = phi i64 [ %1155, %block_4a3b8a ], [ %.pre31, %block_4a3b6f ]
  %661 = load i64, i64* %RBP.i, align 8
  %662 = add i64 %661, -4
  %663 = add i64 %660, 3
  store i64 %663, i64* %3, align 8
  %664 = inttoptr i64 %662 to i32*
  %665 = load i32, i32* %664, align 4
  %666 = zext i32 %665 to i64
  store i64 %666, i64* %RAX.i497, align 8
  %667 = add i64 %661, -8
  %668 = add i64 %660, 7
  store i64 %668, i64* %3, align 8
  %669 = inttoptr i64 %667 to i32*
  %670 = load i32, i32* %669, align 4
  %671 = sext i32 %670 to i64
  store i64 %671, i64* %RCX.i489, align 8
  %672 = shl nsw i64 %671, 2
  %673 = add nsw i64 %672, 7489456
  %674 = add i64 %660, 14
  store i64 %674, i64* %3, align 8
  %675 = inttoptr i64 %673 to i32*
  %676 = load i32, i32* %675, align 4
  %677 = sub i32 %665, %676
  %678 = icmp ult i32 %665, %676
  %679 = zext i1 %678 to i8
  store i8 %679, i8* %14, align 1
  %680 = and i32 %677, 255
  %681 = tail call i32 @llvm.ctpop.i32(i32 %680)
  %682 = trunc i32 %681 to i8
  %683 = and i8 %682, 1
  %684 = xor i8 %683, 1
  store i8 %684, i8* %15, align 1
  %685 = xor i32 %676, %665
  %686 = xor i32 %685, %677
  %687 = lshr i32 %686, 4
  %688 = trunc i32 %687 to i8
  %689 = and i8 %688, 1
  store i8 %689, i8* %16, align 1
  %690 = icmp eq i32 %677, 0
  %691 = zext i1 %690 to i8
  store i8 %691, i8* %17, align 1
  %692 = lshr i32 %677, 31
  %693 = trunc i32 %692 to i8
  store i8 %693, i8* %18, align 1
  %694 = lshr i32 %665, 31
  %695 = lshr i32 %676, 31
  %696 = xor i32 %695, %694
  %697 = xor i32 %692, %694
  %698 = add nuw nsw i32 %697, %696
  %699 = icmp eq i32 %698, 2
  %700 = zext i1 %699 to i8
  store i8 %700, i8* %19, align 1
  %701 = icmp ne i8 %693, 0
  %702 = xor i1 %701, %699
  %.v = select i1 %702, i64 20, i64 333
  %703 = add i64 %660, %.v
  store i64 %703, i64* %3, align 8
  br i1 %702, label %block_4a3b8a, label %block_.L_4a3cc3

block_4a3b8a:                                     ; preds = %block_.L_4a3b76
  store i64 0, i64* %RAX.i497, align 8
  store i8 0, i8* %14, align 1
  store i8 1, i8* %15, align 1
  store i8 1, i8* %17, align 1
  store i8 0, i8* %18, align 1
  store i8 0, i8* %19, align 1
  store i8 0, i8* %16, align 1
  store i64 1, i64* %RCX.i489, align 8
  %704 = add i64 %703, 11
  store i64 %704, i64* %3, align 8
  %705 = load i32, i32* %669, align 4
  %706 = sext i32 %705 to i64
  store i64 %706, i64* %RDX.i487, align 8
  %707 = shl nsw i64 %706, 3
  %708 = add nsw i64 %707, 7482144
  %709 = add i64 %703, 19
  store i64 %709, i64* %3, align 8
  %710 = inttoptr i64 %708 to i64*
  %711 = load i64, i64* %710, align 8
  store i64 %711, i64* %RDX.i487, align 8
  %712 = add i64 %703, 23
  store i64 %712, i64* %3, align 8
  %713 = load i32, i32* %664, align 4
  %714 = sext i32 %713 to i64
  store i64 %714, i64* %RSI.i484, align 8
  %715 = shl nsw i64 %714, 3
  %716 = add i64 %715, %711
  %717 = add i64 %703, 27
  store i64 %717, i64* %3, align 8
  %718 = inttoptr i64 %716 to i64*
  %719 = load i64, i64* %718, align 8
  store i64 %719, i64* %RDX.i487, align 8
  %720 = add i64 %719, 4
  %721 = add i64 %703, 30
  store i64 %721, i64* %3, align 8
  %722 = inttoptr i64 %720 to i32*
  %723 = load i32, i32* %722, align 4
  %724 = shl i32 %723, 1
  %725 = icmp slt i32 %723, 0
  %726 = icmp slt i32 %724, 0
  %727 = xor i1 %725, %726
  %728 = zext i32 %724 to i64
  store i64 %728, i64* %RDI.i479, align 8
  %.lobit13 = lshr i32 %723, 31
  %729 = trunc i32 %.lobit13 to i8
  store i8 %729, i8* %14, align 1
  %730 = and i32 %724, 254
  %731 = tail call i32 @llvm.ctpop.i32(i32 %730)
  %732 = trunc i32 %731 to i8
  %733 = and i8 %732, 1
  %734 = xor i8 %733, 1
  store i8 %734, i8* %15, align 1
  store i8 0, i8* %16, align 1
  %735 = icmp eq i32 %724, 0
  %736 = zext i1 %735 to i8
  store i8 %736, i8* %17, align 1
  %737 = lshr i32 %723, 30
  %738 = trunc i32 %737 to i8
  %739 = and i8 %738, 1
  store i8 %739, i8* %18, align 1
  %740 = zext i1 %727 to i8
  store i8 %740, i8* %19, align 1
  %741 = add i64 %703, 36
  store i64 %741, i64* %3, align 8
  %742 = load i32, i32* %669, align 4
  %743 = sext i32 %742 to i64
  store i64 %743, i64* %RDX.i487, align 8
  %744 = shl nsw i64 %743, 3
  %745 = add nsw i64 %744, 7482144
  %746 = add i64 %703, 44
  store i64 %746, i64* %3, align 8
  %747 = inttoptr i64 %745 to i64*
  %748 = load i64, i64* %747, align 8
  store i64 %748, i64* %RDX.i487, align 8
  %749 = add i64 %703, 48
  store i64 %749, i64* %3, align 8
  %750 = load i32, i32* %664, align 4
  %751 = sext i32 %750 to i64
  store i64 %751, i64* %RSI.i484, align 8
  %752 = shl nsw i64 %751, 3
  %753 = add i64 %752, %748
  %754 = add i64 %703, 52
  store i64 %754, i64* %3, align 8
  %755 = inttoptr i64 %753 to i64*
  %756 = load i64, i64* %755, align 8
  store i64 %756, i64* %RDX.i487, align 8
  %757 = add i64 %703, 55
  store i64 %757, i64* %3, align 8
  %758 = inttoptr i64 %756 to i32*
  %759 = load i32, i32* %758, align 4
  %760 = icmp eq i32 %759, 2
  %761 = load i32, i32* %ECX.i463, align 4
  %762 = zext i32 %761 to i64
  %763 = load i64, i64* %RAX.i497, align 8
  %764 = select i1 %760, i64 %762, i64 %763
  %765 = and i64 %764, 4294967295
  store i64 %765, i64* %RAX.i497, align 8
  %766 = trunc i64 %764 to i32
  %767 = add i32 %766, %724
  %768 = zext i32 %767 to i64
  store i64 %768, i64* %RDI.i479, align 8
  %769 = sext i32 %767 to i64
  store i64 %769, i64* %RDX.i487, align 8
  %770 = load i64, i64* bitcast (%G_0x70fcf0_type* @G_0x70fcf0 to i64*), align 8
  %771 = add i64 %770, 24
  store i64 %771, i64* %RSI.i484, align 8
  %772 = icmp ugt i64 %770, -25
  %773 = zext i1 %772 to i8
  store i8 %773, i8* %14, align 1
  %774 = trunc i64 %771 to i32
  %775 = and i32 %774, 255
  %776 = tail call i32 @llvm.ctpop.i32(i32 %775)
  %777 = trunc i32 %776 to i8
  %778 = and i8 %777, 1
  %779 = xor i8 %778, 1
  store i8 %779, i8* %15, align 1
  %780 = xor i64 %770, 16
  %781 = xor i64 %780, %771
  %782 = lshr i64 %781, 4
  %783 = trunc i64 %782 to i8
  %784 = and i8 %783, 1
  store i8 %784, i8* %16, align 1
  %785 = icmp eq i64 %771, 0
  %786 = zext i1 %785 to i8
  store i8 %786, i8* %17, align 1
  %787 = lshr i64 %771, 63
  %788 = trunc i64 %787 to i8
  store i8 %788, i8* %18, align 1
  %789 = lshr i64 %770, 63
  %790 = xor i64 %787, %789
  %791 = add nuw nsw i64 %790, %787
  %792 = icmp eq i64 %791, 2
  %793 = zext i1 %792 to i8
  store i8 %793, i8* %19, align 1
  %794 = load i64, i64* %RBP.i, align 8
  %795 = add i64 %794, -8
  %796 = add i64 %703, 79
  store i64 %796, i64* %3, align 8
  %797 = inttoptr i64 %795 to i32*
  %798 = load i32, i32* %797, align 4
  %799 = sext i32 %798 to i64
  %800 = mul nsw i64 %799, 264
  store i64 %800, i64* %R8.i453, align 8
  %801 = lshr i64 %800, 63
  %802 = add i64 %800, %771
  store i64 %802, i64* %RSI.i484, align 8
  %803 = icmp ult i64 %802, %771
  %804 = icmp ult i64 %802, %800
  %805 = or i1 %803, %804
  %806 = zext i1 %805 to i8
  store i8 %806, i8* %14, align 1
  %807 = trunc i64 %802 to i32
  %808 = and i32 %807, 255
  %809 = tail call i32 @llvm.ctpop.i32(i32 %808)
  %810 = trunc i32 %809 to i8
  %811 = and i8 %810, 1
  %812 = xor i8 %811, 1
  store i8 %812, i8* %15, align 1
  %813 = xor i64 %800, %771
  %814 = xor i64 %813, %802
  %815 = lshr i64 %814, 4
  %816 = trunc i64 %815 to i8
  %817 = and i8 %816, 1
  store i8 %817, i8* %16, align 1
  %818 = icmp eq i64 %802, 0
  %819 = zext i1 %818 to i8
  store i8 %819, i8* %17, align 1
  %820 = lshr i64 %802, 63
  %821 = trunc i64 %820 to i8
  store i8 %821, i8* %18, align 1
  %822 = xor i64 %820, %787
  %823 = xor i64 %820, %801
  %824 = add nuw nsw i64 %822, %823
  %825 = icmp eq i64 %824, 2
  %826 = zext i1 %825 to i8
  store i8 %826, i8* %19, align 1
  %827 = add i64 %794, -4
  %828 = add i64 %703, 93
  store i64 %828, i64* %3, align 8
  %829 = inttoptr i64 %827 to i32*
  %830 = load i32, i32* %829, align 4
  %831 = sext i32 %830 to i64
  store i64 %831, i64* %R8.i453, align 8
  %832 = shl nsw i64 %831, 3
  %833 = add i64 %832, %802
  %834 = load i64, i64* %RDX.i487, align 8
  %835 = add i64 %703, 97
  store i64 %835, i64* %3, align 8
  %836 = inttoptr i64 %833 to i64*
  store i64 %834, i64* %836, align 8
  %837 = load i64, i64* %RBP.i, align 8
  %838 = add i64 %837, -8
  %839 = load i64, i64* %3, align 8
  %840 = add i64 %839, 4
  store i64 %840, i64* %3, align 8
  %841 = inttoptr i64 %838 to i32*
  %842 = load i32, i32* %841, align 4
  %843 = sext i32 %842 to i64
  store i64 %843, i64* %RDX.i487, align 8
  %844 = shl nsw i64 %843, 3
  %845 = add nsw i64 %844, 7482144
  %846 = add i64 %839, 12
  store i64 %846, i64* %3, align 8
  %847 = inttoptr i64 %845 to i64*
  %848 = load i64, i64* %847, align 8
  store i64 %848, i64* %RDX.i487, align 8
  %849 = add i64 %837, -4
  %850 = add i64 %839, 16
  store i64 %850, i64* %3, align 8
  %851 = inttoptr i64 %849 to i32*
  %852 = load i32, i32* %851, align 4
  %853 = sext i32 %852 to i64
  store i64 %853, i64* %RSI.i484, align 8
  %854 = shl nsw i64 %853, 3
  %855 = add i64 %854, %848
  %856 = add i64 %839, 20
  store i64 %856, i64* %3, align 8
  %857 = inttoptr i64 %855 to i64*
  %858 = load i64, i64* %857, align 8
  store i64 %858, i64* %RDX.i487, align 8
  %859 = add i64 %858, 16
  %860 = add i64 %839, 23
  store i64 %860, i64* %3, align 8
  %861 = inttoptr i64 %859 to i32*
  %862 = load i32, i32* %861, align 4
  %863 = shl i32 %862, 1
  %864 = zext i32 %863 to i64
  store i64 %864, i64* %RAX.i497, align 8
  %865 = sext i32 %863 to i64
  store i64 %865, i64* %RDX.i487, align 8
  %866 = load i64, i64* bitcast (%G_0x70fcf0_type* @G_0x70fcf0 to i64*), align 8
  %867 = add i64 %866, 1608
  store i64 %867, i64* %RSI.i484, align 8
  %868 = icmp ugt i64 %866, -1609
  %869 = zext i1 %868 to i8
  store i8 %869, i8* %14, align 1
  %870 = trunc i64 %867 to i32
  %871 = and i32 %870, 255
  %872 = tail call i32 @llvm.ctpop.i32(i32 %871)
  %873 = trunc i32 %872 to i8
  %874 = and i8 %873, 1
  %875 = xor i8 %874, 1
  store i8 %875, i8* %15, align 1
  %876 = xor i64 %867, %866
  %877 = lshr i64 %876, 4
  %878 = trunc i64 %877 to i8
  %879 = and i8 %878, 1
  store i8 %879, i8* %16, align 1
  %880 = icmp eq i64 %867, 0
  %881 = zext i1 %880 to i8
  store i8 %881, i8* %17, align 1
  %882 = lshr i64 %867, 63
  %883 = trunc i64 %882 to i8
  store i8 %883, i8* %18, align 1
  %884 = lshr i64 %866, 63
  %885 = xor i64 %882, %884
  %886 = add nuw nsw i64 %885, %882
  %887 = icmp eq i64 %886, 2
  %888 = zext i1 %887 to i8
  store i8 %888, i8* %19, align 1
  %889 = load i64, i64* %RBP.i, align 8
  %890 = add i64 %889, -8
  %891 = add i64 %839, 47
  store i64 %891, i64* %3, align 8
  %892 = inttoptr i64 %890 to i32*
  %893 = load i32, i32* %892, align 4
  %894 = sext i32 %893 to i64
  %895 = mul nsw i64 %894, 264
  store i64 %895, i64* %R8.i453, align 8
  %896 = lshr i64 %895, 63
  %897 = add i64 %895, %867
  store i64 %897, i64* %RSI.i484, align 8
  %898 = icmp ult i64 %897, %867
  %899 = icmp ult i64 %897, %895
  %900 = or i1 %898, %899
  %901 = zext i1 %900 to i8
  store i8 %901, i8* %14, align 1
  %902 = trunc i64 %897 to i32
  %903 = and i32 %902, 255
  %904 = tail call i32 @llvm.ctpop.i32(i32 %903)
  %905 = trunc i32 %904 to i8
  %906 = and i8 %905, 1
  %907 = xor i8 %906, 1
  store i8 %907, i8* %15, align 1
  %908 = xor i64 %895, %867
  %909 = xor i64 %908, %897
  %910 = lshr i64 %909, 4
  %911 = trunc i64 %910 to i8
  %912 = and i8 %911, 1
  store i8 %912, i8* %16, align 1
  %913 = icmp eq i64 %897, 0
  %914 = zext i1 %913 to i8
  store i8 %914, i8* %17, align 1
  %915 = lshr i64 %897, 63
  %916 = trunc i64 %915 to i8
  store i8 %916, i8* %18, align 1
  %917 = xor i64 %915, %882
  %918 = xor i64 %915, %896
  %919 = add nuw nsw i64 %917, %918
  %920 = icmp eq i64 %919, 2
  %921 = zext i1 %920 to i8
  store i8 %921, i8* %19, align 1
  %922 = add i64 %889, -4
  %923 = add i64 %839, 61
  store i64 %923, i64* %3, align 8
  %924 = inttoptr i64 %922 to i32*
  %925 = load i32, i32* %924, align 4
  %926 = sext i32 %925 to i64
  store i64 %926, i64* %R8.i453, align 8
  %927 = shl nsw i64 %926, 3
  %928 = add i64 %927, %897
  %929 = load i64, i64* %RDX.i487, align 8
  %930 = add i64 %839, 65
  store i64 %930, i64* %3, align 8
  %931 = inttoptr i64 %928 to i64*
  store i64 %929, i64* %931, align 8
  %932 = load i64, i64* %RBP.i, align 8
  %933 = add i64 %932, -8
  %934 = load i64, i64* %3, align 8
  %935 = add i64 %934, 4
  store i64 %935, i64* %3, align 8
  %936 = inttoptr i64 %933 to i32*
  %937 = load i32, i32* %936, align 4
  %938 = sext i32 %937 to i64
  store i64 %938, i64* %RDX.i487, align 8
  %939 = shl nsw i64 %938, 3
  %940 = add nsw i64 %939, 7482144
  %941 = add i64 %934, 12
  store i64 %941, i64* %3, align 8
  %942 = inttoptr i64 %940 to i64*
  %943 = load i64, i64* %942, align 8
  store i64 %943, i64* %RDX.i487, align 8
  %944 = add i64 %932, -4
  %945 = add i64 %934, 16
  store i64 %945, i64* %3, align 8
  %946 = inttoptr i64 %944 to i32*
  %947 = load i32, i32* %946, align 4
  %948 = sext i32 %947 to i64
  store i64 %948, i64* %RSI.i484, align 8
  %949 = shl nsw i64 %948, 3
  %950 = add i64 %949, %943
  %951 = add i64 %934, 20
  store i64 %951, i64* %3, align 8
  %952 = inttoptr i64 %950 to i64*
  %953 = load i64, i64* %952, align 8
  store i64 %953, i64* %RDX.i487, align 8
  %954 = add i64 %953, 8
  %955 = add i64 %934, 23
  store i64 %955, i64* %3, align 8
  %956 = inttoptr i64 %954 to i32*
  %957 = load i32, i32* %956, align 4
  %958 = shl i32 %957, 1
  %959 = zext i32 %958 to i64
  store i64 %959, i64* %RAX.i497, align 8
  %960 = sext i32 %958 to i64
  store i64 %960, i64* %RDX.i487, align 8
  %961 = load i64, i64* bitcast (%G_0x70fcf0_type* @G_0x70fcf0 to i64*), align 8
  %962 = add i64 %961, 3192
  store i64 %962, i64* %RSI.i484, align 8
  %963 = icmp ugt i64 %961, -3193
  %964 = zext i1 %963 to i8
  store i8 %964, i8* %14, align 1
  %965 = trunc i64 %962 to i32
  %966 = and i32 %965, 255
  %967 = tail call i32 @llvm.ctpop.i32(i32 %966)
  %968 = trunc i32 %967 to i8
  %969 = and i8 %968, 1
  %970 = xor i8 %969, 1
  store i8 %970, i8* %15, align 1
  %971 = xor i64 %961, 16
  %972 = xor i64 %971, %962
  %973 = lshr i64 %972, 4
  %974 = trunc i64 %973 to i8
  %975 = and i8 %974, 1
  store i8 %975, i8* %16, align 1
  %976 = icmp eq i64 %962, 0
  %977 = zext i1 %976 to i8
  store i8 %977, i8* %17, align 1
  %978 = lshr i64 %962, 63
  %979 = trunc i64 %978 to i8
  store i8 %979, i8* %18, align 1
  %980 = lshr i64 %961, 63
  %981 = xor i64 %978, %980
  %982 = add nuw nsw i64 %981, %978
  %983 = icmp eq i64 %982, 2
  %984 = zext i1 %983 to i8
  store i8 %984, i8* %19, align 1
  %985 = load i64, i64* %RBP.i, align 8
  %986 = add i64 %985, -8
  %987 = add i64 %934, 47
  store i64 %987, i64* %3, align 8
  %988 = inttoptr i64 %986 to i32*
  %989 = load i32, i32* %988, align 4
  %990 = sext i32 %989 to i64
  %991 = mul nsw i64 %990, 264
  store i64 %991, i64* %R8.i453, align 8
  %992 = lshr i64 %991, 63
  %993 = add i64 %991, %962
  store i64 %993, i64* %RSI.i484, align 8
  %994 = icmp ult i64 %993, %962
  %995 = icmp ult i64 %993, %991
  %996 = or i1 %994, %995
  %997 = zext i1 %996 to i8
  store i8 %997, i8* %14, align 1
  %998 = trunc i64 %993 to i32
  %999 = and i32 %998, 255
  %1000 = tail call i32 @llvm.ctpop.i32(i32 %999)
  %1001 = trunc i32 %1000 to i8
  %1002 = and i8 %1001, 1
  %1003 = xor i8 %1002, 1
  store i8 %1003, i8* %15, align 1
  %1004 = xor i64 %991, %962
  %1005 = xor i64 %1004, %993
  %1006 = lshr i64 %1005, 4
  %1007 = trunc i64 %1006 to i8
  %1008 = and i8 %1007, 1
  store i8 %1008, i8* %16, align 1
  %1009 = icmp eq i64 %993, 0
  %1010 = zext i1 %1009 to i8
  store i8 %1010, i8* %17, align 1
  %1011 = lshr i64 %993, 63
  %1012 = trunc i64 %1011 to i8
  store i8 %1012, i8* %18, align 1
  %1013 = xor i64 %1011, %978
  %1014 = xor i64 %1011, %992
  %1015 = add nuw nsw i64 %1013, %1014
  %1016 = icmp eq i64 %1015, 2
  %1017 = zext i1 %1016 to i8
  store i8 %1017, i8* %19, align 1
  %1018 = add i64 %985, -4
  %1019 = add i64 %934, 61
  store i64 %1019, i64* %3, align 8
  %1020 = inttoptr i64 %1018 to i32*
  %1021 = load i32, i32* %1020, align 4
  %1022 = sext i32 %1021 to i64
  store i64 %1022, i64* %R8.i453, align 8
  %1023 = shl nsw i64 %1022, 3
  %1024 = add i64 %1023, %993
  %1025 = load i64, i64* %RDX.i487, align 8
  %1026 = add i64 %934, 65
  store i64 %1026, i64* %3, align 8
  %1027 = inttoptr i64 %1024 to i64*
  store i64 %1025, i64* %1027, align 8
  %1028 = load i64, i64* %RBP.i, align 8
  %1029 = add i64 %1028, -8
  %1030 = load i64, i64* %3, align 8
  %1031 = add i64 %1030, 4
  store i64 %1031, i64* %3, align 8
  %1032 = inttoptr i64 %1029 to i32*
  %1033 = load i32, i32* %1032, align 4
  %1034 = sext i32 %1033 to i64
  store i64 %1034, i64* %RDX.i487, align 8
  %1035 = shl nsw i64 %1034, 3
  %1036 = add nsw i64 %1035, 7482144
  %1037 = add i64 %1030, 12
  store i64 %1037, i64* %3, align 8
  %1038 = inttoptr i64 %1036 to i64*
  %1039 = load i64, i64* %1038, align 8
  store i64 %1039, i64* %RDX.i487, align 8
  %1040 = add i64 %1028, -4
  %1041 = add i64 %1030, 16
  store i64 %1041, i64* %3, align 8
  %1042 = inttoptr i64 %1040 to i32*
  %1043 = load i32, i32* %1042, align 4
  %1044 = sext i32 %1043 to i64
  store i64 %1044, i64* %RSI.i484, align 8
  %1045 = shl nsw i64 %1044, 3
  %1046 = add i64 %1045, %1039
  %1047 = add i64 %1030, 20
  store i64 %1047, i64* %3, align 8
  %1048 = inttoptr i64 %1046 to i64*
  %1049 = load i64, i64* %1048, align 8
  store i64 %1049, i64* %RDX.i487, align 8
  %1050 = add i64 %1049, 12
  %1051 = add i64 %1030, 23
  store i64 %1051, i64* %3, align 8
  %1052 = inttoptr i64 %1050 to i32*
  %1053 = load i32, i32* %1052, align 4
  %1054 = shl i32 %1053, 1
  %1055 = or i32 %1054, 1
  %1056 = zext i32 %1055 to i64
  store i64 %1056, i64* %RAX.i497, align 8
  %1057 = sext i32 %1055 to i64
  store i64 %1057, i64* %RDX.i487, align 8
  %1058 = load i64, i64* bitcast (%G_0x70fcf0_type* @G_0x70fcf0 to i64*), align 8
  %1059 = add i64 %1058, 4776
  store i64 %1059, i64* %RSI.i484, align 8
  %1060 = icmp ugt i64 %1058, -4777
  %1061 = zext i1 %1060 to i8
  store i8 %1061, i8* %14, align 1
  %1062 = trunc i64 %1059 to i32
  %1063 = and i32 %1062, 255
  %1064 = tail call i32 @llvm.ctpop.i32(i32 %1063)
  %1065 = trunc i32 %1064 to i8
  %1066 = and i8 %1065, 1
  %1067 = xor i8 %1066, 1
  store i8 %1067, i8* %15, align 1
  %1068 = xor i64 %1059, %1058
  %1069 = lshr i64 %1068, 4
  %1070 = trunc i64 %1069 to i8
  %1071 = and i8 %1070, 1
  store i8 %1071, i8* %16, align 1
  %1072 = icmp eq i64 %1059, 0
  %1073 = zext i1 %1072 to i8
  store i8 %1073, i8* %17, align 1
  %1074 = lshr i64 %1059, 63
  %1075 = trunc i64 %1074 to i8
  store i8 %1075, i8* %18, align 1
  %1076 = lshr i64 %1058, 63
  %1077 = xor i64 %1074, %1076
  %1078 = add nuw nsw i64 %1077, %1074
  %1079 = icmp eq i64 %1078, 2
  %1080 = zext i1 %1079 to i8
  store i8 %1080, i8* %19, align 1
  %1081 = load i64, i64* %RBP.i, align 8
  %1082 = add i64 %1081, -8
  %1083 = add i64 %1030, 50
  store i64 %1083, i64* %3, align 8
  %1084 = inttoptr i64 %1082 to i32*
  %1085 = load i32, i32* %1084, align 4
  %1086 = sext i32 %1085 to i64
  %1087 = mul nsw i64 %1086, 264
  store i64 %1087, i64* %R8.i453, align 8
  %1088 = lshr i64 %1087, 63
  %1089 = add i64 %1087, %1059
  store i64 %1089, i64* %RSI.i484, align 8
  %1090 = icmp ult i64 %1089, %1059
  %1091 = icmp ult i64 %1089, %1087
  %1092 = or i1 %1090, %1091
  %1093 = zext i1 %1092 to i8
  store i8 %1093, i8* %14, align 1
  %1094 = trunc i64 %1089 to i32
  %1095 = and i32 %1094, 255
  %1096 = tail call i32 @llvm.ctpop.i32(i32 %1095)
  %1097 = trunc i32 %1096 to i8
  %1098 = and i8 %1097, 1
  %1099 = xor i8 %1098, 1
  store i8 %1099, i8* %15, align 1
  %1100 = xor i64 %1087, %1059
  %1101 = xor i64 %1100, %1089
  %1102 = lshr i64 %1101, 4
  %1103 = trunc i64 %1102 to i8
  %1104 = and i8 %1103, 1
  store i8 %1104, i8* %16, align 1
  %1105 = icmp eq i64 %1089, 0
  %1106 = zext i1 %1105 to i8
  store i8 %1106, i8* %17, align 1
  %1107 = lshr i64 %1089, 63
  %1108 = trunc i64 %1107 to i8
  store i8 %1108, i8* %18, align 1
  %1109 = xor i64 %1107, %1074
  %1110 = xor i64 %1107, %1088
  %1111 = add nuw nsw i64 %1109, %1110
  %1112 = icmp eq i64 %1111, 2
  %1113 = zext i1 %1112 to i8
  store i8 %1113, i8* %19, align 1
  %1114 = add i64 %1081, -4
  %1115 = add i64 %1030, 64
  store i64 %1115, i64* %3, align 8
  %1116 = inttoptr i64 %1114 to i32*
  %1117 = load i32, i32* %1116, align 4
  %1118 = sext i32 %1117 to i64
  store i64 %1118, i64* %R8.i453, align 8
  %1119 = shl nsw i64 %1118, 3
  %1120 = add i64 %1119, %1089
  %1121 = load i64, i64* %RDX.i487, align 8
  %1122 = add i64 %1030, 68
  store i64 %1122, i64* %3, align 8
  %1123 = inttoptr i64 %1120 to i64*
  store i64 %1121, i64* %1123, align 8
  %1124 = load i64, i64* %RBP.i, align 8
  %1125 = add i64 %1124, -4
  %1126 = load i64, i64* %3, align 8
  %1127 = add i64 %1126, 3
  store i64 %1127, i64* %3, align 8
  %1128 = inttoptr i64 %1125 to i32*
  %1129 = load i32, i32* %1128, align 4
  %1130 = add i32 %1129, 1
  %1131 = zext i32 %1130 to i64
  store i64 %1131, i64* %RAX.i497, align 8
  %1132 = icmp eq i32 %1129, -1
  %1133 = icmp eq i32 %1130, 0
  %1134 = or i1 %1132, %1133
  %1135 = zext i1 %1134 to i8
  store i8 %1135, i8* %14, align 1
  %1136 = and i32 %1130, 255
  %1137 = tail call i32 @llvm.ctpop.i32(i32 %1136)
  %1138 = trunc i32 %1137 to i8
  %1139 = and i8 %1138, 1
  %1140 = xor i8 %1139, 1
  store i8 %1140, i8* %15, align 1
  %1141 = xor i32 %1130, %1129
  %1142 = lshr i32 %1141, 4
  %1143 = trunc i32 %1142 to i8
  %1144 = and i8 %1143, 1
  store i8 %1144, i8* %16, align 1
  %1145 = zext i1 %1133 to i8
  store i8 %1145, i8* %17, align 1
  %1146 = lshr i32 %1130, 31
  %1147 = trunc i32 %1146 to i8
  store i8 %1147, i8* %18, align 1
  %1148 = lshr i32 %1129, 31
  %1149 = xor i32 %1146, %1148
  %1150 = add nuw nsw i32 %1149, %1146
  %1151 = icmp eq i32 %1150, 2
  %1152 = zext i1 %1151 to i8
  store i8 %1152, i8* %19, align 1
  %1153 = add i64 %1126, 9
  store i64 %1153, i64* %3, align 8
  store i32 %1130, i32* %1128, align 4
  %1154 = load i64, i64* %3, align 8
  %1155 = add i64 %1154, -328
  store i64 %1155, i64* %3, align 8
  br label %block_.L_4a3b76

block_.L_4a3cc3:                                  ; preds = %block_.L_4a3b76
  %1156 = add i64 %703, 8
  store i64 %1156, i64* %3, align 8
  %1157 = load i32, i32* %669, align 4
  %1158 = add i32 %1157, 1
  %1159 = zext i32 %1158 to i64
  store i64 %1159, i64* %RAX.i497, align 8
  %1160 = icmp eq i32 %1157, -1
  %1161 = icmp eq i32 %1158, 0
  %1162 = or i1 %1160, %1161
  %1163 = zext i1 %1162 to i8
  store i8 %1163, i8* %14, align 1
  %1164 = and i32 %1158, 255
  %1165 = tail call i32 @llvm.ctpop.i32(i32 %1164)
  %1166 = trunc i32 %1165 to i8
  %1167 = and i8 %1166, 1
  %1168 = xor i8 %1167, 1
  store i8 %1168, i8* %15, align 1
  %1169 = xor i32 %1158, %1157
  %1170 = lshr i32 %1169, 4
  %1171 = trunc i32 %1170 to i8
  %1172 = and i8 %1171, 1
  store i8 %1172, i8* %16, align 1
  %1173 = zext i1 %1161 to i8
  store i8 %1173, i8* %17, align 1
  %1174 = lshr i32 %1158, 31
  %1175 = trunc i32 %1174 to i8
  store i8 %1175, i8* %18, align 1
  %1176 = lshr i32 %1157, 31
  %1177 = xor i32 %1174, %1176
  %1178 = add nuw nsw i32 %1177, %1174
  %1179 = icmp eq i32 %1178, 2
  %1180 = zext i1 %1179 to i8
  store i8 %1180, i8* %19, align 1
  %1181 = add i64 %703, 14
  store i64 %1181, i64* %3, align 8
  store i32 %1158, i32* %669, align 4
  %1182 = load i64, i64* %3, align 8
  %1183 = add i64 %1182, -364
  store i64 %1183, i64* %3, align 8
  br label %block_.L_4a3b65

block_.L_4a3cd6:                                  ; preds = %block_.L_4a3b65
  %1184 = add i64 %656, 5
  store i64 %1184, i64* %3, align 8
  br label %block_.L_4a3cdb

block_.L_4a3cdb:                                  ; preds = %block_4a3b4c, %block_.L_4a3cd6
  %1185 = phi i64 [ %1184, %block_.L_4a3cd6 ], [ %623, %block_4a3b4c ]
  %1186 = add i64 %1185, 5
  store i64 %1186, i64* %3, align 8
  br label %block_.L_4a3ce0

block_.L_4a3ce0:                                  ; preds = %block_.L_4a3b37, %block_.L_4a3cdb
  %1187 = phi i64 [ %1186, %block_.L_4a3cdb ], [ %608, %block_.L_4a3b37 ]
  %1188 = add i64 %1187, 1
  store i64 %1188, i64* %3, align 8
  %1189 = load i64, i64* %6, align 8
  %1190 = add i64 %1189, 8
  %1191 = inttoptr i64 %1189 to i64*
  %1192 = load i64, i64* %1191, align 8
  store i64 %1192, i64* %RBP.i, align 8
  store i64 %1190, i64* %6, align 8
  %1193 = add i64 %1187, 2
  store i64 %1193, i64* %3, align 8
  %1194 = inttoptr i64 %1190 to i64*
  %1195 = load i64, i64* %1194, align 8
  store i64 %1195, i64* %3, align 8
  %1196 = add i64 %1189, 16
  store i64 %1196, i64* %6, align 8
  ret %struct.Memory* %2
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

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl_0x7247b0___eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %4 = load i32, i32* %EAX, align 4
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = load i32, i32* bitcast (%G_0x7247b0_type* @G_0x7247b0 to i32*), align 8
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
define %struct.Memory* @routine_jge_.L_4a3a3c(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movq_0x722b20___rdx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 8
  store i64 %4, i64* %PC, align 8
  %5 = load i64, i64* bitcast (%G_0x722b20_type* @G_0x722b20 to i64*), align 8
  store i64 %5, i64* %RDX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movslq_MINUS0x4__rbp____rsi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -4
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
define %struct.Memory* @routine_movl_0x4__rdx____edi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %RDX, align 8
  %4 = add i64 %3, 4
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
define %struct.Memory* @routine_shll__0x1___edi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %RDI, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 2
  store i64 %5, i64* %PC, align 8
  %6 = trunc i64 %3 to i32
  %7 = shl i32 %6, 1
  %8 = icmp slt i32 %6, 0
  %9 = icmp slt i32 %7, 0
  %10 = xor i1 %8, %9
  %11 = zext i32 %7 to i64
  store i64 %11, i64* %RDI, align 8
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
define %struct.Memory* @routine_cmpl__0x2____rdx_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = bitcast i64* %RDX to i32**
  %4 = load i32*, i32** %3, align 8
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 3
  store i64 %6, i64* %PC, align 8
  %7 = load i32, i32* %4, align 4
  %8 = add i32 %7, -2
  %9 = icmp ult i32 %7, 2
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
  %18 = xor i32 %8, %7
  %19 = lshr i32 %18, 4
  %20 = trunc i32 %19 to i8
  %21 = and i8 %20, 1
  %22 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %21, i8* %22, align 1
  %23 = icmp eq i32 %8, 0
  %24 = zext i1 %23 to i8
  %25 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %24, i8* %25, align 1
  %26 = lshr i32 %8, 31
  %27 = trunc i32 %26 to i8
  %28 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %27, i8* %28, align 1
  %29 = lshr i32 %7, 31
  %30 = xor i32 %26, %29
  %31 = add nuw nsw i32 %30, %29
  %32 = icmp eq i32 %31, 2
  %33 = zext i1 %32 to i8
  %34 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %33, i8* %34, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_cmovel__ecx___eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %ECX = bitcast %union.anon* %3 to i32*
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %4 = load i32, i32* %ECX, align 4
  %5 = zext i32 %4 to i64
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 3
  store i64 %7, i64* %PC, align 8
  %8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %9 = load i8, i8* %8, align 1
  %10 = icmp ne i8 %9, 0
  %11 = load i64, i64* %RAX, align 8
  %12 = select i1 %10, i64 %5, i64 %11
  %13 = and i64 %12, 4294967295
  store i64 %13, i64* %RAX, align 8
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
define %struct.Memory* @routine_movslq__edi___rdx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0
  %EDI = bitcast %union.anon* %3 to i32*
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %4 = load i32, i32* %EDI, align 4
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 3
  store i64 %6, i64* %PC, align 8
  %7 = sext i32 %4 to i64
  store i64 %7, i64* %RDX, align 8
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
define %struct.Memory* @routine_movslq_MINUS0x4__rbp____r8(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %R8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -4
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = sext i32 %8 to i64
  store i64 %9, i64* %R8, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__rdx__0x18__rsi__r8_8_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %R8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0, i32 0
  %3 = load i64, i64* %RSI, align 8
  %4 = load i64, i64* %R8, align 8
  %5 = shl i64 %4, 3
  %6 = add i64 %3, 24
  %7 = add i64 %6, %5
  %8 = load i64, i64* %RDX, align 8
  %9 = load i64, i64* %PC, align 8
  %10 = add i64 %9, 5
  store i64 %10, i64* %PC, align 8
  %11 = inttoptr i64 %7 to i64*
  store i64 %8, i64* %11, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_0x10__rdx____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %RDX, align 8
  %4 = add i64 %3, 16
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
define %struct.Memory* @routine_movslq__eax___rdx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %4 = load i32, i32* %EAX, align 4
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 3
  store i64 %6, i64* %PC, align 8
  %7 = sext i32 %4 to i64
  store i64 %7, i64* %RDX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__rdx__0x648__rsi__r8_8_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %R8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0, i32 0
  %3 = load i64, i64* %RSI, align 8
  %4 = load i64, i64* %R8, align 8
  %5 = shl i64 %4, 3
  %6 = add i64 %3, 1608
  %7 = add i64 %6, %5
  %8 = load i64, i64* %RDX, align 8
  %9 = load i64, i64* %PC, align 8
  %10 = add i64 %9, 8
  store i64 %10, i64* %PC, align 8
  %11 = inttoptr i64 %7 to i64*
  store i64 %8, i64* %11, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_0x8__rdx____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %RDX, align 8
  %4 = add i64 %3, 8
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
define %struct.Memory* @routine_movq__rdx__0xc78__rsi__r8_8_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %R8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0, i32 0
  %3 = load i64, i64* %RSI, align 8
  %4 = load i64, i64* %R8, align 8
  %5 = shl i64 %4, 3
  %6 = add i64 %3, 3192
  %7 = add i64 %6, %5
  %8 = load i64, i64* %RDX, align 8
  %9 = load i64, i64* %PC, align 8
  %10 = add i64 %9, 8
  store i64 %10, i64* %PC, align 8
  %11 = inttoptr i64 %7 to i64*
  store i64 %8, i64* %11, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_0xc__rdx____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %RDX, align 8
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
define %struct.Memory* @routine_movq__rdx__0x12a8__rsi__r8_8_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %R8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0, i32 0
  %3 = load i64, i64* %RSI, align 8
  %4 = load i64, i64* %R8, align 8
  %5 = shl i64 %4, 3
  %6 = add i64 %3, 4776
  %7 = add i64 %6, %5
  %8 = load i64, i64* %RDX, align 8
  %9 = load i64, i64* %PC, align 8
  %10 = add i64 %9, 8
  store i64 %10, i64* %PC, align 8
  %11 = inttoptr i64 %7 to i64*
  store i64 %8, i64* %11, align 8
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
define %struct.Memory* @routine_jmpq_.L_4a394b(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl_0x7247b4___eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %4 = load i32, i32* %EAX, align 4
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = load i32, i32* bitcast (%G_0x7247b4_type* @G_0x7247b4 to i32*), align 8
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
define %struct.Memory* @routine_jge_.L_4a3b37(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movq_0x722b28___rdx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 8
  store i64 %4, i64* %PC, align 8
  %5 = load i64, i64* bitcast (%G_0x722b28_type* @G_0x722b28 to i64*), align 8
  store i64 %5, i64* %RDX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__rdx__0x120__rsi__r8_8_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %R8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0, i32 0
  %3 = load i64, i64* %RSI, align 8
  %4 = load i64, i64* %R8, align 8
  %5 = shl i64 %4, 3
  %6 = add i64 %3, 288
  %7 = add i64 %6, %5
  %8 = load i64, i64* %RDX, align 8
  %9 = load i64, i64* %PC, align 8
  %10 = add i64 %9, 8
  store i64 %10, i64* %PC, align 8
  %11 = inttoptr i64 %7 to i64*
  store i64 %8, i64* %11, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__rdx__0x750__rsi__r8_8_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %R8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0, i32 0
  %3 = load i64, i64* %RSI, align 8
  %4 = load i64, i64* %R8, align 8
  %5 = shl i64 %4, 3
  %6 = add i64 %3, 1872
  %7 = add i64 %6, %5
  %8 = load i64, i64* %RDX, align 8
  %9 = load i64, i64* %PC, align 8
  %10 = add i64 %9, 8
  store i64 %10, i64* %PC, align 8
  %11 = inttoptr i64 %7 to i64*
  store i64 %8, i64* %11, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__rdx__0xd80__rsi__r8_8_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %R8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0, i32 0
  %3 = load i64, i64* %RSI, align 8
  %4 = load i64, i64* %R8, align 8
  %5 = shl i64 %4, 3
  %6 = add i64 %3, 3456
  %7 = add i64 %6, %5
  %8 = load i64, i64* %RDX, align 8
  %9 = load i64, i64* %PC, align 8
  %10 = add i64 %9, 8
  store i64 %10, i64* %PC, align 8
  %11 = inttoptr i64 %7 to i64*
  store i64 %8, i64* %11, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__rdx__0x13b0__rsi__r8_8_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %R8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0, i32 0
  %3 = load i64, i64* %RSI, align 8
  %4 = load i64, i64* %R8, align 8
  %5 = shl i64 %4, 3
  %6 = add i64 %3, 5040
  %7 = add i64 %6, %5
  %8 = load i64, i64* %RDX, align 8
  %9 = load i64, i64* %PC, align 8
  %10 = add i64 %9, 8
  store i64 %10, i64* %PC, align 8
  %11 = inttoptr i64 %7 to i64*
  store i64 %8, i64* %11, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_4a3a43(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_0x722cb0___rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 8
  store i64 %4, i64* %PC, align 8
  %5 = load i64, i64* bitcast (%G_0x722cb0_type* @G_0x722cb0 to i64*), align 8
  store i64 %5, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__0x0__0x47c__rax_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = add i64 %3, 1148
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
define %struct.Memory* @routine_jne_.L_4a3ce0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__0x0__0x1c__rax_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
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
define %struct.Memory* @routine_jne_.L_4a3cdb(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl__0x2__MINUS0x8__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -8
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  store i32 2, i32* %7, align 4
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__0x6__MINUS0x8__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
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
  %9 = add i32 %8, -6
  %10 = icmp ult i32 %8, 6
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
define %struct.Memory* @routine_jge_.L_4a3cd6(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movslq_MINUS0x8__rbp____rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -8
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
define %struct.Memory* @routine_cmpl_0x7247b0___rcx_4____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %4 = load i32, i32* %EAX, align 4
  %5 = load i64, i64* %RCX, align 8
  %6 = shl i64 %5, 2
  %7 = add i64 %6, 7489456
  %8 = load i64, i64* %PC, align 8
  %9 = add i64 %8, 7
  store i64 %9, i64* %PC, align 8
  %10 = inttoptr i64 %7 to i32*
  %11 = load i32, i32* %10, align 4
  %12 = sub i32 %4, %11
  %13 = icmp ult i32 %4, %11
  %14 = zext i1 %13 to i8
  %15 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %14, i8* %15, align 1
  %16 = and i32 %12, 255
  %17 = tail call i32 @llvm.ctpop.i32(i32 %16)
  %18 = trunc i32 %17 to i8
  %19 = and i8 %18, 1
  %20 = xor i8 %19, 1
  %21 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %20, i8* %21, align 1
  %22 = xor i32 %11, %4
  %23 = xor i32 %22, %12
  %24 = lshr i32 %23, 4
  %25 = trunc i32 %24 to i8
  %26 = and i8 %25, 1
  %27 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %26, i8* %27, align 1
  %28 = icmp eq i32 %12, 0
  %29 = zext i1 %28 to i8
  %30 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %29, i8* %30, align 1
  %31 = lshr i32 %12, 31
  %32 = trunc i32 %31 to i8
  %33 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %32, i8* %33, align 1
  %34 = lshr i32 %4, 31
  %35 = lshr i32 %11, 31
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
define %struct.Memory* @routine_jge_.L_4a3cc3(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movq_0x722b20___rdx_8____rdx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %RDX, align 8
  %4 = shl i64 %3, 3
  %5 = add i64 %4, 7482144
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 8
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %5 to i64*
  %9 = load i64, i64* %8, align 8
  store i64 %9, i64* %RDX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_addq__0x18___rsi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %RSI, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 4
  store i64 %5, i64* %PC, align 8
  %6 = add i64 %3, 24
  store i64 %6, i64* %RSI, align 8
  %7 = icmp ugt i64 %3, -25
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
define %struct.Memory* @routine_movslq_MINUS0x8__rbp____r8(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %R8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -8
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = sext i32 %8 to i64
  store i64 %9, i64* %R8, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_imulq__0x108___r8___r8(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %R8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0, i32 0
  %3 = load i64, i64* %R8, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 7
  store i64 %5, i64* %PC, align 8
  %6 = sext i64 %3 to i128
  %7 = and i128 %6, -18446744073709551616
  %8 = zext i64 %3 to i128
  %9 = or i128 %7, %8
  %10 = mul nsw i128 %9, 264
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
define %struct.Memory* @routine_addq__r8___rsi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %R8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0, i32 0
  %3 = load i64, i64* %RSI, align 8
  %4 = load i64, i64* %R8, align 8
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
define %struct.Memory* @routine_movq__rdx____rsi__r8_8_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %R8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0, i32 0
  %3 = load i64, i64* %RSI, align 8
  %4 = load i64, i64* %R8, align 8
  %5 = shl i64 %4, 3
  %6 = add i64 %5, %3
  %7 = load i64, i64* %RDX, align 8
  %8 = load i64, i64* %PC, align 8
  %9 = add i64 %8, 4
  store i64 %9, i64* %PC, align 8
  %10 = inttoptr i64 %6 to i64*
  store i64 %7, i64* %10, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_addq__0x648___rsi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %RSI, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 7
  store i64 %5, i64* %PC, align 8
  %6 = add i64 %3, 1608
  store i64 %6, i64* %RSI, align 8
  %7 = icmp ugt i64 %3, -1609
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

; Function Attrs: nounwind
define %struct.Memory* @routine_addq__0xc78___rsi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %RSI, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 7
  store i64 %5, i64* %PC, align 8
  %6 = add i64 %3, 3192
  store i64 %6, i64* %RSI, align 8
  %7 = icmp ugt i64 %3, -3193
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
define %struct.Memory* @routine_addq__0x12a8___rsi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %RSI, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 7
  store i64 %5, i64* %PC, align 8
  %6 = add i64 %3, 4776
  store i64 %6, i64* %RSI, align 8
  %7 = icmp ugt i64 %3, -4777
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
define %struct.Memory* @routine_jmpq_.L_4a3b76(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_4a3cc8(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
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
define %struct.Memory* @routine_jmpq_.L_4a3b65(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_4a3cdb(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_4a3ce0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
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
attributes #1 = { alwaysinline nounwind }
attributes #2 = { norecurse nounwind }
attributes #3 = { nounwind }
