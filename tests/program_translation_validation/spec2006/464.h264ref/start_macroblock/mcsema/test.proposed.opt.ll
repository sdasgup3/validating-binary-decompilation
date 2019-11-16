; ModuleID = 'mcsema/test.proposed.inline.ll'
source_filename = "llvm-link"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu-elf"

%__bss_start_type = type <{ [8 x i8] }>
%G_0x6cb8f8_type = type <{ [8 x i8] }>
%G_0x6cb900_type = type <{ [8 x i8] }>
%G_0x6cd470_type = type <{ [4 x i8] }>
%G_0x6cd4e4_type = type <{ [4 x i8] }>
%G_0x6d45e8_type = type <{ [4 x i8] }>
%G_0x6d4690_type = type <{ [8 x i8] }>
%G_0x70e8d0_type = type <{ [4 x i8] }>
%G_0x70fcf0_type = type <{ [8 x i8] }>
%G_0x722cb0_type = type <{ [8 x i8] }>
%G_0x7242f0_type = type <{ [4 x i8] }>
%G_0x724740_type = type <{ [4 x i8] }>
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
@G_0x6cd470 = local_unnamed_addr global %G_0x6cd470_type zeroinitializer
@G_0x6cd4e4 = local_unnamed_addr global %G_0x6cd4e4_type zeroinitializer
@G_0x6d45e8 = local_unnamed_addr global %G_0x6d45e8_type zeroinitializer
@G_0x6d4690 = local_unnamed_addr global %G_0x6d4690_type zeroinitializer
@G_0x70e8d0 = local_unnamed_addr global %G_0x70e8d0_type zeroinitializer
@G_0x70fcf0 = local_unnamed_addr global %G_0x70fcf0_type zeroinitializer
@G_0x722cb0 = local_unnamed_addr global %G_0x722cb0_type zeroinitializer
@G_0x7242f0 = local_unnamed_addr global %G_0x7242f0_type zeroinitializer
@G_0x724740 = local_unnamed_addr global %G_0x724740_type zeroinitializer

declare %struct.Memory* @__remill_error(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr

; Function Attrs: nounwind readnone
declare i32 @llvm.ctpop.i32(i32) #0

declare %struct.Memory* @sub_43b350.set_MB_parameters(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_425aa0.FmoGetPreviousMBNr(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_4808f0.updateRCModel(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_47e160.updateQuantizationParameter(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_449e80.CheckAvailabilityOfNeighbors(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_40fe80.CheckAvailabilityOfNeighborsCABAC(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_45abd0.ResetFastFullIntegerSearch(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

; Function Attrs: alwaysinline
define %struct.Memory* @start_macroblock(%struct.State* noalias, i64, %struct.Memory* noalias) local_unnamed_addr #1 {
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
  %11 = add i64 %7, -120
  store i64 %11, i64* %6, align 8
  %12 = icmp ult i64 %8, 112
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
  %40 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %AL.i1984 = bitcast %union.anon* %40 to i8*
  store i8 1, i8* %AL.i1984, align 1
  %41 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0
  %EDI.i = bitcast %union.anon* %41 to i32*
  %42 = add i64 %7, -12
  %43 = load i32, i32* %EDI.i, align 4
  %44 = add i64 %10, 12
  store i64 %44, i64* %3, align 8
  %45 = inttoptr i64 %42 to i32*
  store i32 %43, i32* %45, align 4
  %46 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0
  %ESI.i2043 = bitcast %union.anon* %46 to i32*
  %47 = load i64, i64* %RBP.i, align 8
  %48 = add i64 %47, -8
  %49 = load i32, i32* %ESI.i2043, align 4
  %50 = load i64, i64* %3, align 8
  %51 = add i64 %50, 3
  store i64 %51, i64* %3, align 8
  %52 = inttoptr i64 %48 to i32*
  store i32 %49, i32* %52, align 4
  %53 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %RCX.i2041 = getelementptr inbounds %union.anon, %union.anon* %53, i64 0, i32 0
  %54 = load i64, i64* %3, align 8
  %55 = load i64, i64* bitcast (%G_0x6cb8f8_type* @G_0x6cb8f8 to i64*), align 8
  store i64 %55, i64* %RCX.i2041, align 8
  %56 = add i64 %55, 208
  %57 = add i64 %54, 15
  store i64 %57, i64* %3, align 8
  %58 = inttoptr i64 %56 to i32*
  %59 = load i32, i32* %58, align 4
  %60 = add i32 %59, -2
  %61 = icmp ult i32 %59, 2
  %62 = zext i1 %61 to i8
  store i8 %62, i8* %14, align 1
  %63 = and i32 %60, 255
  %64 = tail call i32 @llvm.ctpop.i32(i32 %63)
  %65 = trunc i32 %64 to i8
  %66 = and i8 %65, 1
  %67 = xor i8 %66, 1
  store i8 %67, i8* %21, align 1
  %68 = xor i32 %60, %59
  %69 = lshr i32 %68, 4
  %70 = trunc i32 %69 to i8
  %71 = and i8 %70, 1
  store i8 %71, i8* %27, align 1
  %72 = icmp eq i32 %60, 0
  %73 = zext i1 %72 to i8
  store i8 %73, i8* %30, align 1
  %74 = lshr i32 %60, 31
  %75 = trunc i32 %74 to i8
  store i8 %75, i8* %33, align 1
  %76 = lshr i32 %59, 31
  %77 = xor i32 %74, %76
  %78 = add nuw nsw i32 %77, %76
  %79 = icmp eq i32 %78, 2
  %80 = zext i1 %79 to i8
  store i8 %80, i8* %39, align 1
  %81 = load i64, i64* %RBP.i, align 8
  %82 = add i64 %81, -101
  %83 = load i8, i8* %AL.i1984, align 1
  %84 = add i64 %54, 18
  store i64 %84, i64* %3, align 8
  %85 = inttoptr i64 %82 to i8*
  store i8 %83, i8* %85, align 1
  %86 = load i64, i64* %3, align 8
  %87 = load i8, i8* %30, align 1
  %88 = icmp ne i8 %87, 0
  %.v240 = select i1 %88, i64 27, i64 6
  %89 = add i64 %86, %.v240
  store i64 %89, i64* %3, align 8
  %cmpBr_43bc72 = icmp eq i8 %87, 1
  %.pre149 = getelementptr inbounds %union.anon, %union.anon* %40, i64 0, i32 0
  br i1 %cmpBr_43bc72, label %block_.L_43bc8d, label %block_43bc78

block_43bc78:                                     ; preds = %entry
  %90 = load i64, i64* bitcast (%G_0x6cb8f8_type* @G_0x6cb8f8 to i64*), align 8
  store i64 %90, i64* %.pre149, align 8
  %91 = add i64 %90, 208
  %92 = add i64 %89, 15
  store i64 %92, i64* %3, align 8
  %93 = inttoptr i64 %91 to i32*
  %94 = load i32, i32* %93, align 4
  %95 = add i32 %94, -3
  %96 = icmp ult i32 %94, 3
  %97 = zext i1 %96 to i8
  store i8 %97, i8* %14, align 1
  %98 = and i32 %95, 255
  %99 = tail call i32 @llvm.ctpop.i32(i32 %98)
  %100 = trunc i32 %99 to i8
  %101 = and i8 %100, 1
  %102 = xor i8 %101, 1
  store i8 %102, i8* %21, align 1
  %103 = xor i32 %95, %94
  %104 = lshr i32 %103, 4
  %105 = trunc i32 %104 to i8
  %106 = and i8 %105, 1
  store i8 %106, i8* %27, align 1
  %107 = icmp eq i32 %95, 0
  %108 = zext i1 %107 to i8
  store i8 %108, i8* %30, align 1
  %109 = lshr i32 %95, 31
  %110 = trunc i32 %109 to i8
  store i8 %110, i8* %33, align 1
  %111 = lshr i32 %94, 31
  %112 = xor i32 %109, %111
  %113 = add nuw nsw i32 %112, %111
  %114 = icmp eq i32 %113, 2
  %115 = zext i1 %114 to i8
  store i8 %115, i8* %39, align 1
  %CL.i2029 = bitcast %union.anon* %53 to i8*
  store i8 %108, i8* %CL.i2029, align 1
  %116 = load i64, i64* %RBP.i, align 8
  %117 = add i64 %116, -101
  %118 = add i64 %89, 21
  store i64 %118, i64* %3, align 8
  %119 = inttoptr i64 %117 to i8*
  store i8 %108, i8* %119, align 1
  %.pre = load i64, i64* %3, align 8
  br label %block_.L_43bc8d

block_.L_43bc8d:                                  ; preds = %entry, %block_43bc78
  %120 = phi i64 [ %.pre, %block_43bc78 ], [ %89, %entry ]
  %121 = load i64, i64* %RBP.i, align 8
  %122 = add i64 %121, -101
  %123 = add i64 %120, 3
  store i64 %123, i64* %3, align 8
  %124 = inttoptr i64 %122 to i8*
  %125 = load i8, i8* %124, align 1
  store i64 2, i64* %RCX.i2041, align 8
  %126 = and i8 %125, 1
  store i8 %126, i8* %AL.i1984, align 1
  store i8 0, i8* %14, align 1
  %127 = zext i8 %126 to i32
  %128 = tail call i32 @llvm.ctpop.i32(i32 %127)
  %129 = trunc i32 %128 to i8
  %130 = xor i8 %129, 1
  store i8 %130, i8* %21, align 1
  %131 = xor i8 %126, 1
  store i8 %131, i8* %30, align 1
  store i8 0, i8* %33, align 1
  store i8 0, i8* %39, align 1
  store i8 0, i8* %27, align 1
  %132 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %RDX.i2018 = getelementptr inbounds %union.anon, %union.anon* %132, i64 0, i32 0
  %133 = zext i8 %126 to i64
  store i64 %133, i64* %RDX.i2018, align 8
  %EDX.i2014 = bitcast %union.anon* %132 to i32*
  %134 = add i64 %121, -28
  %135 = zext i8 %126 to i32
  %136 = add i64 %120, 16
  store i64 %136, i64* %3, align 8
  %137 = inttoptr i64 %134 to i32*
  store i32 %135, i32* %137, align 4
  %RSI.i2012 = getelementptr inbounds %union.anon, %union.anon* %46, i64 0, i32 0
  %138 = load i64, i64* %3, align 8
  %139 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*), align 8
  store i64 %139, i64* %RSI.i2012, align 8
  %140 = add i64 %139, 14168
  %141 = add i64 %138, 15
  store i64 %141, i64* %3, align 8
  %142 = inttoptr i64 %140 to i64*
  %143 = load i64, i64* %142, align 8
  store i64 %143, i64* %RSI.i2012, align 8
  %RDI.i2007 = getelementptr inbounds %union.anon, %union.anon* %41, i64 0, i32 0
  %144 = load i64, i64* %RBP.i, align 8
  %145 = add i64 %144, -4
  %146 = add i64 %138, 19
  store i64 %146, i64* %3, align 8
  %147 = inttoptr i64 %145 to i32*
  %148 = load i32, i32* %147, align 4
  %149 = sext i32 %148 to i64
  %150 = mul nsw i64 %149, 632
  store i64 %150, i64* %RDI.i2007, align 8
  %151 = lshr i64 %150, 63
  %152 = add i64 %150, %143
  %153 = icmp ult i64 %152, %143
  %154 = icmp ult i64 %152, %150
  %155 = or i1 %153, %154
  %156 = zext i1 %155 to i8
  store i8 %156, i8* %14, align 1
  %157 = trunc i64 %152 to i32
  %158 = and i32 %157, 255
  %159 = tail call i32 @llvm.ctpop.i32(i32 %158)
  %160 = trunc i32 %159 to i8
  %161 = and i8 %160, 1
  %162 = xor i8 %161, 1
  store i8 %162, i8* %21, align 1
  %163 = xor i64 %150, %143
  %164 = xor i64 %163, %152
  %165 = lshr i64 %164, 4
  %166 = trunc i64 %165 to i8
  %167 = and i8 %166, 1
  store i8 %167, i8* %27, align 1
  %168 = icmp eq i64 %152, 0
  %169 = zext i1 %168 to i8
  store i8 %169, i8* %30, align 1
  %170 = lshr i64 %152, 63
  %171 = trunc i64 %170 to i8
  store i8 %171, i8* %33, align 1
  %172 = lshr i64 %143, 63
  %173 = xor i64 %170, %172
  %174 = xor i64 %170, %151
  %175 = add nuw nsw i64 %173, %174
  %176 = icmp eq i64 %175, 2
  %177 = zext i1 %176 to i8
  store i8 %177, i8* %39, align 1
  %178 = add i64 %144, -40
  %179 = add i64 %138, 33
  store i64 %179, i64* %3, align 8
  %180 = inttoptr i64 %178 to i64*
  store i64 %152, i64* %180, align 8
  %181 = load i64, i64* %3, align 8
  %182 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*), align 8
  store i64 %182, i64* %RSI.i2012, align 8
  %183 = add i64 %182, 14160
  %184 = add i64 %181, 15
  store i64 %184, i64* %3, align 8
  %185 = inttoptr i64 %183 to i64*
  %186 = load i64, i64* %185, align 8
  %187 = load i64, i64* %RBP.i, align 8
  %188 = add i64 %187, -48
  %189 = add i64 %181, 19
  store i64 %189, i64* %3, align 8
  %190 = inttoptr i64 %188 to i64*
  store i64 %186, i64* %190, align 8
  %191 = load i64, i64* %3, align 8
  %192 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*), align 8
  store i64 %192, i64* %RSI.i2012, align 8
  %193 = add i64 %192, 72668
  %194 = add i64 %191, 14
  store i64 %194, i64* %3, align 8
  %195 = inttoptr i64 %193 to i32*
  %196 = load i32, i32* %195, align 4
  %197 = zext i32 %196 to i64
  store i64 %197, i64* %.pre149, align 8
  %198 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %199 = bitcast %union.anon* %40 to i32*
  %200 = sext i32 %196 to i64
  %201 = lshr i64 %200, 32
  store i64 %201, i64* %198, align 8
  %ECX.i1981 = bitcast %union.anon* %53 to i32*
  %202 = load i32, i32* %ECX.i1981, align 4
  %203 = add i64 %191, 17
  store i64 %203, i64* %3, align 8
  %204 = sext i32 %202 to i64
  %205 = shl nuw i64 %201, 32
  %206 = or i64 %205, %197
  %207 = sdiv i64 %206, %204
  %208 = shl i64 %207, 32
  %209 = ashr exact i64 %208, 32
  %210 = icmp eq i64 %207, %209
  br i1 %210, label %213, label %211

; <label>:211:                                    ; preds = %block_.L_43bc8d
  %212 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %203, %struct.Memory* %2)
  %.pre107 = load i64, i64* %.pre149, align 8
  %.pre108 = load i64, i64* %3, align 8
  br label %routine_idivl__ecx.exit1982

; <label>:213:                                    ; preds = %block_.L_43bc8d
  %214 = srem i64 %206, %204
  %215 = and i64 %207, 4294967295
  store i64 %215, i64* %.pre149, align 8
  %216 = and i64 %214, 4294967295
  store i64 %216, i64* %RDX.i2018, align 8
  store i8 0, i8* %14, align 1
  store i8 0, i8* %21, align 1
  store i8 0, i8* %27, align 1
  store i8 0, i8* %30, align 1
  store i8 0, i8* %33, align 1
  store i8 0, i8* %39, align 1
  br label %routine_idivl__ecx.exit1982

routine_idivl__ecx.exit1982:                      ; preds = %213, %211
  %217 = phi i64 [ %.pre108, %211 ], [ %203, %213 ]
  %218 = phi i64 [ %.pre107, %211 ], [ %215, %213 ]
  %219 = phi %struct.Memory* [ %212, %211 ], [ %2, %213 ]
  %220 = trunc i64 %218 to i32
  %221 = add i32 %220, 25
  %222 = zext i32 %221 to i64
  store i64 %222, i64* %.pre149, align 8
  %223 = icmp ugt i32 %220, -26
  %224 = zext i1 %223 to i8
  store i8 %224, i8* %14, align 1
  %225 = and i32 %221, 255
  %226 = tail call i32 @llvm.ctpop.i32(i32 %225)
  %227 = trunc i32 %226 to i8
  %228 = and i8 %227, 1
  %229 = xor i8 %228, 1
  store i8 %229, i8* %21, align 1
  %230 = xor i32 %220, 16
  %231 = xor i32 %230, %221
  %232 = lshr i32 %231, 4
  %233 = trunc i32 %232 to i8
  %234 = and i8 %233, 1
  store i8 %234, i8* %27, align 1
  %235 = icmp eq i32 %221, 0
  %236 = zext i1 %235 to i8
  store i8 %236, i8* %30, align 1
  %237 = lshr i32 %221, 31
  %238 = trunc i32 %237 to i8
  store i8 %238, i8* %33, align 1
  %239 = lshr i32 %220, 31
  %240 = xor i32 %237, %239
  %241 = add nuw nsw i32 %240, %237
  %242 = icmp eq i32 %241, 2
  %243 = zext i1 %242 to i8
  store i8 %243, i8* %39, align 1
  %244 = load i64, i64* %RBP.i, align 8
  %245 = add i64 %244, -76
  %246 = add i64 %217, 6
  store i64 %246, i64* %3, align 8
  %247 = inttoptr i64 %245 to i32*
  store i32 %221, i32* %247, align 4
  %248 = load i64, i64* %3, align 8
  %249 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*), align 8
  store i64 %249, i64* %RSI.i2012, align 8
  %250 = add i64 %249, 72668
  %251 = add i64 %248, 14
  store i64 %251, i64* %3, align 8
  %252 = inttoptr i64 %250 to i32*
  %253 = load i32, i32* %252, align 4
  %254 = zext i32 %253 to i64
  store i64 %254, i64* %.pre149, align 8
  %255 = sext i32 %253 to i64
  %256 = lshr i64 %255, 32
  store i64 %256, i64* %198, align 8
  %257 = load i32, i32* %ECX.i1981, align 4
  %258 = add i64 %248, 17
  store i64 %258, i64* %3, align 8
  %259 = sext i32 %257 to i64
  %260 = shl nuw i64 %256, 32
  %261 = or i64 %260, %254
  %262 = sdiv i64 %261, %259
  %263 = shl i64 %262, 32
  %264 = ashr exact i64 %263, 32
  %265 = icmp eq i64 %262, %264
  br i1 %265, label %268, label %266

; <label>:266:                                    ; preds = %routine_idivl__ecx.exit1982
  %267 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %258, %struct.Memory* %219)
  %.pre109 = load i64, i64* %.pre149, align 8
  %.pre110 = load i64, i64* %3, align 8
  br label %routine_idivl__ecx.exit

; <label>:268:                                    ; preds = %routine_idivl__ecx.exit1982
  %269 = srem i64 %261, %259
  %270 = and i64 %262, 4294967295
  store i64 %270, i64* %.pre149, align 8
  %271 = and i64 %269, 4294967295
  store i64 %271, i64* %RDX.i2018, align 8
  store i8 0, i8* %14, align 1
  store i8 0, i8* %21, align 1
  store i8 0, i8* %27, align 1
  store i8 0, i8* %30, align 1
  store i8 0, i8* %33, align 1
  store i8 0, i8* %39, align 1
  br label %routine_idivl__ecx.exit

routine_idivl__ecx.exit:                          ; preds = %268, %266
  %272 = phi i64 [ %.pre110, %266 ], [ %258, %268 ]
  %273 = phi i64 [ %.pre109, %266 ], [ %270, %268 ]
  %274 = phi %struct.Memory* [ %267, %266 ], [ %219, %268 ]
  %275 = trunc i64 %273 to i32
  %276 = add i32 %275, 26
  %277 = zext i32 %276 to i64
  store i64 %277, i64* %.pre149, align 8
  %278 = icmp ugt i32 %275, -27
  %279 = zext i1 %278 to i8
  store i8 %279, i8* %14, align 1
  %280 = and i32 %276, 255
  %281 = tail call i32 @llvm.ctpop.i32(i32 %280)
  %282 = trunc i32 %281 to i8
  %283 = and i8 %282, 1
  %284 = xor i8 %283, 1
  store i8 %284, i8* %21, align 1
  %285 = xor i32 %275, 16
  %286 = xor i32 %285, %276
  %287 = lshr i32 %286, 4
  %288 = trunc i32 %287 to i8
  %289 = and i8 %288, 1
  store i8 %289, i8* %27, align 1
  %290 = icmp eq i32 %276, 0
  %291 = zext i1 %290 to i8
  store i8 %291, i8* %30, align 1
  %292 = lshr i32 %276, 31
  %293 = trunc i32 %292 to i8
  store i8 %293, i8* %33, align 1
  %294 = lshr i32 %275, 31
  %295 = xor i32 %292, %294
  %296 = add nuw nsw i32 %295, %292
  %297 = icmp eq i32 %296, 2
  %298 = zext i1 %297 to i8
  store i8 %298, i8* %39, align 1
  %299 = load i64, i64* %RBP.i, align 8
  %300 = add i64 %299, -80
  %301 = add i64 %272, 6
  store i64 %301, i64* %3, align 8
  %302 = inttoptr i64 %300 to i32*
  store i32 %276, i32* %302, align 4
  %303 = load i64, i64* %RBP.i, align 8
  %304 = add i64 %303, -8
  %305 = load i64, i64* %3, align 8
  %306 = add i64 %305, 3
  store i64 %306, i64* %3, align 8
  %307 = inttoptr i64 %304 to i32*
  %308 = load i32, i32* %307, align 4
  %309 = zext i32 %308 to i64
  store i64 %309, i64* %.pre149, align 8
  %310 = add i64 %303, -40
  %311 = add i64 %305, 7
  store i64 %311, i64* %3, align 8
  %312 = inttoptr i64 %310 to i64*
  %313 = load i64, i64* %312, align 8
  store i64 %313, i64* %RSI.i2012, align 8
  %314 = add i64 %313, 532
  %315 = add i64 %305, 13
  store i64 %315, i64* %3, align 8
  %316 = inttoptr i64 %314 to i32*
  store i32 %308, i32* %316, align 4
  %317 = load i64, i64* %RBP.i, align 8
  %318 = add i64 %317, -8
  %319 = load i64, i64* %3, align 8
  %320 = add i64 %319, 3
  store i64 %320, i64* %3, align 8
  %321 = inttoptr i64 %318 to i32*
  %322 = load i32, i32* %321, align 4
  %323 = zext i32 %322 to i64
  store i64 %323, i64* %.pre149, align 8
  %324 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0
  %R8B.i1947 = bitcast %union.anon* %324 to i8*
  %325 = trunc i32 %322 to i8
  store i8 %325, i8* %R8B.i1947, align 1
  %326 = load i64, i64* bitcast (%G_0x70fcf0_type* @G_0x70fcf0 to i64*), align 8
  store i64 %326, i64* %RSI.i2012, align 8
  %327 = add i64 %326, 6472
  %328 = add i64 %319, 21
  store i64 %328, i64* %3, align 8
  %329 = inttoptr i64 %327 to i64*
  %330 = load i64, i64* %329, align 8
  store i64 %330, i64* %RSI.i2012, align 8
  %331 = add i64 %317, -4
  %332 = add i64 %319, 25
  store i64 %332, i64* %3, align 8
  %333 = inttoptr i64 %331 to i32*
  %334 = load i32, i32* %333, align 4
  %335 = sext i32 %334 to i64
  store i64 %335, i64* %RDI.i2007, align 8
  %336 = add i64 %330, %335
  %337 = add i64 %319, 29
  store i64 %337, i64* %3, align 8
  %338 = inttoptr i64 %336 to i8*
  store i8 %325, i8* %338, align 1
  %339 = load i64, i64* %RBP.i, align 8
  %340 = add i64 %339, -4
  %341 = load i64, i64* %3, align 8
  %342 = add i64 %341, 3
  store i64 %342, i64* %3, align 8
  %343 = inttoptr i64 %340 to i32*
  %344 = load i32, i32* %343, align 4
  %345 = zext i32 %344 to i64
  store i64 %345, i64* %RDI.i2007, align 8
  %346 = add i64 %341, -2521
  %347 = add i64 %341, 8
  %348 = load i64, i64* %6, align 8
  %349 = add i64 %348, -8
  %350 = inttoptr i64 %349 to i64*
  store i64 %347, i64* %350, align 8
  store i64 %349, i64* %6, align 8
  store i64 %346, i64* %3, align 8
  %call2_43bd2c = tail call %struct.Memory* @sub_43b350.set_MB_parameters(%struct.State* nonnull %0, i64 %346, %struct.Memory* %274)
  %351 = load i64, i64* %RBP.i, align 8
  %352 = add i64 %351, -28
  %353 = load i64, i64* %3, align 8
  %354 = add i64 %353, 4
  store i64 %354, i64* %3, align 8
  %355 = inttoptr i64 %352 to i32*
  %356 = load i32, i32* %355, align 4
  store i8 0, i8* %14, align 1
  %357 = and i32 %356, 255
  %358 = tail call i32 @llvm.ctpop.i32(i32 %357)
  %359 = trunc i32 %358 to i8
  %360 = and i8 %359, 1
  %361 = xor i8 %360, 1
  store i8 %361, i8* %21, align 1
  store i8 0, i8* %27, align 1
  %362 = icmp eq i32 %356, 0
  %363 = zext i1 %362 to i8
  store i8 %363, i8* %30, align 1
  %364 = lshr i32 %356, 31
  %365 = trunc i32 %364 to i8
  store i8 %365, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %.v161 = select i1 %362, i64 333, i64 10
  %366 = add i64 %353, %.v161
  store i64 %366, i64* %3, align 8
  br i1 %362, label %block_.L_43be7e, label %block_43bd3b

block_43bd3b:                                     ; preds = %routine_idivl__ecx.exit
  %367 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*), align 8
  store i64 %367, i64* %.pre149, align 8
  %368 = add i64 %367, 120
  %369 = add i64 %366, 12
  store i64 %369, i64* %3, align 8
  %370 = inttoptr i64 %368 to i32*
  %371 = load i32, i32* %370, align 4
  store i8 0, i8* %14, align 1
  %372 = and i32 %371, 255
  %373 = tail call i32 @llvm.ctpop.i32(i32 %372)
  %374 = trunc i32 %373 to i8
  %375 = and i8 %374, 1
  %376 = xor i8 %375, 1
  store i8 %376, i8* %21, align 1
  store i8 0, i8* %27, align 1
  %377 = icmp eq i32 %371, 0
  %378 = zext i1 %377 to i8
  store i8 %378, i8* %30, align 1
  %379 = lshr i32 %371, 31
  %380 = trunc i32 %379 to i8
  store i8 %380, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %.v162 = select i1 %377, i64 18, i64 318
  %381 = add i64 %366, %.v162
  store i64 %381, i64* %3, align 8
  br i1 %377, label %block_43bd4d, label %block_.L_43be79

block_43bd4d:                                     ; preds = %block_43bd3b
  %382 = add i64 %351, -12
  %383 = add i64 %381, 7
  store i64 %383, i64* %3, align 8
  %384 = inttoptr i64 %382 to i32*
  store i32 0, i32* %384, align 4
  %SIL.i1858 = bitcast %union.anon* %46 to i8*
  %.pre111 = load i64, i64* %3, align 8
  br label %block_.L_43bd54

block_.L_43bd54:                                  ; preds = %block_.L_43be61, %block_43bd4d
  %385 = phi i64 [ %771, %block_.L_43be61 ], [ %.pre111, %block_43bd4d ]
  %386 = load i64, i64* %RBP.i, align 8
  %387 = add i64 %386, -12
  %388 = add i64 %385, 3
  store i64 %388, i64* %3, align 8
  %389 = inttoptr i64 %387 to i32*
  %390 = load i32, i32* %389, align 4
  %391 = zext i32 %390 to i64
  store i64 %391, i64* %.pre149, align 8
  %392 = add i64 %386, -48
  %393 = add i64 %385, 7
  store i64 %393, i64* %3, align 8
  %394 = inttoptr i64 %392 to i64*
  %395 = load i64, i64* %394, align 8
  store i64 %395, i64* %RCX.i2041, align 8
  %396 = add i64 %395, 16
  %397 = add i64 %385, 10
  store i64 %397, i64* %3, align 8
  %398 = inttoptr i64 %396 to i32*
  %399 = load i32, i32* %398, align 4
  %400 = sub i32 %390, %399
  %401 = icmp ult i32 %390, %399
  %402 = zext i1 %401 to i8
  store i8 %402, i8* %14, align 1
  %403 = and i32 %400, 255
  %404 = tail call i32 @llvm.ctpop.i32(i32 %403)
  %405 = trunc i32 %404 to i8
  %406 = and i8 %405, 1
  %407 = xor i8 %406, 1
  store i8 %407, i8* %21, align 1
  %408 = xor i32 %399, %390
  %409 = xor i32 %408, %400
  %410 = lshr i32 %409, 4
  %411 = trunc i32 %410 to i8
  %412 = and i8 %411, 1
  store i8 %412, i8* %27, align 1
  %413 = icmp eq i32 %400, 0
  %414 = zext i1 %413 to i8
  store i8 %414, i8* %30, align 1
  %415 = lshr i32 %400, 31
  %416 = trunc i32 %415 to i8
  store i8 %416, i8* %33, align 1
  %417 = lshr i32 %390, 31
  %418 = lshr i32 %399, 31
  %419 = xor i32 %418, %417
  %420 = xor i32 %415, %417
  %421 = add nuw nsw i32 %420, %419
  %422 = icmp eq i32 %421, 2
  %423 = zext i1 %422 to i8
  store i8 %423, i8* %39, align 1
  %424 = icmp ne i8 %416, 0
  %425 = xor i1 %424, %422
  %.v213 = select i1 %425, i64 16, i64 288
  %426 = add i64 %385, %.v213
  store i64 %426, i64* %3, align 8
  br i1 %425, label %block_43bd64, label %block_.L_43be74

block_43bd64:                                     ; preds = %block_.L_43bd54
  %427 = add i64 %426, 4
  store i64 %427, i64* %3, align 8
  %428 = load i64, i64* %394, align 8
  store i64 %428, i64* %.pre149, align 8
  %429 = add i64 %428, 24
  %430 = add i64 %426, 8
  store i64 %430, i64* %3, align 8
  %431 = inttoptr i64 %429 to i64*
  %432 = load i64, i64* %431, align 8
  store i64 %432, i64* %.pre149, align 8
  %433 = add i64 %426, 12
  store i64 %433, i64* %3, align 8
  %434 = load i32, i32* %389, align 4
  %435 = sext i32 %434 to i64
  %436 = mul nsw i64 %435, 120
  store i64 %436, i64* %RCX.i2041, align 8
  %437 = lshr i64 %436, 63
  %438 = add i64 %436, %432
  store i64 %438, i64* %.pre149, align 8
  %439 = icmp ult i64 %438, %432
  %440 = icmp ult i64 %438, %436
  %441 = or i1 %439, %440
  %442 = zext i1 %441 to i8
  store i8 %442, i8* %14, align 1
  %443 = trunc i64 %438 to i32
  %444 = and i32 %443, 255
  %445 = tail call i32 @llvm.ctpop.i32(i32 %444)
  %446 = trunc i32 %445 to i8
  %447 = and i8 %446, 1
  %448 = xor i8 %447, 1
  store i8 %448, i8* %21, align 1
  %449 = xor i64 %436, %432
  %450 = xor i64 %449, %438
  %451 = lshr i64 %450, 4
  %452 = trunc i64 %451 to i8
  %453 = and i8 %452, 1
  store i8 %453, i8* %27, align 1
  %454 = icmp eq i64 %438, 0
  %455 = zext i1 %454 to i8
  store i8 %455, i8* %30, align 1
  %456 = lshr i64 %438, 63
  %457 = trunc i64 %456 to i8
  store i8 %457, i8* %33, align 1
  %458 = lshr i64 %432, 63
  %459 = xor i64 %456, %458
  %460 = xor i64 %456, %437
  %461 = add nuw nsw i64 %459, %460
  %462 = icmp eq i64 %461, 2
  %463 = zext i1 %462 to i8
  store i8 %463, i8* %39, align 1
  %464 = add i64 %386, -56
  %465 = add i64 %426, 23
  store i64 %465, i64* %3, align 8
  %466 = inttoptr i64 %464 to i64*
  store i64 %438, i64* %466, align 8
  %467 = load i64, i64* %RBP.i, align 8
  %468 = add i64 %467, -56
  %469 = load i64, i64* %3, align 8
  %470 = add i64 %469, 4
  store i64 %470, i64* %3, align 8
  %471 = inttoptr i64 %468 to i64*
  %472 = load i64, i64* %471, align 8
  store i64 %472, i64* %.pre149, align 8
  %473 = add i64 %469, 7
  store i64 %473, i64* %3, align 8
  %474 = inttoptr i64 %472 to i64*
  %475 = load i64, i64* %474, align 8
  store i64 %475, i64* %.pre149, align 8
  %476 = add i64 %467, -64
  %477 = add i64 %469, 11
  store i64 %477, i64* %3, align 8
  %478 = inttoptr i64 %476 to i64*
  store i64 %475, i64* %478, align 8
  %479 = load i64, i64* %RBP.i, align 8
  %480 = add i64 %479, -64
  %481 = load i64, i64* %3, align 8
  %482 = add i64 %481, 4
  store i64 %482, i64* %3, align 8
  %483 = inttoptr i64 %480 to i64*
  %484 = load i64, i64* %483, align 8
  store i64 %484, i64* %.pre149, align 8
  %485 = add i64 %484, 4
  %486 = add i64 %481, 7
  store i64 %486, i64* %3, align 8
  %487 = inttoptr i64 %485 to i32*
  %488 = load i32, i32* %487, align 4
  %489 = zext i32 %488 to i64
  store i64 %489, i64* %RDX.i2018, align 8
  %490 = add i64 %481, 11
  store i64 %490, i64* %3, align 8
  %491 = load i64, i64* %483, align 8
  store i64 %491, i64* %.pre149, align 8
  %492 = add i64 %491, 16
  %493 = add i64 %481, 14
  store i64 %493, i64* %3, align 8
  %494 = inttoptr i64 %492 to i32*
  store i32 %488, i32* %494, align 4
  %495 = load i64, i64* %RBP.i, align 8
  %496 = add i64 %495, -64
  %497 = load i64, i64* %3, align 8
  %498 = add i64 %497, 4
  store i64 %498, i64* %3, align 8
  %499 = inttoptr i64 %496 to i64*
  %500 = load i64, i64* %499, align 8
  store i64 %500, i64* %.pre149, align 8
  %501 = add i64 %497, 6
  store i64 %501, i64* %3, align 8
  %502 = inttoptr i64 %500 to i32*
  %503 = load i32, i32* %502, align 4
  %504 = zext i32 %503 to i64
  store i64 %504, i64* %RDX.i2018, align 8
  %505 = add i64 %497, 10
  store i64 %505, i64* %3, align 8
  %506 = load i64, i64* %499, align 8
  store i64 %506, i64* %.pre149, align 8
  %507 = add i64 %506, 12
  %508 = add i64 %497, 13
  store i64 %508, i64* %3, align 8
  %509 = inttoptr i64 %507 to i32*
  store i32 %503, i32* %509, align 4
  %510 = load i64, i64* %RBP.i, align 8
  %511 = add i64 %510, -64
  %512 = load i64, i64* %3, align 8
  %513 = add i64 %512, 4
  store i64 %513, i64* %3, align 8
  %514 = inttoptr i64 %511 to i64*
  %515 = load i64, i64* %514, align 8
  store i64 %515, i64* %.pre149, align 8
  %516 = add i64 %515, 8
  %517 = add i64 %512, 8
  store i64 %517, i64* %3, align 8
  %518 = inttoptr i64 %516 to i8*
  %519 = load i8, i8* %518, align 1
  store i8 %519, i8* %SIL.i1858, align 1
  %520 = add i64 %512, 12
  store i64 %520, i64* %3, align 8
  %521 = load i64, i64* %514, align 8
  %522 = add i64 %521, 20
  %523 = add i64 %512, 16
  store i64 %523, i64* %3, align 8
  %524 = inttoptr i64 %522 to i8*
  store i8 %519, i8* %524, align 1
  %525 = load i64, i64* %3, align 8
  %526 = load i64, i64* bitcast (%G_0x6cb8f8_type* @G_0x6cb8f8 to i64*), align 8
  store i64 %526, i64* %.pre149, align 8
  %527 = add i64 %526, 2356
  %528 = add i64 %525, 15
  store i64 %528, i64* %3, align 8
  %529 = inttoptr i64 %527 to i32*
  %530 = load i32, i32* %529, align 4
  %531 = add i32 %530, -1
  %532 = icmp eq i32 %530, 0
  %533 = zext i1 %532 to i8
  store i8 %533, i8* %14, align 1
  %534 = and i32 %531, 255
  %535 = tail call i32 @llvm.ctpop.i32(i32 %534)
  %536 = trunc i32 %535 to i8
  %537 = and i8 %536, 1
  %538 = xor i8 %537, 1
  store i8 %538, i8* %21, align 1
  %539 = xor i32 %531, %530
  %540 = lshr i32 %539, 4
  %541 = trunc i32 %540 to i8
  %542 = and i8 %541, 1
  store i8 %542, i8* %27, align 1
  %543 = icmp eq i32 %531, 0
  %544 = zext i1 %543 to i8
  store i8 %544, i8* %30, align 1
  %545 = lshr i32 %531, 31
  %546 = trunc i32 %545 to i8
  store i8 %546, i8* %33, align 1
  %547 = lshr i32 %530, 31
  %548 = xor i32 %545, %547
  %549 = add nuw nsw i32 %548, %547
  %550 = icmp eq i32 %549, 2
  %551 = zext i1 %550 to i8
  store i8 %551, i8* %39, align 1
  %.v214 = select i1 %543, i64 21, i64 176
  %552 = add i64 %525, %.v214
  store i64 %552, i64* %3, align 8
  br i1 %543, label %block_43bdc6, label %block_.L_43be61

block_43bdc6:                                     ; preds = %block_43bd64
  %553 = load i64, i64* %RBP.i, align 8
  %554 = add i64 %553, -56
  %555 = add i64 %552, 4
  store i64 %555, i64* %3, align 8
  %556 = inttoptr i64 %554 to i64*
  %557 = load i64, i64* %556, align 8
  %558 = add i64 %557, 8
  store i64 %558, i64* %.pre149, align 8
  %559 = icmp ugt i64 %557, -9
  %560 = zext i1 %559 to i8
  store i8 %560, i8* %14, align 1
  %561 = trunc i64 %558 to i32
  %562 = and i32 %561, 255
  %563 = tail call i32 @llvm.ctpop.i32(i32 %562)
  %564 = trunc i32 %563 to i8
  %565 = and i8 %564, 1
  %566 = xor i8 %565, 1
  store i8 %566, i8* %21, align 1
  %567 = xor i64 %558, %557
  %568 = lshr i64 %567, 4
  %569 = trunc i64 %568 to i8
  %570 = and i8 %569, 1
  store i8 %570, i8* %27, align 1
  %571 = icmp eq i64 %558, 0
  %572 = zext i1 %571 to i8
  store i8 %572, i8* %30, align 1
  %573 = lshr i64 %558, 63
  %574 = trunc i64 %573 to i8
  store i8 %574, i8* %33, align 1
  %575 = lshr i64 %557, 63
  %576 = xor i64 %573, %575
  %577 = add nuw nsw i64 %576, %573
  %578 = icmp eq i64 %577, 2
  %579 = zext i1 %578 to i8
  store i8 %579, i8* %39, align 1
  %580 = add i64 %553, -72
  %581 = add i64 %552, 12
  store i64 %581, i64* %3, align 8
  %582 = inttoptr i64 %580 to i64*
  store i64 %558, i64* %582, align 8
  %583 = load i64, i64* %RBP.i, align 8
  %584 = add i64 %583, -72
  %585 = load i64, i64* %3, align 8
  %586 = add i64 %585, 4
  store i64 %586, i64* %3, align 8
  %587 = inttoptr i64 %584 to i64*
  %588 = load i64, i64* %587, align 8
  store i64 %588, i64* %.pre149, align 8
  %589 = add i64 %585, 6
  store i64 %589, i64* %3, align 8
  %590 = inttoptr i64 %588 to i32*
  %591 = load i32, i32* %590, align 4
  %592 = zext i32 %591 to i64
  store i64 %592, i64* %RCX.i2041, align 8
  %593 = add i64 %585, 10
  store i64 %593, i64* %3, align 8
  %594 = load i64, i64* %587, align 8
  store i64 %594, i64* %.pre149, align 8
  %595 = add i64 %594, 40
  %596 = add i64 %585, 13
  store i64 %596, i64* %3, align 8
  %597 = inttoptr i64 %595 to i32*
  store i32 %591, i32* %597, align 4
  %598 = load i64, i64* %RBP.i, align 8
  %599 = add i64 %598, -72
  %600 = load i64, i64* %3, align 8
  %601 = add i64 %600, 4
  store i64 %601, i64* %3, align 8
  %602 = inttoptr i64 %599 to i64*
  %603 = load i64, i64* %602, align 8
  store i64 %603, i64* %.pre149, align 8
  %604 = add i64 %603, 4
  %605 = add i64 %600, 7
  store i64 %605, i64* %3, align 8
  %606 = inttoptr i64 %604 to i32*
  %607 = load i32, i32* %606, align 4
  %608 = zext i32 %607 to i64
  store i64 %608, i64* %RCX.i2041, align 8
  %609 = add i64 %600, 11
  store i64 %609, i64* %3, align 8
  %610 = load i64, i64* %602, align 8
  store i64 %610, i64* %.pre149, align 8
  %611 = add i64 %610, 44
  %612 = add i64 %600, 14
  store i64 %612, i64* %3, align 8
  %613 = inttoptr i64 %611 to i32*
  store i32 %607, i32* %613, align 4
  %614 = load i64, i64* %RBP.i, align 8
  %615 = add i64 %614, -72
  %616 = load i64, i64* %3, align 8
  %617 = add i64 %616, 4
  store i64 %617, i64* %3, align 8
  %618 = inttoptr i64 %615 to i64*
  %619 = load i64, i64* %618, align 8
  store i64 %619, i64* %.pre149, align 8
  %620 = add i64 %619, 8
  %621 = add i64 %616, 7
  store i64 %621, i64* %3, align 8
  %622 = inttoptr i64 %620 to i32*
  %623 = load i32, i32* %622, align 4
  %624 = zext i32 %623 to i64
  store i64 %624, i64* %RCX.i2041, align 8
  %625 = add i64 %616, 11
  store i64 %625, i64* %3, align 8
  %626 = load i64, i64* %618, align 8
  store i64 %626, i64* %.pre149, align 8
  %627 = add i64 %626, 48
  %628 = add i64 %616, 14
  store i64 %628, i64* %3, align 8
  %629 = inttoptr i64 %627 to i32*
  store i32 %623, i32* %629, align 4
  %630 = load i64, i64* %RBP.i, align 8
  %631 = add i64 %630, -72
  %632 = load i64, i64* %3, align 8
  %633 = add i64 %632, 4
  store i64 %633, i64* %3, align 8
  %634 = inttoptr i64 %631 to i64*
  %635 = load i64, i64* %634, align 8
  store i64 %635, i64* %.pre149, align 8
  %636 = add i64 %635, 12
  %637 = add i64 %632, 7
  store i64 %637, i64* %3, align 8
  %638 = inttoptr i64 %636 to i32*
  %639 = load i32, i32* %638, align 4
  %640 = zext i32 %639 to i64
  store i64 %640, i64* %RCX.i2041, align 8
  %641 = add i64 %632, 11
  store i64 %641, i64* %3, align 8
  %642 = load i64, i64* %634, align 8
  store i64 %642, i64* %.pre149, align 8
  %643 = add i64 %642, 52
  %644 = add i64 %632, 14
  store i64 %644, i64* %3, align 8
  %645 = inttoptr i64 %643 to i32*
  store i32 %639, i32* %645, align 4
  %646 = load i64, i64* %RBP.i, align 8
  %647 = add i64 %646, -72
  %648 = load i64, i64* %3, align 8
  %649 = add i64 %648, 4
  store i64 %649, i64* %3, align 8
  %650 = inttoptr i64 %647 to i64*
  %651 = load i64, i64* %650, align 8
  store i64 %651, i64* %.pre149, align 8
  %652 = add i64 %651, 16
  %653 = add i64 %648, 7
  store i64 %653, i64* %3, align 8
  %654 = inttoptr i64 %652 to i32*
  %655 = load i32, i32* %654, align 4
  %656 = zext i32 %655 to i64
  store i64 %656, i64* %RCX.i2041, align 8
  %657 = add i64 %648, 11
  store i64 %657, i64* %3, align 8
  %658 = load i64, i64* %650, align 8
  store i64 %658, i64* %.pre149, align 8
  %659 = add i64 %658, 56
  %660 = add i64 %648, 14
  store i64 %660, i64* %3, align 8
  %661 = inttoptr i64 %659 to i32*
  store i32 %655, i32* %661, align 4
  %662 = load i64, i64* %RBP.i, align 8
  %663 = add i64 %662, -72
  %664 = load i64, i64* %3, align 8
  %665 = add i64 %664, 4
  store i64 %665, i64* %3, align 8
  %666 = inttoptr i64 %663 to i64*
  %667 = load i64, i64* %666, align 8
  store i64 %667, i64* %.pre149, align 8
  %668 = add i64 %667, 24
  %669 = add i64 %664, 8
  store i64 %669, i64* %3, align 8
  %670 = inttoptr i64 %668 to i64*
  %671 = load i64, i64* %670, align 8
  store i64 %671, i64* %.pre149, align 8
  %672 = add i64 %664, 12
  store i64 %672, i64* %3, align 8
  %673 = load i64, i64* %666, align 8
  store i64 %673, i64* %RDX.i2018, align 8
  %674 = add i64 %673, 64
  %675 = add i64 %664, 16
  store i64 %675, i64* %3, align 8
  %676 = inttoptr i64 %674 to i64*
  store i64 %671, i64* %676, align 8
  %677 = load i64, i64* %RBP.i, align 8
  %678 = add i64 %677, -72
  %679 = load i64, i64* %3, align 8
  %680 = add i64 %679, 4
  store i64 %680, i64* %3, align 8
  %681 = inttoptr i64 %678 to i64*
  %682 = load i64, i64* %681, align 8
  store i64 %682, i64* %.pre149, align 8
  %683 = add i64 %682, 32
  %684 = add i64 %679, 8
  store i64 %684, i64* %3, align 8
  %685 = inttoptr i64 %683 to i64*
  %686 = load i64, i64* %685, align 8
  store i64 %686, i64* %.pre149, align 8
  %687 = add i64 %679, 12
  store i64 %687, i64* %3, align 8
  %688 = load i64, i64* %681, align 8
  store i64 %688, i64* %RDX.i2018, align 8
  %689 = add i64 %688, 72
  %690 = add i64 %679, 16
  store i64 %690, i64* %3, align 8
  %691 = inttoptr i64 %689 to i64*
  store i64 %686, i64* %691, align 8
  %692 = load i64, i64* %RBP.i, align 8
  %693 = add i64 %692, -72
  %694 = load i64, i64* %3, align 8
  %695 = add i64 %694, 4
  store i64 %695, i64* %3, align 8
  %696 = inttoptr i64 %693 to i64*
  %697 = load i64, i64* %696, align 8
  store i64 %697, i64* %.pre149, align 8
  %698 = add i64 %697, 80
  %699 = add i64 %694, 7
  store i64 %699, i64* %3, align 8
  %700 = inttoptr i64 %698 to i32*
  %701 = load i32, i32* %700, align 4
  %702 = zext i32 %701 to i64
  store i64 %702, i64* %RCX.i2041, align 8
  %703 = add i64 %694, 11
  store i64 %703, i64* %3, align 8
  %704 = load i64, i64* %696, align 8
  store i64 %704, i64* %.pre149, align 8
  %705 = add i64 %704, 84
  %706 = add i64 %694, 14
  store i64 %706, i64* %3, align 8
  %707 = inttoptr i64 %705 to i32*
  store i32 %701, i32* %707, align 4
  %708 = load i64, i64* %RBP.i, align 8
  %709 = add i64 %708, -72
  %710 = load i64, i64* %3, align 8
  %711 = add i64 %710, 4
  store i64 %711, i64* %3, align 8
  %712 = inttoptr i64 %709 to i64*
  %713 = load i64, i64* %712, align 8
  store i64 %713, i64* %.pre149, align 8
  %714 = add i64 %713, 96
  %715 = add i64 %710, 7
  store i64 %715, i64* %3, align 8
  %716 = inttoptr i64 %714 to i32*
  %717 = load i32, i32* %716, align 4
  %718 = zext i32 %717 to i64
  store i64 %718, i64* %RCX.i2041, align 8
  %719 = add i64 %710, 11
  store i64 %719, i64* %3, align 8
  %720 = load i64, i64* %712, align 8
  store i64 %720, i64* %.pre149, align 8
  %721 = add i64 %720, 100
  %722 = add i64 %710, 14
  store i64 %722, i64* %3, align 8
  %723 = inttoptr i64 %721 to i32*
  store i32 %717, i32* %723, align 4
  %724 = load i64, i64* %RBP.i, align 8
  %725 = add i64 %724, -72
  %726 = load i64, i64* %3, align 8
  %727 = add i64 %726, 4
  store i64 %727, i64* %3, align 8
  %728 = inttoptr i64 %725 to i64*
  %729 = load i64, i64* %728, align 8
  store i64 %729, i64* %.pre149, align 8
  %730 = add i64 %729, 88
  %731 = add i64 %726, 7
  store i64 %731, i64* %3, align 8
  %732 = inttoptr i64 %730 to i32*
  %733 = load i32, i32* %732, align 4
  %734 = zext i32 %733 to i64
  store i64 %734, i64* %RCX.i2041, align 8
  %735 = add i64 %726, 11
  store i64 %735, i64* %3, align 8
  %736 = load i64, i64* %728, align 8
  store i64 %736, i64* %.pre149, align 8
  %737 = add i64 %736, 92
  %738 = add i64 %726, 14
  store i64 %738, i64* %3, align 8
  %739 = inttoptr i64 %737 to i32*
  store i32 %733, i32* %739, align 4
  %.pre112 = load i64, i64* %3, align 8
  br label %block_.L_43be61

block_.L_43be61:                                  ; preds = %block_43bd64, %block_43bdc6
  %740 = phi i64 [ %.pre112, %block_43bdc6 ], [ %552, %block_43bd64 ]
  %741 = load i64, i64* %RBP.i, align 8
  %742 = add i64 %741, -12
  %743 = add i64 %740, 8
  store i64 %743, i64* %3, align 8
  %744 = inttoptr i64 %742 to i32*
  %745 = load i32, i32* %744, align 4
  %746 = add i32 %745, 1
  %747 = zext i32 %746 to i64
  store i64 %747, i64* %.pre149, align 8
  %748 = icmp eq i32 %745, -1
  %749 = icmp eq i32 %746, 0
  %750 = or i1 %748, %749
  %751 = zext i1 %750 to i8
  store i8 %751, i8* %14, align 1
  %752 = and i32 %746, 255
  %753 = tail call i32 @llvm.ctpop.i32(i32 %752)
  %754 = trunc i32 %753 to i8
  %755 = and i8 %754, 1
  %756 = xor i8 %755, 1
  store i8 %756, i8* %21, align 1
  %757 = xor i32 %746, %745
  %758 = lshr i32 %757, 4
  %759 = trunc i32 %758 to i8
  %760 = and i8 %759, 1
  store i8 %760, i8* %27, align 1
  %761 = zext i1 %749 to i8
  store i8 %761, i8* %30, align 1
  %762 = lshr i32 %746, 31
  %763 = trunc i32 %762 to i8
  store i8 %763, i8* %33, align 1
  %764 = lshr i32 %745, 31
  %765 = xor i32 %762, %764
  %766 = add nuw nsw i32 %765, %762
  %767 = icmp eq i32 %766, 2
  %768 = zext i1 %767 to i8
  store i8 %768, i8* %39, align 1
  %769 = add i64 %740, 14
  store i64 %769, i64* %3, align 8
  store i32 %746, i32* %744, align 4
  %770 = load i64, i64* %3, align 8
  %771 = add i64 %770, -283
  store i64 %771, i64* %3, align 8
  br label %block_.L_43bd54

block_.L_43be74:                                  ; preds = %block_.L_43bd54
  %772 = add i64 %426, 5
  store i64 %772, i64* %3, align 8
  br label %block_.L_43be79

block_.L_43be79:                                  ; preds = %block_43bd3b, %block_.L_43be74
  %773 = phi i64 [ %386, %block_.L_43be74 ], [ %351, %block_43bd3b ]
  %774 = phi i64 [ %772, %block_.L_43be74 ], [ %381, %block_43bd3b ]
  %775 = add i64 %774, 5
  store i64 %775, i64* %3, align 8
  br label %block_.L_43be7e

block_.L_43be7e:                                  ; preds = %block_.L_43be79, %routine_idivl__ecx.exit
  %776 = phi i64 [ %773, %block_.L_43be79 ], [ %351, %routine_idivl__ecx.exit ]
  %777 = phi i64 [ %775, %block_.L_43be79 ], [ %366, %routine_idivl__ecx.exit ]
  %778 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*), align 8
  store i64 %778, i64* %.pre149, align 8
  %779 = add i64 %778, 20
  %780 = add i64 %777, 11
  store i64 %780, i64* %3, align 8
  %781 = inttoptr i64 %779 to i32*
  %782 = load i32, i32* %781, align 4
  %783 = zext i32 %782 to i64
  store i64 %783, i64* %RCX.i2041, align 8
  %784 = add i64 %776, -40
  %785 = add i64 %777, 15
  store i64 %785, i64* %3, align 8
  %786 = inttoptr i64 %784 to i64*
  %787 = load i64, i64* %786, align 8
  %788 = add i64 %787, 4
  %789 = add i64 %777, 18
  store i64 %789, i64* %3, align 8
  %790 = inttoptr i64 %788 to i32*
  store i32 %782, i32* %790, align 4
  %791 = load i64, i64* %3, align 8
  %792 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*), align 8
  store i64 %792, i64* %.pre149, align 8
  %793 = add i64 %792, 44
  %794 = add i64 %791, 11
  store i64 %794, i64* %3, align 8
  %795 = inttoptr i64 %793 to i32*
  %796 = load i32, i32* %795, align 4
  %797 = zext i32 %796 to i64
  store i64 %797, i64* %RCX.i2041, align 8
  %798 = load i64, i64* %RBP.i, align 8
  %799 = add i64 %798, -40
  %800 = add i64 %791, 15
  store i64 %800, i64* %3, align 8
  %801 = inttoptr i64 %799 to i64*
  %802 = load i64, i64* %801, align 8
  %803 = add i64 %802, 16
  %804 = add i64 %791, 18
  store i64 %804, i64* %3, align 8
  %805 = inttoptr i64 %803 to i32*
  store i32 %796, i32* %805, align 4
  %806 = load i64, i64* %3, align 8
  %807 = load i64, i64* bitcast (%G_0x6cb8f8_type* @G_0x6cb8f8 to i64*), align 8
  store i64 %807, i64* %.pre149, align 8
  %808 = add i64 %807, 3236
  %809 = add i64 %806, 15
  store i64 %809, i64* %3, align 8
  %810 = inttoptr i64 %808 to i32*
  %811 = load i32, i32* %810, align 4
  store i8 0, i8* %14, align 1
  %812 = and i32 %811, 255
  %813 = tail call i32 @llvm.ctpop.i32(i32 %812)
  %814 = trunc i32 %813 to i8
  %815 = and i8 %814, 1
  %816 = xor i8 %815, 1
  store i8 %816, i8* %21, align 1
  store i8 0, i8* %27, align 1
  %817 = icmp eq i32 %811, 0
  %818 = zext i1 %817 to i8
  store i8 %818, i8* %30, align 1
  %819 = lshr i32 %811, 31
  %820 = trunc i32 %819 to i8
  store i8 %820, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %.v163 = select i1 %817, i64 2349, i64 21
  %821 = add i64 %806, %.v163
  %822 = add i64 %821, 8
  store i64 %822, i64* %3, align 8
  %823 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*), align 8
  store i64 %823, i64* %.pre149, align 8
  br i1 %817, label %block_.L_43c7cf, label %block_43beb7

block_43beb7:                                     ; preds = %block_.L_43be7e
  %824 = add i64 %823, 12
  %825 = add i64 %821, 11
  store i64 %825, i64* %3, align 8
  %826 = inttoptr i64 %824 to i32*
  %827 = load i32, i32* %826, align 4
  %828 = zext i32 %827 to i64
  store i64 %828, i64* %RDI.i2007, align 8
  %829 = add i64 %821, -91159
  %830 = add i64 %821, 16
  %831 = load i64, i64* %6, align 8
  %832 = add i64 %831, -8
  %833 = inttoptr i64 %832 to i64*
  store i64 %830, i64* %833, align 8
  store i64 %832, i64* %6, align 8
  store i64 %829, i64* %3, align 8
  %call2_43bec2 = tail call %struct.Memory* @sub_425aa0.FmoGetPreviousMBNr(%struct.State* nonnull %0, i64 %829, %struct.Memory* %call2_43bd2c)
  %834 = load i64, i64* %RBP.i, align 8
  %835 = add i64 %834, -84
  %836 = load i32, i32* %199, align 4
  %837 = load i64, i64* %3, align 8
  %838 = add i64 %837, 3
  store i64 %838, i64* %3, align 8
  %839 = inttoptr i64 %835 to i32*
  store i32 %836, i32* %839, align 4
  %840 = load i64, i64* %RBP.i, align 8
  %841 = add i64 %840, -84
  %842 = load i64, i64* %3, align 8
  %843 = add i64 %842, 4
  store i64 %843, i64* %3, align 8
  %844 = inttoptr i64 %841 to i32*
  %845 = load i32, i32* %844, align 4
  %846 = add i32 %845, 1
  %847 = icmp ne i32 %845, -1
  %848 = zext i1 %847 to i8
  store i8 %848, i8* %14, align 1
  %849 = and i32 %846, 255
  %850 = tail call i32 @llvm.ctpop.i32(i32 %849)
  %851 = trunc i32 %850 to i8
  %852 = and i8 %851, 1
  %853 = xor i8 %852, 1
  store i8 %853, i8* %21, align 1
  %854 = xor i32 %845, 16
  %855 = xor i32 %854, %846
  %856 = lshr i32 %855, 4
  %857 = trunc i32 %856 to i8
  %858 = and i8 %857, 1
  store i8 %858, i8* %27, align 1
  %859 = icmp eq i32 %846, 0
  %860 = zext i1 %859 to i8
  store i8 %860, i8* %30, align 1
  %861 = lshr i32 %846, 31
  %862 = trunc i32 %861 to i8
  store i8 %862, i8* %33, align 1
  %863 = lshr i32 %845, 31
  %864 = xor i32 %863, 1
  %865 = xor i32 %861, %863
  %866 = add nuw nsw i32 %865, %864
  %867 = icmp eq i32 %866, 2
  %868 = zext i1 %867 to i8
  store i8 %868, i8* %39, align 1
  %869 = icmp ne i8 %862, 0
  %870 = xor i1 %869, %867
  %871 = or i1 %859, %870
  %.v164 = select i1 %871, i64 99, i64 10
  %872 = add i64 %842, %.v164
  store i64 %872, i64* %3, align 8
  br i1 %871, label %block_.L_43bf2d, label %block_43bed4

block_43bed4:                                     ; preds = %block_43beb7
  %873 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*), align 8
  store i64 %873, i64* %.pre149, align 8
  %874 = add i64 %873, 14168
  %875 = add i64 %872, 15
  store i64 %875, i64* %3, align 8
  %876 = inttoptr i64 %874 to i64*
  %877 = load i64, i64* %876, align 8
  store i64 %877, i64* %.pre149, align 8
  %878 = add i64 %872, 19
  store i64 %878, i64* %3, align 8
  %879 = load i32, i32* %844, align 4
  %880 = sext i32 %879 to i64
  %881 = mul nsw i64 %880, 632
  store i64 %881, i64* %RCX.i2041, align 8
  %882 = lshr i64 %881, 63
  %883 = add i64 %881, %877
  store i64 %883, i64* %.pre149, align 8
  %884 = icmp ult i64 %883, %877
  %885 = icmp ult i64 %883, %881
  %886 = or i1 %884, %885
  %887 = zext i1 %886 to i8
  store i8 %887, i8* %14, align 1
  %888 = trunc i64 %883 to i32
  %889 = and i32 %888, 255
  %890 = tail call i32 @llvm.ctpop.i32(i32 %889)
  %891 = trunc i32 %890 to i8
  %892 = and i8 %891, 1
  %893 = xor i8 %892, 1
  store i8 %893, i8* %21, align 1
  %894 = xor i64 %881, %877
  %895 = xor i64 %894, %883
  %896 = lshr i64 %895, 4
  %897 = trunc i64 %896 to i8
  %898 = and i8 %897, 1
  store i8 %898, i8* %27, align 1
  %899 = icmp eq i64 %883, 0
  %900 = zext i1 %899 to i8
  store i8 %900, i8* %30, align 1
  %901 = lshr i64 %883, 63
  %902 = trunc i64 %901 to i8
  store i8 %902, i8* %33, align 1
  %903 = lshr i64 %877, 63
  %904 = xor i64 %901, %903
  %905 = xor i64 %901, %882
  %906 = add nuw nsw i64 %904, %905
  %907 = icmp eq i64 %906, 2
  %908 = zext i1 %907 to i8
  store i8 %908, i8* %39, align 1
  %909 = add i64 %883, 12
  %910 = add i64 %872, 32
  store i64 %910, i64* %3, align 8
  %911 = inttoptr i64 %909 to i32*
  %912 = load i32, i32* %911, align 4
  %913 = zext i32 %912 to i64
  store i64 %913, i64* %RDX.i2018, align 8
  %914 = add i64 %840, -40
  %915 = add i64 %872, 36
  store i64 %915, i64* %3, align 8
  %916 = inttoptr i64 %914 to i64*
  %917 = load i64, i64* %916, align 8
  %918 = add i64 %917, 592
  %919 = add i64 %872, 42
  store i64 %919, i64* %3, align 8
  %920 = inttoptr i64 %918 to i32*
  store i32 %912, i32* %920, align 4
  %921 = load i64, i64* %3, align 8
  %922 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*), align 8
  store i64 %922, i64* %.pre149, align 8
  %923 = add i64 %922, 14168
  %924 = add i64 %921, 15
  store i64 %924, i64* %3, align 8
  %925 = inttoptr i64 %923 to i64*
  %926 = load i64, i64* %925, align 8
  store i64 %926, i64* %.pre149, align 8
  %927 = load i64, i64* %RBP.i, align 8
  %928 = add i64 %927, -84
  %929 = add i64 %921, 19
  store i64 %929, i64* %3, align 8
  %930 = inttoptr i64 %928 to i32*
  %931 = load i32, i32* %930, align 4
  %932 = sext i32 %931 to i64
  %933 = mul nsw i64 %932, 632
  store i64 %933, i64* %RCX.i2041, align 8
  %934 = lshr i64 %933, 63
  %935 = add i64 %933, %926
  store i64 %935, i64* %.pre149, align 8
  %936 = icmp ult i64 %935, %926
  %937 = icmp ult i64 %935, %933
  %938 = or i1 %936, %937
  %939 = zext i1 %938 to i8
  store i8 %939, i8* %14, align 1
  %940 = trunc i64 %935 to i32
  %941 = and i32 %940, 255
  %942 = tail call i32 @llvm.ctpop.i32(i32 %941)
  %943 = trunc i32 %942 to i8
  %944 = and i8 %943, 1
  %945 = xor i8 %944, 1
  store i8 %945, i8* %21, align 1
  %946 = xor i64 %933, %926
  %947 = xor i64 %946, %935
  %948 = lshr i64 %947, 4
  %949 = trunc i64 %948 to i8
  %950 = and i8 %949, 1
  store i8 %950, i8* %27, align 1
  %951 = icmp eq i64 %935, 0
  %952 = zext i1 %951 to i8
  store i8 %952, i8* %30, align 1
  %953 = lshr i64 %935, 63
  %954 = trunc i64 %953 to i8
  store i8 %954, i8* %33, align 1
  %955 = lshr i64 %926, 63
  %956 = xor i64 %953, %955
  %957 = xor i64 %953, %934
  %958 = add nuw nsw i64 %956, %957
  %959 = icmp eq i64 %958, 2
  %960 = zext i1 %959 to i8
  store i8 %960, i8* %39, align 1
  %961 = add i64 %935, 8
  %962 = add i64 %921, 32
  store i64 %962, i64* %3, align 8
  %963 = inttoptr i64 %961 to i32*
  %964 = load i32, i32* %963, align 4
  %965 = zext i32 %964 to i64
  store i64 %965, i64* %RDX.i2018, align 8
  %966 = add i64 %927, -40
  %967 = add i64 %921, 36
  store i64 %967, i64* %3, align 8
  %968 = inttoptr i64 %966 to i64*
  %969 = load i64, i64* %968, align 8
  store i64 %969, i64* %.pre149, align 8
  %970 = add i64 %969, 596
  %971 = add i64 %921, 42
  store i64 %971, i64* %3, align 8
  %972 = inttoptr i64 %970 to i32*
  store i32 %964, i32* %972, align 4
  %973 = load i64, i64* %3, align 8
  %974 = add i64 %973, 36
  store i64 %974, i64* %3, align 8
  br label %block_.L_43bf4c

block_.L_43bf2d:                                  ; preds = %block_43beb7
  %975 = add i64 %840, -48
  %976 = add i64 %872, 4
  store i64 %976, i64* %3, align 8
  %977 = inttoptr i64 %975 to i64*
  %978 = load i64, i64* %977, align 8
  store i64 %978, i64* %.pre149, align 8
  %979 = add i64 %978, 4
  %980 = add i64 %872, 7
  store i64 %980, i64* %3, align 8
  %981 = inttoptr i64 %979 to i32*
  %982 = load i32, i32* %981, align 4
  %983 = zext i32 %982 to i64
  store i64 %983, i64* %RCX.i2041, align 8
  %984 = add i64 %840, -40
  %985 = add i64 %872, 11
  store i64 %985, i64* %3, align 8
  %986 = inttoptr i64 %984 to i64*
  %987 = load i64, i64* %986, align 8
  store i64 %987, i64* %.pre149, align 8
  %988 = add i64 %987, 592
  %989 = add i64 %872, 17
  store i64 %989, i64* %3, align 8
  %990 = inttoptr i64 %988 to i32*
  store i32 %982, i32* %990, align 4
  %991 = load i64, i64* %RBP.i, align 8
  %992 = add i64 %991, -40
  %993 = load i64, i64* %3, align 8
  %994 = add i64 %993, 4
  store i64 %994, i64* %3, align 8
  %995 = inttoptr i64 %992 to i64*
  %996 = load i64, i64* %995, align 8
  store i64 %996, i64* %.pre149, align 8
  %997 = add i64 %996, 596
  %998 = add i64 %993, 14
  store i64 %998, i64* %3, align 8
  %999 = inttoptr i64 %997 to i32*
  store i32 0, i32* %999, align 4
  %.pre113 = load i64, i64* %3, align 8
  br label %block_.L_43bf4c

block_.L_43bf4c:                                  ; preds = %block_.L_43bf2d, %block_43bed4
  %1000 = phi i64 [ %.pre113, %block_.L_43bf2d ], [ %974, %block_43bed4 ]
  %1001 = load i64, i64* bitcast (%G_0x6cb8f8_type* @G_0x6cb8f8 to i64*), align 8
  store i64 %1001, i64* %.pre149, align 8
  %1002 = add i64 %1001, 3248
  %1003 = add i64 %1000, 14
  store i64 %1003, i64* %3, align 8
  %1004 = inttoptr i64 %1002 to i32*
  %1005 = load i32, i32* %1004, align 4
  %1006 = zext i32 %1005 to i64
  store i64 %1006, i64* %RCX.i2041, align 8
  %1007 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*), align 8
  store i64 %1007, i64* %.pre149, align 8
  %1008 = add i64 %1007, 72608
  %1009 = add i64 %1000, 28
  store i64 %1009, i64* %3, align 8
  %1010 = inttoptr i64 %1008 to i32*
  %1011 = load i32, i32* %1010, align 4
  %1012 = sub i32 %1005, %1011
  %1013 = icmp ult i32 %1005, %1011
  %1014 = zext i1 %1013 to i8
  store i8 %1014, i8* %14, align 1
  %1015 = and i32 %1012, 255
  %1016 = tail call i32 @llvm.ctpop.i32(i32 %1015)
  %1017 = trunc i32 %1016 to i8
  %1018 = and i8 %1017, 1
  %1019 = xor i8 %1018, 1
  store i8 %1019, i8* %21, align 1
  %1020 = xor i32 %1011, %1005
  %1021 = xor i32 %1020, %1012
  %1022 = lshr i32 %1021, 4
  %1023 = trunc i32 %1022 to i8
  %1024 = and i8 %1023, 1
  store i8 %1024, i8* %27, align 1
  %1025 = icmp eq i32 %1012, 0
  %1026 = zext i1 %1025 to i8
  store i8 %1026, i8* %30, align 1
  %1027 = lshr i32 %1012, 31
  %1028 = trunc i32 %1027 to i8
  store i8 %1028, i8* %33, align 1
  %1029 = lshr i32 %1005, 31
  %1030 = lshr i32 %1011, 31
  %1031 = xor i32 %1030, %1029
  %1032 = xor i32 %1027, %1029
  %1033 = add nuw nsw i32 %1032, %1031
  %1034 = icmp eq i32 %1033, 2
  %1035 = zext i1 %1034 to i8
  store i8 %1035, i8* %39, align 1
  %.v165 = select i1 %1025, i64 34, i64 68
  %1036 = add i64 %1000, %.v165
  store i64 %1036, i64* %3, align 8
  br i1 %1025, label %block_43bf6e, label %block_.L_43bf90

block_43bf6e:                                     ; preds = %block_.L_43bf4c
  %1037 = load i64, i64* %RBP.i, align 8
  %1038 = add i64 %1037, -40
  %1039 = add i64 %1036, 4
  store i64 %1039, i64* %3, align 8
  %1040 = inttoptr i64 %1038 to i64*
  %1041 = load i64, i64* %1040, align 8
  %1042 = add i64 %1041, 8
  %1043 = add i64 %1036, 11
  store i64 %1043, i64* %3, align 8
  %1044 = inttoptr i64 %1042 to i32*
  store i32 0, i32* %1044, align 4
  %1045 = load i64, i64* %3, align 8
  %1046 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*), align 8
  store i64 %1046, i64* %.pre149, align 8
  %1047 = add i64 %1046, 40
  %1048 = add i64 %1045, 11
  store i64 %1048, i64* %3, align 8
  %1049 = inttoptr i64 %1047 to i32*
  %1050 = load i32, i32* %1049, align 4
  %1051 = zext i32 %1050 to i64
  store i64 %1051, i64* %RCX.i2041, align 8
  %1052 = load i64, i64* %RBP.i, align 8
  %1053 = add i64 %1052, -40
  %1054 = add i64 %1045, 15
  store i64 %1054, i64* %3, align 8
  %1055 = inttoptr i64 %1053 to i64*
  %1056 = load i64, i64* %1055, align 8
  store i64 %1056, i64* %.pre149, align 8
  %1057 = add i64 %1056, 12
  %1058 = add i64 %1045, 18
  store i64 %1058, i64* %3, align 8
  %1059 = inttoptr i64 %1057 to i32*
  store i32 %1050, i32* %1059, align 4
  %1060 = load i64, i64* %3, align 8
  %1061 = add i64 %1060, 2111
  br label %block_.L_43c7ca

block_.L_43bf90:                                  ; preds = %block_.L_43bf4c
  store i64 %1007, i64* %.pre149, align 8
  %1062 = add i64 %1007, 24
  %1063 = add i64 %1036, 12
  store i64 %1063, i64* %3, align 8
  %1064 = inttoptr i64 %1062 to i32*
  %1065 = load i32, i32* %1064, align 4
  %1066 = add i32 %1065, -2
  %1067 = icmp ult i32 %1065, 2
  %1068 = zext i1 %1067 to i8
  store i8 %1068, i8* %14, align 1
  %1069 = and i32 %1066, 255
  %1070 = tail call i32 @llvm.ctpop.i32(i32 %1069)
  %1071 = trunc i32 %1070 to i8
  %1072 = and i8 %1071, 1
  %1073 = xor i8 %1072, 1
  store i8 %1073, i8* %21, align 1
  %1074 = xor i32 %1066, %1065
  %1075 = lshr i32 %1074, 4
  %1076 = trunc i32 %1075 to i8
  %1077 = and i8 %1076, 1
  store i8 %1077, i8* %27, align 1
  %1078 = icmp eq i32 %1066, 0
  %1079 = zext i1 %1078 to i8
  store i8 %1079, i8* %30, align 1
  %1080 = lshr i32 %1066, 31
  %1081 = trunc i32 %1080 to i8
  store i8 %1081, i8* %33, align 1
  %1082 = lshr i32 %1065, 31
  %1083 = xor i32 %1080, %1082
  %1084 = add nuw nsw i32 %1083, %1082
  %1085 = icmp eq i32 %1084, 2
  %1086 = zext i1 %1085 to i8
  store i8 %1086, i8* %39, align 1
  %.v166 = select i1 %1078, i64 36, i64 18
  %1087 = add i64 %1036, %.v166
  store i64 %1087, i64* %3, align 8
  br i1 %1078, label %block_.L_43bfb4, label %block_43bfa2

block_43bfa2:                                     ; preds = %block_.L_43bf90
  store i64 %1007, i64* %.pre149, align 8
  %1088 = add i64 %1087, 12
  store i64 %1088, i64* %3, align 8
  %1089 = load i32, i32* %1064, align 4
  %1090 = add i32 %1089, -1
  %1091 = icmp eq i32 %1089, 0
  %1092 = zext i1 %1091 to i8
  store i8 %1092, i8* %14, align 1
  %1093 = and i32 %1090, 255
  %1094 = tail call i32 @llvm.ctpop.i32(i32 %1093)
  %1095 = trunc i32 %1094 to i8
  %1096 = and i8 %1095, 1
  %1097 = xor i8 %1096, 1
  store i8 %1097, i8* %21, align 1
  %1098 = xor i32 %1090, %1089
  %1099 = lshr i32 %1098, 4
  %1100 = trunc i32 %1099 to i8
  %1101 = and i8 %1100, 1
  store i8 %1101, i8* %27, align 1
  %1102 = icmp eq i32 %1090, 0
  %1103 = zext i1 %1102 to i8
  store i8 %1103, i8* %30, align 1
  %1104 = lshr i32 %1090, 31
  %1105 = trunc i32 %1104 to i8
  store i8 %1105, i8* %33, align 1
  %1106 = lshr i32 %1089, 31
  %1107 = xor i32 %1104, %1106
  %1108 = add nuw nsw i32 %1107, %1106
  %1109 = icmp eq i32 %1108, 2
  %1110 = zext i1 %1109 to i8
  store i8 %1110, i8* %39, align 1
  %.v167 = select i1 %1102, i64 18, i64 52
  %1111 = add i64 %1087, %.v167
  store i64 %1111, i64* %3, align 8
  br i1 %1102, label %block_.L_43bfb4, label %block_.L_43bfd6

block_.L_43bfb4:                                  ; preds = %block_43bfa2, %block_.L_43bf90
  %1112 = phi i64 [ %1111, %block_43bfa2 ], [ %1087, %block_.L_43bf90 ]
  %1113 = load i64, i64* %RBP.i, align 8
  %1114 = add i64 %1113, -40
  %1115 = add i64 %1112, 4
  store i64 %1115, i64* %3, align 8
  %1116 = inttoptr i64 %1114 to i64*
  %1117 = load i64, i64* %1116, align 8
  %1118 = add i64 %1117, 8
  %1119 = add i64 %1112, 11
  store i64 %1119, i64* %3, align 8
  %1120 = inttoptr i64 %1118 to i32*
  store i32 0, i32* %1120, align 4
  %1121 = load i64, i64* %3, align 8
  %1122 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*), align 8
  store i64 %1122, i64* %.pre149, align 8
  %1123 = add i64 %1122, 40
  %1124 = add i64 %1121, 11
  store i64 %1124, i64* %3, align 8
  %1125 = inttoptr i64 %1123 to i32*
  %1126 = load i32, i32* %1125, align 4
  %1127 = zext i32 %1126 to i64
  store i64 %1127, i64* %RCX.i2041, align 8
  %1128 = load i64, i64* %RBP.i, align 8
  %1129 = add i64 %1128, -40
  %1130 = add i64 %1121, 15
  store i64 %1130, i64* %3, align 8
  %1131 = inttoptr i64 %1129 to i64*
  %1132 = load i64, i64* %1131, align 8
  store i64 %1132, i64* %.pre149, align 8
  %1133 = add i64 %1132, 12
  %1134 = add i64 %1121, 18
  store i64 %1134, i64* %3, align 8
  %1135 = inttoptr i64 %1133 to i32*
  store i32 %1126, i32* %1135, align 4
  %1136 = load i64, i64* %3, align 8
  %1137 = add i64 %1136, 2036
  br label %block_.L_43c7c5

block_.L_43bfd6:                                  ; preds = %block_43bfa2
  store i64 %1007, i64* %.pre149, align 8
  %1138 = add i64 %1111, 12
  store i64 %1138, i64* %3, align 8
  %1139 = load i32, i32* %1064, align 4
  store i8 0, i8* %14, align 1
  %1140 = and i32 %1139, 255
  %1141 = tail call i32 @llvm.ctpop.i32(i32 %1140)
  %1142 = trunc i32 %1141 to i8
  %1143 = and i8 %1142, 1
  %1144 = xor i8 %1143, 1
  store i8 %1144, i8* %21, align 1
  store i8 0, i8* %27, align 1
  %1145 = icmp eq i32 %1139, 0
  %1146 = zext i1 %1145 to i8
  store i8 %1146, i8* %30, align 1
  %1147 = lshr i32 %1139, 31
  %1148 = trunc i32 %1147 to i8
  store i8 %1148, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %.v168 = select i1 %1145, i64 18, i64 2026
  %1149 = add i64 %1111, %.v168
  store i64 %1149, i64* %3, align 8
  br i1 %1145, label %block_43bfe8, label %block_.L_43c7c0

block_43bfe8:                                     ; preds = %block_.L_43bfd6
  store i64 %1007, i64* %.pre149, align 8
  %1150 = add i64 %1007, 72624
  %1151 = add i64 %1149, 15
  store i64 %1151, i64* %3, align 8
  %1152 = inttoptr i64 %1150 to i32*
  %1153 = load i32, i32* %1152, align 4
  store i8 0, i8* %14, align 1
  %1154 = and i32 %1153, 255
  %1155 = tail call i32 @llvm.ctpop.i32(i32 %1154)
  %1156 = trunc i32 %1155 to i8
  %1157 = and i8 %1156, 1
  %1158 = xor i8 %1157, 1
  store i8 %1158, i8* %21, align 1
  store i8 0, i8* %27, align 1
  %1159 = icmp eq i32 %1153, 0
  %1160 = zext i1 %1159 to i8
  store i8 %1160, i8* %30, align 1
  %1161 = lshr i32 %1153, 31
  %1162 = trunc i32 %1161 to i8
  store i8 %1162, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %.v179 = select i1 %1159, i64 21, i64 585
  %1163 = add i64 %1149, %.v179
  store i64 %1163, i64* %3, align 8
  br i1 %1159, label %block_43bffd, label %block_.L_43c231

block_43bffd:                                     ; preds = %block_43bfe8
  %1164 = load i64, i64* %RBP.i, align 8
  %1165 = add i64 %1164, -40
  %1166 = add i64 %1163, 4
  store i64 %1166, i64* %3, align 8
  %1167 = inttoptr i64 %1165 to i64*
  %1168 = load i64, i64* %1167, align 8
  store i64 %1168, i64* %.pre149, align 8
  %1169 = add i64 %1168, 532
  %1170 = add i64 %1163, 11
  store i64 %1170, i64* %3, align 8
  %1171 = inttoptr i64 %1169 to i32*
  %1172 = load i32, i32* %1171, align 4
  store i8 0, i8* %14, align 1
  %1173 = and i32 %1172, 255
  %1174 = tail call i32 @llvm.ctpop.i32(i32 %1173)
  %1175 = trunc i32 %1174 to i8
  %1176 = and i8 %1175, 1
  %1177 = xor i8 %1176, 1
  store i8 %1177, i8* %21, align 1
  store i8 0, i8* %27, align 1
  %1178 = icmp eq i32 %1172, 0
  %1179 = zext i1 %1178 to i8
  store i8 %1179, i8* %30, align 1
  %1180 = lshr i32 %1172, 31
  %1181 = trunc i32 %1180 to i8
  store i8 %1181, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %.v206 = select i1 %1178, i64 17, i64 460
  %1182 = add i64 %1163, %.v206
  %1183 = add i64 %1182, 8
  store i64 %1183, i64* %3, align 8
  store i64 %1007, i64* %.pre149, align 8
  br i1 %1178, label %block_43c00e, label %block_.L_43c1c9

block_43c00e:                                     ; preds = %block_43bffd
  %1184 = add i64 %1007, 12
  %1185 = add i64 %1182, 12
  store i64 %1185, i64* %3, align 8
  %1186 = inttoptr i64 %1184 to i32*
  %1187 = load i32, i32* %1186, align 4
  store i8 0, i8* %14, align 1
  %1188 = and i32 %1187, 255
  %1189 = tail call i32 @llvm.ctpop.i32(i32 %1188)
  %1190 = trunc i32 %1189 to i8
  %1191 = and i8 %1190, 1
  %1192 = xor i8 %1191, 1
  store i8 %1192, i8* %21, align 1
  store i8 0, i8* %27, align 1
  %1193 = icmp eq i32 %1187, 0
  %1194 = zext i1 %1193 to i8
  store i8 %1194, i8* %30, align 1
  %1195 = lshr i32 %1187, 31
  %1196 = trunc i32 %1195 to i8
  store i8 %1196, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %.v208 = select i1 %1193, i64 18, i64 94
  %1197 = add i64 %1182, %.v208
  store i64 %1197, i64* %3, align 8
  br i1 %1193, label %block_43c020, label %block_.L_43c06c

block_43c020:                                     ; preds = %block_43c00e
  %1198 = add i64 %1197, 4
  store i64 %1198, i64* %3, align 8
  %1199 = load i64, i64* %1167, align 8
  %1200 = add i64 %1199, 8
  %1201 = add i64 %1197, 11
  store i64 %1201, i64* %3, align 8
  %1202 = inttoptr i64 %1200 to i32*
  store i32 0, i32* %1202, align 4
  %1203 = load i64, i64* %3, align 8
  %1204 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*), align 8
  store i64 %1204, i64* %.pre149, align 8
  %1205 = add i64 %1204, 40
  %1206 = add i64 %1203, 11
  store i64 %1206, i64* %3, align 8
  %1207 = inttoptr i64 %1205 to i32*
  %1208 = load i32, i32* %1207, align 4
  %1209 = zext i32 %1208 to i64
  store i64 %1209, i64* %RCX.i2041, align 8
  %1210 = load i64, i64* %RBP.i, align 8
  %1211 = add i64 %1210, -40
  %1212 = add i64 %1203, 15
  store i64 %1212, i64* %3, align 8
  %1213 = inttoptr i64 %1211 to i64*
  %1214 = load i64, i64* %1213, align 8
  store i64 %1214, i64* %.pre149, align 8
  %1215 = add i64 %1214, 12
  %1216 = add i64 %1203, 18
  store i64 %1216, i64* %3, align 8
  %1217 = inttoptr i64 %1215 to i32*
  store i32 %1208, i32* %1217, align 4
  %1218 = load i64, i64* %RBP.i, align 8
  %1219 = add i64 %1218, -40
  %1220 = load i64, i64* %3, align 8
  %1221 = add i64 %1220, 4
  store i64 %1221, i64* %3, align 8
  %1222 = inttoptr i64 %1219 to i64*
  %1223 = load i64, i64* %1222, align 8
  store i64 %1223, i64* %.pre149, align 8
  %1224 = add i64 %1223, 8
  %1225 = add i64 %1220, 7
  store i64 %1225, i64* %3, align 8
  %1226 = inttoptr i64 %1224 to i32*
  %1227 = load i32, i32* %1226, align 4
  %1228 = zext i32 %1227 to i64
  store i64 %1228, i64* %RCX.i2041, align 8
  store i32 %1227, i32* bitcast (%G_0x6cd4e4_type* @G_0x6cd4e4 to i32*), align 8
  store i32 %1227, i32* bitcast (%G_0x70e8d0_type* @G_0x70e8d0 to i32*), align 8
  %1229 = add i64 %1220, 25
  store i64 %1229, i64* %3, align 8
  %1230 = load i64, i64* %1222, align 8
  store i64 %1230, i64* %.pre149, align 8
  %1231 = add i64 %1230, 12
  %1232 = add i64 %1220, 28
  store i64 %1232, i64* %3, align 8
  %1233 = inttoptr i64 %1231 to i32*
  %1234 = load i32, i32* %1233, align 4
  %1235 = zext i32 %1234 to i64
  store i64 %1235, i64* %RCX.i2041, align 8
  store i32 %1234, i32* bitcast (%G_0x724740_type* @G_0x724740 to i32*), align 8
  %1236 = add i64 %1220, 42
  store i64 %1236, i64* %3, align 8
  store i32 %1234, i32* bitcast (%G_0x7242f0_type* @G_0x7242f0 to i32*), align 8
  %1237 = add i64 %1220, 391
  br label %block_.L_43c1c4

block_.L_43c06c:                                  ; preds = %block_43c00e
  store i64 %1001, i64* %.pre149, align 8
  %1238 = add i64 %1001, 2884
  %1239 = add i64 %1197, 15
  store i64 %1239, i64* %3, align 8
  %1240 = inttoptr i64 %1238 to i32*
  %1241 = load i32, i32* %1240, align 4
  store i8 0, i8* %14, align 1
  %1242 = and i32 %1241, 255
  %1243 = tail call i32 @llvm.ctpop.i32(i32 %1242)
  %1244 = trunc i32 %1243 to i8
  %1245 = and i8 %1244, 1
  %1246 = xor i8 %1245, 1
  store i8 %1246, i8* %21, align 1
  store i8 0, i8* %27, align 1
  %1247 = icmp eq i32 %1241, 0
  %1248 = zext i1 %1247 to i8
  store i8 %1248, i8* %30, align 1
  %1249 = lshr i32 %1241, 31
  %1250 = trunc i32 %1249 to i8
  store i8 %1250, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %.v209 = select i1 %1247, i64 42, i64 21
  %1251 = add i64 %1197, %.v209
  store i64 %1251, i64* %3, align 8
  br i1 %1247, label %block_.L_43c096, label %block_43c081

block_43c081:                                     ; preds = %block_.L_43c06c
  store i64 %1007, i64* %.pre149, align 8
  %1252 = add i64 %1007, 72628
  %1253 = add i64 %1251, 15
  store i64 %1253, i64* %3, align 8
  %1254 = inttoptr i64 %1252 to i32*
  %1255 = load i32, i32* %1254, align 4
  store i8 0, i8* %14, align 1
  %1256 = and i32 %1255, 255
  %1257 = tail call i32 @llvm.ctpop.i32(i32 %1256)
  %1258 = trunc i32 %1257 to i8
  %1259 = and i8 %1258, 1
  %1260 = xor i8 %1259, 1
  store i8 %1260, i8* %21, align 1
  store i8 0, i8* %27, align 1
  %1261 = icmp eq i32 %1255, 0
  %1262 = zext i1 %1261 to i8
  store i8 %1262, i8* %30, align 1
  %1263 = lshr i32 %1255, 31
  %1264 = trunc i32 %1263 to i8
  store i8 %1264, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %.v210 = select i1 %1261, i64 21, i64 289
  %1265 = add i64 %1251, %.v210
  store i64 %1265, i64* %3, align 8
  br i1 %1261, label %block_.L_43c096, label %block_.L_43c1a2

block_.L_43c096:                                  ; preds = %block_43c081, %block_.L_43c06c
  %1266 = phi i64 [ %1265, %block_43c081 ], [ %1251, %block_.L_43c06c ]
  store i64 %1007, i64* %.pre149, align 8
  %1267 = add i64 %1007, 14168
  %1268 = add i64 %1266, 15
  store i64 %1268, i64* %3, align 8
  %1269 = inttoptr i64 %1267 to i64*
  %1270 = load i64, i64* %1269, align 8
  store i64 %1270, i64* %.pre149, align 8
  store i64 %1007, i64* %RCX.i2041, align 8
  %1271 = add i64 %1266, 26
  store i64 %1271, i64* %3, align 8
  %1272 = load i32, i32* %1186, align 4
  %1273 = add i32 %1272, -1
  %1274 = zext i32 %1273 to i64
  store i64 %1274, i64* %RDX.i2018, align 8
  %1275 = sext i32 %1273 to i64
  %1276 = mul nsw i64 %1275, 632
  store i64 %1276, i64* %RCX.i2041, align 8
  %1277 = lshr i64 %1276, 63
  %1278 = add i64 %1276, %1270
  store i64 %1278, i64* %.pre149, align 8
  %1279 = icmp ult i64 %1278, %1270
  %1280 = icmp ult i64 %1278, %1276
  %1281 = or i1 %1279, %1280
  %1282 = zext i1 %1281 to i8
  store i8 %1282, i8* %14, align 1
  %1283 = trunc i64 %1278 to i32
  %1284 = and i32 %1283, 255
  %1285 = tail call i32 @llvm.ctpop.i32(i32 %1284)
  %1286 = trunc i32 %1285 to i8
  %1287 = and i8 %1286, 1
  %1288 = xor i8 %1287, 1
  store i8 %1288, i8* %21, align 1
  %1289 = xor i64 %1276, %1270
  %1290 = xor i64 %1289, %1278
  %1291 = lshr i64 %1290, 4
  %1292 = trunc i64 %1291 to i8
  %1293 = and i8 %1292, 1
  store i8 %1293, i8* %27, align 1
  %1294 = icmp eq i64 %1278, 0
  %1295 = zext i1 %1294 to i8
  store i8 %1295, i8* %30, align 1
  %1296 = lshr i64 %1278, 63
  %1297 = trunc i64 %1296 to i8
  store i8 %1297, i8* %33, align 1
  %1298 = lshr i64 %1270, 63
  %1299 = xor i64 %1296, %1298
  %1300 = xor i64 %1296, %1277
  %1301 = add nuw nsw i64 %1299, %1300
  %1302 = icmp eq i64 %1301, 2
  %1303 = zext i1 %1302 to i8
  store i8 %1303, i8* %39, align 1
  %1304 = add i64 %1278, 600
  %1305 = add i64 %1266, 49
  store i64 %1305, i64* %3, align 8
  %1306 = inttoptr i64 %1304 to i32*
  %1307 = load i32, i32* %1306, align 4
  %1308 = add i32 %1307, -1
  %1309 = icmp eq i32 %1307, 0
  %1310 = zext i1 %1309 to i8
  store i8 %1310, i8* %14, align 1
  %1311 = and i32 %1308, 255
  %1312 = tail call i32 @llvm.ctpop.i32(i32 %1311)
  %1313 = trunc i32 %1312 to i8
  %1314 = and i8 %1313, 1
  %1315 = xor i8 %1314, 1
  store i8 %1315, i8* %21, align 1
  %1316 = xor i32 %1308, %1307
  %1317 = lshr i32 %1316, 4
  %1318 = trunc i32 %1317 to i8
  %1319 = and i8 %1318, 1
  store i8 %1319, i8* %27, align 1
  %1320 = icmp eq i32 %1308, 0
  %1321 = zext i1 %1320 to i8
  store i8 %1321, i8* %30, align 1
  %1322 = lshr i32 %1308, 31
  %1323 = trunc i32 %1322 to i8
  store i8 %1323, i8* %33, align 1
  %1324 = lshr i32 %1307, 31
  %1325 = xor i32 %1322, %1324
  %1326 = add nuw nsw i32 %1325, %1324
  %1327 = icmp eq i32 %1326, 2
  %1328 = zext i1 %1327 to i8
  store i8 %1328, i8* %39, align 1
  %.v211 = select i1 %1320, i64 55, i64 89
  %1329 = add i64 %1266, %.v211
  store i64 %1329, i64* %3, align 8
  br i1 %1320, label %block_43c0cd, label %block_.L_43c0ef

block_43c0cd:                                     ; preds = %block_.L_43c096
  %1330 = load i64, i64* %RBP.i, align 8
  %1331 = add i64 %1330, -40
  %1332 = add i64 %1329, 4
  store i64 %1332, i64* %3, align 8
  %1333 = inttoptr i64 %1331 to i64*
  %1334 = load i64, i64* %1333, align 8
  %1335 = add i64 %1334, 8
  %1336 = add i64 %1329, 11
  store i64 %1336, i64* %3, align 8
  %1337 = inttoptr i64 %1335 to i32*
  store i32 0, i32* %1337, align 4
  %1338 = load i64, i64* %3, align 8
  %1339 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*), align 8
  store i64 %1339, i64* %.pre149, align 8
  %1340 = add i64 %1339, 40
  %1341 = add i64 %1338, 11
  store i64 %1341, i64* %3, align 8
  %1342 = inttoptr i64 %1340 to i32*
  %1343 = load i32, i32* %1342, align 4
  %1344 = zext i32 %1343 to i64
  store i64 %1344, i64* %RCX.i2041, align 8
  %1345 = load i64, i64* %RBP.i, align 8
  %1346 = add i64 %1345, -40
  %1347 = add i64 %1338, 15
  store i64 %1347, i64* %3, align 8
  %1348 = inttoptr i64 %1346 to i64*
  %1349 = load i64, i64* %1348, align 8
  store i64 %1349, i64* %.pre149, align 8
  %1350 = add i64 %1349, 12
  %1351 = add i64 %1338, 18
  store i64 %1351, i64* %3, align 8
  %1352 = inttoptr i64 %1350 to i32*
  store i32 %1343, i32* %1352, align 4
  %1353 = load i64, i64* %3, align 8
  %1354 = add i64 %1353, 137
  store i64 %1354, i64* %3, align 8
  br label %block_.L_43c173

block_.L_43c0ef:                                  ; preds = %block_.L_43c096
  %1355 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*), align 8
  store i64 %1355, i64* %.pre149, align 8
  %1356 = add i64 %1355, 14168
  %1357 = add i64 %1329, 15
  store i64 %1357, i64* %3, align 8
  %1358 = inttoptr i64 %1356 to i64*
  %1359 = load i64, i64* %1358, align 8
  store i64 %1359, i64* %.pre149, align 8
  store i64 %1355, i64* %RCX.i2041, align 8
  %1360 = add i64 %1355, 12
  %1361 = add i64 %1329, 26
  store i64 %1361, i64* %3, align 8
  %1362 = inttoptr i64 %1360 to i32*
  %1363 = load i32, i32* %1362, align 4
  %1364 = add i32 %1363, -1
  %1365 = zext i32 %1364 to i64
  store i64 %1365, i64* %RDX.i2018, align 8
  %1366 = sext i32 %1364 to i64
  %1367 = mul nsw i64 %1366, 632
  store i64 %1367, i64* %RCX.i2041, align 8
  %1368 = lshr i64 %1367, 63
  %1369 = add i64 %1367, %1359
  store i64 %1369, i64* %.pre149, align 8
  %1370 = icmp ult i64 %1369, %1359
  %1371 = icmp ult i64 %1369, %1367
  %1372 = or i1 %1370, %1371
  %1373 = zext i1 %1372 to i8
  store i8 %1373, i8* %14, align 1
  %1374 = trunc i64 %1369 to i32
  %1375 = and i32 %1374, 255
  %1376 = tail call i32 @llvm.ctpop.i32(i32 %1375)
  %1377 = trunc i32 %1376 to i8
  %1378 = and i8 %1377, 1
  %1379 = xor i8 %1378, 1
  store i8 %1379, i8* %21, align 1
  %1380 = xor i64 %1367, %1359
  %1381 = xor i64 %1380, %1369
  %1382 = lshr i64 %1381, 4
  %1383 = trunc i64 %1382 to i8
  %1384 = and i8 %1383, 1
  store i8 %1384, i8* %27, align 1
  %1385 = icmp eq i64 %1369, 0
  %1386 = zext i1 %1385 to i8
  store i8 %1386, i8* %30, align 1
  %1387 = lshr i64 %1369, 63
  %1388 = trunc i64 %1387 to i8
  store i8 %1388, i8* %33, align 1
  %1389 = lshr i64 %1359, 63
  %1390 = xor i64 %1387, %1389
  %1391 = xor i64 %1387, %1368
  %1392 = add nuw nsw i64 %1390, %1391
  %1393 = icmp eq i64 %1392, 2
  %1394 = zext i1 %1393 to i8
  store i8 %1394, i8* %39, align 1
  %1395 = add i64 %1369, 592
  %1396 = add i64 %1329, 48
  store i64 %1396, i64* %3, align 8
  %1397 = inttoptr i64 %1395 to i32*
  %1398 = load i32, i32* %1397, align 4
  %1399 = zext i32 %1398 to i64
  store i64 %1399, i64* %RDX.i2018, align 8
  %1400 = load i64, i64* %RBP.i, align 8
  %1401 = add i64 %1400, -40
  %1402 = add i64 %1329, 52
  store i64 %1402, i64* %3, align 8
  %1403 = inttoptr i64 %1401 to i64*
  %1404 = load i64, i64* %1403, align 8
  store i64 %1404, i64* %.pre149, align 8
  %1405 = add i64 %1404, 12
  %1406 = add i64 %1329, 55
  store i64 %1406, i64* %3, align 8
  %1407 = inttoptr i64 %1405 to i32*
  store i32 %1398, i32* %1407, align 4
  %1408 = load i64, i64* %RBP.i, align 8
  %1409 = add i64 %1408, -40
  %1410 = load i64, i64* %3, align 8
  %1411 = add i64 %1410, 4
  store i64 %1411, i64* %3, align 8
  %1412 = inttoptr i64 %1409 to i64*
  %1413 = load i64, i64* %1412, align 8
  store i64 %1413, i64* %.pre149, align 8
  %1414 = add i64 %1413, 12
  %1415 = add i64 %1410, 7
  store i64 %1415, i64* %3, align 8
  %1416 = inttoptr i64 %1414 to i32*
  %1417 = load i32, i32* %1416, align 4
  %1418 = zext i32 %1417 to i64
  store i64 %1418, i64* %RDX.i2018, align 8
  %1419 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*), align 8
  store i64 %1419, i64* %.pre149, align 8
  %1420 = add i64 %1419, 14168
  %1421 = add i64 %1410, 22
  store i64 %1421, i64* %3, align 8
  %1422 = inttoptr i64 %1420 to i64*
  %1423 = load i64, i64* %1422, align 8
  store i64 %1423, i64* %.pre149, align 8
  store i64 %1419, i64* %RCX.i2041, align 8
  %1424 = add i64 %1419, 12
  %1425 = add i64 %1410, 33
  store i64 %1425, i64* %3, align 8
  %1426 = inttoptr i64 %1424 to i32*
  %1427 = load i32, i32* %1426, align 4
  %1428 = add i32 %1427, -1
  %1429 = zext i32 %1428 to i64
  store i64 %1429, i64* %RSI.i2012, align 8
  %1430 = sext i32 %1428 to i64
  %1431 = mul nsw i64 %1430, 632
  store i64 %1431, i64* %RCX.i2041, align 8
  %1432 = lshr i64 %1431, 63
  %1433 = add i64 %1431, %1423
  store i64 %1433, i64* %.pre149, align 8
  %1434 = icmp ult i64 %1433, %1423
  %1435 = icmp ult i64 %1433, %1431
  %1436 = or i1 %1434, %1435
  %1437 = zext i1 %1436 to i8
  store i8 %1437, i8* %14, align 1
  %1438 = trunc i64 %1433 to i32
  %1439 = and i32 %1438, 255
  %1440 = tail call i32 @llvm.ctpop.i32(i32 %1439)
  %1441 = trunc i32 %1440 to i8
  %1442 = and i8 %1441, 1
  %1443 = xor i8 %1442, 1
  store i8 %1443, i8* %21, align 1
  %1444 = xor i64 %1431, %1423
  %1445 = xor i64 %1444, %1433
  %1446 = lshr i64 %1445, 4
  %1447 = trunc i64 %1446 to i8
  %1448 = and i8 %1447, 1
  store i8 %1448, i8* %27, align 1
  %1449 = icmp eq i64 %1433, 0
  %1450 = zext i1 %1449 to i8
  store i8 %1450, i8* %30, align 1
  %1451 = lshr i64 %1433, 63
  %1452 = trunc i64 %1451 to i8
  store i8 %1452, i8* %33, align 1
  %1453 = lshr i64 %1423, 63
  %1454 = xor i64 %1451, %1453
  %1455 = xor i64 %1451, %1432
  %1456 = add nuw nsw i64 %1454, %1455
  %1457 = icmp eq i64 %1456, 2
  %1458 = zext i1 %1457 to i8
  store i8 %1458, i8* %39, align 1
  %1459 = load i64, i64* %RDX.i2018, align 8
  %1460 = add i64 %1433, 12
  %1461 = add i64 %1410, 52
  store i64 %1461, i64* %3, align 8
  %1462 = trunc i64 %1459 to i32
  %1463 = inttoptr i64 %1460 to i32*
  %1464 = load i32, i32* %1463, align 4
  %1465 = sub i32 %1462, %1464
  %1466 = zext i32 %1465 to i64
  store i64 %1466, i64* %RDX.i2018, align 8
  %1467 = icmp ult i32 %1462, %1464
  %1468 = zext i1 %1467 to i8
  store i8 %1468, i8* %14, align 1
  %1469 = and i32 %1465, 255
  %1470 = tail call i32 @llvm.ctpop.i32(i32 %1469)
  %1471 = trunc i32 %1470 to i8
  %1472 = and i8 %1471, 1
  %1473 = xor i8 %1472, 1
  store i8 %1473, i8* %21, align 1
  %1474 = xor i32 %1464, %1462
  %1475 = xor i32 %1474, %1465
  %1476 = lshr i32 %1475, 4
  %1477 = trunc i32 %1476 to i8
  %1478 = and i8 %1477, 1
  store i8 %1478, i8* %27, align 1
  %1479 = icmp eq i32 %1465, 0
  %1480 = zext i1 %1479 to i8
  store i8 %1480, i8* %30, align 1
  %1481 = lshr i32 %1465, 31
  %1482 = trunc i32 %1481 to i8
  store i8 %1482, i8* %33, align 1
  %1483 = lshr i32 %1462, 31
  %1484 = lshr i32 %1464, 31
  %1485 = xor i32 %1484, %1483
  %1486 = xor i32 %1481, %1483
  %1487 = add nuw nsw i32 %1486, %1485
  %1488 = icmp eq i32 %1487, 2
  %1489 = zext i1 %1488 to i8
  store i8 %1489, i8* %39, align 1
  %1490 = load i64, i64* %RBP.i, align 8
  %1491 = add i64 %1490, -40
  %1492 = add i64 %1410, 56
  store i64 %1492, i64* %3, align 8
  %1493 = inttoptr i64 %1491 to i64*
  %1494 = load i64, i64* %1493, align 8
  store i64 %1494, i64* %.pre149, align 8
  %1495 = add i64 %1494, 8
  %1496 = add i64 %1410, 59
  store i64 %1496, i64* %3, align 8
  %1497 = inttoptr i64 %1495 to i32*
  store i32 %1465, i32* %1497, align 4
  %1498 = load i64, i64* %RBP.i, align 8
  %1499 = add i64 %1498, -40
  %1500 = load i64, i64* %3, align 8
  %1501 = add i64 %1500, 4
  store i64 %1501, i64* %3, align 8
  %1502 = inttoptr i64 %1499 to i64*
  %1503 = load i64, i64* %1502, align 8
  store i64 %1503, i64* %.pre149, align 8
  %1504 = add i64 %1503, 12
  %1505 = add i64 %1500, 7
  store i64 %1505, i64* %3, align 8
  %1506 = inttoptr i64 %1504 to i32*
  %1507 = load i32, i32* %1506, align 4
  %1508 = zext i32 %1507 to i64
  store i64 %1508, i64* %RDX.i2018, align 8
  %1509 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*), align 8
  store i64 %1509, i64* %.pre149, align 8
  %1510 = add i64 %1509, 40
  %1511 = add i64 %1500, 18
  store i64 %1511, i64* %3, align 8
  %1512 = inttoptr i64 %1510 to i32*
  store i32 %1507, i32* %1512, align 4
  %.pre114 = load i64, i64* %3, align 8
  br label %block_.L_43c173

block_.L_43c173:                                  ; preds = %block_.L_43c0ef, %block_43c0cd
  %1513 = phi i64 [ %.pre114, %block_.L_43c0ef ], [ %1354, %block_43c0cd ]
  %1514 = load i64, i64* %RBP.i, align 8
  %1515 = add i64 %1514, -40
  %1516 = add i64 %1513, 4
  store i64 %1516, i64* %3, align 8
  %1517 = inttoptr i64 %1515 to i64*
  %1518 = load i64, i64* %1517, align 8
  store i64 %1518, i64* %.pre149, align 8
  %1519 = add i64 %1518, 8
  %1520 = add i64 %1513, 7
  store i64 %1520, i64* %3, align 8
  %1521 = inttoptr i64 %1519 to i32*
  %1522 = load i32, i32* %1521, align 4
  %1523 = zext i32 %1522 to i64
  store i64 %1523, i64* %RCX.i2041, align 8
  store i32 %1522, i32* bitcast (%G_0x6cd4e4_type* @G_0x6cd4e4 to i32*), align 8
  store i32 %1522, i32* bitcast (%G_0x70e8d0_type* @G_0x70e8d0 to i32*), align 8
  %1524 = add i64 %1513, 25
  store i64 %1524, i64* %3, align 8
  %1525 = load i64, i64* %1517, align 8
  store i64 %1525, i64* %.pre149, align 8
  %1526 = add i64 %1525, 12
  %1527 = add i64 %1513, 28
  store i64 %1527, i64* %3, align 8
  %1528 = inttoptr i64 %1526 to i32*
  %1529 = load i32, i32* %1528, align 4
  %1530 = zext i32 %1529 to i64
  store i64 %1530, i64* %RCX.i2041, align 8
  store i32 %1529, i32* bitcast (%G_0x724740_type* @G_0x724740 to i32*), align 8
  store i32 %1529, i32* bitcast (%G_0x7242f0_type* @G_0x7242f0 to i32*), align 8
  %1531 = add i64 %1513, 76
  store i64 %1531, i64* %3, align 8
  br label %block_.L_43c1bf

block_.L_43c1a2:                                  ; preds = %block_43c081
  %1532 = add i64 %1265, 4
  store i64 %1532, i64* %3, align 8
  %1533 = load i64, i64* %1167, align 8
  %1534 = add i64 %1533, 8
  %1535 = add i64 %1265, 11
  store i64 %1535, i64* %3, align 8
  %1536 = inttoptr i64 %1534 to i32*
  store i32 0, i32* %1536, align 4
  %1537 = load i64, i64* %3, align 8
  %1538 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*), align 8
  store i64 %1538, i64* %.pre149, align 8
  %1539 = add i64 %1538, 40
  %1540 = add i64 %1537, 11
  store i64 %1540, i64* %3, align 8
  %1541 = inttoptr i64 %1539 to i32*
  %1542 = load i32, i32* %1541, align 4
  %1543 = zext i32 %1542 to i64
  store i64 %1543, i64* %RCX.i2041, align 8
  %1544 = load i64, i64* %RBP.i, align 8
  %1545 = add i64 %1544, -40
  %1546 = add i64 %1537, 15
  store i64 %1546, i64* %3, align 8
  %1547 = inttoptr i64 %1545 to i64*
  %1548 = load i64, i64* %1547, align 8
  store i64 %1548, i64* %.pre149, align 8
  %1549 = add i64 %1548, 12
  %1550 = add i64 %1537, 18
  store i64 %1550, i64* %3, align 8
  %1551 = inttoptr i64 %1549 to i32*
  store i32 %1542, i32* %1551, align 4
  %.pre115 = load i64, i64* %3, align 8
  br label %block_.L_43c1bf

block_.L_43c1bf:                                  ; preds = %block_.L_43c1a2, %block_.L_43c173
  %1552 = phi i64 [ %.pre115, %block_.L_43c1a2 ], [ %1531, %block_.L_43c173 ]
  %1553 = add i64 %1552, 5
  store i64 %1553, i64* %3, align 8
  br label %block_.L_43c1c4

block_.L_43c1c4:                                  ; preds = %block_.L_43c1bf, %block_43c020
  %storemerge68 = phi i64 [ %1237, %block_43c020 ], [ %1553, %block_.L_43c1bf ]
  %1554 = add i64 %storemerge68, 104
  br label %block_.L_43c22c

block_.L_43c1c9:                                  ; preds = %block_43bffd
  %1555 = add i64 %1007, 72628
  %1556 = add i64 %1182, 15
  store i64 %1556, i64* %3, align 8
  %1557 = inttoptr i64 %1555 to i32*
  %1558 = load i32, i32* %1557, align 4
  store i8 0, i8* %14, align 1
  %1559 = and i32 %1558, 255
  %1560 = tail call i32 @llvm.ctpop.i32(i32 %1559)
  %1561 = trunc i32 %1560 to i8
  %1562 = and i8 %1561, 1
  %1563 = xor i8 %1562, 1
  store i8 %1563, i8* %21, align 1
  store i8 0, i8* %27, align 1
  %1564 = icmp eq i32 %1558, 0
  %1565 = zext i1 %1564 to i8
  store i8 %1565, i8* %30, align 1
  %1566 = lshr i32 %1558, 31
  %1567 = trunc i32 %1566 to i8
  store i8 %1567, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %.v207 = select i1 %1564, i64 21, i64 65
  %1568 = add i64 %1182, %.v207
  store i64 %1568, i64* %3, align 8
  br i1 %1564, label %block_43c1de, label %block_.L_43c20a

block_43c1de:                                     ; preds = %block_.L_43c1c9
  %1569 = load i32, i32* bitcast (%G_0x6cd4e4_type* @G_0x6cd4e4 to i32*), align 8
  %1570 = zext i32 %1569 to i64
  store i64 %1570, i64* %.pre149, align 8
  %1571 = add i64 %1568, 11
  store i64 %1571, i64* %3, align 8
  %1572 = load i64, i64* %1167, align 8
  %1573 = add i64 %1572, 8
  %1574 = add i64 %1568, 14
  store i64 %1574, i64* %3, align 8
  %1575 = inttoptr i64 %1573 to i32*
  store i32 %1569, i32* %1575, align 4
  %1576 = load i64, i64* %3, align 8
  %1577 = load i32, i32* bitcast (%G_0x724740_type* @G_0x724740 to i32*), align 8
  %1578 = zext i32 %1577 to i64
  store i64 %1578, i64* %.pre149, align 8
  %1579 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*), align 8
  store i64 %1579, i64* %RCX.i2041, align 8
  %1580 = add i64 %1579, 40
  %1581 = add i64 %1576, 18
  store i64 %1581, i64* %3, align 8
  %1582 = inttoptr i64 %1580 to i32*
  store i32 %1577, i32* %1582, align 4
  %1583 = load i64, i64* %RBP.i, align 8
  %1584 = add i64 %1583, -40
  %1585 = load i64, i64* %3, align 8
  %1586 = add i64 %1585, 4
  store i64 %1586, i64* %3, align 8
  %1587 = inttoptr i64 %1584 to i64*
  %1588 = load i64, i64* %1587, align 8
  store i64 %1588, i64* %RCX.i2041, align 8
  %1589 = add i64 %1588, 12
  %1590 = load i32, i32* %199, align 4
  %1591 = add i64 %1585, 7
  store i64 %1591, i64* %3, align 8
  %1592 = inttoptr i64 %1589 to i32*
  store i32 %1590, i32* %1592, align 4
  %1593 = load i64, i64* %3, align 8
  %1594 = add i64 %1593, 34
  store i64 %1594, i64* %3, align 8
  br label %block_.L_43c227

block_.L_43c20a:                                  ; preds = %block_.L_43c1c9
  store i64 %1007, i64* %.pre149, align 8
  %1595 = add i64 %1007, 40
  %1596 = add i64 %1568, 11
  store i64 %1596, i64* %3, align 8
  %1597 = inttoptr i64 %1595 to i32*
  %1598 = load i32, i32* %1597, align 4
  %1599 = zext i32 %1598 to i64
  store i64 %1599, i64* %RCX.i2041, align 8
  %1600 = add i64 %1568, 15
  store i64 %1600, i64* %3, align 8
  %1601 = load i64, i64* %1167, align 8
  store i64 %1601, i64* %.pre149, align 8
  %1602 = add i64 %1601, 12
  %1603 = add i64 %1568, 18
  store i64 %1603, i64* %3, align 8
  %1604 = inttoptr i64 %1602 to i32*
  store i32 %1598, i32* %1604, align 4
  %1605 = load i64, i64* %RBP.i, align 8
  %1606 = add i64 %1605, -40
  %1607 = load i64, i64* %3, align 8
  %1608 = add i64 %1607, 4
  store i64 %1608, i64* %3, align 8
  %1609 = inttoptr i64 %1606 to i64*
  %1610 = load i64, i64* %1609, align 8
  store i64 %1610, i64* %.pre149, align 8
  %1611 = add i64 %1610, 8
  %1612 = add i64 %1607, 11
  store i64 %1612, i64* %3, align 8
  %1613 = inttoptr i64 %1611 to i32*
  store i32 0, i32* %1613, align 4
  %.pre116 = load i64, i64* %3, align 8
  br label %block_.L_43c227

block_.L_43c227:                                  ; preds = %block_.L_43c20a, %block_43c1de
  %1614 = phi i64 [ %.pre116, %block_.L_43c20a ], [ %1594, %block_43c1de ]
  %1615 = add i64 %1614, 5
  store i64 %1615, i64* %3, align 8
  br label %block_.L_43c22c

block_.L_43c22c:                                  ; preds = %block_.L_43c227, %block_.L_43c1c4
  %storemerge69 = phi i64 [ %1554, %block_.L_43c1c4 ], [ %1615, %block_.L_43c227 ]
  %1616 = add i64 %storemerge69, 169
  br label %block_.L_43c2d5

block_.L_43c231:                                  ; preds = %block_43bfe8
  store i64 %1007, i64* %.pre149, align 8
  %1617 = add i64 %1007, 72628
  %1618 = add i64 %1163, 15
  store i64 %1618, i64* %3, align 8
  %1619 = inttoptr i64 %1617 to i32*
  %1620 = load i32, i32* %1619, align 4
  store i8 0, i8* %14, align 1
  %1621 = and i32 %1620, 255
  %1622 = tail call i32 @llvm.ctpop.i32(i32 %1621)
  %1623 = trunc i32 %1622 to i8
  %1624 = and i8 %1623, 1
  %1625 = xor i8 %1624, 1
  store i8 %1625, i8* %21, align 1
  store i8 0, i8* %27, align 1
  %1626 = icmp eq i32 %1620, 0
  %1627 = zext i1 %1626 to i8
  store i8 %1627, i8* %30, align 1
  %1628 = lshr i32 %1620, 31
  %1629 = trunc i32 %1628 to i8
  store i8 %1629, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %.v180 = select i1 %1626, i64 21, i64 130
  %1630 = add i64 %1163, %.v180
  store i64 %1630, i64* %3, align 8
  br i1 %1626, label %block_43c246, label %block_.L_43c2b3

block_43c246:                                     ; preds = %block_.L_43c231
  store i64 %1007, i64* %.pre149, align 8
  %1631 = add i64 %1007, 72632
  %1632 = add i64 %1630, 15
  store i64 %1632, i64* %3, align 8
  %1633 = inttoptr i64 %1631 to i32*
  %1634 = load i32, i32* %1633, align 4
  store i8 0, i8* %14, align 1
  %1635 = and i32 %1634, 255
  %1636 = tail call i32 @llvm.ctpop.i32(i32 %1635)
  %1637 = trunc i32 %1636 to i8
  %1638 = and i8 %1637, 1
  %1639 = xor i8 %1638, 1
  store i8 %1639, i8* %21, align 1
  store i8 0, i8* %27, align 1
  %1640 = icmp eq i32 %1634, 0
  %1641 = zext i1 %1640 to i8
  store i8 %1641, i8* %30, align 1
  %1642 = lshr i32 %1634, 31
  %1643 = trunc i32 %1642 to i8
  store i8 %1643, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %.v205 = select i1 %1640, i64 65, i64 21
  %1644 = add i64 %1630, %.v205
  %1645 = add i64 %1644, 7
  store i64 %1645, i64* %3, align 8
  br i1 %1640, label %block_.L_43c287, label %block_43c25b

block_43c25b:                                     ; preds = %block_43c246
  %1646 = load i32, i32* bitcast (%G_0x70e8d0_type* @G_0x70e8d0 to i32*), align 8
  %1647 = zext i32 %1646 to i64
  store i64 %1647, i64* %.pre149, align 8
  %1648 = load i64, i64* %RBP.i, align 8
  %1649 = add i64 %1648, -40
  %1650 = add i64 %1644, 11
  store i64 %1650, i64* %3, align 8
  %1651 = inttoptr i64 %1649 to i64*
  %1652 = load i64, i64* %1651, align 8
  store i64 %1652, i64* %RCX.i2041, align 8
  %1653 = add i64 %1652, 8
  %1654 = add i64 %1644, 14
  store i64 %1654, i64* %3, align 8
  %1655 = inttoptr i64 %1653 to i32*
  store i32 %1646, i32* %1655, align 4
  %1656 = load i64, i64* %3, align 8
  %1657 = load i32, i32* bitcast (%G_0x7242f0_type* @G_0x7242f0 to i32*), align 8
  %1658 = zext i32 %1657 to i64
  store i64 %1658, i64* %.pre149, align 8
  %1659 = load i64, i64* %RBP.i, align 8
  %1660 = add i64 %1659, -40
  %1661 = add i64 %1656, 11
  store i64 %1661, i64* %3, align 8
  %1662 = inttoptr i64 %1660 to i64*
  %1663 = load i64, i64* %1662, align 8
  %1664 = add i64 %1663, 12
  %1665 = add i64 %1656, 14
  store i64 %1665, i64* %3, align 8
  %1666 = inttoptr i64 %1664 to i32*
  store i32 %1657, i32* %1666, align 4
  %1667 = load i64, i64* %3, align 8
  %1668 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*), align 8
  store i64 %1668, i64* %RCX.i2041, align 8
  %1669 = add i64 %1668, 40
  %1670 = load i32, i32* %199, align 4
  %1671 = add i64 %1667, 11
  store i64 %1671, i64* %3, align 8
  %1672 = inttoptr i64 %1669 to i32*
  store i32 %1670, i32* %1672, align 4
  %1673 = load i64, i64* %3, align 8
  %1674 = add i64 %1673, 44
  store i64 %1674, i64* %3, align 8
  br label %block_.L_43c2ae

block_.L_43c287:                                  ; preds = %block_43c246
  %1675 = load i32, i32* bitcast (%G_0x6cd4e4_type* @G_0x6cd4e4 to i32*), align 8
  %1676 = zext i32 %1675 to i64
  store i64 %1676, i64* %.pre149, align 8
  %1677 = load i64, i64* %RBP.i, align 8
  %1678 = add i64 %1677, -40
  %1679 = add i64 %1644, 11
  store i64 %1679, i64* %3, align 8
  %1680 = inttoptr i64 %1678 to i64*
  %1681 = load i64, i64* %1680, align 8
  store i64 %1681, i64* %RCX.i2041, align 8
  %1682 = add i64 %1681, 8
  %1683 = add i64 %1644, 14
  store i64 %1683, i64* %3, align 8
  %1684 = inttoptr i64 %1682 to i32*
  store i32 %1675, i32* %1684, align 4
  %1685 = load i64, i64* %3, align 8
  %1686 = load i32, i32* bitcast (%G_0x724740_type* @G_0x724740 to i32*), align 8
  %1687 = zext i32 %1686 to i64
  store i64 %1687, i64* %.pre149, align 8
  %1688 = load i64, i64* %RBP.i, align 8
  %1689 = add i64 %1688, -40
  %1690 = add i64 %1685, 11
  store i64 %1690, i64* %3, align 8
  %1691 = inttoptr i64 %1689 to i64*
  %1692 = load i64, i64* %1691, align 8
  %1693 = add i64 %1692, 12
  %1694 = add i64 %1685, 14
  store i64 %1694, i64* %3, align 8
  %1695 = inttoptr i64 %1693 to i32*
  store i32 %1686, i32* %1695, align 4
  %1696 = load i64, i64* %3, align 8
  %1697 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*), align 8
  store i64 %1697, i64* %RCX.i2041, align 8
  %1698 = add i64 %1697, 40
  %1699 = load i32, i32* %199, align 4
  %1700 = add i64 %1696, 11
  store i64 %1700, i64* %3, align 8
  %1701 = inttoptr i64 %1698 to i32*
  store i32 %1699, i32* %1701, align 4
  %.pre117 = load i64, i64* %3, align 8
  br label %block_.L_43c2ae

block_.L_43c2ae:                                  ; preds = %block_.L_43c287, %block_43c25b
  %1702 = phi i64 [ %.pre117, %block_.L_43c287 ], [ %1674, %block_43c25b ]
  %1703 = add i64 %1702, 34
  store i64 %1703, i64* %3, align 8
  br label %block_.L_43c2d0

block_.L_43c2b3:                                  ; preds = %block_.L_43c231
  %1704 = load i64, i64* %RBP.i, align 8
  %1705 = add i64 %1704, -40
  %1706 = add i64 %1630, 4
  store i64 %1706, i64* %3, align 8
  %1707 = inttoptr i64 %1705 to i64*
  %1708 = load i64, i64* %1707, align 8
  %1709 = add i64 %1708, 8
  %1710 = add i64 %1630, 11
  store i64 %1710, i64* %3, align 8
  %1711 = inttoptr i64 %1709 to i32*
  store i32 0, i32* %1711, align 4
  %1712 = load i64, i64* %3, align 8
  %1713 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*), align 8
  store i64 %1713, i64* %.pre149, align 8
  %1714 = add i64 %1713, 40
  %1715 = add i64 %1712, 11
  store i64 %1715, i64* %3, align 8
  %1716 = inttoptr i64 %1714 to i32*
  %1717 = load i32, i32* %1716, align 4
  %1718 = zext i32 %1717 to i64
  store i64 %1718, i64* %RCX.i2041, align 8
  %1719 = load i64, i64* %RBP.i, align 8
  %1720 = add i64 %1719, -40
  %1721 = add i64 %1712, 15
  store i64 %1721, i64* %3, align 8
  %1722 = inttoptr i64 %1720 to i64*
  %1723 = load i64, i64* %1722, align 8
  store i64 %1723, i64* %.pre149, align 8
  %1724 = add i64 %1723, 12
  %1725 = add i64 %1712, 18
  store i64 %1725, i64* %3, align 8
  %1726 = inttoptr i64 %1724 to i32*
  store i32 %1717, i32* %1726, align 4
  %.pre118 = load i64, i64* %3, align 8
  br label %block_.L_43c2d0

block_.L_43c2d0:                                  ; preds = %block_.L_43c2b3, %block_.L_43c2ae
  %1727 = phi i64 [ %.pre118, %block_.L_43c2b3 ], [ %1703, %block_.L_43c2ae ]
  %1728 = add i64 %1727, 5
  store i64 %1728, i64* %3, align 8
  br label %block_.L_43c2d5

block_.L_43c2d5:                                  ; preds = %block_.L_43c2d0, %block_.L_43c22c
  %storemerge70 = phi i64 [ %1616, %block_.L_43c22c ], [ %1728, %block_.L_43c2d0 ]
  %1729 = load i64, i64* bitcast (%G_0x6cb8f8_type* @G_0x6cb8f8 to i64*), align 8
  store i64 %1729, i64* %.pre149, align 8
  %1730 = add i64 %1729, 2884
  %1731 = add i64 %storemerge70, 15
  store i64 %1731, i64* %3, align 8
  %1732 = inttoptr i64 %1730 to i32*
  %1733 = load i32, i32* %1732, align 4
  store i8 0, i8* %14, align 1
  %1734 = and i32 %1733, 255
  %1735 = tail call i32 @llvm.ctpop.i32(i32 %1734)
  %1736 = trunc i32 %1735 to i8
  %1737 = and i8 %1736, 1
  %1738 = xor i8 %1737, 1
  store i8 %1738, i8* %21, align 1
  store i8 0, i8* %27, align 1
  %1739 = icmp eq i32 %1733, 0
  %1740 = zext i1 %1739 to i8
  store i8 %1740, i8* %30, align 1
  %1741 = lshr i32 %1733, 31
  %1742 = trunc i32 %1741 to i8
  store i8 %1742, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %.v181 = select i1 %1739, i64 42, i64 21
  %1743 = add i64 %storemerge70, %.v181
  store i64 %1743, i64* %3, align 8
  br i1 %1739, label %block_.L_43c2ff, label %block_43c2ea

block_43c2ea:                                     ; preds = %block_.L_43c2d5
  %1744 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*), align 8
  store i64 %1744, i64* %.pre149, align 8
  %1745 = add i64 %1744, 72628
  %1746 = add i64 %1743, 15
  store i64 %1746, i64* %3, align 8
  %1747 = inttoptr i64 %1745 to i32*
  %1748 = load i32, i32* %1747, align 4
  store i8 0, i8* %14, align 1
  %1749 = and i32 %1748, 255
  %1750 = tail call i32 @llvm.ctpop.i32(i32 %1749)
  %1751 = trunc i32 %1750 to i8
  %1752 = and i8 %1751, 1
  %1753 = xor i8 %1752, 1
  store i8 %1753, i8* %21, align 1
  store i8 0, i8* %27, align 1
  %1754 = icmp eq i32 %1748, 0
  %1755 = zext i1 %1754 to i8
  store i8 %1755, i8* %30, align 1
  %1756 = lshr i32 %1748, 31
  %1757 = trunc i32 %1756 to i8
  store i8 %1757, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %.v182 = select i1 %1754, i64 21, i64 1212
  %1758 = add i64 %1743, %.v182
  store i64 %1758, i64* %3, align 8
  br i1 %1754, label %block_.L_43c2ff, label %block_.L_43c7a6

block_.L_43c2ff:                                  ; preds = %block_43c2ea, %block_.L_43c2d5
  %1759 = phi i64 [ %1758, %block_43c2ea ], [ %1743, %block_.L_43c2d5 ]
  %1760 = load i64, i64* %RBP.i, align 8
  %1761 = add i64 %1760, -40
  %1762 = add i64 %1759, 4
  store i64 %1762, i64* %3, align 8
  %1763 = inttoptr i64 %1761 to i64*
  %1764 = load i64, i64* %1763, align 8
  store i64 %1764, i64* %.pre149, align 8
  %1765 = add i64 %1764, 532
  %1766 = add i64 %1759, 11
  store i64 %1766, i64* %3, align 8
  %1767 = inttoptr i64 %1765 to i32*
  %1768 = load i32, i32* %1767, align 4
  store i8 0, i8* %14, align 1
  %1769 = and i32 %1768, 255
  %1770 = tail call i32 @llvm.ctpop.i32(i32 %1769)
  %1771 = trunc i32 %1770 to i8
  %1772 = and i8 %1771, 1
  %1773 = xor i8 %1772, 1
  store i8 %1773, i8* %21, align 1
  store i8 0, i8* %27, align 1
  %1774 = icmp eq i32 %1768, 0
  %1775 = zext i1 %1774 to i8
  store i8 %1775, i8* %30, align 1
  %1776 = lshr i32 %1768, 31
  %1777 = trunc i32 %1776 to i8
  store i8 %1777, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %.v183 = select i1 %1774, i64 17, i64 1169
  %1778 = add i64 %1759, %.v183
  store i64 %1778, i64* %3, align 8
  br i1 %1774, label %block_43c310, label %block_.L_43c790

block_43c310:                                     ; preds = %block_.L_43c2ff
  %1779 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*), align 8
  store i64 %1779, i64* %.pre149, align 8
  %1780 = add i64 %1779, 72616
  %1781 = add i64 %1778, 15
  store i64 %1781, i64* %3, align 8
  %1782 = inttoptr i64 %1780 to i32*
  %1783 = load i32, i32* %1782, align 4
  store i8 0, i8* %14, align 1
  %1784 = and i32 %1783, 255
  %1785 = tail call i32 @llvm.ctpop.i32(i32 %1784)
  %1786 = trunc i32 %1785 to i8
  %1787 = and i8 %1786, 1
  %1788 = xor i8 %1787, 1
  store i8 %1788, i8* %21, align 1
  store i8 0, i8* %27, align 1
  %1789 = icmp eq i32 %1783, 0
  %1790 = zext i1 %1789 to i8
  store i8 %1790, i8* %30, align 1
  %1791 = lshr i32 %1783, 31
  %1792 = trunc i32 %1791 to i8
  store i8 %1792, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %1793 = icmp ne i8 %1792, 0
  %1794 = or i1 %1789, %1793
  %.v184 = select i1 %1794, i64 577, i64 21
  %1795 = add i64 %1778, %.v184
  store i64 %1795, i64* %3, align 8
  br i1 %1794, label %block_.L_43c551, label %block_43c325

block_43c325:                                     ; preds = %block_43c310
  store i64 %1779, i64* %.pre149, align 8
  %1796 = add i64 %1795, 14
  store i64 %1796, i64* %3, align 8
  %1797 = load i32, i32* %1782, align 4
  %1798 = zext i32 %1797 to i64
  store i64 %1798, i64* %.pre149, align 8
  store i64 %1779, i64* %RCX.i2041, align 8
  %1799 = sext i32 %1797 to i64
  %1800 = lshr i64 %1799, 32
  store i64 %1800, i64* %198, align 8
  %1801 = add i64 %1779, 72620
  %1802 = add i64 %1795, 29
  store i64 %1802, i64* %3, align 8
  %1803 = inttoptr i64 %1801 to i32*
  %1804 = load i32, i32* %1803, align 4
  %1805 = sext i32 %1804 to i64
  %1806 = shl nuw i64 %1800, 32
  %1807 = or i64 %1806, %1798
  %1808 = sdiv i64 %1807, %1805
  %1809 = shl i64 %1808, 32
  %1810 = ashr exact i64 %1809, 32
  %1811 = icmp eq i64 %1808, %1810
  br i1 %1811, label %1814, label %1812

; <label>:1812:                                   ; preds = %block_43c325
  %1813 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %1802, %struct.Memory* %call2_43bec2)
  %.pre119 = load i32, i32* %EDX.i2014, align 4
  %.pre120 = load i64, i64* %3, align 8
  br label %routine_idivl_0x11bac__rcx_.exit

; <label>:1814:                                   ; preds = %block_43c325
  %1815 = srem i64 %1807, %1805
  %1816 = and i64 %1808, 4294967295
  store i64 %1816, i64* %.pre149, align 8
  %1817 = and i64 %1815, 4294967295
  store i64 %1817, i64* %RDX.i2018, align 8
  store i8 0, i8* %14, align 1
  store i8 0, i8* %21, align 1
  store i8 0, i8* %27, align 1
  store i8 0, i8* %30, align 1
  store i8 0, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %1818 = trunc i64 %1815 to i32
  br label %routine_idivl_0x11bac__rcx_.exit

routine_idivl_0x11bac__rcx_.exit:                 ; preds = %1814, %1812
  %1819 = phi i64 [ %.pre120, %1812 ], [ %1802, %1814 ]
  %1820 = phi i32 [ %.pre119, %1812 ], [ %1818, %1814 ]
  %1821 = phi %struct.Memory* [ %1813, %1812 ], [ %call2_43bec2, %1814 ]
  store i8 0, i8* %14, align 1
  %1822 = and i32 %1820, 255
  %1823 = tail call i32 @llvm.ctpop.i32(i32 %1822)
  %1824 = trunc i32 %1823 to i8
  %1825 = and i8 %1824, 1
  %1826 = xor i8 %1825, 1
  store i8 %1826, i8* %21, align 1
  store i8 0, i8* %27, align 1
  %1827 = icmp eq i32 %1820, 0
  %1828 = zext i1 %1827 to i8
  store i8 %1828, i8* %30, align 1
  %1829 = lshr i32 %1820, 31
  %1830 = trunc i32 %1829 to i8
  store i8 %1830, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %.v185 = select i1 %1827, i64 9, i64 527
  %1831 = add i64 %1819, %.v185
  store i64 %1831, i64* %3, align 8
  br i1 %1827, label %block_43c34b, label %block_.L_43c551

block_43c34b:                                     ; preds = %routine_idivl_0x11bac__rcx_.exit
  %1832 = load i64, i64* bitcast (%G_0x722cb0_type* @G_0x722cb0 to i64*), align 8
  store i64 %1832, i64* %.pre149, align 8
  %1833 = add i64 %1832, 1148
  %1834 = add i64 %1831, 15
  store i64 %1834, i64* %3, align 8
  %1835 = inttoptr i64 %1833 to i32*
  %1836 = load i32, i32* %1835, align 4
  store i8 0, i8* %14, align 1
  %1837 = and i32 %1836, 255
  %1838 = tail call i32 @llvm.ctpop.i32(i32 %1837)
  %1839 = trunc i32 %1838 to i8
  %1840 = and i8 %1839, 1
  %1841 = xor i8 %1840, 1
  store i8 %1841, i8* %21, align 1
  store i8 0, i8* %27, align 1
  %1842 = icmp eq i32 %1836, 0
  %1843 = zext i1 %1842 to i8
  store i8 %1843, i8* %30, align 1
  %1844 = lshr i32 %1836, 31
  %1845 = trunc i32 %1844 to i8
  store i8 %1845, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %.v192 = select i1 %1842, i64 66, i64 21
  %1846 = add i64 %1831, %.v192
  store i64 %1846, i64* %3, align 8
  br i1 %1842, label %block_.L_43c38d, label %block_43c360

block_43c360:                                     ; preds = %block_43c34b
  store i8 0, i8* %AL.i1984, align 1
  %1847 = add i64 %1846, 279952
  %1848 = add i64 %1846, 7
  %1849 = load i64, i64* %6, align 8
  %1850 = add i64 %1849, -8
  %1851 = inttoptr i64 %1850 to i64*
  store i64 %1848, i64* %1851, align 8
  store i64 %1850, i64* %6, align 8
  store i64 %1847, i64* %3, align 8
  %call2_43c362 = tail call %struct.Memory* @sub_4808f0.updateRCModel(%struct.State* nonnull %0, i64 %1847, %struct.Memory* %1821)
  %1852 = load i64, i64* %3, align 8
  %1853 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*), align 8
  store i64 %1853, i64* %RCX.i2041, align 8
  %1854 = add i64 %1853, 72596
  %1855 = add i64 %1852, 14
  store i64 %1855, i64* %3, align 8
  %1856 = inttoptr i64 %1854 to i32*
  %1857 = load i32, i32* %1856, align 4
  %1858 = zext i32 %1857 to i64
  store i64 %1858, i64* %RDI.i2007, align 8
  %1859 = add i64 %1852, 269817
  %1860 = add i64 %1852, 19
  %1861 = load i64, i64* %6, align 8
  %1862 = add i64 %1861, -8
  %1863 = inttoptr i64 %1862 to i64*
  store i64 %1860, i64* %1863, align 8
  store i64 %1862, i64* %6, align 8
  store i64 %1859, i64* %3, align 8
  %call2_43c375 = tail call %struct.Memory* @sub_47e160.updateQuantizationParameter(%struct.State* nonnull %0, i64 %1859, %struct.Memory* %call2_43c362)
  %1864 = load i64, i64* %3, align 8
  %1865 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*), align 8
  store i64 %1865, i64* %RCX.i2041, align 8
  %1866 = add i64 %1865, 72592
  %1867 = load i32, i32* %199, align 4
  %1868 = add i64 %1864, 14
  store i64 %1868, i64* %3, align 8
  %1869 = inttoptr i64 %1866 to i32*
  store i32 %1867, i32* %1869, align 4
  %1870 = load i64, i64* %3, align 8
  %1871 = add i64 %1870, 452
  br label %block_.L_43c54c

block_.L_43c38d:                                  ; preds = %block_43c34b
  %1872 = load i64, i64* bitcast (%G_0x6cb8f8_type* @G_0x6cb8f8 to i64*), align 8
  store i64 %1872, i64* %.pre149, align 8
  %1873 = add i64 %1872, 2880
  %1874 = add i64 %1846, 15
  store i64 %1874, i64* %3, align 8
  %1875 = inttoptr i64 %1873 to i32*
  %1876 = load i32, i32* %1875, align 4
  %1877 = add i32 %1876, -2
  %1878 = icmp ult i32 %1876, 2
  %1879 = zext i1 %1878 to i8
  store i8 %1879, i8* %14, align 1
  %1880 = and i32 %1877, 255
  %1881 = tail call i32 @llvm.ctpop.i32(i32 %1880)
  %1882 = trunc i32 %1881 to i8
  %1883 = and i8 %1882, 1
  %1884 = xor i8 %1883, 1
  store i8 %1884, i8* %21, align 1
  %1885 = xor i32 %1877, %1876
  %1886 = lshr i32 %1885, 4
  %1887 = trunc i32 %1886 to i8
  %1888 = and i8 %1887, 1
  store i8 %1888, i8* %27, align 1
  %1889 = icmp eq i32 %1877, 0
  %1890 = zext i1 %1889 to i8
  store i8 %1890, i8* %30, align 1
  %1891 = lshr i32 %1877, 31
  %1892 = trunc i32 %1891 to i8
  store i8 %1892, i8* %33, align 1
  %1893 = lshr i32 %1876, 31
  %1894 = xor i32 %1891, %1893
  %1895 = add nuw nsw i32 %1894, %1893
  %1896 = icmp eq i32 %1895, 2
  %1897 = zext i1 %1896 to i8
  store i8 %1897, i8* %39, align 1
  %.v193 = select i1 %1889, i64 21, i64 108
  %1898 = add i64 %1846, %.v193
  store i64 %1898, i64* %3, align 8
  br i1 %1889, label %block_43c3a2, label %block_.L_43c3f9

block_43c3a2:                                     ; preds = %block_.L_43c38d
  store i64 %1872, i64* %.pre149, align 8
  %1899 = add i64 %1872, 2884
  %1900 = add i64 %1898, 15
  store i64 %1900, i64* %3, align 8
  %1901 = inttoptr i64 %1899 to i32*
  %1902 = load i32, i32* %1901, align 4
  store i8 0, i8* %14, align 1
  %1903 = and i32 %1902, 255
  %1904 = tail call i32 @llvm.ctpop.i32(i32 %1903)
  %1905 = trunc i32 %1904 to i8
  %1906 = and i8 %1905, 1
  %1907 = xor i8 %1906, 1
  store i8 %1907, i8* %21, align 1
  store i8 0, i8* %27, align 1
  %1908 = icmp eq i32 %1902, 0
  %1909 = zext i1 %1908 to i8
  store i8 %1909, i8* %30, align 1
  %1910 = lshr i32 %1902, 31
  %1911 = trunc i32 %1910 to i8
  store i8 %1911, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %.v203 = select i1 %1908, i64 21, i64 87
  %1912 = add i64 %1898, %.v203
  store i64 %1912, i64* %3, align 8
  br i1 %1908, label %block_43c3b7, label %block_.L_43c3f9

block_43c3b7:                                     ; preds = %block_43c3a2
  %1913 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*), align 8
  store i64 %1913, i64* %.pre149, align 8
  %1914 = add i64 %1913, 72612
  %1915 = add i64 %1912, 15
  store i64 %1915, i64* %3, align 8
  %1916 = inttoptr i64 %1914 to i32*
  %1917 = load i32, i32* %1916, align 4
  store i8 0, i8* %14, align 1
  %1918 = and i32 %1917, 255
  %1919 = tail call i32 @llvm.ctpop.i32(i32 %1918)
  %1920 = trunc i32 %1919 to i8
  %1921 = and i8 %1920, 1
  %1922 = xor i8 %1921, 1
  store i8 %1922, i8* %21, align 1
  store i8 0, i8* %27, align 1
  %1923 = icmp eq i32 %1917, 0
  %1924 = zext i1 %1923 to i8
  store i8 %1924, i8* %30, align 1
  %1925 = lshr i32 %1917, 31
  %1926 = trunc i32 %1925 to i8
  store i8 %1926, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %.v204 = select i1 %1923, i64 21, i64 66
  %1927 = add i64 %1912, %.v204
  store i64 %1927, i64* %3, align 8
  br i1 %1923, label %block_43c3cc, label %block_.L_43c3f9

block_43c3cc:                                     ; preds = %block_43c3b7
  store i8 0, i8* %AL.i1984, align 1
  %1928 = add i64 %1927, 279844
  %1929 = add i64 %1927, 7
  %1930 = load i64, i64* %6, align 8
  %1931 = add i64 %1930, -8
  %1932 = inttoptr i64 %1931 to i64*
  store i64 %1929, i64* %1932, align 8
  store i64 %1931, i64* %6, align 8
  store i64 %1928, i64* %3, align 8
  %call2_43c3ce = tail call %struct.Memory* @sub_4808f0.updateRCModel(%struct.State* nonnull %0, i64 %1928, %struct.Memory* %1821)
  %1933 = load i64, i64* %3, align 8
  %1934 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*), align 8
  store i64 %1934, i64* %RCX.i2041, align 8
  %1935 = add i64 %1934, 72596
  %1936 = add i64 %1933, 14
  store i64 %1936, i64* %3, align 8
  %1937 = inttoptr i64 %1935 to i32*
  %1938 = load i32, i32* %1937, align 4
  %1939 = zext i32 %1938 to i64
  store i64 %1939, i64* %RDI.i2007, align 8
  %1940 = add i64 %1933, 269709
  %1941 = add i64 %1933, 19
  %1942 = load i64, i64* %6, align 8
  %1943 = add i64 %1942, -8
  %1944 = inttoptr i64 %1943 to i64*
  store i64 %1941, i64* %1944, align 8
  store i64 %1943, i64* %6, align 8
  store i64 %1940, i64* %3, align 8
  %call2_43c3e1 = tail call %struct.Memory* @sub_47e160.updateQuantizationParameter(%struct.State* nonnull %0, i64 %1940, %struct.Memory* %call2_43c3ce)
  %1945 = load i64, i64* %3, align 8
  %1946 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*), align 8
  store i64 %1946, i64* %RCX.i2041, align 8
  %1947 = add i64 %1946, 72592
  %1948 = load i32, i32* %199, align 4
  %1949 = add i64 %1945, 14
  store i64 %1949, i64* %3, align 8
  %1950 = inttoptr i64 %1947 to i32*
  store i32 %1948, i32* %1950, align 4
  %1951 = load i64, i64* %3, align 8
  %1952 = add i64 %1951, 339
  br label %block_.L_43c547

block_.L_43c3f9:                                  ; preds = %block_43c3b7, %block_43c3a2, %block_.L_43c38d
  %1953 = phi i64 [ %1927, %block_43c3b7 ], [ %1912, %block_43c3a2 ], [ %1898, %block_.L_43c38d ]
  store i64 %1872, i64* %.pre149, align 8
  %1954 = add i64 %1953, 15
  store i64 %1954, i64* %3, align 8
  %1955 = load i32, i32* %1875, align 4
  %1956 = add i32 %1955, -1
  %1957 = icmp eq i32 %1955, 0
  %1958 = zext i1 %1957 to i8
  store i8 %1958, i8* %14, align 1
  %1959 = and i32 %1956, 255
  %1960 = tail call i32 @llvm.ctpop.i32(i32 %1959)
  %1961 = trunc i32 %1960 to i8
  %1962 = and i8 %1961, 1
  %1963 = xor i8 %1962, 1
  store i8 %1963, i8* %21, align 1
  %1964 = xor i32 %1956, %1955
  %1965 = lshr i32 %1964, 4
  %1966 = trunc i32 %1965 to i8
  %1967 = and i8 %1966, 1
  store i8 %1967, i8* %27, align 1
  %1968 = icmp eq i32 %1956, 0
  %1969 = zext i1 %1968 to i8
  store i8 %1969, i8* %30, align 1
  %1970 = lshr i32 %1956, 31
  %1971 = trunc i32 %1970 to i8
  store i8 %1971, i8* %33, align 1
  %1972 = lshr i32 %1955, 31
  %1973 = xor i32 %1970, %1972
  %1974 = add nuw nsw i32 %1973, %1972
  %1975 = icmp eq i32 %1974, 2
  %1976 = zext i1 %1975 to i8
  store i8 %1976, i8* %39, align 1
  %.v194 = select i1 %1968, i64 21, i64 108
  %1977 = add i64 %1953, %.v194
  store i64 %1977, i64* %3, align 8
  br i1 %1968, label %block_43c40e, label %block_.L_43c3f9.block_.L_43c465_crit_edge

block_.L_43c3f9.block_.L_43c465_crit_edge:        ; preds = %block_.L_43c3f9
  %.pre150 = add i64 %1872, 2884
  %.pre151 = inttoptr i64 %.pre150 to i32*
  br label %block_.L_43c465

block_43c40e:                                     ; preds = %block_.L_43c3f9
  store i64 %1872, i64* %.pre149, align 8
  %1978 = add i64 %1872, 2884
  %1979 = add i64 %1977, 15
  store i64 %1979, i64* %3, align 8
  %1980 = inttoptr i64 %1978 to i32*
  %1981 = load i32, i32* %1980, align 4
  store i8 0, i8* %14, align 1
  %1982 = and i32 %1981, 255
  %1983 = tail call i32 @llvm.ctpop.i32(i32 %1982)
  %1984 = trunc i32 %1983 to i8
  %1985 = and i8 %1984, 1
  %1986 = xor i8 %1985, 1
  store i8 %1986, i8* %21, align 1
  store i8 0, i8* %27, align 1
  %1987 = icmp eq i32 %1981, 0
  %1988 = zext i1 %1987 to i8
  store i8 %1988, i8* %30, align 1
  %1989 = lshr i32 %1981, 31
  %1990 = trunc i32 %1989 to i8
  store i8 %1990, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %.v201 = select i1 %1987, i64 21, i64 87
  %1991 = add i64 %1977, %.v201
  store i64 %1991, i64* %3, align 8
  br i1 %1987, label %block_43c423, label %block_.L_43c465

block_43c423:                                     ; preds = %block_43c40e
  %1992 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*), align 8
  store i64 %1992, i64* %.pre149, align 8
  %1993 = add i64 %1992, 72612
  %1994 = add i64 %1991, 15
  store i64 %1994, i64* %3, align 8
  %1995 = inttoptr i64 %1993 to i32*
  %1996 = load i32, i32* %1995, align 4
  store i8 0, i8* %14, align 1
  %1997 = and i32 %1996, 255
  %1998 = tail call i32 @llvm.ctpop.i32(i32 %1997)
  %1999 = trunc i32 %1998 to i8
  %2000 = and i8 %1999, 1
  %2001 = xor i8 %2000, 1
  store i8 %2001, i8* %21, align 1
  store i8 0, i8* %27, align 1
  %2002 = icmp eq i32 %1996, 0
  %2003 = zext i1 %2002 to i8
  store i8 %2003, i8* %30, align 1
  %2004 = lshr i32 %1996, 31
  %2005 = trunc i32 %2004 to i8
  store i8 %2005, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %.v202 = select i1 %2002, i64 21, i64 66
  %2006 = add i64 %1991, %.v202
  store i64 %2006, i64* %3, align 8
  br i1 %2002, label %block_43c438, label %block_.L_43c465

block_43c438:                                     ; preds = %block_43c423
  store i8 0, i8* %AL.i1984, align 1
  %2007 = add i64 %2006, 279736
  %2008 = add i64 %2006, 7
  %2009 = load i64, i64* %6, align 8
  %2010 = add i64 %2009, -8
  %2011 = inttoptr i64 %2010 to i64*
  store i64 %2008, i64* %2011, align 8
  store i64 %2010, i64* %6, align 8
  store i64 %2007, i64* %3, align 8
  %call2_43c43a = tail call %struct.Memory* @sub_4808f0.updateRCModel(%struct.State* nonnull %0, i64 %2007, %struct.Memory* %1821)
  %2012 = load i64, i64* %3, align 8
  %2013 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*), align 8
  store i64 %2013, i64* %RCX.i2041, align 8
  %2014 = add i64 %2013, 72596
  %2015 = add i64 %2012, 14
  store i64 %2015, i64* %3, align 8
  %2016 = inttoptr i64 %2014 to i32*
  %2017 = load i32, i32* %2016, align 4
  %2018 = zext i32 %2017 to i64
  store i64 %2018, i64* %RDI.i2007, align 8
  %2019 = add i64 %2012, 269601
  %2020 = add i64 %2012, 19
  %2021 = load i64, i64* %6, align 8
  %2022 = add i64 %2021, -8
  %2023 = inttoptr i64 %2022 to i64*
  store i64 %2020, i64* %2023, align 8
  store i64 %2022, i64* %6, align 8
  store i64 %2019, i64* %3, align 8
  %call2_43c44d = tail call %struct.Memory* @sub_47e160.updateQuantizationParameter(%struct.State* nonnull %0, i64 %2019, %struct.Memory* %call2_43c43a)
  %2024 = load i64, i64* %3, align 8
  %2025 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*), align 8
  store i64 %2025, i64* %RCX.i2041, align 8
  %2026 = add i64 %2025, 72592
  %2027 = load i32, i32* %199, align 4
  %2028 = add i64 %2024, 14
  store i64 %2028, i64* %3, align 8
  %2029 = inttoptr i64 %2026 to i32*
  store i32 %2027, i32* %2029, align 4
  %2030 = load i64, i64* %3, align 8
  %2031 = add i64 %2030, 226
  br label %block_.L_43c542

block_.L_43c465:                                  ; preds = %block_43c423, %block_43c40e, %block_.L_43c3f9.block_.L_43c465_crit_edge
  %.pre-phi152 = phi i32* [ %.pre151, %block_.L_43c3f9.block_.L_43c465_crit_edge ], [ %1980, %block_43c423 ], [ %1980, %block_43c40e ]
  %2032 = phi i64 [ %1977, %block_.L_43c3f9.block_.L_43c465_crit_edge ], [ %2006, %block_43c423 ], [ %1991, %block_43c40e ]
  store i64 %1872, i64* %.pre149, align 8
  %2033 = add i64 %2032, 15
  store i64 %2033, i64* %3, align 8
  %2034 = load i32, i32* %.pre-phi152, align 4
  store i8 0, i8* %14, align 1
  %2035 = and i32 %2034, 255
  %2036 = tail call i32 @llvm.ctpop.i32(i32 %2035)
  %2037 = trunc i32 %2036 to i8
  %2038 = and i8 %2037, 1
  %2039 = xor i8 %2038, 1
  store i8 %2039, i8* %21, align 1
  store i8 0, i8* %27, align 1
  %2040 = icmp eq i32 %2034, 0
  %2041 = zext i1 %2040 to i8
  store i8 %2041, i8* %30, align 1
  %2042 = lshr i32 %2034, 31
  %2043 = trunc i32 %2042 to i8
  store i8 %2043, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %.v195 = select i1 %2040, i64 108, i64 21
  %2044 = add i64 %2032, %.v195
  store i64 %2044, i64* %3, align 8
  br i1 %2040, label %block_.L_43c4d1, label %block_43c47a

block_43c47a:                                     ; preds = %block_.L_43c465
  %2045 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*), align 8
  store i64 %2045, i64* %.pre149, align 8
  %2046 = add i64 %2045, 72612
  %2047 = add i64 %2044, 15
  store i64 %2047, i64* %3, align 8
  %2048 = inttoptr i64 %2046 to i32*
  %2049 = load i32, i32* %2048, align 4
  store i8 0, i8* %14, align 1
  %2050 = and i32 %2049, 255
  %2051 = tail call i32 @llvm.ctpop.i32(i32 %2050)
  %2052 = trunc i32 %2051 to i8
  %2053 = and i8 %2052, 1
  %2054 = xor i8 %2053, 1
  store i8 %2054, i8* %21, align 1
  store i8 0, i8* %27, align 1
  %2055 = icmp eq i32 %2049, 0
  %2056 = zext i1 %2055 to i8
  store i8 %2056, i8* %30, align 1
  %2057 = lshr i32 %2049, 31
  %2058 = trunc i32 %2057 to i8
  store i8 %2058, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %.v196 = select i1 %2055, i64 21, i64 87
  %2059 = add i64 %2044, %.v196
  store i64 %2059, i64* %3, align 8
  br i1 %2055, label %block_43c48f, label %block_.L_43c4d1

block_43c48f:                                     ; preds = %block_43c47a
  store i64 %2045, i64* %.pre149, align 8
  %2060 = add i64 %2045, 72600
  %2061 = add i64 %2059, 15
  store i64 %2061, i64* %3, align 8
  %2062 = inttoptr i64 %2060 to i32*
  %2063 = load i32, i32* %2062, align 4
  %2064 = add i32 %2063, -1
  %2065 = icmp eq i32 %2063, 0
  %2066 = zext i1 %2065 to i8
  store i8 %2066, i8* %14, align 1
  %2067 = and i32 %2064, 255
  %2068 = tail call i32 @llvm.ctpop.i32(i32 %2067)
  %2069 = trunc i32 %2068 to i8
  %2070 = and i8 %2069, 1
  %2071 = xor i8 %2070, 1
  store i8 %2071, i8* %21, align 1
  %2072 = xor i32 %2064, %2063
  %2073 = lshr i32 %2072, 4
  %2074 = trunc i32 %2073 to i8
  %2075 = and i8 %2074, 1
  store i8 %2075, i8* %27, align 1
  %2076 = icmp eq i32 %2064, 0
  %2077 = zext i1 %2076 to i8
  store i8 %2077, i8* %30, align 1
  %2078 = lshr i32 %2064, 31
  %2079 = trunc i32 %2078 to i8
  store i8 %2079, i8* %33, align 1
  %2080 = lshr i32 %2063, 31
  %2081 = xor i32 %2078, %2080
  %2082 = add nuw nsw i32 %2081, %2080
  %2083 = icmp eq i32 %2082, 2
  %2084 = zext i1 %2083 to i8
  store i8 %2084, i8* %39, align 1
  %.v200 = select i1 %2076, i64 21, i64 66
  %2085 = add i64 %2059, %.v200
  store i64 %2085, i64* %3, align 8
  br i1 %2076, label %block_43c4a4, label %block_.L_43c4d1

block_43c4a4:                                     ; preds = %block_43c48f
  store i8 0, i8* %AL.i1984, align 1
  %2086 = add i64 %2085, 279628
  %2087 = add i64 %2085, 7
  %2088 = load i64, i64* %6, align 8
  %2089 = add i64 %2088, -8
  %2090 = inttoptr i64 %2089 to i64*
  store i64 %2087, i64* %2090, align 8
  store i64 %2089, i64* %6, align 8
  store i64 %2086, i64* %3, align 8
  %call2_43c4a6 = tail call %struct.Memory* @sub_4808f0.updateRCModel(%struct.State* nonnull %0, i64 %2086, %struct.Memory* %1821)
  %2091 = load i64, i64* %3, align 8
  %2092 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*), align 8
  store i64 %2092, i64* %RCX.i2041, align 8
  %2093 = add i64 %2092, 72596
  %2094 = add i64 %2091, 14
  store i64 %2094, i64* %3, align 8
  %2095 = inttoptr i64 %2093 to i32*
  %2096 = load i32, i32* %2095, align 4
  %2097 = zext i32 %2096 to i64
  store i64 %2097, i64* %RDI.i2007, align 8
  %2098 = add i64 %2091, 269493
  %2099 = add i64 %2091, 19
  %2100 = load i64, i64* %6, align 8
  %2101 = add i64 %2100, -8
  %2102 = inttoptr i64 %2101 to i64*
  store i64 %2099, i64* %2102, align 8
  store i64 %2101, i64* %6, align 8
  store i64 %2098, i64* %3, align 8
  %call2_43c4b9 = tail call %struct.Memory* @sub_47e160.updateQuantizationParameter(%struct.State* nonnull %0, i64 %2098, %struct.Memory* %call2_43c4a6)
  %2103 = load i64, i64* %3, align 8
  %2104 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*), align 8
  store i64 %2104, i64* %RCX.i2041, align 8
  %2105 = add i64 %2104, 72592
  %2106 = load i32, i32* %199, align 4
  %2107 = add i64 %2103, 14
  store i64 %2107, i64* %3, align 8
  %2108 = inttoptr i64 %2105 to i32*
  store i32 %2106, i32* %2108, align 4
  %2109 = load i64, i64* %3, align 8
  %2110 = add i64 %2109, 113
  br label %block_.L_43c53d

block_.L_43c4d1:                                  ; preds = %block_43c48f, %block_43c47a, %block_.L_43c465
  %2111 = phi i64 [ %2085, %block_43c48f ], [ %2059, %block_43c47a ], [ %2044, %block_.L_43c465 ]
  store i64 %1872, i64* %.pre149, align 8
  %2112 = add i64 %2111, 15
  store i64 %2112, i64* %3, align 8
  %2113 = load i32, i32* %.pre-phi152, align 4
  store i8 0, i8* %14, align 1
  %2114 = and i32 %2113, 255
  %2115 = tail call i32 @llvm.ctpop.i32(i32 %2114)
  %2116 = trunc i32 %2115 to i8
  %2117 = and i8 %2116, 1
  %2118 = xor i8 %2117, 1
  store i8 %2118, i8* %21, align 1
  store i8 0, i8* %27, align 1
  %2119 = icmp eq i32 %2113, 0
  %2120 = zext i1 %2119 to i8
  store i8 %2120, i8* %30, align 1
  %2121 = lshr i32 %2113, 31
  %2122 = trunc i32 %2121 to i8
  store i8 %2122, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %.v197 = select i1 %2119, i64 103, i64 21
  %2123 = add i64 %2111, %.v197
  store i64 %2123, i64* %3, align 8
  br i1 %2119, label %block_.L_43c538, label %block_43c4e6

block_43c4e6:                                     ; preds = %block_.L_43c4d1
  %2124 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*), align 8
  store i64 %2124, i64* %.pre149, align 8
  %2125 = add i64 %2124, 72612
  %2126 = add i64 %2123, 15
  store i64 %2126, i64* %3, align 8
  %2127 = inttoptr i64 %2125 to i32*
  %2128 = load i32, i32* %2127, align 4
  store i8 0, i8* %14, align 1
  %2129 = and i32 %2128, 255
  %2130 = tail call i32 @llvm.ctpop.i32(i32 %2129)
  %2131 = trunc i32 %2130 to i8
  %2132 = and i8 %2131, 1
  %2133 = xor i8 %2132, 1
  store i8 %2133, i8* %21, align 1
  store i8 0, i8* %27, align 1
  %2134 = icmp eq i32 %2128, 0
  %2135 = zext i1 %2134 to i8
  store i8 %2135, i8* %30, align 1
  %2136 = lshr i32 %2128, 31
  %2137 = trunc i32 %2136 to i8
  store i8 %2137, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %.v198 = select i1 %2134, i64 21, i64 82
  %2138 = add i64 %2123, %.v198
  store i64 %2138, i64* %3, align 8
  br i1 %2134, label %block_43c4fb, label %block_.L_43c538

block_43c4fb:                                     ; preds = %block_43c4e6
  store i64 %2124, i64* %.pre149, align 8
  %2139 = add i64 %2124, 72600
  %2140 = add i64 %2138, 15
  store i64 %2140, i64* %3, align 8
  %2141 = inttoptr i64 %2139 to i32*
  %2142 = load i32, i32* %2141, align 4
  store i8 0, i8* %14, align 1
  %2143 = and i32 %2142, 255
  %2144 = tail call i32 @llvm.ctpop.i32(i32 %2143)
  %2145 = trunc i32 %2144 to i8
  %2146 = and i8 %2145, 1
  %2147 = xor i8 %2146, 1
  store i8 %2147, i8* %21, align 1
  store i8 0, i8* %27, align 1
  %2148 = icmp eq i32 %2142, 0
  %2149 = zext i1 %2148 to i8
  store i8 %2149, i8* %30, align 1
  %2150 = lshr i32 %2142, 31
  %2151 = trunc i32 %2150 to i8
  store i8 %2151, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %.v199 = select i1 %2148, i64 21, i64 61
  %2152 = add i64 %2138, %.v199
  store i64 %2152, i64* %3, align 8
  br i1 %2148, label %block_43c510, label %block_.L_43c538

block_43c510:                                     ; preds = %block_43c4fb
  store i8 0, i8* %AL.i1984, align 1
  %2153 = add i64 %2152, 279520
  %2154 = add i64 %2152, 7
  %2155 = load i64, i64* %6, align 8
  %2156 = add i64 %2155, -8
  %2157 = inttoptr i64 %2156 to i64*
  store i64 %2154, i64* %2157, align 8
  store i64 %2156, i64* %6, align 8
  store i64 %2153, i64* %3, align 8
  %call2_43c512 = tail call %struct.Memory* @sub_4808f0.updateRCModel(%struct.State* nonnull %0, i64 %2153, %struct.Memory* %1821)
  %2158 = load i64, i64* %3, align 8
  %2159 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*), align 8
  store i64 %2159, i64* %RCX.i2041, align 8
  %2160 = add i64 %2159, 72596
  %2161 = add i64 %2158, 14
  store i64 %2161, i64* %3, align 8
  %2162 = inttoptr i64 %2160 to i32*
  %2163 = load i32, i32* %2162, align 4
  %2164 = zext i32 %2163 to i64
  store i64 %2164, i64* %RDI.i2007, align 8
  %2165 = add i64 %2158, 269385
  %2166 = add i64 %2158, 19
  %2167 = load i64, i64* %6, align 8
  %2168 = add i64 %2167, -8
  %2169 = inttoptr i64 %2168 to i64*
  store i64 %2166, i64* %2169, align 8
  store i64 %2168, i64* %6, align 8
  store i64 %2165, i64* %3, align 8
  %call2_43c525 = tail call %struct.Memory* @sub_47e160.updateQuantizationParameter(%struct.State* nonnull %0, i64 %2165, %struct.Memory* %call2_43c512)
  %2170 = load i64, i64* %3, align 8
  %2171 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*), align 8
  store i64 %2171, i64* %RCX.i2041, align 8
  %2172 = add i64 %2171, 72592
  %2173 = load i32, i32* %199, align 4
  %2174 = add i64 %2170, 14
  store i64 %2174, i64* %3, align 8
  %2175 = inttoptr i64 %2172 to i32*
  store i32 %2173, i32* %2175, align 4
  %.pre121 = load i64, i64* %3, align 8
  br label %block_.L_43c538

block_.L_43c538:                                  ; preds = %block_43c4fb, %block_43c4e6, %block_43c510, %block_.L_43c4d1
  %2176 = phi i64 [ %2123, %block_.L_43c4d1 ], [ %2138, %block_43c4e6 ], [ %2152, %block_43c4fb ], [ %.pre121, %block_43c510 ]
  %MEMORY.20 = phi %struct.Memory* [ %1821, %block_.L_43c4d1 ], [ %1821, %block_43c4e6 ], [ %1821, %block_43c4fb ], [ %call2_43c525, %block_43c510 ]
  %2177 = add i64 %2176, 5
  store i64 %2177, i64* %3, align 8
  br label %block_.L_43c53d

block_.L_43c53d:                                  ; preds = %block_.L_43c538, %block_43c4a4
  %storemerge76 = phi i64 [ %2110, %block_43c4a4 ], [ %2177, %block_.L_43c538 ]
  %MEMORY.21 = phi %struct.Memory* [ %call2_43c4b9, %block_43c4a4 ], [ %MEMORY.20, %block_.L_43c538 ]
  %2178 = add i64 %storemerge76, 5
  store i64 %2178, i64* %3, align 8
  br label %block_.L_43c542

block_.L_43c542:                                  ; preds = %block_.L_43c53d, %block_43c438
  %storemerge75 = phi i64 [ %2031, %block_43c438 ], [ %2178, %block_.L_43c53d ]
  %MEMORY.22 = phi %struct.Memory* [ %call2_43c44d, %block_43c438 ], [ %MEMORY.21, %block_.L_43c53d ]
  %2179 = add i64 %storemerge75, 5
  store i64 %2179, i64* %3, align 8
  br label %block_.L_43c547

block_.L_43c547:                                  ; preds = %block_.L_43c542, %block_43c3cc
  %storemerge74 = phi i64 [ %1952, %block_43c3cc ], [ %2179, %block_.L_43c542 ]
  %MEMORY.23 = phi %struct.Memory* [ %call2_43c3e1, %block_43c3cc ], [ %MEMORY.22, %block_.L_43c542 ]
  %2180 = add i64 %storemerge74, 5
  store i64 %2180, i64* %3, align 8
  br label %block_.L_43c54c

block_.L_43c54c:                                  ; preds = %block_.L_43c547, %block_43c360
  %storemerge71 = phi i64 [ %1871, %block_43c360 ], [ %2180, %block_.L_43c547 ]
  %MEMORY.24 = phi %struct.Memory* [ %call2_43c375, %block_43c360 ], [ %MEMORY.23, %block_.L_43c547 ]
  %2181 = add i64 %storemerge71, 5
  store i64 %2181, i64* %3, align 8
  br label %block_.L_43c551

block_.L_43c551:                                  ; preds = %routine_idivl_0x11bac__rcx_.exit, %block_.L_43c54c, %block_43c310
  %2182 = phi i64 [ %1795, %block_43c310 ], [ %1831, %routine_idivl_0x11bac__rcx_.exit ], [ %2181, %block_.L_43c54c ]
  %MEMORY.25 = phi %struct.Memory* [ %call2_43bec2, %block_43c310 ], [ %1821, %routine_idivl_0x11bac__rcx_.exit ], [ %MEMORY.24, %block_.L_43c54c ]
  %2183 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*), align 8
  store i64 %2183, i64* %.pre149, align 8
  %2184 = add i64 %2183, 12
  %2185 = add i64 %2182, 12
  store i64 %2185, i64* %3, align 8
  %2186 = inttoptr i64 %2184 to i32*
  %2187 = load i32, i32* %2186, align 4
  store i8 0, i8* %14, align 1
  %2188 = and i32 %2187, 255
  %2189 = tail call i32 @llvm.ctpop.i32(i32 %2188)
  %2190 = trunc i32 %2189 to i8
  %2191 = and i8 %2190, 1
  %2192 = xor i8 %2191, 1
  store i8 %2192, i8* %21, align 1
  store i8 0, i8* %27, align 1
  %2193 = icmp eq i32 %2187, 0
  %2194 = zext i1 %2193 to i8
  store i8 %2194, i8* %30, align 1
  %2195 = lshr i32 %2187, 31
  %2196 = trunc i32 %2195 to i8
  store i8 %2196, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %.v186 = select i1 %2193, i64 18, i64 43
  %2197 = add i64 %2182, %.v186
  store i64 %2197, i64* %3, align 8
  br i1 %2193, label %block_43c563, label %block_.L_43c57c

block_43c563:                                     ; preds = %block_.L_43c551
  store i64 %2183, i64* %.pre149, align 8
  %2198 = add i64 %2183, 40
  %2199 = add i64 %2197, 11
  store i64 %2199, i64* %3, align 8
  %2200 = inttoptr i64 %2198 to i32*
  %2201 = load i32, i32* %2200, align 4
  %2202 = zext i32 %2201 to i64
  store i64 %2202, i64* %RCX.i2041, align 8
  store i64 %2183, i64* %.pre149, align 8
  %2203 = add i64 %2183, 72592
  %2204 = add i64 %2197, 25
  store i64 %2204, i64* %3, align 8
  %2205 = inttoptr i64 %2203 to i32*
  store i32 %2201, i32* %2205, align 4
  %.pre122 = load i64, i64* %3, align 8
  %.pre123 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*), align 8
  br label %block_.L_43c57c

block_.L_43c57c:                                  ; preds = %block_.L_43c551, %block_43c563
  %2206 = phi i64 [ %.pre123, %block_43c563 ], [ %2183, %block_.L_43c551 ]
  %2207 = phi i64 [ %.pre122, %block_43c563 ], [ %2197, %block_.L_43c551 ]
  store i64 %2206, i64* %.pre149, align 8
  %2208 = add i64 %2206, 72592
  %2209 = add i64 %2207, 14
  store i64 %2209, i64* %3, align 8
  %2210 = inttoptr i64 %2208 to i32*
  %2211 = load i32, i32* %2210, align 4
  %2212 = zext i32 %2211 to i64
  store i64 %2212, i64* %RCX.i2041, align 8
  %2213 = load i64, i64* %RBP.i, align 8
  %2214 = add i64 %2213, -40
  %2215 = add i64 %2207, 18
  store i64 %2215, i64* %3, align 8
  %2216 = inttoptr i64 %2214 to i64*
  %2217 = load i64, i64* %2216, align 8
  store i64 %2217, i64* %.pre149, align 8
  %2218 = add i64 %2217, 604
  %2219 = add i64 %2207, 24
  store i64 %2219, i64* %3, align 8
  %2220 = inttoptr i64 %2218 to i32*
  store i32 %2211, i32* %2220, align 4
  %2221 = load i64, i64* %RBP.i, align 8
  %2222 = add i64 %2221, -40
  %2223 = load i64, i64* %3, align 8
  %2224 = add i64 %2223, 4
  store i64 %2224, i64* %3, align 8
  %2225 = inttoptr i64 %2222 to i64*
  %2226 = load i64, i64* %2225, align 8
  store i64 %2226, i64* %.pre149, align 8
  %2227 = add i64 %2226, 604
  %2228 = add i64 %2223, 10
  store i64 %2228, i64* %3, align 8
  %2229 = inttoptr i64 %2227 to i32*
  %2230 = load i32, i32* %2229, align 4
  %2231 = zext i32 %2230 to i64
  store i64 %2231, i64* %RCX.i2041, align 8
  %2232 = add i64 %2223, 14
  store i64 %2232, i64* %3, align 8
  %2233 = load i64, i64* %2225, align 8
  store i64 %2233, i64* %.pre149, align 8
  %2234 = add i64 %2233, 12
  %2235 = add i64 %2223, 17
  store i64 %2235, i64* %3, align 8
  %2236 = inttoptr i64 %2234 to i32*
  %2237 = load i32, i32* %2236, align 4
  %2238 = zext i32 %2237 to i64
  store i64 %2238, i64* %RDX.i2018, align 8
  %2239 = add i64 %2221, -76
  %2240 = add i64 %2223, 20
  store i64 %2240, i64* %3, align 8
  %2241 = inttoptr i64 %2239 to i32*
  %2242 = load i32, i32* %2241, align 4
  %2243 = add i32 %2242, %2237
  %2244 = zext i32 %2243 to i64
  store i64 %2244, i64* %RDX.i2018, align 8
  %2245 = lshr i32 %2243, 31
  %2246 = sub i32 %2230, %2243
  %2247 = icmp ult i32 %2230, %2243
  %2248 = zext i1 %2247 to i8
  store i8 %2248, i8* %14, align 1
  %2249 = and i32 %2246, 255
  %2250 = tail call i32 @llvm.ctpop.i32(i32 %2249)
  %2251 = trunc i32 %2250 to i8
  %2252 = and i8 %2251, 1
  %2253 = xor i8 %2252, 1
  store i8 %2253, i8* %21, align 1
  %2254 = xor i32 %2243, %2230
  %2255 = xor i32 %2254, %2246
  %2256 = lshr i32 %2255, 4
  %2257 = trunc i32 %2256 to i8
  %2258 = and i8 %2257, 1
  store i8 %2258, i8* %27, align 1
  %2259 = icmp eq i32 %2246, 0
  %2260 = zext i1 %2259 to i8
  store i8 %2260, i8* %30, align 1
  %2261 = lshr i32 %2246, 31
  %2262 = trunc i32 %2261 to i8
  store i8 %2262, i8* %33, align 1
  %2263 = lshr i32 %2230, 31
  %2264 = xor i32 %2245, %2263
  %2265 = xor i32 %2261, %2263
  %2266 = add nuw nsw i32 %2265, %2264
  %2267 = icmp eq i32 %2266, 2
  %2268 = zext i1 %2267 to i8
  store i8 %2268, i8* %39, align 1
  %2269 = icmp ne i8 %2262, 0
  %2270 = xor i1 %2269, %2267
  %2271 = or i1 %2259, %2270
  %.v187 = select i1 %2271, i64 53, i64 28
  %2272 = add i64 %2223, %.v187
  %2273 = load i64, i64* %RBP.i, align 8
  %2274 = add i64 %2273, -40
  %2275 = add i64 %2272, 4
  store i64 %2275, i64* %3, align 8
  %2276 = inttoptr i64 %2274 to i64*
  %2277 = load i64, i64* %2276, align 8
  store i64 %2277, i64* %.pre149, align 8
  br i1 %2271, label %block_.L_43c5c9, label %block_43c5b0

block_43c5b0:                                     ; preds = %block_.L_43c57c
  %2278 = add i64 %2277, 12
  %2279 = add i64 %2272, 7
  store i64 %2279, i64* %3, align 8
  %2280 = inttoptr i64 %2278 to i32*
  %2281 = load i32, i32* %2280, align 4
  %2282 = zext i32 %2281 to i64
  store i64 %2282, i64* %RCX.i2041, align 8
  %2283 = add i64 %2273, -76
  %2284 = add i64 %2272, 10
  store i64 %2284, i64* %3, align 8
  %2285 = inttoptr i64 %2283 to i32*
  %2286 = load i32, i32* %2285, align 4
  %2287 = add i32 %2286, %2281
  %2288 = zext i32 %2287 to i64
  store i64 %2288, i64* %RCX.i2041, align 8
  %2289 = icmp ult i32 %2287, %2281
  %2290 = icmp ult i32 %2287, %2286
  %2291 = or i1 %2289, %2290
  %2292 = zext i1 %2291 to i8
  store i8 %2292, i8* %14, align 1
  %2293 = and i32 %2287, 255
  %2294 = tail call i32 @llvm.ctpop.i32(i32 %2293)
  %2295 = trunc i32 %2294 to i8
  %2296 = and i8 %2295, 1
  %2297 = xor i8 %2296, 1
  store i8 %2297, i8* %21, align 1
  %2298 = xor i32 %2286, %2281
  %2299 = xor i32 %2298, %2287
  %2300 = lshr i32 %2299, 4
  %2301 = trunc i32 %2300 to i8
  %2302 = and i8 %2301, 1
  store i8 %2302, i8* %27, align 1
  %2303 = icmp eq i32 %2287, 0
  %2304 = zext i1 %2303 to i8
  store i8 %2304, i8* %30, align 1
  %2305 = lshr i32 %2287, 31
  %2306 = trunc i32 %2305 to i8
  store i8 %2306, i8* %33, align 1
  %2307 = lshr i32 %2281, 31
  %2308 = lshr i32 %2286, 31
  %2309 = xor i32 %2305, %2307
  %2310 = xor i32 %2305, %2308
  %2311 = add nuw nsw i32 %2309, %2310
  %2312 = icmp eq i32 %2311, 2
  %2313 = zext i1 %2312 to i8
  store i8 %2313, i8* %39, align 1
  %2314 = add i64 %2272, 14
  store i64 %2314, i64* %3, align 8
  %2315 = load i64, i64* %2276, align 8
  store i64 %2315, i64* %.pre149, align 8
  %2316 = add i64 %2315, 604
  %2317 = add i64 %2272, 20
  store i64 %2317, i64* %3, align 8
  %2318 = inttoptr i64 %2316 to i32*
  store i32 %2287, i32* %2318, align 4
  %2319 = load i64, i64* %3, align 8
  %2320 = add i64 %2319, 58
  br label %block_.L_43c5fe

block_.L_43c5c9:                                  ; preds = %block_.L_43c57c
  %2321 = add i64 %2277, 604
  %2322 = add i64 %2272, 10
  store i64 %2322, i64* %3, align 8
  %2323 = inttoptr i64 %2321 to i32*
  %2324 = load i32, i32* %2323, align 4
  %2325 = zext i32 %2324 to i64
  store i64 %2325, i64* %RCX.i2041, align 8
  %2326 = add i64 %2272, 14
  store i64 %2326, i64* %3, align 8
  %2327 = load i64, i64* %2276, align 8
  store i64 %2327, i64* %.pre149, align 8
  %2328 = add i64 %2327, 12
  %2329 = add i64 %2272, 17
  store i64 %2329, i64* %3, align 8
  %2330 = inttoptr i64 %2328 to i32*
  %2331 = load i32, i32* %2330, align 4
  %2332 = zext i32 %2331 to i64
  store i64 %2332, i64* %RDX.i2018, align 8
  %2333 = add i64 %2273, -80
  %2334 = add i64 %2272, 20
  store i64 %2334, i64* %3, align 8
  %2335 = inttoptr i64 %2333 to i32*
  %2336 = load i32, i32* %2335, align 4
  %2337 = sub i32 %2331, %2336
  %2338 = zext i32 %2337 to i64
  store i64 %2338, i64* %RDX.i2018, align 8
  %2339 = lshr i32 %2337, 31
  %2340 = sub i32 %2324, %2337
  %2341 = icmp ult i32 %2324, %2337
  %2342 = zext i1 %2341 to i8
  store i8 %2342, i8* %14, align 1
  %2343 = and i32 %2340, 255
  %2344 = tail call i32 @llvm.ctpop.i32(i32 %2343)
  %2345 = trunc i32 %2344 to i8
  %2346 = and i8 %2345, 1
  %2347 = xor i8 %2346, 1
  store i8 %2347, i8* %21, align 1
  %2348 = xor i32 %2337, %2324
  %2349 = xor i32 %2348, %2340
  %2350 = lshr i32 %2349, 4
  %2351 = trunc i32 %2350 to i8
  %2352 = and i8 %2351, 1
  store i8 %2352, i8* %27, align 1
  %2353 = icmp eq i32 %2340, 0
  %2354 = zext i1 %2353 to i8
  store i8 %2354, i8* %30, align 1
  %2355 = lshr i32 %2340, 31
  %2356 = trunc i32 %2355 to i8
  store i8 %2356, i8* %33, align 1
  %2357 = lshr i32 %2324, 31
  %2358 = xor i32 %2339, %2357
  %2359 = xor i32 %2355, %2357
  %2360 = add nuw nsw i32 %2359, %2358
  %2361 = icmp eq i32 %2360, 2
  %2362 = zext i1 %2361 to i8
  store i8 %2362, i8* %39, align 1
  %2363 = icmp ne i8 %2356, 0
  %2364 = xor i1 %2363, %2361
  %.v191 = select i1 %2364, i64 28, i64 48
  %2365 = add i64 %2272, %.v191
  store i64 %2365, i64* %3, align 8
  br i1 %2364, label %block_43c5e5, label %block_.L_43c5f9

block_43c5e5:                                     ; preds = %block_.L_43c5c9
  %2366 = add i64 %2365, 4
  store i64 %2366, i64* %3, align 8
  %2367 = load i64, i64* %2276, align 8
  store i64 %2367, i64* %.pre149, align 8
  %2368 = add i64 %2367, 12
  %2369 = add i64 %2365, 7
  store i64 %2369, i64* %3, align 8
  %2370 = inttoptr i64 %2368 to i32*
  %2371 = load i32, i32* %2370, align 4
  %2372 = zext i32 %2371 to i64
  store i64 %2372, i64* %RCX.i2041, align 8
  %2373 = add i64 %2365, 10
  store i64 %2373, i64* %3, align 8
  %2374 = load i32, i32* %2335, align 4
  %2375 = sub i32 %2371, %2374
  %2376 = zext i32 %2375 to i64
  store i64 %2376, i64* %RCX.i2041, align 8
  %2377 = icmp ult i32 %2371, %2374
  %2378 = zext i1 %2377 to i8
  store i8 %2378, i8* %14, align 1
  %2379 = and i32 %2375, 255
  %2380 = tail call i32 @llvm.ctpop.i32(i32 %2379)
  %2381 = trunc i32 %2380 to i8
  %2382 = and i8 %2381, 1
  %2383 = xor i8 %2382, 1
  store i8 %2383, i8* %21, align 1
  %2384 = xor i32 %2374, %2371
  %2385 = xor i32 %2384, %2375
  %2386 = lshr i32 %2385, 4
  %2387 = trunc i32 %2386 to i8
  %2388 = and i8 %2387, 1
  store i8 %2388, i8* %27, align 1
  %2389 = icmp eq i32 %2375, 0
  %2390 = zext i1 %2389 to i8
  store i8 %2390, i8* %30, align 1
  %2391 = lshr i32 %2375, 31
  %2392 = trunc i32 %2391 to i8
  store i8 %2392, i8* %33, align 1
  %2393 = lshr i32 %2371, 31
  %2394 = lshr i32 %2374, 31
  %2395 = xor i32 %2394, %2393
  %2396 = xor i32 %2391, %2393
  %2397 = add nuw nsw i32 %2396, %2395
  %2398 = icmp eq i32 %2397, 2
  %2399 = zext i1 %2398 to i8
  store i8 %2399, i8* %39, align 1
  %2400 = add i64 %2365, 14
  store i64 %2400, i64* %3, align 8
  %2401 = load i64, i64* %2276, align 8
  store i64 %2401, i64* %.pre149, align 8
  %2402 = add i64 %2401, 604
  %2403 = add i64 %2365, 20
  store i64 %2403, i64* %3, align 8
  %2404 = inttoptr i64 %2402 to i32*
  store i32 %2375, i32* %2404, align 4
  %.pre124 = load i64, i64* %3, align 8
  br label %block_.L_43c5f9

block_.L_43c5f9:                                  ; preds = %block_.L_43c5c9, %block_43c5e5
  %2405 = phi i64 [ %2365, %block_.L_43c5c9 ], [ %.pre124, %block_43c5e5 ]
  %2406 = add i64 %2405, 5
  store i64 %2406, i64* %3, align 8
  br label %block_.L_43c5fe

block_.L_43c5fe:                                  ; preds = %block_.L_43c5f9, %block_43c5b0
  %storemerge72 = phi i64 [ %2320, %block_43c5b0 ], [ %2406, %block_.L_43c5f9 ]
  store i64 0, i64* %.pre149, align 8
  store i8 0, i8* %14, align 1
  store i8 1, i8* %21, align 1
  store i8 1, i8* %30, align 1
  store i8 0, i8* %33, align 1
  store i8 0, i8* %39, align 1
  store i8 0, i8* %27, align 1
  %2407 = load i64, i64* %RBP.i, align 8
  %2408 = add i64 %2407, -40
  %2409 = add i64 %storemerge72, 6
  store i64 %2409, i64* %3, align 8
  %2410 = inttoptr i64 %2408 to i64*
  %2411 = load i64, i64* %2410, align 8
  store i64 %2411, i64* %RCX.i2041, align 8
  %2412 = add i64 %2411, 8
  %2413 = add i64 %storemerge72, 9
  store i64 %2413, i64* %3, align 8
  %2414 = inttoptr i64 %2412 to i32*
  %2415 = load i32, i32* %2414, align 4
  %2416 = zext i32 %2415 to i64
  store i64 %2416, i64* %RDX.i2018, align 8
  %2417 = add i64 %storemerge72, 13
  store i64 %2417, i64* %3, align 8
  %2418 = load i64, i64* %2410, align 8
  store i64 %2418, i64* %RCX.i2041, align 8
  %2419 = add i64 %2418, 604
  %2420 = add i64 %storemerge72, 19
  store i64 %2420, i64* %3, align 8
  %2421 = inttoptr i64 %2419 to i32*
  %2422 = load i32, i32* %2421, align 4
  %2423 = add i32 %2422, %2415
  %2424 = zext i32 %2423 to i64
  store i64 %2424, i64* %RDX.i2018, align 8
  %2425 = icmp ult i32 %2423, %2415
  %2426 = icmp ult i32 %2423, %2422
  %2427 = or i1 %2425, %2426
  %2428 = zext i1 %2427 to i8
  store i8 %2428, i8* %14, align 1
  %2429 = and i32 %2423, 255
  %2430 = tail call i32 @llvm.ctpop.i32(i32 %2429)
  %2431 = trunc i32 %2430 to i8
  %2432 = and i8 %2431, 1
  %2433 = xor i8 %2432, 1
  store i8 %2433, i8* %21, align 1
  %2434 = xor i32 %2422, %2415
  %2435 = xor i32 %2434, %2423
  %2436 = lshr i32 %2435, 4
  %2437 = trunc i32 %2436 to i8
  %2438 = and i8 %2437, 1
  store i8 %2438, i8* %27, align 1
  %2439 = icmp eq i32 %2423, 0
  %2440 = zext i1 %2439 to i8
  store i8 %2440, i8* %30, align 1
  %2441 = lshr i32 %2423, 31
  %2442 = trunc i32 %2441 to i8
  store i8 %2442, i8* %33, align 1
  %2443 = lshr i32 %2415, 31
  %2444 = lshr i32 %2422, 31
  %2445 = xor i32 %2441, %2443
  %2446 = xor i32 %2441, %2444
  %2447 = add nuw nsw i32 %2445, %2446
  %2448 = icmp eq i32 %2447, 2
  %2449 = zext i1 %2448 to i8
  store i8 %2449, i8* %39, align 1
  %2450 = add i64 %storemerge72, 23
  store i64 %2450, i64* %3, align 8
  %2451 = load i64, i64* %2410, align 8
  store i64 %2451, i64* %RCX.i2041, align 8
  %2452 = add i64 %2451, 12
  %2453 = add i64 %storemerge72, 26
  store i64 %2453, i64* %3, align 8
  %2454 = inttoptr i64 %2452 to i32*
  %2455 = load i32, i32* %2454, align 4
  %2456 = sub i32 %2423, %2455
  %2457 = zext i32 %2456 to i64
  %2458 = icmp ult i32 %2423, %2455
  %2459 = zext i1 %2458 to i8
  store i8 %2459, i8* %14, align 1
  %2460 = and i32 %2456, 255
  %2461 = tail call i32 @llvm.ctpop.i32(i32 %2460)
  %2462 = trunc i32 %2461 to i8
  %2463 = and i8 %2462, 1
  %2464 = xor i8 %2463, 1
  store i8 %2464, i8* %21, align 1
  %2465 = xor i32 %2455, %2423
  %2466 = xor i32 %2465, %2456
  %2467 = lshr i32 %2466, 4
  %2468 = trunc i32 %2467 to i8
  %2469 = and i8 %2468, 1
  store i8 %2469, i8* %27, align 1
  %2470 = icmp eq i32 %2456, 0
  %2471 = zext i1 %2470 to i8
  store i8 %2471, i8* %30, align 1
  %2472 = lshr i32 %2456, 31
  %2473 = trunc i32 %2472 to i8
  store i8 %2473, i8* %33, align 1
  %2474 = lshr i32 %2455, 31
  %2475 = xor i32 %2474, %2441
  %2476 = xor i32 %2472, %2441
  %2477 = add nuw nsw i32 %2476, %2475
  %2478 = icmp eq i32 %2477, 2
  %2479 = zext i1 %2478 to i8
  store i8 %2479, i8* %39, align 1
  store i32 %2456, i32* bitcast (%G_0x6d45e8_type* @G_0x6d45e8 to i32*), align 8
  store i64 %2457, i64* %RDX.i2018, align 8
  %2480 = load i64, i64* %.pre149, align 8
  %2481 = load i64, i64* %RBP.i, align 8
  %2482 = add i64 %2481, -80
  %2483 = add i64 %storemerge72, 43
  store i64 %2483, i64* %3, align 8
  %2484 = trunc i64 %2480 to i32
  %2485 = inttoptr i64 %2482 to i32*
  %2486 = load i32, i32* %2485, align 4
  %2487 = sub i32 %2484, %2486
  %2488 = zext i32 %2487 to i64
  store i64 %2488, i64* %.pre149, align 8
  %2489 = lshr i32 %2487, 31
  %2490 = sub i32 %2456, %2487
  %2491 = icmp ult i32 %2456, %2487
  %2492 = zext i1 %2491 to i8
  store i8 %2492, i8* %14, align 1
  %2493 = and i32 %2490, 255
  %2494 = tail call i32 @llvm.ctpop.i32(i32 %2493)
  %2495 = trunc i32 %2494 to i8
  %2496 = and i8 %2495, 1
  %2497 = xor i8 %2496, 1
  store i8 %2497, i8* %21, align 1
  %2498 = xor i32 %2487, %2456
  %2499 = xor i32 %2498, %2490
  %2500 = lshr i32 %2499, 4
  %2501 = trunc i32 %2500 to i8
  %2502 = and i8 %2501, 1
  store i8 %2502, i8* %27, align 1
  %2503 = icmp eq i32 %2490, 0
  %2504 = zext i1 %2503 to i8
  store i8 %2504, i8* %30, align 1
  %2505 = lshr i32 %2490, 31
  %2506 = trunc i32 %2505 to i8
  store i8 %2506, i8* %33, align 1
  %2507 = xor i32 %2489, %2472
  %2508 = xor i32 %2505, %2472
  %2509 = add nuw nsw i32 %2508, %2507
  %2510 = icmp eq i32 %2509, 2
  %2511 = zext i1 %2510 to i8
  store i8 %2511, i8* %39, align 1
  %2512 = icmp ne i8 %2506, 0
  %2513 = xor i1 %2512, %2510
  %.v188 = select i1 %2513, i64 51, i64 130
  %2514 = add i64 %storemerge72, %.v188
  store i64 %2514, i64* %3, align 8
  br i1 %2513, label %block_43c631, label %block_.L_43c680

block_43c631:                                     ; preds = %block_.L_43c5fe
  store i64 0, i64* %.pre149, align 8
  store i8 0, i8* %14, align 1
  store i8 1, i8* %21, align 1
  store i8 1, i8* %30, align 1
  store i8 0, i8* %33, align 1
  store i8 0, i8* %39, align 1
  store i8 0, i8* %27, align 1
  store i64 0, i64* %RCX.i2041, align 8
  %2515 = add i64 %2514, 7
  store i64 %2515, i64* %3, align 8
  %2516 = load i32, i32* %2485, align 4
  %2517 = sub i32 0, %2516
  %2518 = zext i32 %2517 to i64
  %2519 = icmp ne i32 %2516, 0
  %2520 = zext i1 %2519 to i8
  store i8 %2520, i8* %14, align 1
  %2521 = and i32 %2517, 255
  %2522 = tail call i32 @llvm.ctpop.i32(i32 %2521)
  %2523 = trunc i32 %2522 to i8
  %2524 = and i8 %2523, 1
  %2525 = xor i8 %2524, 1
  store i8 %2525, i8* %21, align 1
  %2526 = xor i32 %2516, %2517
  %2527 = lshr i32 %2526, 4
  %2528 = trunc i32 %2527 to i8
  %2529 = and i8 %2528, 1
  store i8 %2529, i8* %27, align 1
  %2530 = icmp eq i32 %2516, 0
  %2531 = zext i1 %2530 to i8
  store i8 %2531, i8* %30, align 1
  %2532 = lshr i32 %2517, 31
  %2533 = trunc i32 %2532 to i8
  store i8 %2533, i8* %33, align 1
  %2534 = lshr i32 %2516, 31
  %2535 = add nuw nsw i32 %2532, %2534
  %2536 = icmp eq i32 %2535, 2
  %2537 = zext i1 %2536 to i8
  store i8 %2537, i8* %39, align 1
  store i32 %2517, i32* bitcast (%G_0x6d45e8_type* @G_0x6d45e8 to i32*), align 8
  store i64 %2518, i64* %RCX.i2041, align 8
  %2538 = add i64 %2481, -40
  %2539 = add i64 %2514, 25
  store i64 %2539, i64* %3, align 8
  %2540 = inttoptr i64 %2538 to i64*
  %2541 = load i64, i64* %2540, align 8
  store i64 %2541, i64* %RDX.i2018, align 8
  %2542 = add i64 %2541, 8
  %2543 = add i64 %2514, 28
  store i64 %2543, i64* %3, align 8
  %2544 = inttoptr i64 %2542 to i32*
  %2545 = load i32, i32* %2544, align 4
  %2546 = sub i32 %2517, %2545
  %2547 = zext i32 %2546 to i64
  store i64 %2547, i64* %RCX.i2041, align 8
  %2548 = icmp ugt i32 %2545, %2517
  %2549 = zext i1 %2548 to i8
  store i8 %2549, i8* %14, align 1
  %2550 = and i32 %2546, 255
  %2551 = tail call i32 @llvm.ctpop.i32(i32 %2550)
  %2552 = trunc i32 %2551 to i8
  %2553 = and i8 %2552, 1
  %2554 = xor i8 %2553, 1
  store i8 %2554, i8* %21, align 1
  %2555 = xor i32 %2545, %2517
  %2556 = xor i32 %2555, %2546
  %2557 = lshr i32 %2556, 4
  %2558 = trunc i32 %2557 to i8
  %2559 = and i8 %2558, 1
  store i8 %2559, i8* %27, align 1
  %2560 = icmp eq i32 %2546, 0
  %2561 = zext i1 %2560 to i8
  store i8 %2561, i8* %30, align 1
  %2562 = lshr i32 %2546, 31
  %2563 = trunc i32 %2562 to i8
  store i8 %2563, i8* %33, align 1
  %2564 = lshr i32 %2545, 31
  %2565 = xor i32 %2564, %2532
  %2566 = xor i32 %2562, %2532
  %2567 = add nuw nsw i32 %2566, %2565
  %2568 = icmp eq i32 %2567, 2
  %2569 = zext i1 %2568 to i8
  store i8 %2569, i8* %39, align 1
  store i32 %2546, i32* bitcast (%G_0x6cd470_type* @G_0x6cd470 to i32*), align 8
  %2570 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*), align 8
  store i64 %2570, i64* %RDX.i2018, align 8
  %2571 = add i64 %2570, 40
  %2572 = add i64 %2514, 46
  store i64 %2572, i64* %3, align 8
  %2573 = inttoptr i64 %2571 to i32*
  %2574 = load i32, i32* %2573, align 4
  %2575 = add i32 %2546, %2574
  %2576 = zext i32 %2575 to i64
  store i64 %2576, i64* %RCX.i2041, align 8
  %2577 = icmp ult i32 %2575, %2574
  %2578 = icmp ult i32 %2575, %2546
  %2579 = or i1 %2577, %2578
  %2580 = zext i1 %2579 to i8
  store i8 %2580, i8* %14, align 1
  %2581 = and i32 %2575, 255
  %2582 = tail call i32 @llvm.ctpop.i32(i32 %2581)
  %2583 = trunc i32 %2582 to i8
  %2584 = and i8 %2583, 1
  %2585 = xor i8 %2584, 1
  store i8 %2585, i8* %21, align 1
  %2586 = xor i32 %2546, %2574
  %2587 = xor i32 %2586, %2575
  %2588 = lshr i32 %2587, 4
  %2589 = trunc i32 %2588 to i8
  %2590 = and i8 %2589, 1
  store i8 %2590, i8* %27, align 1
  %2591 = icmp eq i32 %2575, 0
  %2592 = zext i1 %2591 to i8
  store i8 %2592, i8* %30, align 1
  %2593 = lshr i32 %2575, 31
  %2594 = trunc i32 %2593 to i8
  store i8 %2594, i8* %33, align 1
  %2595 = lshr i32 %2574, 31
  %2596 = xor i32 %2593, %2595
  %2597 = xor i32 %2593, %2562
  %2598 = add nuw nsw i32 %2596, %2597
  %2599 = icmp eq i32 %2598, 2
  %2600 = zext i1 %2599 to i8
  store i8 %2600, i8* %39, align 1
  store i64 %2570, i64* %RDX.i2018, align 8
  %2601 = add i64 %2514, 64
  store i64 %2601, i64* %3, align 8
  store i32 %2575, i32* %2573, align 4
  %2602 = load i64, i64* %.pre149, align 8
  %2603 = load i64, i64* %RBP.i, align 8
  %2604 = add i64 %2603, -80
  %2605 = load i64, i64* %3, align 8
  %2606 = add i64 %2605, 3
  store i64 %2606, i64* %3, align 8
  %2607 = trunc i64 %2602 to i32
  %2608 = inttoptr i64 %2604 to i32*
  %2609 = load i32, i32* %2608, align 4
  %2610 = sub i32 %2607, %2609
  %2611 = zext i32 %2610 to i64
  store i64 %2611, i64* %.pre149, align 8
  %2612 = icmp ult i32 %2607, %2609
  %2613 = zext i1 %2612 to i8
  store i8 %2613, i8* %14, align 1
  %2614 = and i32 %2610, 255
  %2615 = tail call i32 @llvm.ctpop.i32(i32 %2614)
  %2616 = trunc i32 %2615 to i8
  %2617 = and i8 %2616, 1
  %2618 = xor i8 %2617, 1
  store i8 %2618, i8* %21, align 1
  %2619 = xor i32 %2609, %2607
  %2620 = xor i32 %2619, %2610
  %2621 = lshr i32 %2620, 4
  %2622 = trunc i32 %2621 to i8
  %2623 = and i8 %2622, 1
  store i8 %2623, i8* %27, align 1
  %2624 = icmp eq i32 %2610, 0
  %2625 = zext i1 %2624 to i8
  store i8 %2625, i8* %30, align 1
  %2626 = lshr i32 %2610, 31
  %2627 = trunc i32 %2626 to i8
  store i8 %2627, i8* %33, align 1
  %2628 = lshr i32 %2607, 31
  %2629 = lshr i32 %2609, 31
  %2630 = xor i32 %2629, %2628
  %2631 = xor i32 %2626, %2628
  %2632 = add nuw nsw i32 %2631, %2630
  %2633 = icmp eq i32 %2632, 2
  %2634 = zext i1 %2633 to i8
  store i8 %2634, i8* %39, align 1
  %2635 = add i64 %2603, -40
  %2636 = add i64 %2605, 7
  store i64 %2636, i64* %3, align 8
  %2637 = inttoptr i64 %2635 to i64*
  %2638 = load i64, i64* %2637, align 8
  store i64 %2638, i64* %RDX.i2018, align 8
  %2639 = add i64 %2638, 8
  %2640 = add i64 %2605, 10
  store i64 %2640, i64* %3, align 8
  %2641 = inttoptr i64 %2639 to i32*
  store i32 %2610, i32* %2641, align 4
  %2642 = load i64, i64* %3, align 8
  %2643 = add i64 %2642, 160
  br label %block_.L_43c71b

block_.L_43c680:                                  ; preds = %block_.L_43c5fe
  store i64 %2457, i64* %.pre149, align 8
  %2644 = add i64 %2481, -76
  %2645 = add i64 %2514, 10
  store i64 %2645, i64* %3, align 8
  %2646 = inttoptr i64 %2644 to i32*
  %2647 = load i32, i32* %2646, align 4
  %2648 = sub i32 %2456, %2647
  %2649 = icmp ult i32 %2456, %2647
  %2650 = zext i1 %2649 to i8
  store i8 %2650, i8* %14, align 1
  %2651 = and i32 %2648, 255
  %2652 = tail call i32 @llvm.ctpop.i32(i32 %2651)
  %2653 = trunc i32 %2652 to i8
  %2654 = and i8 %2653, 1
  %2655 = xor i8 %2654, 1
  store i8 %2655, i8* %21, align 1
  %2656 = xor i32 %2647, %2456
  %2657 = xor i32 %2656, %2648
  %2658 = lshr i32 %2657, 4
  %2659 = trunc i32 %2658 to i8
  %2660 = and i8 %2659, 1
  store i8 %2660, i8* %27, align 1
  %2661 = icmp eq i32 %2648, 0
  %2662 = zext i1 %2661 to i8
  store i8 %2662, i8* %30, align 1
  %2663 = lshr i32 %2648, 31
  %2664 = trunc i32 %2663 to i8
  store i8 %2664, i8* %33, align 1
  %2665 = lshr i32 %2647, 31
  %2666 = xor i32 %2665, %2472
  %2667 = xor i32 %2663, %2472
  %2668 = add nuw nsw i32 %2667, %2666
  %2669 = icmp eq i32 %2668, 2
  %2670 = zext i1 %2669 to i8
  store i8 %2670, i8* %39, align 1
  %2671 = icmp ne i8 %2664, 0
  %2672 = xor i1 %2671, %2669
  %2673 = or i1 %2661, %2672
  %.v189 = select i1 %2673, i64 91, i64 16
  %2674 = add i64 %2514, %.v189
  store i64 %2674, i64* %3, align 8
  br i1 %2673, label %block_.L_43c6db, label %block_43c690

block_43c690:                                     ; preds = %block_.L_43c680
  %2675 = add i64 %2674, 3
  store i64 %2675, i64* %3, align 8
  %2676 = load i32, i32* %2646, align 4
  %2677 = zext i32 %2676 to i64
  store i32 %2676, i32* bitcast (%G_0x6d45e8_type* @G_0x6d45e8 to i32*), align 8
  store i64 %2677, i64* %.pre149, align 8
  %2678 = add i64 %2481, -40
  %2679 = add i64 %2674, 21
  store i64 %2679, i64* %3, align 8
  %2680 = inttoptr i64 %2678 to i64*
  %2681 = load i64, i64* %2680, align 8
  store i64 %2681, i64* %RCX.i2041, align 8
  %2682 = add i64 %2681, 8
  %2683 = add i64 %2674, 24
  store i64 %2683, i64* %3, align 8
  %2684 = inttoptr i64 %2682 to i32*
  %2685 = load i32, i32* %2684, align 4
  %2686 = sub i32 %2676, %2685
  %2687 = zext i32 %2686 to i64
  store i64 %2687, i64* %.pre149, align 8
  %2688 = icmp ult i32 %2676, %2685
  %2689 = zext i1 %2688 to i8
  store i8 %2689, i8* %14, align 1
  %2690 = and i32 %2686, 255
  %2691 = tail call i32 @llvm.ctpop.i32(i32 %2690)
  %2692 = trunc i32 %2691 to i8
  %2693 = and i8 %2692, 1
  %2694 = xor i8 %2693, 1
  store i8 %2694, i8* %21, align 1
  %2695 = xor i32 %2685, %2676
  %2696 = xor i32 %2695, %2686
  %2697 = lshr i32 %2696, 4
  %2698 = trunc i32 %2697 to i8
  %2699 = and i8 %2698, 1
  store i8 %2699, i8* %27, align 1
  %2700 = icmp eq i32 %2686, 0
  %2701 = zext i1 %2700 to i8
  store i8 %2701, i8* %30, align 1
  %2702 = lshr i32 %2686, 31
  %2703 = trunc i32 %2702 to i8
  store i8 %2703, i8* %33, align 1
  %2704 = lshr i32 %2676, 31
  %2705 = lshr i32 %2685, 31
  %2706 = xor i32 %2705, %2704
  %2707 = xor i32 %2702, %2704
  %2708 = add nuw nsw i32 %2707, %2706
  %2709 = icmp eq i32 %2708, 2
  %2710 = zext i1 %2709 to i8
  store i8 %2710, i8* %39, align 1
  store i32 %2686, i32* bitcast (%G_0x6cd470_type* @G_0x6cd470 to i32*), align 8
  %2711 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*), align 8
  store i64 %2711, i64* %RCX.i2041, align 8
  %2712 = add i64 %2711, 40
  %2713 = add i64 %2674, 42
  store i64 %2713, i64* %3, align 8
  %2714 = inttoptr i64 %2712 to i32*
  %2715 = load i32, i32* %2714, align 4
  %2716 = add i32 %2686, %2715
  %2717 = zext i32 %2716 to i64
  store i64 %2717, i64* %.pre149, align 8
  %2718 = icmp ult i32 %2716, %2715
  %2719 = icmp ult i32 %2716, %2686
  %2720 = or i1 %2718, %2719
  %2721 = zext i1 %2720 to i8
  store i8 %2721, i8* %14, align 1
  %2722 = and i32 %2716, 255
  %2723 = tail call i32 @llvm.ctpop.i32(i32 %2722)
  %2724 = trunc i32 %2723 to i8
  %2725 = and i8 %2724, 1
  %2726 = xor i8 %2725, 1
  store i8 %2726, i8* %21, align 1
  %2727 = xor i32 %2686, %2715
  %2728 = xor i32 %2727, %2716
  %2729 = lshr i32 %2728, 4
  %2730 = trunc i32 %2729 to i8
  %2731 = and i8 %2730, 1
  store i8 %2731, i8* %27, align 1
  %2732 = icmp eq i32 %2716, 0
  %2733 = zext i1 %2732 to i8
  store i8 %2733, i8* %30, align 1
  %2734 = lshr i32 %2716, 31
  %2735 = trunc i32 %2734 to i8
  store i8 %2735, i8* %33, align 1
  %2736 = lshr i32 %2715, 31
  %2737 = xor i32 %2734, %2736
  %2738 = xor i32 %2734, %2702
  %2739 = add nuw nsw i32 %2737, %2738
  %2740 = icmp eq i32 %2739, 2
  %2741 = zext i1 %2740 to i8
  store i8 %2741, i8* %39, align 1
  store i64 %2711, i64* %RCX.i2041, align 8
  %2742 = add i64 %2674, 60
  store i64 %2742, i64* %3, align 8
  store i32 %2716, i32* %2714, align 4
  %2743 = load i64, i64* %RBP.i, align 8
  %2744 = add i64 %2743, -76
  %2745 = load i64, i64* %3, align 8
  %2746 = add i64 %2745, 3
  store i64 %2746, i64* %3, align 8
  %2747 = inttoptr i64 %2744 to i32*
  %2748 = load i32, i32* %2747, align 4
  %2749 = zext i32 %2748 to i64
  store i64 %2749, i64* %.pre149, align 8
  %2750 = add i64 %2743, -40
  %2751 = add i64 %2745, 7
  store i64 %2751, i64* %3, align 8
  %2752 = inttoptr i64 %2750 to i64*
  %2753 = load i64, i64* %2752, align 8
  store i64 %2753, i64* %RCX.i2041, align 8
  %2754 = add i64 %2753, 8
  %2755 = add i64 %2745, 10
  store i64 %2755, i64* %3, align 8
  %2756 = inttoptr i64 %2754 to i32*
  store i32 %2748, i32* %2756, align 4
  %2757 = load i64, i64* %3, align 8
  %2758 = add i64 %2757, 64
  store i64 %2758, i64* %3, align 8
  br label %block_.L_43c716

block_.L_43c6db:                                  ; preds = %block_.L_43c680
  store i64 %2457, i64* %.pre149, align 8
  %2759 = add i64 %2481, -40
  %2760 = add i64 %2674, 11
  store i64 %2760, i64* %3, align 8
  %2761 = inttoptr i64 %2759 to i64*
  %2762 = load i64, i64* %2761, align 8
  store i64 %2762, i64* %RCX.i2041, align 8
  %2763 = add i64 %2762, 8
  %2764 = add i64 %2674, 14
  store i64 %2764, i64* %3, align 8
  %2765 = inttoptr i64 %2763 to i32*
  store i32 %2456, i32* %2765, align 4
  %2766 = load i64, i64* %RBP.i, align 8
  %2767 = add i64 %2766, -40
  %2768 = load i64, i64* %3, align 8
  %2769 = add i64 %2768, 4
  store i64 %2769, i64* %3, align 8
  %2770 = inttoptr i64 %2767 to i64*
  %2771 = load i64, i64* %2770, align 8
  store i64 %2771, i64* %RCX.i2041, align 8
  %2772 = add i64 %2771, 604
  %2773 = add i64 %2768, 10
  store i64 %2773, i64* %3, align 8
  %2774 = inttoptr i64 %2772 to i32*
  %2775 = load i32, i32* %2774, align 4
  %2776 = zext i32 %2775 to i64
  store i64 %2776, i64* %.pre149, align 8
  %2777 = add i64 %2768, 14
  store i64 %2777, i64* %3, align 8
  %2778 = load i64, i64* %2770, align 8
  store i64 %2778, i64* %RCX.i2041, align 8
  %2779 = add i64 %2778, 12
  %2780 = add i64 %2768, 17
  store i64 %2780, i64* %3, align 8
  %2781 = inttoptr i64 %2779 to i32*
  %2782 = load i32, i32* %2781, align 4
  %2783 = sub i32 %2775, %2782
  %2784 = zext i32 %2783 to i64
  store i64 %2784, i64* %.pre149, align 8
  %2785 = icmp ult i32 %2775, %2782
  %2786 = zext i1 %2785 to i8
  store i8 %2786, i8* %14, align 1
  %2787 = and i32 %2783, 255
  %2788 = tail call i32 @llvm.ctpop.i32(i32 %2787)
  %2789 = trunc i32 %2788 to i8
  %2790 = and i8 %2789, 1
  %2791 = xor i8 %2790, 1
  store i8 %2791, i8* %21, align 1
  %2792 = xor i32 %2782, %2775
  %2793 = xor i32 %2792, %2783
  %2794 = lshr i32 %2793, 4
  %2795 = trunc i32 %2794 to i8
  %2796 = and i8 %2795, 1
  store i8 %2796, i8* %27, align 1
  %2797 = icmp eq i32 %2783, 0
  %2798 = zext i1 %2797 to i8
  store i8 %2798, i8* %30, align 1
  %2799 = lshr i32 %2783, 31
  %2800 = trunc i32 %2799 to i8
  store i8 %2800, i8* %33, align 1
  %2801 = lshr i32 %2775, 31
  %2802 = lshr i32 %2782, 31
  %2803 = xor i32 %2802, %2801
  %2804 = xor i32 %2799, %2801
  %2805 = add nuw nsw i32 %2804, %2803
  %2806 = icmp eq i32 %2805, 2
  %2807 = zext i1 %2806 to i8
  store i8 %2807, i8* %39, align 1
  store i32 %2783, i32* bitcast (%G_0x6cd470_type* @G_0x6cd470 to i32*), align 8
  %2808 = add i64 %2768, 28
  store i64 %2808, i64* %3, align 8
  %2809 = load i64, i64* %2770, align 8
  store i64 %2809, i64* %RCX.i2041, align 8
  %2810 = add i64 %2809, 604
  %2811 = add i64 %2768, 34
  store i64 %2811, i64* %3, align 8
  %2812 = inttoptr i64 %2810 to i32*
  %2813 = load i32, i32* %2812, align 4
  %2814 = zext i32 %2813 to i64
  store i64 %2814, i64* %.pre149, align 8
  %2815 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*), align 8
  store i64 %2815, i64* %RCX.i2041, align 8
  %2816 = add i64 %2815, 40
  %2817 = add i64 %2768, 45
  store i64 %2817, i64* %3, align 8
  %2818 = inttoptr i64 %2816 to i32*
  store i32 %2813, i32* %2818, align 4
  %.pre125 = load i64, i64* %3, align 8
  br label %block_.L_43c716

block_.L_43c716:                                  ; preds = %block_.L_43c6db, %block_43c690
  %2819 = phi i64 [ %.pre125, %block_.L_43c6db ], [ %2758, %block_43c690 ]
  %2820 = add i64 %2819, 5
  store i64 %2820, i64* %3, align 8
  br label %block_.L_43c71b

block_.L_43c71b:                                  ; preds = %block_.L_43c716, %block_43c631
  %storemerge73 = phi i64 [ %2643, %block_43c631 ], [ %2820, %block_.L_43c716 ]
  %2821 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*), align 8
  store i64 %2821, i64* %.pre149, align 8
  %2822 = add i64 %2821, 40
  %2823 = add i64 %storemerge73, 11
  store i64 %2823, i64* %3, align 8
  %2824 = inttoptr i64 %2822 to i32*
  %2825 = load i32, i32* %2824, align 4
  %2826 = zext i32 %2825 to i64
  store i64 %2826, i64* %RCX.i2041, align 8
  %2827 = load i64, i64* %RBP.i, align 8
  %2828 = add i64 %2827, -40
  %2829 = add i64 %storemerge73, 15
  store i64 %2829, i64* %3, align 8
  %2830 = inttoptr i64 %2828 to i64*
  %2831 = load i64, i64* %2830, align 8
  %2832 = add i64 %2831, 12
  %2833 = add i64 %storemerge73, 18
  store i64 %2833, i64* %3, align 8
  %2834 = inttoptr i64 %2832 to i32*
  store i32 %2825, i32* %2834, align 4
  %2835 = load i64, i64* %3, align 8
  %2836 = load i64, i64* bitcast (%G_0x6cb8f8_type* @G_0x6cb8f8 to i64*), align 8
  store i64 %2836, i64* %.pre149, align 8
  %2837 = add i64 %2836, 2884
  %2838 = add i64 %2835, 15
  store i64 %2838, i64* %3, align 8
  %2839 = inttoptr i64 %2837 to i32*
  %2840 = load i32, i32* %2839, align 4
  store i8 0, i8* %14, align 1
  %2841 = and i32 %2840, 255
  %2842 = tail call i32 @llvm.ctpop.i32(i32 %2841)
  %2843 = trunc i32 %2842 to i8
  %2844 = and i8 %2843, 1
  %2845 = xor i8 %2844, 1
  store i8 %2845, i8* %21, align 1
  store i8 0, i8* %27, align 1
  %2846 = icmp eq i32 %2840, 0
  %2847 = zext i1 %2846 to i8
  store i8 %2847, i8* %30, align 1
  %2848 = lshr i32 %2840, 31
  %2849 = trunc i32 %2848 to i8
  store i8 %2849, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %.v190 = select i1 %2846, i64 77, i64 21
  %2850 = add i64 %2835, %.v190
  store i64 %2850, i64* %3, align 8
  %.pre126 = load i64, i64* %RBP.i, align 8
  br i1 %2846, label %block_.L_43c77a, label %block_43c742

block_43c742:                                     ; preds = %block_.L_43c71b
  %2851 = add i64 %.pre126, -40
  %2852 = add i64 %2850, 4
  store i64 %2852, i64* %3, align 8
  %2853 = inttoptr i64 %2851 to i64*
  %2854 = load i64, i64* %2853, align 8
  store i64 %2854, i64* %.pre149, align 8
  %2855 = add i64 %2854, 8
  %2856 = add i64 %2850, 7
  store i64 %2856, i64* %3, align 8
  %2857 = inttoptr i64 %2855 to i32*
  %2858 = load i32, i32* %2857, align 4
  %2859 = zext i32 %2858 to i64
  store i64 %2859, i64* %RCX.i2041, align 8
  store i32 %2858, i32* bitcast (%G_0x6cd4e4_type* @G_0x6cd4e4 to i32*), align 8
  store i32 %2858, i32* bitcast (%G_0x70e8d0_type* @G_0x70e8d0 to i32*), align 8
  %2860 = add i64 %2850, 25
  store i64 %2860, i64* %3, align 8
  %2861 = load i64, i64* %2853, align 8
  store i64 %2861, i64* %.pre149, align 8
  %2862 = add i64 %2861, 12
  %2863 = add i64 %2850, 28
  store i64 %2863, i64* %3, align 8
  %2864 = inttoptr i64 %2862 to i32*
  %2865 = load i32, i32* %2864, align 4
  %2866 = zext i32 %2865 to i64
  store i64 %2866, i64* %RCX.i2041, align 8
  store i32 %2865, i32* bitcast (%G_0x724740_type* @G_0x724740 to i32*), align 8
  store i32 %2865, i32* bitcast (%G_0x7242f0_type* @G_0x7242f0 to i32*), align 8
  %2867 = add i64 %2850, 46
  store i64 %2867, i64* %3, align 8
  %2868 = load i64, i64* %2853, align 8
  store i64 %2868, i64* %.pre149, align 8
  %2869 = add i64 %2868, 8
  %2870 = add i64 %2850, 49
  store i64 %2870, i64* %3, align 8
  %2871 = inttoptr i64 %2869 to i32*
  %2872 = load i32, i32* %2871, align 4
  %2873 = zext i32 %2872 to i64
  store i64 %2873, i64* %RCX.i2041, align 8
  %2874 = add i64 %2850, 56
  store i64 %2874, i64* %3, align 8
  store i32 %2872, i32* bitcast (%G_0x6cd4e4_type* @G_0x6cd4e4 to i32*), align 8
  br label %block_.L_43c77a

block_.L_43c77a:                                  ; preds = %block_.L_43c71b, %block_43c742
  %2875 = phi i64 [ %2874, %block_43c742 ], [ %2850, %block_.L_43c71b ]
  %2876 = load i32, i32* bitcast (%G_0x6cd470_type* @G_0x6cd470 to i32*), align 8
  %2877 = zext i32 %2876 to i64
  store i64 %2877, i64* %.pre149, align 8
  %2878 = add i64 %.pre126, -40
  %2879 = add i64 %2875, 11
  store i64 %2879, i64* %3, align 8
  %2880 = inttoptr i64 %2878 to i64*
  %2881 = load i64, i64* %2880, align 8
  store i64 %2881, i64* %RCX.i2041, align 8
  %2882 = add i64 %2881, 608
  %2883 = add i64 %2875, 17
  store i64 %2883, i64* %3, align 8
  %2884 = inttoptr i64 %2882 to i32*
  store i32 %2876, i32* %2884, align 4
  %2885 = load i64, i64* %3, align 8
  %2886 = add i64 %2885, 22
  store i64 %2886, i64* %3, align 8
  br label %block_.L_43c7a1

block_.L_43c790:                                  ; preds = %block_.L_43c2ff
  %2887 = add i64 %1778, 4
  store i64 %2887, i64* %3, align 8
  %2888 = load i64, i64* %1763, align 8
  store i64 %2888, i64* %.pre149, align 8
  %2889 = add i64 %2888, 608
  %2890 = add i64 %1778, 10
  store i64 %2890, i64* %3, align 8
  %2891 = inttoptr i64 %2889 to i32*
  %2892 = load i32, i32* %2891, align 4
  %2893 = zext i32 %2892 to i64
  store i64 %2893, i64* %RCX.i2041, align 8
  %2894 = add i64 %1778, 17
  store i64 %2894, i64* %3, align 8
  store i32 %2892, i32* bitcast (%G_0x6cd470_type* @G_0x6cd470 to i32*), align 8
  br label %block_.L_43c7a1

block_.L_43c7a1:                                  ; preds = %block_.L_43c790, %block_.L_43c77a
  %2895 = phi i64 [ %2894, %block_.L_43c790 ], [ %2886, %block_.L_43c77a ]
  %MEMORY.32 = phi %struct.Memory* [ %call2_43bec2, %block_.L_43c790 ], [ %MEMORY.25, %block_.L_43c77a ]
  %2896 = add i64 %2895, 26
  store i64 %2896, i64* %3, align 8
  br label %block_.L_43c7bb

block_.L_43c7a6:                                  ; preds = %block_43c2ea
  store i64 %1744, i64* %.pre149, align 8
  %2897 = add i64 %1744, 40
  %2898 = add i64 %1758, 11
  store i64 %2898, i64* %3, align 8
  %2899 = inttoptr i64 %2897 to i32*
  %2900 = load i32, i32* %2899, align 4
  %2901 = zext i32 %2900 to i64
  store i64 %2901, i64* %RCX.i2041, align 8
  %2902 = load i64, i64* %RBP.i, align 8
  %2903 = add i64 %2902, -40
  %2904 = add i64 %1758, 15
  store i64 %2904, i64* %3, align 8
  %2905 = inttoptr i64 %2903 to i64*
  %2906 = load i64, i64* %2905, align 8
  store i64 %2906, i64* %.pre149, align 8
  %2907 = add i64 %2906, 592
  %2908 = add i64 %1758, 21
  store i64 %2908, i64* %3, align 8
  %2909 = inttoptr i64 %2907 to i32*
  store i32 %2900, i32* %2909, align 4
  %.pre127 = load i64, i64* %3, align 8
  br label %block_.L_43c7bb

block_.L_43c7bb:                                  ; preds = %block_.L_43c7a6, %block_.L_43c7a1
  %2910 = phi i64 [ %2896, %block_.L_43c7a1 ], [ %.pre127, %block_.L_43c7a6 ]
  %MEMORY.33 = phi %struct.Memory* [ %MEMORY.32, %block_.L_43c7a1 ], [ %call2_43bec2, %block_.L_43c7a6 ]
  %2911 = add i64 %2910, 5
  store i64 %2911, i64* %3, align 8
  br label %block_.L_43c7c0

block_.L_43c7c0:                                  ; preds = %block_.L_43bfd6, %block_.L_43c7bb
  %2912 = phi i64 [ %1149, %block_.L_43bfd6 ], [ %2911, %block_.L_43c7bb ]
  %MEMORY.34 = phi %struct.Memory* [ %call2_43bec2, %block_.L_43bfd6 ], [ %MEMORY.33, %block_.L_43c7bb ]
  %2913 = add i64 %2912, 5
  store i64 %2913, i64* %3, align 8
  br label %block_.L_43c7c5

block_.L_43c7c5:                                  ; preds = %block_.L_43c7c0, %block_.L_43bfb4
  %storemerge67 = phi i64 [ %1137, %block_.L_43bfb4 ], [ %2913, %block_.L_43c7c0 ]
  %MEMORY.35 = phi %struct.Memory* [ %call2_43bec2, %block_.L_43bfb4 ], [ %MEMORY.34, %block_.L_43c7c0 ]
  %2914 = add i64 %storemerge67, 5
  store i64 %2914, i64* %3, align 8
  br label %block_.L_43c7ca

block_.L_43c7ca:                                  ; preds = %block_.L_43c7c5, %block_43bf6e
  %storemerge = phi i64 [ %1061, %block_43bf6e ], [ %2914, %block_.L_43c7c5 ]
  %MEMORY.36 = phi %struct.Memory* [ %call2_43bec2, %block_43bf6e ], [ %MEMORY.35, %block_.L_43c7c5 ]
  %2915 = add i64 %storemerge, 253
  store i64 %2915, i64* %3, align 8
  %.pre129 = load i64, i64* %RBP.i, align 8
  br label %block_.L_43c8c7

block_.L_43c7cf:                                  ; preds = %block_.L_43be7e
  %2916 = add i64 %823, 14160
  %2917 = add i64 %821, 15
  store i64 %2917, i64* %3, align 8
  %2918 = inttoptr i64 %2916 to i64*
  %2919 = load i64, i64* %2918, align 8
  %2920 = load i64, i64* %RBP.i, align 8
  %2921 = add i64 %2920, -96
  %2922 = add i64 %821, 19
  store i64 %2922, i64* %3, align 8
  %2923 = inttoptr i64 %2921 to i64*
  store i64 %2919, i64* %2923, align 8
  %2924 = load i64, i64* %3, align 8
  %2925 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*), align 8
  store i64 %2925, i64* %.pre149, align 8
  %2926 = add i64 %2925, 12
  %2927 = add i64 %2924, 11
  store i64 %2927, i64* %3, align 8
  %2928 = inttoptr i64 %2926 to i32*
  %2929 = load i32, i32* %2928, align 4
  %2930 = zext i32 %2929 to i64
  store i64 %2930, i64* %RDI.i2007, align 8
  %2931 = add i64 %2924, -93506
  %2932 = add i64 %2924, 16
  %2933 = load i64, i64* %6, align 8
  %2934 = add i64 %2933, -8
  %2935 = inttoptr i64 %2934 to i64*
  store i64 %2932, i64* %2935, align 8
  store i64 %2934, i64* %6, align 8
  store i64 %2931, i64* %3, align 8
  %call2_43c7ed = tail call %struct.Memory* @sub_425aa0.FmoGetPreviousMBNr(%struct.State* nonnull %0, i64 %2931, %struct.Memory* %call2_43bd2c)
  %2936 = load i64, i64* %RBP.i, align 8
  %2937 = add i64 %2936, -100
  %2938 = load i32, i32* %199, align 4
  %2939 = load i64, i64* %3, align 8
  %2940 = add i64 %2939, 3
  store i64 %2940, i64* %3, align 8
  %2941 = inttoptr i64 %2937 to i32*
  store i32 %2938, i32* %2941, align 4
  %2942 = load i64, i64* %RBP.i, align 8
  %2943 = add i64 %2942, -100
  %2944 = load i64, i64* %3, align 8
  %2945 = add i64 %2944, 4
  store i64 %2945, i64* %3, align 8
  %2946 = inttoptr i64 %2943 to i32*
  %2947 = load i32, i32* %2946, align 4
  %2948 = add i32 %2947, 1
  %2949 = icmp ne i32 %2947, -1
  %2950 = zext i1 %2949 to i8
  store i8 %2950, i8* %14, align 1
  %2951 = and i32 %2948, 255
  %2952 = tail call i32 @llvm.ctpop.i32(i32 %2951)
  %2953 = trunc i32 %2952 to i8
  %2954 = and i8 %2953, 1
  %2955 = xor i8 %2954, 1
  store i8 %2955, i8* %21, align 1
  %2956 = xor i32 %2947, 16
  %2957 = xor i32 %2956, %2948
  %2958 = lshr i32 %2957, 4
  %2959 = trunc i32 %2958 to i8
  %2960 = and i8 %2959, 1
  store i8 %2960, i8* %27, align 1
  %2961 = icmp eq i32 %2948, 0
  %2962 = zext i1 %2961 to i8
  store i8 %2962, i8* %30, align 1
  %2963 = lshr i32 %2948, 31
  %2964 = trunc i32 %2963 to i8
  store i8 %2964, i8* %33, align 1
  %2965 = lshr i32 %2947, 31
  %2966 = xor i32 %2965, 1
  %2967 = xor i32 %2963, %2965
  %2968 = add nuw nsw i32 %2967, %2966
  %2969 = icmp eq i32 %2968, 2
  %2970 = zext i1 %2969 to i8
  store i8 %2970, i8* %39, align 1
  %2971 = icmp ne i8 %2964, 0
  %2972 = xor i1 %2971, %2969
  %2973 = or i1 %2961, %2972
  %.v212 = select i1 %2973, i64 99, i64 10
  %2974 = add i64 %2944, %.v212
  store i64 %2974, i64* %3, align 8
  br i1 %2973, label %block_.L_43c858, label %block_43c7ff

block_43c7ff:                                     ; preds = %block_.L_43c7cf
  %2975 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*), align 8
  store i64 %2975, i64* %.pre149, align 8
  %2976 = add i64 %2975, 14168
  %2977 = add i64 %2974, 15
  store i64 %2977, i64* %3, align 8
  %2978 = inttoptr i64 %2976 to i64*
  %2979 = load i64, i64* %2978, align 8
  store i64 %2979, i64* %.pre149, align 8
  %2980 = add i64 %2974, 19
  store i64 %2980, i64* %3, align 8
  %2981 = load i32, i32* %2946, align 4
  %2982 = sext i32 %2981 to i64
  %2983 = mul nsw i64 %2982, 632
  store i64 %2983, i64* %RCX.i2041, align 8
  %2984 = lshr i64 %2983, 63
  %2985 = add i64 %2983, %2979
  store i64 %2985, i64* %.pre149, align 8
  %2986 = icmp ult i64 %2985, %2979
  %2987 = icmp ult i64 %2985, %2983
  %2988 = or i1 %2986, %2987
  %2989 = zext i1 %2988 to i8
  store i8 %2989, i8* %14, align 1
  %2990 = trunc i64 %2985 to i32
  %2991 = and i32 %2990, 255
  %2992 = tail call i32 @llvm.ctpop.i32(i32 %2991)
  %2993 = trunc i32 %2992 to i8
  %2994 = and i8 %2993, 1
  %2995 = xor i8 %2994, 1
  store i8 %2995, i8* %21, align 1
  %2996 = xor i64 %2983, %2979
  %2997 = xor i64 %2996, %2985
  %2998 = lshr i64 %2997, 4
  %2999 = trunc i64 %2998 to i8
  %3000 = and i8 %2999, 1
  store i8 %3000, i8* %27, align 1
  %3001 = icmp eq i64 %2985, 0
  %3002 = zext i1 %3001 to i8
  store i8 %3002, i8* %30, align 1
  %3003 = lshr i64 %2985, 63
  %3004 = trunc i64 %3003 to i8
  store i8 %3004, i8* %33, align 1
  %3005 = lshr i64 %2979, 63
  %3006 = xor i64 %3003, %3005
  %3007 = xor i64 %3003, %2984
  %3008 = add nuw nsw i64 %3006, %3007
  %3009 = icmp eq i64 %3008, 2
  %3010 = zext i1 %3009 to i8
  store i8 %3010, i8* %39, align 1
  %3011 = add i64 %2985, 12
  %3012 = add i64 %2974, 32
  store i64 %3012, i64* %3, align 8
  %3013 = inttoptr i64 %3011 to i32*
  %3014 = load i32, i32* %3013, align 4
  %3015 = zext i32 %3014 to i64
  store i64 %3015, i64* %RDX.i2018, align 8
  %3016 = add i64 %2942, -40
  %3017 = add i64 %2974, 36
  store i64 %3017, i64* %3, align 8
  %3018 = inttoptr i64 %3016 to i64*
  %3019 = load i64, i64* %3018, align 8
  %3020 = add i64 %3019, 592
  %3021 = add i64 %2974, 42
  store i64 %3021, i64* %3, align 8
  %3022 = inttoptr i64 %3020 to i32*
  store i32 %3014, i32* %3022, align 4
  %3023 = load i64, i64* %3, align 8
  %3024 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*), align 8
  store i64 %3024, i64* %.pre149, align 8
  %3025 = add i64 %3024, 14168
  %3026 = add i64 %3023, 15
  store i64 %3026, i64* %3, align 8
  %3027 = inttoptr i64 %3025 to i64*
  %3028 = load i64, i64* %3027, align 8
  store i64 %3028, i64* %.pre149, align 8
  %3029 = load i64, i64* %RBP.i, align 8
  %3030 = add i64 %3029, -100
  %3031 = add i64 %3023, 19
  store i64 %3031, i64* %3, align 8
  %3032 = inttoptr i64 %3030 to i32*
  %3033 = load i32, i32* %3032, align 4
  %3034 = sext i32 %3033 to i64
  %3035 = mul nsw i64 %3034, 632
  store i64 %3035, i64* %RCX.i2041, align 8
  %3036 = lshr i64 %3035, 63
  %3037 = add i64 %3035, %3028
  store i64 %3037, i64* %.pre149, align 8
  %3038 = icmp ult i64 %3037, %3028
  %3039 = icmp ult i64 %3037, %3035
  %3040 = or i1 %3038, %3039
  %3041 = zext i1 %3040 to i8
  store i8 %3041, i8* %14, align 1
  %3042 = trunc i64 %3037 to i32
  %3043 = and i32 %3042, 255
  %3044 = tail call i32 @llvm.ctpop.i32(i32 %3043)
  %3045 = trunc i32 %3044 to i8
  %3046 = and i8 %3045, 1
  %3047 = xor i8 %3046, 1
  store i8 %3047, i8* %21, align 1
  %3048 = xor i64 %3035, %3028
  %3049 = xor i64 %3048, %3037
  %3050 = lshr i64 %3049, 4
  %3051 = trunc i64 %3050 to i8
  %3052 = and i8 %3051, 1
  store i8 %3052, i8* %27, align 1
  %3053 = icmp eq i64 %3037, 0
  %3054 = zext i1 %3053 to i8
  store i8 %3054, i8* %30, align 1
  %3055 = lshr i64 %3037, 63
  %3056 = trunc i64 %3055 to i8
  store i8 %3056, i8* %33, align 1
  %3057 = lshr i64 %3028, 63
  %3058 = xor i64 %3055, %3057
  %3059 = xor i64 %3055, %3036
  %3060 = add nuw nsw i64 %3058, %3059
  %3061 = icmp eq i64 %3060, 2
  %3062 = zext i1 %3061 to i8
  store i8 %3062, i8* %39, align 1
  %3063 = add i64 %3037, 8
  %3064 = add i64 %3023, 32
  store i64 %3064, i64* %3, align 8
  %3065 = inttoptr i64 %3063 to i32*
  %3066 = load i32, i32* %3065, align 4
  %3067 = zext i32 %3066 to i64
  store i64 %3067, i64* %RDX.i2018, align 8
  %3068 = add i64 %3029, -40
  %3069 = add i64 %3023, 36
  store i64 %3069, i64* %3, align 8
  %3070 = inttoptr i64 %3068 to i64*
  %3071 = load i64, i64* %3070, align 8
  store i64 %3071, i64* %.pre149, align 8
  %3072 = add i64 %3071, 596
  %3073 = add i64 %3023, 42
  store i64 %3073, i64* %3, align 8
  %3074 = inttoptr i64 %3072 to i32*
  store i32 %3066, i32* %3074, align 4
  %3075 = load i64, i64* %3, align 8
  %3076 = add i64 %3075, 36
  store i64 %3076, i64* %3, align 8
  br label %block_.L_43c877

block_.L_43c858:                                  ; preds = %block_.L_43c7cf
  %3077 = add i64 %2942, -96
  %3078 = add i64 %2974, 4
  store i64 %3078, i64* %3, align 8
  %3079 = inttoptr i64 %3077 to i64*
  %3080 = load i64, i64* %3079, align 8
  store i64 %3080, i64* %.pre149, align 8
  %3081 = add i64 %3080, 4
  %3082 = add i64 %2974, 7
  store i64 %3082, i64* %3, align 8
  %3083 = inttoptr i64 %3081 to i32*
  %3084 = load i32, i32* %3083, align 4
  %3085 = zext i32 %3084 to i64
  store i64 %3085, i64* %RCX.i2041, align 8
  %3086 = add i64 %2942, -40
  %3087 = add i64 %2974, 11
  store i64 %3087, i64* %3, align 8
  %3088 = inttoptr i64 %3086 to i64*
  %3089 = load i64, i64* %3088, align 8
  store i64 %3089, i64* %.pre149, align 8
  %3090 = add i64 %3089, 592
  %3091 = add i64 %2974, 17
  store i64 %3091, i64* %3, align 8
  %3092 = inttoptr i64 %3090 to i32*
  store i32 %3084, i32* %3092, align 4
  %3093 = load i64, i64* %RBP.i, align 8
  %3094 = add i64 %3093, -40
  %3095 = load i64, i64* %3, align 8
  %3096 = add i64 %3095, 4
  store i64 %3096, i64* %3, align 8
  %3097 = inttoptr i64 %3094 to i64*
  %3098 = load i64, i64* %3097, align 8
  store i64 %3098, i64* %.pre149, align 8
  %3099 = add i64 %3098, 596
  %3100 = add i64 %3095, 14
  store i64 %3100, i64* %3, align 8
  %3101 = inttoptr i64 %3099 to i32*
  store i32 0, i32* %3101, align 4
  %.pre128 = load i64, i64* %3, align 8
  br label %block_.L_43c877

block_.L_43c877:                                  ; preds = %block_.L_43c858, %block_43c7ff
  %3102 = phi i64 [ %.pre128, %block_.L_43c858 ], [ %3076, %block_43c7ff ]
  %3103 = load i64, i64* %RBP.i, align 8
  %3104 = add i64 %3103, -96
  %3105 = add i64 %3102, 4
  store i64 %3105, i64* %3, align 8
  %3106 = inttoptr i64 %3104 to i64*
  %3107 = load i64, i64* %3106, align 8
  store i64 %3107, i64* %.pre149, align 8
  %3108 = add i64 %3107, 4
  %3109 = add i64 %3102, 7
  store i64 %3109, i64* %3, align 8
  %3110 = inttoptr i64 %3108 to i32*
  %3111 = load i32, i32* %3110, align 4
  %3112 = zext i32 %3111 to i64
  store i64 %3112, i64* %RCX.i2041, align 8
  %3113 = add i64 %3103, -40
  %3114 = add i64 %3102, 11
  store i64 %3114, i64* %3, align 8
  %3115 = inttoptr i64 %3113 to i64*
  %3116 = load i64, i64* %3115, align 8
  store i64 %3116, i64* %.pre149, align 8
  %3117 = add i64 %3116, 12
  %3118 = add i64 %3102, 14
  store i64 %3118, i64* %3, align 8
  %3119 = inttoptr i64 %3117 to i32*
  store i32 %3111, i32* %3119, align 4
  %3120 = load i64, i64* %RBP.i, align 8
  %3121 = add i64 %3120, -40
  %3122 = load i64, i64* %3, align 8
  %3123 = add i64 %3122, 4
  store i64 %3123, i64* %3, align 8
  %3124 = inttoptr i64 %3121 to i64*
  %3125 = load i64, i64* %3124, align 8
  store i64 %3125, i64* %.pre149, align 8
  %3126 = add i64 %3125, 12
  %3127 = add i64 %3122, 7
  store i64 %3127, i64* %3, align 8
  %3128 = inttoptr i64 %3126 to i32*
  %3129 = load i32, i32* %3128, align 4
  %3130 = zext i32 %3129 to i64
  store i64 %3130, i64* %RCX.i2041, align 8
  %3131 = add i64 %3122, 11
  store i64 %3131, i64* %3, align 8
  %3132 = load i64, i64* %3124, align 8
  store i64 %3132, i64* %.pre149, align 8
  %3133 = add i64 %3132, 592
  %3134 = add i64 %3122, 17
  store i64 %3134, i64* %3, align 8
  %3135 = inttoptr i64 %3133 to i32*
  %3136 = load i32, i32* %3135, align 4
  %3137 = sub i32 %3129, %3136
  %3138 = zext i32 %3137 to i64
  store i64 %3138, i64* %RCX.i2041, align 8
  %3139 = icmp ult i32 %3129, %3136
  %3140 = zext i1 %3139 to i8
  store i8 %3140, i8* %14, align 1
  %3141 = and i32 %3137, 255
  %3142 = tail call i32 @llvm.ctpop.i32(i32 %3141)
  %3143 = trunc i32 %3142 to i8
  %3144 = and i8 %3143, 1
  %3145 = xor i8 %3144, 1
  store i8 %3145, i8* %21, align 1
  %3146 = xor i32 %3136, %3129
  %3147 = xor i32 %3146, %3137
  %3148 = lshr i32 %3147, 4
  %3149 = trunc i32 %3148 to i8
  %3150 = and i8 %3149, 1
  store i8 %3150, i8* %27, align 1
  %3151 = icmp eq i32 %3137, 0
  %3152 = zext i1 %3151 to i8
  store i8 %3152, i8* %30, align 1
  %3153 = lshr i32 %3137, 31
  %3154 = trunc i32 %3153 to i8
  store i8 %3154, i8* %33, align 1
  %3155 = lshr i32 %3129, 31
  %3156 = lshr i32 %3136, 31
  %3157 = xor i32 %3156, %3155
  %3158 = xor i32 %3153, %3155
  %3159 = add nuw nsw i32 %3158, %3157
  %3160 = icmp eq i32 %3159, 2
  %3161 = zext i1 %3160 to i8
  store i8 %3161, i8* %39, align 1
  %3162 = add i64 %3122, 21
  store i64 %3162, i64* %3, align 8
  %3163 = load i64, i64* %3124, align 8
  store i64 %3163, i64* %.pre149, align 8
  %3164 = add i64 %3163, 8
  %3165 = add i64 %3122, 24
  store i64 %3165, i64* %3, align 8
  %3166 = inttoptr i64 %3164 to i32*
  store i32 %3137, i32* %3166, align 4
  %3167 = load i64, i64* %RBP.i, align 8
  %3168 = add i64 %3167, -40
  %3169 = load i64, i64* %3, align 8
  %3170 = add i64 %3169, 4
  store i64 %3170, i64* %3, align 8
  %3171 = inttoptr i64 %3168 to i64*
  %3172 = load i64, i64* %3171, align 8
  store i64 %3172, i64* %.pre149, align 8
  %3173 = add i64 %3172, 8
  %3174 = add i64 %3169, 7
  store i64 %3174, i64* %3, align 8
  %3175 = inttoptr i64 %3173 to i32*
  %3176 = load i32, i32* %3175, align 4
  %3177 = zext i32 %3176 to i64
  store i64 %3177, i64* %RCX.i2041, align 8
  store i32 %3176, i32* bitcast (%G_0x6cd4e4_type* @G_0x6cd4e4 to i32*), align 8
  store i32 %3176, i32* bitcast (%G_0x70e8d0_type* @G_0x70e8d0 to i32*), align 8
  %3178 = add i64 %3169, 25
  store i64 %3178, i64* %3, align 8
  %3179 = load i64, i64* %3171, align 8
  store i64 %3179, i64* %.pre149, align 8
  %3180 = add i64 %3179, 12
  %3181 = add i64 %3169, 28
  store i64 %3181, i64* %3, align 8
  %3182 = inttoptr i64 %3180 to i32*
  %3183 = load i32, i32* %3182, align 4
  %3184 = zext i32 %3183 to i64
  store i64 %3184, i64* %RCX.i2041, align 8
  store i32 %3183, i32* bitcast (%G_0x724740_type* @G_0x724740 to i32*), align 8
  %3185 = add i64 %3169, 42
  store i64 %3185, i64* %3, align 8
  store i32 %3183, i32* bitcast (%G_0x7242f0_type* @G_0x7242f0 to i32*), align 8
  br label %block_.L_43c8c7

block_.L_43c8c7:                                  ; preds = %block_.L_43c877, %block_.L_43c7ca
  %3186 = phi i64 [ %3185, %block_.L_43c877 ], [ %2915, %block_.L_43c7ca ]
  %3187 = phi i64 [ %3167, %block_.L_43c877 ], [ %.pre129, %block_.L_43c7ca ]
  %MEMORY.38 = phi %struct.Memory* [ %call2_43c7ed, %block_.L_43c877 ], [ %MEMORY.36, %block_.L_43c7ca ]
  %3188 = add i64 %3187, -40
  %3189 = add i64 %3186, 4
  store i64 %3189, i64* %3, align 8
  %3190 = inttoptr i64 %3188 to i32**
  %3191 = load i32*, i32** %3190, align 8
  %3192 = add i64 %3186, 10
  store i64 %3192, i64* %3, align 8
  store i32 0, i32* %3191, align 4
  %3193 = load i64, i64* %3, align 8
  %3194 = load i64, i64* bitcast (%G_0x6d4690_type* @G_0x6d4690 to i64*), align 8
  store i64 %3194, i64* %.pre149, align 8
  %3195 = add i64 %3194, 220
  %3196 = add i64 %3193, 15
  store i64 %3196, i64* %3, align 8
  %3197 = inttoptr i64 %3195 to i32*
  %3198 = load i32, i32* %3197, align 4
  store i8 0, i8* %14, align 1
  %3199 = and i32 %3198, 255
  %3200 = tail call i32 @llvm.ctpop.i32(i32 %3199)
  %3201 = trunc i32 %3200 to i8
  %3202 = and i8 %3201, 1
  %3203 = xor i8 %3202, 1
  store i8 %3203, i8* %21, align 1
  store i8 0, i8* %27, align 1
  %3204 = icmp eq i32 %3198, 0
  %3205 = zext i1 %3204 to i8
  store i8 %3205, i8* %30, align 1
  %3206 = lshr i32 %3198, 31
  %3207 = trunc i32 %3206 to i8
  store i8 %3207, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %.v169 = select i1 %3204, i64 98, i64 21
  %3208 = add i64 %3193, %.v169
  store i64 %3208, i64* %3, align 8
  br i1 %3204, label %block_.L_43c933, label %block_43c8e6

block_43c8e6:                                     ; preds = %block_.L_43c8c7
  %3209 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*), align 8
  store i64 %3209, i64* %.pre149, align 8
  %3210 = add i64 %3209, 71984
  %3211 = add i64 %3208, 14
  store i64 %3211, i64* %3, align 8
  %3212 = inttoptr i64 %3210 to i32*
  %3213 = load i32, i32* %3212, align 4
  %3214 = zext i32 %3213 to i64
  store i64 %3214, i64* %RCX.i2041, align 8
  %3215 = load i64, i64* %RBP.i, align 8
  %3216 = add i64 %3215, -40
  %3217 = add i64 %3208, 18
  store i64 %3217, i64* %3, align 8
  %3218 = inttoptr i64 %3216 to i64*
  %3219 = load i64, i64* %3218, align 8
  %3220 = add i64 %3219, 612
  %3221 = add i64 %3208, 24
  store i64 %3221, i64* %3, align 8
  %3222 = inttoptr i64 %3220 to i32*
  store i32 %3213, i32* %3222, align 4
  %3223 = load i64, i64* %3, align 8
  %3224 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*), align 8
  store i64 %3224, i64* %.pre149, align 8
  %3225 = add i64 %3224, 71988
  %3226 = add i64 %3223, 14
  store i64 %3226, i64* %3, align 8
  %3227 = inttoptr i64 %3225 to i32*
  %3228 = load i32, i32* %3227, align 4
  %3229 = zext i32 %3228 to i64
  store i64 %3229, i64* %RCX.i2041, align 8
  %3230 = load i64, i64* %RBP.i, align 8
  %3231 = add i64 %3230, -40
  %3232 = add i64 %3223, 18
  store i64 %3232, i64* %3, align 8
  %3233 = inttoptr i64 %3231 to i64*
  %3234 = load i64, i64* %3233, align 8
  %3235 = add i64 %3234, 616
  %3236 = add i64 %3223, 24
  store i64 %3236, i64* %3, align 8
  %3237 = inttoptr i64 %3235 to i32*
  store i32 %3228, i32* %3237, align 4
  %3238 = load i64, i64* %3, align 8
  %3239 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*), align 8
  store i64 %3239, i64* %.pre149, align 8
  %3240 = add i64 %3239, 71992
  %3241 = add i64 %3238, 14
  store i64 %3241, i64* %3, align 8
  %3242 = inttoptr i64 %3240 to i32*
  %3243 = load i32, i32* %3242, align 4
  %3244 = zext i32 %3243 to i64
  store i64 %3244, i64* %RCX.i2041, align 8
  %3245 = load i64, i64* %RBP.i, align 8
  %3246 = add i64 %3245, -40
  %3247 = add i64 %3238, 18
  store i64 %3247, i64* %3, align 8
  %3248 = inttoptr i64 %3246 to i64*
  %3249 = load i64, i64* %3248, align 8
  store i64 %3249, i64* %.pre149, align 8
  %3250 = add i64 %3249, 620
  %3251 = add i64 %3238, 24
  store i64 %3251, i64* %3, align 8
  %3252 = inttoptr i64 %3250 to i32*
  store i32 %3243, i32* %3252, align 4
  %3253 = load i64, i64* %3, align 8
  %3254 = add i64 %3253, 47
  store i64 %3254, i64* %3, align 8
  br label %block_.L_43c95d

block_.L_43c933:                                  ; preds = %block_.L_43c8c7
  %3255 = load i64, i64* %RBP.i, align 8
  %3256 = add i64 %3255, -40
  %3257 = add i64 %3208, 4
  store i64 %3257, i64* %3, align 8
  %3258 = inttoptr i64 %3256 to i64*
  %3259 = load i64, i64* %3258, align 8
  store i64 %3259, i64* %.pre149, align 8
  %3260 = add i64 %3259, 612
  %3261 = add i64 %3208, 14
  store i64 %3261, i64* %3, align 8
  %3262 = inttoptr i64 %3260 to i32*
  store i32 0, i32* %3262, align 4
  %3263 = load i64, i64* %RBP.i, align 8
  %3264 = add i64 %3263, -40
  %3265 = load i64, i64* %3, align 8
  %3266 = add i64 %3265, 4
  store i64 %3266, i64* %3, align 8
  %3267 = inttoptr i64 %3264 to i64*
  %3268 = load i64, i64* %3267, align 8
  store i64 %3268, i64* %.pre149, align 8
  %3269 = add i64 %3268, 616
  %3270 = add i64 %3265, 14
  store i64 %3270, i64* %3, align 8
  %3271 = inttoptr i64 %3269 to i32*
  store i32 0, i32* %3271, align 4
  %3272 = load i64, i64* %RBP.i, align 8
  %3273 = add i64 %3272, -40
  %3274 = load i64, i64* %3, align 8
  %3275 = add i64 %3274, 4
  store i64 %3275, i64* %3, align 8
  %3276 = inttoptr i64 %3273 to i64*
  %3277 = load i64, i64* %3276, align 8
  store i64 %3277, i64* %.pre149, align 8
  %3278 = add i64 %3277, 620
  %3279 = add i64 %3274, 14
  store i64 %3279, i64* %3, align 8
  %3280 = inttoptr i64 %3278 to i32*
  store i32 0, i32* %3280, align 4
  %.pre130 = load i64, i64* %3, align 8
  br label %block_.L_43c95d

block_.L_43c95d:                                  ; preds = %block_.L_43c933, %block_43c8e6
  %3281 = phi i64 [ %.pre130, %block_.L_43c933 ], [ %3254, %block_43c8e6 ]
  store i8 0, i8* %AL.i1984, align 1
  %3282 = add i64 %3281, 54563
  %3283 = add i64 %3281, 7
  %3284 = load i64, i64* %6, align 8
  %3285 = add i64 %3284, -8
  %3286 = inttoptr i64 %3285 to i64*
  store i64 %3283, i64* %3286, align 8
  store i64 %3285, i64* %6, align 8
  store i64 %3282, i64* %3, align 8
  %call2_43c95f = tail call %struct.Memory* @sub_449e80.CheckAvailabilityOfNeighbors(%struct.State* nonnull %0, i64 %3282, %struct.Memory* %MEMORY.38)
  %3287 = load i64, i64* %3, align 8
  %3288 = load i64, i64* bitcast (%G_0x6cb8f8_type* @G_0x6cb8f8 to i64*), align 8
  store i64 %3288, i64* %RCX.i2041, align 8
  %3289 = add i64 %3288, 2356
  %3290 = add i64 %3287, 15
  store i64 %3290, i64* %3, align 8
  %3291 = inttoptr i64 %3289 to i32*
  %3292 = load i32, i32* %3291, align 4
  %3293 = add i32 %3292, -1
  %3294 = icmp eq i32 %3292, 0
  %3295 = zext i1 %3294 to i8
  store i8 %3295, i8* %14, align 1
  %3296 = and i32 %3293, 255
  %3297 = tail call i32 @llvm.ctpop.i32(i32 %3296)
  %3298 = trunc i32 %3297 to i8
  %3299 = and i8 %3298, 1
  %3300 = xor i8 %3299, 1
  store i8 %3300, i8* %21, align 1
  %3301 = xor i32 %3293, %3292
  %3302 = lshr i32 %3301, 4
  %3303 = trunc i32 %3302 to i8
  %3304 = and i8 %3303, 1
  store i8 %3304, i8* %27, align 1
  %3305 = icmp eq i32 %3293, 0
  %3306 = zext i1 %3305 to i8
  store i8 %3306, i8* %30, align 1
  %3307 = lshr i32 %3293, 31
  %3308 = trunc i32 %3307 to i8
  store i8 %3308, i8* %33, align 1
  %3309 = lshr i32 %3292, 31
  %3310 = xor i32 %3307, %3309
  %3311 = add nuw nsw i32 %3310, %3309
  %3312 = icmp eq i32 %3311, 2
  %3313 = zext i1 %3312 to i8
  store i8 %3313, i8* %39, align 1
  %.v170 = select i1 %3305, i64 21, i64 28
  %3314 = add i64 %3287, %.v170
  store i64 %3314, i64* %3, align 8
  br i1 %3305, label %block_43c979, label %block_.L_43c980

block_43c979:                                     ; preds = %block_.L_43c95d
  store i8 0, i8* %AL.i1984, align 1
  %3315 = add i64 %3314, -183033
  %3316 = add i64 %3314, 7
  %3317 = load i64, i64* %6, align 8
  %3318 = add i64 %3317, -8
  %3319 = inttoptr i64 %3318 to i64*
  store i64 %3316, i64* %3319, align 8
  store i64 %3318, i64* %6, align 8
  store i64 %3315, i64* %3, align 8
  %call2_43c97b = tail call %struct.Memory* @sub_40fe80.CheckAvailabilityOfNeighborsCABAC(%struct.State* nonnull %0, i64 %3315, %struct.Memory* %call2_43c95f)
  %.pre131 = load i64, i64* %3, align 8
  br label %block_.L_43c980

block_.L_43c980:                                  ; preds = %block_.L_43c95d, %block_43c979
  %3320 = phi i64 [ %3314, %block_.L_43c95d ], [ %.pre131, %block_43c979 ]
  %MEMORY.40 = phi %struct.Memory* [ %call2_43c95f, %block_.L_43c95d ], [ %call2_43c97b, %block_43c979 ]
  %3321 = load i64, i64* %RBP.i, align 8
  %3322 = add i64 %3321, -24
  %3323 = add i64 %3320, 7
  store i64 %3323, i64* %3, align 8
  %3324 = inttoptr i64 %3322 to i32*
  store i32 0, i32* %3324, align 4
  %.pre132 = load i64, i64* %3, align 8
  br label %block_.L_43c987

block_.L_43c987:                                  ; preds = %block_.L_43ca49, %block_.L_43c980
  %3325 = phi i64 [ %3685, %block_.L_43ca49 ], [ %.pre132, %block_.L_43c980 ]
  %3326 = load i64, i64* %RBP.i, align 8
  %3327 = add i64 %3326, -24
  %3328 = add i64 %3325, 4
  store i64 %3328, i64* %3, align 8
  %3329 = inttoptr i64 %3327 to i32*
  %3330 = load i32, i32* %3329, align 4
  %3331 = add i32 %3330, -2
  %3332 = icmp ult i32 %3330, 2
  %3333 = zext i1 %3332 to i8
  store i8 %3333, i8* %14, align 1
  %3334 = and i32 %3331, 255
  %3335 = tail call i32 @llvm.ctpop.i32(i32 %3334)
  %3336 = trunc i32 %3335 to i8
  %3337 = and i8 %3336, 1
  %3338 = xor i8 %3337, 1
  store i8 %3338, i8* %21, align 1
  %3339 = xor i32 %3331, %3330
  %3340 = lshr i32 %3339, 4
  %3341 = trunc i32 %3340 to i8
  %3342 = and i8 %3341, 1
  store i8 %3342, i8* %27, align 1
  %3343 = icmp eq i32 %3331, 0
  %3344 = zext i1 %3343 to i8
  store i8 %3344, i8* %30, align 1
  %3345 = lshr i32 %3331, 31
  %3346 = trunc i32 %3345 to i8
  store i8 %3346, i8* %33, align 1
  %3347 = lshr i32 %3330, 31
  %3348 = xor i32 %3345, %3347
  %3349 = add nuw nsw i32 %3348, %3347
  %3350 = icmp eq i32 %3349, 2
  %3351 = zext i1 %3350 to i8
  store i8 %3351, i8* %39, align 1
  %3352 = icmp ne i8 %3346, 0
  %3353 = xor i1 %3352, %3350
  %.v = select i1 %3353, i64 10, i64 213
  %3354 = add i64 %3325, %.v
  %3355 = add i64 %3326, -16
  %3356 = add i64 %3354, 7
  store i64 %3356, i64* %3, align 8
  %3357 = inttoptr i64 %3355 to i32*
  store i32 0, i32* %3357, align 4
  %.pre146 = load i64, i64* %3, align 8
  br i1 %3353, label %block_.L_43c998.preheader, label %block_.L_43ca63.preheader

block_.L_43c998.preheader:                        ; preds = %block_.L_43c987
  br label %block_.L_43c998

block_.L_43ca63.preheader:                        ; preds = %block_.L_43c987
  br label %block_.L_43ca63

block_.L_43c998:                                  ; preds = %block_.L_43c998.preheader, %block_.L_43ca36
  %3358 = phi i64 [ %3655, %block_.L_43ca36 ], [ %.pre146, %block_.L_43c998.preheader ]
  %3359 = load i64, i64* %RBP.i, align 8
  %3360 = add i64 %3359, -16
  %3361 = add i64 %3358, 4
  store i64 %3361, i64* %3, align 8
  %3362 = inttoptr i64 %3360 to i32*
  %3363 = load i32, i32* %3362, align 4
  %3364 = add i32 %3363, -4
  %3365 = icmp ult i32 %3363, 4
  %3366 = zext i1 %3365 to i8
  store i8 %3366, i8* %14, align 1
  %3367 = and i32 %3364, 255
  %3368 = tail call i32 @llvm.ctpop.i32(i32 %3367)
  %3369 = trunc i32 %3368 to i8
  %3370 = and i8 %3369, 1
  %3371 = xor i8 %3370, 1
  store i8 %3371, i8* %21, align 1
  %3372 = xor i32 %3364, %3363
  %3373 = lshr i32 %3372, 4
  %3374 = trunc i32 %3373 to i8
  %3375 = and i8 %3374, 1
  store i8 %3375, i8* %27, align 1
  %3376 = icmp eq i32 %3364, 0
  %3377 = zext i1 %3376 to i8
  store i8 %3377, i8* %30, align 1
  %3378 = lshr i32 %3364, 31
  %3379 = trunc i32 %3378 to i8
  store i8 %3379, i8* %33, align 1
  %3380 = lshr i32 %3363, 31
  %3381 = xor i32 %3378, %3380
  %3382 = add nuw nsw i32 %3381, %3380
  %3383 = icmp eq i32 %3382, 2
  %3384 = zext i1 %3383 to i8
  store i8 %3384, i8* %39, align 1
  %3385 = icmp ne i8 %3379, 0
  %3386 = xor i1 %3385, %3383
  %.v158 = select i1 %3386, i64 10, i64 177
  %3387 = add i64 %3358, %.v158
  store i64 %3387, i64* %3, align 8
  br i1 %3386, label %block_43c9a2, label %block_.L_43ca49

block_43c9a2:                                     ; preds = %block_.L_43c998
  %3388 = add i64 %3359, -12
  %3389 = add i64 %3387, 7
  store i64 %3389, i64* %3, align 8
  %3390 = inttoptr i64 %3388 to i32*
  store i32 0, i32* %3390, align 4
  %.pre147 = load i64, i64* %3, align 8
  br label %block_.L_43c9a9

block_.L_43c9a9:                                  ; preds = %block_.L_43ca23, %block_43c9a2
  %3391 = phi i64 [ %3625, %block_.L_43ca23 ], [ %.pre147, %block_43c9a2 ]
  %3392 = load i64, i64* %RBP.i, align 8
  %3393 = add i64 %3392, -12
  %3394 = add i64 %3391, 4
  store i64 %3394, i64* %3, align 8
  %3395 = inttoptr i64 %3393 to i32*
  %3396 = load i32, i32* %3395, align 4
  %3397 = add i32 %3396, -4
  %3398 = icmp ult i32 %3396, 4
  %3399 = zext i1 %3398 to i8
  store i8 %3399, i8* %14, align 1
  %3400 = and i32 %3397, 255
  %3401 = tail call i32 @llvm.ctpop.i32(i32 %3400)
  %3402 = trunc i32 %3401 to i8
  %3403 = and i8 %3402, 1
  %3404 = xor i8 %3403, 1
  store i8 %3404, i8* %21, align 1
  %3405 = xor i32 %3397, %3396
  %3406 = lshr i32 %3405, 4
  %3407 = trunc i32 %3406 to i8
  %3408 = and i8 %3407, 1
  store i8 %3408, i8* %27, align 1
  %3409 = icmp eq i32 %3397, 0
  %3410 = zext i1 %3409 to i8
  store i8 %3410, i8* %30, align 1
  %3411 = lshr i32 %3397, 31
  %3412 = trunc i32 %3411 to i8
  store i8 %3412, i8* %33, align 1
  %3413 = lshr i32 %3396, 31
  %3414 = xor i32 %3411, %3413
  %3415 = add nuw nsw i32 %3414, %3413
  %3416 = icmp eq i32 %3415, 2
  %3417 = zext i1 %3416 to i8
  store i8 %3417, i8* %39, align 1
  %3418 = icmp ne i8 %3412, 0
  %3419 = xor i1 %3418, %3416
  %.v159 = select i1 %3419, i64 10, i64 141
  %3420 = add i64 %3391, %.v159
  store i64 %3420, i64* %3, align 8
  br i1 %3419, label %block_43c9b3, label %block_.L_43ca36

block_43c9b3:                                     ; preds = %block_.L_43c9a9
  %3421 = add i64 %3392, -20
  %3422 = add i64 %3420, 7
  store i64 %3422, i64* %3, align 8
  %3423 = inttoptr i64 %3421 to i32*
  store i32 0, i32* %3423, align 4
  %.pre148 = load i64, i64* %3, align 8
  br label %block_.L_43c9ba

block_.L_43c9ba:                                  ; preds = %block_43c9c4, %block_43c9b3
  %3424 = phi i64 [ %3595, %block_43c9c4 ], [ %.pre148, %block_43c9b3 ]
  %3425 = load i64, i64* %RBP.i, align 8
  %3426 = add i64 %3425, -20
  %3427 = add i64 %3424, 4
  store i64 %3427, i64* %3, align 8
  %3428 = inttoptr i64 %3426 to i32*
  %3429 = load i32, i32* %3428, align 4
  %3430 = add i32 %3429, -2
  %3431 = icmp ult i32 %3429, 2
  %3432 = zext i1 %3431 to i8
  store i8 %3432, i8* %14, align 1
  %3433 = and i32 %3430, 255
  %3434 = tail call i32 @llvm.ctpop.i32(i32 %3433)
  %3435 = trunc i32 %3434 to i8
  %3436 = and i8 %3435, 1
  %3437 = xor i8 %3436, 1
  store i8 %3437, i8* %21, align 1
  %3438 = xor i32 %3430, %3429
  %3439 = lshr i32 %3438, 4
  %3440 = trunc i32 %3439 to i8
  %3441 = and i8 %3440, 1
  store i8 %3441, i8* %27, align 1
  %3442 = icmp eq i32 %3430, 0
  %3443 = zext i1 %3442 to i8
  store i8 %3443, i8* %30, align 1
  %3444 = lshr i32 %3430, 31
  %3445 = trunc i32 %3444 to i8
  store i8 %3445, i8* %33, align 1
  %3446 = lshr i32 %3429, 31
  %3447 = xor i32 %3444, %3446
  %3448 = add nuw nsw i32 %3447, %3446
  %3449 = icmp eq i32 %3448, 2
  %3450 = zext i1 %3449 to i8
  store i8 %3450, i8* %39, align 1
  %3451 = icmp ne i8 %3445, 0
  %3452 = xor i1 %3451, %3449
  %.v160 = select i1 %3452, i64 10, i64 105
  %3453 = add i64 %3424, %.v160
  store i64 %3453, i64* %3, align 8
  br i1 %3452, label %block_43c9c4, label %block_.L_43ca23

block_43c9c4:                                     ; preds = %block_.L_43c9ba
  %3454 = load i64, i64* bitcast (%G_0x70fcf0_type* @G_0x70fcf0 to i64*), align 8
  store i64 %3454, i64* %.pre149, align 8
  %3455 = add i64 %3454, 6504
  %3456 = add i64 %3453, 15
  store i64 %3456, i64* %3, align 8
  %3457 = inttoptr i64 %3455 to i64*
  %3458 = load i64, i64* %3457, align 8
  store i64 %3458, i64* %.pre149, align 8
  %3459 = add i64 %3425, -24
  %3460 = add i64 %3453, 19
  store i64 %3460, i64* %3, align 8
  %3461 = inttoptr i64 %3459 to i32*
  %3462 = load i32, i32* %3461, align 4
  %3463 = sext i32 %3462 to i64
  store i64 %3463, i64* %RCX.i2041, align 8
  %3464 = shl nsw i64 %3463, 3
  %3465 = add i64 %3464, %3458
  %3466 = add i64 %3453, 23
  store i64 %3466, i64* %3, align 8
  %3467 = inttoptr i64 %3465 to i64*
  %3468 = load i64, i64* %3467, align 8
  store i64 %3468, i64* %.pre149, align 8
  %3469 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*), align 8
  store i64 %3469, i64* %RCX.i2041, align 8
  %3470 = add i64 %3469, 144
  %3471 = add i64 %3453, 37
  store i64 %3471, i64* %3, align 8
  %3472 = inttoptr i64 %3470 to i32*
  %3473 = load i32, i32* %3472, align 4
  %3474 = zext i32 %3473 to i64
  store i64 %3474, i64* %RDX.i2018, align 8
  %3475 = add i64 %3425, -12
  %3476 = add i64 %3453, 40
  store i64 %3476, i64* %3, align 8
  %3477 = inttoptr i64 %3475 to i32*
  %3478 = load i32, i32* %3477, align 4
  %3479 = add i32 %3478, %3473
  %3480 = zext i32 %3479 to i64
  store i64 %3480, i64* %RDX.i2018, align 8
  %3481 = icmp ult i32 %3479, %3473
  %3482 = icmp ult i32 %3479, %3478
  %3483 = or i1 %3481, %3482
  %3484 = zext i1 %3483 to i8
  store i8 %3484, i8* %14, align 1
  %3485 = and i32 %3479, 255
  %3486 = tail call i32 @llvm.ctpop.i32(i32 %3485)
  %3487 = trunc i32 %3486 to i8
  %3488 = and i8 %3487, 1
  %3489 = xor i8 %3488, 1
  store i8 %3489, i8* %21, align 1
  %3490 = xor i32 %3478, %3473
  %3491 = xor i32 %3490, %3479
  %3492 = lshr i32 %3491, 4
  %3493 = trunc i32 %3492 to i8
  %3494 = and i8 %3493, 1
  store i8 %3494, i8* %27, align 1
  %3495 = icmp eq i32 %3479, 0
  %3496 = zext i1 %3495 to i8
  store i8 %3496, i8* %30, align 1
  %3497 = lshr i32 %3479, 31
  %3498 = trunc i32 %3497 to i8
  store i8 %3498, i8* %33, align 1
  %3499 = lshr i32 %3473, 31
  %3500 = lshr i32 %3478, 31
  %3501 = xor i32 %3497, %3499
  %3502 = xor i32 %3497, %3500
  %3503 = add nuw nsw i32 %3501, %3502
  %3504 = icmp eq i32 %3503, 2
  %3505 = zext i1 %3504 to i8
  store i8 %3505, i8* %39, align 1
  %3506 = sext i32 %3479 to i64
  store i64 %3506, i64* %RCX.i2041, align 8
  %3507 = shl nsw i64 %3506, 3
  %3508 = add i64 %3468, %3507
  %3509 = add i64 %3453, 47
  store i64 %3509, i64* %3, align 8
  %3510 = inttoptr i64 %3508 to i64*
  %3511 = load i64, i64* %3510, align 8
  store i64 %3511, i64* %.pre149, align 8
  store i64 %3469, i64* %RCX.i2041, align 8
  %3512 = add i64 %3469, 148
  %3513 = add i64 %3453, 61
  store i64 %3513, i64* %3, align 8
  %3514 = inttoptr i64 %3512 to i32*
  %3515 = load i32, i32* %3514, align 4
  %3516 = zext i32 %3515 to i64
  store i64 %3516, i64* %RDX.i2018, align 8
  %3517 = add i64 %3425, -16
  %3518 = add i64 %3453, 64
  store i64 %3518, i64* %3, align 8
  %3519 = inttoptr i64 %3517 to i32*
  %3520 = load i32, i32* %3519, align 4
  %3521 = add i32 %3520, %3515
  %3522 = zext i32 %3521 to i64
  store i64 %3522, i64* %RDX.i2018, align 8
  %3523 = icmp ult i32 %3521, %3515
  %3524 = icmp ult i32 %3521, %3520
  %3525 = or i1 %3523, %3524
  %3526 = zext i1 %3525 to i8
  store i8 %3526, i8* %14, align 1
  %3527 = and i32 %3521, 255
  %3528 = tail call i32 @llvm.ctpop.i32(i32 %3527)
  %3529 = trunc i32 %3528 to i8
  %3530 = and i8 %3529, 1
  %3531 = xor i8 %3530, 1
  store i8 %3531, i8* %21, align 1
  %3532 = xor i32 %3520, %3515
  %3533 = xor i32 %3532, %3521
  %3534 = lshr i32 %3533, 4
  %3535 = trunc i32 %3534 to i8
  %3536 = and i8 %3535, 1
  store i8 %3536, i8* %27, align 1
  %3537 = icmp eq i32 %3521, 0
  %3538 = zext i1 %3537 to i8
  store i8 %3538, i8* %30, align 1
  %3539 = lshr i32 %3521, 31
  %3540 = trunc i32 %3539 to i8
  store i8 %3540, i8* %33, align 1
  %3541 = lshr i32 %3515, 31
  %3542 = lshr i32 %3520, 31
  %3543 = xor i32 %3539, %3541
  %3544 = xor i32 %3539, %3542
  %3545 = add nuw nsw i32 %3543, %3544
  %3546 = icmp eq i32 %3545, 2
  %3547 = zext i1 %3546 to i8
  store i8 %3547, i8* %39, align 1
  %3548 = sext i32 %3521 to i64
  store i64 %3548, i64* %RCX.i2041, align 8
  %3549 = shl nsw i64 %3548, 3
  %3550 = add i64 %3511, %3549
  %3551 = add i64 %3453, 71
  store i64 %3551, i64* %3, align 8
  %3552 = inttoptr i64 %3550 to i64*
  %3553 = load i64, i64* %3552, align 8
  store i64 %3553, i64* %.pre149, align 8
  %3554 = load i64, i64* %RBP.i, align 8
  %3555 = add i64 %3554, -20
  %3556 = add i64 %3453, 75
  store i64 %3556, i64* %3, align 8
  %3557 = inttoptr i64 %3555 to i32*
  %3558 = load i32, i32* %3557, align 4
  %3559 = sext i32 %3558 to i64
  store i64 %3559, i64* %RCX.i2041, align 8
  %3560 = shl nsw i64 %3559, 1
  %3561 = add i64 %3560, %3553
  %3562 = add i64 %3453, 81
  store i64 %3562, i64* %3, align 8
  %3563 = inttoptr i64 %3561 to i16*
  store i16 0, i16* %3563, align 2
  %3564 = load i64, i64* %RBP.i, align 8
  %3565 = add i64 %3564, -20
  %3566 = load i64, i64* %3, align 8
  %3567 = add i64 %3566, 3
  store i64 %3567, i64* %3, align 8
  %3568 = inttoptr i64 %3565 to i32*
  %3569 = load i32, i32* %3568, align 4
  %3570 = add i32 %3569, 1
  %3571 = zext i32 %3570 to i64
  store i64 %3571, i64* %.pre149, align 8
  %3572 = icmp eq i32 %3569, -1
  %3573 = icmp eq i32 %3570, 0
  %3574 = or i1 %3572, %3573
  %3575 = zext i1 %3574 to i8
  store i8 %3575, i8* %14, align 1
  %3576 = and i32 %3570, 255
  %3577 = tail call i32 @llvm.ctpop.i32(i32 %3576)
  %3578 = trunc i32 %3577 to i8
  %3579 = and i8 %3578, 1
  %3580 = xor i8 %3579, 1
  store i8 %3580, i8* %21, align 1
  %3581 = xor i32 %3570, %3569
  %3582 = lshr i32 %3581, 4
  %3583 = trunc i32 %3582 to i8
  %3584 = and i8 %3583, 1
  store i8 %3584, i8* %27, align 1
  %3585 = zext i1 %3573 to i8
  store i8 %3585, i8* %30, align 1
  %3586 = lshr i32 %3570, 31
  %3587 = trunc i32 %3586 to i8
  store i8 %3587, i8* %33, align 1
  %3588 = lshr i32 %3569, 31
  %3589 = xor i32 %3586, %3588
  %3590 = add nuw nsw i32 %3589, %3586
  %3591 = icmp eq i32 %3590, 2
  %3592 = zext i1 %3591 to i8
  store i8 %3592, i8* %39, align 1
  %3593 = add i64 %3566, 9
  store i64 %3593, i64* %3, align 8
  store i32 %3570, i32* %3568, align 4
  %3594 = load i64, i64* %3, align 8
  %3595 = add i64 %3594, -100
  store i64 %3595, i64* %3, align 8
  br label %block_.L_43c9ba

block_.L_43ca23:                                  ; preds = %block_.L_43c9ba
  %3596 = add i64 %3425, -12
  %3597 = add i64 %3453, 8
  store i64 %3597, i64* %3, align 8
  %3598 = inttoptr i64 %3596 to i32*
  %3599 = load i32, i32* %3598, align 4
  %3600 = add i32 %3599, 1
  %3601 = zext i32 %3600 to i64
  store i64 %3601, i64* %.pre149, align 8
  %3602 = icmp eq i32 %3599, -1
  %3603 = icmp eq i32 %3600, 0
  %3604 = or i1 %3602, %3603
  %3605 = zext i1 %3604 to i8
  store i8 %3605, i8* %14, align 1
  %3606 = and i32 %3600, 255
  %3607 = tail call i32 @llvm.ctpop.i32(i32 %3606)
  %3608 = trunc i32 %3607 to i8
  %3609 = and i8 %3608, 1
  %3610 = xor i8 %3609, 1
  store i8 %3610, i8* %21, align 1
  %3611 = xor i32 %3600, %3599
  %3612 = lshr i32 %3611, 4
  %3613 = trunc i32 %3612 to i8
  %3614 = and i8 %3613, 1
  store i8 %3614, i8* %27, align 1
  %3615 = zext i1 %3603 to i8
  store i8 %3615, i8* %30, align 1
  %3616 = lshr i32 %3600, 31
  %3617 = trunc i32 %3616 to i8
  store i8 %3617, i8* %33, align 1
  %3618 = lshr i32 %3599, 31
  %3619 = xor i32 %3616, %3618
  %3620 = add nuw nsw i32 %3619, %3616
  %3621 = icmp eq i32 %3620, 2
  %3622 = zext i1 %3621 to i8
  store i8 %3622, i8* %39, align 1
  %3623 = add i64 %3453, 14
  store i64 %3623, i64* %3, align 8
  store i32 %3600, i32* %3598, align 4
  %3624 = load i64, i64* %3, align 8
  %3625 = add i64 %3624, -136
  store i64 %3625, i64* %3, align 8
  br label %block_.L_43c9a9

block_.L_43ca36:                                  ; preds = %block_.L_43c9a9
  %3626 = add i64 %3392, -16
  %3627 = add i64 %3420, 8
  store i64 %3627, i64* %3, align 8
  %3628 = inttoptr i64 %3626 to i32*
  %3629 = load i32, i32* %3628, align 4
  %3630 = add i32 %3629, 1
  %3631 = zext i32 %3630 to i64
  store i64 %3631, i64* %.pre149, align 8
  %3632 = icmp eq i32 %3629, -1
  %3633 = icmp eq i32 %3630, 0
  %3634 = or i1 %3632, %3633
  %3635 = zext i1 %3634 to i8
  store i8 %3635, i8* %14, align 1
  %3636 = and i32 %3630, 255
  %3637 = tail call i32 @llvm.ctpop.i32(i32 %3636)
  %3638 = trunc i32 %3637 to i8
  %3639 = and i8 %3638, 1
  %3640 = xor i8 %3639, 1
  store i8 %3640, i8* %21, align 1
  %3641 = xor i32 %3630, %3629
  %3642 = lshr i32 %3641, 4
  %3643 = trunc i32 %3642 to i8
  %3644 = and i8 %3643, 1
  store i8 %3644, i8* %27, align 1
  %3645 = zext i1 %3633 to i8
  store i8 %3645, i8* %30, align 1
  %3646 = lshr i32 %3630, 31
  %3647 = trunc i32 %3646 to i8
  store i8 %3647, i8* %33, align 1
  %3648 = lshr i32 %3629, 31
  %3649 = xor i32 %3646, %3648
  %3650 = add nuw nsw i32 %3649, %3646
  %3651 = icmp eq i32 %3650, 2
  %3652 = zext i1 %3651 to i8
  store i8 %3652, i8* %39, align 1
  %3653 = add i64 %3420, 14
  store i64 %3653, i64* %3, align 8
  store i32 %3630, i32* %3628, align 4
  %3654 = load i64, i64* %3, align 8
  %3655 = add i64 %3654, -172
  store i64 %3655, i64* %3, align 8
  br label %block_.L_43c998

block_.L_43ca49:                                  ; preds = %block_.L_43c998
  %3656 = add i64 %3359, -24
  %3657 = add i64 %3387, 8
  store i64 %3657, i64* %3, align 8
  %3658 = inttoptr i64 %3656 to i32*
  %3659 = load i32, i32* %3658, align 4
  %3660 = add i32 %3659, 1
  %3661 = zext i32 %3660 to i64
  store i64 %3661, i64* %.pre149, align 8
  %3662 = icmp eq i32 %3659, -1
  %3663 = icmp eq i32 %3660, 0
  %3664 = or i1 %3662, %3663
  %3665 = zext i1 %3664 to i8
  store i8 %3665, i8* %14, align 1
  %3666 = and i32 %3660, 255
  %3667 = tail call i32 @llvm.ctpop.i32(i32 %3666)
  %3668 = trunc i32 %3667 to i8
  %3669 = and i8 %3668, 1
  %3670 = xor i8 %3669, 1
  store i8 %3670, i8* %21, align 1
  %3671 = xor i32 %3660, %3659
  %3672 = lshr i32 %3671, 4
  %3673 = trunc i32 %3672 to i8
  %3674 = and i8 %3673, 1
  store i8 %3674, i8* %27, align 1
  %3675 = zext i1 %3663 to i8
  store i8 %3675, i8* %30, align 1
  %3676 = lshr i32 %3660, 31
  %3677 = trunc i32 %3676 to i8
  store i8 %3677, i8* %33, align 1
  %3678 = lshr i32 %3659, 31
  %3679 = xor i32 %3676, %3678
  %3680 = add nuw nsw i32 %3679, %3676
  %3681 = icmp eq i32 %3680, 2
  %3682 = zext i1 %3681 to i8
  store i8 %3682, i8* %39, align 1
  %3683 = add i64 %3387, 14
  store i64 %3683, i64* %3, align 8
  store i32 %3660, i32* %3658, align 4
  %3684 = load i64, i64* %3, align 8
  %3685 = add i64 %3684, -208
  store i64 %3685, i64* %3, align 8
  br label %block_.L_43c987

block_.L_43ca63:                                  ; preds = %block_.L_43ca63.preheader, %block_.L_43cb44
  %3686 = phi i64 [ %4071, %block_.L_43cb44 ], [ %.pre146, %block_.L_43ca63.preheader ]
  %3687 = load i64, i64* %RBP.i, align 8
  %3688 = add i64 %3687, -16
  %3689 = add i64 %3686, 4
  store i64 %3689, i64* %3, align 8
  %3690 = inttoptr i64 %3688 to i32*
  %3691 = load i32, i32* %3690, align 4
  %3692 = add i32 %3691, -4
  %3693 = icmp ult i32 %3691, 4
  %3694 = zext i1 %3693 to i8
  store i8 %3694, i8* %14, align 1
  %3695 = and i32 %3692, 255
  %3696 = tail call i32 @llvm.ctpop.i32(i32 %3695)
  %3697 = trunc i32 %3696 to i8
  %3698 = and i8 %3697, 1
  %3699 = xor i8 %3698, 1
  store i8 %3699, i8* %21, align 1
  %3700 = xor i32 %3692, %3691
  %3701 = lshr i32 %3700, 4
  %3702 = trunc i32 %3701 to i8
  %3703 = and i8 %3702, 1
  store i8 %3703, i8* %27, align 1
  %3704 = icmp eq i32 %3692, 0
  %3705 = zext i1 %3704 to i8
  store i8 %3705, i8* %30, align 1
  %3706 = lshr i32 %3692, 31
  %3707 = trunc i32 %3706 to i8
  store i8 %3707, i8* %33, align 1
  %3708 = lshr i32 %3691, 31
  %3709 = xor i32 %3706, %3708
  %3710 = add nuw nsw i32 %3709, %3708
  %3711 = icmp eq i32 %3710, 2
  %3712 = zext i1 %3711 to i8
  store i8 %3712, i8* %39, align 1
  %3713 = icmp ne i8 %3707, 0
  %3714 = xor i1 %3713, %3711
  %.v171 = select i1 %3714, i64 10, i64 244
  %3715 = add i64 %3686, %.v171
  store i64 %3715, i64* %3, align 8
  br i1 %3714, label %block_43ca6d, label %block_.L_43cb57

block_43ca6d:                                     ; preds = %block_.L_43ca63
  %3716 = add i64 %3687, -12
  %3717 = add i64 %3715, 7
  store i64 %3717, i64* %3, align 8
  %3718 = inttoptr i64 %3716 to i32*
  store i32 0, i32* %3718, align 4
  %.pre144 = load i64, i64* %3, align 8
  br label %block_.L_43ca74

block_.L_43ca74:                                  ; preds = %block_.L_43cb31, %block_43ca6d
  %3719 = phi i64 [ %4041, %block_.L_43cb31 ], [ %.pre144, %block_43ca6d ]
  %3720 = load i64, i64* %RBP.i, align 8
  %3721 = add i64 %3720, -12
  %3722 = add i64 %3719, 4
  store i64 %3722, i64* %3, align 8
  %3723 = inttoptr i64 %3721 to i32*
  %3724 = load i32, i32* %3723, align 4
  %3725 = add i32 %3724, -4
  %3726 = icmp ult i32 %3724, 4
  %3727 = zext i1 %3726 to i8
  store i8 %3727, i8* %14, align 1
  %3728 = and i32 %3725, 255
  %3729 = tail call i32 @llvm.ctpop.i32(i32 %3728)
  %3730 = trunc i32 %3729 to i8
  %3731 = and i8 %3730, 1
  %3732 = xor i8 %3731, 1
  store i8 %3732, i8* %21, align 1
  %3733 = xor i32 %3725, %3724
  %3734 = lshr i32 %3733, 4
  %3735 = trunc i32 %3734 to i8
  %3736 = and i8 %3735, 1
  store i8 %3736, i8* %27, align 1
  %3737 = icmp eq i32 %3725, 0
  %3738 = zext i1 %3737 to i8
  store i8 %3738, i8* %30, align 1
  %3739 = lshr i32 %3725, 31
  %3740 = trunc i32 %3739 to i8
  store i8 %3740, i8* %33, align 1
  %3741 = lshr i32 %3724, 31
  %3742 = xor i32 %3739, %3741
  %3743 = add nuw nsw i32 %3742, %3741
  %3744 = icmp eq i32 %3743, 2
  %3745 = zext i1 %3744 to i8
  store i8 %3745, i8* %39, align 1
  %3746 = icmp ne i8 %3740, 0
  %3747 = xor i1 %3746, %3744
  %.v156 = select i1 %3747, i64 10, i64 208
  %3748 = add i64 %3719, %.v156
  store i64 %3748, i64* %3, align 8
  br i1 %3747, label %block_43ca7e, label %block_.L_43cb44

block_43ca7e:                                     ; preds = %block_.L_43ca74
  %3749 = add i64 %3720, -24
  %3750 = add i64 %3748, 7
  store i64 %3750, i64* %3, align 8
  %3751 = inttoptr i64 %3749 to i32*
  store i32 0, i32* %3751, align 4
  %.pre145 = load i64, i64* %3, align 8
  br label %block_.L_43ca85

block_.L_43ca85:                                  ; preds = %block_43ca8f, %block_43ca7e
  %3752 = phi i64 [ %4011, %block_43ca8f ], [ %.pre145, %block_43ca7e ]
  %3753 = load i64, i64* %RBP.i, align 8
  %3754 = add i64 %3753, -24
  %3755 = add i64 %3752, 4
  store i64 %3755, i64* %3, align 8
  %3756 = inttoptr i64 %3754 to i32*
  %3757 = load i32, i32* %3756, align 4
  %3758 = add i32 %3757, -2
  %3759 = icmp ult i32 %3757, 2
  %3760 = zext i1 %3759 to i8
  store i8 %3760, i8* %14, align 1
  %3761 = and i32 %3758, 255
  %3762 = tail call i32 @llvm.ctpop.i32(i32 %3761)
  %3763 = trunc i32 %3762 to i8
  %3764 = and i8 %3763, 1
  %3765 = xor i8 %3764, 1
  store i8 %3765, i8* %21, align 1
  %3766 = xor i32 %3758, %3757
  %3767 = lshr i32 %3766, 4
  %3768 = trunc i32 %3767 to i8
  %3769 = and i8 %3768, 1
  store i8 %3769, i8* %27, align 1
  %3770 = icmp eq i32 %3758, 0
  %3771 = zext i1 %3770 to i8
  store i8 %3771, i8* %30, align 1
  %3772 = lshr i32 %3758, 31
  %3773 = trunc i32 %3772 to i8
  store i8 %3773, i8* %33, align 1
  %3774 = lshr i32 %3757, 31
  %3775 = xor i32 %3772, %3774
  %3776 = add nuw nsw i32 %3775, %3774
  %3777 = icmp eq i32 %3776, 2
  %3778 = zext i1 %3777 to i8
  store i8 %3778, i8* %39, align 1
  %3779 = icmp ne i8 %3773, 0
  %3780 = xor i1 %3779, %3777
  %.v157 = select i1 %3780, i64 10, i64 172
  %3781 = add i64 %3752, %.v157
  store i64 %3781, i64* %3, align 8
  br i1 %3780, label %block_43ca8f, label %block_.L_43cb31

block_43ca8f:                                     ; preds = %block_.L_43ca85
  %3782 = load i64, i64* bitcast (%G_0x70fcf0_type* @G_0x70fcf0 to i64*), align 8
  store i64 %3782, i64* %.pre149, align 8
  %3783 = add i64 %3782, 6480
  %3784 = add i64 %3781, 15
  store i64 %3784, i64* %3, align 8
  %3785 = inttoptr i64 %3783 to i64*
  %3786 = load i64, i64* %3785, align 8
  store i64 %3786, i64* %.pre149, align 8
  %3787 = add i64 %3781, 19
  store i64 %3787, i64* %3, align 8
  %3788 = load i32, i32* %3756, align 4
  %3789 = sext i32 %3788 to i64
  store i64 %3789, i64* %RCX.i2041, align 8
  %3790 = shl nsw i64 %3789, 3
  %3791 = add i64 %3790, %3786
  %3792 = add i64 %3781, 23
  store i64 %3792, i64* %3, align 8
  %3793 = inttoptr i64 %3791 to i64*
  %3794 = load i64, i64* %3793, align 8
  store i64 %3794, i64* %.pre149, align 8
  %3795 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*), align 8
  store i64 %3795, i64* %RCX.i2041, align 8
  %3796 = add i64 %3795, 144
  %3797 = add i64 %3781, 37
  store i64 %3797, i64* %3, align 8
  %3798 = inttoptr i64 %3796 to i32*
  %3799 = load i32, i32* %3798, align 4
  %3800 = zext i32 %3799 to i64
  store i64 %3800, i64* %RDX.i2018, align 8
  %3801 = add i64 %3753, -12
  %3802 = add i64 %3781, 40
  store i64 %3802, i64* %3, align 8
  %3803 = inttoptr i64 %3801 to i32*
  %3804 = load i32, i32* %3803, align 4
  %3805 = add i32 %3804, %3799
  %3806 = zext i32 %3805 to i64
  store i64 %3806, i64* %RDX.i2018, align 8
  %3807 = icmp ult i32 %3805, %3799
  %3808 = icmp ult i32 %3805, %3804
  %3809 = or i1 %3807, %3808
  %3810 = zext i1 %3809 to i8
  store i8 %3810, i8* %14, align 1
  %3811 = and i32 %3805, 255
  %3812 = tail call i32 @llvm.ctpop.i32(i32 %3811)
  %3813 = trunc i32 %3812 to i8
  %3814 = and i8 %3813, 1
  %3815 = xor i8 %3814, 1
  store i8 %3815, i8* %21, align 1
  %3816 = xor i32 %3804, %3799
  %3817 = xor i32 %3816, %3805
  %3818 = lshr i32 %3817, 4
  %3819 = trunc i32 %3818 to i8
  %3820 = and i8 %3819, 1
  store i8 %3820, i8* %27, align 1
  %3821 = icmp eq i32 %3805, 0
  %3822 = zext i1 %3821 to i8
  store i8 %3822, i8* %30, align 1
  %3823 = lshr i32 %3805, 31
  %3824 = trunc i32 %3823 to i8
  store i8 %3824, i8* %33, align 1
  %3825 = lshr i32 %3799, 31
  %3826 = lshr i32 %3804, 31
  %3827 = xor i32 %3823, %3825
  %3828 = xor i32 %3823, %3826
  %3829 = add nuw nsw i32 %3827, %3828
  %3830 = icmp eq i32 %3829, 2
  %3831 = zext i1 %3830 to i8
  store i8 %3831, i8* %39, align 1
  %3832 = sext i32 %3805 to i64
  store i64 %3832, i64* %RCX.i2041, align 8
  %3833 = shl nsw i64 %3832, 3
  %3834 = add i64 %3794, %3833
  %3835 = add i64 %3781, 47
  store i64 %3835, i64* %3, align 8
  %3836 = inttoptr i64 %3834 to i64*
  %3837 = load i64, i64* %3836, align 8
  store i64 %3837, i64* %.pre149, align 8
  store i64 %3795, i64* %RCX.i2041, align 8
  %3838 = add i64 %3795, 148
  %3839 = add i64 %3781, 61
  store i64 %3839, i64* %3, align 8
  %3840 = inttoptr i64 %3838 to i32*
  %3841 = load i32, i32* %3840, align 4
  %3842 = zext i32 %3841 to i64
  store i64 %3842, i64* %RDX.i2018, align 8
  %3843 = add i64 %3753, -16
  %3844 = add i64 %3781, 64
  store i64 %3844, i64* %3, align 8
  %3845 = inttoptr i64 %3843 to i32*
  %3846 = load i32, i32* %3845, align 4
  %3847 = add i32 %3846, %3841
  %3848 = zext i32 %3847 to i64
  store i64 %3848, i64* %RDX.i2018, align 8
  %3849 = icmp ult i32 %3847, %3841
  %3850 = icmp ult i32 %3847, %3846
  %3851 = or i1 %3849, %3850
  %3852 = zext i1 %3851 to i8
  store i8 %3852, i8* %14, align 1
  %3853 = and i32 %3847, 255
  %3854 = tail call i32 @llvm.ctpop.i32(i32 %3853)
  %3855 = trunc i32 %3854 to i8
  %3856 = and i8 %3855, 1
  %3857 = xor i8 %3856, 1
  store i8 %3857, i8* %21, align 1
  %3858 = xor i32 %3846, %3841
  %3859 = xor i32 %3858, %3847
  %3860 = lshr i32 %3859, 4
  %3861 = trunc i32 %3860 to i8
  %3862 = and i8 %3861, 1
  store i8 %3862, i8* %27, align 1
  %3863 = icmp eq i32 %3847, 0
  %3864 = zext i1 %3863 to i8
  store i8 %3864, i8* %30, align 1
  %3865 = lshr i32 %3847, 31
  %3866 = trunc i32 %3865 to i8
  store i8 %3866, i8* %33, align 1
  %3867 = lshr i32 %3841, 31
  %3868 = lshr i32 %3846, 31
  %3869 = xor i32 %3865, %3867
  %3870 = xor i32 %3865, %3868
  %3871 = add nuw nsw i32 %3869, %3870
  %3872 = icmp eq i32 %3871, 2
  %3873 = zext i1 %3872 to i8
  store i8 %3873, i8* %39, align 1
  %3874 = sext i32 %3847 to i64
  store i64 %3874, i64* %RCX.i2041, align 8
  %3875 = shl nsw i64 %3874, 1
  %3876 = add i64 %3837, %3875
  %3877 = add i64 %3781, 73
  store i64 %3877, i64* %3, align 8
  %3878 = inttoptr i64 %3876 to i16*
  store i16 -1, i16* %3878, align 2
  %3879 = load i64, i64* %3, align 8
  %3880 = load i64, i64* bitcast (%G_0x70fcf0_type* @G_0x70fcf0 to i64*), align 8
  store i64 %3880, i64* %.pre149, align 8
  %3881 = add i64 %3880, 6488
  %3882 = add i64 %3879, 15
  store i64 %3882, i64* %3, align 8
  %3883 = inttoptr i64 %3881 to i64*
  %3884 = load i64, i64* %3883, align 8
  store i64 %3884, i64* %.pre149, align 8
  %3885 = load i64, i64* %RBP.i, align 8
  %3886 = add i64 %3885, -24
  %3887 = add i64 %3879, 19
  store i64 %3887, i64* %3, align 8
  %3888 = inttoptr i64 %3886 to i32*
  %3889 = load i32, i32* %3888, align 4
  %3890 = sext i32 %3889 to i64
  store i64 %3890, i64* %RCX.i2041, align 8
  %3891 = shl nsw i64 %3890, 3
  %3892 = add i64 %3891, %3884
  %3893 = add i64 %3879, 23
  store i64 %3893, i64* %3, align 8
  %3894 = inttoptr i64 %3892 to i64*
  %3895 = load i64, i64* %3894, align 8
  store i64 %3895, i64* %.pre149, align 8
  %3896 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*), align 8
  store i64 %3896, i64* %RCX.i2041, align 8
  %3897 = add i64 %3896, 144
  %3898 = add i64 %3879, 37
  store i64 %3898, i64* %3, align 8
  %3899 = inttoptr i64 %3897 to i32*
  %3900 = load i32, i32* %3899, align 4
  %3901 = zext i32 %3900 to i64
  store i64 %3901, i64* %RDX.i2018, align 8
  %3902 = add i64 %3885, -12
  %3903 = add i64 %3879, 40
  store i64 %3903, i64* %3, align 8
  %3904 = inttoptr i64 %3902 to i32*
  %3905 = load i32, i32* %3904, align 4
  %3906 = add i32 %3905, %3900
  %3907 = zext i32 %3906 to i64
  store i64 %3907, i64* %RDX.i2018, align 8
  %3908 = icmp ult i32 %3906, %3900
  %3909 = icmp ult i32 %3906, %3905
  %3910 = or i1 %3908, %3909
  %3911 = zext i1 %3910 to i8
  store i8 %3911, i8* %14, align 1
  %3912 = and i32 %3906, 255
  %3913 = tail call i32 @llvm.ctpop.i32(i32 %3912)
  %3914 = trunc i32 %3913 to i8
  %3915 = and i8 %3914, 1
  %3916 = xor i8 %3915, 1
  store i8 %3916, i8* %21, align 1
  %3917 = xor i32 %3905, %3900
  %3918 = xor i32 %3917, %3906
  %3919 = lshr i32 %3918, 4
  %3920 = trunc i32 %3919 to i8
  %3921 = and i8 %3920, 1
  store i8 %3921, i8* %27, align 1
  %3922 = icmp eq i32 %3906, 0
  %3923 = zext i1 %3922 to i8
  store i8 %3923, i8* %30, align 1
  %3924 = lshr i32 %3906, 31
  %3925 = trunc i32 %3924 to i8
  store i8 %3925, i8* %33, align 1
  %3926 = lshr i32 %3900, 31
  %3927 = lshr i32 %3905, 31
  %3928 = xor i32 %3924, %3926
  %3929 = xor i32 %3924, %3927
  %3930 = add nuw nsw i32 %3928, %3929
  %3931 = icmp eq i32 %3930, 2
  %3932 = zext i1 %3931 to i8
  store i8 %3932, i8* %39, align 1
  %3933 = sext i32 %3906 to i64
  store i64 %3933, i64* %RCX.i2041, align 8
  %3934 = shl nsw i64 %3933, 3
  %3935 = add i64 %3895, %3934
  %3936 = add i64 %3879, 47
  store i64 %3936, i64* %3, align 8
  %3937 = inttoptr i64 %3935 to i64*
  %3938 = load i64, i64* %3937, align 8
  store i64 %3938, i64* %.pre149, align 8
  store i64 %3896, i64* %RCX.i2041, align 8
  %3939 = add i64 %3896, 148
  %3940 = add i64 %3879, 61
  store i64 %3940, i64* %3, align 8
  %3941 = inttoptr i64 %3939 to i32*
  %3942 = load i32, i32* %3941, align 4
  %3943 = zext i32 %3942 to i64
  store i64 %3943, i64* %RDX.i2018, align 8
  %3944 = add i64 %3885, -16
  %3945 = add i64 %3879, 64
  store i64 %3945, i64* %3, align 8
  %3946 = inttoptr i64 %3944 to i32*
  %3947 = load i32, i32* %3946, align 4
  %3948 = add i32 %3947, %3942
  %3949 = zext i32 %3948 to i64
  store i64 %3949, i64* %RDX.i2018, align 8
  %3950 = icmp ult i32 %3948, %3942
  %3951 = icmp ult i32 %3948, %3947
  %3952 = or i1 %3950, %3951
  %3953 = zext i1 %3952 to i8
  store i8 %3953, i8* %14, align 1
  %3954 = and i32 %3948, 255
  %3955 = tail call i32 @llvm.ctpop.i32(i32 %3954)
  %3956 = trunc i32 %3955 to i8
  %3957 = and i8 %3956, 1
  %3958 = xor i8 %3957, 1
  store i8 %3958, i8* %21, align 1
  %3959 = xor i32 %3947, %3942
  %3960 = xor i32 %3959, %3948
  %3961 = lshr i32 %3960, 4
  %3962 = trunc i32 %3961 to i8
  %3963 = and i8 %3962, 1
  store i8 %3963, i8* %27, align 1
  %3964 = icmp eq i32 %3948, 0
  %3965 = zext i1 %3964 to i8
  store i8 %3965, i8* %30, align 1
  %3966 = lshr i32 %3948, 31
  %3967 = trunc i32 %3966 to i8
  store i8 %3967, i8* %33, align 1
  %3968 = lshr i32 %3942, 31
  %3969 = lshr i32 %3947, 31
  %3970 = xor i32 %3966, %3968
  %3971 = xor i32 %3966, %3969
  %3972 = add nuw nsw i32 %3970, %3971
  %3973 = icmp eq i32 %3972, 2
  %3974 = zext i1 %3973 to i8
  store i8 %3974, i8* %39, align 1
  %3975 = sext i32 %3948 to i64
  store i64 %3975, i64* %RCX.i2041, align 8
  %3976 = shl nsw i64 %3975, 3
  %3977 = add i64 %3938, %3976
  %3978 = add i64 %3879, 75
  store i64 %3978, i64* %3, align 8
  %3979 = inttoptr i64 %3977 to i64*
  store i64 -1, i64* %3979, align 8
  %3980 = load i64, i64* %RBP.i, align 8
  %3981 = add i64 %3980, -24
  %3982 = load i64, i64* %3, align 8
  %3983 = add i64 %3982, 3
  store i64 %3983, i64* %3, align 8
  %3984 = inttoptr i64 %3981 to i32*
  %3985 = load i32, i32* %3984, align 4
  %3986 = add i32 %3985, 1
  %3987 = zext i32 %3986 to i64
  store i64 %3987, i64* %.pre149, align 8
  %3988 = icmp eq i32 %3985, -1
  %3989 = icmp eq i32 %3986, 0
  %3990 = or i1 %3988, %3989
  %3991 = zext i1 %3990 to i8
  store i8 %3991, i8* %14, align 1
  %3992 = and i32 %3986, 255
  %3993 = tail call i32 @llvm.ctpop.i32(i32 %3992)
  %3994 = trunc i32 %3993 to i8
  %3995 = and i8 %3994, 1
  %3996 = xor i8 %3995, 1
  store i8 %3996, i8* %21, align 1
  %3997 = xor i32 %3986, %3985
  %3998 = lshr i32 %3997, 4
  %3999 = trunc i32 %3998 to i8
  %4000 = and i8 %3999, 1
  store i8 %4000, i8* %27, align 1
  %4001 = zext i1 %3989 to i8
  store i8 %4001, i8* %30, align 1
  %4002 = lshr i32 %3986, 31
  %4003 = trunc i32 %4002 to i8
  store i8 %4003, i8* %33, align 1
  %4004 = lshr i32 %3985, 31
  %4005 = xor i32 %4002, %4004
  %4006 = add nuw nsw i32 %4005, %4002
  %4007 = icmp eq i32 %4006, 2
  %4008 = zext i1 %4007 to i8
  store i8 %4008, i8* %39, align 1
  %4009 = add i64 %3982, 9
  store i64 %4009, i64* %3, align 8
  store i32 %3986, i32* %3984, align 4
  %4010 = load i64, i64* %3, align 8
  %4011 = add i64 %4010, -167
  store i64 %4011, i64* %3, align 8
  br label %block_.L_43ca85

block_.L_43cb31:                                  ; preds = %block_.L_43ca85
  %4012 = add i64 %3753, -12
  %4013 = add i64 %3781, 8
  store i64 %4013, i64* %3, align 8
  %4014 = inttoptr i64 %4012 to i32*
  %4015 = load i32, i32* %4014, align 4
  %4016 = add i32 %4015, 1
  %4017 = zext i32 %4016 to i64
  store i64 %4017, i64* %.pre149, align 8
  %4018 = icmp eq i32 %4015, -1
  %4019 = icmp eq i32 %4016, 0
  %4020 = or i1 %4018, %4019
  %4021 = zext i1 %4020 to i8
  store i8 %4021, i8* %14, align 1
  %4022 = and i32 %4016, 255
  %4023 = tail call i32 @llvm.ctpop.i32(i32 %4022)
  %4024 = trunc i32 %4023 to i8
  %4025 = and i8 %4024, 1
  %4026 = xor i8 %4025, 1
  store i8 %4026, i8* %21, align 1
  %4027 = xor i32 %4016, %4015
  %4028 = lshr i32 %4027, 4
  %4029 = trunc i32 %4028 to i8
  %4030 = and i8 %4029, 1
  store i8 %4030, i8* %27, align 1
  %4031 = zext i1 %4019 to i8
  store i8 %4031, i8* %30, align 1
  %4032 = lshr i32 %4016, 31
  %4033 = trunc i32 %4032 to i8
  store i8 %4033, i8* %33, align 1
  %4034 = lshr i32 %4015, 31
  %4035 = xor i32 %4032, %4034
  %4036 = add nuw nsw i32 %4035, %4032
  %4037 = icmp eq i32 %4036, 2
  %4038 = zext i1 %4037 to i8
  store i8 %4038, i8* %39, align 1
  %4039 = add i64 %3781, 14
  store i64 %4039, i64* %3, align 8
  store i32 %4016, i32* %4014, align 4
  %4040 = load i64, i64* %3, align 8
  %4041 = add i64 %4040, -203
  store i64 %4041, i64* %3, align 8
  br label %block_.L_43ca74

block_.L_43cb44:                                  ; preds = %block_.L_43ca74
  %4042 = add i64 %3720, -16
  %4043 = add i64 %3748, 8
  store i64 %4043, i64* %3, align 8
  %4044 = inttoptr i64 %4042 to i32*
  %4045 = load i32, i32* %4044, align 4
  %4046 = add i32 %4045, 1
  %4047 = zext i32 %4046 to i64
  store i64 %4047, i64* %.pre149, align 8
  %4048 = icmp eq i32 %4045, -1
  %4049 = icmp eq i32 %4046, 0
  %4050 = or i1 %4048, %4049
  %4051 = zext i1 %4050 to i8
  store i8 %4051, i8* %14, align 1
  %4052 = and i32 %4046, 255
  %4053 = tail call i32 @llvm.ctpop.i32(i32 %4052)
  %4054 = trunc i32 %4053 to i8
  %4055 = and i8 %4054, 1
  %4056 = xor i8 %4055, 1
  store i8 %4056, i8* %21, align 1
  %4057 = xor i32 %4046, %4045
  %4058 = lshr i32 %4057, 4
  %4059 = trunc i32 %4058 to i8
  %4060 = and i8 %4059, 1
  store i8 %4060, i8* %27, align 1
  %4061 = zext i1 %4049 to i8
  store i8 %4061, i8* %30, align 1
  %4062 = lshr i32 %4046, 31
  %4063 = trunc i32 %4062 to i8
  store i8 %4063, i8* %33, align 1
  %4064 = lshr i32 %4045, 31
  %4065 = xor i32 %4062, %4064
  %4066 = add nuw nsw i32 %4065, %4062
  %4067 = icmp eq i32 %4066, 2
  %4068 = zext i1 %4067 to i8
  store i8 %4068, i8* %39, align 1
  %4069 = add i64 %3748, 14
  store i64 %4069, i64* %3, align 8
  store i32 %4046, i32* %4044, align 4
  %4070 = load i64, i64* %3, align 8
  %4071 = add i64 %4070, -239
  store i64 %4071, i64* %3, align 8
  br label %block_.L_43ca63

block_.L_43cb57:                                  ; preds = %block_.L_43ca63
  %4072 = add i64 %3687, -40
  %4073 = add i64 %3715, 4
  store i64 %4073, i64* %3, align 8
  %4074 = inttoptr i64 %4072 to i64*
  %4075 = load i64, i64* %4074, align 8
  store i64 %4075, i64* %.pre149, align 8
  %4076 = add i64 %4075, 72
  %4077 = add i64 %3715, 11
  store i64 %4077, i64* %3, align 8
  %4078 = inttoptr i64 %4076 to i32*
  store i32 0, i32* %4078, align 4
  %4079 = load i64, i64* %RBP.i, align 8
  %4080 = add i64 %4079, -40
  %4081 = load i64, i64* %3, align 8
  %4082 = add i64 %4081, 4
  store i64 %4082, i64* %3, align 8
  %4083 = inttoptr i64 %4080 to i64*
  %4084 = load i64, i64* %4083, align 8
  store i64 %4084, i64* %.pre149, align 8
  %4085 = add i64 %4084, 464
  %4086 = add i64 %4081, 15
  store i64 %4086, i64* %3, align 8
  %4087 = inttoptr i64 %4085 to i64*
  store i64 0, i64* %4087, align 8
  %4088 = load i64, i64* %RBP.i, align 8
  %4089 = add i64 %4088, -40
  %4090 = load i64, i64* %3, align 8
  %4091 = add i64 %4090, 4
  store i64 %4091, i64* %3, align 8
  %4092 = inttoptr i64 %4089 to i64*
  %4093 = load i64, i64* %4092, align 8
  store i64 %4093, i64* %.pre149, align 8
  %4094 = add i64 %4093, 460
  %4095 = add i64 %4090, 14
  store i64 %4095, i64* %3, align 8
  %4096 = inttoptr i64 %4094 to i32*
  store i32 0, i32* %4096, align 4
  %4097 = load i64, i64* %RBP.i, align 8
  %4098 = add i64 %4097, -24
  %4099 = load i64, i64* %3, align 8
  %4100 = add i64 %4099, 7
  store i64 %4100, i64* %3, align 8
  %4101 = inttoptr i64 %4098 to i32*
  store i32 0, i32* %4101, align 4
  %.pre134 = load i64, i64* %3, align 8
  br label %block_.L_43cb86

block_.L_43cb86:                                  ; preds = %block_.L_43cc2b, %block_.L_43cb57
  %4102 = phi i64 [ %4486, %block_.L_43cc2b ], [ %.pre134, %block_.L_43cb57 ]
  %4103 = load i64, i64* %RBP.i, align 8
  %4104 = add i64 %4103, -24
  %4105 = add i64 %4102, 4
  store i64 %4105, i64* %3, align 8
  %4106 = inttoptr i64 %4104 to i32*
  %4107 = load i32, i32* %4106, align 4
  %4108 = add i32 %4107, -2
  %4109 = icmp ult i32 %4107, 2
  %4110 = zext i1 %4109 to i8
  store i8 %4110, i8* %14, align 1
  %4111 = and i32 %4108, 255
  %4112 = tail call i32 @llvm.ctpop.i32(i32 %4111)
  %4113 = trunc i32 %4112 to i8
  %4114 = and i8 %4113, 1
  %4115 = xor i8 %4114, 1
  store i8 %4115, i8* %21, align 1
  %4116 = xor i32 %4108, %4107
  %4117 = lshr i32 %4116, 4
  %4118 = trunc i32 %4117 to i8
  %4119 = and i8 %4118, 1
  store i8 %4119, i8* %27, align 1
  %4120 = icmp eq i32 %4108, 0
  %4121 = zext i1 %4120 to i8
  store i8 %4121, i8* %30, align 1
  %4122 = lshr i32 %4108, 31
  %4123 = trunc i32 %4122 to i8
  store i8 %4123, i8* %33, align 1
  %4124 = lshr i32 %4107, 31
  %4125 = xor i32 %4122, %4124
  %4126 = add nuw nsw i32 %4125, %4124
  %4127 = icmp eq i32 %4126, 2
  %4128 = zext i1 %4127 to i8
  store i8 %4128, i8* %39, align 1
  %4129 = icmp ne i8 %4123, 0
  %4130 = xor i1 %4129, %4127
  %.v172 = select i1 %4130, i64 10, i64 184
  %4131 = add i64 %4102, %.v172
  store i64 %4131, i64* %3, align 8
  br i1 %4130, label %block_43cb90, label %block_.L_43cc3e

block_43cb90:                                     ; preds = %block_.L_43cb86
  %4132 = add i64 %4103, -16
  %4133 = add i64 %4131, 7
  store i64 %4133, i64* %3, align 8
  %4134 = inttoptr i64 %4132 to i32*
  store i32 0, i32* %4134, align 4
  %.pre141 = load i64, i64* %3, align 8
  br label %block_.L_43cb97

block_.L_43cb97:                                  ; preds = %block_.L_43cc18, %block_43cb90
  %4135 = phi i64 [ %4456, %block_.L_43cc18 ], [ %.pre141, %block_43cb90 ]
  %4136 = load i64, i64* %RBP.i, align 8
  %4137 = add i64 %4136, -16
  %4138 = add i64 %4135, 4
  store i64 %4138, i64* %3, align 8
  %4139 = inttoptr i64 %4137 to i32*
  %4140 = load i32, i32* %4139, align 4
  %4141 = add i32 %4140, -4
  %4142 = icmp ult i32 %4140, 4
  %4143 = zext i1 %4142 to i8
  store i8 %4143, i8* %14, align 1
  %4144 = and i32 %4141, 255
  %4145 = tail call i32 @llvm.ctpop.i32(i32 %4144)
  %4146 = trunc i32 %4145 to i8
  %4147 = and i8 %4146, 1
  %4148 = xor i8 %4147, 1
  store i8 %4148, i8* %21, align 1
  %4149 = xor i32 %4141, %4140
  %4150 = lshr i32 %4149, 4
  %4151 = trunc i32 %4150 to i8
  %4152 = and i8 %4151, 1
  store i8 %4152, i8* %27, align 1
  %4153 = icmp eq i32 %4141, 0
  %4154 = zext i1 %4153 to i8
  store i8 %4154, i8* %30, align 1
  %4155 = lshr i32 %4141, 31
  %4156 = trunc i32 %4155 to i8
  store i8 %4156, i8* %33, align 1
  %4157 = lshr i32 %4140, 31
  %4158 = xor i32 %4155, %4157
  %4159 = add nuw nsw i32 %4158, %4157
  %4160 = icmp eq i32 %4159, 2
  %4161 = zext i1 %4160 to i8
  store i8 %4161, i8* %39, align 1
  %4162 = icmp ne i8 %4156, 0
  %4163 = xor i1 %4162, %4160
  %.v153 = select i1 %4163, i64 10, i64 148
  %4164 = add i64 %4135, %.v153
  store i64 %4164, i64* %3, align 8
  br i1 %4163, label %block_43cba1, label %block_.L_43cc2b

block_43cba1:                                     ; preds = %block_.L_43cb97
  %4165 = add i64 %4136, -12
  %4166 = add i64 %4164, 7
  store i64 %4166, i64* %3, align 8
  %4167 = inttoptr i64 %4165 to i32*
  store i32 0, i32* %4167, align 4
  %.pre142 = load i64, i64* %3, align 8
  br label %block_.L_43cba8

block_.L_43cba8:                                  ; preds = %block_.L_43cc05, %block_43cba1
  %4168 = phi i64 [ %4426, %block_.L_43cc05 ], [ %.pre142, %block_43cba1 ]
  %4169 = load i64, i64* %RBP.i, align 8
  %4170 = add i64 %4169, -12
  %4171 = add i64 %4168, 4
  store i64 %4171, i64* %3, align 8
  %4172 = inttoptr i64 %4170 to i32*
  %4173 = load i32, i32* %4172, align 4
  %4174 = add i32 %4173, -4
  %4175 = icmp ult i32 %4173, 4
  %4176 = zext i1 %4175 to i8
  store i8 %4176, i8* %14, align 1
  %4177 = and i32 %4174, 255
  %4178 = tail call i32 @llvm.ctpop.i32(i32 %4177)
  %4179 = trunc i32 %4178 to i8
  %4180 = and i8 %4179, 1
  %4181 = xor i8 %4180, 1
  store i8 %4181, i8* %21, align 1
  %4182 = xor i32 %4174, %4173
  %4183 = lshr i32 %4182, 4
  %4184 = trunc i32 %4183 to i8
  %4185 = and i8 %4184, 1
  store i8 %4185, i8* %27, align 1
  %4186 = icmp eq i32 %4174, 0
  %4187 = zext i1 %4186 to i8
  store i8 %4187, i8* %30, align 1
  %4188 = lshr i32 %4174, 31
  %4189 = trunc i32 %4188 to i8
  store i8 %4189, i8* %33, align 1
  %4190 = lshr i32 %4173, 31
  %4191 = xor i32 %4188, %4190
  %4192 = add nuw nsw i32 %4191, %4190
  %4193 = icmp eq i32 %4192, 2
  %4194 = zext i1 %4193 to i8
  store i8 %4194, i8* %39, align 1
  %4195 = icmp ne i8 %4189, 0
  %4196 = xor i1 %4195, %4193
  %.v154 = select i1 %4196, i64 10, i64 112
  %4197 = add i64 %4168, %.v154
  store i64 %4197, i64* %3, align 8
  br i1 %4196, label %block_43cbb2, label %block_.L_43cc18

block_43cbb2:                                     ; preds = %block_.L_43cba8
  %4198 = add i64 %4169, -20
  %4199 = add i64 %4197, 7
  store i64 %4199, i64* %3, align 8
  %4200 = inttoptr i64 %4198 to i32*
  store i32 0, i32* %4200, align 4
  %.pre143 = load i64, i64* %3, align 8
  br label %block_.L_43cbb9

block_.L_43cbb9:                                  ; preds = %block_43cbc3, %block_43cbb2
  %4201 = phi i64 [ %4396, %block_43cbc3 ], [ %.pre143, %block_43cbb2 ]
  %4202 = load i64, i64* %RBP.i, align 8
  %4203 = add i64 %4202, -20
  %4204 = add i64 %4201, 4
  store i64 %4204, i64* %3, align 8
  %4205 = inttoptr i64 %4203 to i32*
  %4206 = load i32, i32* %4205, align 4
  %4207 = add i32 %4206, -2
  %4208 = icmp ult i32 %4206, 2
  %4209 = zext i1 %4208 to i8
  store i8 %4209, i8* %14, align 1
  %4210 = and i32 %4207, 255
  %4211 = tail call i32 @llvm.ctpop.i32(i32 %4210)
  %4212 = trunc i32 %4211 to i8
  %4213 = and i8 %4212, 1
  %4214 = xor i8 %4213, 1
  store i8 %4214, i8* %21, align 1
  %4215 = xor i32 %4207, %4206
  %4216 = lshr i32 %4215, 4
  %4217 = trunc i32 %4216 to i8
  %4218 = and i8 %4217, 1
  store i8 %4218, i8* %27, align 1
  %4219 = icmp eq i32 %4207, 0
  %4220 = zext i1 %4219 to i8
  store i8 %4220, i8* %30, align 1
  %4221 = lshr i32 %4207, 31
  %4222 = trunc i32 %4221 to i8
  store i8 %4222, i8* %33, align 1
  %4223 = lshr i32 %4206, 31
  %4224 = xor i32 %4221, %4223
  %4225 = add nuw nsw i32 %4224, %4223
  %4226 = icmp eq i32 %4225, 2
  %4227 = zext i1 %4226 to i8
  store i8 %4227, i8* %39, align 1
  %4228 = icmp ne i8 %4222, 0
  %4229 = xor i1 %4228, %4226
  %.v155 = select i1 %4229, i64 10, i64 76
  %4230 = add i64 %4201, %.v155
  store i64 %4230, i64* %3, align 8
  br i1 %4229, label %block_43cbc3, label %block_.L_43cc05

block_43cbc3:                                     ; preds = %block_.L_43cbb9
  %4231 = add i64 %4202, -40
  %4232 = add i64 %4230, 4
  store i64 %4232, i64* %3, align 8
  %4233 = inttoptr i64 %4231 to i64*
  %4234 = load i64, i64* %4233, align 8
  %4235 = add i64 %4234, 76
  store i64 %4235, i64* %.pre149, align 8
  %4236 = icmp ugt i64 %4234, -77
  %4237 = zext i1 %4236 to i8
  store i8 %4237, i8* %14, align 1
  %4238 = trunc i64 %4235 to i32
  %4239 = and i32 %4238, 255
  %4240 = tail call i32 @llvm.ctpop.i32(i32 %4239)
  %4241 = trunc i32 %4240 to i8
  %4242 = and i8 %4241, 1
  %4243 = xor i8 %4242, 1
  store i8 %4243, i8* %21, align 1
  %4244 = xor i64 %4235, %4234
  %4245 = lshr i64 %4244, 4
  %4246 = trunc i64 %4245 to i8
  %4247 = and i8 %4246, 1
  store i8 %4247, i8* %27, align 1
  %4248 = icmp eq i64 %4235, 0
  %4249 = zext i1 %4248 to i8
  store i8 %4249, i8* %30, align 1
  %4250 = lshr i64 %4235, 63
  %4251 = trunc i64 %4250 to i8
  store i8 %4251, i8* %33, align 1
  %4252 = lshr i64 %4234, 63
  %4253 = xor i64 %4250, %4252
  %4254 = add nuw nsw i64 %4253, %4250
  %4255 = icmp eq i64 %4254, 2
  %4256 = zext i1 %4255 to i8
  store i8 %4256, i8* %39, align 1
  %4257 = add i64 %4202, -24
  %4258 = add i64 %4230, 12
  store i64 %4258, i64* %3, align 8
  %4259 = inttoptr i64 %4257 to i32*
  %4260 = load i32, i32* %4259, align 4
  %4261 = sext i32 %4260 to i64
  %4262 = shl nsw i64 %4261, 7
  store i64 %4262, i64* %RCX.i2041, align 8
  %4263 = add i64 %4262, %4235
  store i64 %4263, i64* %.pre149, align 8
  %4264 = icmp ult i64 %4263, %4235
  %4265 = icmp ult i64 %4263, %4262
  %4266 = or i1 %4264, %4265
  %4267 = zext i1 %4266 to i8
  store i8 %4267, i8* %14, align 1
  %4268 = trunc i64 %4263 to i32
  %4269 = and i32 %4268, 255
  %4270 = tail call i32 @llvm.ctpop.i32(i32 %4269)
  %4271 = trunc i32 %4270 to i8
  %4272 = and i8 %4271, 1
  %4273 = xor i8 %4272, 1
  store i8 %4273, i8* %21, align 1
  %4274 = xor i64 %4235, %4263
  %4275 = lshr i64 %4274, 4
  %4276 = trunc i64 %4275 to i8
  %4277 = and i8 %4276, 1
  store i8 %4277, i8* %27, align 1
  %4278 = icmp eq i64 %4263, 0
  %4279 = zext i1 %4278 to i8
  store i8 %4279, i8* %30, align 1
  %4280 = lshr i64 %4263, 63
  %4281 = trunc i64 %4280 to i8
  store i8 %4281, i8* %33, align 1
  %4282 = lshr i64 %4261, 56
  %4283 = and i64 %4282, 1
  %4284 = xor i64 %4280, %4250
  %4285 = xor i64 %4280, %4283
  %4286 = add nuw nsw i64 %4284, %4285
  %4287 = icmp eq i64 %4286, 2
  %4288 = zext i1 %4287 to i8
  store i8 %4288, i8* %39, align 1
  %4289 = load i64, i64* %RBP.i, align 8
  %4290 = add i64 %4289, -16
  %4291 = add i64 %4230, 23
  store i64 %4291, i64* %3, align 8
  %4292 = inttoptr i64 %4290 to i32*
  %4293 = load i32, i32* %4292, align 4
  %4294 = sext i32 %4293 to i64
  %4295 = shl nsw i64 %4294, 5
  store i64 %4295, i64* %RCX.i2041, align 8
  %4296 = add i64 %4295, %4263
  store i64 %4296, i64* %.pre149, align 8
  %4297 = icmp ult i64 %4296, %4263
  %4298 = icmp ult i64 %4296, %4295
  %4299 = or i1 %4297, %4298
  %4300 = zext i1 %4299 to i8
  store i8 %4300, i8* %14, align 1
  %4301 = trunc i64 %4296 to i32
  %4302 = and i32 %4301, 255
  %4303 = tail call i32 @llvm.ctpop.i32(i32 %4302)
  %4304 = trunc i32 %4303 to i8
  %4305 = and i8 %4304, 1
  %4306 = xor i8 %4305, 1
  store i8 %4306, i8* %21, align 1
  %4307 = xor i64 %4263, %4296
  %4308 = lshr i64 %4307, 4
  %4309 = trunc i64 %4308 to i8
  %4310 = and i8 %4309, 1
  store i8 %4310, i8* %27, align 1
  %4311 = icmp eq i64 %4296, 0
  %4312 = zext i1 %4311 to i8
  store i8 %4312, i8* %30, align 1
  %4313 = lshr i64 %4296, 63
  %4314 = trunc i64 %4313 to i8
  store i8 %4314, i8* %33, align 1
  %4315 = lshr i64 %4294, 58
  %4316 = and i64 %4315, 1
  %4317 = xor i64 %4313, %4280
  %4318 = xor i64 %4313, %4316
  %4319 = add nuw nsw i64 %4317, %4318
  %4320 = icmp eq i64 %4319, 2
  %4321 = zext i1 %4320 to i8
  store i8 %4321, i8* %39, align 1
  %4322 = add i64 %4289, -12
  %4323 = add i64 %4230, 34
  store i64 %4323, i64* %3, align 8
  %4324 = inttoptr i64 %4322 to i32*
  %4325 = load i32, i32* %4324, align 4
  %4326 = sext i32 %4325 to i64
  %4327 = shl nsw i64 %4326, 3
  store i64 %4327, i64* %RCX.i2041, align 8
  %4328 = add i64 %4327, %4296
  store i64 %4328, i64* %.pre149, align 8
  %4329 = icmp ult i64 %4328, %4296
  %4330 = icmp ult i64 %4328, %4327
  %4331 = or i1 %4329, %4330
  %4332 = zext i1 %4331 to i8
  store i8 %4332, i8* %14, align 1
  %4333 = trunc i64 %4328 to i32
  %4334 = and i32 %4333, 255
  %4335 = tail call i32 @llvm.ctpop.i32(i32 %4334)
  %4336 = trunc i32 %4335 to i8
  %4337 = and i8 %4336, 1
  %4338 = xor i8 %4337, 1
  store i8 %4338, i8* %21, align 1
  %4339 = xor i64 %4327, %4296
  %4340 = xor i64 %4339, %4328
  %4341 = lshr i64 %4340, 4
  %4342 = trunc i64 %4341 to i8
  %4343 = and i8 %4342, 1
  store i8 %4343, i8* %27, align 1
  %4344 = icmp eq i64 %4328, 0
  %4345 = zext i1 %4344 to i8
  store i8 %4345, i8* %30, align 1
  %4346 = lshr i64 %4328, 63
  %4347 = trunc i64 %4346 to i8
  store i8 %4347, i8* %33, align 1
  %4348 = lshr i64 %4326, 60
  %4349 = and i64 %4348, 1
  %4350 = xor i64 %4346, %4313
  %4351 = xor i64 %4346, %4349
  %4352 = add nuw nsw i64 %4350, %4351
  %4353 = icmp eq i64 %4352, 2
  %4354 = zext i1 %4353 to i8
  store i8 %4354, i8* %39, align 1
  %4355 = load i64, i64* %RBP.i, align 8
  %4356 = add i64 %4355, -20
  %4357 = add i64 %4230, 45
  store i64 %4357, i64* %3, align 8
  %4358 = inttoptr i64 %4356 to i32*
  %4359 = load i32, i32* %4358, align 4
  %4360 = sext i32 %4359 to i64
  store i64 %4360, i64* %RCX.i2041, align 8
  %4361 = shl nsw i64 %4360, 2
  %4362 = add i64 %4361, %4328
  %4363 = add i64 %4230, 52
  store i64 %4363, i64* %3, align 8
  %4364 = inttoptr i64 %4362 to i32*
  store i32 0, i32* %4364, align 4
  %4365 = load i64, i64* %RBP.i, align 8
  %4366 = add i64 %4365, -20
  %4367 = load i64, i64* %3, align 8
  %4368 = add i64 %4367, 3
  store i64 %4368, i64* %3, align 8
  %4369 = inttoptr i64 %4366 to i32*
  %4370 = load i32, i32* %4369, align 4
  %4371 = add i32 %4370, 1
  %4372 = zext i32 %4371 to i64
  store i64 %4372, i64* %.pre149, align 8
  %4373 = icmp eq i32 %4370, -1
  %4374 = icmp eq i32 %4371, 0
  %4375 = or i1 %4373, %4374
  %4376 = zext i1 %4375 to i8
  store i8 %4376, i8* %14, align 1
  %4377 = and i32 %4371, 255
  %4378 = tail call i32 @llvm.ctpop.i32(i32 %4377)
  %4379 = trunc i32 %4378 to i8
  %4380 = and i8 %4379, 1
  %4381 = xor i8 %4380, 1
  store i8 %4381, i8* %21, align 1
  %4382 = xor i32 %4371, %4370
  %4383 = lshr i32 %4382, 4
  %4384 = trunc i32 %4383 to i8
  %4385 = and i8 %4384, 1
  store i8 %4385, i8* %27, align 1
  %4386 = zext i1 %4374 to i8
  store i8 %4386, i8* %30, align 1
  %4387 = lshr i32 %4371, 31
  %4388 = trunc i32 %4387 to i8
  store i8 %4388, i8* %33, align 1
  %4389 = lshr i32 %4370, 31
  %4390 = xor i32 %4387, %4389
  %4391 = add nuw nsw i32 %4390, %4387
  %4392 = icmp eq i32 %4391, 2
  %4393 = zext i1 %4392 to i8
  store i8 %4393, i8* %39, align 1
  %4394 = add i64 %4367, 9
  store i64 %4394, i64* %3, align 8
  store i32 %4371, i32* %4369, align 4
  %4395 = load i64, i64* %3, align 8
  %4396 = add i64 %4395, -71
  store i64 %4396, i64* %3, align 8
  br label %block_.L_43cbb9

block_.L_43cc05:                                  ; preds = %block_.L_43cbb9
  %4397 = add i64 %4202, -12
  %4398 = add i64 %4230, 8
  store i64 %4398, i64* %3, align 8
  %4399 = inttoptr i64 %4397 to i32*
  %4400 = load i32, i32* %4399, align 4
  %4401 = add i32 %4400, 1
  %4402 = zext i32 %4401 to i64
  store i64 %4402, i64* %.pre149, align 8
  %4403 = icmp eq i32 %4400, -1
  %4404 = icmp eq i32 %4401, 0
  %4405 = or i1 %4403, %4404
  %4406 = zext i1 %4405 to i8
  store i8 %4406, i8* %14, align 1
  %4407 = and i32 %4401, 255
  %4408 = tail call i32 @llvm.ctpop.i32(i32 %4407)
  %4409 = trunc i32 %4408 to i8
  %4410 = and i8 %4409, 1
  %4411 = xor i8 %4410, 1
  store i8 %4411, i8* %21, align 1
  %4412 = xor i32 %4401, %4400
  %4413 = lshr i32 %4412, 4
  %4414 = trunc i32 %4413 to i8
  %4415 = and i8 %4414, 1
  store i8 %4415, i8* %27, align 1
  %4416 = zext i1 %4404 to i8
  store i8 %4416, i8* %30, align 1
  %4417 = lshr i32 %4401, 31
  %4418 = trunc i32 %4417 to i8
  store i8 %4418, i8* %33, align 1
  %4419 = lshr i32 %4400, 31
  %4420 = xor i32 %4417, %4419
  %4421 = add nuw nsw i32 %4420, %4417
  %4422 = icmp eq i32 %4421, 2
  %4423 = zext i1 %4422 to i8
  store i8 %4423, i8* %39, align 1
  %4424 = add i64 %4230, 14
  store i64 %4424, i64* %3, align 8
  store i32 %4401, i32* %4399, align 4
  %4425 = load i64, i64* %3, align 8
  %4426 = add i64 %4425, -107
  store i64 %4426, i64* %3, align 8
  br label %block_.L_43cba8

block_.L_43cc18:                                  ; preds = %block_.L_43cba8
  %4427 = add i64 %4169, -16
  %4428 = add i64 %4197, 8
  store i64 %4428, i64* %3, align 8
  %4429 = inttoptr i64 %4427 to i32*
  %4430 = load i32, i32* %4429, align 4
  %4431 = add i32 %4430, 1
  %4432 = zext i32 %4431 to i64
  store i64 %4432, i64* %.pre149, align 8
  %4433 = icmp eq i32 %4430, -1
  %4434 = icmp eq i32 %4431, 0
  %4435 = or i1 %4433, %4434
  %4436 = zext i1 %4435 to i8
  store i8 %4436, i8* %14, align 1
  %4437 = and i32 %4431, 255
  %4438 = tail call i32 @llvm.ctpop.i32(i32 %4437)
  %4439 = trunc i32 %4438 to i8
  %4440 = and i8 %4439, 1
  %4441 = xor i8 %4440, 1
  store i8 %4441, i8* %21, align 1
  %4442 = xor i32 %4431, %4430
  %4443 = lshr i32 %4442, 4
  %4444 = trunc i32 %4443 to i8
  %4445 = and i8 %4444, 1
  store i8 %4445, i8* %27, align 1
  %4446 = zext i1 %4434 to i8
  store i8 %4446, i8* %30, align 1
  %4447 = lshr i32 %4431, 31
  %4448 = trunc i32 %4447 to i8
  store i8 %4448, i8* %33, align 1
  %4449 = lshr i32 %4430, 31
  %4450 = xor i32 %4447, %4449
  %4451 = add nuw nsw i32 %4450, %4447
  %4452 = icmp eq i32 %4451, 2
  %4453 = zext i1 %4452 to i8
  store i8 %4453, i8* %39, align 1
  %4454 = add i64 %4197, 14
  store i64 %4454, i64* %3, align 8
  store i32 %4431, i32* %4429, align 4
  %4455 = load i64, i64* %3, align 8
  %4456 = add i64 %4455, -143
  store i64 %4456, i64* %3, align 8
  br label %block_.L_43cb97

block_.L_43cc2b:                                  ; preds = %block_.L_43cb97
  %4457 = add i64 %4136, -24
  %4458 = add i64 %4164, 8
  store i64 %4458, i64* %3, align 8
  %4459 = inttoptr i64 %4457 to i32*
  %4460 = load i32, i32* %4459, align 4
  %4461 = add i32 %4460, 1
  %4462 = zext i32 %4461 to i64
  store i64 %4462, i64* %.pre149, align 8
  %4463 = icmp eq i32 %4460, -1
  %4464 = icmp eq i32 %4461, 0
  %4465 = or i1 %4463, %4464
  %4466 = zext i1 %4465 to i8
  store i8 %4466, i8* %14, align 1
  %4467 = and i32 %4461, 255
  %4468 = tail call i32 @llvm.ctpop.i32(i32 %4467)
  %4469 = trunc i32 %4468 to i8
  %4470 = and i8 %4469, 1
  %4471 = xor i8 %4470, 1
  store i8 %4471, i8* %21, align 1
  %4472 = xor i32 %4461, %4460
  %4473 = lshr i32 %4472, 4
  %4474 = trunc i32 %4473 to i8
  %4475 = and i8 %4474, 1
  store i8 %4475, i8* %27, align 1
  %4476 = zext i1 %4464 to i8
  store i8 %4476, i8* %30, align 1
  %4477 = lshr i32 %4461, 31
  %4478 = trunc i32 %4477 to i8
  store i8 %4478, i8* %33, align 1
  %4479 = lshr i32 %4460, 31
  %4480 = xor i32 %4477, %4479
  %4481 = add nuw nsw i32 %4480, %4477
  %4482 = icmp eq i32 %4481, 2
  %4483 = zext i1 %4482 to i8
  store i8 %4483, i8* %39, align 1
  %4484 = add i64 %4164, 14
  store i64 %4484, i64* %3, align 8
  store i32 %4461, i32* %4459, align 4
  %4485 = load i64, i64* %3, align 8
  %4486 = add i64 %4485, -179
  store i64 %4486, i64* %3, align 8
  br label %block_.L_43cb86

block_.L_43cc3e:                                  ; preds = %block_.L_43cb86
  %4487 = add i64 %4103, -40
  %4488 = add i64 %4131, 4
  store i64 %4488, i64* %3, align 8
  %4489 = inttoptr i64 %4487 to i64*
  %4490 = load i64, i64* %4489, align 8
  store i64 %4490, i64* %.pre149, align 8
  %4491 = add i64 %4490, 504
  %4492 = add i64 %4131, 15
  store i64 %4492, i64* %3, align 8
  %4493 = inttoptr i64 %4491 to i64*
  store i64 0, i64* %4493, align 8
  %4494 = load i64, i64* %RBP.i, align 8
  %4495 = add i64 %4494, -40
  %4496 = load i64, i64* %3, align 8
  %4497 = add i64 %4496, 4
  store i64 %4497, i64* %3, align 8
  %4498 = inttoptr i64 %4495 to i64*
  %4499 = load i64, i64* %4498, align 8
  store i64 %4499, i64* %.pre149, align 8
  %4500 = add i64 %4499, 524
  %4501 = add i64 %4496, 14
  store i64 %4501, i64* %3, align 8
  %4502 = inttoptr i64 %4500 to i32*
  store i32 0, i32* %4502, align 4
  %4503 = load i64, i64* %RBP.i, align 8
  %4504 = add i64 %4503, -12
  %4505 = load i64, i64* %3, align 8
  %4506 = add i64 %4505, 7
  store i64 %4506, i64* %3, align 8
  %4507 = inttoptr i64 %4504 to i32*
  store i32 0, i32* %4507, align 4
  %.pre135 = load i64, i64* %3, align 8
  br label %block_.L_43cc62

block_.L_43cc62:                                  ; preds = %block_43cc6c, %block_.L_43cc3e
  %4508 = phi i64 [ %4582, %block_43cc6c ], [ %.pre135, %block_.L_43cc3e ]
  %4509 = load i64, i64* %RBP.i, align 8
  %4510 = add i64 %4509, -12
  %4511 = add i64 %4508, 4
  store i64 %4511, i64* %3, align 8
  %4512 = inttoptr i64 %4510 to i32*
  %4513 = load i32, i32* %4512, align 4
  %4514 = add i32 %4513, -16
  %4515 = icmp ult i32 %4513, 16
  %4516 = zext i1 %4515 to i8
  store i8 %4516, i8* %14, align 1
  %4517 = and i32 %4514, 255
  %4518 = tail call i32 @llvm.ctpop.i32(i32 %4517)
  %4519 = trunc i32 %4518 to i8
  %4520 = and i8 %4519, 1
  %4521 = xor i8 %4520, 1
  store i8 %4521, i8* %21, align 1
  %4522 = xor i32 %4513, 16
  %4523 = xor i32 %4522, %4514
  %4524 = lshr i32 %4523, 4
  %4525 = trunc i32 %4524 to i8
  %4526 = and i8 %4525, 1
  store i8 %4526, i8* %27, align 1
  %4527 = icmp eq i32 %4514, 0
  %4528 = zext i1 %4527 to i8
  store i8 %4528, i8* %30, align 1
  %4529 = lshr i32 %4514, 31
  %4530 = trunc i32 %4529 to i8
  store i8 %4530, i8* %33, align 1
  %4531 = lshr i32 %4513, 31
  %4532 = xor i32 %4529, %4531
  %4533 = add nuw nsw i32 %4532, %4531
  %4534 = icmp eq i32 %4533, 2
  %4535 = zext i1 %4534 to i8
  store i8 %4535, i8* %39, align 1
  %4536 = icmp ne i8 %4530, 0
  %4537 = xor i1 %4536, %4534
  %.v173 = select i1 %4537, i64 10, i64 43
  %4538 = add i64 %4508, %.v173
  store i64 %4538, i64* %3, align 8
  br i1 %4537, label %block_43cc6c, label %block_.L_43cc8d

block_43cc6c:                                     ; preds = %block_.L_43cc62
  %4539 = add i64 %4509, -40
  %4540 = add i64 %4538, 4
  store i64 %4540, i64* %3, align 8
  %4541 = inttoptr i64 %4539 to i64*
  %4542 = load i64, i64* %4541, align 8
  store i64 %4542, i64* %.pre149, align 8
  %4543 = add i64 %4538, 8
  store i64 %4543, i64* %3, align 8
  %4544 = load i32, i32* %4512, align 4
  %4545 = sext i32 %4544 to i64
  store i64 %4545, i64* %RCX.i2041, align 8
  %4546 = shl nsw i64 %4545, 2
  %4547 = add i64 %4542, 332
  %4548 = add i64 %4547, %4546
  %4549 = add i64 %4538, 19
  store i64 %4549, i64* %3, align 8
  %4550 = inttoptr i64 %4548 to i32*
  store i32 2, i32* %4550, align 4
  %4551 = load i64, i64* %RBP.i, align 8
  %4552 = add i64 %4551, -12
  %4553 = load i64, i64* %3, align 8
  %4554 = add i64 %4553, 3
  store i64 %4554, i64* %3, align 8
  %4555 = inttoptr i64 %4552 to i32*
  %4556 = load i32, i32* %4555, align 4
  %4557 = add i32 %4556, 1
  %4558 = zext i32 %4557 to i64
  store i64 %4558, i64* %.pre149, align 8
  %4559 = icmp eq i32 %4556, -1
  %4560 = icmp eq i32 %4557, 0
  %4561 = or i1 %4559, %4560
  %4562 = zext i1 %4561 to i8
  store i8 %4562, i8* %14, align 1
  %4563 = and i32 %4557, 255
  %4564 = tail call i32 @llvm.ctpop.i32(i32 %4563)
  %4565 = trunc i32 %4564 to i8
  %4566 = and i8 %4565, 1
  %4567 = xor i8 %4566, 1
  store i8 %4567, i8* %21, align 1
  %4568 = xor i32 %4557, %4556
  %4569 = lshr i32 %4568, 4
  %4570 = trunc i32 %4569 to i8
  %4571 = and i8 %4570, 1
  store i8 %4571, i8* %27, align 1
  %4572 = zext i1 %4560 to i8
  store i8 %4572, i8* %30, align 1
  %4573 = lshr i32 %4557, 31
  %4574 = trunc i32 %4573 to i8
  store i8 %4574, i8* %33, align 1
  %4575 = lshr i32 %4556, 31
  %4576 = xor i32 %4573, %4575
  %4577 = add nuw nsw i32 %4576, %4573
  %4578 = icmp eq i32 %4577, 2
  %4579 = zext i1 %4578 to i8
  store i8 %4579, i8* %39, align 1
  %4580 = add i64 %4553, 9
  store i64 %4580, i64* %3, align 8
  store i32 %4557, i32* %4555, align 4
  %4581 = load i64, i64* %3, align 8
  %4582 = add i64 %4581, -38
  store i64 %4582, i64* %3, align 8
  br label %block_.L_43cc62

block_.L_43cc8d:                                  ; preds = %block_.L_43cc62
  %4583 = add i64 %4538, 7
  store i64 %4583, i64* %3, align 8
  store i32 0, i32* %4512, align 4
  %.pre136 = load i64, i64* %3, align 8
  br label %block_.L_43cc94

block_.L_43cc94:                                  ; preds = %block_43cc9e, %block_.L_43cc8d
  %4584 = phi i64 [ %4658, %block_43cc9e ], [ %.pre136, %block_.L_43cc8d ]
  %4585 = load i64, i64* %RBP.i, align 8
  %4586 = add i64 %4585, -12
  %4587 = add i64 %4584, 4
  store i64 %4587, i64* %3, align 8
  %4588 = inttoptr i64 %4586 to i32*
  %4589 = load i32, i32* %4588, align 4
  %4590 = add i32 %4589, -16
  %4591 = icmp ult i32 %4589, 16
  %4592 = zext i1 %4591 to i8
  store i8 %4592, i8* %14, align 1
  %4593 = and i32 %4590, 255
  %4594 = tail call i32 @llvm.ctpop.i32(i32 %4593)
  %4595 = trunc i32 %4594 to i8
  %4596 = and i8 %4595, 1
  %4597 = xor i8 %4596, 1
  store i8 %4597, i8* %21, align 1
  %4598 = xor i32 %4589, 16
  %4599 = xor i32 %4598, %4590
  %4600 = lshr i32 %4599, 4
  %4601 = trunc i32 %4600 to i8
  %4602 = and i8 %4601, 1
  store i8 %4602, i8* %27, align 1
  %4603 = icmp eq i32 %4590, 0
  %4604 = zext i1 %4603 to i8
  store i8 %4604, i8* %30, align 1
  %4605 = lshr i32 %4590, 31
  %4606 = trunc i32 %4605 to i8
  store i8 %4606, i8* %33, align 1
  %4607 = lshr i32 %4589, 31
  %4608 = xor i32 %4605, %4607
  %4609 = add nuw nsw i32 %4608, %4607
  %4610 = icmp eq i32 %4609, 2
  %4611 = zext i1 %4610 to i8
  store i8 %4611, i8* %39, align 1
  %4612 = icmp ne i8 %4606, 0
  %4613 = xor i1 %4612, %4610
  %.v174 = select i1 %4613, i64 10, i64 43
  %4614 = add i64 %4584, %.v174
  store i64 %4614, i64* %3, align 8
  br i1 %4613, label %block_43cc9e, label %block_.L_43ccbf

block_43cc9e:                                     ; preds = %block_.L_43cc94
  %4615 = add i64 %4585, -40
  %4616 = add i64 %4614, 4
  store i64 %4616, i64* %3, align 8
  %4617 = inttoptr i64 %4615 to i64*
  %4618 = load i64, i64* %4617, align 8
  store i64 %4618, i64* %.pre149, align 8
  %4619 = add i64 %4614, 8
  store i64 %4619, i64* %3, align 8
  %4620 = load i32, i32* %4588, align 4
  %4621 = sext i32 %4620 to i64
  store i64 %4621, i64* %RCX.i2041, align 8
  %4622 = shl nsw i64 %4621, 2
  %4623 = add i64 %4618, 396
  %4624 = add i64 %4623, %4622
  %4625 = add i64 %4614, 19
  store i64 %4625, i64* %3, align 8
  %4626 = inttoptr i64 %4624 to i32*
  store i32 2, i32* %4626, align 4
  %4627 = load i64, i64* %RBP.i, align 8
  %4628 = add i64 %4627, -12
  %4629 = load i64, i64* %3, align 8
  %4630 = add i64 %4629, 3
  store i64 %4630, i64* %3, align 8
  %4631 = inttoptr i64 %4628 to i32*
  %4632 = load i32, i32* %4631, align 4
  %4633 = add i32 %4632, 1
  %4634 = zext i32 %4633 to i64
  store i64 %4634, i64* %.pre149, align 8
  %4635 = icmp eq i32 %4632, -1
  %4636 = icmp eq i32 %4633, 0
  %4637 = or i1 %4635, %4636
  %4638 = zext i1 %4637 to i8
  store i8 %4638, i8* %14, align 1
  %4639 = and i32 %4633, 255
  %4640 = tail call i32 @llvm.ctpop.i32(i32 %4639)
  %4641 = trunc i32 %4640 to i8
  %4642 = and i8 %4641, 1
  %4643 = xor i8 %4642, 1
  store i8 %4643, i8* %21, align 1
  %4644 = xor i32 %4633, %4632
  %4645 = lshr i32 %4644, 4
  %4646 = trunc i32 %4645 to i8
  %4647 = and i8 %4646, 1
  store i8 %4647, i8* %27, align 1
  %4648 = zext i1 %4636 to i8
  store i8 %4648, i8* %30, align 1
  %4649 = lshr i32 %4633, 31
  %4650 = trunc i32 %4649 to i8
  store i8 %4650, i8* %33, align 1
  %4651 = lshr i32 %4632, 31
  %4652 = xor i32 %4649, %4651
  %4653 = add nuw nsw i32 %4652, %4649
  %4654 = icmp eq i32 %4653, 2
  %4655 = zext i1 %4654 to i8
  store i8 %4655, i8* %39, align 1
  %4656 = add i64 %4629, 9
  store i64 %4656, i64* %3, align 8
  store i32 %4633, i32* %4631, align 4
  %4657 = load i64, i64* %3, align 8
  %4658 = add i64 %4657, -38
  store i64 %4658, i64* %3, align 8
  br label %block_.L_43cc94

block_.L_43ccbf:                                  ; preds = %block_.L_43cc94
  %4659 = load i64, i64* bitcast (%G_0x6cb8f8_type* @G_0x6cb8f8 to i64*), align 8
  store i64 %4659, i64* %.pre149, align 8
  %4660 = add i64 %4659, 216
  %4661 = add i64 %4614, 15
  store i64 %4661, i64* %3, align 8
  %4662 = inttoptr i64 %4660 to i32*
  %4663 = load i32, i32* %4662, align 4
  store i8 0, i8* %14, align 1
  %4664 = and i32 %4663, 255
  %4665 = tail call i32 @llvm.ctpop.i32(i32 %4664)
  %4666 = trunc i32 %4665 to i8
  %4667 = and i8 %4666, 1
  %4668 = xor i8 %4667, 1
  store i8 %4668, i8* %21, align 1
  store i8 0, i8* %27, align 1
  %4669 = icmp eq i32 %4663, 0
  %4670 = zext i1 %4669 to i8
  store i8 %4670, i8* %30, align 1
  %4671 = lshr i32 %4663, 31
  %4672 = trunc i32 %4671 to i8
  store i8 %4672, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %.v175 = select i1 %4669, i64 55, i64 21
  %4673 = add i64 %4614, %.v175
  store i64 %4673, i64* %3, align 8
  br i1 %4669, label %block_.L_43ccf6, label %block_43ccd4

block_43ccd4:                                     ; preds = %block_.L_43ccbf
  %4674 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*), align 8
  store i64 %4674, i64* %.pre149, align 8
  %4675 = add i64 %4674, 71784
  %4676 = add i64 %4673, 15
  store i64 %4676, i64* %3, align 8
  %4677 = inttoptr i64 %4675 to i64*
  %4678 = load i64, i64* %4677, align 8
  store i64 %4678, i64* %.pre149, align 8
  store i64 %4674, i64* %RCX.i2041, align 8
  %4679 = add i64 %4674, 12
  %4680 = add i64 %4673, 27
  store i64 %4680, i64* %3, align 8
  %4681 = inttoptr i64 %4679 to i32*
  %4682 = load i32, i32* %4681, align 4
  %4683 = sext i32 %4682 to i64
  store i64 %4683, i64* %RCX.i2041, align 8
  %4684 = shl nsw i64 %4683, 2
  %4685 = add i64 %4684, %4678
  %4686 = add i64 %4673, 34
  store i64 %4686, i64* %3, align 8
  %4687 = inttoptr i64 %4685 to i32*
  store i32 1, i32* %4687, align 4
  %.pre137 = load i64, i64* %3, align 8
  %.pre138 = load i64, i64* %RBP.i, align 8
  br label %block_.L_43ccf6

block_.L_43ccf6:                                  ; preds = %block_43ccd4, %block_.L_43ccbf
  %4688 = phi i64 [ %.pre138, %block_43ccd4 ], [ %4585, %block_.L_43ccbf ]
  %4689 = phi i64 [ %.pre137, %block_43ccd4 ], [ %4673, %block_.L_43ccbf ]
  %4690 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*), align 8
  store i64 %4690, i64* %.pre149, align 8
  %4691 = add i64 %4690, 71984
  %4692 = add i64 %4689, 14
  store i64 %4692, i64* %3, align 8
  %4693 = inttoptr i64 %4691 to i32*
  %4694 = load i32, i32* %4693, align 4
  %4695 = zext i32 %4694 to i64
  store i64 %4695, i64* %RCX.i2041, align 8
  %4696 = add i64 %4688, -40
  %4697 = add i64 %4689, 18
  store i64 %4697, i64* %3, align 8
  %4698 = inttoptr i64 %4696 to i64*
  %4699 = load i64, i64* %4698, align 8
  %4700 = add i64 %4699, 512
  %4701 = add i64 %4689, 24
  store i64 %4701, i64* %3, align 8
  %4702 = inttoptr i64 %4700 to i32*
  store i32 %4694, i32* %4702, align 4
  %4703 = load i64, i64* %3, align 8
  %4704 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*), align 8
  store i64 %4704, i64* %.pre149, align 8
  %4705 = add i64 %4704, 71988
  %4706 = add i64 %4703, 14
  store i64 %4706, i64* %3, align 8
  %4707 = inttoptr i64 %4705 to i32*
  %4708 = load i32, i32* %4707, align 4
  %4709 = zext i32 %4708 to i64
  store i64 %4709, i64* %RCX.i2041, align 8
  %4710 = load i64, i64* %RBP.i, align 8
  %4711 = add i64 %4710, -40
  %4712 = add i64 %4703, 18
  store i64 %4712, i64* %3, align 8
  %4713 = inttoptr i64 %4711 to i64*
  %4714 = load i64, i64* %4713, align 8
  %4715 = add i64 %4714, 516
  %4716 = add i64 %4703, 24
  store i64 %4716, i64* %3, align 8
  %4717 = inttoptr i64 %4715 to i32*
  store i32 %4708, i32* %4717, align 4
  %4718 = load i64, i64* %3, align 8
  %4719 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*), align 8
  store i64 %4719, i64* %.pre149, align 8
  %4720 = add i64 %4719, 71992
  %4721 = add i64 %4718, 14
  store i64 %4721, i64* %3, align 8
  %4722 = inttoptr i64 %4720 to i32*
  %4723 = load i32, i32* %4722, align 4
  %4724 = zext i32 %4723 to i64
  store i64 %4724, i64* %RCX.i2041, align 8
  %4725 = load i64, i64* %RBP.i, align 8
  %4726 = add i64 %4725, -40
  %4727 = add i64 %4718, 18
  store i64 %4727, i64* %3, align 8
  %4728 = inttoptr i64 %4726 to i64*
  %4729 = load i64, i64* %4728, align 8
  %4730 = add i64 %4729, 520
  %4731 = add i64 %4718, 24
  store i64 %4731, i64* %3, align 8
  %4732 = inttoptr i64 %4730 to i32*
  store i32 %4723, i32* %4732, align 4
  %4733 = load i64, i64* %3, align 8
  %4734 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*), align 8
  store i64 %4734, i64* %.pre149, align 8
  %4735 = add i64 %4734, 12
  %4736 = add i64 %4733, 12
  store i64 %4736, i64* %3, align 8
  %4737 = inttoptr i64 %4735 to i32*
  %4738 = load i32, i32* %4737, align 4
  store i8 0, i8* %14, align 1
  %4739 = and i32 %4738, 255
  %4740 = tail call i32 @llvm.ctpop.i32(i32 %4739)
  %4741 = trunc i32 %4740 to i8
  %4742 = and i8 %4741, 1
  %4743 = xor i8 %4742, 1
  store i8 %4743, i8* %21, align 1
  store i8 0, i8* %27, align 1
  %4744 = icmp eq i32 %4738, 0
  %4745 = zext i1 %4744 to i8
  store i8 %4745, i8* %30, align 1
  %4746 = lshr i32 %4738, 31
  %4747 = trunc i32 %4746 to i8
  store i8 %4747, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %.v176 = select i1 %4744, i64 18, i64 34
  %4748 = add i64 %4733, %.v176
  %4749 = load i64, i64* %RBP.i, align 8
  %4750 = add i64 %4749, -40
  %4751 = add i64 %4748, 4
  store i64 %4751, i64* %3, align 8
  %4752 = inttoptr i64 %4750 to i64*
  %4753 = load i64, i64* %4752, align 8
  store i64 %4753, i64* %.pre149, align 8
  br i1 %4744, label %block_43cd50, label %block_.L_43cd60

block_43cd50:                                     ; preds = %block_.L_43ccf6
  %4754 = add i64 %4753, 20
  %4755 = add i64 %4748, 11
  store i64 %4755, i64* %3, align 8
  %4756 = inttoptr i64 %4754 to i32*
  store i32 0, i32* %4756, align 4
  %4757 = load i64, i64* %3, align 8
  %4758 = add i64 %4757, 79
  br label %block_.L_43cdaa

block_.L_43cd60:                                  ; preds = %block_.L_43ccf6
  %4759 = add i64 %4753, 4
  %4760 = add i64 %4748, 7
  store i64 %4760, i64* %3, align 8
  %4761 = inttoptr i64 %4759 to i32*
  %4762 = load i32, i32* %4761, align 4
  %4763 = zext i32 %4762 to i64
  store i64 %4763, i64* %RCX.i2041, align 8
  store i64 %4734, i64* %.pre149, align 8
  %4764 = add i64 %4734, 14168
  %4765 = add i64 %4748, 22
  store i64 %4765, i64* %3, align 8
  %4766 = inttoptr i64 %4764 to i64*
  %4767 = load i64, i64* %4766, align 8
  store i64 %4767, i64* %.pre149, align 8
  store i64 %4734, i64* %RDX.i2018, align 8
  %4768 = add i64 %4748, 33
  store i64 %4768, i64* %3, align 8
  %4769 = load i32, i32* %4737, align 4
  %4770 = add i32 %4769, -1
  %4771 = zext i32 %4770 to i64
  store i64 %4771, i64* %RSI.i2012, align 8
  %4772 = sext i32 %4770 to i64
  %4773 = mul nsw i64 %4772, 632
  store i64 %4773, i64* %RDX.i2018, align 8
  %4774 = lshr i64 %4773, 63
  %4775 = add i64 %4773, %4767
  store i64 %4775, i64* %.pre149, align 8
  %4776 = icmp ult i64 %4775, %4767
  %4777 = icmp ult i64 %4775, %4773
  %4778 = or i1 %4776, %4777
  %4779 = zext i1 %4778 to i8
  store i8 %4779, i8* %14, align 1
  %4780 = trunc i64 %4775 to i32
  %4781 = and i32 %4780, 255
  %4782 = tail call i32 @llvm.ctpop.i32(i32 %4781)
  %4783 = trunc i32 %4782 to i8
  %4784 = and i8 %4783, 1
  %4785 = xor i8 %4784, 1
  store i8 %4785, i8* %21, align 1
  %4786 = xor i64 %4773, %4767
  %4787 = xor i64 %4786, %4775
  %4788 = lshr i64 %4787, 4
  %4789 = trunc i64 %4788 to i8
  %4790 = and i8 %4789, 1
  store i8 %4790, i8* %27, align 1
  %4791 = icmp eq i64 %4775, 0
  %4792 = zext i1 %4791 to i8
  store i8 %4792, i8* %30, align 1
  %4793 = lshr i64 %4775, 63
  %4794 = trunc i64 %4793 to i8
  store i8 %4794, i8* %33, align 1
  %4795 = lshr i64 %4767, 63
  %4796 = xor i64 %4793, %4795
  %4797 = xor i64 %4793, %4774
  %4798 = add nuw nsw i64 %4796, %4797
  %4799 = icmp eq i64 %4798, 2
  %4800 = zext i1 %4799 to i8
  store i8 %4800, i8* %39, align 1
  %4801 = load i32, i32* %ECX.i1981, align 4
  %4802 = add i64 %4775, 4
  %4803 = add i64 %4748, 52
  store i64 %4803, i64* %3, align 8
  %4804 = inttoptr i64 %4802 to i32*
  %4805 = load i32, i32* %4804, align 4
  %4806 = sub i32 %4801, %4805
  %4807 = icmp ult i32 %4801, %4805
  %4808 = zext i1 %4807 to i8
  store i8 %4808, i8* %14, align 1
  %4809 = and i32 %4806, 255
  %4810 = tail call i32 @llvm.ctpop.i32(i32 %4809)
  %4811 = trunc i32 %4810 to i8
  %4812 = and i8 %4811, 1
  %4813 = xor i8 %4812, 1
  store i8 %4813, i8* %21, align 1
  %4814 = xor i32 %4805, %4801
  %4815 = xor i32 %4814, %4806
  %4816 = lshr i32 %4815, 4
  %4817 = trunc i32 %4816 to i8
  %4818 = and i8 %4817, 1
  store i8 %4818, i8* %27, align 1
  %4819 = icmp eq i32 %4806, 0
  %4820 = zext i1 %4819 to i8
  store i8 %4820, i8* %30, align 1
  %4821 = lshr i32 %4806, 31
  %4822 = trunc i32 %4821 to i8
  store i8 %4822, i8* %33, align 1
  %4823 = lshr i32 %4801, 31
  %4824 = lshr i32 %4805, 31
  %4825 = xor i32 %4824, %4823
  %4826 = xor i32 %4821, %4823
  %4827 = add nuw nsw i32 %4826, %4825
  %4828 = icmp eq i32 %4827, 2
  %4829 = zext i1 %4828 to i8
  store i8 %4829, i8* %39, align 1
  %.v177 = select i1 %4819, i64 58, i64 69
  %4830 = add i64 %4748, %.v177
  store i64 %4830, i64* %3, align 8
  br i1 %4819, label %block_43cd9a, label %block_.L_43cda5

block_43cd9a:                                     ; preds = %block_.L_43cd60
  %4831 = load i64, i64* %RBP.i, align 8
  %4832 = add i64 %4831, -40
  %4833 = add i64 %4830, 4
  store i64 %4833, i64* %3, align 8
  %4834 = inttoptr i64 %4832 to i64*
  %4835 = load i64, i64* %4834, align 8
  store i64 %4835, i64* %.pre149, align 8
  %4836 = add i64 %4835, 20
  %4837 = add i64 %4830, 11
  store i64 %4837, i64* %3, align 8
  %4838 = inttoptr i64 %4836 to i32*
  store i32 0, i32* %4838, align 4
  %.pre139 = load i64, i64* %3, align 8
  br label %block_.L_43cda5

block_.L_43cda5:                                  ; preds = %block_.L_43cd60, %block_43cd9a
  %4839 = phi i64 [ %.pre139, %block_43cd9a ], [ %4830, %block_.L_43cd60 ]
  %4840 = add i64 %4839, 5
  store i64 %4840, i64* %3, align 8
  br label %block_.L_43cdaa

block_.L_43cdaa:                                  ; preds = %block_.L_43cda5, %block_43cd50
  %storemerge66 = phi i64 [ %4758, %block_43cd50 ], [ %4840, %block_.L_43cda5 ]
  %4841 = load i64, i64* %RBP.i, align 8
  %4842 = add i64 %4841, -40
  %4843 = add i64 %storemerge66, 4
  store i64 %4843, i64* %3, align 8
  %4844 = inttoptr i64 %4842 to i64*
  %4845 = load i64, i64* %4844, align 8
  store i64 %4845, i64* %.pre149, align 8
  %4846 = add i64 %4845, 28
  %4847 = add i64 %storemerge66, 11
  store i64 %4847, i64* %3, align 8
  %4848 = inttoptr i64 %4846 to i32*
  store i32 0, i32* %4848, align 4
  %4849 = load i64, i64* %RBP.i, align 8
  %4850 = add i64 %4849, -40
  %4851 = load i64, i64* %3, align 8
  %4852 = add i64 %4851, 4
  store i64 %4852, i64* %3, align 8
  %4853 = inttoptr i64 %4850 to i64*
  %4854 = load i64, i64* %4853, align 8
  store i64 %4854, i64* %.pre149, align 8
  %4855 = add i64 %4854, 40
  %4856 = add i64 %4851, 11
  store i64 %4856, i64* %3, align 8
  %4857 = inttoptr i64 %4855 to i32*
  store i32 0, i32* %4857, align 4
  %4858 = load i64, i64* %RBP.i, align 8
  %4859 = add i64 %4858, -40
  %4860 = load i64, i64* %3, align 8
  %4861 = add i64 %4860, 4
  store i64 %4861, i64* %3, align 8
  %4862 = inttoptr i64 %4859 to i64*
  %4863 = load i64, i64* %4862, align 8
  store i64 %4863, i64* %.pre149, align 8
  %4864 = add i64 %4863, 32
  %4865 = add i64 %4860, 11
  store i64 %4865, i64* %3, align 8
  %4866 = inttoptr i64 %4864 to i32*
  store i32 0, i32* %4866, align 4
  %4867 = load i64, i64* %RBP.i, align 8
  %4868 = add i64 %4867, -40
  %4869 = load i64, i64* %3, align 8
  %4870 = add i64 %4869, 4
  store i64 %4870, i64* %3, align 8
  %4871 = inttoptr i64 %4868 to i64*
  %4872 = load i64, i64* %4871, align 8
  store i64 %4872, i64* %.pre149, align 8
  %4873 = add i64 %4872, 36
  %4874 = add i64 %4869, 11
  store i64 %4874, i64* %3, align 8
  %4875 = inttoptr i64 %4873 to i32*
  store i32 0, i32* %4875, align 4
  %4876 = load i64, i64* %RBP.i, align 8
  %4877 = add i64 %4876, -40
  %4878 = load i64, i64* %3, align 8
  %4879 = add i64 %4878, 4
  store i64 %4879, i64* %3, align 8
  %4880 = inttoptr i64 %4877 to i64*
  %4881 = load i64, i64* %4880, align 8
  store i64 %4881, i64* %.pre149, align 8
  %4882 = add i64 %4881, 48
  %4883 = add i64 %4878, 11
  store i64 %4883, i64* %3, align 8
  %4884 = inttoptr i64 %4882 to i32*
  store i32 0, i32* %4884, align 4
  %4885 = load i64, i64* %RBP.i, align 8
  %4886 = add i64 %4885, -40
  %4887 = load i64, i64* %3, align 8
  %4888 = add i64 %4887, 4
  store i64 %4888, i64* %3, align 8
  %4889 = inttoptr i64 %4886 to i64*
  %4890 = load i64, i64* %4889, align 8
  %4891 = add i64 %4890, 44
  %4892 = add i64 %4887, 11
  store i64 %4892, i64* %3, align 8
  %4893 = inttoptr i64 %4891 to i32*
  store i32 0, i32* %4893, align 4
  %4894 = load i64, i64* %3, align 8
  %4895 = load i64, i64* bitcast (%G_0x6cb8f8_type* @G_0x6cb8f8 to i64*), align 8
  store i64 %4895, i64* %.pre149, align 8
  %4896 = add i64 %4895, 3292
  %4897 = add i64 %4894, 15
  store i64 %4897, i64* %3, align 8
  %4898 = inttoptr i64 %4896 to i32*
  %4899 = load i32, i32* %4898, align 4
  store i8 0, i8* %14, align 1
  %4900 = and i32 %4899, 255
  %4901 = tail call i32 @llvm.ctpop.i32(i32 %4900)
  %4902 = trunc i32 %4901 to i8
  %4903 = and i8 %4902, 1
  %4904 = xor i8 %4903, 1
  store i8 %4904, i8* %21, align 1
  store i8 0, i8* %27, align 1
  %4905 = icmp eq i32 %4899, 0
  %4906 = zext i1 %4905 to i8
  store i8 %4906, i8* %30, align 1
  %4907 = lshr i32 %4899, 31
  %4908 = trunc i32 %4907 to i8
  store i8 %4908, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %.v178 = select i1 %4905, i64 21, i64 28
  %4909 = add i64 %4894, %.v178
  store i64 %4909, i64* %3, align 8
  br i1 %4905, label %block_43ce01, label %block_.L_43ce08

block_43ce01:                                     ; preds = %block_.L_43cdaa
  store i8 0, i8* %AL.i1984, align 1
  %4910 = add i64 %4909, 122319
  %4911 = add i64 %4909, 7
  %4912 = load i64, i64* %6, align 8
  %4913 = add i64 %4912, -8
  %4914 = inttoptr i64 %4913 to i64*
  store i64 %4911, i64* %4914, align 8
  store i64 %4913, i64* %6, align 8
  store i64 %4910, i64* %3, align 8
  %call2_43ce03 = tail call %struct.Memory* @sub_45abd0.ResetFastFullIntegerSearch(%struct.State* nonnull %0, i64 %4910, %struct.Memory* %MEMORY.40)
  %.pre140 = load i64, i64* %3, align 8
  br label %block_.L_43ce08

block_.L_43ce08:                                  ; preds = %block_.L_43cdaa, %block_43ce01
  %4915 = phi i64 [ %4909, %block_.L_43cdaa ], [ %.pre140, %block_43ce01 ]
  %MEMORY.57 = phi %struct.Memory* [ %MEMORY.40, %block_.L_43cdaa ], [ %call2_43ce03, %block_43ce01 ]
  %4916 = load i64, i64* %6, align 8
  %4917 = add i64 %4916, 112
  store i64 %4917, i64* %6, align 8
  %4918 = icmp ugt i64 %4916, -113
  %4919 = zext i1 %4918 to i8
  store i8 %4919, i8* %14, align 1
  %4920 = trunc i64 %4917 to i32
  %4921 = and i32 %4920, 255
  %4922 = tail call i32 @llvm.ctpop.i32(i32 %4921)
  %4923 = trunc i32 %4922 to i8
  %4924 = and i8 %4923, 1
  %4925 = xor i8 %4924, 1
  store i8 %4925, i8* %21, align 1
  %4926 = xor i64 %4916, 16
  %4927 = xor i64 %4926, %4917
  %4928 = lshr i64 %4927, 4
  %4929 = trunc i64 %4928 to i8
  %4930 = and i8 %4929, 1
  store i8 %4930, i8* %27, align 1
  %4931 = icmp eq i64 %4917, 0
  %4932 = zext i1 %4931 to i8
  store i8 %4932, i8* %30, align 1
  %4933 = lshr i64 %4917, 63
  %4934 = trunc i64 %4933 to i8
  store i8 %4934, i8* %33, align 1
  %4935 = lshr i64 %4916, 63
  %4936 = xor i64 %4933, %4935
  %4937 = add nuw nsw i64 %4936, %4933
  %4938 = icmp eq i64 %4937, 2
  %4939 = zext i1 %4938 to i8
  store i8 %4939, i8* %39, align 1
  %4940 = add i64 %4915, 5
  store i64 %4940, i64* %3, align 8
  %4941 = add i64 %4916, 120
  %4942 = inttoptr i64 %4917 to i64*
  %4943 = load i64, i64* %4942, align 8
  store i64 %4943, i64* %RBP.i, align 8
  store i64 %4941, i64* %6, align 8
  %4944 = add i64 %4915, 6
  store i64 %4944, i64* %3, align 8
  %4945 = inttoptr i64 %4941 to i64*
  %4946 = load i64, i64* %4945, align 8
  store i64 %4946, i64* %3, align 8
  %4947 = add i64 %4916, 128
  store i64 %4947, i64* %6, align 8
  ret %struct.Memory* %MEMORY.57
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
define %struct.Memory* @routine_subq__0x70___rsp(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %3 = load i64, i64* %RSP, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 4
  store i64 %5, i64* %PC, align 8
  %6 = add i64 %3, -112
  store i64 %6, i64* %RSP, align 8
  %7 = icmp ult i64 %3, 112
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
define %struct.Memory* @routine_cmpl__0x2__0xd0__rcx_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = add i64 %3, 208
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
define %struct.Memory* @routine_movb__al__MINUS0x65__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %AL = bitcast %union.anon* %3 to i8*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -101
  %6 = load i8, i8* %AL, align 1
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i8*
  store i8 %6, i8* %9, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_je_.L_43bc8d(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_cmpl__0x3__0xd0__rax_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = add i64 %3, 208
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
define %struct.Memory* @routine_sete__cl(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %CL = bitcast %union.anon* %3 to i8*
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 3
  store i64 %5, i64* %PC, align 8
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %7 = load i8, i8* %6, align 1
  store i8 %7, i8* %CL, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movb__cl__MINUS0x65__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %CL = bitcast %union.anon* %3 to i8*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -101
  %6 = load i8, i8* %CL, align 1
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i8*
  store i8 %6, i8* %9, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movb_MINUS0x65__rbp____al(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %AL = bitcast %union.anon* %3 to i8*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -101
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 3
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %5 to i8*
  %9 = load i8, i8* %8, align 1
  store i8 %9, i8* %AL, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x2___ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 5
  store i64 %4, i64* %PC, align 8
  store i64 2, i64* %RCX, align 8
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
define %struct.Memory* @routine_movzbl__al___edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %AL = bitcast %union.anon* %3 to i8*
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %4 = load i8, i8* %AL, align 1
  %5 = zext i8 %4 to i64
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 3
  store i64 %7, i64* %PC, align 8
  store i64 %5, i64* %RDX, align 8
  ret %struct.Memory* %2
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
define %struct.Memory* @routine_movslq_MINUS0x4__rbp____rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -4
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
define %struct.Memory* @routine_movq__rsi__MINUS0x28__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -40
  %5 = load i64, i64* %RSI, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 4
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %4 to i64*
  store i64 %5, i64* %8, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_0x3750__rsi____rsi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %RSI, align 8
  %4 = add i64 %3, 14160
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__rsi__MINUS0x30__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -48
  %5 = load i64, i64* %RSI, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 4
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %4 to i64*
  store i64 %5, i64* %8, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_0x11bdc__rsi____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %RSI, align 8
  %4 = add i64 %3, 72668
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

; Function Attrs: nounwind
define %struct.Memory* @routine_addl__0x19___eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 3
  store i64 %5, i64* %PC, align 8
  %6 = trunc i64 %3 to i32
  %7 = add i32 %6, 25
  %8 = zext i32 %7 to i64
  store i64 %8, i64* %RAX, align 8
  %9 = icmp ugt i32 %6, -26
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
  %18 = xor i32 %6, 16
  %19 = xor i32 %18, %7
  %20 = lshr i32 %19, 4
  %21 = trunc i32 %20 to i8
  %22 = and i8 %21, 1
  %23 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %22, i8* %23, align 1
  %24 = icmp eq i32 %7, 0
  %25 = zext i1 %24 to i8
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

; Function Attrs: nounwind
define %struct.Memory* @routine_addl__0x1a___eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 3
  store i64 %5, i64* %PC, align 8
  %6 = trunc i64 %3 to i32
  %7 = add i32 %6, 26
  %8 = zext i32 %7 to i64
  store i64 %8, i64* %RAX, align 8
  %9 = icmp ugt i32 %6, -27
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
  %18 = xor i32 %6, 16
  %19 = xor i32 %18, %7
  %20 = lshr i32 %19, 4
  %21 = trunc i32 %20 to i8
  %22 = and i8 %21, 1
  %23 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %22, i8* %23, align 1
  %24 = icmp eq i32 %7, 0
  %25 = zext i1 %24 to i8
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
define %struct.Memory* @routine_movq_MINUS0x28__rbp____rsi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -40
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__eax__0x214__rsi_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %4 = load i64, i64* %RSI, align 8
  %5 = add i64 %4, 532
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
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
define %struct.Memory* @routine_movq_0x1948__rsi____rsi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %RSI, align 8
  %4 = add i64 %3, 6472
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movb__r8b____rsi__rdi_1_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0
  %R8B = bitcast %union.anon* %3 to i8*
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %4 = load i64, i64* %RSI, align 8
  %5 = load i64, i64* %RDI, align 8
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
define %struct.Memory* @routine_movl_MINUS0x4__rbp____edi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -4
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
define %struct.Memory* @routine_callq_.set_MB_parameters(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_je_.L_43be7e(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__0x0__0x78__rax_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = add i64 %3, 120
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
define %struct.Memory* @routine_jne_.L_43be79(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl_0x10__rcx____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %4 = load i32, i32* %EAX, align 4
  %5 = load i64, i64* %RCX, align 8
  %6 = add i64 %5, 16
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
define %struct.Memory* @routine_jge_.L_43be74(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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

; Function Attrs: nounwind
define %struct.Memory* @routine_imulq__0x78___rcx___rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
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
  %10 = mul nsw i128 %9, 120
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__rax__MINUS0x38__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -56
  %5 = load i64, i64* %RAX, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 4
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %4 to i64*
  store i64 %5, i64* %8, align 8
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
define %struct.Memory* @routine_movq__rax__MINUS0x40__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -64
  %5 = load i64, i64* %RAX, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 4
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %4 to i64*
  store i64 %5, i64* %8, align 8
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
define %struct.Memory* @routine_movl_0x4__rax____edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = add i64 %3, 4
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
define %struct.Memory* @routine_movl__edx__0x10__rax_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %EDX = bitcast %union.anon* %3 to i32*
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %4 = load i64, i64* %RAX, align 8
  %5 = add i64 %4, 16
  %6 = load i32, i32* %EDX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl___rax____edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = bitcast i64* %RAX to i32**
  %4 = load i32*, i32** %3, align 8
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 2
  store i64 %6, i64* %PC, align 8
  %7 = load i32, i32* %4, align 4
  %8 = zext i32 %7 to i64
  store i64 %8, i64* %RDX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__edx__0xc__rax_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %EDX = bitcast %union.anon* %3 to i32*
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %4 = load i64, i64* %RAX, align 8
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
define %struct.Memory* @routine_movb_0x8__rax____sil(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0
  %SIL = bitcast %union.anon* %3 to i8*
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %4 = load i64, i64* %RAX, align 8
  %5 = add i64 %4, 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 4
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %5 to i8*
  %9 = load i8, i8* %8, align 1
  store i8 %9, i8* %SIL, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movb__sil__0x14__rax_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0
  %SIL = bitcast %union.anon* %3 to i8*
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %4 = load i64, i64* %RAX, align 8
  %5 = add i64 %4, 20
  %6 = load i8, i8* %SIL, align 1
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 4
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i8*
  store i8 %6, i8* %9, align 1
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__0x1__0x934__rax_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = add i64 %3, 2356
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
define %struct.Memory* @routine_jne_.L_43be61(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_addq__0x8___rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 4
  store i64 %5, i64* %PC, align 8
  %6 = add i64 %3, 8
  store i64 %6, i64* %RAX, align 8
  %7 = icmp ugt i64 %3, -9
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
define %struct.Memory* @routine_movq__rax__MINUS0x48__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -72
  %5 = load i64, i64* %RAX, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 4
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %4 to i64*
  store i64 %5, i64* %8, align 8
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
define %struct.Memory* @routine_movl__ecx__0x28__rax_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %ECX = bitcast %union.anon* %3 to i32*
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %4 = load i64, i64* %RAX, align 8
  %5 = add i64 %4, 40
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__ecx__0x2c__rax_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %ECX = bitcast %union.anon* %3 to i32*
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %4 = load i64, i64* %RAX, align 8
  %5 = add i64 %4, 44
  %6 = load i32, i32* %ECX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__ecx__0x30__rax_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %ECX = bitcast %union.anon* %3 to i32*
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %4 = load i64, i64* %RAX, align 8
  %5 = add i64 %4, 48
  %6 = load i32, i32* %ECX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
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
define %struct.Memory* @routine_movl__ecx__0x34__rax_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %ECX = bitcast %union.anon* %3 to i32*
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %4 = load i64, i64* %RAX, align 8
  %5 = add i64 %4, 52
  %6 = load i32, i32* %ECX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__ecx__0x38__rax_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %ECX = bitcast %union.anon* %3 to i32*
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %4 = load i64, i64* %RAX, align 8
  %5 = add i64 %4, 56
  %6 = load i32, i32* %ECX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_MINUS0x48__rbp____rdx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -72
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RDX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__rax__0x40__rdx_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %RDX, align 8
  %4 = add i64 %3, 64
  %5 = load i64, i64* %RAX, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 4
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %4 to i64*
  store i64 %5, i64* %8, align 8
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
define %struct.Memory* @routine_movq__rax__0x48__rdx_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %RDX, align 8
  %4 = add i64 %3, 72
  %5 = load i64, i64* %RAX, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 4
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %4 to i64*
  store i64 %5, i64* %8, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_0x50__rax____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = add i64 %3, 80
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
define %struct.Memory* @routine_movl__ecx__0x54__rax_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %ECX = bitcast %union.anon* %3 to i32*
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %4 = load i64, i64* %RAX, align 8
  %5 = add i64 %4, 84
  %6 = load i32, i32* %ECX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_0x60__rax____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = add i64 %3, 96
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
define %struct.Memory* @routine_movl__ecx__0x64__rax_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %ECX = bitcast %union.anon* %3 to i32*
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %4 = load i64, i64* %RAX, align 8
  %5 = add i64 %4, 100
  %6 = load i32, i32* %ECX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_0x58__rax____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = add i64 %3, 88
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
define %struct.Memory* @routine_movl__ecx__0x5c__rax_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %ECX = bitcast %union.anon* %3 to i32*
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %4 = load i64, i64* %RAX, align 8
  %5 = add i64 %4, 92
  %6 = load i32, i32* %ECX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_43be66(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jmpq_.L_43bd54(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_43be79(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_43be7e(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_0x14__rax____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = add i64 %3, 20
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
define %struct.Memory* @routine_movl_0x2c__rax____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = add i64 %3, 44
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
define %struct.Memory* @routine_cmpl__0x0__0xca4__rax_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = add i64 %3, 3236
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
define %struct.Memory* @routine_je_.L_43c7cf(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl_0xc__rax____edi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = add i64 %3, 12
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
define %struct.Memory* @routine_callq_.FmoGetPreviousMBNr(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__0xffffffff__MINUS0x54__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
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
  %9 = add i32 %8, 1
  %10 = icmp ne i32 %8, -1
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
define %struct.Memory* @routine_jle_.L_43bf2d(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movq_0x3758__rax____rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = add i64 %3, 14168
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movslq_MINUS0x54__rbp____rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -84
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
define %struct.Memory* @routine_imulq__0x278___rcx___rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 7
  store i64 %5, i64* %PC, align 8
  %6 = sext i64 %3 to i128
  %7 = and i128 %6, -18446744073709551616
  %8 = zext i64 %3 to i128
  %9 = or i128 %7, %8
  %10 = mul nsw i128 %9, 632
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__edx__0x250__rax_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %EDX = bitcast %union.anon* %3 to i32*
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %4 = load i64, i64* %RAX, align 8
  %5 = add i64 %4, 592
  %6 = load i32, i32* %EDX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__edx__0x254__rax_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %EDX = bitcast %union.anon* %3 to i32*
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %4 = load i64, i64* %RAX, align 8
  %5 = add i64 %4, 596
  %6 = load i32, i32* %EDX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_43bf4c(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__ecx__0x250__rax_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %ECX = bitcast %union.anon* %3 to i32*
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %4 = load i64, i64* %RAX, align 8
  %5 = add i64 %4, 592
  %6 = load i32, i32* %ECX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x0__0x254__rax_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = add i64 %3, 596
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 10
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  store i32 0, i32* %7, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_0xcb0__rax____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = add i64 %3, 3248
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
define %struct.Memory* @routine_cmpl_0x11ba0__rax____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %ECX = bitcast %union.anon* %3 to i32*
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %4 = load i32, i32* %ECX, align 4
  %5 = load i64, i64* %RAX, align 8
  %6 = add i64 %5, 72608
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
define %struct.Memory* @routine_jne_.L_43bf90(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl__0x0__0x8__rax_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = add i64 %3, 8
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  store i32 0, i32* %7, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_0x28__rax____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = add i64 %3, 40
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
define %struct.Memory* @routine_jmpq_.L_43c7ca(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
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
define %struct.Memory* @routine_je_.L_43bfb4(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jne_.L_43bfd6(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jmpq_.L_43c7c5(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__0x0__0x18__rax_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
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
define %struct.Memory* @routine_jne_.L_43c7c0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_cmpl__0x0__0x11bb0__rax_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = add i64 %3, 72624
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
define %struct.Memory* @routine_jne_.L_43c231(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jne_.L_43c1c9(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_cmpl__0x0__0xc__rax_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = add i64 %3, 12
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
define %struct.Memory* @routine_jne_.L_43c06c(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl__ecx__0x6cd4e4(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %ECX = bitcast %union.anon* %3 to i32*
  %4 = load i32, i32* %ECX, align 4
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  store i32 %4, i32* bitcast (%G_0x6cd4e4_type* @G_0x6cd4e4 to i32*), align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__ecx__0x70e8d0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %ECX = bitcast %union.anon* %3 to i32*
  %4 = load i32, i32* %ECX, align 4
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  store i32 %4, i32* bitcast (%G_0x70e8d0_type* @G_0x70e8d0 to i32*), align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__ecx__0x724740(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %ECX = bitcast %union.anon* %3 to i32*
  %4 = load i32, i32* %ECX, align 4
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  store i32 %4, i32* bitcast (%G_0x724740_type* @G_0x724740 to i32*), align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__ecx__0x7242f0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %ECX = bitcast %union.anon* %3 to i32*
  %4 = load i32, i32* %ECX, align 4
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  store i32 %4, i32* bitcast (%G_0x7242f0_type* @G_0x7242f0 to i32*), align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_43c1c4(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__0x0__0xb44__rax_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = add i64 %3, 2884
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
define %struct.Memory* @routine_je_.L_43c096(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_cmpl__0x0__0x11bb4__rax_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = add i64 %3, 72628
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
define %struct.Memory* @routine_jne_.L_43c1a2(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__0x1__0x258__rax_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = add i64 %3, 600
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
define %struct.Memory* @routine_jne_.L_43c0ef(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jmpq_.L_43c173(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_0x250__rax____edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = add i64 %3, 592
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
define %struct.Memory* @routine_movl_0xc__rcx____esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = add i64 %3, 12
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

; Function Attrs: nounwind
define %struct.Memory* @routine_subl_0xc__rax____edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %RDX, align 8
  %4 = load i64, i64* %RAX, align 8
  %5 = add i64 %4, 12
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
define %struct.Memory* @routine_movl__edx__0x8__rax_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %EDX = bitcast %union.anon* %3 to i32*
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %4 = load i64, i64* %RAX, align 8
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
define %struct.Memory* @routine_movl__edx__0x28__rax_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %EDX = bitcast %union.anon* %3 to i32*
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %4 = load i64, i64* %RAX, align 8
  %5 = add i64 %4, 40
  %6 = load i32, i32* %EDX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_43c1bf(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_43c22c(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jne_.L_43c20a(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl_0x6cd4e4___eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 7
  store i64 %4, i64* %PC, align 8
  %5 = load i32, i32* bitcast (%G_0x6cd4e4_type* @G_0x6cd4e4 to i32*), align 8
  %6 = zext i32 %5 to i64
  store i64 %6, i64* %RAX, align 8
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
define %struct.Memory* @routine_movl_0x724740___eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 7
  store i64 %4, i64* %PC, align 8
  %5 = load i32, i32* bitcast (%G_0x724740_type* @G_0x724740 to i32*), align 8
  %6 = zext i32 %5 to i64
  store i64 %6, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__eax__0x28__rcx_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %4 = load i64, i64* %RCX, align 8
  %5 = add i64 %4, 40
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
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
define %struct.Memory* @routine_jmpq_.L_43c227(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_43c2d5(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jne_.L_43c2b3(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_cmpl__0x0__0x11bb8__rax_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = add i64 %3, 72632
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
define %struct.Memory* @routine_je_.L_43c287(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl_0x70e8d0___eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 7
  store i64 %4, i64* %PC, align 8
  %5 = load i32, i32* bitcast (%G_0x70e8d0_type* @G_0x70e8d0 to i32*), align 8
  %6 = zext i32 %5 to i64
  store i64 %6, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_0x7242f0___eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 7
  store i64 %4, i64* %PC, align 8
  %5 = load i32, i32* bitcast (%G_0x7242f0_type* @G_0x7242f0 to i32*), align 8
  %6 = zext i32 %5 to i64
  store i64 %6, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_43c2ae(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_43c2d0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_je_.L_43c2ff(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jne_.L_43c7a6(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jne_.L_43c790(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_cmpl__0x0__0x11ba8__rax_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = add i64 %3, 72616
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
define %struct.Memory* @routine_jle_.L_43c551(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl_0x11ba8__rax____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = add i64 %3, 72616
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 6
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = zext i32 %8 to i64
  store i64 %9, i64* %RAX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_idivl_0x11bac__rcx_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = add i64 %3, 72620
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 6
  store i64 %6, i64* %PC, align 8
  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %8 = bitcast %union.anon* %7 to i32*
  %9 = load i32, i32* %8, align 8
  %10 = zext i32 %9 to i64
  %11 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %12 = bitcast %union.anon* %11 to i32*
  %13 = load i32, i32* %12, align 8
  %14 = zext i32 %13 to i64
  %15 = inttoptr i64 %4 to i32*
  %16 = load i32, i32* %15, align 4
  %17 = sext i32 %16 to i64
  %18 = shl nuw i64 %14, 32
  %19 = or i64 %18, %10
  %20 = sdiv i64 %19, %17
  %21 = shl i64 %20, 32
  %22 = ashr exact i64 %21, 32
  %23 = icmp eq i64 %20, %22
  br i1 %23, label %26, label %24

; <label>:24:                                     ; preds = %block_400488
  %25 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %6, %struct.Memory* %2)
  br label %_ZN12_GLOBAL__N_1L10IDIVedxeaxI2MnIjEEEP6MemoryS4_R5StateT_.exit

; <label>:26:                                     ; preds = %block_400488
  %27 = srem i64 %19, %17
  %28 = getelementptr inbounds %union.anon, %union.anon* %7, i64 0, i32 0
  %29 = and i64 %20, 4294967295
  store i64 %29, i64* %28, align 8
  %30 = getelementptr inbounds %union.anon, %union.anon* %11, i64 0, i32 0
  %31 = and i64 %27, 4294967295
  store i64 %31, i64* %30, align 8
  %32 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %32, align 1
  %33 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 0, i8* %33, align 1
  %34 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %34, align 1
  %35 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %35, align 1
  %36 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 0, i8* %36, align 1
  %37 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %37, align 1
  br label %_ZN12_GLOBAL__N_1L10IDIVedxeaxI2MnIjEEEP6MemoryS4_R5StateT_.exit

_ZN12_GLOBAL__N_1L10IDIVedxeaxI2MnIjEEEP6MemoryS4_R5StateT_.exit: ; preds = %26, %24
  %38 = phi %struct.Memory* [ %25, %24 ], [ %2, %26 ]
  ret %struct.Memory* %38
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
define %struct.Memory* @routine_jne_.L_43c551(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_je_.L_43c38d(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movb__0x0___al(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %AL = bitcast %union.anon* %3 to i8*
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 2
  store i64 %5, i64* %PC, align 8
  store i8 0, i8* %AL, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_callq_.updateRCModel(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl_0x11b94__rcx____edi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = add i64 %3, 72596
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
define %struct.Memory* @routine_callq_.updateQuantizationParameter(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl__eax__0x11b90__rcx_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %4 = load i64, i64* %RCX, align 8
  %5 = add i64 %4, 72592
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_43c54c(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
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
define %struct.Memory* @routine_jne_.L_43c3f9(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_cmpl__0x0__0x11ba4__rax_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = add i64 %3, 72612
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
define %struct.Memory* @routine_jmpq_.L_43c547(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__0x1__0xb40__rax_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
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
define %struct.Memory* @routine_jne_.L_43c465(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jmpq_.L_43c542(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_je_.L_43c4d1(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jne_.L_43c4d1(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_cmpl__0x1__0x11b98__rax_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = add i64 %3, 72600
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
define %struct.Memory* @routine_jmpq_.L_43c53d(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_je_.L_43c538(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jne_.L_43c538(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_cmpl__0x0__0x11b98__rax_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = add i64 %3, 72600
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
define %struct.Memory* @routine_jmpq_.L_43c551(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jne_.L_43c57c(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl__ecx__0x11b90__rax_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %ECX = bitcast %union.anon* %3 to i32*
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %4 = load i64, i64* %RAX, align 8
  %5 = add i64 %4, 72592
  %6 = load i32, i32* %ECX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_0x11b90__rax____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = add i64 %3, 72592
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
define %struct.Memory* @routine_movl__ecx__0x25c__rax_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %ECX = bitcast %union.anon* %3 to i32*
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %4 = load i64, i64* %RAX, align 8
  %5 = add i64 %4, 604
  %6 = load i32, i32* %ECX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_0x25c__rax____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = add i64 %3, 604
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
define %struct.Memory* @routine_addl_MINUS0x4c__rbp____edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RDX, align 8
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -76
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 3
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
define %struct.Memory* @routine_cmpl__edx___ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %ECX = bitcast %union.anon* %3 to i32*
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %EDX = bitcast %union.anon* %4 to i32*
  %5 = load i32, i32* %ECX, align 4
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
define %struct.Memory* @routine_jle_.L_43c5c9(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_addl_MINUS0x4c__rbp____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -76
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_43c5fe(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_subl_MINUS0x50__rbp____edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RDX, align 8
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -80
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
define %struct.Memory* @routine_jge_.L_43c5f9(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_subl_MINUS0x50__rbp____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -80
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
define %struct.Memory* @routine_addl_0x25c__rcx____edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %RDX, align 8
  %4 = load i64, i64* %RCX, align 8
  %5 = add i64 %4, 604
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
define %struct.Memory* @routine_subl_0xc__rcx____edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %RDX, align 8
  %4 = load i64, i64* %RCX, align 8
  %5 = add i64 %4, 12
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
define %struct.Memory* @routine_movl__edx__0x6d45e8(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %EDX = bitcast %union.anon* %3 to i32*
  %4 = load i32, i32* %EDX, align 4
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  store i32 %4, i32* bitcast (%G_0x6d45e8_type* @G_0x6d45e8 to i32*), align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_0x6d45e8___edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 7
  store i64 %4, i64* %PC, align 8
  %5 = load i32, i32* bitcast (%G_0x6d45e8_type* @G_0x6d45e8 to i32*), align 8
  %6 = zext i32 %5 to i64
  store i64 %6, i64* %RDX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_subl_MINUS0x50__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
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
define %struct.Memory* @routine_cmpl__eax___edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %EDX = bitcast %union.anon* %4 to i32*
  %5 = load i32, i32* %EDX, align 4
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
define %struct.Memory* @routine_jge_.L_43c680(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl__ecx__0x6d45e8(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %ECX = bitcast %union.anon* %3 to i32*
  %4 = load i32, i32* %ECX, align 4
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  store i32 %4, i32* bitcast (%G_0x6d45e8_type* @G_0x6d45e8 to i32*), align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_0x6d45e8___ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 7
  store i64 %4, i64* %PC, align 8
  %5 = load i32, i32* bitcast (%G_0x6d45e8_type* @G_0x6d45e8 to i32*), align 8
  %6 = zext i32 %5 to i64
  store i64 %6, i64* %RCX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_MINUS0x28__rbp____rdx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -40
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RDX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_subl_0x8__rdx____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
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
define %struct.Memory* @routine_movl__ecx__0x6cd470(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %ECX = bitcast %union.anon* %3 to i32*
  %4 = load i32, i32* %ECX, align 4
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  store i32 %4, i32* bitcast (%G_0x6cd470_type* @G_0x6cd470 to i32*), align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_0x6cb900___rdx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 8
  store i64 %4, i64* %PC, align 8
  %5 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*), align 8
  store i64 %5, i64* %RDX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_0x28__rdx____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %RDX, align 8
  %4 = add i64 %3, 40
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
define %struct.Memory* @routine_addl_0x6cd470___ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 7
  store i64 %5, i64* %PC, align 8
  %6 = trunc i64 %3 to i32
  %7 = load i32, i32* bitcast (%G_0x6cd470_type* @G_0x6cd470 to i32*), align 8
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
define %struct.Memory* @routine_movl__ecx__0x28__rdx_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %ECX = bitcast %union.anon* %3 to i32*
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %4 = load i64, i64* %RDX, align 8
  %5 = add i64 %4, 40
  %6 = load i32, i32* %ECX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__eax__0x8__rdx_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %4 = load i64, i64* %RDX, align 8
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
define %struct.Memory* @routine_jmpq_.L_43c71b(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_0x6d45e8___eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 7
  store i64 %4, i64* %PC, align 8
  %5 = load i32, i32* bitcast (%G_0x6d45e8_type* @G_0x6d45e8 to i32*), align 8
  %6 = zext i32 %5 to i64
  store i64 %6, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl_MINUS0x4c__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i32, i32* %EAX, align 4
  %5 = load i64, i64* %RBP, align 8
  %6 = add i64 %5, -76
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
define %struct.Memory* @routine_jle_.L_43c6db(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__eax__0x6d45e8(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %4 = load i32, i32* %EAX, align 4
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  store i32 %4, i32* bitcast (%G_0x6d45e8_type* @G_0x6d45e8 to i32*), align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_subl_0x8__rcx____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %RCX, align 8
  %5 = add i64 %4, 8
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
define %struct.Memory* @routine_movl__eax__0x6cd470(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %4 = load i32, i32* %EAX, align 4
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  store i32 %4, i32* bitcast (%G_0x6cd470_type* @G_0x6cd470 to i32*), align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_0x28__rcx____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = add i64 %3, 40
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
define %struct.Memory* @routine_addl_0x6cd470___eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 7
  store i64 %5, i64* %PC, align 8
  %6 = trunc i64 %3 to i32
  %7 = load i32, i32* bitcast (%G_0x6cd470_type* @G_0x6cd470 to i32*), align 8
  %8 = add i32 %7, %6
  %9 = zext i32 %8 to i64
  store i64 %9, i64* %RAX, align 8
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
define %struct.Memory* @routine_jmpq_.L_43c716(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_0x25c__rcx____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = add i64 %3, 604
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
define %struct.Memory* @routine_subl_0xc__rcx____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %RCX, align 8
  %5 = add i64 %4, 12
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
define %struct.Memory* @routine_je_.L_43c77a(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl_0x6cd470___eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 7
  store i64 %4, i64* %PC, align 8
  %5 = load i32, i32* bitcast (%G_0x6cd470_type* @G_0x6cd470 to i32*), align 8
  %6 = zext i32 %5 to i64
  store i64 %6, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__eax__0x260__rcx_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %4 = load i64, i64* %RCX, align 8
  %5 = add i64 %4, 608
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_43c7a1(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_0x260__rax____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = add i64 %3, 608
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
define %struct.Memory* @routine_jmpq_.L_43c7bb(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_43c7c0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_43c8c7(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_0x3750__rax____rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = add i64 %3, 14160
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__rax__MINUS0x60__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -96
  %5 = load i64, i64* %RAX, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 4
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %4 to i64*
  store i64 %5, i64* %8, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__eax__MINUS0x64__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -100
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__0xffffffff__MINUS0x64__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -100
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = add i32 %8, 1
  %10 = icmp ne i32 %8, -1
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
define %struct.Memory* @routine_jle_.L_43c858(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movslq_MINUS0x64__rbp____rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -100
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
define %struct.Memory* @routine_jmpq_.L_43c877(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
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

; Function Attrs: nounwind
define %struct.Memory* @routine_subl_0x250__rax____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = load i64, i64* %RAX, align 8
  %5 = add i64 %4, 592
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
define %struct.Memory* @routine_movq_0x6d4690___rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 8
  store i64 %4, i64* %PC, align 8
  %5 = load i64, i64* bitcast (%G_0x6d4690_type* @G_0x6d4690 to i64*), align 8
  store i64 %5, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__0x0__0xdc__rax_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = add i64 %3, 220
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
define %struct.Memory* @routine_je_.L_43c933(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl_0x11930__rax____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = add i64 %3, 71984
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
define %struct.Memory* @routine_movl__ecx__0x264__rax_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %ECX = bitcast %union.anon* %3 to i32*
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %4 = load i64, i64* %RAX, align 8
  %5 = add i64 %4, 612
  %6 = load i32, i32* %ECX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_0x11934__rax____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = add i64 %3, 71988
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
define %struct.Memory* @routine_movl__ecx__0x268__rax_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %ECX = bitcast %union.anon* %3 to i32*
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %4 = load i64, i64* %RAX, align 8
  %5 = add i64 %4, 616
  %6 = load i32, i32* %ECX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_0x11938__rax____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = add i64 %3, 71992
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
define %struct.Memory* @routine_movl__ecx__0x26c__rax_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %ECX = bitcast %union.anon* %3 to i32*
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %4 = load i64, i64* %RAX, align 8
  %5 = add i64 %4, 620
  %6 = load i32, i32* %ECX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_43c95d(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x0__0x264__rax_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = add i64 %3, 612
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 10
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  store i32 0, i32* %7, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x0__0x268__rax_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = add i64 %3, 616
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 10
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  store i32 0, i32* %7, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x0__0x26c__rax_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = add i64 %3, 620
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 10
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  store i32 0, i32* %7, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_callq_.CheckAvailabilityOfNeighbors(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_cmpl__0x1__0x934__rcx_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = add i64 %3, 2356
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
define %struct.Memory* @routine_jne_.L_43c980(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_callq_.CheckAvailabilityOfNeighborsCABAC(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl__0x0__MINUS0x18__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -24
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  store i32 0, i32* %7, align 4
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__0x2__MINUS0x18__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
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
define %struct.Memory* @routine_jge_.L_43ca5c(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl__0x0__MINUS0x10__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -16
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  store i32 0, i32* %7, align 4
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__0x4__MINUS0x10__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -16
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
define %struct.Memory* @routine_jge_.L_43ca49(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_cmpl__0x4__MINUS0xc__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -12
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
define %struct.Memory* @routine_jge_.L_43ca36(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl__0x0__MINUS0x14__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -20
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  store i32 0, i32* %7, align 4
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__0x2__MINUS0x14__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -20
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
define %struct.Memory* @routine_jge_.L_43ca23(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movq_0x70fcf0___rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 8
  store i64 %4, i64* %PC, align 8
  %5 = load i64, i64* bitcast (%G_0x70fcf0_type* @G_0x70fcf0 to i64*), align 8
  store i64 %5, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_0x1968__rax____rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = add i64 %3, 6504
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movslq_MINUS0x18__rbp____rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -24
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
define %struct.Memory* @routine_movl_0x90__rcx____edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = add i64 %3, 144
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
define %struct.Memory* @routine_addl_MINUS0xc__rbp____edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RDX, align 8
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
define %struct.Memory* @routine_movl_0x94__rcx____edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = add i64 %3, 148
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
define %struct.Memory* @routine_addl_MINUS0x10__rbp____edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RDX, align 8
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -16
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 3
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
define %struct.Memory* @routine_movslq_MINUS0x14__rbp____rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -20
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
define %struct.Memory* @routine_movw__0x0____rax__rcx_2_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %RCX, align 8
  %5 = shl i64 %4, 1
  %6 = add i64 %5, %3
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %6 to i16*
  store i16 0, i16* %9, align 2
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
define %struct.Memory* @routine_movl__eax__MINUS0x14__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -20
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_43c9ba(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_43ca28(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_43c9a9(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_43ca3b(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
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
define %struct.Memory* @routine_jmpq_.L_43c998(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_43ca4e(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x18__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -24
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
define %struct.Memory* @routine_movl__eax__MINUS0x18__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -24
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_43c987(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jge_.L_43cb57(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jge_.L_43cb44(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jge_.L_43cb31(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movq_0x1950__rax____rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = add i64 %3, 6480
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movw__0xffff____rax__rcx_2_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %RCX, align 8
  %5 = shl i64 %4, 1
  %6 = add i64 %5, %3
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %6 to i16*
  store i16 -1, i16* %9, align 2
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_0x1958__rax____rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = add i64 %3, 6488
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__0xffffffffffffffff____rax__rcx_8_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %RCX, align 8
  %5 = shl i64 %4, 3
  %6 = add i64 %5, %3
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 8
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %6 to i64*
  store i64 -1, i64* %9, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_43ca85(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_43cb36(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_43ca74(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_43cb49(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_43ca63(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x0__0x48__rax_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = add i64 %3, 72
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  store i32 0, i32* %7, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__0x0__0x1d0__rax_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = add i64 %3, 464
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 11
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  store i64 0, i64* %7, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x0__0x1cc__rax_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = add i64 %3, 460
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 10
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  store i32 0, i32* %7, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jge_.L_43cc3e(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jge_.L_43cc2b(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jge_.L_43cc18(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jge_.L_43cc05(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_addq__0x4c___rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 4
  store i64 %5, i64* %PC, align 8
  %6 = add i64 %3, 76
  store i64 %6, i64* %RAX, align 8
  %7 = icmp ugt i64 %3, -77
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
define %struct.Memory* @routine_shlq__0x7___rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 4
  store i64 %5, i64* %PC, align 8
  %6 = shl i64 %3, 7
  store i64 %6, i64* %RCX, align 8
  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %8 = lshr i64 %3, 57
  %9 = trunc i64 %8 to i8
  %10 = and i8 %9, 1
  store i8 %10, i8* %7, align 1
  %11 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %12 = trunc i64 %6 to i32
  %13 = and i32 %12, 128
  %14 = tail call i32 @llvm.ctpop.i32(i32 %13)
  %15 = trunc i32 %14 to i8
  %16 = xor i8 %15, 1
  store i8 %16, i8* %11, align 1
  %17 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %17, align 1
  %18 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %19 = icmp eq i64 %6, 0
  %20 = zext i1 %19 to i8
  store i8 %20, i8* %18, align 1
  %21 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %22 = lshr i64 %3, 56
  %23 = trunc i64 %22 to i8
  %24 = and i8 %23, 1
  store i8 %24, i8* %21, align 1
  %25 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %25, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movslq_MINUS0x10__rbp____rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -16
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
define %struct.Memory* @routine_shlq__0x5___rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 4
  store i64 %5, i64* %PC, align 8
  %6 = shl i64 %3, 5
  store i64 %6, i64* %RCX, align 8
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

; Function Attrs: nounwind
define %struct.Memory* @routine_shlq__0x3___rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 4
  store i64 %5, i64* %PC, align 8
  %6 = shl i64 %3, 3
  store i64 %6, i64* %RCX, align 8
  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %8 = lshr i64 %3, 61
  %9 = trunc i64 %8 to i8
  %10 = and i8 %9, 1
  store i8 %10, i8* %7, align 1
  %11 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %12 = trunc i64 %6 to i32
  %13 = and i32 %12, 248
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
  %23 = lshr i64 %3, 60
  %24 = trunc i64 %23 to i8
  %25 = and i8 %24, 1
  store i8 %25, i8* %22, align 1
  %26 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %26, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x0____rax__rcx_4_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
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
  store i32 0, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_43cbb9(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_43cc0a(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_43cba8(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_43cc1d(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_43cb97(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_43cc30(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_43cb86(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__0x0__0x1f8__rax_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = add i64 %3, 504
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 11
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  store i64 0, i64* %7, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x0__0x20c__rax_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = add i64 %3, 524
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 10
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  store i32 0, i32* %7, align 4
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__0x10__MINUS0xc__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -12
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
define %struct.Memory* @routine_jge_.L_43cc8d(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl__0x2__0x14c__rax__rcx_4_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %RCX, align 8
  %5 = shl i64 %4, 2
  %6 = add i64 %3, 332
  %7 = add i64 %6, %5
  %8 = load i64, i64* %PC, align 8
  %9 = add i64 %8, 11
  store i64 %9, i64* %PC, align 8
  %10 = inttoptr i64 %7 to i32*
  store i32 2, i32* %10, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_43cc62(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jge_.L_43ccbf(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl__0x2__0x18c__rax__rcx_4_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %RCX, align 8
  %5 = shl i64 %4, 2
  %6 = add i64 %3, 396
  %7 = add i64 %6, %5
  %8 = load i64, i64* %PC, align 8
  %9 = add i64 %8, 11
  store i64 %9, i64* %PC, align 8
  %10 = inttoptr i64 %7 to i32*
  store i32 2, i32* %10, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_43cc94(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__0x0__0xd8__rax_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = add i64 %3, 216
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
define %struct.Memory* @routine_je_.L_43ccf6(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movslq_0xc__rcx____rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = add i64 %3, 12
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
define %struct.Memory* @routine_movl__0x1____rax__rcx_4_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
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
  store i32 1, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__ecx__0x200__rax_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %ECX = bitcast %union.anon* %3 to i32*
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %4 = load i64, i64* %RAX, align 8
  %5 = add i64 %4, 512
  %6 = load i32, i32* %ECX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__ecx__0x204__rax_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %ECX = bitcast %union.anon* %3 to i32*
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %4 = load i64, i64* %RAX, align 8
  %5 = add i64 %4, 516
  %6 = load i32, i32* %ECX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__ecx__0x208__rax_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %ECX = bitcast %union.anon* %3 to i32*
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %4 = load i64, i64* %RAX, align 8
  %5 = add i64 %4, 520
  %6 = load i32, i32* %ECX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jne_.L_43cd60(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl__0x0__0x14__rax_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = add i64 %3, 20
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  store i32 0, i32* %7, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_43cdaa(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_0xc__rdx____esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %RDX, align 8
  %4 = add i64 %3, 12
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

; Function Attrs: nounwind
define %struct.Memory* @routine_imulq__0x278___rdx___rdx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %RDX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 7
  store i64 %5, i64* %PC, align 8
  %6 = sext i64 %3 to i128
  %7 = and i128 %6, -18446744073709551616
  %8 = zext i64 %3 to i128
  %9 = or i128 %7, %8
  %10 = mul nsw i128 %9, 632
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

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl_0x4__rax____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %ECX = bitcast %union.anon* %3 to i32*
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %4 = load i32, i32* %ECX, align 4
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
define %struct.Memory* @routine_jne_.L_43cda5(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl__0x0__0x1c__rax_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = add i64 %3, 28
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  store i32 0, i32* %7, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x0__0x28__rax_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = add i64 %3, 40
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  store i32 0, i32* %7, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x0__0x20__rax_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = add i64 %3, 32
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  store i32 0, i32* %7, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x0__0x24__rax_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = add i64 %3, 36
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  store i32 0, i32* %7, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x0__0x30__rax_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = add i64 %3, 48
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  store i32 0, i32* %7, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x0__0x2c__rax_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = add i64 %3, 44
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  store i32 0, i32* %7, align 4
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__0x0__0xcdc__rax_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = add i64 %3, 3292
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
define %struct.Memory* @routine_jne_.L_43ce08(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_callq_.ResetFastFullIntegerSearch(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_addq__0x70___rsp(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %3 = load i64, i64* %RSP, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 4
  store i64 %5, i64* %PC, align 8
  %6 = add i64 %3, 112
  store i64 %6, i64* %RSP, align 8
  %7 = icmp ugt i64 %3, -113
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
