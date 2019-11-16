; ModuleID = 'mcsema/test.proposed.inline.ll'
source_filename = "llvm-link"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu-elf"

%__bss_start_type = type <{ [8 x i8] }>
%G_0x62ea14_type = type <{ [4 x i8] }>
%G_0x633b40_type = type <{ [4 x i8] }>
%G_0x8644f8_type = type <{ [8 x i8] }>
%G_0x8661bc_type = type <{ [1 x i8] }>
%G_0x8661d4_type = type <{ [4 x i8] }>
%G_0x8667a4_type = type <{ [4 x i8] }>
%G_0x881df4_type = type <{ [4 x i8] }>
%G_0x886a70_type = type <{ [8 x i8] }>
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
@G_0x62ea14 = local_unnamed_addr global %G_0x62ea14_type zeroinitializer
@G_0x633b40 = local_unnamed_addr global %G_0x633b40_type zeroinitializer
@G_0x8644f8 = local_unnamed_addr global %G_0x8644f8_type zeroinitializer
@G_0x8661bc = local_unnamed_addr global %G_0x8661bc_type zeroinitializer
@G_0x8661d4 = local_unnamed_addr global %G_0x8661d4_type zeroinitializer
@G_0x8667a4 = local_unnamed_addr global %G_0x8667a4_type zeroinitializer
@G_0x881df4 = local_unnamed_addr global %G_0x881df4_type zeroinitializer
@G_0x886a70 = local_unnamed_addr global %G_0x886a70_type zeroinitializer
@G_0x886bc0 = local_unnamed_addr global %G_0x886bc0_type zeroinitializer

