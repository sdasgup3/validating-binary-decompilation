; ModuleID = 'mcsema/test.proposed.inline.ll'
source_filename = "llvm-link"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu-elf"

%__bss_start_type = type <{ [8 x i8] }>
%G_0x633b40_type = type <{ [4 x i8] }>
%G_0x8644f8_type = type <{ [8 x i8] }>
%G_0x864508_type = type <{ [4 x i8] }>
%G_0x8661bc_type = type <{ [1 x i8] }>
%G_0x8661d4_type = type <{ [4 x i8] }>
%G_0x881df4_type = type <{ [4 x i8] }>
%G_0x886a70_type = type <{ [8 x i8] }>
%G_0x886bbc_type = type <{ [1 x i8] }>
%G_0x886bc0_type = type <{ [4 x i8] }>
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
@G_0x633b40 = local_unnamed_addr global %G_0x633b40_type zeroinitializer
@G_0x8644f8 = local_unnamed_addr global %G_0x8644f8_type zeroinitializer
@G_0x864508 = local_unnamed_addr global %G_0x864508_type zeroinitializer
@G_0x8661bc = local_unnamed_addr global %G_0x8661bc_type zeroinitializer
@G_0x8661d4 = local_unnamed_addr global %G_0x8661d4_type zeroinitializer
@G_0x881df4 = local_unnamed_addr global %G_0x881df4_type zeroinitializer
@G_0x886a70 = local_unnamed_addr global %G_0x886a70_type zeroinitializer
@G_0x886bbc = local_unnamed_addr global %G_0x886bbc_type zeroinitializer
@G_0x886bc0 = local_unnamed_addr global %G_0x886bc0_type zeroinitializer