declare %struct.Memory* @__remill_error(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr

; Function Attrs: nounwind readnone
declare i32 @llvm.ctpop.i32(i32) #0

; Function Attrs: alwaysinline
define %struct.Memory* @ProbeTT(%struct.State* noalias, i64, %struct.Memory* noalias) local_unnamed_addr #1 {
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
  %RDI.i766 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %11 = add i64 %7, -24
  %12 = load i64, i64* %RDI.i766, align 8
  %13 = add i64 %10, 7
  store i64 %13, i64* %3, align 8
  %14 = inttoptr i64 %11 to i64*
  store i64 %12, i64* %14, align 8
  %15 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0
  %ESI.i763 = bitcast %union.anon* %15 to i32*
  %16 = load i64, i64* %RBP.i, align 8
  %17 = add i64 %16, -20
  %18 = load i32, i32* %ESI.i763, align 4
  %19 = load i64, i64* %3, align 8
  %20 = add i64 %19, 3
  store i64 %20, i64* %3, align 8
  %21 = inttoptr i64 %17 to i32*
  store i32 %18, i32* %21, align 4
  %RDX.i760 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %22 = load i64, i64* %RBP.i, align 8
  %23 = add i64 %22, -32
  %24 = load i64, i64* %RDX.i760, align 8
  %25 = load i64, i64* %3, align 8
  %26 = add i64 %25, 4
  store i64 %26, i64* %3, align 8
  %27 = inttoptr i64 %23 to i64*
  store i64 %24, i64* %27, align 8
  %28 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %RCX.i757 = getelementptr inbounds %union.anon, %union.anon* %28, i64 0, i32 0
  %29 = load i64, i64* %RBP.i, align 8
  %30 = add i64 %29, -40
  %31 = load i64, i64* %RCX.i757, align 8
  %32 = load i64, i64* %3, align 8
  %33 = add i64 %32, 4
  store i64 %33, i64* %3, align 8
  %34 = inttoptr i64 %30 to i64*
  store i64 %31, i64* %34, align 8
  %35 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0
  %R8.i = getelementptr inbounds %union.anon, %union.anon* %35, i64 0, i32 0
  %36 = load i64, i64* %RBP.i, align 8
  %37 = add i64 %36, -48
  %38 = load i64, i64* %R8.i, align 8
  %39 = load i64, i64* %3, align 8
  %40 = add i64 %39, 4
  store i64 %40, i64* %3, align 8
  %41 = inttoptr i64 %37 to i64*
  store i64 %38, i64* %41, align 8
  %42 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 19, i32 0
  %R9D.i = bitcast %union.anon* %42 to i32*
  %43 = load i64, i64* %RBP.i, align 8
  %44 = add i64 %43, -52
  %45 = load i32, i32* %R9D.i, align 4
  %46 = load i64, i64* %3, align 8
  %47 = add i64 %46, 4
  store i64 %47, i64* %3, align 8
  %48 = inttoptr i64 %44 to i32*
  store i32 %45, i32* %48, align 4
  %49 = load i64, i64* %RBP.i, align 8
  %50 = add i64 %49, -48
  %51 = load i64, i64* %3, align 8
  %52 = add i64 %51, 4
  store i64 %52, i64* %3, align 8
  %53 = inttoptr i64 %50 to i32**
  %54 = load i32*, i32** %53, align 8
  %55 = add i64 %51, 10
  store i64 %55, i64* %3, align 8
  store i32 1, i32* %54, align 4
  %RSI.i746 = getelementptr inbounds %union.anon, %union.anon* %15, i64 0, i32 0
  %56 = load i64, i64* %3, align 8
  %57 = load i32, i32* bitcast (%G_0x62ea14_type* @G_0x62ea14 to i32*), align 8
  %58 = add i32 %57, 1
  %59 = zext i32 %58 to i64
  store i64 %59, i64* %RSI.i746, align 8
  %60 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %61 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %62 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  %63 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %64 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %65 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i32 %58, i32* bitcast (%G_0x62ea14_type* @G_0x62ea14 to i32*), align 8
  %66 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %RAX.i740 = getelementptr inbounds %union.anon, %union.anon* %66, i64 0, i32 0
  %67 = load i32, i32* bitcast (%G_0x633b40_type* @G_0x633b40 to i32*), align 8
  %68 = bitcast %union.anon* %66 to i32*
  %69 = load i32, i32* bitcast (%G_0x8661d4_type* @G_0x8661d4 to i32*), align 8
  %div = udiv i32 %67, %69
  %70 = zext i32 %div to i64
  %71 = urem i32 %67, %69
  %72 = zext i32 %71 to i64
  store i64 %70, i64* %RAX.i740, align 8
  store i64 %72, i64* %RDX.i760, align 8
  store i8 0, i8* %60, align 1
  store i8 0, i8* %61, align 1
  store i8 0, i8* %62, align 1
  store i8 0, i8* %63, align 1
  store i8 0, i8* %64, align 1
  store i8 0, i8* %65, align 1
  %73 = load i64, i64* %RBP.i, align 8
  %74 = add i64 %73, -56
  %75 = add i64 %56, 36
  store i64 %75, i64* %3, align 8
  %76 = inttoptr i64 %74 to i32*
  store i32 %71, i32* %76, align 4
  %77 = load i64, i64* %3, align 8
  %78 = load i64, i64* bitcast (%G_0x8644f8_type* @G_0x8644f8 to i64*), align 8
  store i64 %78, i64* %RCX.i757, align 8
  %79 = load i64, i64* %RBP.i, align 8
  %80 = add i64 %79, -56
  %81 = add i64 %77, 11
  store i64 %81, i64* %3, align 8
  %82 = inttoptr i64 %80 to i32*
  %83 = load i32, i32* %82, align 4
  %84 = zext i32 %83 to i64
  store i64 %84, i64* %RDX.i760, align 8
  %85 = zext i32 %83 to i64
  %86 = mul nuw nsw i64 %85, 20
  store i64 %86, i64* %RDI.i766, align 8
  %87 = add i64 %86, %78
  store i64 %87, i64* %RCX.i757, align 8
  %88 = icmp ult i64 %87, %78
  %89 = icmp ult i64 %87, %86
  %90 = or i1 %88, %89
  %91 = zext i1 %90 to i8
  store i8 %91, i8* %60, align 1
  %92 = trunc i64 %87 to i32
  %93 = and i32 %92, 255
  %94 = tail call i32 @llvm.ctpop.i32(i32 %93)
  %95 = trunc i32 %94 to i8
  %96 = and i8 %95, 1
  %97 = xor i8 %96, 1
  store i8 %97, i8* %61, align 1
  %98 = xor i64 %86, %78
  %99 = xor i64 %98, %87
  %100 = lshr i64 %99, 4
  %101 = trunc i64 %100 to i8
  %102 = and i8 %101, 1
  store i8 %102, i8* %62, align 1
  %103 = icmp eq i64 %87, 0
  %104 = zext i1 %103 to i8
  store i8 %104, i8* %63, align 1
  %105 = lshr i64 %87, 63
  %106 = trunc i64 %105 to i8
  store i8 %106, i8* %64, align 1
  %107 = lshr i64 %78, 63
  %108 = xor i64 %105, %107
  %109 = add nuw nsw i64 %108, %105
  %110 = icmp eq i64 %109, 2
  %111 = zext i1 %110 to i8
  store i8 %111, i8* %65, align 1
  %112 = add i64 %87, 8
  %113 = add i64 %77, 23
  store i64 %113, i64* %3, align 8
  %114 = inttoptr i64 %112 to i32*
  %115 = load i32, i32* %114, align 4
  %116 = zext i32 %115 to i64
  store i64 %116, i64* %RDX.i760, align 8
  %117 = load i32, i32* bitcast (%G_0x633b40_type* @G_0x633b40 to i32*), align 8
  %118 = sub i32 %115, %117
  %119 = icmp ult i32 %115, %117
  %120 = zext i1 %119 to i8
  store i8 %120, i8* %60, align 1
  %121 = and i32 %118, 255
  %122 = tail call i32 @llvm.ctpop.i32(i32 %121)
  %123 = trunc i32 %122 to i8
  %124 = and i8 %123, 1
  %125 = xor i8 %124, 1
  store i8 %125, i8* %61, align 1
  %126 = xor i32 %117, %115
  %127 = xor i32 %126, %118
  %128 = lshr i32 %127, 4
  %129 = trunc i32 %128 to i8
  %130 = and i8 %129, 1
  store i8 %130, i8* %62, align 1
  %131 = icmp eq i32 %118, 0
  %132 = zext i1 %131 to i8
  store i8 %132, i8* %63, align 1
  %133 = lshr i32 %118, 31
  %134 = trunc i32 %133 to i8
  store i8 %134, i8* %64, align 1
  %135 = lshr i32 %115, 31
  %136 = lshr i32 %117, 31
  %137 = xor i32 %136, %135
  %138 = xor i32 %133, %135
  %139 = add nuw nsw i32 %138, %137
  %140 = icmp eq i32 %139, 2
  %141 = zext i1 %140 to i8
  store i8 %141, i8* %65, align 1
  %.v = select i1 %131, i64 36, i64 599
  %142 = add i64 %77, %.v
  store i64 %142, i64* %3, align 8
  br i1 %131, label %block_420dfd, label %routine_divl_0x8661d4.exit.block_.L_421030_crit_edge

routine_divl_0x8661d4.exit.block_.L_421030_crit_edge: ; preds = %routine_divl_0x8661d4.exit
  %.pre33 = bitcast %union.anon* %28 to i32*
  br label %block_.L_421030

block_420dfd:                                     ; preds = %routine_divl_0x8661d4.exit
  %143 = load i64, i64* bitcast (%G_0x8644f8_type* @G_0x8644f8 to i64*), align 8
  store i64 %143, i64* %RAX.i740, align 8
  %144 = load i64, i64* %RBP.i, align 8
  %145 = add i64 %144, -56
  %146 = add i64 %142, 11
  store i64 %146, i64* %3, align 8
  %147 = inttoptr i64 %145 to i32*
  %148 = load i32, i32* %147, align 4
  %149 = zext i32 %148 to i64
  store i64 %149, i64* %RCX.i757, align 8
  %ECX.i704 = bitcast %union.anon* %28 to i32*
  %150 = zext i32 %148 to i64
  %151 = mul nuw nsw i64 %150, 20
  store i64 %151, i64* %RDX.i760, align 8
  %152 = add i64 %151, %143
  store i64 %152, i64* %RAX.i740, align 8
  %153 = icmp ult i64 %152, %143
  %154 = icmp ult i64 %152, %151
  %155 = or i1 %153, %154
  %156 = zext i1 %155 to i8
  store i8 %156, i8* %60, align 1
  %157 = trunc i64 %152 to i32
  %158 = and i32 %157, 255
  %159 = tail call i32 @llvm.ctpop.i32(i32 %158)
  %160 = trunc i32 %159 to i8
  %161 = and i8 %160, 1
  %162 = xor i8 %161, 1
  store i8 %162, i8* %61, align 1
  %163 = xor i64 %151, %143
  %164 = xor i64 %163, %152
  %165 = lshr i64 %164, 4
  %166 = trunc i64 %165 to i8
  %167 = and i8 %166, 1
  store i8 %167, i8* %62, align 1
  %168 = icmp eq i64 %152, 0
  %169 = zext i1 %168 to i8
  store i8 %169, i8* %63, align 1
  %170 = lshr i64 %152, 63
  %171 = trunc i64 %170 to i8
  store i8 %171, i8* %64, align 1
  %172 = lshr i64 %143, 63
  %173 = xor i64 %170, %172
  %174 = add nuw nsw i64 %173, %170
  %175 = icmp eq i64 %174, 2
  %176 = zext i1 %175 to i8
  store i8 %176, i8* %65, align 1
  %177 = add i64 %152, 12
  %178 = add i64 %142, 23
  store i64 %178, i64* %3, align 8
  %179 = inttoptr i64 %177 to i32*
  %180 = load i32, i32* %179, align 4
  %181 = zext i32 %180 to i64
  store i64 %181, i64* %RCX.i757, align 8
  %182 = load i32, i32* bitcast (%G_0x881df4_type* @G_0x881df4 to i32*), align 8
  %183 = sub i32 %180, %182
  %184 = icmp ult i32 %180, %182
  %185 = zext i1 %184 to i8
  store i8 %185, i8* %60, align 1
  %186 = and i32 %183, 255
  %187 = tail call i32 @llvm.ctpop.i32(i32 %186)
  %188 = trunc i32 %187 to i8
  %189 = and i8 %188, 1
  %190 = xor i8 %189, 1
  store i8 %190, i8* %61, align 1
  %191 = xor i32 %182, %180
  %192 = xor i32 %191, %183
  %193 = lshr i32 %192, 4
  %194 = trunc i32 %193 to i8
  %195 = and i8 %194, 1
  store i8 %195, i8* %62, align 1
  %196 = icmp eq i32 %183, 0
  %197 = zext i1 %196 to i8
  store i8 %197, i8* %63, align 1
  %198 = lshr i32 %183, 31
  %199 = trunc i32 %198 to i8
  store i8 %199, i8* %64, align 1
  %200 = lshr i32 %180, 31
  %201 = lshr i32 %182, 31
  %202 = xor i32 %201, %200
  %203 = xor i32 %198, %200
  %204 = add nuw nsw i32 %203, %202
  %205 = icmp eq i32 %204, 2
  %206 = zext i1 %205 to i8
  store i8 %206, i8* %65, align 1
  %.v46 = select i1 %196, i64 36, i64 563
  %207 = add i64 %142, %.v46
  store i64 %207, i64* %3, align 8
  br i1 %196, label %block_420e21, label %block_.L_421030

block_420e21:                                     ; preds = %block_420dfd
  store i64 1, i64* %RAX.i740, align 8
  store i64 0, i64* %RCX.i757, align 8
  store i8 0, i8* %60, align 1
  store i8 1, i8* %61, align 1
  store i8 1, i8* %63, align 1
  store i8 0, i8* %64, align 1
  store i8 0, i8* %65, align 1
  store i8 0, i8* %62, align 1
  %208 = load i64, i64* bitcast (%G_0x8644f8_type* @G_0x8644f8 to i64*), align 8
  store i64 %208, i64* %RDX.i760, align 8
  %209 = load i64, i64* %RBP.i, align 8
  %210 = add i64 %209, -56
  %211 = add i64 %207, 18
  store i64 %211, i64* %3, align 8
  %212 = inttoptr i64 %210 to i32*
  %213 = load i32, i32* %212, align 4
  %214 = zext i32 %213 to i64
  store i64 %214, i64* %RSI.i746, align 8
  %215 = zext i32 %213 to i64
  %216 = mul nuw nsw i64 %215, 20
  store i64 %216, i64* %RDI.i766, align 8
  %217 = add i64 %216, %208
  store i64 %217, i64* %RDX.i760, align 8
  %218 = icmp ult i64 %217, %208
  %219 = icmp ult i64 %217, %216
  %220 = or i1 %218, %219
  %221 = zext i1 %220 to i8
  store i8 %221, i8* %60, align 1
  %222 = trunc i64 %217 to i32
  %223 = and i32 %222, 255
  %224 = tail call i32 @llvm.ctpop.i32(i32 %223)
  %225 = trunc i32 %224 to i8
  %226 = and i8 %225, 1
  %227 = xor i8 %226, 1
  store i8 %227, i8* %61, align 1
  %228 = xor i64 %216, %208
  %229 = xor i64 %228, %217
  %230 = lshr i64 %229, 4
  %231 = trunc i64 %230 to i8
  %232 = and i8 %231, 1
  store i8 %232, i8* %62, align 1
  %233 = icmp eq i64 %217, 0
  %234 = zext i1 %233 to i8
  store i8 %234, i8* %63, align 1
  %235 = lshr i64 %217, 63
  %236 = trunc i64 %235 to i8
  store i8 %236, i8* %64, align 1
  %237 = lshr i64 %208, 63
  %238 = xor i64 %235, %237
  %239 = add nuw nsw i64 %238, %235
  %240 = icmp eq i64 %239, 2
  %241 = zext i1 %240 to i8
  store i8 %241, i8* %65, align 1
  %242 = add i64 %217, 1
  %243 = add i64 %207, 31
  store i64 %243, i64* %3, align 8
  %244 = inttoptr i64 %242 to i8*
  %245 = load i8, i8* %244, align 1
  %246 = sext i8 %245 to i64
  %247 = and i64 %246, 4294967295
  store i64 %247, i64* %RSI.i746, align 8
  %248 = load i32, i32* bitcast (%G_0x8661bc_type* @G_0x8661bc to i32*), align 8
  %249 = icmp eq i32 %248, 0
  %250 = load i32, i32* %ECX.i704, align 4
  %251 = zext i32 %250 to i64
  %252 = load i64, i64* %RAX.i740, align 8
  %253 = select i1 %249, i64 %252, i64 %251
  %R8B.i666 = bitcast %union.anon* %35 to i8*
  %254 = trunc i64 %253 to i8
  store i8 %254, i8* %R8B.i666, align 1
  %sext = shl i64 %253, 56
  %255 = ashr exact i64 %sext, 56
  %256 = and i64 %255, 4294967295
  store i64 %256, i64* %RAX.i740, align 8
  %257 = sext i8 %245 to i32
  %258 = trunc i64 %255 to i32
  %259 = sub i32 %257, %258
  %260 = icmp ult i32 %257, %258
  %261 = zext i1 %260 to i8
  store i8 %261, i8* %60, align 1
  %262 = and i32 %259, 255
  %263 = tail call i32 @llvm.ctpop.i32(i32 %262)
  %264 = trunc i32 %263 to i8
  %265 = and i8 %264, 1
  %266 = xor i8 %265, 1
  store i8 %266, i8* %61, align 1
  %267 = xor i32 %258, %257
  %268 = xor i32 %267, %259
  %269 = lshr i32 %268, 4
  %270 = trunc i32 %269 to i8
  %271 = and i8 %270, 1
  store i8 %271, i8* %62, align 1
  %272 = icmp eq i32 %259, 0
  %273 = zext i1 %272 to i8
  store i8 %273, i8* %63, align 1
  %274 = lshr i32 %259, 31
  %275 = trunc i32 %274 to i8
  store i8 %275, i8* %64, align 1
  %276 = lshr i32 %257, 31
  %277 = lshr i64 %255, 31
  %278 = trunc i64 %277 to i32
  %279 = and i32 %278, 1
  %280 = xor i32 %279, %276
  %281 = xor i32 %274, %276
  %282 = add nuw nsw i32 %281, %280
  %283 = icmp eq i32 %282, 2
  %284 = zext i1 %283 to i8
  store i8 %284, i8* %65, align 1
  %.v47 = select i1 %272, i64 57, i64 527
  %285 = add i64 %207, %.v47
  store i64 %285, i64* %3, align 8
  br i1 %272, label %block_420e5a, label %block_.L_421030

block_420e5a:                                     ; preds = %block_420e21
  %286 = load i32, i32* bitcast (%G_0x8667a4_type* @G_0x8667a4 to i32*), align 8
  %287 = add i32 %286, 1
  %288 = zext i32 %287 to i64
  store i64 %288, i64* %RAX.i740, align 8
  %289 = icmp eq i32 %286, -1
  %290 = icmp eq i32 %287, 0
  %291 = or i1 %289, %290
  %292 = zext i1 %291 to i8
  store i8 %292, i8* %60, align 1
  %293 = and i32 %287, 255
  %294 = tail call i32 @llvm.ctpop.i32(i32 %293)
  %295 = trunc i32 %294 to i8
  %296 = and i8 %295, 1
  %297 = xor i8 %296, 1
  store i8 %297, i8* %61, align 1
  %298 = xor i32 %287, %286
  %299 = lshr i32 %298, 4
  %300 = trunc i32 %299 to i8
  %301 = and i8 %300, 1
  store i8 %301, i8* %62, align 1
  %302 = zext i1 %290 to i8
  store i8 %302, i8* %63, align 1
  %303 = lshr i32 %287, 31
  %304 = trunc i32 %303 to i8
  store i8 %304, i8* %64, align 1
  %305 = lshr i32 %286, 31
  %306 = xor i32 %303, %305
  %307 = add nuw nsw i32 %306, %303
  %308 = icmp eq i32 %307, 2
  %309 = zext i1 %308 to i8
  store i8 %309, i8* %65, align 1
  store i32 %287, i32* bitcast (%G_0x8667a4_type* @G_0x8667a4 to i32*), align 8
  %310 = load i64, i64* bitcast (%G_0x8644f8_type* @G_0x8644f8 to i64*), align 8
  store i64 %310, i64* %RCX.i757, align 8
  %311 = load i64, i64* %RBP.i, align 8
  %312 = add i64 %311, -56
  %313 = add i64 %285, 28
  store i64 %313, i64* %3, align 8
  %314 = inttoptr i64 %312 to i32*
  %315 = load i32, i32* %314, align 4
  %316 = zext i32 %315 to i64
  store i64 %316, i64* %RAX.i740, align 8
  %317 = zext i32 %315 to i64
  %318 = mul nuw nsw i64 %317, 20
  store i64 %318, i64* %RDX.i760, align 8
  %319 = add i64 %318, %310
  store i64 %319, i64* %RCX.i757, align 8
  %320 = icmp ult i64 %319, %310
  %321 = icmp ult i64 %319, %318
  %322 = or i1 %320, %321
  %323 = zext i1 %322 to i8
  store i8 %323, i8* %60, align 1
  %324 = trunc i64 %319 to i32
  %325 = and i32 %324, 255
  %326 = tail call i32 @llvm.ctpop.i32(i32 %325)
  %327 = trunc i32 %326 to i8
  %328 = and i8 %327, 1
  %329 = xor i8 %328, 1
  store i8 %329, i8* %61, align 1
  %330 = xor i64 %318, %310
  %331 = xor i64 %330, %319
  %332 = lshr i64 %331, 4
  %333 = trunc i64 %332 to i8
  %334 = and i8 %333, 1
  store i8 %334, i8* %62, align 1
  %335 = icmp eq i64 %319, 0
  %336 = zext i1 %335 to i8
  store i8 %336, i8* %63, align 1
  %337 = lshr i64 %319, 63
  %338 = trunc i64 %337 to i8
  store i8 %338, i8* %64, align 1
  %339 = lshr i64 %310, 63
  %340 = xor i64 %337, %339
  %341 = add nuw nsw i64 %340, %337
  %342 = icmp eq i64 %341, 2
  %343 = zext i1 %342 to i8
  store i8 %343, i8* %65, align 1
  %344 = add i64 %319, 3
  %345 = add i64 %285, 41
  store i64 %345, i64* %3, align 8
  %346 = inttoptr i64 %344 to i8*
  %347 = load i8, i8* %346, align 1
  %348 = sext i8 %347 to i64
  %349 = and i64 %348, 4294967295
  store i64 %349, i64* %RAX.i740, align 8
  %350 = sext i8 %347 to i32
  %351 = add nsw i32 %350, -1
  %352 = icmp eq i8 %347, 0
  %353 = zext i1 %352 to i8
  store i8 %353, i8* %60, align 1
  %354 = and i32 %351, 255
  %355 = tail call i32 @llvm.ctpop.i32(i32 %354)
  %356 = trunc i32 %355 to i8
  %357 = and i8 %356, 1
  %358 = xor i8 %357, 1
  store i8 %358, i8* %61, align 1
  %359 = xor i32 %351, %350
  %360 = lshr i32 %359, 4
  %361 = trunc i32 %360 to i8
  %362 = and i8 %361, 1
  store i8 %362, i8* %62, align 1
  %363 = icmp eq i32 %351, 0
  %364 = zext i1 %363 to i8
  store i8 %364, i8* %63, align 1
  %365 = lshr i32 %351, 31
  %366 = trunc i32 %365 to i8
  store i8 %366, i8* %64, align 1
  %367 = lshr i32 %350, 31
  %368 = xor i32 %365, %367
  %369 = add nuw nsw i32 %368, %367
  %370 = icmp eq i32 %369, 2
  %371 = zext i1 %370 to i8
  store i8 %371, i8* %65, align 1
  %.v48 = select i1 %363, i64 50, i64 132
  %372 = add i64 %285, %.v48
  store i64 %372, i64* %3, align 8
  br i1 %363, label %block_420e8c, label %block_.L_420ede

block_420e8c:                                     ; preds = %block_420e5a
  %373 = load i64, i64* %RBP.i, align 8
  %374 = add i64 %373, -52
  %375 = add i64 %372, 3
  store i64 %375, i64* %3, align 8
  %376 = inttoptr i64 %374 to i32*
  %377 = load i32, i32* %376, align 4
  %378 = add i32 %377, -2
  %379 = icmp eq i32 %378, 0
  %380 = zext i1 %379 to i8
  %381 = lshr i32 %378, 31
  %382 = add i32 %377, -3
  %383 = zext i32 %382 to i64
  store i64 %383, i64* %RAX.i740, align 8
  store i8 %380, i8* %60, align 1
  %384 = and i32 %382, 255
  %385 = tail call i32 @llvm.ctpop.i32(i32 %384)
  %386 = trunc i32 %385 to i8
  %387 = and i8 %386, 1
  %388 = xor i8 %387, 1
  store i8 %388, i8* %61, align 1
  %389 = xor i32 %382, %378
  %390 = lshr i32 %389, 4
  %391 = trunc i32 %390 to i8
  %392 = and i8 %391, 1
  store i8 %392, i8* %62, align 1
  %393 = icmp eq i32 %382, 0
  %394 = zext i1 %393 to i8
  store i8 %394, i8* %63, align 1
  %395 = lshr i32 %382, 31
  %396 = trunc i32 %395 to i8
  store i8 %396, i8* %64, align 1
  %397 = xor i32 %395, %381
  %398 = add nuw nsw i32 %397, %381
  %399 = icmp eq i32 %398, 2
  %400 = zext i1 %399 to i8
  store i8 %400, i8* %65, align 1
  %401 = load i64, i64* bitcast (%G_0x8644f8_type* @G_0x8644f8 to i64*), align 8
  store i64 %401, i64* %RCX.i757, align 8
  %402 = add i64 %373, -56
  %403 = add i64 %372, 20
  store i64 %403, i64* %3, align 8
  %404 = inttoptr i64 %402 to i32*
  %405 = load i32, i32* %404, align 4
  %406 = zext i32 %405 to i64
  store i64 %406, i64* %RDX.i760, align 8
  %407 = zext i32 %405 to i64
  %408 = mul nuw nsw i64 %407, 20
  store i64 %408, i64* %RSI.i746, align 8
  %409 = add i64 %408, %401
  store i64 %409, i64* %RCX.i757, align 8
  %410 = icmp ult i64 %409, %401
  %411 = icmp ult i64 %409, %408
  %412 = or i1 %410, %411
  %413 = zext i1 %412 to i8
  store i8 %413, i8* %60, align 1
  %414 = trunc i64 %409 to i32
  %415 = and i32 %414, 255
  %416 = tail call i32 @llvm.ctpop.i32(i32 %415)
  %417 = trunc i32 %416 to i8
  %418 = and i8 %417, 1
  %419 = xor i8 %418, 1
  store i8 %419, i8* %61, align 1
  %420 = xor i64 %408, %401
  %421 = xor i64 %420, %409
  %422 = lshr i64 %421, 4
  %423 = trunc i64 %422 to i8
  %424 = and i8 %423, 1
  store i8 %424, i8* %62, align 1
  %425 = icmp eq i64 %409, 0
  %426 = zext i1 %425 to i8
  store i8 %426, i8* %63, align 1
  %427 = lshr i64 %409, 63
  %428 = trunc i64 %427 to i8
  store i8 %428, i8* %64, align 1
  %429 = lshr i64 %401, 63
  %430 = xor i64 %427, %429
  %431 = add nuw nsw i64 %430, %427
  %432 = icmp eq i64 %431, 2
  %433 = zext i1 %432 to i8
  store i8 %433, i8* %65, align 1
  %434 = inttoptr i64 %409 to i8*
  %435 = add i64 %372, 32
  store i64 %435, i64* %3, align 8
  %436 = load i8, i8* %434, align 1
  %437 = sext i8 %436 to i64
  %438 = and i64 %437, 4294967295
  store i64 %438, i64* %RDX.i760, align 8
  %439 = load i32, i32* %68, align 4
  %440 = sext i8 %436 to i32
  %441 = sub i32 %439, %440
  %442 = icmp ult i32 %439, %440
  %443 = zext i1 %442 to i8
  store i8 %443, i8* %60, align 1
  %444 = and i32 %441, 255
  %445 = tail call i32 @llvm.ctpop.i32(i32 %444)
  %446 = trunc i32 %445 to i8
  %447 = and i8 %446, 1
  %448 = xor i8 %447, 1
  store i8 %448, i8* %61, align 1
  %449 = xor i32 %440, %439
  %450 = xor i32 %449, %441
  %451 = lshr i32 %450, 4
  %452 = trunc i32 %451 to i8
  %453 = and i8 %452, 1
  store i8 %453, i8* %62, align 1
  %454 = icmp eq i32 %441, 0
  %455 = zext i1 %454 to i8
  store i8 %455, i8* %63, align 1
  %456 = lshr i32 %441, 31
  %457 = trunc i32 %456 to i8
  store i8 %457, i8* %64, align 1
  %458 = lshr i32 %439, 31
  %459 = lshr i32 %440, 31
  %460 = xor i32 %459, %458
  %461 = xor i32 %456, %458
  %462 = add nuw nsw i32 %461, %460
  %463 = icmp eq i32 %462, 2
  %464 = zext i1 %463 to i8
  store i8 %464, i8* %65, align 1
  %465 = icmp ne i8 %457, 0
  %466 = xor i1 %465, %463
  %.demorgan = or i1 %454, %466
  %.v53 = select i1 %.demorgan, i64 40, i64 82
  %467 = add i64 %372, %.v53
  store i64 %467, i64* %3, align 8
  br i1 %.demorgan, label %block_420eb4, label %block_.L_420ede

block_420eb4:                                     ; preds = %block_420e8c
  %468 = load i64, i64* bitcast (%G_0x8644f8_type* @G_0x8644f8 to i64*), align 8
  store i64 %468, i64* %RAX.i740, align 8
  %469 = load i64, i64* %RBP.i, align 8
  %470 = add i64 %469, -56
  %471 = add i64 %467, 11
  store i64 %471, i64* %3, align 8
  %472 = inttoptr i64 %470 to i32*
  %473 = load i32, i32* %472, align 4
  %474 = zext i32 %473 to i64
  store i64 %474, i64* %RCX.i757, align 8
  %475 = zext i32 %473 to i64
  %476 = mul nuw nsw i64 %475, 20
  store i64 %476, i64* %RDX.i760, align 8
  %477 = add i64 %476, %468
  store i64 %477, i64* %RAX.i740, align 8
  %478 = icmp ult i64 %477, %468
  %479 = icmp ult i64 %477, %476
  %480 = or i1 %478, %479
  %481 = zext i1 %480 to i8
  store i8 %481, i8* %60, align 1
  %482 = trunc i64 %477 to i32
  %483 = and i32 %482, 255
  %484 = tail call i32 @llvm.ctpop.i32(i32 %483)
  %485 = trunc i32 %484 to i8
  %486 = and i8 %485, 1
  %487 = xor i8 %486, 1
  store i8 %487, i8* %61, align 1
  %488 = xor i64 %476, %468
  %489 = xor i64 %488, %477
  %490 = lshr i64 %489, 4
  %491 = trunc i64 %490 to i8
  %492 = and i8 %491, 1
  store i8 %492, i8* %62, align 1
  %493 = icmp eq i64 %477, 0
  %494 = zext i1 %493 to i8
  store i8 %494, i8* %63, align 1
  %495 = lshr i64 %477, 63
  %496 = trunc i64 %495 to i8
  store i8 %496, i8* %64, align 1
  %497 = lshr i64 %468, 63
  %498 = xor i64 %495, %497
  %499 = add nuw nsw i64 %498, %495
  %500 = icmp eq i64 %499, 2
  %501 = zext i1 %500 to i8
  store i8 %501, i8* %65, align 1
  %502 = add i64 %477, 16
  %503 = add i64 %467, 23
  store i64 %503, i64* %3, align 8
  %504 = inttoptr i64 %502 to i32*
  %505 = load i32, i32* %504, align 4
  %506 = zext i32 %505 to i64
  store i64 %506, i64* %RCX.i757, align 8
  %507 = add i64 %469, -20
  %508 = add i64 %467, 26
  store i64 %508, i64* %3, align 8
  %509 = inttoptr i64 %507 to i32*
  %510 = load i32, i32* %509, align 4
  %511 = sub i32 %505, %510
  %512 = icmp ult i32 %505, %510
  %513 = zext i1 %512 to i8
  store i8 %513, i8* %60, align 1
  %514 = and i32 %511, 255
  %515 = tail call i32 @llvm.ctpop.i32(i32 %514)
  %516 = trunc i32 %515 to i8
  %517 = and i8 %516, 1
  %518 = xor i8 %517, 1
  store i8 %518, i8* %61, align 1
  %519 = xor i32 %510, %505
  %520 = xor i32 %519, %511
  %521 = lshr i32 %520, 4
  %522 = trunc i32 %521 to i8
  %523 = and i8 %522, 1
  store i8 %523, i8* %62, align 1
  %524 = icmp eq i32 %511, 0
  %525 = zext i1 %524 to i8
  store i8 %525, i8* %63, align 1
  %526 = lshr i32 %511, 31
  %527 = trunc i32 %526 to i8
  store i8 %527, i8* %64, align 1
  %528 = lshr i32 %505, 31
  %529 = lshr i32 %510, 31
  %530 = xor i32 %529, %528
  %531 = xor i32 %526, %528
  %532 = add nuw nsw i32 %531, %530
  %533 = icmp eq i32 %532, 2
  %534 = zext i1 %533 to i8
  store i8 %534, i8* %65, align 1
  %535 = icmp ne i8 %527, 0
  %536 = xor i1 %535, %533
  %.v54 = select i1 %536, i64 32, i64 42
  %537 = add i64 %467, %.v54
  store i64 %537, i64* %3, align 8
  br i1 %536, label %block_420ed4, label %block_.L_420ede

block_420ed4:                                     ; preds = %block_420eb4
  %538 = load i64, i64* %RBP.i, align 8
  %539 = add i64 %538, -48
  %540 = add i64 %537, 4
  store i64 %540, i64* %3, align 8
  %541 = inttoptr i64 %539 to i64*
  %542 = load i64, i64* %541, align 8
  store i64 %542, i64* %RAX.i740, align 8
  %543 = add i64 %537, 10
  store i64 %543, i64* %3, align 8
  %544 = inttoptr i64 %542 to i32*
  store i32 0, i32* %544, align 4
  %.pre22 = load i64, i64* %3, align 8
  br label %block_.L_420ede

block_.L_420ede:                                  ; preds = %block_420e8c, %block_420e5a, %block_420eb4, %block_420ed4
  %545 = phi i64 [ %537, %block_420eb4 ], [ %.pre22, %block_420ed4 ], [ %467, %block_420e8c ], [ %372, %block_420e5a ]
  %546 = load i64, i64* bitcast (%G_0x8644f8_type* @G_0x8644f8 to i64*), align 8
  store i64 %546, i64* %RAX.i740, align 8
  %547 = load i64, i64* %RBP.i, align 8
  %548 = add i64 %547, -56
  %549 = add i64 %545, 11
  store i64 %549, i64* %3, align 8
  %550 = inttoptr i64 %548 to i32*
  %551 = load i32, i32* %550, align 4
  %552 = zext i32 %551 to i64
  store i64 %552, i64* %RCX.i757, align 8
  %553 = zext i32 %551 to i64
  %554 = mul nuw nsw i64 %553, 20
  store i64 %554, i64* %RDX.i760, align 8
  %555 = add i64 %554, %546
  store i64 %555, i64* %RAX.i740, align 8
  %556 = icmp ult i64 %555, %546
  %557 = icmp ult i64 %555, %554
  %558 = or i1 %556, %557
  %559 = zext i1 %558 to i8
  store i8 %559, i8* %60, align 1
  %560 = trunc i64 %555 to i32
  %561 = and i32 %560, 255
  %562 = tail call i32 @llvm.ctpop.i32(i32 %561)
  %563 = trunc i32 %562 to i8
  %564 = and i8 %563, 1
  %565 = xor i8 %564, 1
  store i8 %565, i8* %61, align 1
  %566 = xor i64 %554, %546
  %567 = xor i64 %566, %555
  %568 = lshr i64 %567, 4
  %569 = trunc i64 %568 to i8
  %570 = and i8 %569, 1
  store i8 %570, i8* %62, align 1
  %571 = icmp eq i64 %555, 0
  %572 = zext i1 %571 to i8
  store i8 %572, i8* %63, align 1
  %573 = lshr i64 %555, 63
  %574 = trunc i64 %573 to i8
  store i8 %574, i8* %64, align 1
  %575 = lshr i64 %546, 63
  %576 = xor i64 %573, %575
  %577 = add nuw nsw i64 %576, %573
  %578 = icmp eq i64 %577, 2
  %579 = zext i1 %578 to i8
  store i8 %579, i8* %65, align 1
  %580 = add i64 %555, 2
  %581 = add i64 %545, 24
  store i64 %581, i64* %3, align 8
  %582 = inttoptr i64 %580 to i8*
  %583 = load i8, i8* %582, align 1
  store i8 0, i8* %60, align 1
  %584 = zext i8 %583 to i32
  %585 = tail call i32 @llvm.ctpop.i32(i32 %584)
  %586 = trunc i32 %585 to i8
  %587 = and i8 %586, 1
  %588 = xor i8 %587, 1
  store i8 %588, i8* %61, align 1
  store i8 0, i8* %62, align 1
  %589 = icmp eq i8 %583, 0
  %590 = zext i1 %589 to i8
  store i8 %590, i8* %63, align 1
  %591 = lshr i8 %583, 7
  store i8 %591, i8* %64, align 1
  store i8 0, i8* %65, align 1
  %.v49 = select i1 %589, i64 39, i64 30
  %592 = add i64 %545, %.v49
  store i64 %592, i64* %3, align 8
  br i1 %589, label %block_.L_420f05, label %block_420efc

block_420efc:                                     ; preds = %block_.L_420ede
  %593 = add i64 %547, -52
  %594 = add i64 %592, 3
  store i64 %594, i64* %3, align 8
  %595 = inttoptr i64 %593 to i32*
  %596 = load i32, i32* %595, align 4
  %597 = add i32 %596, 1
  %598 = zext i32 %597 to i64
  store i64 %598, i64* %RAX.i740, align 8
  %599 = icmp eq i32 %596, -1
  %600 = icmp eq i32 %597, 0
  %601 = or i1 %599, %600
  %602 = zext i1 %601 to i8
  store i8 %602, i8* %60, align 1
  %603 = and i32 %597, 255
  %604 = tail call i32 @llvm.ctpop.i32(i32 %603)
  %605 = trunc i32 %604 to i8
  %606 = and i8 %605, 1
  %607 = xor i8 %606, 1
  store i8 %607, i8* %61, align 1
  %608 = xor i32 %597, %596
  %609 = lshr i32 %608, 4
  %610 = trunc i32 %609 to i8
  %611 = and i8 %610, 1
  store i8 %611, i8* %62, align 1
  %612 = zext i1 %600 to i8
  store i8 %612, i8* %63, align 1
  %613 = lshr i32 %597, 31
  %614 = trunc i32 %613 to i8
  store i8 %614, i8* %64, align 1
  %615 = lshr i32 %596, 31
  %616 = xor i32 %613, %615
  %617 = add nuw nsw i32 %616, %613
  %618 = icmp eq i32 %617, 2
  %619 = zext i1 %618 to i8
  store i8 %619, i8* %65, align 1
  %620 = add i64 %592, 9
  store i64 %620, i64* %3, align 8
  store i32 %597, i32* %595, align 4
  %.pre23 = load i64, i64* %3, align 8
  %.pre24 = load i64, i64* bitcast (%G_0x8644f8_type* @G_0x8644f8 to i64*), align 8
  %.pre25 = load i64, i64* %RBP.i, align 8
  br label %block_.L_420f05

block_.L_420f05:                                  ; preds = %block_420efc, %block_.L_420ede
  %621 = phi i64 [ %.pre25, %block_420efc ], [ %547, %block_.L_420ede ]
  %622 = phi i64 [ %.pre24, %block_420efc ], [ %546, %block_.L_420ede ]
  %623 = phi i64 [ %.pre23, %block_420efc ], [ %592, %block_.L_420ede ]
  store i64 %622, i64* %RAX.i740, align 8
  %624 = add i64 %621, -56
  %625 = add i64 %623, 11
  store i64 %625, i64* %3, align 8
  %626 = inttoptr i64 %624 to i32*
  %627 = load i32, i32* %626, align 4
  %628 = zext i32 %627 to i64
  store i64 %628, i64* %RCX.i757, align 8
  %629 = zext i32 %627 to i64
  %630 = mul nuw nsw i64 %629, 20
  store i64 %630, i64* %RDX.i760, align 8
  %631 = add i64 %630, %622
  store i64 %631, i64* %RAX.i740, align 8
  %632 = icmp ult i64 %631, %622
  %633 = icmp ult i64 %631, %630
  %634 = or i1 %632, %633
  %635 = zext i1 %634 to i8
  store i8 %635, i8* %60, align 1
  %636 = trunc i64 %631 to i32
  %637 = and i32 %636, 255
  %638 = tail call i32 @llvm.ctpop.i32(i32 %637)
  %639 = trunc i32 %638 to i8
  %640 = and i8 %639, 1
  %641 = xor i8 %640, 1
  store i8 %641, i8* %61, align 1
  %642 = xor i64 %630, %622
  %643 = xor i64 %642, %631
  %644 = lshr i64 %643, 4
  %645 = trunc i64 %644 to i8
  %646 = and i8 %645, 1
  store i8 %646, i8* %62, align 1
  %647 = icmp eq i64 %631, 0
  %648 = zext i1 %647 to i8
  store i8 %648, i8* %63, align 1
  %649 = lshr i64 %631, 63
  %650 = trunc i64 %649 to i8
  store i8 %650, i8* %64, align 1
  %651 = lshr i64 %622, 63
  %652 = xor i64 %649, %651
  %653 = add nuw nsw i64 %652, %649
  %654 = icmp eq i64 %653, 2
  %655 = zext i1 %654 to i8
  store i8 %655, i8* %65, align 1
  %656 = inttoptr i64 %631 to i8*
  %657 = add i64 %623, 23
  store i64 %657, i64* %3, align 8
  %658 = load i8, i8* %656, align 1
  %659 = sext i8 %658 to i64
  %660 = and i64 %659, 4294967295
  store i64 %660, i64* %RCX.i757, align 8
  %661 = sext i8 %658 to i32
  %662 = add i64 %621, -52
  %663 = add i64 %623, 26
  store i64 %663, i64* %3, align 8
  %664 = inttoptr i64 %662 to i32*
  %665 = load i32, i32* %664, align 4
  %666 = sub i32 %661, %665
  %667 = icmp ult i32 %661, %665
  %668 = zext i1 %667 to i8
  store i8 %668, i8* %60, align 1
  %669 = and i32 %666, 255
  %670 = tail call i32 @llvm.ctpop.i32(i32 %669)
  %671 = trunc i32 %670 to i8
  %672 = and i8 %671, 1
  %673 = xor i8 %672, 1
  store i8 %673, i8* %61, align 1
  %674 = xor i32 %665, %661
  %675 = xor i32 %674, %666
  %676 = lshr i32 %675, 4
  %677 = trunc i32 %676 to i8
  %678 = and i8 %677, 1
  store i8 %678, i8* %62, align 1
  %679 = icmp eq i32 %666, 0
  %680 = zext i1 %679 to i8
  store i8 %680, i8* %63, align 1
  %681 = lshr i32 %666, 31
  %682 = trunc i32 %681 to i8
  store i8 %682, i8* %64, align 1
  %683 = lshr i32 %661, 31
  %684 = lshr i32 %665, 31
  %685 = xor i32 %684, %683
  %686 = xor i32 %681, %683
  %687 = add nuw nsw i32 %686, %685
  %688 = icmp eq i32 %687, 2
  %689 = zext i1 %688 to i8
  store i8 %689, i8* %65, align 1
  %690 = icmp ne i8 %682, 0
  %691 = xor i1 %690, %688
  %.v50 = select i1 %691, i64 227, i64 32
  %692 = add i64 %623, %.v50
  %693 = load i64, i64* bitcast (%G_0x8644f8_type* @G_0x8644f8 to i64*), align 8
  store i64 %693, i64* %RAX.i740, align 8
  %694 = load i64, i64* %RBP.i, align 8
  %695 = add i64 %694, -56
  %696 = add i64 %692, 11
  store i64 %696, i64* %3, align 8
  %697 = inttoptr i64 %695 to i32*
  %698 = load i32, i32* %697, align 4
  %699 = zext i32 %698 to i64
  store i64 %699, i64* %RCX.i757, align 8
  %700 = zext i32 %698 to i64
  %701 = mul nuw nsw i64 %700, 20
  store i64 %701, i64* %RDX.i760, align 8
  %702 = add i64 %692, 20
  store i64 %702, i64* %3, align 8
  %703 = add i64 %701, %693
  store i64 %703, i64* %RAX.i740, align 8
  %704 = icmp ult i64 %703, %693
  %705 = icmp ult i64 %703, %701
  %706 = or i1 %704, %705
  %707 = zext i1 %706 to i8
  store i8 %707, i8* %60, align 1
  %708 = trunc i64 %703 to i32
  %709 = and i32 %708, 255
  %710 = tail call i32 @llvm.ctpop.i32(i32 %709)
  %711 = trunc i32 %710 to i8
  %712 = and i8 %711, 1
  %713 = xor i8 %712, 1
  store i8 %713, i8* %61, align 1
  %714 = xor i64 %701, %693
  %715 = xor i64 %714, %703
  %716 = lshr i64 %715, 4
  %717 = trunc i64 %716 to i8
  %718 = and i8 %717, 1
  store i8 %718, i8* %62, align 1
  %719 = icmp eq i64 %703, 0
  %720 = zext i1 %719 to i8
  store i8 %720, i8* %63, align 1
  %721 = lshr i64 %703, 63
  %722 = trunc i64 %721 to i8
  store i8 %722, i8* %64, align 1
  %723 = lshr i64 %693, 63
  %724 = xor i64 %721, %723
  %725 = add nuw nsw i64 %724, %721
  %726 = icmp eq i64 %725, 2
  %727 = zext i1 %726 to i8
  store i8 %727, i8* %65, align 1
  br i1 %691, label %block_.L_420fe8, label %block_420f25

block_420f25:                                     ; preds = %block_.L_420f05
  %728 = add i64 %703, 16
  %729 = add i64 %692, 23
  store i64 %729, i64* %3, align 8
  %730 = inttoptr i64 %728 to i32*
  %731 = load i32, i32* %730, align 4
  %732 = zext i32 %731 to i64
  store i64 %732, i64* %RCX.i757, align 8
  %733 = add i64 %694, -16
  %734 = add i64 %692, 27
  store i64 %734, i64* %3, align 8
  %735 = inttoptr i64 %733 to i64*
  %736 = load i64, i64* %735, align 8
  store i64 %736, i64* %RAX.i740, align 8
  %737 = add i64 %692, 29
  store i64 %737, i64* %3, align 8
  %738 = inttoptr i64 %736 to i32*
  store i32 %731, i32* %738, align 4
  %739 = load i64, i64* %RBP.i, align 8
  %740 = add i64 %739, -16
  %741 = load i64, i64* %3, align 8
  %742 = add i64 %741, 4
  store i64 %742, i64* %3, align 8
  %743 = inttoptr i64 %740 to i64*
  %744 = load i64, i64* %743, align 8
  store i64 %744, i64* %RAX.i740, align 8
  %745 = add i64 %741, 10
  store i64 %745, i64* %3, align 8
  %746 = inttoptr i64 %744 to i32*
  %747 = load i32, i32* %746, align 4
  %748 = add i32 %747, -999500
  %749 = icmp ult i32 %747, 999500
  %750 = zext i1 %749 to i8
  store i8 %750, i8* %60, align 1
  %751 = and i32 %748, 255
  %752 = tail call i32 @llvm.ctpop.i32(i32 %751)
  %753 = trunc i32 %752 to i8
  %754 = and i8 %753, 1
  %755 = xor i8 %754, 1
  store i8 %755, i8* %61, align 1
  %756 = xor i32 %748, %747
  %757 = lshr i32 %756, 4
  %758 = trunc i32 %757 to i8
  %759 = and i8 %758, 1
  store i8 %759, i8* %62, align 1
  %760 = icmp eq i32 %748, 0
  %761 = zext i1 %760 to i8
  store i8 %761, i8* %63, align 1
  %762 = lshr i32 %748, 31
  %763 = trunc i32 %762 to i8
  store i8 %763, i8* %64, align 1
  %764 = lshr i32 %747, 31
  %765 = xor i32 %762, %764
  %766 = add nuw nsw i32 %765, %764
  %767 = icmp eq i32 %766, 2
  %768 = zext i1 %767 to i8
  store i8 %768, i8* %65, align 1
  %769 = icmp ne i8 %763, 0
  %770 = xor i1 %769, %767
  %771 = or i1 %760, %770
  %.v51 = select i1 %771, i64 38, i64 16
  %772 = add i64 %741, %.v51
  store i64 %772, i64* %3, align 8
  br i1 %771, label %block_.L_420f68, label %block_420f52

block_420f52:                                     ; preds = %block_420f25
  %773 = load i32, i32* bitcast (%G_0x886bc0_type* @G_0x886bc0 to i32*), align 8
  %774 = zext i32 %773 to i64
  store i64 %774, i64* %RAX.i740, align 8
  %775 = add i64 %772, 11
  store i64 %775, i64* %3, align 8
  %776 = load i64, i64* %743, align 8
  store i64 %776, i64* %RCX.i757, align 8
  %777 = add i64 %772, 13
  store i64 %777, i64* %3, align 8
  %778 = inttoptr i64 %776 to i32*
  %779 = load i32, i32* %778, align 4
  %780 = sub i32 %779, %773
  %781 = zext i32 %780 to i64
  store i64 %781, i64* %RDX.i760, align 8
  %782 = icmp ult i32 %779, %773
  %783 = zext i1 %782 to i8
  store i8 %783, i8* %60, align 1
  %784 = and i32 %780, 255
  %785 = tail call i32 @llvm.ctpop.i32(i32 %784)
  %786 = trunc i32 %785 to i8
  %787 = and i8 %786, 1
  %788 = xor i8 %787, 1
  store i8 %788, i8* %61, align 1
  %789 = xor i32 %773, %779
  %790 = xor i32 %789, %780
  %791 = lshr i32 %790, 4
  %792 = trunc i32 %791 to i8
  %793 = and i8 %792, 1
  store i8 %793, i8* %62, align 1
  %794 = icmp eq i32 %780, 0
  %795 = zext i1 %794 to i8
  store i8 %795, i8* %63, align 1
  %796 = lshr i32 %780, 31
  %797 = trunc i32 %796 to i8
  store i8 %797, i8* %64, align 1
  %798 = lshr i32 %779, 31
  %799 = lshr i32 %773, 31
  %800 = xor i32 %799, %798
  %801 = xor i32 %796, %798
  %802 = add nuw nsw i32 %801, %800
  %803 = icmp eq i32 %802, 2
  %804 = zext i1 %803 to i8
  store i8 %804, i8* %65, align 1
  %805 = add i64 %772, 17
  store i64 %805, i64* %3, align 8
  store i32 %780, i32* %778, align 4
  %806 = load i64, i64* %3, align 8
  %807 = add i64 %806, 41
  br label %block_.L_420f8c

block_.L_420f68:                                  ; preds = %block_420f25
  %808 = add i64 %772, 4
  store i64 %808, i64* %3, align 8
  %809 = load i64, i64* %743, align 8
  store i64 %809, i64* %RAX.i740, align 8
  %810 = add i64 %772, 10
  store i64 %810, i64* %3, align 8
  %811 = inttoptr i64 %809 to i32*
  %812 = load i32, i32* %811, align 4
  %813 = add i32 %812, 999500
  %814 = icmp ult i32 %812, -999500
  %815 = zext i1 %814 to i8
  store i8 %815, i8* %60, align 1
  %816 = and i32 %813, 255
  %817 = tail call i32 @llvm.ctpop.i32(i32 %816)
  %818 = trunc i32 %817 to i8
  %819 = and i8 %818, 1
  %820 = xor i8 %819, 1
  store i8 %820, i8* %61, align 1
  %821 = xor i32 %812, 16
  %822 = xor i32 %821, %813
  %823 = lshr i32 %822, 4
  %824 = trunc i32 %823 to i8
  %825 = and i8 %824, 1
  store i8 %825, i8* %62, align 1
  %826 = icmp eq i32 %813, 0
  %827 = zext i1 %826 to i8
  store i8 %827, i8* %63, align 1
  %828 = lshr i32 %813, 31
  %829 = trunc i32 %828 to i8
  store i8 %829, i8* %64, align 1
  %830 = lshr i32 %812, 31
  %831 = xor i32 %830, 1
  %832 = xor i32 %828, %830
  %833 = add nuw nsw i32 %832, %831
  %834 = icmp eq i32 %833, 2
  %835 = zext i1 %834 to i8
  store i8 %835, i8* %65, align 1
  %836 = icmp ne i8 %829, 0
  %837 = xor i1 %836, %834
  %.v52 = select i1 %837, i64 16, i64 31
  %838 = add i64 %772, %.v52
  store i64 %838, i64* %3, align 8
  br i1 %837, label %block_420f78, label %block_.L_420f87

block_420f78:                                     ; preds = %block_.L_420f68
  %839 = load i32, i32* bitcast (%G_0x886bc0_type* @G_0x886bc0 to i32*), align 8
  %840 = zext i32 %839 to i64
  store i64 %840, i64* %RAX.i740, align 8
  %841 = add i64 %838, 11
  store i64 %841, i64* %3, align 8
  %842 = load i64, i64* %743, align 8
  store i64 %842, i64* %RCX.i757, align 8
  %843 = add i64 %838, 13
  store i64 %843, i64* %3, align 8
  %844 = inttoptr i64 %842 to i32*
  %845 = load i32, i32* %844, align 4
  %846 = add i32 %845, %839
  %847 = zext i32 %846 to i64
  store i64 %847, i64* %RAX.i740, align 8
  %848 = icmp ult i32 %846, %839
  %849 = icmp ult i32 %846, %845
  %850 = or i1 %848, %849
  %851 = zext i1 %850 to i8
  store i8 %851, i8* %60, align 1
  %852 = and i32 %846, 255
  %853 = tail call i32 @llvm.ctpop.i32(i32 %852)
  %854 = trunc i32 %853 to i8
  %855 = and i8 %854, 1
  %856 = xor i8 %855, 1
  store i8 %856, i8* %61, align 1
  %857 = xor i32 %845, %839
  %858 = xor i32 %857, %846
  %859 = lshr i32 %858, 4
  %860 = trunc i32 %859 to i8
  %861 = and i8 %860, 1
  store i8 %861, i8* %62, align 1
  %862 = icmp eq i32 %846, 0
  %863 = zext i1 %862 to i8
  store i8 %863, i8* %63, align 1
  %864 = lshr i32 %846, 31
  %865 = trunc i32 %864 to i8
  store i8 %865, i8* %64, align 1
  %866 = lshr i32 %839, 31
  %867 = lshr i32 %845, 31
  %868 = xor i32 %864, %866
  %869 = xor i32 %864, %867
  %870 = add nuw nsw i32 %868, %869
  %871 = icmp eq i32 %870, 2
  %872 = zext i1 %871 to i8
  store i8 %872, i8* %65, align 1
  %873 = add i64 %838, 15
  store i64 %873, i64* %3, align 8
  store i32 %846, i32* %844, align 4
  %.pre26 = load i64, i64* %3, align 8
  br label %block_.L_420f87

block_.L_420f87:                                  ; preds = %block_.L_420f68, %block_420f78
  %874 = phi i64 [ %838, %block_.L_420f68 ], [ %.pre26, %block_420f78 ]
  %875 = add i64 %874, 5
  store i64 %875, i64* %3, align 8
  br label %block_.L_420f8c

block_.L_420f8c:                                  ; preds = %block_.L_420f87, %block_420f52
  %storemerge = phi i64 [ %807, %block_420f52 ], [ %875, %block_.L_420f87 ]
  %876 = load i64, i64* bitcast (%G_0x8644f8_type* @G_0x8644f8 to i64*), align 8
  store i64 %876, i64* %RAX.i740, align 8
  %877 = load i64, i64* %RBP.i, align 8
  %878 = add i64 %877, -56
  %879 = add i64 %storemerge, 11
  store i64 %879, i64* %3, align 8
  %880 = inttoptr i64 %878 to i32*
  %881 = load i32, i32* %880, align 4
  %882 = zext i32 %881 to i64
  store i64 %882, i64* %RCX.i757, align 8
  %883 = zext i32 %881 to i64
  %884 = mul nuw nsw i64 %883, 20
  store i64 %884, i64* %RDX.i760, align 8
  %885 = add i64 %884, %876
  store i64 %885, i64* %RAX.i740, align 8
  %886 = icmp ult i64 %885, %876
  %887 = icmp ult i64 %885, %884
  %888 = or i1 %886, %887
  %889 = zext i1 %888 to i8
  store i8 %889, i8* %60, align 1
  %890 = trunc i64 %885 to i32
  %891 = and i32 %890, 255
  %892 = tail call i32 @llvm.ctpop.i32(i32 %891)
  %893 = trunc i32 %892 to i8
  %894 = and i8 %893, 1
  %895 = xor i8 %894, 1
  store i8 %895, i8* %61, align 1
  %896 = xor i64 %884, %876
  %897 = xor i64 %896, %885
  %898 = lshr i64 %897, 4
  %899 = trunc i64 %898 to i8
  %900 = and i8 %899, 1
  store i8 %900, i8* %62, align 1
  %901 = icmp eq i64 %885, 0
  %902 = zext i1 %901 to i8
  store i8 %902, i8* %63, align 1
  %903 = lshr i64 %885, 63
  %904 = trunc i64 %903 to i8
  store i8 %904, i8* %64, align 1
  %905 = lshr i64 %876, 63
  %906 = xor i64 %903, %905
  %907 = add nuw nsw i64 %906, %903
  %908 = icmp eq i64 %907, 2
  %909 = zext i1 %908 to i8
  store i8 %909, i8* %65, align 1
  %910 = add i64 %885, 4
  %911 = add i64 %storemerge, 24
  store i64 %911, i64* %3, align 8
  %912 = inttoptr i64 %910 to i16*
  %913 = load i16, i16* %912, align 2
  %914 = zext i16 %913 to i64
  store i64 %914, i64* %RCX.i757, align 8
  %915 = add i64 %877, -32
  %916 = add i64 %storemerge, 28
  store i64 %916, i64* %3, align 8
  %917 = inttoptr i64 %915 to i32**
  %918 = load i32*, i32** %917, align 8
  %919 = zext i16 %913 to i32
  %920 = add i64 %storemerge, 30
  store i64 %920, i64* %3, align 8
  store i32 %919, i32* %918, align 4
  %921 = load i64, i64* %3, align 8
  %922 = load i64, i64* bitcast (%G_0x8644f8_type* @G_0x8644f8 to i64*), align 8
  store i64 %922, i64* %RAX.i740, align 8
  %923 = load i64, i64* %RBP.i, align 8
  %924 = add i64 %923, -56
  %925 = add i64 %921, 11
  store i64 %925, i64* %3, align 8
  %926 = inttoptr i64 %924 to i32*
  %927 = load i32, i32* %926, align 4
  %928 = zext i32 %927 to i64
  store i64 %928, i64* %RCX.i757, align 8
  %929 = zext i32 %927 to i64
  %930 = mul nuw nsw i64 %929, 20
  store i64 %930, i64* %RDX.i760, align 8
  %931 = add i64 %930, %922
  store i64 %931, i64* %RAX.i740, align 8
  %932 = icmp ult i64 %931, %922
  %933 = icmp ult i64 %931, %930
  %934 = or i1 %932, %933
  %935 = zext i1 %934 to i8
  store i8 %935, i8* %60, align 1
  %936 = trunc i64 %931 to i32
  %937 = and i32 %936, 255
  %938 = tail call i32 @llvm.ctpop.i32(i32 %937)
  %939 = trunc i32 %938 to i8
  %940 = and i8 %939, 1
  %941 = xor i8 %940, 1
  store i8 %941, i8* %61, align 1
  %942 = xor i64 %930, %922
  %943 = xor i64 %942, %931
  %944 = lshr i64 %943, 4
  %945 = trunc i64 %944 to i8
  %946 = and i8 %945, 1
  store i8 %946, i8* %62, align 1
  %947 = icmp eq i64 %931, 0
  %948 = zext i1 %947 to i8
  store i8 %948, i8* %63, align 1
  %949 = lshr i64 %931, 63
  %950 = trunc i64 %949 to i8
  store i8 %950, i8* %64, align 1
  %951 = lshr i64 %922, 63
  %952 = xor i64 %949, %951
  %953 = add nuw nsw i64 %952, %949
  %954 = icmp eq i64 %953, 2
  %955 = zext i1 %954 to i8
  store i8 %955, i8* %65, align 1
  %956 = add i64 %931, 2
  %957 = add i64 %921, 24
  store i64 %957, i64* %3, align 8
  %958 = inttoptr i64 %956 to i8*
  %959 = load i8, i8* %958, align 1
  %960 = sext i8 %959 to i64
  %961 = and i64 %960, 4294967295
  store i64 %961, i64* %RCX.i757, align 8
  %962 = add i64 %923, -40
  %963 = add i64 %921, 28
  store i64 %963, i64* %3, align 8
  %964 = inttoptr i64 %962 to i32**
  %965 = load i32*, i32** %964, align 8
  %966 = sext i8 %959 to i32
  %967 = add i64 %921, 30
  store i64 %967, i64* %3, align 8
  store i32 %966, i32* %965, align 4
  %968 = load i64, i64* %3, align 8
  %969 = load i64, i64* bitcast (%G_0x8644f8_type* @G_0x8644f8 to i64*), align 8
  store i64 %969, i64* %RAX.i740, align 8
  %970 = load i64, i64* %RBP.i, align 8
  %971 = add i64 %970, -56
  %972 = add i64 %968, 11
  store i64 %972, i64* %3, align 8
  %973 = inttoptr i64 %971 to i32*
  %974 = load i32, i32* %973, align 4
  %975 = zext i32 %974 to i64
  store i64 %975, i64* %RCX.i757, align 8
  %976 = zext i32 %974 to i64
  %977 = mul nuw nsw i64 %976, 20
  store i64 %977, i64* %RDX.i760, align 8
  %978 = add i64 %977, %969
  store i64 %978, i64* %RAX.i740, align 8
  %979 = icmp ult i64 %978, %969
  %980 = icmp ult i64 %978, %977
  %981 = or i1 %979, %980
  %982 = zext i1 %981 to i8
  store i8 %982, i8* %60, align 1
  %983 = trunc i64 %978 to i32
  %984 = and i32 %983, 255
  %985 = tail call i32 @llvm.ctpop.i32(i32 %984)
  %986 = trunc i32 %985 to i8
  %987 = and i8 %986, 1
  %988 = xor i8 %987, 1
  store i8 %988, i8* %61, align 1
  %989 = xor i64 %977, %969
  %990 = xor i64 %989, %978
  %991 = lshr i64 %990, 4
  %992 = trunc i64 %991 to i8
  %993 = and i8 %992, 1
  store i8 %993, i8* %62, align 1
  %994 = icmp eq i64 %978, 0
  %995 = zext i1 %994 to i8
  store i8 %995, i8* %63, align 1
  %996 = lshr i64 %978, 63
  %997 = trunc i64 %996 to i8
  store i8 %997, i8* %64, align 1
  %998 = lshr i64 %969, 63
  %999 = xor i64 %996, %998
  %1000 = add nuw nsw i64 %999, %996
  %1001 = icmp eq i64 %1000, 2
  %1002 = zext i1 %1001 to i8
  store i8 %1002, i8* %65, align 1
  %1003 = add i64 %978, 3
  %1004 = add i64 %968, 24
  store i64 %1004, i64* %3, align 8
  %1005 = inttoptr i64 %1003 to i8*
  %1006 = load i8, i8* %1005, align 1
  %1007 = sext i8 %1006 to i64
  %1008 = and i64 %1007, 4294967295
  store i64 %1008, i64* %RCX.i757, align 8
  %1009 = add i64 %970, -4
  %1010 = sext i8 %1006 to i32
  %1011 = add i64 %968, 27
  store i64 %1011, i64* %3, align 8
  %1012 = inttoptr i64 %1009 to i32*
  store i32 %1010, i32* %1012, align 4
  %1013 = load i64, i64* %3, align 8
  %1014 = add i64 %1013, 683
  store i64 %1014, i64* %3, align 8
  br label %block_.L_42128e

block_.L_420fe8:                                  ; preds = %block_.L_420f05
  %1015 = add i64 %703, 4
  %1016 = add i64 %692, 24
  store i64 %1016, i64* %3, align 8
  %1017 = inttoptr i64 %1015 to i16*
  %1018 = load i16, i16* %1017, align 2
  %1019 = zext i16 %1018 to i64
  store i64 %1019, i64* %RCX.i757, align 8
  %1020 = add i64 %694, -32
  %1021 = add i64 %692, 28
  store i64 %1021, i64* %3, align 8
  %1022 = inttoptr i64 %1020 to i32**
  %1023 = load i32*, i32** %1022, align 8
  %1024 = zext i16 %1018 to i32
  %1025 = add i64 %692, 30
  store i64 %1025, i64* %3, align 8
  store i32 %1024, i32* %1023, align 4
  %1026 = load i64, i64* %3, align 8
  %1027 = load i64, i64* bitcast (%G_0x8644f8_type* @G_0x8644f8 to i64*), align 8
  store i64 %1027, i64* %RAX.i740, align 8
  %1028 = load i64, i64* %RBP.i, align 8
  %1029 = add i64 %1028, -56
  %1030 = add i64 %1026, 11
  store i64 %1030, i64* %3, align 8
  %1031 = inttoptr i64 %1029 to i32*
  %1032 = load i32, i32* %1031, align 4
  %1033 = zext i32 %1032 to i64
  store i64 %1033, i64* %RCX.i757, align 8
  %1034 = zext i32 %1032 to i64
  %1035 = mul nuw nsw i64 %1034, 20
  store i64 %1035, i64* %RDX.i760, align 8
  %1036 = add i64 %1035, %1027
  store i64 %1036, i64* %RAX.i740, align 8
  %1037 = icmp ult i64 %1036, %1027
  %1038 = icmp ult i64 %1036, %1035
  %1039 = or i1 %1037, %1038
  %1040 = zext i1 %1039 to i8
  store i8 %1040, i8* %60, align 1
  %1041 = trunc i64 %1036 to i32
  %1042 = and i32 %1041, 255
  %1043 = tail call i32 @llvm.ctpop.i32(i32 %1042)
  %1044 = trunc i32 %1043 to i8
  %1045 = and i8 %1044, 1
  %1046 = xor i8 %1045, 1
  store i8 %1046, i8* %61, align 1
  %1047 = xor i64 %1035, %1027
  %1048 = xor i64 %1047, %1036
  %1049 = lshr i64 %1048, 4
  %1050 = trunc i64 %1049 to i8
  %1051 = and i8 %1050, 1
  store i8 %1051, i8* %62, align 1
  %1052 = icmp eq i64 %1036, 0
  %1053 = zext i1 %1052 to i8
  store i8 %1053, i8* %63, align 1
  %1054 = lshr i64 %1036, 63
  %1055 = trunc i64 %1054 to i8
  store i8 %1055, i8* %64, align 1
  %1056 = lshr i64 %1027, 63
  %1057 = xor i64 %1054, %1056
  %1058 = add nuw nsw i64 %1057, %1054
  %1059 = icmp eq i64 %1058, 2
  %1060 = zext i1 %1059 to i8
  store i8 %1060, i8* %65, align 1
  %1061 = add i64 %1036, 2
  %1062 = add i64 %1026, 24
  store i64 %1062, i64* %3, align 8
  %1063 = inttoptr i64 %1061 to i8*
  %1064 = load i8, i8* %1063, align 1
  %1065 = sext i8 %1064 to i64
  %1066 = and i64 %1065, 4294967295
  store i64 %1066, i64* %RCX.i757, align 8
  %1067 = add i64 %1028, -40
  %1068 = add i64 %1026, 28
  store i64 %1068, i64* %3, align 8
  %1069 = inttoptr i64 %1067 to i64*
  %1070 = load i64, i64* %1069, align 8
  store i64 %1070, i64* %RAX.i740, align 8
  %1071 = sext i8 %1064 to i32
  %1072 = add i64 %1026, 30
  store i64 %1072, i64* %3, align 8
  %1073 = inttoptr i64 %1070 to i32*
  store i32 %1071, i32* %1073, align 4
  %1074 = load i64, i64* %RBP.i, align 8
  %1075 = add i64 %1074, -4
  %1076 = load i64, i64* %3, align 8
  %1077 = add i64 %1076, 7
  store i64 %1077, i64* %3, align 8
  %1078 = inttoptr i64 %1075 to i32*
  store i32 0, i32* %1078, align 4
  %1079 = load i64, i64* %3, align 8
  %1080 = add i64 %1079, 611
  store i64 %1080, i64* %3, align 8
  br label %block_.L_42128e

block_.L_421030:                                  ; preds = %block_420e21, %block_420dfd, %routine_divl_0x8661d4.exit.block_.L_421030_crit_edge
  %ECX.i357.pre-phi = phi i32* [ %.pre33, %routine_divl_0x8661d4.exit.block_.L_421030_crit_edge ], [ %ECX.i704, %block_420e21 ], [ %ECX.i704, %block_420dfd ]
  %1081 = phi i64 [ %142, %routine_divl_0x8661d4.exit.block_.L_421030_crit_edge ], [ %285, %block_420e21 ], [ %207, %block_420dfd ]
  %1082 = load i64, i64* bitcast (%G_0x886a70_type* @G_0x886a70 to i64*), align 8
  store i64 %1082, i64* %RAX.i740, align 8
  %1083 = load i64, i64* %RBP.i, align 8
  %1084 = add i64 %1083, -56
  %1085 = add i64 %1081, 11
  store i64 %1085, i64* %3, align 8
  %1086 = inttoptr i64 %1084 to i32*
  %1087 = load i32, i32* %1086, align 4
  %1088 = zext i32 %1087 to i64
  store i64 %1088, i64* %RCX.i757, align 8
  %1089 = zext i32 %1087 to i64
  %1090 = mul nuw nsw i64 %1089, 20
  store i64 %1090, i64* %RDX.i760, align 8
  %1091 = add i64 %1090, %1082
  store i64 %1091, i64* %RAX.i740, align 8
  %1092 = icmp ult i64 %1091, %1082
  %1093 = icmp ult i64 %1091, %1090
  %1094 = or i1 %1092, %1093
  %1095 = zext i1 %1094 to i8
  store i8 %1095, i8* %60, align 1
  %1096 = trunc i64 %1091 to i32
  %1097 = and i32 %1096, 255
  %1098 = tail call i32 @llvm.ctpop.i32(i32 %1097)
  %1099 = trunc i32 %1098 to i8
  %1100 = and i8 %1099, 1
  %1101 = xor i8 %1100, 1
  store i8 %1101, i8* %61, align 1
  %1102 = xor i64 %1090, %1082
  %1103 = xor i64 %1102, %1091
  %1104 = lshr i64 %1103, 4
  %1105 = trunc i64 %1104 to i8
  %1106 = and i8 %1105, 1
  store i8 %1106, i8* %62, align 1
  %1107 = icmp eq i64 %1091, 0
  %1108 = zext i1 %1107 to i8
  store i8 %1108, i8* %63, align 1
  %1109 = lshr i64 %1091, 63
  %1110 = trunc i64 %1109 to i8
  store i8 %1110, i8* %64, align 1
  %1111 = lshr i64 %1082, 63
  %1112 = xor i64 %1109, %1111
  %1113 = add nuw nsw i64 %1112, %1109
  %1114 = icmp eq i64 %1113, 2
  %1115 = zext i1 %1114 to i8
  store i8 %1115, i8* %65, align 1
  %1116 = add i64 %1091, 8
  %1117 = add i64 %1081, 23
  store i64 %1117, i64* %3, align 8
  %1118 = inttoptr i64 %1116 to i32*
  %1119 = load i32, i32* %1118, align 4
  %1120 = zext i32 %1119 to i64
  store i64 %1120, i64* %RCX.i757, align 8
  %1121 = load i32, i32* bitcast (%G_0x633b40_type* @G_0x633b40 to i32*), align 8
  %1122 = sub i32 %1119, %1121
  %1123 = icmp ult i32 %1119, %1121
  %1124 = zext i1 %1123 to i8
  store i8 %1124, i8* %60, align 1
  %1125 = and i32 %1122, 255
  %1126 = tail call i32 @llvm.ctpop.i32(i32 %1125)
  %1127 = trunc i32 %1126 to i8
  %1128 = and i8 %1127, 1
  %1129 = xor i8 %1128, 1
  store i8 %1129, i8* %61, align 1
  %1130 = xor i32 %1121, %1119
  %1131 = xor i32 %1130, %1122
  %1132 = lshr i32 %1131, 4
  %1133 = trunc i32 %1132 to i8
  %1134 = and i8 %1133, 1
  store i8 %1134, i8* %62, align 1
  %1135 = icmp eq i32 %1122, 0
  %1136 = zext i1 %1135 to i8
  store i8 %1136, i8* %63, align 1
  %1137 = lshr i32 %1122, 31
  %1138 = trunc i32 %1137 to i8
  store i8 %1138, i8* %64, align 1
  %1139 = lshr i32 %1119, 31
  %1140 = lshr i32 %1121, 31
  %1141 = xor i32 %1140, %1139
  %1142 = xor i32 %1137, %1139
  %1143 = add nuw nsw i32 %1142, %1141
  %1144 = icmp eq i32 %1143, 2
  %1145 = zext i1 %1144 to i8
  store i8 %1145, i8* %65, align 1
  %.v36 = select i1 %1135, i64 36, i64 599
  %1146 = add i64 %1081, %.v36
  store i64 %1146, i64* %3, align 8
  br i1 %1135, label %block_421054, label %block_.L_421287

block_421054:                                     ; preds = %block_.L_421030
  %1147 = load i64, i64* bitcast (%G_0x886a70_type* @G_0x886a70 to i64*), align 8
  store i64 %1147, i64* %RAX.i740, align 8
  %1148 = load i64, i64* %RBP.i, align 8
  %1149 = add i64 %1148, -56
  %1150 = add i64 %1146, 11
  store i64 %1150, i64* %3, align 8
  %1151 = inttoptr i64 %1149 to i32*
  %1152 = load i32, i32* %1151, align 4
  %1153 = zext i32 %1152 to i64
  store i64 %1153, i64* %RCX.i757, align 8
  %1154 = zext i32 %1152 to i64
  %1155 = mul nuw nsw i64 %1154, 20
  store i64 %1155, i64* %RDX.i760, align 8
  %1156 = add i64 %1155, %1147
  store i64 %1156, i64* %RAX.i740, align 8
  %1157 = icmp ult i64 %1156, %1147
  %1158 = icmp ult i64 %1156, %1155
  %1159 = or i1 %1157, %1158
  %1160 = zext i1 %1159 to i8
  store i8 %1160, i8* %60, align 1
  %1161 = trunc i64 %1156 to i32
  %1162 = and i32 %1161, 255
  %1163 = tail call i32 @llvm.ctpop.i32(i32 %1162)
  %1164 = trunc i32 %1163 to i8
  %1165 = and i8 %1164, 1
  %1166 = xor i8 %1165, 1
  store i8 %1166, i8* %61, align 1
  %1167 = xor i64 %1155, %1147
  %1168 = xor i64 %1167, %1156
  %1169 = lshr i64 %1168, 4
  %1170 = trunc i64 %1169 to i8
  %1171 = and i8 %1170, 1
  store i8 %1171, i8* %62, align 1
  %1172 = icmp eq i64 %1156, 0
  %1173 = zext i1 %1172 to i8
  store i8 %1173, i8* %63, align 1
  %1174 = lshr i64 %1156, 63
  %1175 = trunc i64 %1174 to i8
  store i8 %1175, i8* %64, align 1
  %1176 = lshr i64 %1147, 63
  %1177 = xor i64 %1174, %1176
  %1178 = add nuw nsw i64 %1177, %1174
  %1179 = icmp eq i64 %1178, 2
  %1180 = zext i1 %1179 to i8
  store i8 %1180, i8* %65, align 1
  %1181 = add i64 %1156, 12
  %1182 = add i64 %1146, 23
  store i64 %1182, i64* %3, align 8
  %1183 = inttoptr i64 %1181 to i32*
  %1184 = load i32, i32* %1183, align 4
  %1185 = zext i32 %1184 to i64
  store i64 %1185, i64* %RCX.i757, align 8
  %1186 = load i32, i32* bitcast (%G_0x881df4_type* @G_0x881df4 to i32*), align 8
  %1187 = sub i32 %1184, %1186
  %1188 = icmp ult i32 %1184, %1186
  %1189 = zext i1 %1188 to i8
  store i8 %1189, i8* %60, align 1
  %1190 = and i32 %1187, 255
  %1191 = tail call i32 @llvm.ctpop.i32(i32 %1190)
  %1192 = trunc i32 %1191 to i8
  %1193 = and i8 %1192, 1
  %1194 = xor i8 %1193, 1
  store i8 %1194, i8* %61, align 1
  %1195 = xor i32 %1186, %1184
  %1196 = xor i32 %1195, %1187
  %1197 = lshr i32 %1196, 4
  %1198 = trunc i32 %1197 to i8
  %1199 = and i8 %1198, 1
  store i8 %1199, i8* %62, align 1
  %1200 = icmp eq i32 %1187, 0
  %1201 = zext i1 %1200 to i8
  store i8 %1201, i8* %63, align 1
  %1202 = lshr i32 %1187, 31
  %1203 = trunc i32 %1202 to i8
  store i8 %1203, i8* %64, align 1
  %1204 = lshr i32 %1184, 31
  %1205 = lshr i32 %1186, 31
  %1206 = xor i32 %1205, %1204
  %1207 = xor i32 %1202, %1204
  %1208 = add nuw nsw i32 %1207, %1206
  %1209 = icmp eq i32 %1208, 2
  %1210 = zext i1 %1209 to i8
  store i8 %1210, i8* %65, align 1
  %.v37 = select i1 %1200, i64 36, i64 563
  %1211 = add i64 %1146, %.v37
  store i64 %1211, i64* %3, align 8
  br i1 %1200, label %block_421078, label %block_.L_421287

block_421078:                                     ; preds = %block_421054
  store i64 1, i64* %RAX.i740, align 8
  store i64 0, i64* %RCX.i757, align 8
  store i8 0, i8* %60, align 1
  store i8 1, i8* %61, align 1
  store i8 1, i8* %63, align 1
  store i8 0, i8* %64, align 1
  store i8 0, i8* %65, align 1
  store i8 0, i8* %62, align 1
  %1212 = load i64, i64* bitcast (%G_0x886a70_type* @G_0x886a70 to i64*), align 8
  store i64 %1212, i64* %RDX.i760, align 8
  %1213 = load i64, i64* %RBP.i, align 8
  %1214 = add i64 %1213, -56
  %1215 = add i64 %1211, 18
  store i64 %1215, i64* %3, align 8
  %1216 = inttoptr i64 %1214 to i32*
  %1217 = load i32, i32* %1216, align 4
  %1218 = zext i32 %1217 to i64
  store i64 %1218, i64* %RSI.i746, align 8
  %1219 = zext i32 %1217 to i64
  %1220 = mul nuw nsw i64 %1219, 20
  store i64 %1220, i64* %RDI.i766, align 8
  %1221 = add i64 %1220, %1212
  store i64 %1221, i64* %RDX.i760, align 8
  %1222 = icmp ult i64 %1221, %1212
  %1223 = icmp ult i64 %1221, %1220
  %1224 = or i1 %1222, %1223
  %1225 = zext i1 %1224 to i8
  store i8 %1225, i8* %60, align 1
  %1226 = trunc i64 %1221 to i32
  %1227 = and i32 %1226, 255
  %1228 = tail call i32 @llvm.ctpop.i32(i32 %1227)
  %1229 = trunc i32 %1228 to i8
  %1230 = and i8 %1229, 1
  %1231 = xor i8 %1230, 1
  store i8 %1231, i8* %61, align 1
  %1232 = xor i64 %1220, %1212
  %1233 = xor i64 %1232, %1221
  %1234 = lshr i64 %1233, 4
  %1235 = trunc i64 %1234 to i8
  %1236 = and i8 %1235, 1
  store i8 %1236, i8* %62, align 1
  %1237 = icmp eq i64 %1221, 0
  %1238 = zext i1 %1237 to i8
  store i8 %1238, i8* %63, align 1
  %1239 = lshr i64 %1221, 63
  %1240 = trunc i64 %1239 to i8
  store i8 %1240, i8* %64, align 1
  %1241 = lshr i64 %1212, 63
  %1242 = xor i64 %1239, %1241
  %1243 = add nuw nsw i64 %1242, %1239
  %1244 = icmp eq i64 %1243, 2
  %1245 = zext i1 %1244 to i8
  store i8 %1245, i8* %65, align 1
  %1246 = add i64 %1221, 1
  %1247 = add i64 %1211, 31
  store i64 %1247, i64* %3, align 8
  %1248 = inttoptr i64 %1246 to i8*
  %1249 = load i8, i8* %1248, align 1
  %1250 = sext i8 %1249 to i64
  %1251 = and i64 %1250, 4294967295
  store i64 %1251, i64* %RSI.i746, align 8
  %1252 = load i32, i32* bitcast (%G_0x8661bc_type* @G_0x8661bc to i32*), align 8
  %1253 = icmp eq i32 %1252, 0
  %1254 = load i32, i32* %ECX.i357.pre-phi, align 4
  %1255 = zext i32 %1254 to i64
  %1256 = load i64, i64* %RAX.i740, align 8
  %1257 = select i1 %1253, i64 %1256, i64 %1255
  %R8B.i301 = bitcast %union.anon* %35 to i8*
  %1258 = trunc i64 %1257 to i8
  store i8 %1258, i8* %R8B.i301, align 1
  %sext34 = shl i64 %1257, 56
  %1259 = ashr exact i64 %sext34, 56
  %1260 = and i64 %1259, 4294967295
  store i64 %1260, i64* %RAX.i740, align 8
  %1261 = sext i8 %1249 to i32
  %1262 = trunc i64 %1259 to i32
  %1263 = sub i32 %1261, %1262
  %1264 = icmp ult i32 %1261, %1262
  %1265 = zext i1 %1264 to i8
  store i8 %1265, i8* %60, align 1
  %1266 = and i32 %1263, 255
  %1267 = tail call i32 @llvm.ctpop.i32(i32 %1266)
  %1268 = trunc i32 %1267 to i8
  %1269 = and i8 %1268, 1
  %1270 = xor i8 %1269, 1
  store i8 %1270, i8* %61, align 1
  %1271 = xor i32 %1262, %1261
  %1272 = xor i32 %1271, %1263
  %1273 = lshr i32 %1272, 4
  %1274 = trunc i32 %1273 to i8
  %1275 = and i8 %1274, 1
  store i8 %1275, i8* %62, align 1
  %1276 = icmp eq i32 %1263, 0
  %1277 = zext i1 %1276 to i8
  store i8 %1277, i8* %63, align 1
  %1278 = lshr i32 %1263, 31
  %1279 = trunc i32 %1278 to i8
  store i8 %1279, i8* %64, align 1
  %1280 = lshr i32 %1261, 31
  %1281 = lshr i64 %1259, 31
  %1282 = trunc i64 %1281 to i32
  %1283 = and i32 %1282, 1
  %1284 = xor i32 %1283, %1280
  %1285 = xor i32 %1278, %1280
  %1286 = add nuw nsw i32 %1285, %1284
  %1287 = icmp eq i32 %1286, 2
  %1288 = zext i1 %1287 to i8
  store i8 %1288, i8* %65, align 1
  %.v38 = select i1 %1276, i64 57, i64 527
  %1289 = add i64 %1211, %.v38
  store i64 %1289, i64* %3, align 8
  br i1 %1276, label %block_4210b1, label %block_.L_421287

block_4210b1:                                     ; preds = %block_421078
  %1290 = load i32, i32* bitcast (%G_0x8667a4_type* @G_0x8667a4 to i32*), align 8
  %1291 = add i32 %1290, 1
  %1292 = zext i32 %1291 to i64
  store i64 %1292, i64* %RAX.i740, align 8
  %1293 = icmp eq i32 %1290, -1
  %1294 = icmp eq i32 %1291, 0
  %1295 = or i1 %1293, %1294
  %1296 = zext i1 %1295 to i8
  store i8 %1296, i8* %60, align 1
  %1297 = and i32 %1291, 255
  %1298 = tail call i32 @llvm.ctpop.i32(i32 %1297)
  %1299 = trunc i32 %1298 to i8
  %1300 = and i8 %1299, 1
  %1301 = xor i8 %1300, 1
  store i8 %1301, i8* %61, align 1
  %1302 = xor i32 %1291, %1290
  %1303 = lshr i32 %1302, 4
  %1304 = trunc i32 %1303 to i8
  %1305 = and i8 %1304, 1
  store i8 %1305, i8* %62, align 1
  %1306 = zext i1 %1294 to i8
  store i8 %1306, i8* %63, align 1
  %1307 = lshr i32 %1291, 31
  %1308 = trunc i32 %1307 to i8
  store i8 %1308, i8* %64, align 1
  %1309 = lshr i32 %1290, 31
  %1310 = xor i32 %1307, %1309
  %1311 = add nuw nsw i32 %1310, %1307
  %1312 = icmp eq i32 %1311, 2
  %1313 = zext i1 %1312 to i8
  store i8 %1313, i8* %65, align 1
  store i32 %1291, i32* bitcast (%G_0x8667a4_type* @G_0x8667a4 to i32*), align 8
  %1314 = load i64, i64* bitcast (%G_0x886a70_type* @G_0x886a70 to i64*), align 8
  store i64 %1314, i64* %RCX.i757, align 8
  %1315 = load i64, i64* %RBP.i, align 8
  %1316 = add i64 %1315, -56
  %1317 = add i64 %1289, 28
  store i64 %1317, i64* %3, align 8
  %1318 = inttoptr i64 %1316 to i32*
  %1319 = load i32, i32* %1318, align 4
  %1320 = zext i32 %1319 to i64
  store i64 %1320, i64* %RAX.i740, align 8
  %1321 = zext i32 %1319 to i64
  %1322 = mul nuw nsw i64 %1321, 20
  store i64 %1322, i64* %RDX.i760, align 8
  %1323 = add i64 %1322, %1314
  store i64 %1323, i64* %RCX.i757, align 8
  %1324 = icmp ult i64 %1323, %1314
  %1325 = icmp ult i64 %1323, %1322
  %1326 = or i1 %1324, %1325
  %1327 = zext i1 %1326 to i8
  store i8 %1327, i8* %60, align 1
  %1328 = trunc i64 %1323 to i32
  %1329 = and i32 %1328, 255
  %1330 = tail call i32 @llvm.ctpop.i32(i32 %1329)
  %1331 = trunc i32 %1330 to i8
  %1332 = and i8 %1331, 1
  %1333 = xor i8 %1332, 1
  store i8 %1333, i8* %61, align 1
  %1334 = xor i64 %1322, %1314
  %1335 = xor i64 %1334, %1323
  %1336 = lshr i64 %1335, 4
  %1337 = trunc i64 %1336 to i8
  %1338 = and i8 %1337, 1
  store i8 %1338, i8* %62, align 1
  %1339 = icmp eq i64 %1323, 0
  %1340 = zext i1 %1339 to i8
  store i8 %1340, i8* %63, align 1
  %1341 = lshr i64 %1323, 63
  %1342 = trunc i64 %1341 to i8
  store i8 %1342, i8* %64, align 1
  %1343 = lshr i64 %1314, 63
  %1344 = xor i64 %1341, %1343
  %1345 = add nuw nsw i64 %1344, %1341
  %1346 = icmp eq i64 %1345, 2
  %1347 = zext i1 %1346 to i8
  store i8 %1347, i8* %65, align 1
  %1348 = add i64 %1323, 3
  %1349 = add i64 %1289, 41
  store i64 %1349, i64* %3, align 8
  %1350 = inttoptr i64 %1348 to i8*
  %1351 = load i8, i8* %1350, align 1
  %1352 = sext i8 %1351 to i64
  %1353 = and i64 %1352, 4294967295
  store i64 %1353, i64* %RAX.i740, align 8
  %1354 = sext i8 %1351 to i32
  %1355 = add nsw i32 %1354, -1
  %1356 = icmp eq i8 %1351, 0
  %1357 = zext i1 %1356 to i8
  store i8 %1357, i8* %60, align 1
  %1358 = and i32 %1355, 255
  %1359 = tail call i32 @llvm.ctpop.i32(i32 %1358)
  %1360 = trunc i32 %1359 to i8
  %1361 = and i8 %1360, 1
  %1362 = xor i8 %1361, 1
  store i8 %1362, i8* %61, align 1
  %1363 = xor i32 %1355, %1354
  %1364 = lshr i32 %1363, 4
  %1365 = trunc i32 %1364 to i8
  %1366 = and i8 %1365, 1
  store i8 %1366, i8* %62, align 1
  %1367 = icmp eq i32 %1355, 0
  %1368 = zext i1 %1367 to i8
  store i8 %1368, i8* %63, align 1
  %1369 = lshr i32 %1355, 31
  %1370 = trunc i32 %1369 to i8
  store i8 %1370, i8* %64, align 1
  %1371 = lshr i32 %1354, 31
  %1372 = xor i32 %1369, %1371
  %1373 = add nuw nsw i32 %1372, %1371
  %1374 = icmp eq i32 %1373, 2
  %1375 = zext i1 %1374 to i8
  store i8 %1375, i8* %65, align 1
  %.v39 = select i1 %1367, i64 50, i64 132
  %1376 = add i64 %1289, %.v39
  store i64 %1376, i64* %3, align 8
  br i1 %1367, label %block_4210e3, label %block_.L_421135

block_4210e3:                                     ; preds = %block_4210b1
  %1377 = load i64, i64* %RBP.i, align 8
  %1378 = add i64 %1377, -52
  %1379 = add i64 %1376, 3
  store i64 %1379, i64* %3, align 8
  %1380 = inttoptr i64 %1378 to i32*
  %1381 = load i32, i32* %1380, align 4
  %1382 = add i32 %1381, -2
  %1383 = icmp eq i32 %1382, 0
  %1384 = zext i1 %1383 to i8
  %1385 = lshr i32 %1382, 31
  %1386 = add i32 %1381, -3
  %1387 = zext i32 %1386 to i64
  store i64 %1387, i64* %RAX.i740, align 8
  store i8 %1384, i8* %60, align 1
  %1388 = and i32 %1386, 255
  %1389 = tail call i32 @llvm.ctpop.i32(i32 %1388)
  %1390 = trunc i32 %1389 to i8
  %1391 = and i8 %1390, 1
  %1392 = xor i8 %1391, 1
  store i8 %1392, i8* %61, align 1
  %1393 = xor i32 %1386, %1382
  %1394 = lshr i32 %1393, 4
  %1395 = trunc i32 %1394 to i8
  %1396 = and i8 %1395, 1
  store i8 %1396, i8* %62, align 1
  %1397 = icmp eq i32 %1386, 0
  %1398 = zext i1 %1397 to i8
  store i8 %1398, i8* %63, align 1
  %1399 = lshr i32 %1386, 31
  %1400 = trunc i32 %1399 to i8
  store i8 %1400, i8* %64, align 1
  %1401 = xor i32 %1399, %1385
  %1402 = add nuw nsw i32 %1401, %1385
  %1403 = icmp eq i32 %1402, 2
  %1404 = zext i1 %1403 to i8
  store i8 %1404, i8* %65, align 1
  %1405 = load i64, i64* bitcast (%G_0x886a70_type* @G_0x886a70 to i64*), align 8
  store i64 %1405, i64* %RCX.i757, align 8
  %1406 = add i64 %1377, -56
  %1407 = add i64 %1376, 20
  store i64 %1407, i64* %3, align 8
  %1408 = inttoptr i64 %1406 to i32*
  %1409 = load i32, i32* %1408, align 4
  %1410 = zext i32 %1409 to i64
  store i64 %1410, i64* %RDX.i760, align 8
  %1411 = zext i32 %1409 to i64
  %1412 = mul nuw nsw i64 %1411, 20
  store i64 %1412, i64* %RSI.i746, align 8
  %1413 = add i64 %1412, %1405
  store i64 %1413, i64* %RCX.i757, align 8
  %1414 = icmp ult i64 %1413, %1405
  %1415 = icmp ult i64 %1413, %1412
  %1416 = or i1 %1414, %1415
  %1417 = zext i1 %1416 to i8
  store i8 %1417, i8* %60, align 1
  %1418 = trunc i64 %1413 to i32
  %1419 = and i32 %1418, 255
  %1420 = tail call i32 @llvm.ctpop.i32(i32 %1419)
  %1421 = trunc i32 %1420 to i8
  %1422 = and i8 %1421, 1
  %1423 = xor i8 %1422, 1
  store i8 %1423, i8* %61, align 1
  %1424 = xor i64 %1412, %1405
  %1425 = xor i64 %1424, %1413
  %1426 = lshr i64 %1425, 4
  %1427 = trunc i64 %1426 to i8
  %1428 = and i8 %1427, 1
  store i8 %1428, i8* %62, align 1
  %1429 = icmp eq i64 %1413, 0
  %1430 = zext i1 %1429 to i8
  store i8 %1430, i8* %63, align 1
  %1431 = lshr i64 %1413, 63
  %1432 = trunc i64 %1431 to i8
  store i8 %1432, i8* %64, align 1
  %1433 = lshr i64 %1405, 63
  %1434 = xor i64 %1431, %1433
  %1435 = add nuw nsw i64 %1434, %1431
  %1436 = icmp eq i64 %1435, 2
  %1437 = zext i1 %1436 to i8
  store i8 %1437, i8* %65, align 1
  %1438 = inttoptr i64 %1413 to i8*
  %1439 = add i64 %1376, 32
  store i64 %1439, i64* %3, align 8
  %1440 = load i8, i8* %1438, align 1
  %1441 = sext i8 %1440 to i64
  %1442 = and i64 %1441, 4294967295
  store i64 %1442, i64* %RDX.i760, align 8
  %1443 = load i32, i32* %68, align 4
  %1444 = sext i8 %1440 to i32
  %1445 = sub i32 %1443, %1444
  %1446 = icmp ult i32 %1443, %1444
  %1447 = zext i1 %1446 to i8
  store i8 %1447, i8* %60, align 1
  %1448 = and i32 %1445, 255
  %1449 = tail call i32 @llvm.ctpop.i32(i32 %1448)
  %1450 = trunc i32 %1449 to i8
  %1451 = and i8 %1450, 1
  %1452 = xor i8 %1451, 1
  store i8 %1452, i8* %61, align 1
  %1453 = xor i32 %1444, %1443
  %1454 = xor i32 %1453, %1445
  %1455 = lshr i32 %1454, 4
  %1456 = trunc i32 %1455 to i8
  %1457 = and i8 %1456, 1
  store i8 %1457, i8* %62, align 1
  %1458 = icmp eq i32 %1445, 0
  %1459 = zext i1 %1458 to i8
  store i8 %1459, i8* %63, align 1
  %1460 = lshr i32 %1445, 31
  %1461 = trunc i32 %1460 to i8
  store i8 %1461, i8* %64, align 1
  %1462 = lshr i32 %1443, 31
  %1463 = lshr i32 %1444, 31
  %1464 = xor i32 %1463, %1462
  %1465 = xor i32 %1460, %1462
  %1466 = add nuw nsw i32 %1465, %1464
  %1467 = icmp eq i32 %1466, 2
  %1468 = zext i1 %1467 to i8
  store i8 %1468, i8* %65, align 1
  %1469 = icmp ne i8 %1461, 0
  %1470 = xor i1 %1469, %1467
  %.demorgan35 = or i1 %1458, %1470
  %.v44 = select i1 %.demorgan35, i64 40, i64 82
  %1471 = add i64 %1376, %.v44
  store i64 %1471, i64* %3, align 8
  br i1 %.demorgan35, label %block_42110b, label %block_.L_421135

block_42110b:                                     ; preds = %block_4210e3
  %1472 = load i64, i64* bitcast (%G_0x886a70_type* @G_0x886a70 to i64*), align 8
  store i64 %1472, i64* %RAX.i740, align 8
  %1473 = load i64, i64* %RBP.i, align 8
  %1474 = add i64 %1473, -56
  %1475 = add i64 %1471, 11
  store i64 %1475, i64* %3, align 8
  %1476 = inttoptr i64 %1474 to i32*
  %1477 = load i32, i32* %1476, align 4
  %1478 = zext i32 %1477 to i64
  store i64 %1478, i64* %RCX.i757, align 8
  %1479 = zext i32 %1477 to i64
  %1480 = mul nuw nsw i64 %1479, 20
  store i64 %1480, i64* %RDX.i760, align 8
  %1481 = add i64 %1480, %1472
  store i64 %1481, i64* %RAX.i740, align 8
  %1482 = icmp ult i64 %1481, %1472
  %1483 = icmp ult i64 %1481, %1480
  %1484 = or i1 %1482, %1483
  %1485 = zext i1 %1484 to i8
  store i8 %1485, i8* %60, align 1
  %1486 = trunc i64 %1481 to i32
  %1487 = and i32 %1486, 255
  %1488 = tail call i32 @llvm.ctpop.i32(i32 %1487)
  %1489 = trunc i32 %1488 to i8
  %1490 = and i8 %1489, 1
  %1491 = xor i8 %1490, 1
  store i8 %1491, i8* %61, align 1
  %1492 = xor i64 %1480, %1472
  %1493 = xor i64 %1492, %1481
  %1494 = lshr i64 %1493, 4
  %1495 = trunc i64 %1494 to i8
  %1496 = and i8 %1495, 1
  store i8 %1496, i8* %62, align 1
  %1497 = icmp eq i64 %1481, 0
  %1498 = zext i1 %1497 to i8
  store i8 %1498, i8* %63, align 1
  %1499 = lshr i64 %1481, 63
  %1500 = trunc i64 %1499 to i8
  store i8 %1500, i8* %64, align 1
  %1501 = lshr i64 %1472, 63
  %1502 = xor i64 %1499, %1501
  %1503 = add nuw nsw i64 %1502, %1499
  %1504 = icmp eq i64 %1503, 2
  %1505 = zext i1 %1504 to i8
  store i8 %1505, i8* %65, align 1
  %1506 = add i64 %1481, 16
  %1507 = add i64 %1471, 23
  store i64 %1507, i64* %3, align 8
  %1508 = inttoptr i64 %1506 to i32*
  %1509 = load i32, i32* %1508, align 4
  %1510 = zext i32 %1509 to i64
  store i64 %1510, i64* %RCX.i757, align 8
  %1511 = add i64 %1473, -20
  %1512 = add i64 %1471, 26
  store i64 %1512, i64* %3, align 8
  %1513 = inttoptr i64 %1511 to i32*
  %1514 = load i32, i32* %1513, align 4
  %1515 = sub i32 %1509, %1514
  %1516 = icmp ult i32 %1509, %1514
  %1517 = zext i1 %1516 to i8
  store i8 %1517, i8* %60, align 1
  %1518 = and i32 %1515, 255
  %1519 = tail call i32 @llvm.ctpop.i32(i32 %1518)
  %1520 = trunc i32 %1519 to i8
  %1521 = and i8 %1520, 1
  %1522 = xor i8 %1521, 1
  store i8 %1522, i8* %61, align 1
  %1523 = xor i32 %1514, %1509
  %1524 = xor i32 %1523, %1515
  %1525 = lshr i32 %1524, 4
  %1526 = trunc i32 %1525 to i8
  %1527 = and i8 %1526, 1
  store i8 %1527, i8* %62, align 1
  %1528 = icmp eq i32 %1515, 0
  %1529 = zext i1 %1528 to i8
  store i8 %1529, i8* %63, align 1
  %1530 = lshr i32 %1515, 31
  %1531 = trunc i32 %1530 to i8
  store i8 %1531, i8* %64, align 1
  %1532 = lshr i32 %1509, 31
  %1533 = lshr i32 %1514, 31
  %1534 = xor i32 %1533, %1532
  %1535 = xor i32 %1530, %1532
  %1536 = add nuw nsw i32 %1535, %1534
  %1537 = icmp eq i32 %1536, 2
  %1538 = zext i1 %1537 to i8
  store i8 %1538, i8* %65, align 1
  %1539 = icmp ne i8 %1531, 0
  %1540 = xor i1 %1539, %1537
  %.v45 = select i1 %1540, i64 32, i64 42
  %1541 = add i64 %1471, %.v45
  store i64 %1541, i64* %3, align 8
  br i1 %1540, label %block_42112b, label %block_.L_421135

block_42112b:                                     ; preds = %block_42110b
  %1542 = load i64, i64* %RBP.i, align 8
  %1543 = add i64 %1542, -48
  %1544 = add i64 %1541, 4
  store i64 %1544, i64* %3, align 8
  %1545 = inttoptr i64 %1543 to i64*
  %1546 = load i64, i64* %1545, align 8
  store i64 %1546, i64* %RAX.i740, align 8
  %1547 = add i64 %1541, 10
  store i64 %1547, i64* %3, align 8
  %1548 = inttoptr i64 %1546 to i32*
  store i32 0, i32* %1548, align 4
  %.pre27 = load i64, i64* %3, align 8
  br label %block_.L_421135

block_.L_421135:                                  ; preds = %block_4210e3, %block_4210b1, %block_42110b, %block_42112b
  %1549 = phi i64 [ %1541, %block_42110b ], [ %.pre27, %block_42112b ], [ %1471, %block_4210e3 ], [ %1376, %block_4210b1 ]
  %1550 = load i64, i64* bitcast (%G_0x886a70_type* @G_0x886a70 to i64*), align 8
  store i64 %1550, i64* %RAX.i740, align 8
  %1551 = load i64, i64* %RBP.i, align 8
  %1552 = add i64 %1551, -56
  %1553 = add i64 %1549, 11
  store i64 %1553, i64* %3, align 8
  %1554 = inttoptr i64 %1552 to i32*
  %1555 = load i32, i32* %1554, align 4
  %1556 = zext i32 %1555 to i64
  store i64 %1556, i64* %RCX.i757, align 8
  %1557 = zext i32 %1555 to i64
  %1558 = mul nuw nsw i64 %1557, 20
  store i64 %1558, i64* %RDX.i760, align 8
  %1559 = add i64 %1558, %1550
  store i64 %1559, i64* %RAX.i740, align 8
  %1560 = icmp ult i64 %1559, %1550
  %1561 = icmp ult i64 %1559, %1558
  %1562 = or i1 %1560, %1561
  %1563 = zext i1 %1562 to i8
  store i8 %1563, i8* %60, align 1
  %1564 = trunc i64 %1559 to i32
  %1565 = and i32 %1564, 255
  %1566 = tail call i32 @llvm.ctpop.i32(i32 %1565)
  %1567 = trunc i32 %1566 to i8
  %1568 = and i8 %1567, 1
  %1569 = xor i8 %1568, 1
  store i8 %1569, i8* %61, align 1
  %1570 = xor i64 %1558, %1550
  %1571 = xor i64 %1570, %1559
  %1572 = lshr i64 %1571, 4
  %1573 = trunc i64 %1572 to i8
  %1574 = and i8 %1573, 1
  store i8 %1574, i8* %62, align 1
  %1575 = icmp eq i64 %1559, 0
  %1576 = zext i1 %1575 to i8
  store i8 %1576, i8* %63, align 1
  %1577 = lshr i64 %1559, 63
  %1578 = trunc i64 %1577 to i8
  store i8 %1578, i8* %64, align 1
  %1579 = lshr i64 %1550, 63
  %1580 = xor i64 %1577, %1579
  %1581 = add nuw nsw i64 %1580, %1577
  %1582 = icmp eq i64 %1581, 2
  %1583 = zext i1 %1582 to i8
  store i8 %1583, i8* %65, align 1
  %1584 = add i64 %1559, 2
  %1585 = add i64 %1549, 24
  store i64 %1585, i64* %3, align 8
  %1586 = inttoptr i64 %1584 to i8*
  %1587 = load i8, i8* %1586, align 1
  store i8 0, i8* %60, align 1
  %1588 = zext i8 %1587 to i32
  %1589 = tail call i32 @llvm.ctpop.i32(i32 %1588)
  %1590 = trunc i32 %1589 to i8
  %1591 = and i8 %1590, 1
  %1592 = xor i8 %1591, 1
  store i8 %1592, i8* %61, align 1
  store i8 0, i8* %62, align 1
  %1593 = icmp eq i8 %1587, 0
  %1594 = zext i1 %1593 to i8
  store i8 %1594, i8* %63, align 1
  %1595 = lshr i8 %1587, 7
  store i8 %1595, i8* %64, align 1
  store i8 0, i8* %65, align 1
  %.v40 = select i1 %1593, i64 39, i64 30
  %1596 = add i64 %1549, %.v40
  store i64 %1596, i64* %3, align 8
  br i1 %1593, label %block_.L_42115c, label %block_421153

block_421153:                                     ; preds = %block_.L_421135
  %1597 = add i64 %1551, -52
  %1598 = add i64 %1596, 3
  store i64 %1598, i64* %3, align 8
  %1599 = inttoptr i64 %1597 to i32*
  %1600 = load i32, i32* %1599, align 4
  %1601 = add i32 %1600, 1
  %1602 = zext i32 %1601 to i64
  store i64 %1602, i64* %RAX.i740, align 8
  %1603 = icmp eq i32 %1600, -1
  %1604 = icmp eq i32 %1601, 0
  %1605 = or i1 %1603, %1604
  %1606 = zext i1 %1605 to i8
  store i8 %1606, i8* %60, align 1
  %1607 = and i32 %1601, 255
  %1608 = tail call i32 @llvm.ctpop.i32(i32 %1607)
  %1609 = trunc i32 %1608 to i8
  %1610 = and i8 %1609, 1
  %1611 = xor i8 %1610, 1
  store i8 %1611, i8* %61, align 1
  %1612 = xor i32 %1601, %1600
  %1613 = lshr i32 %1612, 4
  %1614 = trunc i32 %1613 to i8
  %1615 = and i8 %1614, 1
  store i8 %1615, i8* %62, align 1
  %1616 = zext i1 %1604 to i8
  store i8 %1616, i8* %63, align 1
  %1617 = lshr i32 %1601, 31
  %1618 = trunc i32 %1617 to i8
  store i8 %1618, i8* %64, align 1
  %1619 = lshr i32 %1600, 31
  %1620 = xor i32 %1617, %1619
  %1621 = add nuw nsw i32 %1620, %1617
  %1622 = icmp eq i32 %1621, 2
  %1623 = zext i1 %1622 to i8
  store i8 %1623, i8* %65, align 1
  %1624 = add i64 %1596, 9
  store i64 %1624, i64* %3, align 8
  store i32 %1601, i32* %1599, align 4
  %.pre28 = load i64, i64* %3, align 8
  %.pre29 = load i64, i64* bitcast (%G_0x886a70_type* @G_0x886a70 to i64*), align 8
  %.pre30 = load i64, i64* %RBP.i, align 8
  br label %block_.L_42115c

block_.L_42115c:                                  ; preds = %block_421153, %block_.L_421135
  %1625 = phi i64 [ %.pre30, %block_421153 ], [ %1551, %block_.L_421135 ]
  %1626 = phi i64 [ %.pre29, %block_421153 ], [ %1550, %block_.L_421135 ]
  %1627 = phi i64 [ %.pre28, %block_421153 ], [ %1596, %block_.L_421135 ]
  store i64 %1626, i64* %RAX.i740, align 8
  %1628 = add i64 %1625, -56
  %1629 = add i64 %1627, 11
  store i64 %1629, i64* %3, align 8
  %1630 = inttoptr i64 %1628 to i32*
  %1631 = load i32, i32* %1630, align 4
  %1632 = zext i32 %1631 to i64
  store i64 %1632, i64* %RCX.i757, align 8
  %1633 = zext i32 %1631 to i64
  %1634 = mul nuw nsw i64 %1633, 20
  store i64 %1634, i64* %RDX.i760, align 8
  %1635 = add i64 %1634, %1626
  store i64 %1635, i64* %RAX.i740, align 8
  %1636 = icmp ult i64 %1635, %1626
  %1637 = icmp ult i64 %1635, %1634
  %1638 = or i1 %1636, %1637
  %1639 = zext i1 %1638 to i8
  store i8 %1639, i8* %60, align 1
  %1640 = trunc i64 %1635 to i32
  %1641 = and i32 %1640, 255
  %1642 = tail call i32 @llvm.ctpop.i32(i32 %1641)
  %1643 = trunc i32 %1642 to i8
  %1644 = and i8 %1643, 1
  %1645 = xor i8 %1644, 1
  store i8 %1645, i8* %61, align 1
  %1646 = xor i64 %1634, %1626
  %1647 = xor i64 %1646, %1635
  %1648 = lshr i64 %1647, 4
  %1649 = trunc i64 %1648 to i8
  %1650 = and i8 %1649, 1
  store i8 %1650, i8* %62, align 1
  %1651 = icmp eq i64 %1635, 0
  %1652 = zext i1 %1651 to i8
  store i8 %1652, i8* %63, align 1
  %1653 = lshr i64 %1635, 63
  %1654 = trunc i64 %1653 to i8
  store i8 %1654, i8* %64, align 1
  %1655 = lshr i64 %1626, 63
  %1656 = xor i64 %1653, %1655
  %1657 = add nuw nsw i64 %1656, %1653
  %1658 = icmp eq i64 %1657, 2
  %1659 = zext i1 %1658 to i8
  store i8 %1659, i8* %65, align 1
  %1660 = inttoptr i64 %1635 to i8*
  %1661 = add i64 %1627, 23
  store i64 %1661, i64* %3, align 8
  %1662 = load i8, i8* %1660, align 1
  %1663 = sext i8 %1662 to i64
  %1664 = and i64 %1663, 4294967295
  store i64 %1664, i64* %RCX.i757, align 8
  %1665 = sext i8 %1662 to i32
  %1666 = add i64 %1625, -52
  %1667 = add i64 %1627, 26
  store i64 %1667, i64* %3, align 8
  %1668 = inttoptr i64 %1666 to i32*
  %1669 = load i32, i32* %1668, align 4
  %1670 = sub i32 %1665, %1669
  %1671 = icmp ult i32 %1665, %1669
  %1672 = zext i1 %1671 to i8
  store i8 %1672, i8* %60, align 1
  %1673 = and i32 %1670, 255
  %1674 = tail call i32 @llvm.ctpop.i32(i32 %1673)
  %1675 = trunc i32 %1674 to i8
  %1676 = and i8 %1675, 1
  %1677 = xor i8 %1676, 1
  store i8 %1677, i8* %61, align 1
  %1678 = xor i32 %1669, %1665
  %1679 = xor i32 %1678, %1670
  %1680 = lshr i32 %1679, 4
  %1681 = trunc i32 %1680 to i8
  %1682 = and i8 %1681, 1
  store i8 %1682, i8* %62, align 1
  %1683 = icmp eq i32 %1670, 0
  %1684 = zext i1 %1683 to i8
  store i8 %1684, i8* %63, align 1
  %1685 = lshr i32 %1670, 31
  %1686 = trunc i32 %1685 to i8
  store i8 %1686, i8* %64, align 1
  %1687 = lshr i32 %1665, 31
  %1688 = lshr i32 %1669, 31
  %1689 = xor i32 %1688, %1687
  %1690 = xor i32 %1685, %1687
  %1691 = add nuw nsw i32 %1690, %1689
  %1692 = icmp eq i32 %1691, 2
  %1693 = zext i1 %1692 to i8
  store i8 %1693, i8* %65, align 1
  %1694 = icmp ne i8 %1686, 0
  %1695 = xor i1 %1694, %1692
  %.v41 = select i1 %1695, i64 227, i64 32
  %1696 = add i64 %1627, %.v41
  %1697 = load i64, i64* bitcast (%G_0x886a70_type* @G_0x886a70 to i64*), align 8
  store i64 %1697, i64* %RAX.i740, align 8
  %1698 = load i64, i64* %RBP.i, align 8
  %1699 = add i64 %1698, -56
  %1700 = add i64 %1696, 11
  store i64 %1700, i64* %3, align 8
  %1701 = inttoptr i64 %1699 to i32*
  %1702 = load i32, i32* %1701, align 4
  %1703 = zext i32 %1702 to i64
  store i64 %1703, i64* %RCX.i757, align 8
  %1704 = zext i32 %1702 to i64
  %1705 = mul nuw nsw i64 %1704, 20
  store i64 %1705, i64* %RDX.i760, align 8
  %1706 = add i64 %1696, 20
  store i64 %1706, i64* %3, align 8
  %1707 = add i64 %1705, %1697
  store i64 %1707, i64* %RAX.i740, align 8
  %1708 = icmp ult i64 %1707, %1697
  %1709 = icmp ult i64 %1707, %1705
  %1710 = or i1 %1708, %1709
  %1711 = zext i1 %1710 to i8
  store i8 %1711, i8* %60, align 1
  %1712 = trunc i64 %1707 to i32
  %1713 = and i32 %1712, 255
  %1714 = tail call i32 @llvm.ctpop.i32(i32 %1713)
  %1715 = trunc i32 %1714 to i8
  %1716 = and i8 %1715, 1
  %1717 = xor i8 %1716, 1
  store i8 %1717, i8* %61, align 1
  %1718 = xor i64 %1705, %1697
  %1719 = xor i64 %1718, %1707
  %1720 = lshr i64 %1719, 4
  %1721 = trunc i64 %1720 to i8
  %1722 = and i8 %1721, 1
  store i8 %1722, i8* %62, align 1
  %1723 = icmp eq i64 %1707, 0
  %1724 = zext i1 %1723 to i8
  store i8 %1724, i8* %63, align 1
  %1725 = lshr i64 %1707, 63
  %1726 = trunc i64 %1725 to i8
  store i8 %1726, i8* %64, align 1
  %1727 = lshr i64 %1697, 63
  %1728 = xor i64 %1725, %1727
  %1729 = add nuw nsw i64 %1728, %1725
  %1730 = icmp eq i64 %1729, 2
  %1731 = zext i1 %1730 to i8
  store i8 %1731, i8* %65, align 1
  br i1 %1695, label %block_.L_42123f, label %block_42117c

block_42117c:                                     ; preds = %block_.L_42115c
  %1732 = add i64 %1707, 16
  %1733 = add i64 %1696, 23
  store i64 %1733, i64* %3, align 8
  %1734 = inttoptr i64 %1732 to i32*
  %1735 = load i32, i32* %1734, align 4
  %1736 = zext i32 %1735 to i64
  store i64 %1736, i64* %RCX.i757, align 8
  %1737 = add i64 %1698, -16
  %1738 = add i64 %1696, 27
  store i64 %1738, i64* %3, align 8
  %1739 = inttoptr i64 %1737 to i64*
  %1740 = load i64, i64* %1739, align 8
  store i64 %1740, i64* %RAX.i740, align 8
  %1741 = add i64 %1696, 29
  store i64 %1741, i64* %3, align 8
  %1742 = inttoptr i64 %1740 to i32*
  store i32 %1735, i32* %1742, align 4
  %1743 = load i64, i64* %RBP.i, align 8
  %1744 = add i64 %1743, -16
  %1745 = load i64, i64* %3, align 8
  %1746 = add i64 %1745, 4
  store i64 %1746, i64* %3, align 8
  %1747 = inttoptr i64 %1744 to i64*
  %1748 = load i64, i64* %1747, align 8
  store i64 %1748, i64* %RAX.i740, align 8
  %1749 = add i64 %1745, 10
  store i64 %1749, i64* %3, align 8
  %1750 = inttoptr i64 %1748 to i32*
  %1751 = load i32, i32* %1750, align 4
  %1752 = add i32 %1751, -999500
  %1753 = icmp ult i32 %1751, 999500
  %1754 = zext i1 %1753 to i8
  store i8 %1754, i8* %60, align 1
  %1755 = and i32 %1752, 255
  %1756 = tail call i32 @llvm.ctpop.i32(i32 %1755)
  %1757 = trunc i32 %1756 to i8
  %1758 = and i8 %1757, 1
  %1759 = xor i8 %1758, 1
  store i8 %1759, i8* %61, align 1
  %1760 = xor i32 %1752, %1751
  %1761 = lshr i32 %1760, 4
  %1762 = trunc i32 %1761 to i8
  %1763 = and i8 %1762, 1
  store i8 %1763, i8* %62, align 1
  %1764 = icmp eq i32 %1752, 0
  %1765 = zext i1 %1764 to i8
  store i8 %1765, i8* %63, align 1
  %1766 = lshr i32 %1752, 31
  %1767 = trunc i32 %1766 to i8
  store i8 %1767, i8* %64, align 1
  %1768 = lshr i32 %1751, 31
  %1769 = xor i32 %1766, %1768
  %1770 = add nuw nsw i32 %1769, %1768
  %1771 = icmp eq i32 %1770, 2
  %1772 = zext i1 %1771 to i8
  store i8 %1772, i8* %65, align 1
  %1773 = icmp ne i8 %1767, 0
  %1774 = xor i1 %1773, %1771
  %1775 = or i1 %1764, %1774
  %.v42 = select i1 %1775, i64 38, i64 16
  %1776 = add i64 %1745, %.v42
  store i64 %1776, i64* %3, align 8
  br i1 %1775, label %block_.L_4211bf, label %block_4211a9

block_4211a9:                                     ; preds = %block_42117c
  %1777 = load i32, i32* bitcast (%G_0x886bc0_type* @G_0x886bc0 to i32*), align 8
  %1778 = zext i32 %1777 to i64
  store i64 %1778, i64* %RAX.i740, align 8
  %1779 = add i64 %1776, 11
  store i64 %1779, i64* %3, align 8
  %1780 = load i64, i64* %1747, align 8
  store i64 %1780, i64* %RCX.i757, align 8
  %1781 = add i64 %1776, 13
  store i64 %1781, i64* %3, align 8
  %1782 = inttoptr i64 %1780 to i32*
  %1783 = load i32, i32* %1782, align 4
  %1784 = sub i32 %1783, %1777
  %1785 = zext i32 %1784 to i64
  store i64 %1785, i64* %RDX.i760, align 8
  %1786 = icmp ult i32 %1783, %1777
  %1787 = zext i1 %1786 to i8
  store i8 %1787, i8* %60, align 1
  %1788 = and i32 %1784, 255
  %1789 = tail call i32 @llvm.ctpop.i32(i32 %1788)
  %1790 = trunc i32 %1789 to i8
  %1791 = and i8 %1790, 1
  %1792 = xor i8 %1791, 1
  store i8 %1792, i8* %61, align 1
  %1793 = xor i32 %1777, %1783
  %1794 = xor i32 %1793, %1784
  %1795 = lshr i32 %1794, 4
  %1796 = trunc i32 %1795 to i8
  %1797 = and i8 %1796, 1
  store i8 %1797, i8* %62, align 1
  %1798 = icmp eq i32 %1784, 0
  %1799 = zext i1 %1798 to i8
  store i8 %1799, i8* %63, align 1
  %1800 = lshr i32 %1784, 31
  %1801 = trunc i32 %1800 to i8
  store i8 %1801, i8* %64, align 1
  %1802 = lshr i32 %1783, 31
  %1803 = lshr i32 %1777, 31
  %1804 = xor i32 %1803, %1802
  %1805 = xor i32 %1800, %1802
  %1806 = add nuw nsw i32 %1805, %1804
  %1807 = icmp eq i32 %1806, 2
  %1808 = zext i1 %1807 to i8
  store i8 %1808, i8* %65, align 1
  %1809 = add i64 %1776, 17
  store i64 %1809, i64* %3, align 8
  store i32 %1784, i32* %1782, align 4
  %1810 = load i64, i64* %3, align 8
  %1811 = add i64 %1810, 41
  br label %block_.L_4211e3

block_.L_4211bf:                                  ; preds = %block_42117c
  %1812 = add i64 %1776, 4
  store i64 %1812, i64* %3, align 8
  %1813 = load i64, i64* %1747, align 8
  store i64 %1813, i64* %RAX.i740, align 8
  %1814 = add i64 %1776, 10
  store i64 %1814, i64* %3, align 8
  %1815 = inttoptr i64 %1813 to i32*
  %1816 = load i32, i32* %1815, align 4
  %1817 = add i32 %1816, 999500
  %1818 = icmp ult i32 %1816, -999500
  %1819 = zext i1 %1818 to i8
  store i8 %1819, i8* %60, align 1
  %1820 = and i32 %1817, 255
  %1821 = tail call i32 @llvm.ctpop.i32(i32 %1820)
  %1822 = trunc i32 %1821 to i8
  %1823 = and i8 %1822, 1
  %1824 = xor i8 %1823, 1
  store i8 %1824, i8* %61, align 1
  %1825 = xor i32 %1816, 16
  %1826 = xor i32 %1825, %1817
  %1827 = lshr i32 %1826, 4
  %1828 = trunc i32 %1827 to i8
  %1829 = and i8 %1828, 1
  store i8 %1829, i8* %62, align 1
  %1830 = icmp eq i32 %1817, 0
  %1831 = zext i1 %1830 to i8
  store i8 %1831, i8* %63, align 1
  %1832 = lshr i32 %1817, 31
  %1833 = trunc i32 %1832 to i8
  store i8 %1833, i8* %64, align 1
  %1834 = lshr i32 %1816, 31
  %1835 = xor i32 %1834, 1
  %1836 = xor i32 %1832, %1834
  %1837 = add nuw nsw i32 %1836, %1835
  %1838 = icmp eq i32 %1837, 2
  %1839 = zext i1 %1838 to i8
  store i8 %1839, i8* %65, align 1
  %1840 = icmp ne i8 %1833, 0
  %1841 = xor i1 %1840, %1838
  %.v43 = select i1 %1841, i64 16, i64 31
  %1842 = add i64 %1776, %.v43
  store i64 %1842, i64* %3, align 8
  br i1 %1841, label %block_4211cf, label %block_.L_4211de

block_4211cf:                                     ; preds = %block_.L_4211bf
  %1843 = load i32, i32* bitcast (%G_0x886bc0_type* @G_0x886bc0 to i32*), align 8
  %1844 = zext i32 %1843 to i64
  store i64 %1844, i64* %RAX.i740, align 8
  %1845 = add i64 %1842, 11
  store i64 %1845, i64* %3, align 8
  %1846 = load i64, i64* %1747, align 8
  store i64 %1846, i64* %RCX.i757, align 8
  %1847 = add i64 %1842, 13
  store i64 %1847, i64* %3, align 8
  %1848 = inttoptr i64 %1846 to i32*
  %1849 = load i32, i32* %1848, align 4
  %1850 = add i32 %1849, %1843
  %1851 = zext i32 %1850 to i64
  store i64 %1851, i64* %RAX.i740, align 8
  %1852 = icmp ult i32 %1850, %1843
  %1853 = icmp ult i32 %1850, %1849
  %1854 = or i1 %1852, %1853
  %1855 = zext i1 %1854 to i8
  store i8 %1855, i8* %60, align 1
  %1856 = and i32 %1850, 255
  %1857 = tail call i32 @llvm.ctpop.i32(i32 %1856)
  %1858 = trunc i32 %1857 to i8
  %1859 = and i8 %1858, 1
  %1860 = xor i8 %1859, 1
  store i8 %1860, i8* %61, align 1
  %1861 = xor i32 %1849, %1843
  %1862 = xor i32 %1861, %1850
  %1863 = lshr i32 %1862, 4
  %1864 = trunc i32 %1863 to i8
  %1865 = and i8 %1864, 1
  store i8 %1865, i8* %62, align 1
  %1866 = icmp eq i32 %1850, 0
  %1867 = zext i1 %1866 to i8
  store i8 %1867, i8* %63, align 1
  %1868 = lshr i32 %1850, 31
  %1869 = trunc i32 %1868 to i8
  store i8 %1869, i8* %64, align 1
  %1870 = lshr i32 %1843, 31
  %1871 = lshr i32 %1849, 31
  %1872 = xor i32 %1868, %1870
  %1873 = xor i32 %1868, %1871
  %1874 = add nuw nsw i32 %1872, %1873
  %1875 = icmp eq i32 %1874, 2
  %1876 = zext i1 %1875 to i8
  store i8 %1876, i8* %65, align 1
  %1877 = add i64 %1842, 15
  store i64 %1877, i64* %3, align 8
  store i32 %1850, i32* %1848, align 4
  %.pre31 = load i64, i64* %3, align 8
  br label %block_.L_4211de

block_.L_4211de:                                  ; preds = %block_.L_4211bf, %block_4211cf
  %1878 = phi i64 [ %1842, %block_.L_4211bf ], [ %.pre31, %block_4211cf ]
  %1879 = add i64 %1878, 5
  store i64 %1879, i64* %3, align 8
  br label %block_.L_4211e3

block_.L_4211e3:                                  ; preds = %block_.L_4211de, %block_4211a9
  %storemerge20 = phi i64 [ %1811, %block_4211a9 ], [ %1879, %block_.L_4211de ]
  %1880 = load i64, i64* bitcast (%G_0x886a70_type* @G_0x886a70 to i64*), align 8
  store i64 %1880, i64* %RAX.i740, align 8
  %1881 = load i64, i64* %RBP.i, align 8
  %1882 = add i64 %1881, -56
  %1883 = add i64 %storemerge20, 11
  store i64 %1883, i64* %3, align 8
  %1884 = inttoptr i64 %1882 to i32*
  %1885 = load i32, i32* %1884, align 4
  %1886 = zext i32 %1885 to i64
  store i64 %1886, i64* %RCX.i757, align 8
  %1887 = zext i32 %1885 to i64
  %1888 = mul nuw nsw i64 %1887, 20
  store i64 %1888, i64* %RDX.i760, align 8
  %1889 = add i64 %1888, %1880
  store i64 %1889, i64* %RAX.i740, align 8
  %1890 = icmp ult i64 %1889, %1880
  %1891 = icmp ult i64 %1889, %1888
  %1892 = or i1 %1890, %1891
  %1893 = zext i1 %1892 to i8
  store i8 %1893, i8* %60, align 1
  %1894 = trunc i64 %1889 to i32
  %1895 = and i32 %1894, 255
  %1896 = tail call i32 @llvm.ctpop.i32(i32 %1895)
  %1897 = trunc i32 %1896 to i8
  %1898 = and i8 %1897, 1
  %1899 = xor i8 %1898, 1
  store i8 %1899, i8* %61, align 1
  %1900 = xor i64 %1888, %1880
  %1901 = xor i64 %1900, %1889
  %1902 = lshr i64 %1901, 4
  %1903 = trunc i64 %1902 to i8
  %1904 = and i8 %1903, 1
  store i8 %1904, i8* %62, align 1
  %1905 = icmp eq i64 %1889, 0
  %1906 = zext i1 %1905 to i8
  store i8 %1906, i8* %63, align 1
  %1907 = lshr i64 %1889, 63
  %1908 = trunc i64 %1907 to i8
  store i8 %1908, i8* %64, align 1
  %1909 = lshr i64 %1880, 63
  %1910 = xor i64 %1907, %1909
  %1911 = add nuw nsw i64 %1910, %1907
  %1912 = icmp eq i64 %1911, 2
  %1913 = zext i1 %1912 to i8
  store i8 %1913, i8* %65, align 1
  %1914 = add i64 %1889, 4
  %1915 = add i64 %storemerge20, 24
  store i64 %1915, i64* %3, align 8
  %1916 = inttoptr i64 %1914 to i16*
  %1917 = load i16, i16* %1916, align 2
  %1918 = zext i16 %1917 to i64
  store i64 %1918, i64* %RCX.i757, align 8
  %1919 = add i64 %1881, -32
  %1920 = add i64 %storemerge20, 28
  store i64 %1920, i64* %3, align 8
  %1921 = inttoptr i64 %1919 to i32**
  %1922 = load i32*, i32** %1921, align 8
  %1923 = zext i16 %1917 to i32
  %1924 = add i64 %storemerge20, 30
  store i64 %1924, i64* %3, align 8
  store i32 %1923, i32* %1922, align 4
  %1925 = load i64, i64* %3, align 8
  %1926 = load i64, i64* bitcast (%G_0x886a70_type* @G_0x886a70 to i64*), align 8
  store i64 %1926, i64* %RAX.i740, align 8
  %1927 = load i64, i64* %RBP.i, align 8
  %1928 = add i64 %1927, -56
  %1929 = add i64 %1925, 11
  store i64 %1929, i64* %3, align 8
  %1930 = inttoptr i64 %1928 to i32*
  %1931 = load i32, i32* %1930, align 4
  %1932 = zext i32 %1931 to i64
  store i64 %1932, i64* %RCX.i757, align 8
  %1933 = zext i32 %1931 to i64
  %1934 = mul nuw nsw i64 %1933, 20
  store i64 %1934, i64* %RDX.i760, align 8
  %1935 = add i64 %1934, %1926
  store i64 %1935, i64* %RAX.i740, align 8
  %1936 = icmp ult i64 %1935, %1926
  %1937 = icmp ult i64 %1935, %1934
  %1938 = or i1 %1936, %1937
  %1939 = zext i1 %1938 to i8
  store i8 %1939, i8* %60, align 1
  %1940 = trunc i64 %1935 to i32
  %1941 = and i32 %1940, 255
  %1942 = tail call i32 @llvm.ctpop.i32(i32 %1941)
  %1943 = trunc i32 %1942 to i8
  %1944 = and i8 %1943, 1
  %1945 = xor i8 %1944, 1
  store i8 %1945, i8* %61, align 1
  %1946 = xor i64 %1934, %1926
  %1947 = xor i64 %1946, %1935
  %1948 = lshr i64 %1947, 4
  %1949 = trunc i64 %1948 to i8
  %1950 = and i8 %1949, 1
  store i8 %1950, i8* %62, align 1
  %1951 = icmp eq i64 %1935, 0
  %1952 = zext i1 %1951 to i8
  store i8 %1952, i8* %63, align 1
  %1953 = lshr i64 %1935, 63
  %1954 = trunc i64 %1953 to i8
  store i8 %1954, i8* %64, align 1
  %1955 = lshr i64 %1926, 63
  %1956 = xor i64 %1953, %1955
  %1957 = add nuw nsw i64 %1956, %1953
  %1958 = icmp eq i64 %1957, 2
  %1959 = zext i1 %1958 to i8
  store i8 %1959, i8* %65, align 1
  %1960 = add i64 %1935, 2
  %1961 = add i64 %1925, 24
  store i64 %1961, i64* %3, align 8
  %1962 = inttoptr i64 %1960 to i8*
  %1963 = load i8, i8* %1962, align 1
  %1964 = sext i8 %1963 to i64
  %1965 = and i64 %1964, 4294967295
  store i64 %1965, i64* %RCX.i757, align 8
  %1966 = add i64 %1927, -40
  %1967 = add i64 %1925, 28
  store i64 %1967, i64* %3, align 8
  %1968 = inttoptr i64 %1966 to i32**
  %1969 = load i32*, i32** %1968, align 8
  %1970 = sext i8 %1963 to i32
  %1971 = add i64 %1925, 30
  store i64 %1971, i64* %3, align 8
  store i32 %1970, i32* %1969, align 4
  %1972 = load i64, i64* %3, align 8
  %1973 = load i64, i64* bitcast (%G_0x886a70_type* @G_0x886a70 to i64*), align 8
  store i64 %1973, i64* %RAX.i740, align 8
  %1974 = load i64, i64* %RBP.i, align 8
  %1975 = add i64 %1974, -56
  %1976 = add i64 %1972, 11
  store i64 %1976, i64* %3, align 8
  %1977 = inttoptr i64 %1975 to i32*
  %1978 = load i32, i32* %1977, align 4
  %1979 = zext i32 %1978 to i64
  store i64 %1979, i64* %RCX.i757, align 8
  %1980 = zext i32 %1978 to i64
  %1981 = mul nuw nsw i64 %1980, 20
  store i64 %1981, i64* %RDX.i760, align 8
  %1982 = add i64 %1981, %1973
  store i64 %1982, i64* %RAX.i740, align 8
  %1983 = icmp ult i64 %1982, %1973
  %1984 = icmp ult i64 %1982, %1981
  %1985 = or i1 %1983, %1984
  %1986 = zext i1 %1985 to i8
  store i8 %1986, i8* %60, align 1
  %1987 = trunc i64 %1982 to i32
  %1988 = and i32 %1987, 255
  %1989 = tail call i32 @llvm.ctpop.i32(i32 %1988)
  %1990 = trunc i32 %1989 to i8
  %1991 = and i8 %1990, 1
  %1992 = xor i8 %1991, 1
  store i8 %1992, i8* %61, align 1
  %1993 = xor i64 %1981, %1973
  %1994 = xor i64 %1993, %1982
  %1995 = lshr i64 %1994, 4
  %1996 = trunc i64 %1995 to i8
  %1997 = and i8 %1996, 1
  store i8 %1997, i8* %62, align 1
  %1998 = icmp eq i64 %1982, 0
  %1999 = zext i1 %1998 to i8
  store i8 %1999, i8* %63, align 1
  %2000 = lshr i64 %1982, 63
  %2001 = trunc i64 %2000 to i8
  store i8 %2001, i8* %64, align 1
  %2002 = lshr i64 %1973, 63
  %2003 = xor i64 %2000, %2002
  %2004 = add nuw nsw i64 %2003, %2000
  %2005 = icmp eq i64 %2004, 2
  %2006 = zext i1 %2005 to i8
  store i8 %2006, i8* %65, align 1
  %2007 = add i64 %1982, 3
  %2008 = add i64 %1972, 24
  store i64 %2008, i64* %3, align 8
  %2009 = inttoptr i64 %2007 to i8*
  %2010 = load i8, i8* %2009, align 1
  %2011 = sext i8 %2010 to i64
  %2012 = and i64 %2011, 4294967295
  store i64 %2012, i64* %RCX.i757, align 8
  %2013 = add i64 %1974, -4
  %2014 = sext i8 %2010 to i32
  %2015 = add i64 %1972, 27
  store i64 %2015, i64* %3, align 8
  %2016 = inttoptr i64 %2013 to i32*
  store i32 %2014, i32* %2016, align 4
  %2017 = load i64, i64* %3, align 8
  %2018 = add i64 %2017, 84
  store i64 %2018, i64* %3, align 8
  br label %block_.L_42128e

block_.L_42123f:                                  ; preds = %block_.L_42115c
  %2019 = add i64 %1707, 4
  %2020 = add i64 %1696, 24
  store i64 %2020, i64* %3, align 8
  %2021 = inttoptr i64 %2019 to i16*
  %2022 = load i16, i16* %2021, align 2
  %2023 = zext i16 %2022 to i64
  store i64 %2023, i64* %RCX.i757, align 8
  %2024 = add i64 %1698, -32
  %2025 = add i64 %1696, 28
  store i64 %2025, i64* %3, align 8
  %2026 = inttoptr i64 %2024 to i32**
  %2027 = load i32*, i32** %2026, align 8
  %2028 = zext i16 %2022 to i32
  %2029 = add i64 %1696, 30
  store i64 %2029, i64* %3, align 8
  store i32 %2028, i32* %2027, align 4
  %2030 = load i64, i64* %3, align 8
  %2031 = load i64, i64* bitcast (%G_0x886a70_type* @G_0x886a70 to i64*), align 8
  store i64 %2031, i64* %RAX.i740, align 8
  %2032 = load i64, i64* %RBP.i, align 8
  %2033 = add i64 %2032, -56
  %2034 = add i64 %2030, 11
  store i64 %2034, i64* %3, align 8
  %2035 = inttoptr i64 %2033 to i32*
  %2036 = load i32, i32* %2035, align 4
  %2037 = zext i32 %2036 to i64
  store i64 %2037, i64* %RCX.i757, align 8
  %2038 = zext i32 %2036 to i64
  %2039 = mul nuw nsw i64 %2038, 20
  store i64 %2039, i64* %RDX.i760, align 8
  %2040 = add i64 %2039, %2031
  store i64 %2040, i64* %RAX.i740, align 8
  %2041 = icmp ult i64 %2040, %2031
  %2042 = icmp ult i64 %2040, %2039
  %2043 = or i1 %2041, %2042
  %2044 = zext i1 %2043 to i8
  store i8 %2044, i8* %60, align 1
  %2045 = trunc i64 %2040 to i32
  %2046 = and i32 %2045, 255
  %2047 = tail call i32 @llvm.ctpop.i32(i32 %2046)
  %2048 = trunc i32 %2047 to i8
  %2049 = and i8 %2048, 1
  %2050 = xor i8 %2049, 1
  store i8 %2050, i8* %61, align 1
  %2051 = xor i64 %2039, %2031
  %2052 = xor i64 %2051, %2040
  %2053 = lshr i64 %2052, 4
  %2054 = trunc i64 %2053 to i8
  %2055 = and i8 %2054, 1
  store i8 %2055, i8* %62, align 1
  %2056 = icmp eq i64 %2040, 0
  %2057 = zext i1 %2056 to i8
  store i8 %2057, i8* %63, align 1
  %2058 = lshr i64 %2040, 63
  %2059 = trunc i64 %2058 to i8
  store i8 %2059, i8* %64, align 1
  %2060 = lshr i64 %2031, 63
  %2061 = xor i64 %2058, %2060
  %2062 = add nuw nsw i64 %2061, %2058
  %2063 = icmp eq i64 %2062, 2
  %2064 = zext i1 %2063 to i8
  store i8 %2064, i8* %65, align 1
  %2065 = add i64 %2040, 2
  %2066 = add i64 %2030, 24
  store i64 %2066, i64* %3, align 8
  %2067 = inttoptr i64 %2065 to i8*
  %2068 = load i8, i8* %2067, align 1
  %2069 = sext i8 %2068 to i64
  %2070 = and i64 %2069, 4294967295
  store i64 %2070, i64* %RCX.i757, align 8
  %2071 = add i64 %2032, -40
  %2072 = add i64 %2030, 28
  store i64 %2072, i64* %3, align 8
  %2073 = inttoptr i64 %2071 to i64*
  %2074 = load i64, i64* %2073, align 8
  store i64 %2074, i64* %RAX.i740, align 8
  %2075 = sext i8 %2068 to i32
  %2076 = add i64 %2030, 30
  store i64 %2076, i64* %3, align 8
  %2077 = inttoptr i64 %2074 to i32*
  store i32 %2075, i32* %2077, align 4
  %2078 = load i64, i64* %RBP.i, align 8
  %2079 = add i64 %2078, -4
  %2080 = load i64, i64* %3, align 8
  %2081 = add i64 %2080, 7
  store i64 %2081, i64* %3, align 8
  %2082 = inttoptr i64 %2079 to i32*
  store i32 0, i32* %2082, align 4
  %2083 = load i64, i64* %3, align 8
  %2084 = add i64 %2083, 12
  store i64 %2084, i64* %3, align 8
  br label %block_.L_42128e

block_.L_421287:                                  ; preds = %block_421078, %block_421054, %block_.L_421030
  %2085 = phi i64 [ %1289, %block_421078 ], [ %1211, %block_421054 ], [ %1146, %block_.L_421030 ]
  %2086 = load i64, i64* %RBP.i, align 8
  %2087 = add i64 %2086, -4
  %2088 = add i64 %2085, 7
  store i64 %2088, i64* %3, align 8
  %2089 = inttoptr i64 %2087 to i32*
  store i32 4, i32* %2089, align 4
  %.pre32 = load i64, i64* %3, align 8
  br label %block_.L_42128e

block_.L_42128e:                                  ; preds = %block_.L_421287, %block_.L_42123f, %block_.L_4211e3, %block_.L_420fe8, %block_.L_420f8c
  %2090 = phi i64 [ %.pre32, %block_.L_421287 ], [ %2084, %block_.L_42123f ], [ %2018, %block_.L_4211e3 ], [ %1080, %block_.L_420fe8 ], [ %1014, %block_.L_420f8c ]
  %2091 = load i64, i64* %RBP.i, align 8
  %2092 = add i64 %2091, -4
  %2093 = add i64 %2090, 3
  store i64 %2093, i64* %3, align 8
  %2094 = inttoptr i64 %2092 to i32*
  %2095 = load i32, i32* %2094, align 4
  %2096 = zext i32 %2095 to i64
  store i64 %2096, i64* %RAX.i740, align 8
  %2097 = add i64 %2090, 4
  store i64 %2097, i64* %3, align 8
  %2098 = load i64, i64* %6, align 8
  %2099 = add i64 %2098, 8
  %2100 = inttoptr i64 %2098 to i64*
  %2101 = load i64, i64* %2100, align 8
  store i64 %2101, i64* %RBP.i, align 8
  store i64 %2099, i64* %6, align 8
  %2102 = add i64 %2090, 5
  store i64 %2102, i64* %3, align 8
  %2103 = inttoptr i64 %2099 to i64*
  %2104 = load i64, i64* %2103, align 8
  store i64 %2104, i64* %3, align 8
  %2105 = add i64 %2098, 16
  store i64 %2105, i64* %6, align 8
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
define %struct.Memory* @routine_movq__rdi__MINUS0x10__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -16
  %5 = load i64, i64* %RDI, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 4
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %4 to i64*
  store i64 %5, i64* %8, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__esi__MINUS0x14__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0
  %ESI = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -20
  %6 = load i32, i32* %ESI, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__rdx__MINUS0x20__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -32
  %5 = load i64, i64* %RDX, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 4
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %4 to i64*
  store i64 %5, i64* %8, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__rcx__MINUS0x28__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -40
  %5 = load i64, i64* %RCX, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 4
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %4 to i64*
  store i64 %5, i64* %8, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__r8__MINUS0x30__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %R8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -48
  %5 = load i64, i64* %R8, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 4
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %4 to i64*
  store i64 %5, i64* %8, align 8
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
define %struct.Memory* @routine_movl__0x1____rcx_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = bitcast i64* %RCX to i32**
  %4 = load i32*, i32** %3, align 8
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 6
  store i64 %6, i64* %PC, align 8
  store i32 1, i32* %4, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_0x62ea14___esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 7
  store i64 %4, i64* %PC, align 8
  %5 = load i32, i32* bitcast (%G_0x62ea14_type* @G_0x62ea14 to i32*), align 8
  %6 = zext i32 %5 to i64
  store i64 %6, i64* %RSI, align 8
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
define %struct.Memory* @routine_movl__esi__0x62ea14(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0
  %ESI = bitcast %union.anon* %3 to i32*
  %4 = load i32, i32* %ESI, align 4
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  store i32 %4, i32* bitcast (%G_0x62ea14_type* @G_0x62ea14 to i32*), align 8
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
define %struct.Memory* @routine_movl__edx__MINUS0x38__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %EDX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -56
  %6 = load i32, i32* %EDX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_0x8644f8___rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 8
  store i64 %4, i64* %PC, align 8
  %5 = load i64, i64* bitcast (%G_0x8644f8_type* @G_0x8644f8 to i64*), align 8
  store i64 %5, i64* %RCX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x38__rbp____edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -56
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
define %struct.Memory* @routine_imulq__0x14___rdi___rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
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
  %10 = mul nsw i128 %9, 20
  %11 = trunc i128 %10 to i64
  store i64 %11, i64* %RDI, align 8
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
define %struct.Memory* @routine_movl_0x8__rcx____edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
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
define %struct.Memory* @routine_cmpl_0x633b40___edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %EDX = bitcast %union.anon* %3 to i32*
  %4 = load i32, i32* %EDX, align 4
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = load i32, i32* bitcast (%G_0x633b40_type* @G_0x633b40 to i32*), align 8
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
define %struct.Memory* @routine_jne_.L_421030(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl_MINUS0x38__rbp____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -56
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
define %struct.Memory* @routine_cmpl_0x881df4___ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %ECX = bitcast %union.anon* %3 to i32*
  %4 = load i32, i32* %ECX, align 4
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = load i32, i32* bitcast (%G_0x881df4_type* @G_0x881df4 to i32*), align 8
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
define %struct.Memory* @routine_movq_0x8644f8___rdx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 8
  store i64 %4, i64* %PC, align 8
  %5 = load i64, i64* bitcast (%G_0x8644f8_type* @G_0x8644f8 to i64*), align 8
  store i64 %5, i64* %RDX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x38__rbp____esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -56
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 3
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = zext i32 %8 to i64
  store i64 %9, i64* %RSI, align 8
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

; Function Attrs: nounwind
define %struct.Memory* @routine_addq__rdi___rdx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %RDX, align 8
  %4 = load i64, i64* %RDI, align 8
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
define %struct.Memory* @routine_movsbl_0x1__rdx____esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %RDX, align 8
  %4 = add i64 %3, 1
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i8*
  %8 = load i8, i8* %7, align 1
  %9 = sext i8 %8 to i64
  %10 = and i64 %9, 4294967295
  store i64 %10, i64* %RSI, align 8
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
define %struct.Memory* @routine_movb__al___r8b(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %AL = bitcast %union.anon* %3 to i8*
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0
  %R8B = bitcast %union.anon* %4 to i8*
  %5 = load i8, i8* %AL, align 1
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 3
  store i64 %7, i64* %PC, align 8
  store i8 %5, i8* %R8B, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movsbl__r8b___eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0
  %R8B = bitcast %union.anon* %3 to i8*
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %4 = load i8, i8* %R8B, align 1
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = sext i8 %4 to i64
  %8 = and i64 %7, 4294967295
  store i64 %8, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__eax___esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0
  %ESI = bitcast %union.anon* %4 to i32*
  %5 = load i32, i32* %ESI, align 4
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
define %struct.Memory* @routine_movl_0x8667a4___eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 7
  store i64 %4, i64* %PC, align 8
  %5 = load i32, i32* bitcast (%G_0x8667a4_type* @G_0x8667a4 to i32*), align 8
  %6 = zext i32 %5 to i64
  store i64 %6, i64* %RAX, align 8
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
define %struct.Memory* @routine_movl__eax__0x8667a4(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %4 = load i32, i32* %EAX, align 4
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  store i32 %4, i32* bitcast (%G_0x8667a4_type* @G_0x8667a4 to i32*), align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x38__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -56
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
define %struct.Memory* @routine_movsbl_0x3__rcx____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = add i64 %3, 3
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i8*
  %8 = load i8, i8* %7, align 1
  %9 = sext i8 %8 to i64
  %10 = and i64 %9, 4294967295
  store i64 %10, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__0x1___eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %4 = load i32, i32* %EAX, align 4
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
define %struct.Memory* @routine_jne_.L_420ede(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl_MINUS0x34__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -52
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
define %struct.Memory* @routine_subl__0x2___eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 3
  store i64 %5, i64* %PC, align 8
  %6 = trunc i64 %3 to i32
  %7 = add i32 %6, -2
  %8 = zext i32 %7 to i64
  store i64 %8, i64* %RAX, align 8
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

; Function Attrs: nounwind
define %struct.Memory* @routine_subl__0x1___eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 3
  store i64 %5, i64* %PC, align 8
  %6 = trunc i64 %3 to i32
  %7 = add i32 %6, -1
  %8 = zext i32 %7 to i64
  store i64 %8, i64* %RAX, align 8
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
define %struct.Memory* @routine_movl__edx___esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %EDX = bitcast %union.anon* %3 to i32*
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %4 = load i32, i32* %EDX, align 4
  %5 = zext i32 %4 to i64
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 2
  store i64 %7, i64* %PC, align 8
  store i64 %5, i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_imulq__0x14___rsi___rsi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
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
  %10 = mul nsw i128 %9, 20
  %11 = trunc i128 %10 to i64
  store i64 %11, i64* %RSI, align 8
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
define %struct.Memory* @routine_movsbl___rcx____edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = bitcast i64* %RCX to i8**
  %4 = load i8*, i8** %3, align 8
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 3
  store i64 %6, i64* %PC, align 8
  %7 = load i8, i8* %4, align 1
  %8 = sext i8 %7 to i64
  %9 = and i64 %8, 4294967295
  store i64 %9, i64* %RDX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__edx___eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %EDX = bitcast %union.anon* %4 to i32*
  %5 = load i32, i32* %EAX, align 4
  %6 = load i32, i32* %EDX, align 4
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
define %struct.Memory* @routine_jg_.L_420ede(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_cmpl_MINUS0x14__rbp____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %ECX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i32, i32* %ECX, align 4
  %5 = load i64, i64* %RBP, align 8
  %6 = add i64 %5, -20
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
define %struct.Memory* @routine_jge_.L_420ede(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpb__0x0__0x2__rax_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = add i64 %3, 2
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i8*
  %8 = load i8, i8* %7, align 1
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %9, align 1
  %10 = zext i8 %8 to i32
  %11 = tail call i32 @llvm.ctpop.i32(i32 %10)
  %12 = trunc i32 %11 to i8
  %13 = and i8 %12, 1
  %14 = xor i8 %13, 1
  %15 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %14, i8* %15, align 1
  %16 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %16, align 1
  %17 = icmp eq i8 %8, 0
  %18 = zext i1 %17 to i8
  %19 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %18, i8* %19, align 1
  %20 = lshr i8 %8, 7
  %21 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %20, i8* %21, align 1
  %22 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %22, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_je_.L_420f05(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl_MINUS0x34__rbp____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %ECX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i32, i32* %ECX, align 4
  %5 = load i64, i64* %RBP, align 8
  %6 = add i64 %5, -52
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
define %struct.Memory* @routine_jl_.L_420fe8(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__0xf404c____rax_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = bitcast i64* %RAX to i32**
  %4 = load i32*, i32** %3, align 8
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 6
  store i64 %6, i64* %PC, align 8
  %7 = load i32, i32* %4, align 4
  %8 = add i32 %7, -999500
  %9 = icmp ult i32 %7, 999500
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
define %struct.Memory* @routine_jle_.L_420f68(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl___rcx____edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = bitcast i64* %RCX to i32**
  %4 = load i32*, i32** %3, align 8
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 2
  store i64 %6, i64* %PC, align 8
  %7 = load i32, i32* %4, align 4
  %8 = zext i32 %7 to i64
  store i64 %8, i64* %RDX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_subl__eax___edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
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
define %struct.Memory* @routine_movl__edx____rcx_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %EDX = bitcast %union.anon* %3 to i32*
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %4 = bitcast i64* %RCX to i32**
  %5 = load i32*, i32** %4, align 8
  %6 = load i32, i32* %EDX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 2
  store i64 %8, i64* %PC, align 8
  store i32 %6, i32* %5, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_420f8c(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__0xfff0bfb4____rax_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = bitcast i64* %RAX to i32**
  %4 = load i32*, i32** %3, align 8
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 6
  store i64 %6, i64* %PC, align 8
  %7 = load i32, i32* %4, align 4
  %8 = add i32 %7, 999500
  %9 = icmp ult i32 %7, -999500
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
  %18 = xor i32 %7, 16
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
  %30 = lshr i32 %7, 31
  %31 = xor i32 %30, 1
  %32 = xor i32 %27, %30
  %33 = add nuw nsw i32 %32, %31
  %34 = icmp eq i32 %33, 2
  %35 = zext i1 %34 to i8
  %36 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %35, i8* %36, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jge_.L_420f87(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_addl___rcx____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = bitcast i64* %RCX to i32**
  %5 = load i32*, i32** %4, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 2
  store i64 %7, i64* %PC, align 8
  %8 = trunc i64 %3 to i32
  %9 = load i32, i32* %5, align 4
  %10 = add i32 %9, %8
  %11 = zext i32 %10 to i64
  store i64 %11, i64* %RAX, align 8
  %12 = icmp ult i32 %10, %8
  %13 = icmp ult i32 %10, %9
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
  %23 = xor i32 %9, %8
  %24 = xor i32 %23, %10
  %25 = lshr i32 %24, 4
  %26 = trunc i32 %25 to i8
  %27 = and i8 %26, 1
  %28 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %27, i8* %28, align 1
  %29 = icmp eq i32 %10, 0
  %30 = zext i1 %29 to i8
  %31 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %30, i8* %31, align 1
  %32 = lshr i32 %10, 31
  %33 = trunc i32 %32 to i8
  %34 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %33, i8* %34, align 1
  %35 = lshr i32 %8, 31
  %36 = lshr i32 %9, 31
  %37 = xor i32 %32, %35
  %38 = xor i32 %32, %36
  %39 = add nuw nsw i32 %37, %38
  %40 = icmp eq i32 %39, 2
  %41 = zext i1 %40 to i8
  %42 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %41, i8* %42, align 1
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
define %struct.Memory* @routine_movzwl_0x4__rax____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = add i64 %3, 4
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i16*
  %8 = load i16, i16* %7, align 2
  %9 = zext i16 %8 to i64
  store i64 %9, i64* %RCX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_MINUS0x20__rbp____rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -32
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movsbl_0x2__rax____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = add i64 %3, 2
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
define %struct.Memory* @routine_jmpq_.L_42128e(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
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
define %struct.Memory* @routine_cmpl_0x633b40___ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %ECX = bitcast %union.anon* %3 to i32*
  %4 = load i32, i32* %ECX, align 4
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = load i32, i32* bitcast (%G_0x633b40_type* @G_0x633b40 to i32*), align 8
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
define %struct.Memory* @routine_jne_.L_421287(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movq_0x886a70___rdx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 8
  store i64 %4, i64* %PC, align 8
  %5 = load i64, i64* bitcast (%G_0x886a70_type* @G_0x886a70 to i64*), align 8
  store i64 %5, i64* %RDX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_0x886a70___rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 8
  store i64 %4, i64* %PC, align 8
  %5 = load i64, i64* bitcast (%G_0x886a70_type* @G_0x886a70 to i64*), align 8
  store i64 %5, i64* %RCX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jne_.L_421135(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jg_.L_421135(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jge_.L_421135(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_je_.L_42115c(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jl_.L_42123f(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jle_.L_4211bf(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jmpq_.L_4211e3(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jge_.L_4211de(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl__0x4__MINUS0x4__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -4
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  store i32 4, i32* %7, align 4
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