declare %struct.Memory* @__remill_error(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr

; Function Attrs: nounwind readnone
declare i32 @llvm.ctpop.i32(i32) #0

; Function Attrs: alwaysinline
define %struct.Memory* @StoreTT(%struct.State* noalias, i64, %struct.Memory* noalias) local_unnamed_addr #1 {
routine_divl_0x8661d4.exit:
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
  %11 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0
  %EDI.i597 = bitcast %union.anon* %11 to i32*
  %12 = add i64 %7, -12
  %13 = load i32, i32* %EDI.i597, align 4
  %14 = add i64 %10, 6
  store i64 %14, i64* %3, align 8
  %15 = inttoptr i64 %12 to i32*
  store i32 %13, i32* %15, align 4
  %16 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0
  %ESI.i = bitcast %union.anon* %16 to i32*
  %17 = load i64, i64* %RBP.i, align 8
  %18 = add i64 %17, -8
  %19 = load i32, i32* %ESI.i, align 4
  %20 = load i64, i64* %3, align 8
  %21 = add i64 %20, 3
  store i64 %21, i64* %3, align 8
  %22 = inttoptr i64 %18 to i32*
  store i32 %19, i32* %22, align 4
  %23 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %EDX.i592 = bitcast %union.anon* %23 to i32*
  %24 = load i64, i64* %RBP.i, align 8
  %25 = add i64 %24, -12
  %26 = load i32, i32* %EDX.i592, align 4
  %27 = load i64, i64* %3, align 8
  %28 = add i64 %27, 3
  store i64 %28, i64* %3, align 8
  %29 = inttoptr i64 %25 to i32*
  store i32 %26, i32* %29, align 4
  %30 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %ECX.i589 = bitcast %union.anon* %30 to i32*
  %31 = load i64, i64* %RBP.i, align 8
  %32 = add i64 %31, -16
  %33 = load i32, i32* %ECX.i589, align 4
  %34 = load i64, i64* %3, align 8
  %35 = add i64 %34, 3
  store i64 %35, i64* %3, align 8
  %36 = inttoptr i64 %32 to i32*
  store i32 %33, i32* %36, align 4
  %37 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0
  %R8D.i586 = bitcast %union.anon* %37 to i32*
  %38 = load i64, i64* %RBP.i, align 8
  %39 = add i64 %38, -20
  %40 = load i32, i32* %R8D.i586, align 4
  %41 = load i64, i64* %3, align 8
  %42 = add i64 %41, 4
  store i64 %42, i64* %3, align 8
  %43 = inttoptr i64 %39 to i32*
  store i32 %40, i32* %43, align 4
  %44 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 19, i32 0
  %R9D.i = bitcast %union.anon* %44 to i32*
  %45 = load i64, i64* %RBP.i, align 8
  %46 = add i64 %45, -24
  %47 = load i32, i32* %R9D.i, align 4
  %48 = load i64, i64* %3, align 8
  %49 = add i64 %48, 4
  store i64 %49, i64* %3, align 8
  %50 = inttoptr i64 %46 to i32*
  store i32 %47, i32* %50, align 4
  %RCX.i582 = getelementptr inbounds %union.anon, %union.anon* %30, i64 0, i32 0
  %51 = load i64, i64* %3, align 8
  %52 = load i32, i32* bitcast (%G_0x864508_type* @G_0x864508 to i32*), align 8
  %53 = add i32 %52, 1
  %54 = zext i32 %53 to i64
  store i64 %54, i64* %RCX.i582, align 8
  %55 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %56 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %57 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  %58 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %59 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %60 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i32 %53, i32* bitcast (%G_0x864508_type* @G_0x864508 to i32*), align 8
  %RAX.i576 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %61 = load i32, i32* bitcast (%G_0x633b40_type* @G_0x633b40 to i32*), align 8
  %RDX.i574 = getelementptr inbounds %union.anon, %union.anon* %23, i64 0, i32 0
  %62 = load i32, i32* bitcast (%G_0x8661d4_type* @G_0x8661d4 to i32*), align 8
  %div = udiv i32 %61, %62
  %63 = zext i32 %div to i64
  %64 = urem i32 %61, %62
  %65 = zext i32 %64 to i64
  store i64 %63, i64* %RAX.i576, align 8
  store i64 %65, i64* %RDX.i574, align 8
  store i8 0, i8* %55, align 1
  store i8 0, i8* %56, align 1
  store i8 0, i8* %57, align 1
  store i8 0, i8* %58, align 1
  store i8 0, i8* %59, align 1
  store i8 0, i8* %60, align 1
  %66 = load i64, i64* %RBP.i, align 8
  %67 = add i64 %66, -28
  %68 = add i64 %51, 36
  store i64 %68, i64* %3, align 8
  %69 = inttoptr i64 %67 to i32*
  store i32 %64, i32* %69, align 4
  %70 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 21, i32 0
  %R10.i565 = getelementptr inbounds %union.anon, %union.anon* %70, i64 0, i32 0
  %71 = load i64, i64* %3, align 8
  %72 = load i64, i64* bitcast (%G_0x8644f8_type* @G_0x8644f8 to i64*), align 8
  store i64 %72, i64* %R10.i565, align 8
  %73 = load i64, i64* %RBP.i, align 8
  %74 = add i64 %73, -28
  %75 = add i64 %71, 11
  store i64 %75, i64* %3, align 8
  %76 = inttoptr i64 %74 to i32*
  %77 = load i32, i32* %76, align 4
  %78 = zext i32 %77 to i64
  store i64 %78, i64* %RCX.i582, align 8
  %79 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 23, i32 0, i32 0
  %80 = zext i32 %77 to i64
  %81 = mul nuw nsw i64 %80, 20
  store i64 %81, i64* %79, align 8
  %82 = add i64 %81, %72
  store i64 %82, i64* %R10.i565, align 8
  %83 = icmp ult i64 %82, %72
  %84 = icmp ult i64 %82, %81
  %85 = or i1 %83, %84
  %86 = zext i1 %85 to i8
  store i8 %86, i8* %55, align 1
  %87 = trunc i64 %82 to i32
  %88 = and i32 %87, 255
  %89 = tail call i32 @llvm.ctpop.i32(i32 %88)
  %90 = trunc i32 %89 to i8
  %91 = and i8 %90, 1
  %92 = xor i8 %91, 1
  store i8 %92, i8* %56, align 1
  %93 = xor i64 %81, %72
  %94 = xor i64 %93, %82
  %95 = lshr i64 %94, 4
  %96 = trunc i64 %95 to i8
  %97 = and i8 %96, 1
  store i8 %97, i8* %57, align 1
  %98 = icmp eq i64 %82, 0
  %99 = zext i1 %98 to i8
  store i8 %99, i8* %58, align 1
  %100 = lshr i64 %82, 63
  %101 = trunc i64 %100 to i8
  store i8 %101, i8* %59, align 1
  %102 = lshr i64 %72, 63
  %103 = xor i64 %100, %102
  %104 = add nuw nsw i64 %103, %100
  %105 = icmp eq i64 %104, 2
  %106 = zext i1 %105 to i8
  store i8 %106, i8* %60, align 1
  %107 = inttoptr i64 %82 to i8*
  %108 = add i64 %71, 25
  store i64 %108, i64* %3, align 8
  %109 = load i8, i8* %107, align 1
  %110 = sext i8 %109 to i64
  %111 = and i64 %110, 4294967295
  store i64 %111, i64* %RCX.i582, align 8
  %112 = sext i8 %109 to i32
  %113 = add i64 %73, -24
  %114 = add i64 %71, 28
  store i64 %114, i64* %3, align 8
  %115 = inttoptr i64 %113 to i32*
  %116 = load i32, i32* %115, align 4
  %117 = sub i32 %112, %116
  %118 = icmp ult i32 %112, %116
  %119 = zext i1 %118 to i8
  store i8 %119, i8* %55, align 1
  %120 = and i32 %117, 255
  %121 = tail call i32 @llvm.ctpop.i32(i32 %120)
  %122 = trunc i32 %121 to i8
  %123 = and i8 %122, 1
  %124 = xor i8 %123, 1
  store i8 %124, i8* %56, align 1
  %125 = xor i32 %116, %112
  %126 = xor i32 %125, %117
  %127 = lshr i32 %126, 4
  %128 = trunc i32 %127 to i8
  %129 = and i8 %128, 1
  store i8 %129, i8* %57, align 1
  %130 = icmp eq i32 %117, 0
  %131 = zext i1 %130 to i8
  store i8 %131, i8* %58, align 1
  %132 = lshr i32 %117, 31
  %133 = trunc i32 %132 to i8
  store i8 %133, i8* %59, align 1
  %134 = lshr i32 %112, 31
  %135 = lshr i32 %116, 31
  %136 = xor i32 %135, %134
  %137 = xor i32 %132, %134
  %138 = add nuw nsw i32 %137, %136
  %139 = icmp eq i32 %138, 2
  %140 = zext i1 %139 to i8
  store i8 %140, i8* %60, align 1
  %141 = icmp ne i8 %133, 0
  %142 = xor i1 %141, %139
  %.v = select i1 %142, i64 135, i64 34
  %143 = add i64 %71, %.v
  store i64 %143, i64* %3, align 8
  br i1 %142, label %block_.L_4208b3, label %block_42084e

block_42084e:                                     ; preds = %routine_divl_0x8661d4.exit
  %144 = load i64, i64* bitcast (%G_0x8644f8_type* @G_0x8644f8 to i64*), align 8
  store i64 %144, i64* %RAX.i576, align 8
  %145 = load i64, i64* %RBP.i, align 8
  %146 = add i64 %145, -28
  %147 = add i64 %143, 11
  store i64 %147, i64* %3, align 8
  %148 = inttoptr i64 %146 to i32*
  %149 = load i32, i32* %148, align 4
  %150 = zext i32 %149 to i64
  store i64 %150, i64* %RCX.i582, align 8
  %151 = zext i32 %149 to i64
  %152 = mul nuw nsw i64 %151, 20
  store i64 %152, i64* %RDX.i574, align 8
  %153 = add i64 %152, %144
  store i64 %153, i64* %RAX.i576, align 8
  %154 = icmp ult i64 %153, %144
  %155 = icmp ult i64 %153, %152
  %156 = or i1 %154, %155
  %157 = zext i1 %156 to i8
  store i8 %157, i8* %55, align 1
  %158 = trunc i64 %153 to i32
  %159 = and i32 %158, 255
  %160 = tail call i32 @llvm.ctpop.i32(i32 %159)
  %161 = trunc i32 %160 to i8
  %162 = and i8 %161, 1
  %163 = xor i8 %162, 1
  store i8 %163, i8* %56, align 1
  %164 = xor i64 %152, %144
  %165 = xor i64 %164, %153
  %166 = lshr i64 %165, 4
  %167 = trunc i64 %166 to i8
  %168 = and i8 %167, 1
  store i8 %168, i8* %57, align 1
  %169 = icmp eq i64 %153, 0
  %170 = zext i1 %169 to i8
  store i8 %170, i8* %58, align 1
  %171 = lshr i64 %153, 63
  %172 = trunc i64 %171 to i8
  store i8 %172, i8* %59, align 1
  %173 = lshr i64 %144, 63
  %174 = xor i64 %171, %173
  %175 = add nuw nsw i64 %174, %171
  %176 = icmp eq i64 %175, 2
  %177 = zext i1 %176 to i8
  store i8 %177, i8* %60, align 1
  %178 = inttoptr i64 %153 to i8*
  %179 = add i64 %143, 23
  store i64 %179, i64* %3, align 8
  %180 = load i8, i8* %178, align 1
  %181 = sext i8 %180 to i64
  %182 = and i64 %181, 4294967295
  store i64 %182, i64* %RCX.i582, align 8
  %183 = sext i8 %180 to i32
  %184 = add i64 %145, -24
  %185 = add i64 %143, 26
  store i64 %185, i64* %3, align 8
  %186 = inttoptr i64 %184 to i32*
  %187 = load i32, i32* %186, align 4
  %188 = sub i32 %183, %187
  %189 = icmp ult i32 %183, %187
  %190 = zext i1 %189 to i8
  store i8 %190, i8* %55, align 1
  %191 = and i32 %188, 255
  %192 = tail call i32 @llvm.ctpop.i32(i32 %191)
  %193 = trunc i32 %192 to i8
  %194 = and i8 %193, 1
  %195 = xor i8 %194, 1
  store i8 %195, i8* %56, align 1
  %196 = xor i32 %187, %183
  %197 = xor i32 %196, %188
  %198 = lshr i32 %197, 4
  %199 = trunc i32 %198 to i8
  %200 = and i8 %199, 1
  store i8 %200, i8* %57, align 1
  %201 = icmp eq i32 %188, 0
  %202 = zext i1 %201 to i8
  store i8 %202, i8* %58, align 1
  %203 = lshr i32 %188, 31
  %204 = trunc i32 %203 to i8
  store i8 %204, i8* %59, align 1
  %205 = lshr i32 %183, 31
  %206 = lshr i32 %187, 31
  %207 = xor i32 %206, %205
  %208 = xor i32 %203, %205
  %209 = add nuw nsw i32 %208, %207
  %210 = icmp eq i32 %209, 2
  %211 = zext i1 %210 to i8
  store i8 %211, i8* %60, align 1
  %.v35 = select i1 %201, i64 32, i64 569
  %212 = add i64 %143, %.v35
  store i64 %212, i64* %3, align 8
  br i1 %201, label %block_42086e, label %block_.L_420a87

block_42086e:                                     ; preds = %block_42084e
  %213 = load i64, i64* bitcast (%G_0x8644f8_type* @G_0x8644f8 to i64*), align 8
  store i64 %213, i64* %RAX.i576, align 8
  %214 = load i64, i64* %RBP.i, align 8
  %215 = add i64 %214, -28
  %216 = add i64 %212, 11
  store i64 %216, i64* %3, align 8
  %217 = inttoptr i64 %215 to i32*
  %218 = load i32, i32* %217, align 4
  %219 = zext i32 %218 to i64
  store i64 %219, i64* %RCX.i582, align 8
  %220 = zext i32 %218 to i64
  %221 = mul nuw nsw i64 %220, 20
  store i64 %221, i64* %RDX.i574, align 8
  %222 = add i64 %221, %213
  store i64 %222, i64* %RAX.i576, align 8
  %223 = icmp ult i64 %222, %213
  %224 = icmp ult i64 %222, %221
  %225 = or i1 %223, %224
  %226 = zext i1 %225 to i8
  store i8 %226, i8* %55, align 1
  %227 = trunc i64 %222 to i32
  %228 = and i32 %227, 255
  %229 = tail call i32 @llvm.ctpop.i32(i32 %228)
  %230 = trunc i32 %229 to i8
  %231 = and i8 %230, 1
  %232 = xor i8 %231, 1
  store i8 %232, i8* %56, align 1
  %233 = xor i64 %221, %213
  %234 = xor i64 %233, %222
  %235 = lshr i64 %234, 4
  %236 = trunc i64 %235 to i8
  %237 = and i8 %236, 1
  store i8 %237, i8* %57, align 1
  %238 = icmp eq i64 %222, 0
  %239 = zext i1 %238 to i8
  store i8 %239, i8* %58, align 1
  %240 = lshr i64 %222, 63
  %241 = trunc i64 %240 to i8
  store i8 %241, i8* %59, align 1
  %242 = lshr i64 %213, 63
  %243 = xor i64 %240, %242
  %244 = add nuw nsw i64 %243, %240
  %245 = icmp eq i64 %244, 2
  %246 = zext i1 %245 to i8
  store i8 %246, i8* %60, align 1
  %247 = add i64 %222, 3
  %248 = add i64 %212, 24
  store i64 %248, i64* %3, align 8
  %249 = inttoptr i64 %247 to i8*
  %250 = load i8, i8* %249, align 1
  %251 = sext i8 %250 to i64
  %252 = and i64 %251, 4294967295
  store i64 %252, i64* %RCX.i582, align 8
  %253 = sext i8 %250 to i32
  %254 = add nsw i32 %253, -1
  %255 = icmp eq i8 %250, 0
  %256 = zext i1 %255 to i8
  store i8 %256, i8* %55, align 1
  %257 = and i32 %254, 255
  %258 = tail call i32 @llvm.ctpop.i32(i32 %257)
  %259 = trunc i32 %258 to i8
  %260 = and i8 %259, 1
  %261 = xor i8 %260, 1
  store i8 %261, i8* %56, align 1
  %262 = xor i32 %254, %253
  %263 = lshr i32 %262, 4
  %264 = trunc i32 %263 to i8
  %265 = and i8 %264, 1
  store i8 %265, i8* %57, align 1
  %266 = icmp eq i32 %254, 0
  %267 = zext i1 %266 to i8
  store i8 %267, i8* %58, align 1
  %268 = lshr i32 %254, 31
  %269 = trunc i32 %268 to i8
  store i8 %269, i8* %59, align 1
  %270 = lshr i32 %253, 31
  %271 = xor i32 %268, %270
  %272 = add nuw nsw i32 %271, %270
  %273 = icmp eq i32 %272, 2
  %274 = zext i1 %273 to i8
  store i8 %274, i8* %60, align 1
  %.v42 = select i1 %266, i64 33, i64 45
  %275 = add i64 %212, %.v42
  store i64 %275, i64* %3, align 8
  %276 = load i64, i64* %RBP.i, align 8
  br i1 %266, label %block_42088f, label %block_.L_42089b

block_42088f:                                     ; preds = %block_42086e
  %277 = add i64 %276, -4
  %278 = add i64 %275, 3
  store i64 %278, i64* %3, align 8
  %279 = inttoptr i64 %277 to i32*
  %280 = load i32, i32* %279, align 4
  %281 = zext i32 %280 to i64
  store i64 %281, i64* %RAX.i576, align 8
  %282 = add i64 %276, -8
  %283 = add i64 %275, 6
  store i64 %283, i64* %3, align 8
  %284 = inttoptr i64 %282 to i32*
  %285 = load i32, i32* %284, align 4
  %286 = sub i32 %280, %285
  %287 = icmp ult i32 %280, %285
  %288 = zext i1 %287 to i8
  store i8 %288, i8* %55, align 1
  %289 = and i32 %286, 255
  %290 = tail call i32 @llvm.ctpop.i32(i32 %289)
  %291 = trunc i32 %290 to i8
  %292 = and i8 %291, 1
  %293 = xor i8 %292, 1
  store i8 %293, i8* %56, align 1
  %294 = xor i32 %285, %280
  %295 = xor i32 %294, %286
  %296 = lshr i32 %295, 4
  %297 = trunc i32 %296 to i8
  %298 = and i8 %297, 1
  store i8 %298, i8* %57, align 1
  %299 = icmp eq i32 %286, 0
  %300 = zext i1 %299 to i8
  store i8 %300, i8* %58, align 1
  %301 = lshr i32 %286, 31
  %302 = trunc i32 %301 to i8
  store i8 %302, i8* %59, align 1
  %303 = lshr i32 %280, 31
  %304 = lshr i32 %285, 31
  %305 = xor i32 %304, %303
  %306 = xor i32 %301, %303
  %307 = add nuw nsw i32 %306, %305
  %308 = icmp eq i32 %307, 2
  %309 = zext i1 %308 to i8
  store i8 %309, i8* %60, align 1
  %310 = icmp ne i8 %302, 0
  %311 = xor i1 %310, %308
  %.demorgan = or i1 %299, %311
  %.v52 = select i1 %.demorgan, i64 12, i64 36
  %312 = add i64 %275, %.v52
  store i64 %312, i64* %3, align 8
  br i1 %.demorgan, label %block_.L_42089b, label %block_.L_4208b3

block_.L_42089b:                                  ; preds = %block_42086e, %block_42088f
  %313 = phi i64 [ %312, %block_42088f ], [ %275, %block_42086e ]
  %314 = add i64 %276, -4
  %315 = add i64 %313, 3
  store i64 %315, i64* %3, align 8
  %316 = inttoptr i64 %314 to i32*
  %317 = load i32, i32* %316, align 4
  %318 = zext i32 %317 to i64
  store i64 %318, i64* %RAX.i576, align 8
  %319 = add i64 %276, -8
  %320 = add i64 %313, 6
  store i64 %320, i64* %3, align 8
  %321 = inttoptr i64 %319 to i32*
  %322 = load i32, i32* %321, align 4
  %323 = sub i32 %317, %322
  %324 = icmp ult i32 %317, %322
  %325 = zext i1 %324 to i8
  store i8 %325, i8* %55, align 1
  %326 = and i32 %323, 255
  %327 = tail call i32 @llvm.ctpop.i32(i32 %326)
  %328 = trunc i32 %327 to i8
  %329 = and i8 %328, 1
  %330 = xor i8 %329, 1
  store i8 %330, i8* %56, align 1
  %331 = xor i32 %322, %317
  %332 = xor i32 %331, %323
  %333 = lshr i32 %332, 4
  %334 = trunc i32 %333 to i8
  %335 = and i8 %334, 1
  store i8 %335, i8* %57, align 1
  %336 = icmp eq i32 %323, 0
  %337 = zext i1 %336 to i8
  store i8 %337, i8* %58, align 1
  %338 = lshr i32 %323, 31
  %339 = trunc i32 %338 to i8
  store i8 %339, i8* %59, align 1
  %340 = lshr i32 %317, 31
  %341 = lshr i32 %322, 31
  %342 = xor i32 %341, %340
  %343 = xor i32 %338, %340
  %344 = add nuw nsw i32 %343, %342
  %345 = icmp eq i32 %344, 2
  %346 = zext i1 %345 to i8
  store i8 %346, i8* %60, align 1
  %347 = icmp ne i8 %339, 0
  %348 = xor i1 %347, %345
  %349 = or i1 %336, %348
  %.v43 = select i1 %349, i64 492, i64 12
  %350 = add i64 %313, %.v43
  store i64 %350, i64* %3, align 8
  br i1 %349, label %block_.L_420a87, label %block_4208a7

block_4208a7:                                     ; preds = %block_.L_42089b
  %351 = add i64 %350, 3
  store i64 %351, i64* %3, align 8
  %352 = load i32, i32* %316, align 4
  %353 = zext i32 %352 to i64
  store i64 %353, i64* %RAX.i576, align 8
  %354 = add i64 %276, -12
  %355 = add i64 %350, 6
  store i64 %355, i64* %3, align 8
  %356 = inttoptr i64 %354 to i32*
  %357 = load i32, i32* %356, align 4
  %358 = sub i32 %352, %357
  %359 = icmp ult i32 %352, %357
  %360 = zext i1 %359 to i8
  store i8 %360, i8* %55, align 1
  %361 = and i32 %358, 255
  %362 = tail call i32 @llvm.ctpop.i32(i32 %361)
  %363 = trunc i32 %362 to i8
  %364 = and i8 %363, 1
  %365 = xor i8 %364, 1
  store i8 %365, i8* %56, align 1
  %366 = xor i32 %357, %352
  %367 = xor i32 %366, %358
  %368 = lshr i32 %367, 4
  %369 = trunc i32 %368 to i8
  %370 = and i8 %369, 1
  store i8 %370, i8* %57, align 1
  %371 = icmp eq i32 %358, 0
  %372 = zext i1 %371 to i8
  store i8 %372, i8* %58, align 1
  %373 = lshr i32 %358, 31
  %374 = trunc i32 %373 to i8
  store i8 %374, i8* %59, align 1
  %375 = lshr i32 %352, 31
  %376 = lshr i32 %357, 31
  %377 = xor i32 %376, %375
  %378 = xor i32 %373, %375
  %379 = add nuw nsw i32 %378, %377
  %380 = icmp eq i32 %379, 2
  %381 = zext i1 %380 to i8
  store i8 %381, i8* %60, align 1
  %382 = icmp ne i8 %374, 0
  %383 = xor i1 %382, %380
  %.v44 = select i1 %383, i64 12, i64 480
  %384 = add i64 %350, %.v44
  store i64 %384, i64* %3, align 8
  br i1 %383, label %block_.L_4208b3, label %block_.L_420a87

block_.L_4208b3:                                  ; preds = %block_42088f, %block_4208a7, %routine_divl_0x8661d4.exit
  %385 = phi i64 [ %384, %block_4208a7 ], [ %312, %block_42088f ], [ %143, %routine_divl_0x8661d4.exit ]
  %386 = load i32, i32* bitcast (%G_0x886bbc_type* @G_0x886bbc to i32*), align 8
  store i8 0, i8* %55, align 1
  %387 = and i32 %386, 255
  %388 = tail call i32 @llvm.ctpop.i32(i32 %387)
  %389 = trunc i32 %388 to i8
  %390 = and i8 %389, 1
  %391 = xor i8 %390, 1
  store i8 %391, i8* %56, align 1
  store i8 0, i8* %57, align 1
  %392 = icmp eq i32 %386, 0
  %393 = zext i1 %392 to i8
  store i8 %393, i8* %58, align 1
  %394 = lshr i32 %386, 31
  %395 = trunc i32 %394 to i8
  store i8 %395, i8* %59, align 1
  store i8 0, i8* %60, align 1
  %.v45 = select i1 %392, i64 14, i64 468
  %396 = add i64 %385, %.v45
  store i64 %396, i64* %3, align 8
  br i1 %392, label %block_4208c1, label %block_.L_420a87

block_4208c1:                                     ; preds = %block_.L_4208b3
  %397 = load i64, i64* %RBP.i, align 8
  %398 = add i64 %397, -4
  %399 = add i64 %396, 3
  store i64 %399, i64* %3, align 8
  %400 = inttoptr i64 %398 to i32*
  %401 = load i32, i32* %400, align 4
  %402 = zext i32 %401 to i64
  store i64 %402, i64* %RAX.i576, align 8
  %403 = add i64 %397, -8
  %404 = add i64 %396, 6
  store i64 %404, i64* %3, align 8
  %405 = inttoptr i64 %403 to i32*
  %406 = load i32, i32* %405, align 4
  %407 = sub i32 %401, %406
  %408 = icmp ult i32 %401, %406
  %409 = zext i1 %408 to i8
  store i8 %409, i8* %55, align 1
  %410 = and i32 %407, 255
  %411 = tail call i32 @llvm.ctpop.i32(i32 %410)
  %412 = trunc i32 %411 to i8
  %413 = and i8 %412, 1
  %414 = xor i8 %413, 1
  store i8 %414, i8* %56, align 1
  %415 = xor i32 %406, %401
  %416 = xor i32 %415, %407
  %417 = lshr i32 %416, 4
  %418 = trunc i32 %417 to i8
  %419 = and i8 %418, 1
  store i8 %419, i8* %57, align 1
  %420 = icmp eq i32 %407, 0
  %421 = zext i1 %420 to i8
  store i8 %421, i8* %58, align 1
  %422 = lshr i32 %407, 31
  %423 = trunc i32 %422 to i8
  store i8 %423, i8* %59, align 1
  %424 = lshr i32 %401, 31
  %425 = lshr i32 %406, 31
  %426 = xor i32 %425, %424
  %427 = xor i32 %422, %424
  %428 = add nuw nsw i32 %427, %426
  %429 = icmp eq i32 %428, 2
  %430 = zext i1 %429 to i8
  store i8 %430, i8* %60, align 1
  %431 = icmp ne i8 %423, 0
  %432 = xor i1 %431, %429
  %.demorgan34 = or i1 %420, %432
  %.v46 = select i1 %.demorgan34, i64 12, i64 61
  %433 = add i64 %396, %.v46
  store i64 %433, i64* %3, align 8
  br i1 %.demorgan34, label %block_4208cd, label %block_.L_4208fe

block_4208cd:                                     ; preds = %block_4208c1
  %434 = load i64, i64* bitcast (%G_0x8644f8_type* @G_0x8644f8 to i64*), align 8
  store i64 %434, i64* %RAX.i576, align 8
  %435 = add i64 %397, -28
  %436 = add i64 %433, 11
  store i64 %436, i64* %3, align 8
  %437 = inttoptr i64 %435 to i32*
  %438 = load i32, i32* %437, align 4
  %439 = zext i32 %438 to i64
  store i64 %439, i64* %RCX.i582, align 8
  %440 = zext i32 %438 to i64
  %441 = mul nuw nsw i64 %440, 20
  store i64 %441, i64* %RDX.i574, align 8
  %442 = add i64 %441, %434
  store i64 %442, i64* %RAX.i576, align 8
  %443 = icmp ult i64 %442, %434
  %444 = icmp ult i64 %442, %441
  %445 = or i1 %443, %444
  %446 = zext i1 %445 to i8
  store i8 %446, i8* %55, align 1
  %447 = trunc i64 %442 to i32
  %448 = and i32 %447, 255
  %449 = tail call i32 @llvm.ctpop.i32(i32 %448)
  %450 = trunc i32 %449 to i8
  %451 = and i8 %450, 1
  %452 = xor i8 %451, 1
  store i8 %452, i8* %56, align 1
  %453 = xor i64 %441, %434
  %454 = xor i64 %453, %442
  %455 = lshr i64 %454, 4
  %456 = trunc i64 %455 to i8
  %457 = and i8 %456, 1
  store i8 %457, i8* %57, align 1
  %458 = icmp eq i64 %442, 0
  %459 = zext i1 %458 to i8
  store i8 %459, i8* %58, align 1
  %460 = lshr i64 %442, 63
  %461 = trunc i64 %460 to i8
  store i8 %461, i8* %59, align 1
  %462 = lshr i64 %434, 63
  %463 = xor i64 %460, %462
  %464 = add nuw nsw i64 %463, %460
  %465 = icmp eq i64 %464, 2
  %466 = zext i1 %465 to i8
  store i8 %466, i8* %60, align 1
  %467 = add i64 %442, 3
  %468 = add i64 %433, 24
  store i64 %468, i64* %3, align 8
  %469 = inttoptr i64 %467 to i8*
  store i8 1, i8* %469, align 1
  %470 = load i64, i64* %RBP.i, align 8
  %471 = add i64 %470, -4
  %472 = load i64, i64* %3, align 8
  %473 = add i64 %472, 7
  store i64 %473, i64* %3, align 8
  %474 = inttoptr i64 %471 to i32*
  %475 = load i32, i32* %474, align 4
  %476 = add i32 %475, 999500
  %477 = icmp ult i32 %475, -999500
  %478 = zext i1 %477 to i8
  store i8 %478, i8* %55, align 1
  %479 = and i32 %476, 255
  %480 = tail call i32 @llvm.ctpop.i32(i32 %479)
  %481 = trunc i32 %480 to i8
  %482 = and i8 %481, 1
  %483 = xor i8 %482, 1
  store i8 %483, i8* %56, align 1
  %484 = xor i32 %475, 16
  %485 = xor i32 %484, %476
  %486 = lshr i32 %485, 4
  %487 = trunc i32 %486 to i8
  %488 = and i8 %487, 1
  store i8 %488, i8* %57, align 1
  %489 = icmp eq i32 %476, 0
  %490 = zext i1 %489 to i8
  store i8 %490, i8* %58, align 1
  %491 = lshr i32 %476, 31
  %492 = trunc i32 %491 to i8
  store i8 %492, i8* %59, align 1
  %493 = lshr i32 %475, 31
  %494 = xor i32 %493, 1
  %495 = xor i32 %491, %493
  %496 = add nuw nsw i32 %495, %494
  %497 = icmp eq i32 %496, 2
  %498 = zext i1 %497 to i8
  store i8 %498, i8* %60, align 1
  %499 = icmp ne i8 %492, 0
  %500 = xor i1 %499, %497
  %.v51 = select i1 %500, i64 13, i64 20
  %501 = add i64 %472, %.v51
  store i64 %501, i64* %3, align 8
  br i1 %500, label %block_4208f2, label %block_.L_4208f9

block_4208f2:                                     ; preds = %block_4208cd
  %502 = add i64 %501, 7
  store i64 %502, i64* %3, align 8
  store i32 -999500, i32* %474, align 4
  %.pre26 = load i64, i64* %3, align 8
  br label %block_.L_4208f9

block_.L_4208f9:                                  ; preds = %block_4208cd, %block_4208f2
  %503 = phi i64 [ %501, %block_4208cd ], [ %.pre26, %block_4208f2 ]
  %504 = add i64 %503, 164
  br label %block_.L_42099d

block_.L_4208fe:                                  ; preds = %block_4208c1
  %505 = add i64 %433, 3
  store i64 %505, i64* %3, align 8
  %506 = load i32, i32* %400, align 4
  %507 = zext i32 %506 to i64
  store i64 %507, i64* %RAX.i576, align 8
  %508 = add i64 %397, -12
  %509 = add i64 %433, 6
  store i64 %509, i64* %3, align 8
  %510 = inttoptr i64 %508 to i32*
  %511 = load i32, i32* %510, align 4
  %512 = sub i32 %506, %511
  %513 = icmp ult i32 %506, %511
  %514 = zext i1 %513 to i8
  store i8 %514, i8* %55, align 1
  %515 = and i32 %512, 255
  %516 = tail call i32 @llvm.ctpop.i32(i32 %515)
  %517 = trunc i32 %516 to i8
  %518 = and i8 %517, 1
  %519 = xor i8 %518, 1
  store i8 %519, i8* %56, align 1
  %520 = xor i32 %511, %506
  %521 = xor i32 %520, %512
  %522 = lshr i32 %521, 4
  %523 = trunc i32 %522 to i8
  %524 = and i8 %523, 1
  store i8 %524, i8* %57, align 1
  %525 = icmp eq i32 %512, 0
  %526 = zext i1 %525 to i8
  store i8 %526, i8* %58, align 1
  %527 = lshr i32 %512, 31
  %528 = trunc i32 %527 to i8
  store i8 %528, i8* %59, align 1
  %529 = lshr i32 %506, 31
  %530 = lshr i32 %511, 31
  %531 = xor i32 %530, %529
  %532 = xor i32 %527, %529
  %533 = add nuw nsw i32 %532, %531
  %534 = icmp eq i32 %533, 2
  %535 = zext i1 %534 to i8
  store i8 %535, i8* %60, align 1
  %536 = icmp ne i8 %528, 0
  %537 = xor i1 %536, %534
  %.v47 = select i1 %537, i64 61, i64 12
  %538 = add i64 %433, %.v47
  %539 = load i64, i64* bitcast (%G_0x8644f8_type* @G_0x8644f8 to i64*), align 8
  store i64 %539, i64* %RAX.i576, align 8
  %540 = add i64 %397, -28
  %541 = add i64 %538, 11
  store i64 %541, i64* %3, align 8
  %542 = inttoptr i64 %540 to i32*
  %543 = load i32, i32* %542, align 4
  %544 = zext i32 %543 to i64
  store i64 %544, i64* %RCX.i582, align 8
  %545 = zext i32 %543 to i64
  %546 = mul nuw nsw i64 %545, 20
  store i64 %546, i64* %RDX.i574, align 8
  %547 = add i64 %546, %539
  store i64 %547, i64* %RAX.i576, align 8
  %548 = icmp ult i64 %547, %539
  %549 = icmp ult i64 %547, %546
  %550 = or i1 %548, %549
  %551 = zext i1 %550 to i8
  store i8 %551, i8* %55, align 1
  %552 = trunc i64 %547 to i32
  %553 = and i32 %552, 255
  %554 = tail call i32 @llvm.ctpop.i32(i32 %553)
  %555 = trunc i32 %554 to i8
  %556 = and i8 %555, 1
  %557 = xor i8 %556, 1
  store i8 %557, i8* %56, align 1
  %558 = xor i64 %546, %539
  %559 = xor i64 %558, %547
  %560 = lshr i64 %559, 4
  %561 = trunc i64 %560 to i8
  %562 = and i8 %561, 1
  store i8 %562, i8* %57, align 1
  %563 = icmp eq i64 %547, 0
  %564 = zext i1 %563 to i8
  store i8 %564, i8* %58, align 1
  %565 = lshr i64 %547, 63
  %566 = trunc i64 %565 to i8
  store i8 %566, i8* %59, align 1
  %567 = lshr i64 %539, 63
  %568 = xor i64 %565, %567
  %569 = add nuw nsw i64 %568, %565
  %570 = icmp eq i64 %569, 2
  %571 = zext i1 %570 to i8
  store i8 %571, i8* %60, align 1
  %572 = add i64 %547, 3
  %573 = add i64 %538, 24
  store i64 %573, i64* %3, align 8
  %574 = inttoptr i64 %572 to i8*
  br i1 %537, label %block_.L_42093b, label %block_42090a

block_42090a:                                     ; preds = %block_.L_4208fe
  store i8 2, i8* %574, align 1
  %575 = load i64, i64* %RBP.i, align 8
  %576 = add i64 %575, -4
  %577 = load i64, i64* %3, align 8
  %578 = add i64 %577, 7
  store i64 %578, i64* %3, align 8
  %579 = inttoptr i64 %576 to i32*
  %580 = load i32, i32* %579, align 4
  %581 = add i32 %580, -999500
  %582 = icmp ult i32 %580, 999500
  %583 = zext i1 %582 to i8
  store i8 %583, i8* %55, align 1
  %584 = and i32 %581, 255
  %585 = tail call i32 @llvm.ctpop.i32(i32 %584)
  %586 = trunc i32 %585 to i8
  %587 = and i8 %586, 1
  %588 = xor i8 %587, 1
  store i8 %588, i8* %56, align 1
  %589 = xor i32 %581, %580
  %590 = lshr i32 %589, 4
  %591 = trunc i32 %590 to i8
  %592 = and i8 %591, 1
  store i8 %592, i8* %57, align 1
  %593 = icmp eq i32 %581, 0
  %594 = zext i1 %593 to i8
  store i8 %594, i8* %58, align 1
  %595 = lshr i32 %581, 31
  %596 = trunc i32 %595 to i8
  store i8 %596, i8* %59, align 1
  %597 = lshr i32 %580, 31
  %598 = xor i32 %595, %597
  %599 = add nuw nsw i32 %598, %597
  %600 = icmp eq i32 %599, 2
  %601 = zext i1 %600 to i8
  store i8 %601, i8* %60, align 1
  %602 = icmp ne i8 %596, 0
  %603 = xor i1 %602, %600
  %604 = or i1 %593, %603
  %.v48 = select i1 %604, i64 20, i64 13
  %605 = add i64 %577, %.v48
  store i64 %605, i64* %3, align 8
  br i1 %604, label %block_.L_420936, label %block_42092f

block_42092f:                                     ; preds = %block_42090a
  %606 = add i64 %605, 7
  store i64 %606, i64* %3, align 8
  store i32 999500, i32* %579, align 4
  %.pre27 = load i64, i64* %3, align 8
  br label %block_.L_420936

block_.L_420936:                                  ; preds = %block_42092f, %block_42090a
  %607 = phi i64 [ %.pre27, %block_42092f ], [ %605, %block_42090a ]
  %608 = add i64 %607, 98
  br label %block_.L_420998

block_.L_42093b:                                  ; preds = %block_.L_4208fe
  store i8 3, i8* %574, align 1
  %609 = load i64, i64* %RBP.i, align 8
  %610 = add i64 %609, -4
  %611 = load i64, i64* %3, align 8
  %612 = add i64 %611, 7
  store i64 %612, i64* %3, align 8
  %613 = inttoptr i64 %610 to i32*
  %614 = load i32, i32* %613, align 4
  %615 = add i32 %614, -999500
  %616 = icmp ult i32 %614, 999500
  %617 = zext i1 %616 to i8
  store i8 %617, i8* %55, align 1
  %618 = and i32 %615, 255
  %619 = tail call i32 @llvm.ctpop.i32(i32 %618)
  %620 = trunc i32 %619 to i8
  %621 = and i8 %620, 1
  %622 = xor i8 %621, 1
  store i8 %622, i8* %56, align 1
  %623 = xor i32 %615, %614
  %624 = lshr i32 %623, 4
  %625 = trunc i32 %624 to i8
  %626 = and i8 %625, 1
  store i8 %626, i8* %57, align 1
  %627 = icmp eq i32 %615, 0
  %628 = zext i1 %627 to i8
  store i8 %628, i8* %58, align 1
  %629 = lshr i32 %615, 31
  %630 = trunc i32 %629 to i8
  store i8 %630, i8* %59, align 1
  %631 = lshr i32 %614, 31
  %632 = xor i32 %629, %631
  %633 = add nuw nsw i32 %632, %631
  %634 = icmp eq i32 %633, 2
  %635 = zext i1 %634 to i8
  store i8 %635, i8* %60, align 1
  %636 = icmp ne i8 %630, 0
  %637 = xor i1 %636, %634
  %638 = or i1 %627, %637
  %.v49 = select i1 %638, i64 31, i64 13
  %639 = add i64 %611, %.v49
  store i64 %639, i64* %3, align 8
  br i1 %638, label %block_.L_420972, label %block_420960

block_420960:                                     ; preds = %block_.L_42093b
  %640 = load i32, i32* bitcast (%G_0x886bc0_type* @G_0x886bc0 to i32*), align 8
  %641 = zext i32 %640 to i64
  store i64 %641, i64* %RAX.i576, align 8
  %642 = add i64 %639, 10
  store i64 %642, i64* %3, align 8
  %643 = load i32, i32* %613, align 4
  %644 = add i32 %643, %640
  %645 = zext i32 %644 to i64
  store i64 %645, i64* %RAX.i576, align 8
  %646 = icmp ult i32 %644, %640
  %647 = icmp ult i32 %644, %643
  %648 = or i1 %646, %647
  %649 = zext i1 %648 to i8
  store i8 %649, i8* %55, align 1
  %650 = and i32 %644, 255
  %651 = tail call i32 @llvm.ctpop.i32(i32 %650)
  %652 = trunc i32 %651 to i8
  %653 = and i8 %652, 1
  %654 = xor i8 %653, 1
  store i8 %654, i8* %56, align 1
  %655 = xor i32 %643, %640
  %656 = xor i32 %655, %644
  %657 = lshr i32 %656, 4
  %658 = trunc i32 %657 to i8
  %659 = and i8 %658, 1
  store i8 %659, i8* %57, align 1
  %660 = icmp eq i32 %644, 0
  %661 = zext i1 %660 to i8
  store i8 %661, i8* %58, align 1
  %662 = lshr i32 %644, 31
  %663 = trunc i32 %662 to i8
  store i8 %663, i8* %59, align 1
  %664 = lshr i32 %640, 31
  %665 = lshr i32 %643, 31
  %666 = xor i32 %662, %664
  %667 = xor i32 %662, %665
  %668 = add nuw nsw i32 %666, %667
  %669 = icmp eq i32 %668, 2
  %670 = zext i1 %669 to i8
  store i8 %670, i8* %60, align 1
  %671 = add i64 %639, 13
  store i64 %671, i64* %3, align 8
  store i32 %644, i32* %613, align 4
  %672 = load i64, i64* %3, align 8
  %673 = add i64 %672, 38
  br label %block_.L_420993

block_.L_420972:                                  ; preds = %block_.L_42093b
  %674 = add i64 %639, 7
  store i64 %674, i64* %3, align 8
  %675 = load i32, i32* %613, align 4
  %676 = add i32 %675, 999500
  %677 = icmp ult i32 %675, -999500
  %678 = zext i1 %677 to i8
  store i8 %678, i8* %55, align 1
  %679 = and i32 %676, 255
  %680 = tail call i32 @llvm.ctpop.i32(i32 %679)
  %681 = trunc i32 %680 to i8
  %682 = and i8 %681, 1
  %683 = xor i8 %682, 1
  store i8 %683, i8* %56, align 1
  %684 = xor i32 %675, 16
  %685 = xor i32 %684, %676
  %686 = lshr i32 %685, 4
  %687 = trunc i32 %686 to i8
  %688 = and i8 %687, 1
  store i8 %688, i8* %57, align 1
  %689 = icmp eq i32 %676, 0
  %690 = zext i1 %689 to i8
  store i8 %690, i8* %58, align 1
  %691 = lshr i32 %676, 31
  %692 = trunc i32 %691 to i8
  store i8 %692, i8* %59, align 1
  %693 = lshr i32 %675, 31
  %694 = xor i32 %693, 1
  %695 = xor i32 %691, %693
  %696 = add nuw nsw i32 %695, %694
  %697 = icmp eq i32 %696, 2
  %698 = zext i1 %697 to i8
  store i8 %698, i8* %60, align 1
  %699 = icmp ne i8 %692, 0
  %700 = xor i1 %699, %697
  %.v50 = select i1 %700, i64 13, i64 28
  %701 = add i64 %639, %.v50
  store i64 %701, i64* %3, align 8
  br i1 %700, label %block_42097f, label %block_.L_42098e

block_42097f:                                     ; preds = %block_.L_420972
  %702 = load i32, i32* bitcast (%G_0x886bc0_type* @G_0x886bc0 to i32*), align 8
  %703 = zext i32 %702 to i64
  store i64 %703, i64* %RAX.i576, align 8
  %704 = add i64 %701, 10
  store i64 %704, i64* %3, align 8
  %705 = load i32, i32* %613, align 4
  %706 = sub i32 %705, %702
  %707 = zext i32 %706 to i64
  store i64 %707, i64* %RCX.i582, align 8
  %708 = icmp ult i32 %705, %702
  %709 = zext i1 %708 to i8
  store i8 %709, i8* %55, align 1
  %710 = and i32 %706, 255
  %711 = tail call i32 @llvm.ctpop.i32(i32 %710)
  %712 = trunc i32 %711 to i8
  %713 = and i8 %712, 1
  %714 = xor i8 %713, 1
  store i8 %714, i8* %56, align 1
  %715 = xor i32 %702, %705
  %716 = xor i32 %715, %706
  %717 = lshr i32 %716, 4
  %718 = trunc i32 %717 to i8
  %719 = and i8 %718, 1
  store i8 %719, i8* %57, align 1
  %720 = icmp eq i32 %706, 0
  %721 = zext i1 %720 to i8
  store i8 %721, i8* %58, align 1
  %722 = lshr i32 %706, 31
  %723 = trunc i32 %722 to i8
  store i8 %723, i8* %59, align 1
  %724 = lshr i32 %705, 31
  %725 = lshr i32 %702, 31
  %726 = xor i32 %725, %724
  %727 = xor i32 %722, %724
  %728 = add nuw nsw i32 %727, %726
  %729 = icmp eq i32 %728, 2
  %730 = zext i1 %729 to i8
  store i8 %730, i8* %60, align 1
  %731 = add i64 %701, 15
  store i64 %731, i64* %3, align 8
  store i32 %706, i32* %613, align 4
  %.pre28 = load i64, i64* %3, align 8
  br label %block_.L_42098e

block_.L_42098e:                                  ; preds = %block_.L_420972, %block_42097f
  %732 = phi i64 [ %701, %block_.L_420972 ], [ %.pre28, %block_42097f ]
  %733 = add i64 %732, 5
  store i64 %733, i64* %3, align 8
  br label %block_.L_420993

block_.L_420993:                                  ; preds = %block_.L_42098e, %block_420960
  %storemerge20 = phi i64 [ %673, %block_420960 ], [ %733, %block_.L_42098e ]
  %734 = add i64 %storemerge20, 5
  store i64 %734, i64* %3, align 8
  br label %block_.L_420998

block_.L_420998:                                  ; preds = %block_.L_420993, %block_.L_420936
  %storemerge19 = phi i64 [ %608, %block_.L_420936 ], [ %734, %block_.L_420993 ]
  %735 = add i64 %storemerge19, 5
  store i64 %735, i64* %3, align 8
  br label %block_.L_42099d

block_.L_42099d:                                  ; preds = %block_.L_420998, %block_.L_4208f9
  %storemerge = phi i64 [ %504, %block_.L_4208f9 ], [ %735, %block_.L_420998 ]
  store i64 1, i64* %RAX.i576, align 8
  store i64 0, i64* %RCX.i582, align 8
  store i8 0, i8* %55, align 1
  store i8 1, i8* %56, align 1
  store i8 1, i8* %58, align 1
  store i8 0, i8* %59, align 1
  store i8 0, i8* %60, align 1
  store i8 0, i8* %57, align 1
  %736 = load i32, i32* bitcast (%G_0x633b40_type* @G_0x633b40 to i32*), align 8
  %737 = zext i32 %736 to i64
  store i64 %737, i64* %RDX.i574, align 8
  %RSI.i379 = getelementptr inbounds %union.anon, %union.anon* %16, i64 0, i32 0
  %738 = load i64, i64* bitcast (%G_0x8644f8_type* @G_0x8644f8 to i64*), align 8
  store i64 %738, i64* %RSI.i379, align 8
  %RDI.i376 = getelementptr inbounds %union.anon, %union.anon* %11, i64 0, i32 0
  %739 = load i64, i64* %RBP.i, align 8
  %740 = add i64 %739, -28
  %741 = add i64 %storemerge, 25
  store i64 %741, i64* %3, align 8
  %742 = inttoptr i64 %740 to i32*
  %743 = load i32, i32* %742, align 4
  %744 = zext i32 %743 to i64
  store i64 %744, i64* %RDI.i376, align 8
  %745 = getelementptr inbounds %union.anon, %union.anon* %37, i64 0, i32 0
  %746 = zext i32 %743 to i64
  %747 = mul nuw nsw i64 %746, 20
  store i64 %747, i64* %745, align 8
  %748 = add i64 %747, %738
  %749 = icmp ult i64 %748, %738
  %750 = icmp ult i64 %748, %747
  %751 = or i1 %749, %750
  %752 = zext i1 %751 to i8
  store i8 %752, i8* %55, align 1
  %753 = trunc i64 %748 to i32
  %754 = and i32 %753, 255
  %755 = tail call i32 @llvm.ctpop.i32(i32 %754)
  %756 = trunc i32 %755 to i8
  %757 = and i8 %756, 1
  %758 = xor i8 %757, 1
  store i8 %758, i8* %56, align 1
  %759 = xor i64 %747, %738
  %760 = xor i64 %759, %748
  %761 = lshr i64 %760, 4
  %762 = trunc i64 %761 to i8
  %763 = and i8 %762, 1
  store i8 %763, i8* %57, align 1
  %764 = icmp eq i64 %748, 0
  %765 = zext i1 %764 to i8
  store i8 %765, i8* %58, align 1
  %766 = lshr i64 %748, 63
  %767 = trunc i64 %766 to i8
  store i8 %767, i8* %59, align 1
  %768 = lshr i64 %738, 63
  %769 = xor i64 %766, %768
  %770 = add nuw nsw i64 %769, %766
  %771 = icmp eq i64 %770, 2
  %772 = zext i1 %771 to i8
  store i8 %772, i8* %60, align 1
  %773 = add i64 %748, 8
  %774 = add i64 %storemerge, 38
  store i64 %774, i64* %3, align 8
  %775 = inttoptr i64 %773 to i32*
  store i32 %736, i32* %775, align 4
  %776 = load i64, i64* %3, align 8
  %777 = load i32, i32* bitcast (%G_0x881df4_type* @G_0x881df4 to i32*), align 8
  %778 = zext i32 %777 to i64
  store i64 %778, i64* %RDX.i574, align 8
  %779 = load i64, i64* bitcast (%G_0x8644f8_type* @G_0x8644f8 to i64*), align 8
  store i64 %779, i64* %RSI.i379, align 8
  %780 = load i64, i64* %RBP.i, align 8
  %781 = add i64 %780, -28
  %782 = add i64 %776, 18
  store i64 %782, i64* %3, align 8
  %783 = inttoptr i64 %781 to i32*
  %784 = load i32, i32* %783, align 4
  %785 = zext i32 %784 to i64
  store i64 %785, i64* %RDI.i376, align 8
  %786 = zext i32 %784 to i64
  %787 = mul nuw nsw i64 %786, 20
  store i64 %787, i64* %745, align 8
  %788 = add i64 %787, %779
  store i64 %788, i64* %RSI.i379, align 8
  %789 = icmp ult i64 %788, %779
  %790 = icmp ult i64 %788, %787
  %791 = or i1 %789, %790
  %792 = zext i1 %791 to i8
  store i8 %792, i8* %55, align 1
  %793 = trunc i64 %788 to i32
  %794 = and i32 %793, 255
  %795 = tail call i32 @llvm.ctpop.i32(i32 %794)
  %796 = trunc i32 %795 to i8
  %797 = and i8 %796, 1
  %798 = xor i8 %797, 1
  store i8 %798, i8* %56, align 1
  %799 = xor i64 %787, %779
  %800 = xor i64 %799, %788
  %801 = lshr i64 %800, 4
  %802 = trunc i64 %801 to i8
  %803 = and i8 %802, 1
  store i8 %803, i8* %57, align 1
  %804 = icmp eq i64 %788, 0
  %805 = zext i1 %804 to i8
  store i8 %805, i8* %58, align 1
  %806 = lshr i64 %788, 63
  %807 = trunc i64 %806 to i8
  store i8 %807, i8* %59, align 1
  %808 = lshr i64 %779, 63
  %809 = xor i64 %806, %808
  %810 = add nuw nsw i64 %809, %806
  %811 = icmp eq i64 %810, 2
  %812 = zext i1 %811 to i8
  store i8 %812, i8* %60, align 1
  %813 = add i64 %788, 12
  %814 = add i64 %776, 31
  store i64 %814, i64* %3, align 8
  %815 = inttoptr i64 %813 to i32*
  store i32 %777, i32* %815, align 4
  %816 = load i64, i64* %RBP.i, align 8
  %817 = add i64 %816, -24
  %818 = load i64, i64* %3, align 8
  %819 = add i64 %818, 3
  store i64 %819, i64* %3, align 8
  %820 = inttoptr i64 %817 to i32*
  %821 = load i32, i32* %820, align 4
  %822 = zext i32 %821 to i64
  store i64 %822, i64* %RDX.i574, align 8
  %R9B.i342 = bitcast %union.anon* %44 to i8*
  %823 = trunc i32 %821 to i8
  store i8 %823, i8* %R9B.i342, align 1
  %824 = load i64, i64* bitcast (%G_0x8644f8_type* @G_0x8644f8 to i64*), align 8
  store i64 %824, i64* %RSI.i379, align 8
  %825 = add i64 %816, -28
  %826 = add i64 %818, 17
  store i64 %826, i64* %3, align 8
  %827 = inttoptr i64 %825 to i32*
  %828 = load i32, i32* %827, align 4
  %829 = zext i32 %828 to i64
  store i64 %829, i64* %RDX.i574, align 8
  %830 = zext i32 %828 to i64
  %831 = mul nuw nsw i64 %830, 20
  store i64 %831, i64* %745, align 8
  %832 = add i64 %831, %824
  store i64 %832, i64* %RSI.i379, align 8
  %833 = icmp ult i64 %832, %824
  %834 = icmp ult i64 %832, %831
  %835 = or i1 %833, %834
  %836 = zext i1 %835 to i8
  store i8 %836, i8* %55, align 1
  %837 = trunc i64 %832 to i32
  %838 = and i32 %837, 255
  %839 = tail call i32 @llvm.ctpop.i32(i32 %838)
  %840 = trunc i32 %839 to i8
  %841 = and i8 %840, 1
  %842 = xor i8 %841, 1
  store i8 %842, i8* %56, align 1
  %843 = xor i64 %831, %824
  %844 = xor i64 %843, %832
  %845 = lshr i64 %844, 4
  %846 = trunc i64 %845 to i8
  %847 = and i8 %846, 1
  store i8 %847, i8* %57, align 1
  %848 = icmp eq i64 %832, 0
  %849 = zext i1 %848 to i8
  store i8 %849, i8* %58, align 1
  %850 = lshr i64 %832, 63
  %851 = trunc i64 %850 to i8
  store i8 %851, i8* %59, align 1
  %852 = lshr i64 %824, 63
  %853 = xor i64 %850, %852
  %854 = add nuw nsw i64 %853, %850
  %855 = icmp eq i64 %854, 2
  %856 = zext i1 %855 to i8
  store i8 %856, i8* %60, align 1
  %857 = inttoptr i64 %832 to i8*
  %858 = add i64 %818, 30
  store i64 %858, i64* %3, align 8
  store i8 %823, i8* %857, align 1
  %859 = load i64, i64* %RBP.i, align 8
  %860 = add i64 %859, -16
  %861 = load i64, i64* %3, align 8
  %862 = add i64 %861, 3
  store i64 %862, i64* %3, align 8
  %863 = inttoptr i64 %860 to i32*
  %864 = load i32, i32* %863, align 4
  %865 = zext i32 %864 to i64
  store i64 %865, i64* %RDX.i574, align 8
  %R10W.i320 = bitcast %union.anon* %70 to i16*
  %866 = trunc i32 %864 to i16
  store i16 %866, i16* %R10W.i320, align 2
  %867 = load i64, i64* bitcast (%G_0x8644f8_type* @G_0x8644f8 to i64*), align 8
  store i64 %867, i64* %RSI.i379, align 8
  %868 = add i64 %859, -28
  %869 = add i64 %861, 18
  store i64 %869, i64* %3, align 8
  %870 = inttoptr i64 %868 to i32*
  %871 = load i32, i32* %870, align 4
  %872 = zext i32 %871 to i64
  store i64 %872, i64* %RDX.i574, align 8
  %873 = zext i32 %871 to i64
  %874 = mul nuw nsw i64 %873, 20
  store i64 %874, i64* %745, align 8
  %875 = add i64 %874, %867
  store i64 %875, i64* %RSI.i379, align 8
  %876 = icmp ult i64 %875, %867
  %877 = icmp ult i64 %875, %874
  %878 = or i1 %876, %877
  %879 = zext i1 %878 to i8
  store i8 %879, i8* %55, align 1
  %880 = trunc i64 %875 to i32
  %881 = and i32 %880, 255
  %882 = tail call i32 @llvm.ctpop.i32(i32 %881)
  %883 = trunc i32 %882 to i8
  %884 = and i8 %883, 1
  %885 = xor i8 %884, 1
  store i8 %885, i8* %56, align 1
  %886 = xor i64 %874, %867
  %887 = xor i64 %886, %875
  %888 = lshr i64 %887, 4
  %889 = trunc i64 %888 to i8
  %890 = and i8 %889, 1
  store i8 %890, i8* %57, align 1
  %891 = icmp eq i64 %875, 0
  %892 = zext i1 %891 to i8
  store i8 %892, i8* %58, align 1
  %893 = lshr i64 %875, 63
  %894 = trunc i64 %893 to i8
  store i8 %894, i8* %59, align 1
  %895 = lshr i64 %867, 63
  %896 = xor i64 %893, %895
  %897 = add nuw nsw i64 %896, %893
  %898 = icmp eq i64 %897, 2
  %899 = zext i1 %898 to i8
  store i8 %899, i8* %60, align 1
  %900 = add i64 %875, 4
  %901 = add i64 %861, 33
  store i64 %901, i64* %3, align 8
  %902 = inttoptr i64 %900 to i16*
  store i16 %866, i16* %902, align 2
  %903 = load i64, i64* %RBP.i, align 8
  %904 = add i64 %903, -4
  %905 = load i64, i64* %3, align 8
  %906 = add i64 %905, 3
  store i64 %906, i64* %3, align 8
  %907 = inttoptr i64 %904 to i32*
  %908 = load i32, i32* %907, align 4
  %909 = zext i32 %908 to i64
  store i64 %909, i64* %RDX.i574, align 8
  %910 = load i64, i64* bitcast (%G_0x8644f8_type* @G_0x8644f8 to i64*), align 8
  store i64 %910, i64* %RSI.i379, align 8
  %911 = add i64 %903, -28
  %912 = add i64 %905, 14
  store i64 %912, i64* %3, align 8
  %913 = inttoptr i64 %911 to i32*
  %914 = load i32, i32* %913, align 4
  %915 = zext i32 %914 to i64
  store i64 %915, i64* %RDI.i376, align 8
  %916 = zext i32 %914 to i64
  %917 = mul nuw nsw i64 %916, 20
  store i64 %917, i64* %745, align 8
  %918 = add i64 %917, %910
  %919 = add i64 %918, 16
  %920 = add i64 %905, 27
  store i64 %920, i64* %3, align 8
  %921 = inttoptr i64 %919 to i32*
  store i32 %908, i32* %921, align 4
  %922 = load i64, i64* %3, align 8
  %923 = load i32, i32* bitcast (%G_0x8661bc_type* @G_0x8661bc to i32*), align 8
  store i8 0, i8* %55, align 1
  %924 = and i32 %923, 255
  %925 = tail call i32 @llvm.ctpop.i32(i32 %924)
  %926 = trunc i32 %925 to i8
  %927 = and i8 %926, 1
  %928 = xor i8 %927, 1
  store i8 %928, i8* %56, align 1
  store i8 0, i8* %57, align 1
  %929 = icmp eq i32 %923, 0
  %930 = zext i1 %929 to i8
  store i8 %930, i8* %58, align 1
  %931 = lshr i32 %923, 31
  %932 = trunc i32 %931 to i8
  store i8 %932, i8* %59, align 1
  store i8 0, i8* %60, align 1
  %933 = load i32, i32* %ECX.i589, align 4
  %934 = zext i32 %933 to i64
  %935 = load i64, i64* %RAX.i576, align 8
  %936 = select i1 %929, i64 %935, i64 %934
  %937 = and i64 %936, 4294967295
  store i64 %937, i64* %RAX.i576, align 8
  %938 = trunc i64 %936 to i8
  store i8 %938, i8* %R9B.i342, align 1
  %939 = load i64, i64* bitcast (%G_0x8644f8_type* @G_0x8644f8 to i64*), align 8
  store i64 %939, i64* %RSI.i379, align 8
  %940 = load i64, i64* %RBP.i, align 8
  %941 = add i64 %940, -28
  %942 = add i64 %922, 25
  store i64 %942, i64* %3, align 8
  %943 = inttoptr i64 %941 to i32*
  %944 = load i32, i32* %943, align 4
  %945 = zext i32 %944 to i64
  store i64 %945, i64* %RAX.i576, align 8
  %946 = zext i32 %944 to i64
  %947 = mul nuw nsw i64 %946, 20
  store i64 %947, i64* %745, align 8
  %948 = add i64 %947, %939
  store i64 %948, i64* %RSI.i379, align 8
  %949 = icmp ult i64 %948, %939
  %950 = icmp ult i64 %948, %947
  %951 = or i1 %949, %950
  %952 = zext i1 %951 to i8
  store i8 %952, i8* %55, align 1
  %953 = trunc i64 %948 to i32
  %954 = and i32 %953, 255
  %955 = tail call i32 @llvm.ctpop.i32(i32 %954)
  %956 = trunc i32 %955 to i8
  %957 = and i8 %956, 1
  %958 = xor i8 %957, 1
  store i8 %958, i8* %56, align 1
  %959 = xor i64 %947, %939
  %960 = xor i64 %959, %948
  %961 = lshr i64 %960, 4
  %962 = trunc i64 %961 to i8
  %963 = and i8 %962, 1
  store i8 %963, i8* %57, align 1
  %964 = icmp eq i64 %948, 0
  %965 = zext i1 %964 to i8
  store i8 %965, i8* %58, align 1
  %966 = lshr i64 %948, 63
  %967 = trunc i64 %966 to i8
  store i8 %967, i8* %59, align 1
  %968 = lshr i64 %939, 63
  %969 = xor i64 %966, %968
  %970 = add nuw nsw i64 %969, %966
  %971 = icmp eq i64 %970, 2
  %972 = zext i1 %971 to i8
  store i8 %972, i8* %60, align 1
  %973 = add i64 %948, 1
  %974 = add i64 %922, 39
  store i64 %974, i64* %3, align 8
  %975 = inttoptr i64 %973 to i8*
  store i8 %938, i8* %975, align 1
  %976 = load i64, i64* %RBP.i, align 8
  %977 = add i64 %976, -20
  %978 = load i64, i64* %3, align 8
  %979 = add i64 %978, 3
  store i64 %979, i64* %3, align 8
  %980 = inttoptr i64 %977 to i32*
  %981 = load i32, i32* %980, align 4
  %982 = zext i32 %981 to i64
  store i64 %982, i64* %RAX.i576, align 8
  %983 = trunc i32 %981 to i8
  store i8 %983, i8* %R9B.i342, align 1
  %984 = load i64, i64* bitcast (%G_0x8644f8_type* @G_0x8644f8 to i64*), align 8
  store i64 %984, i64* %RSI.i379, align 8
  %985 = add i64 %976, -28
  %986 = add i64 %978, 17
  store i64 %986, i64* %3, align 8
  %987 = inttoptr i64 %985 to i32*
  %988 = load i32, i32* %987, align 4
  %989 = zext i32 %988 to i64
  store i64 %989, i64* %RAX.i576, align 8
  %990 = zext i32 %988 to i64
  %991 = mul nuw nsw i64 %990, 20
  store i64 %991, i64* %745, align 8
  %992 = add i64 %991, %984
  store i64 %992, i64* %RSI.i379, align 8
  %993 = icmp ult i64 %992, %984
  %994 = icmp ult i64 %992, %991
  %995 = or i1 %993, %994
  %996 = zext i1 %995 to i8
  store i8 %996, i8* %55, align 1
  %997 = trunc i64 %992 to i32
  %998 = and i32 %997, 255
  %999 = tail call i32 @llvm.ctpop.i32(i32 %998)
  %1000 = trunc i32 %999 to i8
  %1001 = and i8 %1000, 1
  %1002 = xor i8 %1001, 1
  store i8 %1002, i8* %56, align 1
  %1003 = xor i64 %991, %984
  %1004 = xor i64 %1003, %992
  %1005 = lshr i64 %1004, 4
  %1006 = trunc i64 %1005 to i8
  %1007 = and i8 %1006, 1
  store i8 %1007, i8* %57, align 1
  %1008 = icmp eq i64 %992, 0
  %1009 = zext i1 %1008 to i8
  store i8 %1009, i8* %58, align 1
  %1010 = lshr i64 %992, 63
  %1011 = trunc i64 %1010 to i8
  store i8 %1011, i8* %59, align 1
  %1012 = lshr i64 %984, 63
  %1013 = xor i64 %1010, %1012
  %1014 = add nuw nsw i64 %1013, %1010
  %1015 = icmp eq i64 %1014, 2
  %1016 = zext i1 %1015 to i8
  store i8 %1016, i8* %60, align 1
  %1017 = add i64 %992, 2
  %1018 = add i64 %978, 31
  store i64 %1018, i64* %3, align 8
  %1019 = inttoptr i64 %1017 to i8*
  store i8 %983, i8* %1019, align 1
  %1020 = load i64, i64* %3, align 8
  %1021 = add i64 %1020, 454
  store i64 %1021, i64* %3, align 8
  br label %block_.L_420c48

block_.L_420a87:                                  ; preds = %block_.L_4208b3, %block_42084e, %block_4208a7, %block_.L_42089b
  %1022 = phi i64 [ %384, %block_4208a7 ], [ %396, %block_.L_4208b3 ], [ %350, %block_.L_42089b ], [ %212, %block_42084e ]
  %1023 = load i64, i64* %RBP.i, align 8
  %1024 = add i64 %1023, -4
  %1025 = add i64 %1022, 3
  store i64 %1025, i64* %3, align 8
  %1026 = inttoptr i64 %1024 to i32*
  %1027 = load i32, i32* %1026, align 4
  %1028 = zext i32 %1027 to i64
  store i64 %1028, i64* %RAX.i576, align 8
  %1029 = add i64 %1023, -8
  %1030 = add i64 %1022, 6
  store i64 %1030, i64* %3, align 8
  %1031 = inttoptr i64 %1029 to i32*
  %1032 = load i32, i32* %1031, align 4
  %1033 = sub i32 %1027, %1032
  %1034 = icmp ult i32 %1027, %1032
  %1035 = zext i1 %1034 to i8
  store i8 %1035, i8* %55, align 1
  %1036 = and i32 %1033, 255
  %1037 = tail call i32 @llvm.ctpop.i32(i32 %1036)
  %1038 = trunc i32 %1037 to i8
  %1039 = and i8 %1038, 1
  %1040 = xor i8 %1039, 1
  store i8 %1040, i8* %56, align 1
  %1041 = xor i32 %1032, %1027
  %1042 = xor i32 %1041, %1033
  %1043 = lshr i32 %1042, 4
  %1044 = trunc i32 %1043 to i8
  %1045 = and i8 %1044, 1
  store i8 %1045, i8* %57, align 1
  %1046 = icmp eq i32 %1033, 0
  %1047 = zext i1 %1046 to i8
  store i8 %1047, i8* %58, align 1
  %1048 = lshr i32 %1033, 31
  %1049 = trunc i32 %1048 to i8
  store i8 %1049, i8* %59, align 1
  %1050 = lshr i32 %1027, 31
  %1051 = lshr i32 %1032, 31
  %1052 = xor i32 %1051, %1050
  %1053 = xor i32 %1048, %1050
  %1054 = add nuw nsw i32 %1053, %1052
  %1055 = icmp eq i32 %1054, 2
  %1056 = zext i1 %1055 to i8
  store i8 %1056, i8* %60, align 1
  %1057 = icmp ne i8 %1049, 0
  %1058 = xor i1 %1057, %1055
  %.demorgan33 = or i1 %1046, %1058
  %.v36 = select i1 %.demorgan33, i64 12, i64 61
  %1059 = add i64 %1022, %.v36
  store i64 %1059, i64* %3, align 8
  br i1 %.demorgan33, label %block_420a93, label %block_.L_420ac4

block_420a93:                                     ; preds = %block_.L_420a87
  %1060 = load i64, i64* bitcast (%G_0x886a70_type* @G_0x886a70 to i64*), align 8
  store i64 %1060, i64* %RAX.i576, align 8
  %1061 = add i64 %1023, -28
  %1062 = add i64 %1059, 11
  store i64 %1062, i64* %3, align 8
  %1063 = inttoptr i64 %1061 to i32*
  %1064 = load i32, i32* %1063, align 4
  %1065 = zext i32 %1064 to i64
  store i64 %1065, i64* %RCX.i582, align 8
  %1066 = zext i32 %1064 to i64
  %1067 = mul nuw nsw i64 %1066, 20
  store i64 %1067, i64* %RDX.i574, align 8
  %1068 = add i64 %1067, %1060
  store i64 %1068, i64* %RAX.i576, align 8
  %1069 = icmp ult i64 %1068, %1060
  %1070 = icmp ult i64 %1068, %1067
  %1071 = or i1 %1069, %1070
  %1072 = zext i1 %1071 to i8
  store i8 %1072, i8* %55, align 1
  %1073 = trunc i64 %1068 to i32
  %1074 = and i32 %1073, 255
  %1075 = tail call i32 @llvm.ctpop.i32(i32 %1074)
  %1076 = trunc i32 %1075 to i8
  %1077 = and i8 %1076, 1
  %1078 = xor i8 %1077, 1
  store i8 %1078, i8* %56, align 1
  %1079 = xor i64 %1067, %1060
  %1080 = xor i64 %1079, %1068
  %1081 = lshr i64 %1080, 4
  %1082 = trunc i64 %1081 to i8
  %1083 = and i8 %1082, 1
  store i8 %1083, i8* %57, align 1
  %1084 = icmp eq i64 %1068, 0
  %1085 = zext i1 %1084 to i8
  store i8 %1085, i8* %58, align 1
  %1086 = lshr i64 %1068, 63
  %1087 = trunc i64 %1086 to i8
  store i8 %1087, i8* %59, align 1
  %1088 = lshr i64 %1060, 63
  %1089 = xor i64 %1086, %1088
  %1090 = add nuw nsw i64 %1089, %1086
  %1091 = icmp eq i64 %1090, 2
  %1092 = zext i1 %1091 to i8
  store i8 %1092, i8* %60, align 1
  %1093 = add i64 %1068, 3
  %1094 = add i64 %1059, 24
  store i64 %1094, i64* %3, align 8
  %1095 = inttoptr i64 %1093 to i8*
  store i8 1, i8* %1095, align 1
  %1096 = load i64, i64* %RBP.i, align 8
  %1097 = add i64 %1096, -4
  %1098 = load i64, i64* %3, align 8
  %1099 = add i64 %1098, 7
  store i64 %1099, i64* %3, align 8
  %1100 = inttoptr i64 %1097 to i32*
  %1101 = load i32, i32* %1100, align 4
  %1102 = add i32 %1101, 999500
  %1103 = icmp ult i32 %1101, -999500
  %1104 = zext i1 %1103 to i8
  store i8 %1104, i8* %55, align 1
  %1105 = and i32 %1102, 255
  %1106 = tail call i32 @llvm.ctpop.i32(i32 %1105)
  %1107 = trunc i32 %1106 to i8
  %1108 = and i8 %1107, 1
  %1109 = xor i8 %1108, 1
  store i8 %1109, i8* %56, align 1
  %1110 = xor i32 %1101, 16
  %1111 = xor i32 %1110, %1102
  %1112 = lshr i32 %1111, 4
  %1113 = trunc i32 %1112 to i8
  %1114 = and i8 %1113, 1
  store i8 %1114, i8* %57, align 1
  %1115 = icmp eq i32 %1102, 0
  %1116 = zext i1 %1115 to i8
  store i8 %1116, i8* %58, align 1
  %1117 = lshr i32 %1102, 31
  %1118 = trunc i32 %1117 to i8
  store i8 %1118, i8* %59, align 1
  %1119 = lshr i32 %1101, 31
  %1120 = xor i32 %1119, 1
  %1121 = xor i32 %1117, %1119
  %1122 = add nuw nsw i32 %1121, %1120
  %1123 = icmp eq i32 %1122, 2
  %1124 = zext i1 %1123 to i8
  store i8 %1124, i8* %60, align 1
  %1125 = icmp ne i8 %1118, 0
  %1126 = xor i1 %1125, %1123
  %.v41 = select i1 %1126, i64 13, i64 20
  %1127 = add i64 %1098, %.v41
  store i64 %1127, i64* %3, align 8
  br i1 %1126, label %block_420ab8, label %block_.L_420abf

block_420ab8:                                     ; preds = %block_420a93
  %1128 = add i64 %1127, 7
  store i64 %1128, i64* %3, align 8
  store i32 -999500, i32* %1100, align 4
  %.pre29 = load i64, i64* %3, align 8
  br label %block_.L_420abf

block_.L_420abf:                                  ; preds = %block_420a93, %block_420ab8
  %1129 = phi i64 [ %1127, %block_420a93 ], [ %.pre29, %block_420ab8 ]
  %1130 = add i64 %1129, 164
  br label %block_.L_420b63

block_.L_420ac4:                                  ; preds = %block_.L_420a87
  %1131 = add i64 %1059, 3
  store i64 %1131, i64* %3, align 8
  %1132 = load i32, i32* %1026, align 4
  %1133 = zext i32 %1132 to i64
  store i64 %1133, i64* %RAX.i576, align 8
  %1134 = add i64 %1023, -12
  %1135 = add i64 %1059, 6
  store i64 %1135, i64* %3, align 8
  %1136 = inttoptr i64 %1134 to i32*
  %1137 = load i32, i32* %1136, align 4
  %1138 = sub i32 %1132, %1137
  %1139 = icmp ult i32 %1132, %1137
  %1140 = zext i1 %1139 to i8
  store i8 %1140, i8* %55, align 1
  %1141 = and i32 %1138, 255
  %1142 = tail call i32 @llvm.ctpop.i32(i32 %1141)
  %1143 = trunc i32 %1142 to i8
  %1144 = and i8 %1143, 1
  %1145 = xor i8 %1144, 1
  store i8 %1145, i8* %56, align 1
  %1146 = xor i32 %1137, %1132
  %1147 = xor i32 %1146, %1138
  %1148 = lshr i32 %1147, 4
  %1149 = trunc i32 %1148 to i8
  %1150 = and i8 %1149, 1
  store i8 %1150, i8* %57, align 1
  %1151 = icmp eq i32 %1138, 0
  %1152 = zext i1 %1151 to i8
  store i8 %1152, i8* %58, align 1
  %1153 = lshr i32 %1138, 31
  %1154 = trunc i32 %1153 to i8
  store i8 %1154, i8* %59, align 1
  %1155 = lshr i32 %1132, 31
  %1156 = lshr i32 %1137, 31
  %1157 = xor i32 %1156, %1155
  %1158 = xor i32 %1153, %1155
  %1159 = add nuw nsw i32 %1158, %1157
  %1160 = icmp eq i32 %1159, 2
  %1161 = zext i1 %1160 to i8
  store i8 %1161, i8* %60, align 1
  %1162 = icmp ne i8 %1154, 0
  %1163 = xor i1 %1162, %1160
  %.v37 = select i1 %1163, i64 61, i64 12
  %1164 = add i64 %1059, %.v37
  %1165 = load i64, i64* bitcast (%G_0x886a70_type* @G_0x886a70 to i64*), align 8
  store i64 %1165, i64* %RAX.i576, align 8
  %1166 = add i64 %1023, -28
  %1167 = add i64 %1164, 11
  store i64 %1167, i64* %3, align 8
  %1168 = inttoptr i64 %1166 to i32*
  %1169 = load i32, i32* %1168, align 4
  %1170 = zext i32 %1169 to i64
  store i64 %1170, i64* %RCX.i582, align 8
  %1171 = zext i32 %1169 to i64
  %1172 = mul nuw nsw i64 %1171, 20
  store i64 %1172, i64* %RDX.i574, align 8
  %1173 = add i64 %1172, %1165
  store i64 %1173, i64* %RAX.i576, align 8
  %1174 = icmp ult i64 %1173, %1165
  %1175 = icmp ult i64 %1173, %1172
  %1176 = or i1 %1174, %1175
  %1177 = zext i1 %1176 to i8
  store i8 %1177, i8* %55, align 1
  %1178 = trunc i64 %1173 to i32
  %1179 = and i32 %1178, 255
  %1180 = tail call i32 @llvm.ctpop.i32(i32 %1179)
  %1181 = trunc i32 %1180 to i8
  %1182 = and i8 %1181, 1
  %1183 = xor i8 %1182, 1
  store i8 %1183, i8* %56, align 1
  %1184 = xor i64 %1172, %1165
  %1185 = xor i64 %1184, %1173
  %1186 = lshr i64 %1185, 4
  %1187 = trunc i64 %1186 to i8
  %1188 = and i8 %1187, 1
  store i8 %1188, i8* %57, align 1
  %1189 = icmp eq i64 %1173, 0
  %1190 = zext i1 %1189 to i8
  store i8 %1190, i8* %58, align 1
  %1191 = lshr i64 %1173, 63
  %1192 = trunc i64 %1191 to i8
  store i8 %1192, i8* %59, align 1
  %1193 = lshr i64 %1165, 63
  %1194 = xor i64 %1191, %1193
  %1195 = add nuw nsw i64 %1194, %1191
  %1196 = icmp eq i64 %1195, 2
  %1197 = zext i1 %1196 to i8
  store i8 %1197, i8* %60, align 1
  %1198 = add i64 %1173, 3
  %1199 = add i64 %1164, 24
  store i64 %1199, i64* %3, align 8
  %1200 = inttoptr i64 %1198 to i8*
  br i1 %1163, label %block_.L_420b01, label %block_420ad0

block_420ad0:                                     ; preds = %block_.L_420ac4
  store i8 2, i8* %1200, align 1
  %1201 = load i64, i64* %RBP.i, align 8
  %1202 = add i64 %1201, -4
  %1203 = load i64, i64* %3, align 8
  %1204 = add i64 %1203, 7
  store i64 %1204, i64* %3, align 8
  %1205 = inttoptr i64 %1202 to i32*
  %1206 = load i32, i32* %1205, align 4
  %1207 = add i32 %1206, -999500
  %1208 = icmp ult i32 %1206, 999500
  %1209 = zext i1 %1208 to i8
  store i8 %1209, i8* %55, align 1
  %1210 = and i32 %1207, 255
  %1211 = tail call i32 @llvm.ctpop.i32(i32 %1210)
  %1212 = trunc i32 %1211 to i8
  %1213 = and i8 %1212, 1
  %1214 = xor i8 %1213, 1
  store i8 %1214, i8* %56, align 1
  %1215 = xor i32 %1207, %1206
  %1216 = lshr i32 %1215, 4
  %1217 = trunc i32 %1216 to i8
  %1218 = and i8 %1217, 1
  store i8 %1218, i8* %57, align 1
  %1219 = icmp eq i32 %1207, 0
  %1220 = zext i1 %1219 to i8
  store i8 %1220, i8* %58, align 1
  %1221 = lshr i32 %1207, 31
  %1222 = trunc i32 %1221 to i8
  store i8 %1222, i8* %59, align 1
  %1223 = lshr i32 %1206, 31
  %1224 = xor i32 %1221, %1223
  %1225 = add nuw nsw i32 %1224, %1223
  %1226 = icmp eq i32 %1225, 2
  %1227 = zext i1 %1226 to i8
  store i8 %1227, i8* %60, align 1
  %1228 = icmp ne i8 %1222, 0
  %1229 = xor i1 %1228, %1226
  %1230 = or i1 %1219, %1229
  %.v38 = select i1 %1230, i64 20, i64 13
  %1231 = add i64 %1203, %.v38
  store i64 %1231, i64* %3, align 8
  br i1 %1230, label %block_.L_420afc, label %block_420af5

block_420af5:                                     ; preds = %block_420ad0
  %1232 = add i64 %1231, 7
  store i64 %1232, i64* %3, align 8
  store i32 999500, i32* %1205, align 4
  %.pre30 = load i64, i64* %3, align 8
  br label %block_.L_420afc

block_.L_420afc:                                  ; preds = %block_420af5, %block_420ad0
  %1233 = phi i64 [ %.pre30, %block_420af5 ], [ %1231, %block_420ad0 ]
  %1234 = add i64 %1233, 98
  br label %block_.L_420b5e

block_.L_420b01:                                  ; preds = %block_.L_420ac4
  store i8 3, i8* %1200, align 1
  %1235 = load i64, i64* %RBP.i, align 8
  %1236 = add i64 %1235, -4
  %1237 = load i64, i64* %3, align 8
  %1238 = add i64 %1237, 7
  store i64 %1238, i64* %3, align 8
  %1239 = inttoptr i64 %1236 to i32*
  %1240 = load i32, i32* %1239, align 4
  %1241 = add i32 %1240, -999500
  %1242 = icmp ult i32 %1240, 999500
  %1243 = zext i1 %1242 to i8
  store i8 %1243, i8* %55, align 1
  %1244 = and i32 %1241, 255
  %1245 = tail call i32 @llvm.ctpop.i32(i32 %1244)
  %1246 = trunc i32 %1245 to i8
  %1247 = and i8 %1246, 1
  %1248 = xor i8 %1247, 1
  store i8 %1248, i8* %56, align 1
  %1249 = xor i32 %1241, %1240
  %1250 = lshr i32 %1249, 4
  %1251 = trunc i32 %1250 to i8
  %1252 = and i8 %1251, 1
  store i8 %1252, i8* %57, align 1
  %1253 = icmp eq i32 %1241, 0
  %1254 = zext i1 %1253 to i8
  store i8 %1254, i8* %58, align 1
  %1255 = lshr i32 %1241, 31
  %1256 = trunc i32 %1255 to i8
  store i8 %1256, i8* %59, align 1
  %1257 = lshr i32 %1240, 31
  %1258 = xor i32 %1255, %1257
  %1259 = add nuw nsw i32 %1258, %1257
  %1260 = icmp eq i32 %1259, 2
  %1261 = zext i1 %1260 to i8
  store i8 %1261, i8* %60, align 1
  %1262 = icmp ne i8 %1256, 0
  %1263 = xor i1 %1262, %1260
  %1264 = or i1 %1253, %1263
  %.v39 = select i1 %1264, i64 31, i64 13
  %1265 = add i64 %1237, %.v39
  store i64 %1265, i64* %3, align 8
  br i1 %1264, label %block_.L_420b38, label %block_420b26

block_420b26:                                     ; preds = %block_.L_420b01
  %1266 = load i32, i32* bitcast (%G_0x886bc0_type* @G_0x886bc0 to i32*), align 8
  %1267 = zext i32 %1266 to i64
  store i64 %1267, i64* %RAX.i576, align 8
  %1268 = add i64 %1265, 10
  store i64 %1268, i64* %3, align 8
  %1269 = load i32, i32* %1239, align 4
  %1270 = add i32 %1269, %1266
  %1271 = zext i32 %1270 to i64
  store i64 %1271, i64* %RAX.i576, align 8
  %1272 = icmp ult i32 %1270, %1266
  %1273 = icmp ult i32 %1270, %1269
  %1274 = or i1 %1272, %1273
  %1275 = zext i1 %1274 to i8
  store i8 %1275, i8* %55, align 1
  %1276 = and i32 %1270, 255
  %1277 = tail call i32 @llvm.ctpop.i32(i32 %1276)
  %1278 = trunc i32 %1277 to i8
  %1279 = and i8 %1278, 1
  %1280 = xor i8 %1279, 1
  store i8 %1280, i8* %56, align 1
  %1281 = xor i32 %1269, %1266
  %1282 = xor i32 %1281, %1270
  %1283 = lshr i32 %1282, 4
  %1284 = trunc i32 %1283 to i8
  %1285 = and i8 %1284, 1
  store i8 %1285, i8* %57, align 1
  %1286 = icmp eq i32 %1270, 0
  %1287 = zext i1 %1286 to i8
  store i8 %1287, i8* %58, align 1
  %1288 = lshr i32 %1270, 31
  %1289 = trunc i32 %1288 to i8
  store i8 %1289, i8* %59, align 1
  %1290 = lshr i32 %1266, 31
  %1291 = lshr i32 %1269, 31
  %1292 = xor i32 %1288, %1290
  %1293 = xor i32 %1288, %1291
  %1294 = add nuw nsw i32 %1292, %1293
  %1295 = icmp eq i32 %1294, 2
  %1296 = zext i1 %1295 to i8
  store i8 %1296, i8* %60, align 1
  %1297 = add i64 %1265, 13
  store i64 %1297, i64* %3, align 8
  store i32 %1270, i32* %1239, align 4
  %1298 = load i64, i64* %3, align 8
  %1299 = add i64 %1298, 38
  br label %block_.L_420b59

block_.L_420b38:                                  ; preds = %block_.L_420b01
  %1300 = add i64 %1265, 7
  store i64 %1300, i64* %3, align 8
  %1301 = load i32, i32* %1239, align 4
  %1302 = add i32 %1301, 999500
  %1303 = icmp ult i32 %1301, -999500
  %1304 = zext i1 %1303 to i8
  store i8 %1304, i8* %55, align 1
  %1305 = and i32 %1302, 255
  %1306 = tail call i32 @llvm.ctpop.i32(i32 %1305)
  %1307 = trunc i32 %1306 to i8
  %1308 = and i8 %1307, 1
  %1309 = xor i8 %1308, 1
  store i8 %1309, i8* %56, align 1
  %1310 = xor i32 %1301, 16
  %1311 = xor i32 %1310, %1302
  %1312 = lshr i32 %1311, 4
  %1313 = trunc i32 %1312 to i8
  %1314 = and i8 %1313, 1
  store i8 %1314, i8* %57, align 1
  %1315 = icmp eq i32 %1302, 0
  %1316 = zext i1 %1315 to i8
  store i8 %1316, i8* %58, align 1
  %1317 = lshr i32 %1302, 31
  %1318 = trunc i32 %1317 to i8
  store i8 %1318, i8* %59, align 1
  %1319 = lshr i32 %1301, 31
  %1320 = xor i32 %1319, 1
  %1321 = xor i32 %1317, %1319
  %1322 = add nuw nsw i32 %1321, %1320
  %1323 = icmp eq i32 %1322, 2
  %1324 = zext i1 %1323 to i8
  store i8 %1324, i8* %60, align 1
  %1325 = icmp ne i8 %1318, 0
  %1326 = xor i1 %1325, %1323
  %.v40 = select i1 %1326, i64 13, i64 28
  %1327 = add i64 %1265, %.v40
  store i64 %1327, i64* %3, align 8
  br i1 %1326, label %block_420b45, label %block_.L_420b54

block_420b45:                                     ; preds = %block_.L_420b38
  %1328 = load i32, i32* bitcast (%G_0x886bc0_type* @G_0x886bc0 to i32*), align 8
  %1329 = zext i32 %1328 to i64
  store i64 %1329, i64* %RAX.i576, align 8
  %1330 = add i64 %1327, 10
  store i64 %1330, i64* %3, align 8
  %1331 = load i32, i32* %1239, align 4
  %1332 = sub i32 %1331, %1328
  %1333 = zext i32 %1332 to i64
  store i64 %1333, i64* %RCX.i582, align 8
  %1334 = icmp ult i32 %1331, %1328
  %1335 = zext i1 %1334 to i8
  store i8 %1335, i8* %55, align 1
  %1336 = and i32 %1332, 255
  %1337 = tail call i32 @llvm.ctpop.i32(i32 %1336)
  %1338 = trunc i32 %1337 to i8
  %1339 = and i8 %1338, 1
  %1340 = xor i8 %1339, 1
  store i8 %1340, i8* %56, align 1
  %1341 = xor i32 %1328, %1331
  %1342 = xor i32 %1341, %1332
  %1343 = lshr i32 %1342, 4
  %1344 = trunc i32 %1343 to i8
  %1345 = and i8 %1344, 1
  store i8 %1345, i8* %57, align 1
  %1346 = icmp eq i32 %1332, 0
  %1347 = zext i1 %1346 to i8
  store i8 %1347, i8* %58, align 1
  %1348 = lshr i32 %1332, 31
  %1349 = trunc i32 %1348 to i8
  store i8 %1349, i8* %59, align 1
  %1350 = lshr i32 %1331, 31
  %1351 = lshr i32 %1328, 31
  %1352 = xor i32 %1351, %1350
  %1353 = xor i32 %1348, %1350
  %1354 = add nuw nsw i32 %1353, %1352
  %1355 = icmp eq i32 %1354, 2
  %1356 = zext i1 %1355 to i8
  store i8 %1356, i8* %60, align 1
  %1357 = add i64 %1327, 15
  store i64 %1357, i64* %3, align 8
  store i32 %1332, i32* %1239, align 4
  %.pre31 = load i64, i64* %3, align 8
  br label %block_.L_420b54

block_.L_420b54:                                  ; preds = %block_.L_420b38, %block_420b45
  %1358 = phi i64 [ %1327, %block_.L_420b38 ], [ %.pre31, %block_420b45 ]
  %1359 = add i64 %1358, 5
  store i64 %1359, i64* %3, align 8
  br label %block_.L_420b59

block_.L_420b59:                                  ; preds = %block_.L_420b54, %block_420b26
  %storemerge23 = phi i64 [ %1299, %block_420b26 ], [ %1359, %block_.L_420b54 ]
  %1360 = add i64 %storemerge23, 5
  store i64 %1360, i64* %3, align 8
  br label %block_.L_420b5e

block_.L_420b5e:                                  ; preds = %block_.L_420b59, %block_.L_420afc
  %storemerge22 = phi i64 [ %1234, %block_.L_420afc ], [ %1360, %block_.L_420b59 ]
  %1361 = add i64 %storemerge22, 5
  store i64 %1361, i64* %3, align 8
  br label %block_.L_420b63

block_.L_420b63:                                  ; preds = %block_.L_420b5e, %block_.L_420abf
  %storemerge21 = phi i64 [ %1130, %block_.L_420abf ], [ %1361, %block_.L_420b5e ]
  store i64 1, i64* %RAX.i576, align 8
  store i64 0, i64* %RCX.i582, align 8
  store i8 0, i8* %55, align 1
  store i8 1, i8* %56, align 1
  store i8 1, i8* %58, align 1
  store i8 0, i8* %59, align 1
  store i8 0, i8* %60, align 1
  store i8 0, i8* %57, align 1
  %1362 = load i32, i32* bitcast (%G_0x633b40_type* @G_0x633b40 to i32*), align 8
  %1363 = zext i32 %1362 to i64
  store i64 %1363, i64* %RDX.i574, align 8
  %RSI.i130 = getelementptr inbounds %union.anon, %union.anon* %16, i64 0, i32 0
  %1364 = load i64, i64* bitcast (%G_0x886a70_type* @G_0x886a70 to i64*), align 8
  store i64 %1364, i64* %RSI.i130, align 8
  %RDI.i127 = getelementptr inbounds %union.anon, %union.anon* %11, i64 0, i32 0
  %1365 = load i64, i64* %RBP.i, align 8
  %1366 = add i64 %1365, -28
  %1367 = add i64 %storemerge21, 25
  store i64 %1367, i64* %3, align 8
  %1368 = inttoptr i64 %1366 to i32*
  %1369 = load i32, i32* %1368, align 4
  %1370 = zext i32 %1369 to i64
  store i64 %1370, i64* %RDI.i127, align 8
  %1371 = getelementptr inbounds %union.anon, %union.anon* %37, i64 0, i32 0
  %1372 = zext i32 %1369 to i64
  %1373 = mul nuw nsw i64 %1372, 20
  store i64 %1373, i64* %1371, align 8
  %1374 = add i64 %1373, %1364
  %1375 = icmp ult i64 %1374, %1364
  %1376 = icmp ult i64 %1374, %1373
  %1377 = or i1 %1375, %1376
  %1378 = zext i1 %1377 to i8
  store i8 %1378, i8* %55, align 1
  %1379 = trunc i64 %1374 to i32
  %1380 = and i32 %1379, 255
  %1381 = tail call i32 @llvm.ctpop.i32(i32 %1380)
  %1382 = trunc i32 %1381 to i8
  %1383 = and i8 %1382, 1
  %1384 = xor i8 %1383, 1
  store i8 %1384, i8* %56, align 1
  %1385 = xor i64 %1373, %1364
  %1386 = xor i64 %1385, %1374
  %1387 = lshr i64 %1386, 4
  %1388 = trunc i64 %1387 to i8
  %1389 = and i8 %1388, 1
  store i8 %1389, i8* %57, align 1
  %1390 = icmp eq i64 %1374, 0
  %1391 = zext i1 %1390 to i8
  store i8 %1391, i8* %58, align 1
  %1392 = lshr i64 %1374, 63
  %1393 = trunc i64 %1392 to i8
  store i8 %1393, i8* %59, align 1
  %1394 = lshr i64 %1364, 63
  %1395 = xor i64 %1392, %1394
  %1396 = add nuw nsw i64 %1395, %1392
  %1397 = icmp eq i64 %1396, 2
  %1398 = zext i1 %1397 to i8
  store i8 %1398, i8* %60, align 1
  %1399 = add i64 %1374, 8
  %1400 = add i64 %storemerge21, 38
  store i64 %1400, i64* %3, align 8
  %1401 = inttoptr i64 %1399 to i32*
  store i32 %1362, i32* %1401, align 4
  %1402 = load i64, i64* %3, align 8
  %1403 = load i32, i32* bitcast (%G_0x881df4_type* @G_0x881df4 to i32*), align 8
  %1404 = zext i32 %1403 to i64
  store i64 %1404, i64* %RDX.i574, align 8
  %1405 = load i64, i64* bitcast (%G_0x886a70_type* @G_0x886a70 to i64*), align 8
  store i64 %1405, i64* %RSI.i130, align 8
  %1406 = load i64, i64* %RBP.i, align 8
  %1407 = add i64 %1406, -28
  %1408 = add i64 %1402, 18
  store i64 %1408, i64* %3, align 8
  %1409 = inttoptr i64 %1407 to i32*
  %1410 = load i32, i32* %1409, align 4
  %1411 = zext i32 %1410 to i64
  store i64 %1411, i64* %RDI.i127, align 8
  %1412 = zext i32 %1410 to i64
  %1413 = mul nuw nsw i64 %1412, 20
  store i64 %1413, i64* %1371, align 8
  %1414 = add i64 %1413, %1405
  store i64 %1414, i64* %RSI.i130, align 8
  %1415 = icmp ult i64 %1414, %1405
  %1416 = icmp ult i64 %1414, %1413
  %1417 = or i1 %1415, %1416
  %1418 = zext i1 %1417 to i8
  store i8 %1418, i8* %55, align 1
  %1419 = trunc i64 %1414 to i32
  %1420 = and i32 %1419, 255
  %1421 = tail call i32 @llvm.ctpop.i32(i32 %1420)
  %1422 = trunc i32 %1421 to i8
  %1423 = and i8 %1422, 1
  %1424 = xor i8 %1423, 1
  store i8 %1424, i8* %56, align 1
  %1425 = xor i64 %1413, %1405
  %1426 = xor i64 %1425, %1414
  %1427 = lshr i64 %1426, 4
  %1428 = trunc i64 %1427 to i8
  %1429 = and i8 %1428, 1
  store i8 %1429, i8* %57, align 1
  %1430 = icmp eq i64 %1414, 0
  %1431 = zext i1 %1430 to i8
  store i8 %1431, i8* %58, align 1
  %1432 = lshr i64 %1414, 63
  %1433 = trunc i64 %1432 to i8
  store i8 %1433, i8* %59, align 1
  %1434 = lshr i64 %1405, 63
  %1435 = xor i64 %1432, %1434
  %1436 = add nuw nsw i64 %1435, %1432
  %1437 = icmp eq i64 %1436, 2
  %1438 = zext i1 %1437 to i8
  store i8 %1438, i8* %60, align 1
  %1439 = add i64 %1414, 12
  %1440 = add i64 %1402, 31
  store i64 %1440, i64* %3, align 8
  %1441 = inttoptr i64 %1439 to i32*
  store i32 %1403, i32* %1441, align 4
  %1442 = load i64, i64* %RBP.i, align 8
  %1443 = add i64 %1442, -24
  %1444 = load i64, i64* %3, align 8
  %1445 = add i64 %1444, 3
  store i64 %1445, i64* %3, align 8
  %1446 = inttoptr i64 %1443 to i32*
  %1447 = load i32, i32* %1446, align 4
  %1448 = zext i32 %1447 to i64
  store i64 %1448, i64* %RDX.i574, align 8
  %R9B.i93 = bitcast %union.anon* %44 to i8*
  %1449 = trunc i32 %1447 to i8
  store i8 %1449, i8* %R9B.i93, align 1
  %1450 = load i64, i64* bitcast (%G_0x886a70_type* @G_0x886a70 to i64*), align 8
  store i64 %1450, i64* %RSI.i130, align 8
  %1451 = add i64 %1442, -28
  %1452 = add i64 %1444, 17
  store i64 %1452, i64* %3, align 8
  %1453 = inttoptr i64 %1451 to i32*
  %1454 = load i32, i32* %1453, align 4
  %1455 = zext i32 %1454 to i64
  store i64 %1455, i64* %RDX.i574, align 8
  %1456 = zext i32 %1454 to i64
  %1457 = mul nuw nsw i64 %1456, 20
  store i64 %1457, i64* %1371, align 8
  %1458 = add i64 %1457, %1450
  store i64 %1458, i64* %RSI.i130, align 8
  %1459 = icmp ult i64 %1458, %1450
  %1460 = icmp ult i64 %1458, %1457
  %1461 = or i1 %1459, %1460
  %1462 = zext i1 %1461 to i8
  store i8 %1462, i8* %55, align 1
  %1463 = trunc i64 %1458 to i32
  %1464 = and i32 %1463, 255
  %1465 = tail call i32 @llvm.ctpop.i32(i32 %1464)
  %1466 = trunc i32 %1465 to i8
  %1467 = and i8 %1466, 1
  %1468 = xor i8 %1467, 1
  store i8 %1468, i8* %56, align 1
  %1469 = xor i64 %1457, %1450
  %1470 = xor i64 %1469, %1458
  %1471 = lshr i64 %1470, 4
  %1472 = trunc i64 %1471 to i8
  %1473 = and i8 %1472, 1
  store i8 %1473, i8* %57, align 1
  %1474 = icmp eq i64 %1458, 0
  %1475 = zext i1 %1474 to i8
  store i8 %1475, i8* %58, align 1
  %1476 = lshr i64 %1458, 63
  %1477 = trunc i64 %1476 to i8
  store i8 %1477, i8* %59, align 1
  %1478 = lshr i64 %1450, 63
  %1479 = xor i64 %1476, %1478
  %1480 = add nuw nsw i64 %1479, %1476
  %1481 = icmp eq i64 %1480, 2
  %1482 = zext i1 %1481 to i8
  store i8 %1482, i8* %60, align 1
  %1483 = inttoptr i64 %1458 to i8*
  %1484 = add i64 %1444, 30
  store i64 %1484, i64* %3, align 8
  store i8 %1449, i8* %1483, align 1
  %1485 = load i64, i64* %RBP.i, align 8
  %1486 = add i64 %1485, -16
  %1487 = load i64, i64* %3, align 8
  %1488 = add i64 %1487, 3
  store i64 %1488, i64* %3, align 8
  %1489 = inttoptr i64 %1486 to i32*
  %1490 = load i32, i32* %1489, align 4
  %1491 = zext i32 %1490 to i64
  store i64 %1491, i64* %RDX.i574, align 8
  %R10W.i72 = bitcast %union.anon* %70 to i16*
  %1492 = trunc i32 %1490 to i16
  store i16 %1492, i16* %R10W.i72, align 2
  %1493 = load i64, i64* bitcast (%G_0x886a70_type* @G_0x886a70 to i64*), align 8
  store i64 %1493, i64* %RSI.i130, align 8
  %1494 = add i64 %1485, -28
  %1495 = add i64 %1487, 18
  store i64 %1495, i64* %3, align 8
  %1496 = inttoptr i64 %1494 to i32*
  %1497 = load i32, i32* %1496, align 4
  %1498 = zext i32 %1497 to i64
  store i64 %1498, i64* %RDX.i574, align 8
  %1499 = zext i32 %1497 to i64
  %1500 = mul nuw nsw i64 %1499, 20
  store i64 %1500, i64* %1371, align 8
  %1501 = add i64 %1500, %1493
  store i64 %1501, i64* %RSI.i130, align 8
  %1502 = icmp ult i64 %1501, %1493
  %1503 = icmp ult i64 %1501, %1500
  %1504 = or i1 %1502, %1503
  %1505 = zext i1 %1504 to i8
  store i8 %1505, i8* %55, align 1
  %1506 = trunc i64 %1501 to i32
  %1507 = and i32 %1506, 255
  %1508 = tail call i32 @llvm.ctpop.i32(i32 %1507)
  %1509 = trunc i32 %1508 to i8
  %1510 = and i8 %1509, 1
  %1511 = xor i8 %1510, 1
  store i8 %1511, i8* %56, align 1
  %1512 = xor i64 %1500, %1493
  %1513 = xor i64 %1512, %1501
  %1514 = lshr i64 %1513, 4
  %1515 = trunc i64 %1514 to i8
  %1516 = and i8 %1515, 1
  store i8 %1516, i8* %57, align 1
  %1517 = icmp eq i64 %1501, 0
  %1518 = zext i1 %1517 to i8
  store i8 %1518, i8* %58, align 1
  %1519 = lshr i64 %1501, 63
  %1520 = trunc i64 %1519 to i8
  store i8 %1520, i8* %59, align 1
  %1521 = lshr i64 %1493, 63
  %1522 = xor i64 %1519, %1521
  %1523 = add nuw nsw i64 %1522, %1519
  %1524 = icmp eq i64 %1523, 2
  %1525 = zext i1 %1524 to i8
  store i8 %1525, i8* %60, align 1
  %1526 = add i64 %1501, 4
  %1527 = add i64 %1487, 33
  store i64 %1527, i64* %3, align 8
  %1528 = inttoptr i64 %1526 to i16*
  store i16 %1492, i16* %1528, align 2
  %1529 = load i64, i64* %RBP.i, align 8
  %1530 = add i64 %1529, -4
  %1531 = load i64, i64* %3, align 8
  %1532 = add i64 %1531, 3
  store i64 %1532, i64* %3, align 8
  %1533 = inttoptr i64 %1530 to i32*
  %1534 = load i32, i32* %1533, align 4
  %1535 = zext i32 %1534 to i64
  store i64 %1535, i64* %RDX.i574, align 8
  %1536 = load i64, i64* bitcast (%G_0x886a70_type* @G_0x886a70 to i64*), align 8
  store i64 %1536, i64* %RSI.i130, align 8
  %1537 = add i64 %1529, -28
  %1538 = add i64 %1531, 14
  store i64 %1538, i64* %3, align 8
  %1539 = inttoptr i64 %1537 to i32*
  %1540 = load i32, i32* %1539, align 4
  %1541 = zext i32 %1540 to i64
  store i64 %1541, i64* %RDI.i127, align 8
  %1542 = zext i32 %1540 to i64
  %1543 = mul nuw nsw i64 %1542, 20
  store i64 %1543, i64* %1371, align 8
  %1544 = add i64 %1543, %1536
  %1545 = add i64 %1544, 16
  %1546 = add i64 %1531, 27
  store i64 %1546, i64* %3, align 8
  %1547 = inttoptr i64 %1545 to i32*
  store i32 %1534, i32* %1547, align 4
  %1548 = load i64, i64* %3, align 8
  %1549 = load i32, i32* bitcast (%G_0x8661bc_type* @G_0x8661bc to i32*), align 8
  store i8 0, i8* %55, align 1
  %1550 = and i32 %1549, 255
  %1551 = tail call i32 @llvm.ctpop.i32(i32 %1550)
  %1552 = trunc i32 %1551 to i8
  %1553 = and i8 %1552, 1
  %1554 = xor i8 %1553, 1
  store i8 %1554, i8* %56, align 1
  store i8 0, i8* %57, align 1
  %1555 = icmp eq i32 %1549, 0
  %1556 = zext i1 %1555 to i8
  store i8 %1556, i8* %58, align 1
  %1557 = lshr i32 %1549, 31
  %1558 = trunc i32 %1557 to i8
  store i8 %1558, i8* %59, align 1
  store i8 0, i8* %60, align 1
  %1559 = load i32, i32* %ECX.i589, align 4
  %1560 = zext i32 %1559 to i64
  %1561 = load i64, i64* %RAX.i576, align 8
  %1562 = select i1 %1555, i64 %1561, i64 %1560
  %1563 = and i64 %1562, 4294967295
  store i64 %1563, i64* %RAX.i576, align 8
  %1564 = trunc i64 %1562 to i8
  store i8 %1564, i8* %R9B.i93, align 1
  %1565 = load i64, i64* bitcast (%G_0x886a70_type* @G_0x886a70 to i64*), align 8
  store i64 %1565, i64* %RSI.i130, align 8
  %1566 = load i64, i64* %RBP.i, align 8
  %1567 = add i64 %1566, -28
  %1568 = add i64 %1548, 25
  store i64 %1568, i64* %3, align 8
  %1569 = inttoptr i64 %1567 to i32*
  %1570 = load i32, i32* %1569, align 4
  %1571 = zext i32 %1570 to i64
  store i64 %1571, i64* %RAX.i576, align 8
  %1572 = zext i32 %1570 to i64
  %1573 = mul nuw nsw i64 %1572, 20
  store i64 %1573, i64* %1371, align 8
  %1574 = add i64 %1573, %1565
  store i64 %1574, i64* %RSI.i130, align 8
  %1575 = icmp ult i64 %1574, %1565
  %1576 = icmp ult i64 %1574, %1573
  %1577 = or i1 %1575, %1576
  %1578 = zext i1 %1577 to i8
  store i8 %1578, i8* %55, align 1
  %1579 = trunc i64 %1574 to i32
  %1580 = and i32 %1579, 255
  %1581 = tail call i32 @llvm.ctpop.i32(i32 %1580)
  %1582 = trunc i32 %1581 to i8
  %1583 = and i8 %1582, 1
  %1584 = xor i8 %1583, 1
  store i8 %1584, i8* %56, align 1
  %1585 = xor i64 %1573, %1565
  %1586 = xor i64 %1585, %1574
  %1587 = lshr i64 %1586, 4
  %1588 = trunc i64 %1587 to i8
  %1589 = and i8 %1588, 1
  store i8 %1589, i8* %57, align 1
  %1590 = icmp eq i64 %1574, 0
  %1591 = zext i1 %1590 to i8
  store i8 %1591, i8* %58, align 1
  %1592 = lshr i64 %1574, 63
  %1593 = trunc i64 %1592 to i8
  store i8 %1593, i8* %59, align 1
  %1594 = lshr i64 %1565, 63
  %1595 = xor i64 %1592, %1594
  %1596 = add nuw nsw i64 %1595, %1592
  %1597 = icmp eq i64 %1596, 2
  %1598 = zext i1 %1597 to i8
  store i8 %1598, i8* %60, align 1
  %1599 = add i64 %1574, 1
  %1600 = add i64 %1548, 39
  store i64 %1600, i64* %3, align 8
  %1601 = inttoptr i64 %1599 to i8*
  store i8 %1564, i8* %1601, align 1
  %1602 = load i64, i64* %RBP.i, align 8
  %1603 = add i64 %1602, -20
  %1604 = load i64, i64* %3, align 8
  %1605 = add i64 %1604, 3
  store i64 %1605, i64* %3, align 8
  %1606 = inttoptr i64 %1603 to i32*
  %1607 = load i32, i32* %1606, align 4
  %1608 = zext i32 %1607 to i64
  store i64 %1608, i64* %RAX.i576, align 8
  %1609 = trunc i32 %1607 to i8
  store i8 %1609, i8* %R9B.i93, align 1
  %1610 = load i64, i64* bitcast (%G_0x886a70_type* @G_0x886a70 to i64*), align 8
  store i64 %1610, i64* %RSI.i130, align 8
  %1611 = add i64 %1602, -28
  %1612 = add i64 %1604, 17
  store i64 %1612, i64* %3, align 8
  %1613 = inttoptr i64 %1611 to i32*
  %1614 = load i32, i32* %1613, align 4
  %1615 = zext i32 %1614 to i64
  store i64 %1615, i64* %RAX.i576, align 8
  %1616 = zext i32 %1614 to i64
  %1617 = mul nuw nsw i64 %1616, 20
  store i64 %1617, i64* %1371, align 8
  %1618 = add i64 %1617, %1610
  store i64 %1618, i64* %RSI.i130, align 8
  %1619 = icmp ult i64 %1618, %1610
  %1620 = icmp ult i64 %1618, %1617
  %1621 = or i1 %1619, %1620
  %1622 = zext i1 %1621 to i8
  store i8 %1622, i8* %55, align 1
  %1623 = trunc i64 %1618 to i32
  %1624 = and i32 %1623, 255
  %1625 = tail call i32 @llvm.ctpop.i32(i32 %1624)
  %1626 = trunc i32 %1625 to i8
  %1627 = and i8 %1626, 1
  %1628 = xor i8 %1627, 1
  store i8 %1628, i8* %56, align 1
  %1629 = xor i64 %1617, %1610
  %1630 = xor i64 %1629, %1618
  %1631 = lshr i64 %1630, 4
  %1632 = trunc i64 %1631 to i8
  %1633 = and i8 %1632, 1
  store i8 %1633, i8* %57, align 1
  %1634 = icmp eq i64 %1618, 0
  %1635 = zext i1 %1634 to i8
  store i8 %1635, i8* %58, align 1
  %1636 = lshr i64 %1618, 63
  %1637 = trunc i64 %1636 to i8
  store i8 %1637, i8* %59, align 1
  %1638 = lshr i64 %1610, 63
  %1639 = xor i64 %1636, %1638
  %1640 = add nuw nsw i64 %1639, %1636
  %1641 = icmp eq i64 %1640, 2
  %1642 = zext i1 %1641 to i8
  store i8 %1642, i8* %60, align 1
  %1643 = add i64 %1618, 2
  %1644 = add i64 %1604, 31
  store i64 %1644, i64* %3, align 8
  %1645 = inttoptr i64 %1643 to i8*
  store i8 %1609, i8* %1645, align 1
  %.pre32 = load i64, i64* %3, align 8
  br label %block_.L_420c48

block_.L_420c48:                                  ; preds = %block_.L_420b63, %block_.L_42099d
  %1646 = phi i64 [ %.pre32, %block_.L_420b63 ], [ %1021, %block_.L_42099d ]
  %1647 = add i64 %1646, 1
  store i64 %1647, i64* %3, align 8
  %1648 = load i64, i64* %6, align 8
  %1649 = add i64 %1648, 8
  %1650 = inttoptr i64 %1648 to i64*
  %1651 = load i64, i64* %1650, align 8
  store i64 %1651, i64* %RBP.i, align 8
  store i64 %1649, i64* %6, align 8
  %1652 = add i64 %1646, 2
  store i64 %1652, i64* %3, align 8
  %1653 = inttoptr i64 %1649 to i64*
  %1654 = load i64, i64* %1653, align 8
  store i64 %1654, i64* %3, align 8
  %1655 = add i64 %1648, 16
  store i64 %1655, i64* %6, align 8
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
define %struct.Memory* @routine_movl__edi__MINUS0x4__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0
  %EDI = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -4
  %6 = load i32, i32* %EDI, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__esi__MINUS0x8__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0
  %ESI = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -8
  %6 = load i32, i32* %ESI, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__edx__MINUS0xc__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %EDX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -12
  %6 = load i32, i32* %EDX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__ecx__MINUS0x10__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %ECX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -16
  %6 = load i32, i32* %ECX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__r8d__MINUS0x14__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0
  %R8D = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -20
  %6 = load i32, i32* %R8D, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 4
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__r9d__MINUS0x18__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 19, i32 0
  %R9D = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -24
  %6 = load i32, i32* %R9D, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 4
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_0x864508___ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 7
  store i64 %4, i64* %PC, align 8
  %5 = load i32, i32* bitcast (%G_0x864508_type* @G_0x864508 to i32*), align 8
  %6 = zext i32 %5 to i64
  store i64 %6, i64* %RCX, align 8
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
define %struct.Memory* @routine_movl__ecx__0x864508(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %ECX = bitcast %union.anon* %3 to i32*
  %4 = load i32, i32* %ECX, align 4
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  store i32 %4, i32* bitcast (%G_0x864508_type* @G_0x864508 to i32*), align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_0x633b40___eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 7
  store i64 %4, i64* %PC, align 8
  %5 = load i32, i32* bitcast (%G_0x633b40_type* @G_0x633b40 to i32*), align 8
  %6 = zext i32 %5 to i64
  store i64 %6, i64* %RAX, align 8
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

define %struct.Memory* @routine_divl_0x8661d4(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 7
  store i64 %4, i64* %PC, align 8
  %5 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %6 = bitcast %union.anon* %5 to i32*
  %7 = load i32, i32* %6, align 8
  %8 = zext i32 %7 to i64
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %10 = bitcast %union.anon* %9 to i32*
  %11 = load i32, i32* %10, align 8
  %12 = zext i32 %11 to i64
  %13 = load i32, i32* bitcast (%G_0x8661d4_type* @G_0x8661d4 to i32*), align 8
  %14 = zext i32 %13 to i64
  %15 = shl nuw i64 %12, 32
  %16 = or i64 %15, %8
  %17 = udiv i64 %16, %14
  %18 = and i64 %17, 4294967295
  %19 = icmp eq i64 %17, %18
  br i1 %19, label %22, label %20

; <label>:20:                                     ; preds = %block_400488
  %21 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %4, %struct.Memory* %2)
  br label %_ZN12_GLOBAL__N_1L9DIVedxeaxI2MnIjEEEP6MemoryS4_R5StateT_.exit

; <label>:22:                                     ; preds = %block_400488
  %23 = urem i64 %16, %14
  %24 = getelementptr inbounds %union.anon, %union.anon* %5, i64 0, i32 0
  store i64 %17, i64* %24, align 8
  %25 = getelementptr inbounds %union.anon, %union.anon* %9, i64 0, i32 0
  store i64 %23, i64* %25, align 8
  %26 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %26, align 1
  %27 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 0, i8* %27, align 1
  %28 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %28, align 1
  %29 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %29, align 1
  %30 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 0, i8* %30, align 1
  %31 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %31, align 1
  br label %_ZN12_GLOBAL__N_1L9DIVedxeaxI2MnIjEEEP6MemoryS4_R5StateT_.exit

_ZN12_GLOBAL__N_1L9DIVedxeaxI2MnIjEEEP6MemoryS4_R5StateT_.exit: ; preds = %22, %20
  %32 = phi %struct.Memory* [ %21, %20 ], [ %2, %22 ]
  ret %struct.Memory* %32
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__edx__MINUS0x1c__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %EDX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -28
  %6 = load i32, i32* %EDX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_0x8644f8___r10(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %R10 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 21, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 8
  store i64 %4, i64* %PC, align 8
  %5 = load i64, i64* bitcast (%G_0x8644f8_type* @G_0x8644f8 to i64*), align 8
  store i64 %5, i64* %R10, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x1c__rbp____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -28
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
define %struct.Memory* @routine_movl__ecx___r11d(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %ECX = bitcast %union.anon* %3 to i32*
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 23, i32 0, i32 0
  %5 = load i32, i32* %ECX, align 4
  %6 = zext i32 %5 to i64
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  store i64 %6, i64* %4, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_imulq__0x14___r11___r11(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %R11 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 23, i32 0, i32 0
  %3 = load i64, i64* %R11, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 4
  store i64 %5, i64* %PC, align 8
  %6 = sext i64 %3 to i128
  %7 = and i128 %6, -18446744073709551616
  %8 = zext i64 %3 to i128
  %9 = or i128 %7, %8
  %10 = mul nsw i128 %9, 20
  %11 = trunc i128 %10 to i64
  store i64 %11, i64* %R11, align 8
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
define %struct.Memory* @routine_addq__r11___r10(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %R10 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 21, i32 0, i32 0
  %R11 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 23, i32 0, i32 0
  %3 = load i64, i64* %R10, align 8
  %4 = load i64, i64* %R11, align 8
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 3
  store i64 %6, i64* %PC, align 8
  %7 = add i64 %4, %3
  store i64 %7, i64* %R10, align 8
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
define %struct.Memory* @routine_movsbl___r10____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %R10 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 21, i32 0, i32 0
  %3 = bitcast i64* %R10 to i8**
  %4 = load i8*, i8** %3, align 8
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = load i8, i8* %4, align 1
  %8 = sext i8 %7 to i64
  %9 = and i64 %8, 4294967295
  store i64 %9, i64* %RCX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl_MINUS0x18__rbp____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %ECX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i32, i32* %ECX, align 4
  %5 = load i64, i64* %RBP, align 8
  %6 = add i64 %5, -24
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
define %struct.Memory* @routine_jl_.L_4208b3(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
  %11 = zext i1 %10 to i8
  store i8 %11, i8* %BRANCH_TAKEN, align 1
  %.v = select i1 %10, i64 %rel_off1, i64 %rel_off2
  %12 = add i64 %.v, %3
  store i64 %12, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_0x8644f8___rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 8
  store i64 %4, i64* %PC, align 8
  %5 = load i64, i64* bitcast (%G_0x8644f8_type* @G_0x8644f8 to i64*), align 8
  store i64 %5, i64* %RAX, align 8
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
define %struct.Memory* @routine_imulq__0x14___rdx___rdx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
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
  %10 = mul nsw i128 %9, 20
  %11 = trunc i128 %10 to i64
  store i64 %11, i64* %RDX, align 8
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
define %struct.Memory* @routine_movsbl___rax____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = bitcast i64* %RAX to i8**
  %4 = load i8*, i8** %3, align 8
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 3
  store i64 %6, i64* %PC, align 8
  %7 = load i8, i8* %4, align 1
  %8 = sext i8 %7 to i64
  %9 = and i64 %8, 4294967295
  store i64 %9, i64* %RCX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jne_.L_420a87(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movsbl_0x3__rax____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = add i64 %3, 3
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i8*
  %8 = load i8, i8* %7, align 1
  %9 = sext i8 %8 to i64
  %10 = and i64 %9, 4294967295
  store i64 %10, i64* %RCX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__0x1___ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %ECX = bitcast %union.anon* %3 to i32*
  %4 = load i32, i32* %ECX, align 4
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 3
  store i64 %6, i64* %PC, align 8
  %7 = add i32 %4, -1
  %8 = icmp eq i32 %4, 0
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
define %struct.Memory* @routine_jne_.L_42089b(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_cmpl_MINUS0x8__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i32, i32* %EAX, align 4
  %5 = load i64, i64* %RBP, align 8
  %6 = add i64 %5, -8
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
define %struct.Memory* @routine_jg_.L_4208b3(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jle_.L_420a87(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jge_.L_420a87(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_cmpl__0x0__0x886bbc(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 8
  store i64 %4, i64* %PC, align 8
  %5 = load i32, i32* bitcast (%G_0x886bbc_type* @G_0x886bbc to i32*), align 8
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %6, align 1
  %7 = and i32 %5, 255
  %8 = tail call i32 @llvm.ctpop.i32(i32 %7)
  %9 = trunc i32 %8 to i8
  %10 = and i8 %9, 1
  %11 = xor i8 %10, 1
  %12 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %11, i8* %12, align 1
  %13 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %13, align 1
  %14 = icmp eq i32 %5, 0
  %15 = zext i1 %14 to i8
  %16 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %15, i8* %16, align 1
  %17 = lshr i32 %5, 31
  %18 = trunc i32 %17 to i8
  %19 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %18, i8* %19, align 1
  %20 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %20, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jg_.L_4208fe(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movb__0x1__0x3__rax_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = add i64 %3, 3
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i8*
  store i8 1, i8* %7, align 1
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__0xfff0bfb4__MINUS0x4__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -4
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = add i32 %8, 999500
  %10 = icmp ult i32 %8, -999500
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
  %32 = xor i32 %31, 1
  %33 = xor i32 %28, %31
  %34 = add nuw nsw i32 %33, %32
  %35 = icmp eq i32 %34, 2
  %36 = zext i1 %35 to i8
  %37 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %36, i8* %37, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jge_.L_4208f9(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl__0xfff0bfb4__MINUS0x4__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -4
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  store i32 -999500, i32* %7, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_42099d(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jl_.L_42093b(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
  %11 = zext i1 %10 to i8
  store i8 %11, i8* %BRANCH_TAKEN, align 1
  %.v = select i1 %10, i64 %rel_off1, i64 %rel_off2
  %12 = add i64 %.v, %3
  store i64 %12, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movb__0x2__0x3__rax_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = add i64 %3, 3
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i8*
  store i8 2, i8* %7, align 1
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__0xf404c__MINUS0x4__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -4
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = add i32 %8, -999500
  %10 = icmp ult i32 %8, 999500
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
define %struct.Memory* @routine_jle_.L_420936(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl__0xf404c__MINUS0x4__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -4
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  store i32 999500, i32* %7, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_420998(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movb__0x3__0x3__rax_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = add i64 %3, 3
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i8*
  store i8 3, i8* %7, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jle_.L_420972(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl_0x886bc0___eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 7
  store i64 %4, i64* %PC, align 8
  %5 = load i32, i32* bitcast (%G_0x886bc0_type* @G_0x886bc0 to i32*), align 8
  %6 = zext i32 %5 to i64
  store i64 %6, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_addl_MINUS0x4__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -4
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
define %struct.Memory* @routine_jmpq_.L_420993(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jge_.L_42098e(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl_MINUS0x4__rbp____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -4
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
define %struct.Memory* @routine_subl__eax___ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__ecx__MINUS0x4__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %ECX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -4
  %6 = load i32, i32* %ECX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
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
define %struct.Memory* @routine_movl_0x633b40___edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 7
  store i64 %4, i64* %PC, align 8
  %5 = load i32, i32* bitcast (%G_0x633b40_type* @G_0x633b40 to i32*), align 8
  %6 = zext i32 %5 to i64
  store i64 %6, i64* %RDX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_0x8644f8___rsi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 8
  store i64 %4, i64* %PC, align 8
  %5 = load i64, i64* bitcast (%G_0x8644f8_type* @G_0x8644f8 to i64*), align 8
  store i64 %5, i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x1c__rbp____edi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -28
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
define %struct.Memory* @routine_movl__edi___r8d(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0
  %EDI = bitcast %union.anon* %3 to i32*
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0, i32 0
  %5 = load i32, i32* %EDI, align 4
  %6 = zext i32 %5 to i64
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  store i64 %6, i64* %4, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_imulq__0x14___r8___r8(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
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
  %10 = mul nsw i128 %9, 20
  %11 = trunc i128 %10 to i64
  store i64 %11, i64* %R8, align 8
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
define %struct.Memory* @routine_movl__edx__0x8__rsi_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %EDX = bitcast %union.anon* %3 to i32*
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %4 = load i64, i64* %RSI, align 8
  %5 = add i64 %4, 8
  %6 = load i32, i32* %EDX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_0x881df4___edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 7
  store i64 %4, i64* %PC, align 8
  %5 = load i32, i32* bitcast (%G_0x881df4_type* @G_0x881df4 to i32*), align 8
  %6 = zext i32 %5 to i64
  store i64 %6, i64* %RDX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__edx__0xc__rsi_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %EDX = bitcast %union.anon* %3 to i32*
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %4 = load i64, i64* %RSI, align 8
  %5 = add i64 %4, 12
  %6 = load i32, i32* %EDX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x18__rbp____edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -24
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
define %struct.Memory* @routine_movb__dl___r9b(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %DL = bitcast %union.anon* %3 to i8*
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 19, i32 0
  %R9B = bitcast %union.anon* %4 to i8*
  %5 = load i8, i8* %DL, align 1
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 3
  store i64 %7, i64* %PC, align 8
  store i8 %5, i8* %R9B, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x1c__rbp____edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -28
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
define %struct.Memory* @routine_movl__edx___r8d(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %EDX = bitcast %union.anon* %3 to i32*
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0, i32 0
  %5 = load i32, i32* %EDX, align 4
  %6 = zext i32 %5 to i64
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  store i64 %6, i64* %4, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movb__r9b____rsi_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 19, i32 0
  %R9B = bitcast %union.anon* %3 to i8*
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %4 = bitcast i64* %RSI to i8**
  %5 = load i8*, i8** %4, align 8
  %6 = load i8, i8* %R9B, align 1
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  store i8 %6, i8* %5, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x10__rbp____edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -16
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
define %struct.Memory* @routine_movw__dx___r10w(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %DX = bitcast %union.anon* %3 to i16*
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 21, i32 0
  %R10W = bitcast %union.anon* %4 to i16*
  %5 = load i16, i16* %DX, align 2
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 4
  store i64 %7, i64* %PC, align 8
  store i16 %5, i16* %R10W, align 2
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movw__r10w__0x4__rsi_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 21, i32 0
  %R10W = bitcast %union.anon* %3 to i16*
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %4 = load i64, i64* %RSI, align 8
  %5 = add i64 %4, 4
  %6 = load i16, i16* %R10W, align 2
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 5
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i16*
  store i16 %6, i16* %9, align 2
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x4__rbp____edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -4
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
define %struct.Memory* @routine_movl__edx__0x10__rsi_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %EDX = bitcast %union.anon* %3 to i32*
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %4 = load i64, i64* %RSI, align 8
  %5 = add i64 %4, 16
  %6 = load i32, i32* %EDX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__0x0__0x8661bc(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 8
  store i64 %4, i64* %PC, align 8
  %5 = load i32, i32* bitcast (%G_0x8661bc_type* @G_0x8661bc to i32*), align 8
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %6, align 1
  %7 = and i32 %5, 255
  %8 = tail call i32 @llvm.ctpop.i32(i32 %7)
  %9 = trunc i32 %8 to i8
  %10 = and i8 %9, 1
  %11 = xor i8 %10, 1
  %12 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %11, i8* %12, align 1
  %13 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %13, align 1
  %14 = icmp eq i32 %5, 0
  %15 = zext i1 %14 to i8
  %16 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %15, i8* %16, align 1
  %17 = lshr i32 %5, 31
  %18 = trunc i32 %17 to i8
  %19 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %18, i8* %19, align 1
  %20 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %20, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_cmovnel__ecx___eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
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
  %10 = icmp eq i8 %9, 0
  %11 = load i64, i64* %RAX, align 8
  %12 = select i1 %10, i64 %5, i64 %11
  %13 = and i64 %12, 4294967295
  store i64 %13, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movb__al___r9b(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %AL = bitcast %union.anon* %3 to i8*
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 19, i32 0
  %R9B = bitcast %union.anon* %4 to i8*
  %5 = load i8, i8* %AL, align 1
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 3
  store i64 %7, i64* %PC, align 8
  store i8 %5, i8* %R9B, align 1
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
define %struct.Memory* @routine_movl__eax___r8d(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0, i32 0
  %5 = load i32, i32* %EAX, align 4
  %6 = zext i32 %5 to i64
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  store i64 %6, i64* %4, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movb__r9b__0x1__rsi_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 19, i32 0
  %R9B = bitcast %union.anon* %3 to i8*
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %4 = load i64, i64* %RSI, align 8
  %5 = add i64 %4, 1
  %6 = load i8, i8* %R9B, align 1
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 4
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i8*
  store i8 %6, i8* %9, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x14__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -20
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
define %struct.Memory* @routine_movb__r9b__0x2__rsi_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 19, i32 0
  %R9B = bitcast %union.anon* %3 to i8*
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %4 = load i64, i64* %RSI, align 8
  %5 = add i64 %4, 2
  %6 = load i8, i8* %R9B, align 1
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 4
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i8*
  store i8 %6, i8* %9, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_420c48(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jg_.L_420ac4(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movq_0x886a70___rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 8
  store i64 %4, i64* %PC, align 8
  %5 = load i64, i64* bitcast (%G_0x886a70_type* @G_0x886a70 to i64*), align 8
  store i64 %5, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jge_.L_420abf(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jmpq_.L_420b63(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jl_.L_420b01(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
  %11 = zext i1 %10 to i8
  store i8 %11, i8* %BRANCH_TAKEN, align 1
  %.v = select i1 %10, i64 %rel_off1, i64 %rel_off2
  %12 = add i64 %.v, %3
  store i64 %12, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jle_.L_420afc(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jmpq_.L_420b5e(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jle_.L_420b38(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jmpq_.L_420b59(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jge_.L_420b54(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movq_0x886a70___rsi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 8
  store i64 %4, i64* %PC, align 8
  %5 = load i64, i64* bitcast (%G_0x886a70_type* @G_0x886a70 to i64*), align 8
  store i64 %5, i64* %RSI, align 8
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
