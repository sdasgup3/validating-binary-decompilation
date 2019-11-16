; ModuleID = 'mcsema/test.proposed.inline.ll'
source_filename = "llvm-link"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu-elf"

%__bss_start_type = type <{ [8 x i8] }>
%G_0x6cb900_type = type <{ [8 x i8] }>
%G_0x6f6f90_type = type <{ [8 x i8] }>
%G_0x70fcf0_type = type <{ [8 x i8] }>
%G_0x726418_type = type <{ [8 x i8] }>
%G__0x6d2ec0_type = type <{ [8 x i8] }>
%G__0x6d40f0_type = type <{ [8 x i8] }>
%G__0x6f6fa0_type = type <{ [8 x i8] }>
%G__0x6f8f20_type = type <{ [8 x i8] }>
%G__0x722ff0_type = type <{ [8 x i8] }>
%G__0x723720_type = type <{ [8 x i8] }>
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
@G_0x6f6f90 = local_unnamed_addr global %G_0x6f6f90_type zeroinitializer
@G_0x70fcf0 = local_unnamed_addr global %G_0x70fcf0_type zeroinitializer
@G_0x726418 = local_unnamed_addr global %G_0x726418_type zeroinitializer
@G__0x6d2ec0 = global %G__0x6d2ec0_type zeroinitializer
@G__0x6d40f0 = global %G__0x6d40f0_type zeroinitializer
@G__0x6f6fa0 = global %G__0x6f6fa0_type zeroinitializer
@G__0x6f8f20 = global %G__0x6f8f20_type zeroinitializer
@G__0x722ff0 = global %G__0x722ff0_type zeroinitializer
@G__0x723720 = global %G__0x723720_type zeroinitializer

; Function Attrs: nounwind readnone
declare i32 @llvm.ctpop.i32(i32) #0

declare %struct.Memory* @sub_403980.intrapred_luma_16x16(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_448f10.find_sad_16x16(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_4043e0.dct_luma_16x16(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_4074c0.dct_chroma(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

; Function Attrs: alwaysinline
define %struct.Memory* @Intra16x16_Mode_Decision(%struct.State* noalias, i64, %struct.Memory* noalias readnone) local_unnamed_addr #1 {
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
  %11 = add i64 %7, -136
  store i64 %11, i64* %6, align 8
  %12 = icmp ult i64 %8, 128
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
  %RDI.i1624 = getelementptr inbounds %union.anon, %union.anon* %39, i64 0, i32 0
  %40 = add i64 %7, -16
  %41 = load i64, i64* %RDI.i1624, align 8
  %42 = add i64 %10, 14
  store i64 %42, i64* %3, align 8
  %43 = inttoptr i64 %40 to i64*
  store i64 %41, i64* %43, align 8
  %RSI.i1621 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %44 = load i64, i64* %RBP.i, align 8
  %45 = add i64 %44, -16
  %46 = load i64, i64* %RSI.i1621, align 8
  %47 = load i64, i64* %3, align 8
  %48 = add i64 %47, 4
  store i64 %48, i64* %3, align 8
  %49 = inttoptr i64 %45 to i64*
  store i64 %46, i64* %49, align 8
  %50 = load i64, i64* %3, align 8
  %51 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*), align 8
  store i64 %51, i64* %RSI.i1621, align 8
  %52 = add i64 %51, 14168
  %53 = add i64 %50, 15
  store i64 %53, i64* %3, align 8
  %54 = inttoptr i64 %52 to i64*
  %55 = load i64, i64* %54, align 8
  store i64 %55, i64* %RSI.i1621, align 8
  store i64 %51, i64* %RDI.i1624, align 8
  %56 = add i64 %51, 12
  %57 = add i64 %50, 27
  store i64 %57, i64* %3, align 8
  %58 = inttoptr i64 %56 to i32*
  %59 = load i32, i32* %58, align 4
  %60 = sext i32 %59 to i64
  %61 = mul nsw i64 %60, 632
  store i64 %61, i64* %RDI.i1624, align 8
  %62 = lshr i64 %61, 63
  %63 = add i64 %61, %55
  store i64 %63, i64* %RSI.i1621, align 8
  %64 = icmp ult i64 %63, %55
  %65 = icmp ult i64 %63, %61
  %66 = or i1 %64, %65
  %67 = zext i1 %66 to i8
  store i8 %67, i8* %14, align 1
  %68 = trunc i64 %63 to i32
  %69 = and i32 %68, 255
  %70 = tail call i32 @llvm.ctpop.i32(i32 %69)
  %71 = trunc i32 %70 to i8
  %72 = and i8 %71, 1
  %73 = xor i8 %72, 1
  store i8 %73, i8* %21, align 1
  %74 = xor i64 %61, %55
  %75 = xor i64 %74, %63
  %76 = lshr i64 %75, 4
  %77 = trunc i64 %76 to i8
  %78 = and i8 %77, 1
  store i8 %78, i8* %26, align 1
  %79 = icmp eq i64 %63, 0
  %80 = zext i1 %79 to i8
  store i8 %80, i8* %29, align 1
  %81 = lshr i64 %63, 63
  %82 = trunc i64 %81 to i8
  store i8 %82, i8* %32, align 1
  %83 = lshr i64 %55, 63
  %84 = xor i64 %81, %83
  %85 = xor i64 %81, %62
  %86 = add nuw nsw i64 %84, %85
  %87 = icmp eq i64 %86, 2
  %88 = zext i1 %87 to i8
  store i8 %88, i8* %38, align 1
  %89 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %RAX.i1605 = getelementptr inbounds %union.anon, %union.anon* %89, i64 0, i32 0
  %90 = add i64 %63, 524
  %91 = add i64 %50, 43
  store i64 %91, i64* %3, align 8
  %92 = inttoptr i64 %90 to i32*
  %93 = load i32, i32* %92, align 4
  %94 = zext i32 %93 to i64
  store i64 %94, i64* %RAX.i1605, align 8
  %EAX.i1602 = bitcast %union.anon* %89 to i32*
  %95 = load i64, i64* %RBP.i, align 8
  %96 = add i64 %95, -32
  %97 = add i64 %50, 46
  store i64 %97, i64* %3, align 8
  %98 = inttoptr i64 %96 to i32*
  store i32 %93, i32* %98, align 4
  %99 = load i64, i64* %3, align 8
  %100 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*), align 8
  store i64 %100, i64* %RSI.i1621, align 8
  %101 = add i64 %100, 152
  %102 = add i64 %99, 14
  store i64 %102, i64* %3, align 8
  %103 = inttoptr i64 %101 to i32*
  %104 = load i32, i32* %103, align 4
  %105 = zext i32 %104 to i64
  store i64 %105, i64* %RAX.i1605, align 8
  %106 = load i64, i64* %RBP.i, align 8
  %107 = add i64 %106, -48
  %108 = add i64 %99, 17
  store i64 %108, i64* %3, align 8
  %109 = inttoptr i64 %107 to i32*
  store i32 %104, i32* %109, align 4
  %110 = load i64, i64* %3, align 8
  %111 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*), align 8
  store i64 %111, i64* %RSI.i1621, align 8
  %112 = add i64 %111, 156
  %113 = add i64 %110, 14
  store i64 %113, i64* %3, align 8
  %114 = inttoptr i64 %112 to i32*
  %115 = load i32, i32* %114, align 4
  %116 = zext i32 %115 to i64
  store i64 %116, i64* %RAX.i1605, align 8
  %117 = load i64, i64* %RBP.i, align 8
  %118 = add i64 %117, -52
  %119 = add i64 %110, 17
  store i64 %119, i64* %3, align 8
  %120 = inttoptr i64 %118 to i32*
  store i32 %115, i32* %120, align 4
  %121 = load i64, i64* %3, align 8
  %122 = load i64, i64* bitcast (%G_0x726418_type* @G_0x726418 to i64*), align 8
  %123 = load i64, i64* %RBP.i, align 8
  %124 = add i64 %123, -64
  %125 = add i64 %121, 12
  store i64 %125, i64* %3, align 8
  %126 = inttoptr i64 %124 to i64*
  store i64 %122, i64* %126, align 8
  %127 = load i64, i64* %3, align 8
  %128 = load i64, i64* bitcast (%G_0x6f6f90_type* @G_0x6f6f90 to i64*), align 8
  store i64 %128, i64* %RSI.i1621, align 8
  %129 = load i64, i64* %RBP.i, align 8
  %130 = add i64 %129, -72
  %131 = add i64 %127, 12
  store i64 %131, i64* %3, align 8
  %132 = inttoptr i64 %130 to i64*
  store i64 %128, i64* %132, align 8
  %AL.i = bitcast %union.anon* %89 to i8*
  %133 = load i64, i64* %3, align 8
  store i8 0, i8* %AL.i, align 1
  %134 = add i64 %133, -546571
  %135 = add i64 %133, 7
  %136 = load i64, i64* %6, align 8
  %137 = add i64 %136, -8
  %138 = inttoptr i64 %137 to i64*
  store i64 %135, i64* %138, align 8
  store i64 %137, i64* %6, align 8
  store i64 %134, i64* %3, align 8
  %call2_48908d = tail call %struct.Memory* @sub_403980.intrapred_luma_16x16(%struct.State* %0, i64 %134, %struct.Memory* %2)
  %139 = load i64, i64* %3, align 8
  %140 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*), align 8
  store i64 %140, i64* %RSI.i1621, align 8
  %141 = add i64 %140, 72724
  %142 = add i64 %139, 15
  store i64 %142, i64* %3, align 8
  %143 = inttoptr i64 %141 to i32*
  %144 = load i32, i32* %143, align 4
  store i8 0, i8* %14, align 1
  %145 = and i32 %144, 255
  %146 = tail call i32 @llvm.ctpop.i32(i32 %145)
  %147 = trunc i32 %146 to i8
  %148 = and i8 %147, 1
  %149 = xor i8 %148, 1
  store i8 %149, i8* %21, align 1
  store i8 0, i8* %26, align 1
  %150 = icmp eq i32 %144, 0
  %151 = zext i1 %150 to i8
  store i8 %151, i8* %29, align 1
  %152 = lshr i32 %144, 31
  %153 = trunc i32 %152 to i8
  store i8 %153, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %.v119 = select i1 %150, i64 21, i64 33
  %154 = add i64 %139, %.v119
  store i64 %154, i64* %3, align 8
  br i1 %150, label %block_4890a7, label %block_.L_4890b3

block_4890a7:                                     ; preds = %entry
  %155 = load i64, i64* %RBP.i, align 8
  %156 = add i64 %155, -16
  %157 = add i64 %154, 4
  store i64 %157, i64* %3, align 8
  %158 = inttoptr i64 %156 to i64*
  %159 = load i64, i64* %158, align 8
  store i64 %159, i64* %RDI.i1624, align 8
  %160 = add i64 %154, -262551
  %161 = add i64 %154, 9
  %162 = load i64, i64* %6, align 8
  %163 = add i64 %162, -8
  %164 = inttoptr i64 %163 to i64*
  store i64 %161, i64* %164, align 8
  store i64 %163, i64* %6, align 8
  store i64 %160, i64* %3, align 8
  %call2_4890ab = tail call %struct.Memory* @sub_448f10.find_sad_16x16(%struct.State* nonnull %0, i64 %160, %struct.Memory* %call2_48908d)
  %165 = load i64, i64* %RBP.i, align 8
  %166 = add i64 %165, -80
  %167 = load i32, i32* %EAX.i1602, align 4
  %168 = load i64, i64* %3, align 8
  %169 = add i64 %168, 3
  store i64 %169, i64* %3, align 8
  %170 = inttoptr i64 %166 to i32*
  store i32 %167, i32* %170, align 4
  %.pre = load i64, i64* %3, align 8
  %.pre94 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*), align 8
  br label %block_.L_4890b3

block_.L_4890b3:                                  ; preds = %entry, %block_4890a7
  %171 = phi i64 [ %140, %entry ], [ %.pre94, %block_4890a7 ]
  %172 = phi i64 [ %154, %entry ], [ %.pre, %block_4890a7 ]
  %MEMORY.0 = phi %struct.Memory* [ %call2_48908d, %entry ], [ %call2_4890ab, %block_4890a7 ]
  store i64 %171, i64* %RAX.i1605, align 8
  %173 = add i64 %171, 72724
  %174 = add i64 %172, 15
  store i64 %174, i64* %3, align 8
  %175 = inttoptr i64 %173 to i32*
  %176 = load i32, i32* %175, align 4
  store i8 0, i8* %14, align 1
  %177 = and i32 %176, 255
  %178 = tail call i32 @llvm.ctpop.i32(i32 %177)
  %179 = trunc i32 %178 to i8
  %180 = and i8 %179, 1
  %181 = xor i8 %180, 1
  store i8 %181, i8* %21, align 1
  store i8 0, i8* %26, align 1
  %182 = icmp eq i32 %176, 0
  %183 = zext i1 %182 to i8
  store i8 %183, i8* %29, align 1
  %184 = lshr i32 %176, 31
  %185 = trunc i32 %184 to i8
  store i8 %185, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %.v120 = select i1 %182, i64 576, i64 21
  %186 = add i64 %172, %.v120
  store i64 %186, i64* %3, align 8
  %.pre97 = load i64, i64* %RBP.i, align 8
  br i1 %182, label %block_.L_4892f3, label %block_4890c8

block_4890c8:                                     ; preds = %block_.L_4890b3
  %187 = add i64 %.pre97, -40
  %188 = add i64 %186, 7
  store i64 %188, i64* %3, align 8
  %189 = inttoptr i64 %187 to i32*
  store i32 0, i32* %189, align 4
  %RCX.i1543 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RDX.i1541 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %EDI.i1527 = bitcast %union.anon* %39 to i32*
  %R8.i1528 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0, i32 0
  %190 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 19, i32 0, i32 0
  %.pre95 = load i64, i64* %3, align 8
  br label %block_.L_4890cf

block_.L_4890cf:                                  ; preds = %block_.L_4892db, %block_4890c8
  %191 = phi i64 [ %1493, %block_.L_4892db ], [ %.pre95, %block_4890c8 ]
  %192 = load i64, i64* %RBP.i, align 8
  %193 = add i64 %192, -40
  %194 = add i64 %191, 4
  store i64 %194, i64* %3, align 8
  %195 = inttoptr i64 %193 to i32*
  %196 = load i32, i32* %195, align 4
  %197 = add i32 %196, -16
  %198 = icmp ult i32 %196, 16
  %199 = zext i1 %198 to i8
  store i8 %199, i8* %14, align 1
  %200 = and i32 %197, 255
  %201 = tail call i32 @llvm.ctpop.i32(i32 %200)
  %202 = trunc i32 %201 to i8
  %203 = and i8 %202, 1
  %204 = xor i8 %203, 1
  store i8 %204, i8* %21, align 1
  %205 = xor i32 %196, 16
  %206 = xor i32 %205, %197
  %207 = lshr i32 %206, 4
  %208 = trunc i32 %207 to i8
  %209 = and i8 %208, 1
  store i8 %209, i8* %26, align 1
  %210 = icmp eq i32 %197, 0
  %211 = zext i1 %210 to i8
  store i8 %211, i8* %29, align 1
  %212 = lshr i32 %197, 31
  %213 = trunc i32 %212 to i8
  store i8 %213, i8* %32, align 1
  %214 = lshr i32 %196, 31
  %215 = xor i32 %212, %214
  %216 = add nuw nsw i32 %215, %214
  %217 = icmp eq i32 %216, 2
  %218 = zext i1 %217 to i8
  store i8 %218, i8* %38, align 1
  %219 = icmp ne i8 %213, 0
  %220 = xor i1 %219, %217
  %.v121 = select i1 %220, i64 10, i64 543
  %221 = add i64 %191, %.v121
  store i64 %221, i64* %3, align 8
  br i1 %220, label %block_4890d9, label %block_.L_4892ee

block_4890d9:                                     ; preds = %block_.L_4890cf
  %222 = add i64 %192, -36
  %223 = add i64 %221, 7
  store i64 %223, i64* %3, align 8
  %224 = inttoptr i64 %222 to i32*
  store i32 0, i32* %224, align 4
  %.pre96 = load i64, i64* %3, align 8
  br label %block_.L_4890e0

block_.L_4890e0:                                  ; preds = %block_4890ea, %block_4890d9
  %225 = phi i64 [ %1463, %block_4890ea ], [ %.pre96, %block_4890d9 ]
  %226 = load i64, i64* %RBP.i, align 8
  %227 = add i64 %226, -36
  %228 = add i64 %225, 4
  store i64 %228, i64* %3, align 8
  %229 = inttoptr i64 %227 to i32*
  %230 = load i32, i32* %229, align 4
  %231 = add i32 %230, -16
  %232 = icmp ult i32 %230, 16
  %233 = zext i1 %232 to i8
  store i8 %233, i8* %14, align 1
  %234 = and i32 %231, 255
  %235 = tail call i32 @llvm.ctpop.i32(i32 %234)
  %236 = trunc i32 %235 to i8
  %237 = and i8 %236, 1
  %238 = xor i8 %237, 1
  store i8 %238, i8* %21, align 1
  %239 = xor i32 %230, 16
  %240 = xor i32 %239, %231
  %241 = lshr i32 %240, 4
  %242 = trunc i32 %241 to i8
  %243 = and i8 %242, 1
  store i8 %243, i8* %26, align 1
  %244 = icmp eq i32 %231, 0
  %245 = zext i1 %244 to i8
  store i8 %245, i8* %29, align 1
  %246 = lshr i32 %231, 31
  %247 = trunc i32 %246 to i8
  store i8 %247, i8* %32, align 1
  %248 = lshr i32 %230, 31
  %249 = xor i32 %246, %248
  %250 = add nuw nsw i32 %249, %248
  %251 = icmp eq i32 %250, 2
  %252 = zext i1 %251 to i8
  store i8 %252, i8* %38, align 1
  %253 = icmp ne i8 %247, 0
  %254 = xor i1 %253, %251
  %.v118 = select i1 %254, i64 10, i64 507
  %255 = add i64 %225, %.v118
  store i64 %255, i64* %3, align 8
  br i1 %254, label %block_4890ea, label %block_.L_4892db

block_4890ea:                                     ; preds = %block_.L_4890e0
  store i64 ptrtoint (%G__0x723720_type* @G__0x723720 to i64), i64* %RAX.i1605, align 8
  store i64 ptrtoint (%G__0x6d40f0_type* @G__0x6d40f0 to i64), i64* %RCX.i1543, align 8
  store i64 ptrtoint (%G__0x6f6fa0_type* @G__0x6f6fa0 to i64), i64* %RDX.i1541, align 8
  %256 = add i64 %226, -72
  %257 = add i64 %255, 34
  store i64 %257, i64* %3, align 8
  %258 = inttoptr i64 %256 to i64*
  %259 = load i64, i64* %258, align 8
  store i64 %259, i64* %RSI.i1621, align 8
  %260 = add i64 %255, 37
  store i64 %260, i64* %3, align 8
  %261 = inttoptr i64 %259 to i64*
  %262 = load i64, i64* %261, align 8
  store i64 %262, i64* %RSI.i1621, align 8
  %263 = add i64 %226, -52
  %264 = add i64 %255, 40
  store i64 %264, i64* %3, align 8
  %265 = inttoptr i64 %263 to i32*
  %266 = load i32, i32* %265, align 4
  %267 = zext i32 %266 to i64
  store i64 %267, i64* %RDI.i1624, align 8
  %268 = add i64 %226, -40
  %269 = add i64 %255, 43
  store i64 %269, i64* %3, align 8
  %270 = inttoptr i64 %268 to i32*
  %271 = load i32, i32* %270, align 4
  %272 = add i32 %271, %266
  %273 = zext i32 %272 to i64
  store i64 %273, i64* %RDI.i1624, align 8
  %274 = icmp ult i32 %272, %266
  %275 = icmp ult i32 %272, %271
  %276 = or i1 %274, %275
  %277 = zext i1 %276 to i8
  store i8 %277, i8* %14, align 1
  %278 = and i32 %272, 255
  %279 = tail call i32 @llvm.ctpop.i32(i32 %278)
  %280 = trunc i32 %279 to i8
  %281 = and i8 %280, 1
  %282 = xor i8 %281, 1
  store i8 %282, i8* %21, align 1
  %283 = xor i32 %271, %266
  %284 = xor i32 %283, %272
  %285 = lshr i32 %284, 4
  %286 = trunc i32 %285 to i8
  %287 = and i8 %286, 1
  store i8 %287, i8* %26, align 1
  %288 = icmp eq i32 %272, 0
  %289 = zext i1 %288 to i8
  store i8 %289, i8* %29, align 1
  %290 = lshr i32 %272, 31
  %291 = trunc i32 %290 to i8
  store i8 %291, i8* %32, align 1
  %292 = lshr i32 %266, 31
  %293 = lshr i32 %271, 31
  %294 = xor i32 %290, %292
  %295 = xor i32 %290, %293
  %296 = add nuw nsw i32 %294, %295
  %297 = icmp eq i32 %296, 2
  %298 = zext i1 %297 to i8
  store i8 %298, i8* %38, align 1
  %299 = sext i32 %272 to i64
  store i64 %299, i64* %R8.i1528, align 8
  %300 = shl nsw i64 %299, 3
  %301 = add i64 %262, %300
  %302 = add i64 %255, 50
  store i64 %302, i64* %3, align 8
  %303 = inttoptr i64 %301 to i64*
  %304 = load i64, i64* %303, align 8
  store i64 %304, i64* %RSI.i1621, align 8
  %305 = add i64 %226, -48
  %306 = add i64 %255, 53
  store i64 %306, i64* %3, align 8
  %307 = inttoptr i64 %305 to i32*
  %308 = load i32, i32* %307, align 4
  %309 = zext i32 %308 to i64
  store i64 %309, i64* %RDI.i1624, align 8
  %310 = add i64 %255, 56
  store i64 %310, i64* %3, align 8
  %311 = load i32, i32* %229, align 4
  %312 = add i32 %311, %308
  %313 = zext i32 %312 to i64
  store i64 %313, i64* %RDI.i1624, align 8
  %314 = icmp ult i32 %312, %308
  %315 = icmp ult i32 %312, %311
  %316 = or i1 %314, %315
  %317 = zext i1 %316 to i8
  store i8 %317, i8* %14, align 1
  %318 = and i32 %312, 255
  %319 = tail call i32 @llvm.ctpop.i32(i32 %318)
  %320 = trunc i32 %319 to i8
  %321 = and i8 %320, 1
  %322 = xor i8 %321, 1
  store i8 %322, i8* %21, align 1
  %323 = xor i32 %311, %308
  %324 = xor i32 %323, %312
  %325 = lshr i32 %324, 4
  %326 = trunc i32 %325 to i8
  %327 = and i8 %326, 1
  store i8 %327, i8* %26, align 1
  %328 = icmp eq i32 %312, 0
  %329 = zext i1 %328 to i8
  store i8 %329, i8* %29, align 1
  %330 = lshr i32 %312, 31
  %331 = trunc i32 %330 to i8
  store i8 %331, i8* %32, align 1
  %332 = lshr i32 %308, 31
  %333 = lshr i32 %311, 31
  %334 = xor i32 %330, %332
  %335 = xor i32 %330, %333
  %336 = add nuw nsw i32 %334, %335
  %337 = icmp eq i32 %336, 2
  %338 = zext i1 %337 to i8
  store i8 %338, i8* %38, align 1
  %339 = sext i32 %312 to i64
  store i64 %339, i64* %R8.i1528, align 8
  %340 = shl nsw i64 %339, 1
  %341 = add i64 %304, %340
  %342 = add i64 %255, 64
  store i64 %342, i64* %3, align 8
  %343 = inttoptr i64 %341 to i16*
  %344 = load i16, i16* %343, align 2
  %345 = zext i16 %344 to i64
  store i64 %345, i64* %RDI.i1624, align 8
  %346 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*), align 8
  %347 = add i64 %346, 8504
  store i64 %347, i64* %RSI.i1621, align 8
  %348 = icmp ugt i64 %346, -8505
  %349 = zext i1 %348 to i8
  store i8 %349, i8* %14, align 1
  %350 = trunc i64 %347 to i32
  %351 = and i32 %350, 255
  %352 = tail call i32 @llvm.ctpop.i32(i32 %351)
  %353 = trunc i32 %352 to i8
  %354 = and i8 %353, 1
  %355 = xor i8 %354, 1
  store i8 %355, i8* %21, align 1
  %356 = xor i64 %346, 16
  %357 = xor i64 %356, %347
  %358 = lshr i64 %357, 4
  %359 = trunc i64 %358 to i8
  %360 = and i8 %359, 1
  store i8 %360, i8* %26, align 1
  %361 = icmp eq i64 %347, 0
  %362 = zext i1 %361 to i8
  store i8 %362, i8* %29, align 1
  %363 = lshr i64 %347, 63
  %364 = trunc i64 %363 to i8
  store i8 %364, i8* %32, align 1
  %365 = lshr i64 %346, 63
  %366 = xor i64 %363, %365
  %367 = add nuw nsw i64 %366, %363
  %368 = icmp eq i64 %367, 2
  %369 = zext i1 %368 to i8
  store i8 %369, i8* %38, align 1
  %370 = load i64, i64* %RBP.i, align 8
  %371 = add i64 %370, -32
  %372 = add i64 %255, 83
  store i64 %372, i64* %3, align 8
  %373 = inttoptr i64 %371 to i32*
  %374 = load i32, i32* %373, align 4
  %375 = sext i32 %374 to i64
  %376 = shl nsw i64 %375, 9
  store i64 %376, i64* %R8.i1528, align 8
  %377 = add i64 %376, %347
  store i64 %377, i64* %RSI.i1621, align 8
  %378 = icmp ult i64 %377, %347
  %379 = icmp ult i64 %377, %376
  %380 = or i1 %378, %379
  %381 = zext i1 %380 to i8
  store i8 %381, i8* %14, align 1
  %382 = trunc i64 %377 to i32
  %383 = and i32 %382, 255
  %384 = tail call i32 @llvm.ctpop.i32(i32 %383)
  %385 = trunc i32 %384 to i8
  %386 = and i8 %385, 1
  %387 = xor i8 %386, 1
  store i8 %387, i8* %21, align 1
  %388 = xor i64 %347, %377
  %389 = lshr i64 %388, 4
  %390 = trunc i64 %389 to i8
  %391 = and i8 %390, 1
  store i8 %391, i8* %26, align 1
  %392 = icmp eq i64 %377, 0
  %393 = zext i1 %392 to i8
  store i8 %393, i8* %29, align 1
  %394 = lshr i64 %377, 63
  %395 = trunc i64 %394 to i8
  store i8 %395, i8* %32, align 1
  %396 = lshr i64 %375, 54
  %397 = and i64 %396, 1
  %398 = xor i64 %394, %363
  %399 = xor i64 %394, %397
  %400 = add nuw nsw i64 %398, %399
  %401 = icmp eq i64 %400, 2
  %402 = zext i1 %401 to i8
  store i8 %402, i8* %38, align 1
  %403 = add i64 %370, -36
  %404 = add i64 %255, 94
  store i64 %404, i64* %3, align 8
  %405 = inttoptr i64 %403 to i32*
  %406 = load i32, i32* %405, align 4
  %407 = sext i32 %406 to i64
  %408 = shl nsw i64 %407, 5
  store i64 %408, i64* %R8.i1528, align 8
  %409 = add i64 %408, %377
  store i64 %409, i64* %RSI.i1621, align 8
  %410 = icmp ult i64 %409, %377
  %411 = icmp ult i64 %409, %408
  %412 = or i1 %410, %411
  %413 = zext i1 %412 to i8
  store i8 %413, i8* %14, align 1
  %414 = trunc i64 %409 to i32
  %415 = and i32 %414, 255
  %416 = tail call i32 @llvm.ctpop.i32(i32 %415)
  %417 = trunc i32 %416 to i8
  %418 = and i8 %417, 1
  %419 = xor i8 %418, 1
  store i8 %419, i8* %21, align 1
  %420 = xor i64 %377, %409
  %421 = lshr i64 %420, 4
  %422 = trunc i64 %421 to i8
  %423 = and i8 %422, 1
  store i8 %423, i8* %26, align 1
  %424 = icmp eq i64 %409, 0
  %425 = zext i1 %424 to i8
  store i8 %425, i8* %29, align 1
  %426 = lshr i64 %409, 63
  %427 = trunc i64 %426 to i8
  store i8 %427, i8* %32, align 1
  %428 = lshr i64 %407, 58
  %429 = and i64 %428, 1
  %430 = xor i64 %426, %394
  %431 = xor i64 %426, %429
  %432 = add nuw nsw i64 %430, %431
  %433 = icmp eq i64 %432, 2
  %434 = zext i1 %433 to i8
  store i8 %434, i8* %38, align 1
  %435 = load i64, i64* %RBP.i, align 8
  %436 = add i64 %435, -40
  %437 = add i64 %255, 105
  store i64 %437, i64* %3, align 8
  %438 = inttoptr i64 %436 to i32*
  %439 = load i32, i32* %438, align 4
  %440 = sext i32 %439 to i64
  store i64 %440, i64* %R8.i1528, align 8
  %441 = shl nsw i64 %440, 1
  %442 = add i64 %441, %409
  %443 = add i64 %255, 110
  store i64 %443, i64* %3, align 8
  %444 = inttoptr i64 %442 to i16*
  %445 = load i16, i16* %444, align 2
  %446 = zext i16 %445 to i64
  store i64 %446, i64* %190, align 8
  %447 = load i64, i64* %RDI.i1624, align 8
  %448 = zext i16 %445 to i32
  %449 = zext i16 %445 to i64
  %450 = trunc i64 %447 to i32
  %451 = sub i32 %450, %448
  %452 = zext i32 %451 to i64
  store i64 %452, i64* %RDI.i1624, align 8
  %453 = icmp ult i32 %450, %448
  %454 = zext i1 %453 to i8
  store i8 %454, i8* %14, align 1
  %455 = and i32 %451, 255
  %456 = tail call i32 @llvm.ctpop.i32(i32 %455)
  %457 = trunc i32 %456 to i8
  %458 = and i8 %457, 1
  %459 = xor i8 %458, 1
  store i8 %459, i8* %21, align 1
  %460 = xor i64 %449, %447
  %461 = trunc i64 %460 to i32
  %462 = xor i32 %461, %451
  %463 = lshr i32 %462, 4
  %464 = trunc i32 %463 to i8
  %465 = and i8 %464, 1
  store i8 %465, i8* %26, align 1
  %466 = icmp eq i32 %451, 0
  %467 = zext i1 %466 to i8
  store i8 %467, i8* %29, align 1
  %468 = lshr i32 %451, 31
  %469 = trunc i32 %468 to i8
  store i8 %469, i8* %32, align 1
  %470 = lshr i32 %450, 31
  %471 = xor i32 %468, %470
  %472 = add nuw nsw i32 %471, %470
  %473 = icmp eq i32 %472, 2
  %474 = zext i1 %473 to i8
  store i8 %474, i8* %38, align 1
  %475 = add i64 %435, -28
  %476 = add i64 %255, 116
  store i64 %476, i64* %3, align 8
  %477 = inttoptr i64 %475 to i32*
  store i32 %451, i32* %477, align 4
  %478 = load i64, i64* %RBP.i, align 8
  %479 = add i64 %478, -64
  %480 = load i64, i64* %3, align 8
  %481 = add i64 %480, 4
  store i64 %481, i64* %3, align 8
  %482 = inttoptr i64 %479 to i64*
  %483 = load i64, i64* %482, align 8
  store i64 %483, i64* %RSI.i1621, align 8
  %484 = add i64 %478, -52
  %485 = add i64 %480, 7
  store i64 %485, i64* %3, align 8
  %486 = inttoptr i64 %484 to i32*
  %487 = load i32, i32* %486, align 4
  %488 = zext i32 %487 to i64
  store i64 %488, i64* %RDI.i1624, align 8
  %489 = add i64 %478, -40
  %490 = add i64 %480, 10
  store i64 %490, i64* %3, align 8
  %491 = inttoptr i64 %489 to i32*
  %492 = load i32, i32* %491, align 4
  %493 = add i32 %492, %487
  %494 = zext i32 %493 to i64
  store i64 %494, i64* %RDI.i1624, align 8
  %495 = icmp ult i32 %493, %487
  %496 = icmp ult i32 %493, %492
  %497 = or i1 %495, %496
  %498 = zext i1 %497 to i8
  store i8 %498, i8* %14, align 1
  %499 = and i32 %493, 255
  %500 = tail call i32 @llvm.ctpop.i32(i32 %499)
  %501 = trunc i32 %500 to i8
  %502 = and i8 %501, 1
  %503 = xor i8 %502, 1
  store i8 %503, i8* %21, align 1
  %504 = xor i32 %492, %487
  %505 = xor i32 %504, %493
  %506 = lshr i32 %505, 4
  %507 = trunc i32 %506 to i8
  %508 = and i8 %507, 1
  store i8 %508, i8* %26, align 1
  %509 = icmp eq i32 %493, 0
  %510 = zext i1 %509 to i8
  store i8 %510, i8* %29, align 1
  %511 = lshr i32 %493, 31
  %512 = trunc i32 %511 to i8
  store i8 %512, i8* %32, align 1
  %513 = lshr i32 %487, 31
  %514 = lshr i32 %492, 31
  %515 = xor i32 %511, %513
  %516 = xor i32 %511, %514
  %517 = add nuw nsw i32 %515, %516
  %518 = icmp eq i32 %517, 2
  %519 = zext i1 %518 to i8
  store i8 %519, i8* %38, align 1
  %520 = sext i32 %493 to i64
  store i64 %520, i64* %R8.i1528, align 8
  %521 = shl nsw i64 %520, 3
  %522 = add i64 %483, %521
  %523 = add i64 %480, 17
  store i64 %523, i64* %3, align 8
  %524 = inttoptr i64 %522 to i64*
  %525 = load i64, i64* %524, align 8
  store i64 %525, i64* %RSI.i1621, align 8
  %526 = add i64 %478, -48
  %527 = add i64 %480, 20
  store i64 %527, i64* %3, align 8
  %528 = inttoptr i64 %526 to i32*
  %529 = load i32, i32* %528, align 4
  %530 = zext i32 %529 to i64
  store i64 %530, i64* %RDI.i1624, align 8
  %531 = add i64 %478, -36
  %532 = add i64 %480, 23
  store i64 %532, i64* %3, align 8
  %533 = inttoptr i64 %531 to i32*
  %534 = load i32, i32* %533, align 4
  %535 = add i32 %534, %529
  %536 = zext i32 %535 to i64
  store i64 %536, i64* %RDI.i1624, align 8
  %537 = icmp ult i32 %535, %529
  %538 = icmp ult i32 %535, %534
  %539 = or i1 %537, %538
  %540 = zext i1 %539 to i8
  store i8 %540, i8* %14, align 1
  %541 = and i32 %535, 255
  %542 = tail call i32 @llvm.ctpop.i32(i32 %541)
  %543 = trunc i32 %542 to i8
  %544 = and i8 %543, 1
  %545 = xor i8 %544, 1
  store i8 %545, i8* %21, align 1
  %546 = xor i32 %534, %529
  %547 = xor i32 %546, %535
  %548 = lshr i32 %547, 4
  %549 = trunc i32 %548 to i8
  %550 = and i8 %549, 1
  store i8 %550, i8* %26, align 1
  %551 = icmp eq i32 %535, 0
  %552 = zext i1 %551 to i8
  store i8 %552, i8* %29, align 1
  %553 = lshr i32 %535, 31
  %554 = trunc i32 %553 to i8
  store i8 %554, i8* %32, align 1
  %555 = lshr i32 %529, 31
  %556 = lshr i32 %534, 31
  %557 = xor i32 %553, %555
  %558 = xor i32 %553, %556
  %559 = add nuw nsw i32 %557, %558
  %560 = icmp eq i32 %559, 2
  %561 = zext i1 %560 to i8
  store i8 %561, i8* %38, align 1
  %562 = sext i32 %535 to i64
  store i64 %562, i64* %R8.i1528, align 8
  %563 = shl nsw i64 %562, 1
  %564 = add i64 %525, %563
  %565 = add i64 %480, 31
  store i64 %565, i64* %3, align 8
  %566 = inttoptr i64 %564 to i16*
  %567 = load i16, i16* %566, align 2
  %568 = zext i16 %567 to i64
  store i64 %568, i64* %RDI.i1624, align 8
  %569 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*), align 8
  %570 = add i64 %569, 4792
  store i64 %570, i64* %RSI.i1621, align 8
  %571 = icmp ugt i64 %569, -4793
  %572 = zext i1 %571 to i8
  store i8 %572, i8* %14, align 1
  %573 = trunc i64 %570 to i32
  %574 = and i32 %573, 255
  %575 = tail call i32 @llvm.ctpop.i32(i32 %574)
  %576 = trunc i32 %575 to i8
  %577 = and i8 %576, 1
  %578 = xor i8 %577, 1
  store i8 %578, i8* %21, align 1
  %579 = xor i64 %569, 16
  %580 = xor i64 %579, %570
  %581 = lshr i64 %580, 4
  %582 = trunc i64 %581 to i8
  %583 = and i8 %582, 1
  store i8 %583, i8* %26, align 1
  %584 = icmp eq i64 %570, 0
  %585 = zext i1 %584 to i8
  store i8 %585, i8* %29, align 1
  %586 = lshr i64 %570, 63
  %587 = trunc i64 %586 to i8
  store i8 %587, i8* %32, align 1
  %588 = lshr i64 %569, 63
  %589 = xor i64 %586, %588
  %590 = add nuw nsw i64 %589, %586
  %591 = icmp eq i64 %590, 2
  %592 = zext i1 %591 to i8
  store i8 %592, i8* %38, align 1
  %593 = load i64, i64* %RBP.i, align 8
  %594 = add i64 %593, -16
  %595 = add i64 %480, 50
  store i64 %595, i64* %3, align 8
  %596 = inttoptr i64 %594 to i64*
  %597 = load i64, i64* %596, align 8
  store i64 %597, i64* %R8.i1528, align 8
  %598 = add i64 %480, 53
  store i64 %598, i64* %3, align 8
  %599 = inttoptr i64 %597 to i32*
  %600 = load i32, i32* %599, align 4
  %601 = sext i32 %600 to i64
  %602 = shl nsw i64 %601, 9
  store i64 %602, i64* %R8.i1528, align 8
  %603 = add i64 %602, %570
  store i64 %603, i64* %RSI.i1621, align 8
  %604 = icmp ult i64 %603, %570
  %605 = icmp ult i64 %603, %602
  %606 = or i1 %604, %605
  %607 = zext i1 %606 to i8
  store i8 %607, i8* %14, align 1
  %608 = trunc i64 %603 to i32
  %609 = and i32 %608, 255
  %610 = tail call i32 @llvm.ctpop.i32(i32 %609)
  %611 = trunc i32 %610 to i8
  %612 = and i8 %611, 1
  %613 = xor i8 %612, 1
  store i8 %613, i8* %21, align 1
  %614 = xor i64 %570, %603
  %615 = lshr i64 %614, 4
  %616 = trunc i64 %615 to i8
  %617 = and i8 %616, 1
  store i8 %617, i8* %26, align 1
  %618 = icmp eq i64 %603, 0
  %619 = zext i1 %618 to i8
  store i8 %619, i8* %29, align 1
  %620 = lshr i64 %603, 63
  %621 = trunc i64 %620 to i8
  store i8 %621, i8* %32, align 1
  %622 = lshr i64 %601, 54
  %623 = and i64 %622, 1
  %624 = xor i64 %620, %586
  %625 = xor i64 %620, %623
  %626 = add nuw nsw i64 %624, %625
  %627 = icmp eq i64 %626, 2
  %628 = zext i1 %627 to i8
  store i8 %628, i8* %38, align 1
  %629 = add i64 %593, -40
  %630 = add i64 %480, 64
  store i64 %630, i64* %3, align 8
  %631 = inttoptr i64 %629 to i32*
  %632 = load i32, i32* %631, align 4
  %633 = sext i32 %632 to i64
  %634 = shl nsw i64 %633, 5
  store i64 %634, i64* %R8.i1528, align 8
  %635 = add i64 %634, %603
  store i64 %635, i64* %RSI.i1621, align 8
  %636 = icmp ult i64 %635, %603
  %637 = icmp ult i64 %635, %634
  %638 = or i1 %636, %637
  %639 = zext i1 %638 to i8
  store i8 %639, i8* %14, align 1
  %640 = trunc i64 %635 to i32
  %641 = and i32 %640, 255
  %642 = tail call i32 @llvm.ctpop.i32(i32 %641)
  %643 = trunc i32 %642 to i8
  %644 = and i8 %643, 1
  %645 = xor i8 %644, 1
  store i8 %645, i8* %21, align 1
  %646 = xor i64 %603, %635
  %647 = lshr i64 %646, 4
  %648 = trunc i64 %647 to i8
  %649 = and i8 %648, 1
  store i8 %649, i8* %26, align 1
  %650 = icmp eq i64 %635, 0
  %651 = zext i1 %650 to i8
  store i8 %651, i8* %29, align 1
  %652 = lshr i64 %635, 63
  %653 = trunc i64 %652 to i8
  store i8 %653, i8* %32, align 1
  %654 = lshr i64 %633, 58
  %655 = and i64 %654, 1
  %656 = xor i64 %652, %620
  %657 = xor i64 %652, %655
  %658 = add nuw nsw i64 %656, %657
  %659 = icmp eq i64 %658, 2
  %660 = zext i1 %659 to i8
  store i8 %660, i8* %38, align 1
  %661 = load i64, i64* %RBP.i, align 8
  %662 = add i64 %661, -36
  %663 = add i64 %480, 75
  store i64 %663, i64* %3, align 8
  %664 = inttoptr i64 %662 to i32*
  %665 = load i32, i32* %664, align 4
  %666 = sext i32 %665 to i64
  store i64 %666, i64* %R8.i1528, align 8
  %667 = shl nsw i64 %666, 1
  %668 = add i64 %667, %635
  %669 = add i64 %480, 80
  store i64 %669, i64* %3, align 8
  %670 = inttoptr i64 %668 to i16*
  %671 = load i16, i16* %670, align 2
  %672 = zext i16 %671 to i64
  store i64 %672, i64* %190, align 8
  %673 = load i64, i64* %RDI.i1624, align 8
  %674 = zext i16 %671 to i32
  %675 = zext i16 %671 to i64
  %676 = trunc i64 %673 to i32
  %677 = sub i32 %676, %674
  %678 = zext i32 %677 to i64
  store i64 %678, i64* %RDI.i1624, align 8
  %679 = icmp ult i32 %676, %674
  %680 = zext i1 %679 to i8
  store i8 %680, i8* %14, align 1
  %681 = and i32 %677, 255
  %682 = tail call i32 @llvm.ctpop.i32(i32 %681)
  %683 = trunc i32 %682 to i8
  %684 = and i8 %683, 1
  %685 = xor i8 %684, 1
  store i8 %685, i8* %21, align 1
  %686 = xor i64 %675, %673
  %687 = trunc i64 %686 to i32
  %688 = xor i32 %687, %677
  %689 = lshr i32 %688, 4
  %690 = trunc i32 %689 to i8
  %691 = and i8 %690, 1
  store i8 %691, i8* %26, align 1
  %692 = icmp eq i32 %677, 0
  %693 = zext i1 %692 to i8
  store i8 %693, i8* %29, align 1
  %694 = lshr i32 %677, 31
  %695 = trunc i32 %694 to i8
  store i8 %695, i8* %32, align 1
  %696 = lshr i32 %676, 31
  %697 = xor i32 %694, %696
  %698 = add nuw nsw i32 %697, %696
  %699 = icmp eq i32 %698, 2
  %700 = zext i1 %699 to i8
  store i8 %700, i8* %38, align 1
  %701 = add i64 %661, -24
  %702 = add i64 %480, 86
  store i64 %702, i64* %3, align 8
  %703 = inttoptr i64 %701 to i32*
  store i32 %677, i32* %703, align 4
  %704 = load i64, i64* %RBP.i, align 8
  %705 = add i64 %704, -72
  %706 = load i64, i64* %3, align 8
  %707 = add i64 %706, 4
  store i64 %707, i64* %3, align 8
  %708 = inttoptr i64 %705 to i64*
  %709 = load i64, i64* %708, align 8
  store i64 %709, i64* %RSI.i1621, align 8
  %710 = add i64 %709, 8
  %711 = add i64 %706, 8
  store i64 %711, i64* %3, align 8
  %712 = inttoptr i64 %710 to i64*
  %713 = load i64, i64* %712, align 8
  store i64 %713, i64* %RSI.i1621, align 8
  %714 = add i64 %704, -52
  %715 = add i64 %706, 11
  store i64 %715, i64* %3, align 8
  %716 = inttoptr i64 %714 to i32*
  %717 = load i32, i32* %716, align 4
  %718 = zext i32 %717 to i64
  store i64 %718, i64* %RDI.i1624, align 8
  %719 = add i64 %704, -40
  %720 = add i64 %706, 14
  store i64 %720, i64* %3, align 8
  %721 = inttoptr i64 %719 to i32*
  %722 = load i32, i32* %721, align 4
  %723 = add i32 %722, %717
  %724 = zext i32 %723 to i64
  store i64 %724, i64* %RDI.i1624, align 8
  %725 = icmp ult i32 %723, %717
  %726 = icmp ult i32 %723, %722
  %727 = or i1 %725, %726
  %728 = zext i1 %727 to i8
  store i8 %728, i8* %14, align 1
  %729 = and i32 %723, 255
  %730 = tail call i32 @llvm.ctpop.i32(i32 %729)
  %731 = trunc i32 %730 to i8
  %732 = and i8 %731, 1
  %733 = xor i8 %732, 1
  store i8 %733, i8* %21, align 1
  %734 = xor i32 %722, %717
  %735 = xor i32 %734, %723
  %736 = lshr i32 %735, 4
  %737 = trunc i32 %736 to i8
  %738 = and i8 %737, 1
  store i8 %738, i8* %26, align 1
  %739 = icmp eq i32 %723, 0
  %740 = zext i1 %739 to i8
  store i8 %740, i8* %29, align 1
  %741 = lshr i32 %723, 31
  %742 = trunc i32 %741 to i8
  store i8 %742, i8* %32, align 1
  %743 = lshr i32 %717, 31
  %744 = lshr i32 %722, 31
  %745 = xor i32 %741, %743
  %746 = xor i32 %741, %744
  %747 = add nuw nsw i32 %745, %746
  %748 = icmp eq i32 %747, 2
  %749 = zext i1 %748 to i8
  store i8 %749, i8* %38, align 1
  %750 = sext i32 %723 to i64
  store i64 %750, i64* %R8.i1528, align 8
  %751 = shl nsw i64 %750, 3
  %752 = add i64 %713, %751
  %753 = add i64 %706, 21
  store i64 %753, i64* %3, align 8
  %754 = inttoptr i64 %752 to i64*
  %755 = load i64, i64* %754, align 8
  store i64 %755, i64* %RSI.i1621, align 8
  %756 = add i64 %704, -48
  %757 = add i64 %706, 24
  store i64 %757, i64* %3, align 8
  %758 = inttoptr i64 %756 to i32*
  %759 = load i32, i32* %758, align 4
  %760 = zext i32 %759 to i64
  store i64 %760, i64* %RDI.i1624, align 8
  %761 = add i64 %704, -36
  %762 = add i64 %706, 27
  store i64 %762, i64* %3, align 8
  %763 = inttoptr i64 %761 to i32*
  %764 = load i32, i32* %763, align 4
  %765 = add i32 %764, %759
  %766 = zext i32 %765 to i64
  store i64 %766, i64* %RDI.i1624, align 8
  %767 = icmp ult i32 %765, %759
  %768 = icmp ult i32 %765, %764
  %769 = or i1 %767, %768
  %770 = zext i1 %769 to i8
  store i8 %770, i8* %14, align 1
  %771 = and i32 %765, 255
  %772 = tail call i32 @llvm.ctpop.i32(i32 %771)
  %773 = trunc i32 %772 to i8
  %774 = and i8 %773, 1
  %775 = xor i8 %774, 1
  store i8 %775, i8* %21, align 1
  %776 = xor i32 %764, %759
  %777 = xor i32 %776, %765
  %778 = lshr i32 %777, 4
  %779 = trunc i32 %778 to i8
  %780 = and i8 %779, 1
  store i8 %780, i8* %26, align 1
  %781 = icmp eq i32 %765, 0
  %782 = zext i1 %781 to i8
  store i8 %782, i8* %29, align 1
  %783 = lshr i32 %765, 31
  %784 = trunc i32 %783 to i8
  store i8 %784, i8* %32, align 1
  %785 = lshr i32 %759, 31
  %786 = lshr i32 %764, 31
  %787 = xor i32 %783, %785
  %788 = xor i32 %783, %786
  %789 = add nuw nsw i32 %787, %788
  %790 = icmp eq i32 %789, 2
  %791 = zext i1 %790 to i8
  store i8 %791, i8* %38, align 1
  %792 = sext i32 %765 to i64
  store i64 %792, i64* %R8.i1528, align 8
  %793 = shl nsw i64 %792, 1
  %794 = add i64 %755, %793
  %795 = add i64 %706, 35
  store i64 %795, i64* %3, align 8
  %796 = inttoptr i64 %794 to i16*
  %797 = load i16, i16* %796, align 2
  %798 = zext i16 %797 to i64
  store i64 %798, i64* %RDI.i1624, align 8
  %799 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*), align 8
  %800 = add i64 %799, 8504
  %801 = lshr i64 %800, 63
  %802 = add i64 %799, 10552
  store i64 %802, i64* %RSI.i1621, align 8
  %803 = icmp ugt i64 %800, -2049
  %804 = zext i1 %803 to i8
  store i8 %804, i8* %14, align 1
  %805 = trunc i64 %802 to i32
  %806 = and i32 %805, 255
  %807 = tail call i32 @llvm.ctpop.i32(i32 %806)
  %808 = trunc i32 %807 to i8
  %809 = and i8 %808, 1
  %810 = xor i8 %809, 1
  store i8 %810, i8* %21, align 1
  %811 = xor i64 %802, %800
  %812 = lshr i64 %811, 4
  %813 = trunc i64 %812 to i8
  %814 = and i8 %813, 1
  store i8 %814, i8* %26, align 1
  %815 = icmp eq i64 %802, 0
  %816 = zext i1 %815 to i8
  store i8 %816, i8* %29, align 1
  %817 = lshr i64 %802, 63
  %818 = trunc i64 %817 to i8
  store i8 %818, i8* %32, align 1
  %819 = xor i64 %817, %801
  %820 = add nuw nsw i64 %819, %817
  %821 = icmp eq i64 %820, 2
  %822 = zext i1 %821 to i8
  store i8 %822, i8* %38, align 1
  %823 = load i64, i64* %RBP.i, align 8
  %824 = add i64 %823, -32
  %825 = add i64 %706, 61
  store i64 %825, i64* %3, align 8
  %826 = inttoptr i64 %824 to i32*
  %827 = load i32, i32* %826, align 4
  %828 = sext i32 %827 to i64
  %829 = shl nsw i64 %828, 9
  store i64 %829, i64* %R8.i1528, align 8
  %830 = add i64 %829, %802
  store i64 %830, i64* %RSI.i1621, align 8
  %831 = icmp ult i64 %830, %802
  %832 = icmp ult i64 %830, %829
  %833 = or i1 %831, %832
  %834 = zext i1 %833 to i8
  store i8 %834, i8* %14, align 1
  %835 = trunc i64 %830 to i32
  %836 = and i32 %835, 255
  %837 = tail call i32 @llvm.ctpop.i32(i32 %836)
  %838 = trunc i32 %837 to i8
  %839 = and i8 %838, 1
  %840 = xor i8 %839, 1
  store i8 %840, i8* %21, align 1
  %841 = xor i64 %802, %830
  %842 = lshr i64 %841, 4
  %843 = trunc i64 %842 to i8
  %844 = and i8 %843, 1
  store i8 %844, i8* %26, align 1
  %845 = icmp eq i64 %830, 0
  %846 = zext i1 %845 to i8
  store i8 %846, i8* %29, align 1
  %847 = lshr i64 %830, 63
  %848 = trunc i64 %847 to i8
  store i8 %848, i8* %32, align 1
  %849 = lshr i64 %828, 54
  %850 = and i64 %849, 1
  %851 = xor i64 %847, %817
  %852 = xor i64 %847, %850
  %853 = add nuw nsw i64 %851, %852
  %854 = icmp eq i64 %853, 2
  %855 = zext i1 %854 to i8
  store i8 %855, i8* %38, align 1
  %856 = add i64 %823, -36
  %857 = add i64 %706, 72
  store i64 %857, i64* %3, align 8
  %858 = inttoptr i64 %856 to i32*
  %859 = load i32, i32* %858, align 4
  %860 = sext i32 %859 to i64
  %861 = shl nsw i64 %860, 5
  store i64 %861, i64* %R8.i1528, align 8
  %862 = add i64 %861, %830
  store i64 %862, i64* %RSI.i1621, align 8
  %863 = icmp ult i64 %862, %830
  %864 = icmp ult i64 %862, %861
  %865 = or i1 %863, %864
  %866 = zext i1 %865 to i8
  store i8 %866, i8* %14, align 1
  %867 = trunc i64 %862 to i32
  %868 = and i32 %867, 255
  %869 = tail call i32 @llvm.ctpop.i32(i32 %868)
  %870 = trunc i32 %869 to i8
  %871 = and i8 %870, 1
  %872 = xor i8 %871, 1
  store i8 %872, i8* %21, align 1
  %873 = xor i64 %830, %862
  %874 = lshr i64 %873, 4
  %875 = trunc i64 %874 to i8
  %876 = and i8 %875, 1
  store i8 %876, i8* %26, align 1
  %877 = icmp eq i64 %862, 0
  %878 = zext i1 %877 to i8
  store i8 %878, i8* %29, align 1
  %879 = lshr i64 %862, 63
  %880 = trunc i64 %879 to i8
  store i8 %880, i8* %32, align 1
  %881 = lshr i64 %860, 58
  %882 = and i64 %881, 1
  %883 = xor i64 %879, %847
  %884 = xor i64 %879, %882
  %885 = add nuw nsw i64 %883, %884
  %886 = icmp eq i64 %885, 2
  %887 = zext i1 %886 to i8
  store i8 %887, i8* %38, align 1
  %888 = load i64, i64* %RBP.i, align 8
  %889 = add i64 %888, -40
  %890 = add i64 %706, 83
  store i64 %890, i64* %3, align 8
  %891 = inttoptr i64 %889 to i32*
  %892 = load i32, i32* %891, align 4
  %893 = sext i32 %892 to i64
  store i64 %893, i64* %R8.i1528, align 8
  %894 = shl nsw i64 %893, 1
  %895 = add i64 %894, %862
  %896 = add i64 %706, 88
  store i64 %896, i64* %3, align 8
  %897 = inttoptr i64 %895 to i16*
  %898 = load i16, i16* %897, align 2
  %899 = zext i16 %898 to i64
  store i64 %899, i64* %190, align 8
  %900 = load i64, i64* %RDI.i1624, align 8
  %901 = zext i16 %898 to i32
  %902 = zext i16 %898 to i64
  %903 = trunc i64 %900 to i32
  %904 = sub i32 %903, %901
  %905 = zext i32 %904 to i64
  store i64 %905, i64* %RDI.i1624, align 8
  %906 = icmp ult i32 %903, %901
  %907 = zext i1 %906 to i8
  store i8 %907, i8* %14, align 1
  %908 = and i32 %904, 255
  %909 = tail call i32 @llvm.ctpop.i32(i32 %908)
  %910 = trunc i32 %909 to i8
  %911 = and i8 %910, 1
  %912 = xor i8 %911, 1
  store i8 %912, i8* %21, align 1
  %913 = xor i64 %902, %900
  %914 = trunc i64 %913 to i32
  %915 = xor i32 %914, %904
  %916 = lshr i32 %915, 4
  %917 = trunc i32 %916 to i8
  %918 = and i8 %917, 1
  store i8 %918, i8* %26, align 1
  %919 = icmp eq i32 %904, 0
  %920 = zext i1 %919 to i8
  store i8 %920, i8* %29, align 1
  %921 = lshr i32 %904, 31
  %922 = trunc i32 %921 to i8
  store i8 %922, i8* %32, align 1
  %923 = lshr i32 %903, 31
  %924 = xor i32 %921, %923
  %925 = add nuw nsw i32 %924, %923
  %926 = icmp eq i32 %925, 2
  %927 = zext i1 %926 to i8
  store i8 %927, i8* %38, align 1
  %928 = add i64 %888, -20
  %929 = add i64 %706, 94
  store i64 %929, i64* %3, align 8
  %930 = inttoptr i64 %928 to i32*
  store i32 %904, i32* %930, align 4
  %931 = load i64, i64* %RBP.i, align 8
  %932 = add i64 %931, -20
  %933 = load i64, i64* %3, align 8
  %934 = add i64 %933, 3
  store i64 %934, i64* %3, align 8
  %935 = inttoptr i64 %932 to i32*
  %936 = load i32, i32* %935, align 4
  %937 = zext i32 %936 to i64
  store i64 %937, i64* %RDI.i1624, align 8
  %938 = add i64 %931, -28
  %939 = add i64 %933, 6
  store i64 %939, i64* %3, align 8
  %940 = inttoptr i64 %938 to i32*
  %941 = load i32, i32* %940, align 4
  %942 = sub i32 %936, %941
  %943 = zext i32 %942 to i64
  store i64 %943, i64* %RDI.i1624, align 8
  %944 = icmp ult i32 %936, %941
  %945 = zext i1 %944 to i8
  store i8 %945, i8* %14, align 1
  %946 = and i32 %942, 255
  %947 = tail call i32 @llvm.ctpop.i32(i32 %946)
  %948 = trunc i32 %947 to i8
  %949 = and i8 %948, 1
  %950 = xor i8 %949, 1
  store i8 %950, i8* %21, align 1
  %951 = xor i32 %941, %936
  %952 = xor i32 %951, %942
  %953 = lshr i32 %952, 4
  %954 = trunc i32 %953 to i8
  %955 = and i8 %954, 1
  store i8 %955, i8* %26, align 1
  %956 = icmp eq i32 %942, 0
  %957 = zext i1 %956 to i8
  store i8 %957, i8* %29, align 1
  %958 = lshr i32 %942, 31
  %959 = trunc i32 %958 to i8
  store i8 %959, i8* %32, align 1
  %960 = lshr i32 %936, 31
  %961 = lshr i32 %941, 31
  %962 = xor i32 %961, %960
  %963 = xor i32 %958, %960
  %964 = add nuw nsw i32 %963, %962
  %965 = icmp eq i32 %964, 2
  %966 = zext i1 %965 to i8
  store i8 %966, i8* %38, align 1
  %967 = add i64 %931, -36
  %968 = add i64 %933, 10
  store i64 %968, i64* %3, align 8
  %969 = inttoptr i64 %967 to i32*
  %970 = load i32, i32* %969, align 4
  %971 = sext i32 %970 to i64
  %972 = shl nsw i64 %971, 6
  store i64 %972, i64* %RSI.i1621, align 8
  %973 = load i64, i64* %RDX.i1541, align 8
  %974 = add i64 %972, %973
  store i64 %974, i64* %R8.i1528, align 8
  %975 = icmp ult i64 %974, %973
  %976 = icmp ult i64 %974, %972
  %977 = or i1 %975, %976
  %978 = zext i1 %977 to i8
  store i8 %978, i8* %14, align 1
  %979 = trunc i64 %974 to i32
  %980 = and i32 %979, 255
  %981 = tail call i32 @llvm.ctpop.i32(i32 %980)
  %982 = trunc i32 %981 to i8
  %983 = and i8 %982, 1
  %984 = xor i8 %983, 1
  store i8 %984, i8* %21, align 1
  %985 = xor i64 %973, %974
  %986 = lshr i64 %985, 4
  %987 = trunc i64 %986 to i8
  %988 = and i8 %987, 1
  store i8 %988, i8* %26, align 1
  %989 = icmp eq i64 %974, 0
  %990 = zext i1 %989 to i8
  store i8 %990, i8* %29, align 1
  %991 = lshr i64 %974, 63
  %992 = trunc i64 %991 to i8
  store i8 %992, i8* %32, align 1
  %993 = lshr i64 %973, 63
  %994 = lshr i64 %971, 57
  %995 = and i64 %994, 1
  %996 = xor i64 %991, %993
  %997 = xor i64 %991, %995
  %998 = add nuw nsw i64 %996, %997
  %999 = icmp eq i64 %998, 2
  %1000 = zext i1 %999 to i8
  store i8 %1000, i8* %38, align 1
  %1001 = load i64, i64* %RBP.i, align 8
  %1002 = add i64 %1001, -40
  %1003 = add i64 %933, 24
  store i64 %1003, i64* %3, align 8
  %1004 = inttoptr i64 %1002 to i32*
  %1005 = load i32, i32* %1004, align 4
  %1006 = sext i32 %1005 to i64
  store i64 %1006, i64* %RSI.i1621, align 8
  %1007 = shl nsw i64 %1006, 2
  %1008 = add i64 %1007, %974
  %1009 = load i32, i32* %EDI.i1527, align 4
  %1010 = add i64 %933, 28
  store i64 %1010, i64* %3, align 8
  %1011 = inttoptr i64 %1008 to i32*
  store i32 %1009, i32* %1011, align 4
  %1012 = load i64, i64* %RBP.i, align 8
  %1013 = add i64 %1012, -28
  %1014 = load i64, i64* %3, align 8
  %1015 = add i64 %1014, 3
  store i64 %1015, i64* %3, align 8
  %1016 = inttoptr i64 %1013 to i32*
  %1017 = load i32, i32* %1016, align 4
  %1018 = zext i32 %1017 to i64
  store i64 %1018, i64* %RDI.i1624, align 8
  %1019 = add i64 %1012, -36
  %1020 = add i64 %1014, 7
  store i64 %1020, i64* %3, align 8
  %1021 = inttoptr i64 %1019 to i32*
  %1022 = load i32, i32* %1021, align 4
  %1023 = sext i32 %1022 to i64
  %1024 = shl nsw i64 %1023, 6
  store i64 %1024, i64* %RSI.i1621, align 8
  %1025 = load i64, i64* %RDX.i1541, align 8
  %1026 = add i64 %1024, %1025
  store i64 %1026, i64* %RDX.i1541, align 8
  %1027 = icmp ult i64 %1026, %1025
  %1028 = icmp ult i64 %1026, %1024
  %1029 = or i1 %1027, %1028
  %1030 = zext i1 %1029 to i8
  store i8 %1030, i8* %14, align 1
  %1031 = trunc i64 %1026 to i32
  %1032 = and i32 %1031, 255
  %1033 = tail call i32 @llvm.ctpop.i32(i32 %1032)
  %1034 = trunc i32 %1033 to i8
  %1035 = and i8 %1034, 1
  %1036 = xor i8 %1035, 1
  store i8 %1036, i8* %21, align 1
  %1037 = xor i64 %1025, %1026
  %1038 = lshr i64 %1037, 4
  %1039 = trunc i64 %1038 to i8
  %1040 = and i8 %1039, 1
  store i8 %1040, i8* %26, align 1
  %1041 = icmp eq i64 %1026, 0
  %1042 = zext i1 %1041 to i8
  store i8 %1042, i8* %29, align 1
  %1043 = lshr i64 %1026, 63
  %1044 = trunc i64 %1043 to i8
  store i8 %1044, i8* %32, align 1
  %1045 = lshr i64 %1025, 63
  %1046 = lshr i64 %1023, 57
  %1047 = and i64 %1046, 1
  %1048 = xor i64 %1043, %1045
  %1049 = xor i64 %1043, %1047
  %1050 = add nuw nsw i64 %1048, %1049
  %1051 = icmp eq i64 %1050, 2
  %1052 = zext i1 %1051 to i8
  store i8 %1052, i8* %38, align 1
  %1053 = add i64 %1012, -40
  %1054 = add i64 %1014, 18
  store i64 %1054, i64* %3, align 8
  %1055 = inttoptr i64 %1053 to i32*
  %1056 = load i32, i32* %1055, align 4
  %1057 = sext i32 %1056 to i64
  store i64 %1057, i64* %RSI.i1621, align 8
  %1058 = shl nsw i64 %1057, 2
  %1059 = add i64 %1058, %1026
  %1060 = add i64 %1014, 22
  store i64 %1060, i64* %3, align 8
  %1061 = inttoptr i64 %1059 to i32*
  %1062 = load i32, i32* %1061, align 4
  %1063 = zext i32 %1062 to i64
  %1064 = shl nuw i64 %1063, 32
  %1065 = ashr i64 %1064, 33
  %1066 = and i64 %1065, 4294967295
  store i64 %1066, i64* %190, align 8
  %1067 = load i64, i64* %RDI.i1624, align 8
  %1068 = trunc i64 %1065 to i32
  %1069 = trunc i64 %1067 to i32
  %1070 = add i32 %1068, %1069
  %1071 = zext i32 %1070 to i64
  store i64 %1071, i64* %RDI.i1624, align 8
  %1072 = icmp ult i32 %1070, %1069
  %1073 = icmp ult i32 %1070, %1068
  %1074 = or i1 %1072, %1073
  %1075 = zext i1 %1074 to i8
  store i8 %1075, i8* %14, align 1
  %1076 = and i32 %1070, 255
  %1077 = tail call i32 @llvm.ctpop.i32(i32 %1076)
  %1078 = trunc i32 %1077 to i8
  %1079 = and i8 %1078, 1
  %1080 = xor i8 %1079, 1
  store i8 %1080, i8* %21, align 1
  %1081 = xor i64 %1065, %1067
  %1082 = trunc i64 %1081 to i32
  %1083 = xor i32 %1082, %1070
  %1084 = lshr i32 %1083, 4
  %1085 = trunc i32 %1084 to i8
  %1086 = and i8 %1085, 1
  store i8 %1086, i8* %26, align 1
  %1087 = icmp eq i32 %1070, 0
  %1088 = zext i1 %1087 to i8
  store i8 %1088, i8* %29, align 1
  %1089 = lshr i32 %1070, 31
  %1090 = trunc i32 %1089 to i8
  store i8 %1090, i8* %32, align 1
  %1091 = lshr i32 %1069, 31
  %1092 = lshr i64 %1065, 31
  %1093 = trunc i64 %1092 to i32
  %1094 = and i32 %1093, 1
  %1095 = xor i32 %1089, %1091
  %1096 = xor i32 %1089, %1094
  %1097 = add nuw nsw i32 %1095, %1096
  %1098 = icmp eq i32 %1097, 2
  %1099 = zext i1 %1098 to i8
  store i8 %1099, i8* %38, align 1
  %1100 = load i64, i64* %RBP.i, align 8
  %1101 = add i64 %1100, -44
  %1102 = add i64 %1014, 31
  store i64 %1102, i64* %3, align 8
  %1103 = inttoptr i64 %1101 to i32*
  store i32 %1070, i32* %1103, align 4
  %1104 = load i64, i64* %RBP.i, align 8
  %1105 = add i64 %1104, -24
  %1106 = load i64, i64* %3, align 8
  %1107 = add i64 %1106, 3
  store i64 %1107, i64* %3, align 8
  %1108 = inttoptr i64 %1105 to i32*
  %1109 = load i32, i32* %1108, align 4
  %1110 = zext i32 %1109 to i64
  store i64 %1110, i64* %RDI.i1624, align 8
  %1111 = add i64 %1104, -44
  %1112 = add i64 %1106, 6
  store i64 %1112, i64* %3, align 8
  %1113 = inttoptr i64 %1111 to i32*
  %1114 = load i32, i32* %1113, align 4
  %1115 = sub i32 %1109, %1114
  %1116 = zext i32 %1115 to i64
  store i64 %1116, i64* %RDI.i1624, align 8
  %1117 = icmp ult i32 %1109, %1114
  %1118 = zext i1 %1117 to i8
  store i8 %1118, i8* %14, align 1
  %1119 = and i32 %1115, 255
  %1120 = tail call i32 @llvm.ctpop.i32(i32 %1119)
  %1121 = trunc i32 %1120 to i8
  %1122 = and i8 %1121, 1
  %1123 = xor i8 %1122, 1
  store i8 %1123, i8* %21, align 1
  %1124 = xor i32 %1114, %1109
  %1125 = xor i32 %1124, %1115
  %1126 = lshr i32 %1125, 4
  %1127 = trunc i32 %1126 to i8
  %1128 = and i8 %1127, 1
  store i8 %1128, i8* %26, align 1
  %1129 = icmp eq i32 %1115, 0
  %1130 = zext i1 %1129 to i8
  store i8 %1130, i8* %29, align 1
  %1131 = lshr i32 %1115, 31
  %1132 = trunc i32 %1131 to i8
  store i8 %1132, i8* %32, align 1
  %1133 = lshr i32 %1109, 31
  %1134 = lshr i32 %1114, 31
  %1135 = xor i32 %1134, %1133
  %1136 = xor i32 %1131, %1133
  %1137 = add nuw nsw i32 %1136, %1135
  %1138 = icmp eq i32 %1137, 2
  %1139 = zext i1 %1138 to i8
  store i8 %1139, i8* %38, align 1
  %1140 = add i64 %1104, -36
  %1141 = add i64 %1106, 10
  store i64 %1141, i64* %3, align 8
  %1142 = inttoptr i64 %1140 to i32*
  %1143 = load i32, i32* %1142, align 4
  %1144 = sext i32 %1143 to i64
  %1145 = shl nsw i64 %1144, 6
  store i64 %1145, i64* %RDX.i1541, align 8
  %1146 = load i64, i64* %RCX.i1543, align 8
  %1147 = add i64 %1145, %1146
  store i64 %1147, i64* %RSI.i1621, align 8
  %1148 = icmp ult i64 %1147, %1146
  %1149 = icmp ult i64 %1147, %1145
  %1150 = or i1 %1148, %1149
  %1151 = zext i1 %1150 to i8
  store i8 %1151, i8* %14, align 1
  %1152 = trunc i64 %1147 to i32
  %1153 = and i32 %1152, 255
  %1154 = tail call i32 @llvm.ctpop.i32(i32 %1153)
  %1155 = trunc i32 %1154 to i8
  %1156 = and i8 %1155, 1
  %1157 = xor i8 %1156, 1
  store i8 %1157, i8* %21, align 1
  %1158 = xor i64 %1146, %1147
  %1159 = lshr i64 %1158, 4
  %1160 = trunc i64 %1159 to i8
  %1161 = and i8 %1160, 1
  store i8 %1161, i8* %26, align 1
  %1162 = icmp eq i64 %1147, 0
  %1163 = zext i1 %1162 to i8
  store i8 %1163, i8* %29, align 1
  %1164 = lshr i64 %1147, 63
  %1165 = trunc i64 %1164 to i8
  store i8 %1165, i8* %32, align 1
  %1166 = lshr i64 %1146, 63
  %1167 = lshr i64 %1144, 57
  %1168 = and i64 %1167, 1
  %1169 = xor i64 %1164, %1166
  %1170 = xor i64 %1164, %1168
  %1171 = add nuw nsw i64 %1169, %1170
  %1172 = icmp eq i64 %1171, 2
  %1173 = zext i1 %1172 to i8
  store i8 %1173, i8* %38, align 1
  %1174 = load i64, i64* %RBP.i, align 8
  %1175 = add i64 %1174, -40
  %1176 = add i64 %1106, 24
  store i64 %1176, i64* %3, align 8
  %1177 = inttoptr i64 %1175 to i32*
  %1178 = load i32, i32* %1177, align 4
  %1179 = sext i32 %1178 to i64
  store i64 %1179, i64* %RDX.i1541, align 8
  %1180 = shl nsw i64 %1179, 2
  %1181 = add i64 %1180, %1147
  %1182 = load i32, i32* %EDI.i1527, align 4
  %1183 = add i64 %1106, 27
  store i64 %1183, i64* %3, align 8
  %1184 = inttoptr i64 %1181 to i32*
  store i32 %1182, i32* %1184, align 4
  %1185 = load i64, i64* %RBP.i, align 8
  %1186 = add i64 %1185, -44
  %1187 = load i64, i64* %3, align 8
  %1188 = add i64 %1187, 3
  store i64 %1188, i64* %3, align 8
  %1189 = inttoptr i64 %1186 to i32*
  %1190 = load i32, i32* %1189, align 4
  %1191 = zext i32 %1190 to i64
  store i64 %1191, i64* %RDI.i1624, align 8
  %1192 = add i64 %1185, -36
  %1193 = add i64 %1187, 7
  store i64 %1193, i64* %3, align 8
  %1194 = inttoptr i64 %1192 to i32*
  %1195 = load i32, i32* %1194, align 4
  %1196 = sext i32 %1195 to i64
  %1197 = shl nsw i64 %1196, 6
  store i64 %1197, i64* %RDX.i1541, align 8
  %1198 = load i64, i64* %RCX.i1543, align 8
  %1199 = add i64 %1197, %1198
  store i64 %1199, i64* %RCX.i1543, align 8
  %1200 = icmp ult i64 %1199, %1198
  %1201 = icmp ult i64 %1199, %1197
  %1202 = or i1 %1200, %1201
  %1203 = zext i1 %1202 to i8
  store i8 %1203, i8* %14, align 1
  %1204 = trunc i64 %1199 to i32
  %1205 = and i32 %1204, 255
  %1206 = tail call i32 @llvm.ctpop.i32(i32 %1205)
  %1207 = trunc i32 %1206 to i8
  %1208 = and i8 %1207, 1
  %1209 = xor i8 %1208, 1
  store i8 %1209, i8* %21, align 1
  %1210 = xor i64 %1198, %1199
  %1211 = lshr i64 %1210, 4
  %1212 = trunc i64 %1211 to i8
  %1213 = and i8 %1212, 1
  store i8 %1213, i8* %26, align 1
  %1214 = icmp eq i64 %1199, 0
  %1215 = zext i1 %1214 to i8
  store i8 %1215, i8* %29, align 1
  %1216 = lshr i64 %1199, 63
  %1217 = trunc i64 %1216 to i8
  store i8 %1217, i8* %32, align 1
  %1218 = lshr i64 %1198, 63
  %1219 = lshr i64 %1196, 57
  %1220 = and i64 %1219, 1
  %1221 = xor i64 %1216, %1218
  %1222 = xor i64 %1216, %1220
  %1223 = add nuw nsw i64 %1221, %1222
  %1224 = icmp eq i64 %1223, 2
  %1225 = zext i1 %1224 to i8
  store i8 %1225, i8* %38, align 1
  %1226 = add i64 %1185, -40
  %1227 = add i64 %1187, 18
  store i64 %1227, i64* %3, align 8
  %1228 = inttoptr i64 %1226 to i32*
  %1229 = load i32, i32* %1228, align 4
  %1230 = sext i32 %1229 to i64
  store i64 %1230, i64* %RDX.i1541, align 8
  %1231 = shl nsw i64 %1230, 2
  %1232 = add i64 %1231, %1199
  %1233 = add i64 %1187, 22
  store i64 %1233, i64* %3, align 8
  %1234 = inttoptr i64 %1232 to i32*
  %1235 = load i32, i32* %1234, align 4
  %1236 = zext i32 %1235 to i64
  %1237 = shl nuw i64 %1236, 32
  %1238 = ashr i64 %1237, 33
  %1239 = and i64 %1238, 4294967295
  store i64 %1239, i64* %190, align 8
  %1240 = load i64, i64* %RDI.i1624, align 8
  %1241 = trunc i64 %1238 to i32
  %1242 = trunc i64 %1240 to i32
  %1243 = add i32 %1241, %1242
  %1244 = zext i32 %1243 to i64
  store i64 %1244, i64* %RDI.i1624, align 8
  %1245 = icmp ult i32 %1243, %1242
  %1246 = icmp ult i32 %1243, %1241
  %1247 = or i1 %1245, %1246
  %1248 = zext i1 %1247 to i8
  store i8 %1248, i8* %14, align 1
  %1249 = and i32 %1243, 255
  %1250 = tail call i32 @llvm.ctpop.i32(i32 %1249)
  %1251 = trunc i32 %1250 to i8
  %1252 = and i8 %1251, 1
  %1253 = xor i8 %1252, 1
  store i8 %1253, i8* %21, align 1
  %1254 = xor i64 %1238, %1240
  %1255 = trunc i64 %1254 to i32
  %1256 = xor i32 %1255, %1243
  %1257 = lshr i32 %1256, 4
  %1258 = trunc i32 %1257 to i8
  %1259 = and i8 %1258, 1
  store i8 %1259, i8* %26, align 1
  %1260 = icmp eq i32 %1243, 0
  %1261 = zext i1 %1260 to i8
  store i8 %1261, i8* %29, align 1
  %1262 = lshr i32 %1243, 31
  %1263 = trunc i32 %1262 to i8
  store i8 %1263, i8* %32, align 1
  %1264 = lshr i32 %1242, 31
  %1265 = lshr i64 %1238, 31
  %1266 = trunc i64 %1265 to i32
  %1267 = and i32 %1266, 1
  %1268 = xor i32 %1262, %1264
  %1269 = xor i32 %1262, %1267
  %1270 = add nuw nsw i32 %1268, %1269
  %1271 = icmp eq i32 %1270, 2
  %1272 = zext i1 %1271 to i8
  store i8 %1272, i8* %38, align 1
  %1273 = load i64, i64* %RBP.i, align 8
  %1274 = add i64 %1273, -36
  %1275 = add i64 %1187, 32
  store i64 %1275, i64* %3, align 8
  %1276 = inttoptr i64 %1274 to i32*
  %1277 = load i32, i32* %1276, align 4
  %1278 = sext i32 %1277 to i64
  %1279 = shl nsw i64 %1278, 6
  store i64 %1279, i64* %RCX.i1543, align 8
  %1280 = load i64, i64* %RAX.i1605, align 8
  %1281 = add i64 %1279, %1280
  store i64 %1281, i64* %RDX.i1541, align 8
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
  %1301 = lshr i64 %1278, 57
  %1302 = and i64 %1301, 1
  %1303 = xor i64 %1298, %1300
  %1304 = xor i64 %1298, %1302
  %1305 = add nuw nsw i64 %1303, %1304
  %1306 = icmp eq i64 %1305, 2
  %1307 = zext i1 %1306 to i8
  store i8 %1307, i8* %38, align 1
  %1308 = add i64 %1273, -40
  %1309 = add i64 %1187, 46
  store i64 %1309, i64* %3, align 8
  %1310 = inttoptr i64 %1308 to i32*
  %1311 = load i32, i32* %1310, align 4
  %1312 = sext i32 %1311 to i64
  store i64 %1312, i64* %RCX.i1543, align 8
  %1313 = shl nsw i64 %1312, 2
  %1314 = add i64 %1313, %1281
  %1315 = load i32, i32* %EDI.i1527, align 4
  %1316 = add i64 %1187, 49
  store i64 %1316, i64* %3, align 8
  %1317 = inttoptr i64 %1314 to i32*
  store i32 %1315, i32* %1317, align 4
  %1318 = load i64, i64* %RBP.i, align 8
  %1319 = add i64 %1318, -36
  %1320 = load i64, i64* %3, align 8
  %1321 = add i64 %1320, 4
  store i64 %1321, i64* %3, align 8
  %1322 = inttoptr i64 %1319 to i32*
  %1323 = load i32, i32* %1322, align 4
  %1324 = sext i32 %1323 to i64
  %1325 = shl nsw i64 %1324, 6
  store i64 %1325, i64* %RCX.i1543, align 8
  %1326 = load i64, i64* %RAX.i1605, align 8
  %1327 = add i64 %1325, %1326
  store i64 %1327, i64* %RAX.i1605, align 8
  %1328 = icmp ult i64 %1327, %1326
  %1329 = icmp ult i64 %1327, %1325
  %1330 = or i1 %1328, %1329
  %1331 = zext i1 %1330 to i8
  store i8 %1331, i8* %14, align 1
  %1332 = trunc i64 %1327 to i32
  %1333 = and i32 %1332, 255
  %1334 = tail call i32 @llvm.ctpop.i32(i32 %1333)
  %1335 = trunc i32 %1334 to i8
  %1336 = and i8 %1335, 1
  %1337 = xor i8 %1336, 1
  store i8 %1337, i8* %21, align 1
  %1338 = xor i64 %1326, %1327
  %1339 = lshr i64 %1338, 4
  %1340 = trunc i64 %1339 to i8
  %1341 = and i8 %1340, 1
  store i8 %1341, i8* %26, align 1
  %1342 = icmp eq i64 %1327, 0
  %1343 = zext i1 %1342 to i8
  store i8 %1343, i8* %29, align 1
  %1344 = lshr i64 %1327, 63
  %1345 = trunc i64 %1344 to i8
  store i8 %1345, i8* %32, align 1
  %1346 = lshr i64 %1326, 63
  %1347 = lshr i64 %1324, 57
  %1348 = and i64 %1347, 1
  %1349 = xor i64 %1344, %1346
  %1350 = xor i64 %1344, %1348
  %1351 = add nuw nsw i64 %1349, %1350
  %1352 = icmp eq i64 %1351, 2
  %1353 = zext i1 %1352 to i8
  store i8 %1353, i8* %38, align 1
  %1354 = add i64 %1318, -40
  %1355 = add i64 %1320, 15
  store i64 %1355, i64* %3, align 8
  %1356 = inttoptr i64 %1354 to i32*
  %1357 = load i32, i32* %1356, align 4
  %1358 = sext i32 %1357 to i64
  store i64 %1358, i64* %RCX.i1543, align 8
  %1359 = shl nsw i64 %1358, 2
  %1360 = add i64 %1359, %1327
  %1361 = add i64 %1320, 18
  store i64 %1361, i64* %3, align 8
  %1362 = inttoptr i64 %1360 to i32*
  %1363 = load i32, i32* %1362, align 4
  %1364 = zext i32 %1363 to i64
  store i64 %1364, i64* %RDI.i1624, align 8
  %1365 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*), align 8
  %1366 = add i64 %1365, 13112
  store i64 %1366, i64* %RAX.i1605, align 8
  %1367 = icmp ugt i64 %1365, -13113
  %1368 = zext i1 %1367 to i8
  store i8 %1368, i8* %14, align 1
  %1369 = trunc i64 %1366 to i32
  %1370 = and i32 %1369, 255
  %1371 = tail call i32 @llvm.ctpop.i32(i32 %1370)
  %1372 = trunc i32 %1371 to i8
  %1373 = and i8 %1372, 1
  %1374 = xor i8 %1373, 1
  store i8 %1374, i8* %21, align 1
  %1375 = xor i64 %1365, 16
  %1376 = xor i64 %1375, %1366
  %1377 = lshr i64 %1376, 4
  %1378 = trunc i64 %1377 to i8
  %1379 = and i8 %1378, 1
  store i8 %1379, i8* %26, align 1
  %1380 = icmp eq i64 %1366, 0
  %1381 = zext i1 %1380 to i8
  store i8 %1381, i8* %29, align 1
  %1382 = lshr i64 %1366, 63
  %1383 = trunc i64 %1382 to i8
  store i8 %1383, i8* %32, align 1
  %1384 = lshr i64 %1365, 63
  %1385 = xor i64 %1382, %1384
  %1386 = add nuw nsw i64 %1385, %1382
  %1387 = icmp eq i64 %1386, 2
  %1388 = zext i1 %1387 to i8
  store i8 %1388, i8* %38, align 1
  %1389 = load i64, i64* %RBP.i, align 8
  %1390 = add i64 %1389, -36
  %1391 = add i64 %1320, 36
  store i64 %1391, i64* %3, align 8
  %1392 = inttoptr i64 %1390 to i32*
  %1393 = load i32, i32* %1392, align 4
  %1394 = sext i32 %1393 to i64
  %1395 = shl nsw i64 %1394, 6
  store i64 %1395, i64* %RCX.i1543, align 8
  %1396 = add i64 %1395, %1366
  store i64 %1396, i64* %RAX.i1605, align 8
  %1397 = icmp ult i64 %1396, %1366
  %1398 = icmp ult i64 %1396, %1395
  %1399 = or i1 %1397, %1398
  %1400 = zext i1 %1399 to i8
  store i8 %1400, i8* %14, align 1
  %1401 = trunc i64 %1396 to i32
  %1402 = and i32 %1401, 255
  %1403 = tail call i32 @llvm.ctpop.i32(i32 %1402)
  %1404 = trunc i32 %1403 to i8
  %1405 = and i8 %1404, 1
  %1406 = xor i8 %1405, 1
  store i8 %1406, i8* %21, align 1
  %1407 = xor i64 %1366, %1396
  %1408 = lshr i64 %1407, 4
  %1409 = trunc i64 %1408 to i8
  %1410 = and i8 %1409, 1
  store i8 %1410, i8* %26, align 1
  %1411 = icmp eq i64 %1396, 0
  %1412 = zext i1 %1411 to i8
  store i8 %1412, i8* %29, align 1
  %1413 = lshr i64 %1396, 63
  %1414 = trunc i64 %1413 to i8
  store i8 %1414, i8* %32, align 1
  %1415 = lshr i64 %1394, 57
  %1416 = and i64 %1415, 1
  %1417 = xor i64 %1413, %1382
  %1418 = xor i64 %1413, %1416
  %1419 = add nuw nsw i64 %1417, %1418
  %1420 = icmp eq i64 %1419, 2
  %1421 = zext i1 %1420 to i8
  store i8 %1421, i8* %38, align 1
  %1422 = add i64 %1389, -40
  %1423 = add i64 %1320, 47
  store i64 %1423, i64* %3, align 8
  %1424 = inttoptr i64 %1422 to i32*
  %1425 = load i32, i32* %1424, align 4
  %1426 = sext i32 %1425 to i64
  store i64 %1426, i64* %RCX.i1543, align 8
  %1427 = shl nsw i64 %1426, 2
  %1428 = add i64 %1427, %1396
  %1429 = load i32, i32* %EDI.i1527, align 4
  %1430 = add i64 %1320, 50
  store i64 %1430, i64* %3, align 8
  %1431 = inttoptr i64 %1428 to i32*
  store i32 %1429, i32* %1431, align 4
  %1432 = load i64, i64* %RBP.i, align 8
  %1433 = add i64 %1432, -36
  %1434 = load i64, i64* %3, align 8
  %1435 = add i64 %1434, 3
  store i64 %1435, i64* %3, align 8
  %1436 = inttoptr i64 %1433 to i32*
  %1437 = load i32, i32* %1436, align 4
  %1438 = add i32 %1437, 1
  %1439 = zext i32 %1438 to i64
  store i64 %1439, i64* %RAX.i1605, align 8
  %1440 = icmp eq i32 %1437, -1
  %1441 = icmp eq i32 %1438, 0
  %1442 = or i1 %1440, %1441
  %1443 = zext i1 %1442 to i8
  store i8 %1443, i8* %14, align 1
  %1444 = and i32 %1438, 255
  %1445 = tail call i32 @llvm.ctpop.i32(i32 %1444)
  %1446 = trunc i32 %1445 to i8
  %1447 = and i8 %1446, 1
  %1448 = xor i8 %1447, 1
  store i8 %1448, i8* %21, align 1
  %1449 = xor i32 %1438, %1437
  %1450 = lshr i32 %1449, 4
  %1451 = trunc i32 %1450 to i8
  %1452 = and i8 %1451, 1
  store i8 %1452, i8* %26, align 1
  %1453 = zext i1 %1441 to i8
  store i8 %1453, i8* %29, align 1
  %1454 = lshr i32 %1438, 31
  %1455 = trunc i32 %1454 to i8
  store i8 %1455, i8* %32, align 1
  %1456 = lshr i32 %1437, 31
  %1457 = xor i32 %1454, %1456
  %1458 = add nuw nsw i32 %1457, %1454
  %1459 = icmp eq i32 %1458, 2
  %1460 = zext i1 %1459 to i8
  store i8 %1460, i8* %38, align 1
  %1461 = add i64 %1434, 9
  store i64 %1461, i64* %3, align 8
  store i32 %1438, i32* %1436, align 4
  %1462 = load i64, i64* %3, align 8
  %1463 = add i64 %1462, -502
  store i64 %1463, i64* %3, align 8
  br label %block_.L_4890e0

block_.L_4892db:                                  ; preds = %block_.L_4890e0
  %1464 = add i64 %226, -40
  %1465 = add i64 %255, 8
  store i64 %1465, i64* %3, align 8
  %1466 = inttoptr i64 %1464 to i32*
  %1467 = load i32, i32* %1466, align 4
  %1468 = add i32 %1467, 1
  %1469 = zext i32 %1468 to i64
  store i64 %1469, i64* %RAX.i1605, align 8
  %1470 = icmp eq i32 %1467, -1
  %1471 = icmp eq i32 %1468, 0
  %1472 = or i1 %1470, %1471
  %1473 = zext i1 %1472 to i8
  store i8 %1473, i8* %14, align 1
  %1474 = and i32 %1468, 255
  %1475 = tail call i32 @llvm.ctpop.i32(i32 %1474)
  %1476 = trunc i32 %1475 to i8
  %1477 = and i8 %1476, 1
  %1478 = xor i8 %1477, 1
  store i8 %1478, i8* %21, align 1
  %1479 = xor i32 %1468, %1467
  %1480 = lshr i32 %1479, 4
  %1481 = trunc i32 %1480 to i8
  %1482 = and i8 %1481, 1
  store i8 %1482, i8* %26, align 1
  %1483 = zext i1 %1471 to i8
  store i8 %1483, i8* %29, align 1
  %1484 = lshr i32 %1468, 31
  %1485 = trunc i32 %1484 to i8
  store i8 %1485, i8* %32, align 1
  %1486 = lshr i32 %1467, 31
  %1487 = xor i32 %1484, %1486
  %1488 = add nuw nsw i32 %1487, %1484
  %1489 = icmp eq i32 %1488, 2
  %1490 = zext i1 %1489 to i8
  store i8 %1490, i8* %38, align 1
  %1491 = add i64 %255, 14
  store i64 %1491, i64* %3, align 8
  store i32 %1468, i32* %1466, align 4
  %1492 = load i64, i64* %3, align 8
  %1493 = add i64 %1492, -538
  store i64 %1493, i64* %3, align 8
  br label %block_.L_4890cf

block_.L_4892ee:                                  ; preds = %block_.L_4890cf
  %1494 = add i64 %221, 5
  store i64 %1494, i64* %3, align 8
  br label %block_.L_4892f3

block_.L_4892f3:                                  ; preds = %block_.L_4890b3, %block_.L_4892ee
  %1495 = phi i64 [ %1494, %block_.L_4892ee ], [ %186, %block_.L_4890b3 ]
  %1496 = phi i64 [ %192, %block_.L_4892ee ], [ %.pre97, %block_.L_4890b3 ]
  %1497 = add i64 %1496, -16
  %1498 = add i64 %1495, 4
  store i64 %1498, i64* %3, align 8
  %1499 = inttoptr i64 %1497 to i64*
  %1500 = load i64, i64* %1499, align 8
  store i64 %1500, i64* %RAX.i1605, align 8
  %1501 = add i64 %1495, 6
  store i64 %1501, i64* %3, align 8
  %1502 = inttoptr i64 %1500 to i32*
  %1503 = load i32, i32* %1502, align 4
  %1504 = zext i32 %1503 to i64
  store i64 %1504, i64* %RDI.i1624, align 8
  %1505 = add i64 %1495, -544531
  %1506 = add i64 %1495, 11
  %1507 = load i64, i64* %6, align 8
  %1508 = add i64 %1507, -8
  %1509 = inttoptr i64 %1508 to i64*
  store i64 %1506, i64* %1509, align 8
  store i64 %1508, i64* %6, align 8
  store i64 %1505, i64* %3, align 8
  %call2_4892f9 = tail call %struct.Memory* @sub_4043e0.dct_luma_16x16(%struct.State* nonnull %0, i64 %1505, %struct.Memory* %MEMORY.0)
  %1510 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %RCX.i1172 = getelementptr inbounds %union.anon, %union.anon* %1510, i64 0, i32 0
  %1511 = load i64, i64* %RBP.i, align 8
  %1512 = add i64 %1511, -8
  %1513 = load i64, i64* %3, align 8
  %1514 = add i64 %1513, 4
  store i64 %1514, i64* %3, align 8
  %1515 = inttoptr i64 %1512 to i64*
  %1516 = load i64, i64* %1515, align 8
  %1517 = add i64 %1516, 460
  %1518 = load i32, i32* %EAX.i1602, align 4
  %1519 = add i64 %1513, 10
  store i64 %1519, i64* %3, align 8
  %1520 = inttoptr i64 %1517 to i32*
  store i32 %1518, i32* %1520, align 4
  %1521 = load i64, i64* %3, align 8
  %1522 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*), align 8
  store i64 %1522, i64* %RCX.i1172, align 8
  %1523 = add i64 %1522, 72724
  %1524 = add i64 %1521, 15
  store i64 %1524, i64* %3, align 8
  %1525 = inttoptr i64 %1523 to i32*
  %1526 = load i32, i32* %1525, align 4
  store i8 0, i8* %14, align 1
  %1527 = and i32 %1526, 255
  %1528 = tail call i32 @llvm.ctpop.i32(i32 %1527)
  %1529 = trunc i32 %1528 to i8
  %1530 = and i8 %1529, 1
  %1531 = xor i8 %1530, 1
  store i8 %1531, i8* %21, align 1
  store i8 0, i8* %26, align 1
  %1532 = icmp eq i32 %1526, 0
  %1533 = zext i1 %1532 to i8
  store i8 %1533, i8* %29, align 1
  %1534 = lshr i32 %1526, 31
  %1535 = trunc i32 %1534 to i8
  store i8 %1535, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %.v122 = select i1 %1532, i64 1939, i64 21
  %1536 = add i64 %1521, %.v122
  store i64 %1536, i64* %3, align 8
  br i1 %1532, label %block_.L_489a9b, label %block_48931d

block_48931d:                                     ; preds = %block_.L_4892f3
  %1537 = load i64, i64* %RBP.i, align 8
  %1538 = add i64 %1537, -40
  %1539 = add i64 %1536, 7
  store i64 %1539, i64* %3, align 8
  %1540 = inttoptr i64 %1538 to i32*
  store i32 0, i32* %1540, align 4
  %RDX.i1148 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %EDI.i1116 = bitcast %union.anon* %39 to i32*
  %.pre98 = load i64, i64* %3, align 8
  br label %block_.L_489324

block_.L_489324:                                  ; preds = %block_.L_4893c6, %block_48931d
  %1541 = phi i64 [ %1888, %block_.L_4893c6 ], [ %.pre98, %block_48931d ]
  %1542 = load i64, i64* %RBP.i, align 8
  %1543 = add i64 %1542, -40
  %1544 = add i64 %1541, 4
  store i64 %1544, i64* %3, align 8
  %1545 = inttoptr i64 %1543 to i32*
  %1546 = load i32, i32* %1545, align 4
  %1547 = add i32 %1546, -16
  %1548 = icmp ult i32 %1546, 16
  %1549 = zext i1 %1548 to i8
  store i8 %1549, i8* %14, align 1
  %1550 = and i32 %1547, 255
  %1551 = tail call i32 @llvm.ctpop.i32(i32 %1550)
  %1552 = trunc i32 %1551 to i8
  %1553 = and i8 %1552, 1
  %1554 = xor i8 %1553, 1
  store i8 %1554, i8* %21, align 1
  %1555 = xor i32 %1546, 16
  %1556 = xor i32 %1555, %1547
  %1557 = lshr i32 %1556, 4
  %1558 = trunc i32 %1557 to i8
  %1559 = and i8 %1558, 1
  store i8 %1559, i8* %26, align 1
  %1560 = icmp eq i32 %1547, 0
  %1561 = zext i1 %1560 to i8
  store i8 %1561, i8* %29, align 1
  %1562 = lshr i32 %1547, 31
  %1563 = trunc i32 %1562 to i8
  store i8 %1563, i8* %32, align 1
  %1564 = lshr i32 %1546, 31
  %1565 = xor i32 %1562, %1564
  %1566 = add nuw nsw i32 %1565, %1564
  %1567 = icmp eq i32 %1566, 2
  %1568 = zext i1 %1567 to i8
  store i8 %1568, i8* %38, align 1
  %1569 = icmp ne i8 %1563, 0
  %1570 = xor i1 %1569, %1567
  %.v123 = select i1 %1570, i64 10, i64 181
  %1571 = add i64 %1541, %.v123
  store i64 %1571, i64* %3, align 8
  br i1 %1570, label %block_48932e, label %block_.L_4893d9

block_48932e:                                     ; preds = %block_.L_489324
  %1572 = add i64 %1542, -36
  %1573 = add i64 %1571, 7
  store i64 %1573, i64* %3, align 8
  %1574 = inttoptr i64 %1572 to i32*
  store i32 0, i32* %1574, align 4
  %.pre114 = load i64, i64* %3, align 8
  br label %block_.L_489335

block_.L_489335:                                  ; preds = %block_48933f, %block_48932e
  %1575 = phi i64 [ %1858, %block_48933f ], [ %.pre114, %block_48932e ]
  %1576 = load i64, i64* %RBP.i, align 8
  %1577 = add i64 %1576, -36
  %1578 = add i64 %1575, 4
  store i64 %1578, i64* %3, align 8
  %1579 = inttoptr i64 %1577 to i32*
  %1580 = load i32, i32* %1579, align 4
  %1581 = add i32 %1580, -16
  %1582 = icmp ult i32 %1580, 16
  %1583 = zext i1 %1582 to i8
  store i8 %1583, i8* %14, align 1
  %1584 = and i32 %1581, 255
  %1585 = tail call i32 @llvm.ctpop.i32(i32 %1584)
  %1586 = trunc i32 %1585 to i8
  %1587 = and i8 %1586, 1
  %1588 = xor i8 %1587, 1
  store i8 %1588, i8* %21, align 1
  %1589 = xor i32 %1580, 16
  %1590 = xor i32 %1589, %1581
  %1591 = lshr i32 %1590, 4
  %1592 = trunc i32 %1591 to i8
  %1593 = and i8 %1592, 1
  store i8 %1593, i8* %26, align 1
  %1594 = icmp eq i32 %1581, 0
  %1595 = zext i1 %1594 to i8
  store i8 %1595, i8* %29, align 1
  %1596 = lshr i32 %1581, 31
  %1597 = trunc i32 %1596 to i8
  store i8 %1597, i8* %32, align 1
  %1598 = lshr i32 %1580, 31
  %1599 = xor i32 %1596, %1598
  %1600 = add nuw nsw i32 %1599, %1598
  %1601 = icmp eq i32 %1600, 2
  %1602 = zext i1 %1601 to i8
  store i8 %1602, i8* %38, align 1
  %1603 = icmp ne i8 %1597, 0
  %1604 = xor i1 %1603, %1601
  %.v117 = select i1 %1604, i64 10, i64 145
  %1605 = add i64 %1575, %.v117
  store i64 %1605, i64* %3, align 8
  br i1 %1604, label %block_48933f, label %block_.L_4893c6

block_48933f:                                     ; preds = %block_.L_489335
  store i64 ptrtoint (%G__0x6f6fa0_type* @G__0x6f6fa0 to i64), i64* %RAX.i1605, align 8
  store i64 ptrtoint (%G__0x722ff0_type* @G__0x722ff0 to i64), i64* %RCX.i1172, align 8
  %1606 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*), align 8
  %1607 = add i64 %1606, 13112
  store i64 %1607, i64* %RDX.i1148, align 8
  %1608 = icmp ugt i64 %1606, -13113
  %1609 = zext i1 %1608 to i8
  store i8 %1609, i8* %14, align 1
  %1610 = trunc i64 %1607 to i32
  %1611 = and i32 %1610, 255
  %1612 = tail call i32 @llvm.ctpop.i32(i32 %1611)
  %1613 = trunc i32 %1612 to i8
  %1614 = and i8 %1613, 1
  %1615 = xor i8 %1614, 1
  store i8 %1615, i8* %21, align 1
  %1616 = xor i64 %1606, 16
  %1617 = xor i64 %1616, %1607
  %1618 = lshr i64 %1617, 4
  %1619 = trunc i64 %1618 to i8
  %1620 = and i8 %1619, 1
  store i8 %1620, i8* %26, align 1
  %1621 = icmp eq i64 %1607, 0
  %1622 = zext i1 %1621 to i8
  store i8 %1622, i8* %29, align 1
  %1623 = lshr i64 %1607, 63
  %1624 = trunc i64 %1623 to i8
  store i8 %1624, i8* %32, align 1
  %1625 = lshr i64 %1606, 63
  %1626 = xor i64 %1623, %1625
  %1627 = add nuw nsw i64 %1626, %1623
  %1628 = icmp eq i64 %1627, 2
  %1629 = zext i1 %1628 to i8
  store i8 %1629, i8* %38, align 1
  %1630 = add i64 %1605, 39
  store i64 %1630, i64* %3, align 8
  %1631 = load i32, i32* %1579, align 4
  %1632 = sext i32 %1631 to i64
  %1633 = shl nsw i64 %1632, 6
  store i64 %1633, i64* %RSI.i1621, align 8
  %1634 = add i64 %1633, %1607
  store i64 %1634, i64* %RDX.i1148, align 8
  %1635 = icmp ult i64 %1634, %1607
  %1636 = icmp ult i64 %1634, %1633
  %1637 = or i1 %1635, %1636
  %1638 = zext i1 %1637 to i8
  store i8 %1638, i8* %14, align 1
  %1639 = trunc i64 %1634 to i32
  %1640 = and i32 %1639, 255
  %1641 = tail call i32 @llvm.ctpop.i32(i32 %1640)
  %1642 = trunc i32 %1641 to i8
  %1643 = and i8 %1642, 1
  %1644 = xor i8 %1643, 1
  store i8 %1644, i8* %21, align 1
  %1645 = xor i64 %1607, %1634
  %1646 = lshr i64 %1645, 4
  %1647 = trunc i64 %1646 to i8
  %1648 = and i8 %1647, 1
  store i8 %1648, i8* %26, align 1
  %1649 = icmp eq i64 %1634, 0
  %1650 = zext i1 %1649 to i8
  store i8 %1650, i8* %29, align 1
  %1651 = lshr i64 %1634, 63
  %1652 = trunc i64 %1651 to i8
  store i8 %1652, i8* %32, align 1
  %1653 = lshr i64 %1632, 57
  %1654 = and i64 %1653, 1
  %1655 = xor i64 %1651, %1623
  %1656 = xor i64 %1651, %1654
  %1657 = add nuw nsw i64 %1655, %1656
  %1658 = icmp eq i64 %1657, 2
  %1659 = zext i1 %1658 to i8
  store i8 %1659, i8* %38, align 1
  %1660 = load i64, i64* %RBP.i, align 8
  %1661 = add i64 %1660, -40
  %1662 = add i64 %1605, 50
  store i64 %1662, i64* %3, align 8
  %1663 = inttoptr i64 %1661 to i32*
  %1664 = load i32, i32* %1663, align 4
  %1665 = sext i32 %1664 to i64
  store i64 %1665, i64* %RSI.i1621, align 8
  %1666 = shl nsw i64 %1665, 2
  %1667 = add i64 %1666, %1634
  %1668 = add i64 %1605, 53
  store i64 %1668, i64* %3, align 8
  %1669 = inttoptr i64 %1667 to i32*
  %1670 = load i32, i32* %1669, align 4
  %1671 = zext i32 %1670 to i64
  store i64 %1671, i64* %RDI.i1624, align 8
  %1672 = add i64 %1660, -36
  %1673 = add i64 %1605, 57
  store i64 %1673, i64* %3, align 8
  %1674 = inttoptr i64 %1672 to i32*
  %1675 = load i32, i32* %1674, align 4
  %1676 = sext i32 %1675 to i64
  %1677 = shl nsw i64 %1676, 6
  store i64 %1677, i64* %RDX.i1148, align 8
  %1678 = load i64, i64* %RCX.i1172, align 8
  %1679 = add i64 %1677, %1678
  store i64 %1679, i64* %RCX.i1172, align 8
  %1680 = icmp ult i64 %1679, %1678
  %1681 = icmp ult i64 %1679, %1677
  %1682 = or i1 %1680, %1681
  %1683 = zext i1 %1682 to i8
  store i8 %1683, i8* %14, align 1
  %1684 = trunc i64 %1679 to i32
  %1685 = and i32 %1684, 255
  %1686 = tail call i32 @llvm.ctpop.i32(i32 %1685)
  %1687 = trunc i32 %1686 to i8
  %1688 = and i8 %1687, 1
  %1689 = xor i8 %1688, 1
  store i8 %1689, i8* %21, align 1
  %1690 = xor i64 %1678, %1679
  %1691 = lshr i64 %1690, 4
  %1692 = trunc i64 %1691 to i8
  %1693 = and i8 %1692, 1
  store i8 %1693, i8* %26, align 1
  %1694 = icmp eq i64 %1679, 0
  %1695 = zext i1 %1694 to i8
  store i8 %1695, i8* %29, align 1
  %1696 = lshr i64 %1679, 63
  %1697 = trunc i64 %1696 to i8
  store i8 %1697, i8* %32, align 1
  %1698 = lshr i64 %1678, 63
  %1699 = lshr i64 %1676, 57
  %1700 = and i64 %1699, 1
  %1701 = xor i64 %1696, %1698
  %1702 = xor i64 %1696, %1700
  %1703 = add nuw nsw i64 %1701, %1702
  %1704 = icmp eq i64 %1703, 2
  %1705 = zext i1 %1704 to i8
  store i8 %1705, i8* %38, align 1
  %1706 = add i64 %1605, 68
  store i64 %1706, i64* %3, align 8
  %1707 = load i32, i32* %1663, align 4
  %1708 = sext i32 %1707 to i64
  store i64 %1708, i64* %RDX.i1148, align 8
  %1709 = shl nsw i64 %1708, 2
  %1710 = add i64 %1709, %1679
  %1711 = add i64 %1605, 71
  store i64 %1711, i64* %3, align 8
  %1712 = inttoptr i64 %1710 to i32*
  store i32 %1670, i32* %1712, align 4
  %1713 = load i64, i64* %RBP.i, align 8
  %1714 = add i64 %1713, -36
  %1715 = load i64, i64* %3, align 8
  %1716 = add i64 %1715, 4
  store i64 %1716, i64* %3, align 8
  %1717 = inttoptr i64 %1714 to i32*
  %1718 = load i32, i32* %1717, align 4
  %1719 = sext i32 %1718 to i64
  %1720 = shl nsw i64 %1719, 6
  store i64 %1720, i64* %RCX.i1172, align 8
  %1721 = load i64, i64* %RAX.i1605, align 8
  %1722 = add i64 %1720, %1721
  store i64 %1722, i64* %RAX.i1605, align 8
  %1723 = icmp ult i64 %1722, %1721
  %1724 = icmp ult i64 %1722, %1720
  %1725 = or i1 %1723, %1724
  %1726 = zext i1 %1725 to i8
  store i8 %1726, i8* %14, align 1
  %1727 = trunc i64 %1722 to i32
  %1728 = and i32 %1727, 255
  %1729 = tail call i32 @llvm.ctpop.i32(i32 %1728)
  %1730 = trunc i32 %1729 to i8
  %1731 = and i8 %1730, 1
  %1732 = xor i8 %1731, 1
  store i8 %1732, i8* %21, align 1
  %1733 = xor i64 %1721, %1722
  %1734 = lshr i64 %1733, 4
  %1735 = trunc i64 %1734 to i8
  %1736 = and i8 %1735, 1
  store i8 %1736, i8* %26, align 1
  %1737 = icmp eq i64 %1722, 0
  %1738 = zext i1 %1737 to i8
  store i8 %1738, i8* %29, align 1
  %1739 = lshr i64 %1722, 63
  %1740 = trunc i64 %1739 to i8
  store i8 %1740, i8* %32, align 1
  %1741 = lshr i64 %1721, 63
  %1742 = lshr i64 %1719, 57
  %1743 = and i64 %1742, 1
  %1744 = xor i64 %1739, %1741
  %1745 = xor i64 %1739, %1743
  %1746 = add nuw nsw i64 %1744, %1745
  %1747 = icmp eq i64 %1746, 2
  %1748 = zext i1 %1747 to i8
  store i8 %1748, i8* %38, align 1
  %1749 = add i64 %1713, -40
  %1750 = add i64 %1715, 15
  store i64 %1750, i64* %3, align 8
  %1751 = inttoptr i64 %1749 to i32*
  %1752 = load i32, i32* %1751, align 4
  %1753 = sext i32 %1752 to i64
  store i64 %1753, i64* %RCX.i1172, align 8
  %1754 = shl nsw i64 %1753, 2
  %1755 = add i64 %1754, %1722
  %1756 = add i64 %1715, 18
  store i64 %1756, i64* %3, align 8
  %1757 = inttoptr i64 %1755 to i32*
  %1758 = load i32, i32* %1757, align 4
  %1759 = zext i32 %1758 to i64
  store i64 %1759, i64* %RDI.i1624, align 8
  %1760 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*), align 8
  %1761 = add i64 %1760, 13112
  store i64 %1761, i64* %RAX.i1605, align 8
  %1762 = icmp ugt i64 %1760, -13113
  %1763 = zext i1 %1762 to i8
  store i8 %1763, i8* %14, align 1
  %1764 = trunc i64 %1761 to i32
  %1765 = and i32 %1764, 255
  %1766 = tail call i32 @llvm.ctpop.i32(i32 %1765)
  %1767 = trunc i32 %1766 to i8
  %1768 = and i8 %1767, 1
  %1769 = xor i8 %1768, 1
  store i8 %1769, i8* %21, align 1
  %1770 = xor i64 %1760, 16
  %1771 = xor i64 %1770, %1761
  %1772 = lshr i64 %1771, 4
  %1773 = trunc i64 %1772 to i8
  %1774 = and i8 %1773, 1
  store i8 %1774, i8* %26, align 1
  %1775 = icmp eq i64 %1761, 0
  %1776 = zext i1 %1775 to i8
  store i8 %1776, i8* %29, align 1
  %1777 = lshr i64 %1761, 63
  %1778 = trunc i64 %1777 to i8
  store i8 %1778, i8* %32, align 1
  %1779 = lshr i64 %1760, 63
  %1780 = xor i64 %1777, %1779
  %1781 = add nuw nsw i64 %1780, %1777
  %1782 = icmp eq i64 %1781, 2
  %1783 = zext i1 %1782 to i8
  store i8 %1783, i8* %38, align 1
  %1784 = load i64, i64* %RBP.i, align 8
  %1785 = add i64 %1784, -36
  %1786 = add i64 %1715, 36
  store i64 %1786, i64* %3, align 8
  %1787 = inttoptr i64 %1785 to i32*
  %1788 = load i32, i32* %1787, align 4
  %1789 = sext i32 %1788 to i64
  %1790 = shl nsw i64 %1789, 6
  store i64 %1790, i64* %RCX.i1172, align 8
  %1791 = add i64 %1790, %1761
  store i64 %1791, i64* %RAX.i1605, align 8
  %1792 = icmp ult i64 %1791, %1761
  %1793 = icmp ult i64 %1791, %1790
  %1794 = or i1 %1792, %1793
  %1795 = zext i1 %1794 to i8
  store i8 %1795, i8* %14, align 1
  %1796 = trunc i64 %1791 to i32
  %1797 = and i32 %1796, 255
  %1798 = tail call i32 @llvm.ctpop.i32(i32 %1797)
  %1799 = trunc i32 %1798 to i8
  %1800 = and i8 %1799, 1
  %1801 = xor i8 %1800, 1
  store i8 %1801, i8* %21, align 1
  %1802 = xor i64 %1761, %1791
  %1803 = lshr i64 %1802, 4
  %1804 = trunc i64 %1803 to i8
  %1805 = and i8 %1804, 1
  store i8 %1805, i8* %26, align 1
  %1806 = icmp eq i64 %1791, 0
  %1807 = zext i1 %1806 to i8
  store i8 %1807, i8* %29, align 1
  %1808 = lshr i64 %1791, 63
  %1809 = trunc i64 %1808 to i8
  store i8 %1809, i8* %32, align 1
  %1810 = lshr i64 %1789, 57
  %1811 = and i64 %1810, 1
  %1812 = xor i64 %1808, %1777
  %1813 = xor i64 %1808, %1811
  %1814 = add nuw nsw i64 %1812, %1813
  %1815 = icmp eq i64 %1814, 2
  %1816 = zext i1 %1815 to i8
  store i8 %1816, i8* %38, align 1
  %1817 = add i64 %1784, -40
  %1818 = add i64 %1715, 47
  store i64 %1818, i64* %3, align 8
  %1819 = inttoptr i64 %1817 to i32*
  %1820 = load i32, i32* %1819, align 4
  %1821 = sext i32 %1820 to i64
  store i64 %1821, i64* %RCX.i1172, align 8
  %1822 = shl nsw i64 %1821, 2
  %1823 = add i64 %1822, %1791
  %1824 = load i32, i32* %EDI.i1116, align 4
  %1825 = add i64 %1715, 50
  store i64 %1825, i64* %3, align 8
  %1826 = inttoptr i64 %1823 to i32*
  store i32 %1824, i32* %1826, align 4
  %1827 = load i64, i64* %RBP.i, align 8
  %1828 = add i64 %1827, -36
  %1829 = load i64, i64* %3, align 8
  %1830 = add i64 %1829, 3
  store i64 %1830, i64* %3, align 8
  %1831 = inttoptr i64 %1828 to i32*
  %1832 = load i32, i32* %1831, align 4
  %1833 = add i32 %1832, 1
  %1834 = zext i32 %1833 to i64
  store i64 %1834, i64* %RAX.i1605, align 8
  %1835 = icmp eq i32 %1832, -1
  %1836 = icmp eq i32 %1833, 0
  %1837 = or i1 %1835, %1836
  %1838 = zext i1 %1837 to i8
  store i8 %1838, i8* %14, align 1
  %1839 = and i32 %1833, 255
  %1840 = tail call i32 @llvm.ctpop.i32(i32 %1839)
  %1841 = trunc i32 %1840 to i8
  %1842 = and i8 %1841, 1
  %1843 = xor i8 %1842, 1
  store i8 %1843, i8* %21, align 1
  %1844 = xor i32 %1833, %1832
  %1845 = lshr i32 %1844, 4
  %1846 = trunc i32 %1845 to i8
  %1847 = and i8 %1846, 1
  store i8 %1847, i8* %26, align 1
  %1848 = zext i1 %1836 to i8
  store i8 %1848, i8* %29, align 1
  %1849 = lshr i32 %1833, 31
  %1850 = trunc i32 %1849 to i8
  store i8 %1850, i8* %32, align 1
  %1851 = lshr i32 %1832, 31
  %1852 = xor i32 %1849, %1851
  %1853 = add nuw nsw i32 %1852, %1849
  %1854 = icmp eq i32 %1853, 2
  %1855 = zext i1 %1854 to i8
  store i8 %1855, i8* %38, align 1
  %1856 = add i64 %1829, 9
  store i64 %1856, i64* %3, align 8
  store i32 %1833, i32* %1831, align 4
  %1857 = load i64, i64* %3, align 8
  %1858 = add i64 %1857, -140
  store i64 %1858, i64* %3, align 8
  br label %block_.L_489335

block_.L_4893c6:                                  ; preds = %block_.L_489335
  %1859 = add i64 %1576, -40
  %1860 = add i64 %1605, 8
  store i64 %1860, i64* %3, align 8
  %1861 = inttoptr i64 %1859 to i32*
  %1862 = load i32, i32* %1861, align 4
  %1863 = add i32 %1862, 1
  %1864 = zext i32 %1863 to i64
  store i64 %1864, i64* %RAX.i1605, align 8
  %1865 = icmp eq i32 %1862, -1
  %1866 = icmp eq i32 %1863, 0
  %1867 = or i1 %1865, %1866
  %1868 = zext i1 %1867 to i8
  store i8 %1868, i8* %14, align 1
  %1869 = and i32 %1863, 255
  %1870 = tail call i32 @llvm.ctpop.i32(i32 %1869)
  %1871 = trunc i32 %1870 to i8
  %1872 = and i8 %1871, 1
  %1873 = xor i8 %1872, 1
  store i8 %1873, i8* %21, align 1
  %1874 = xor i32 %1863, %1862
  %1875 = lshr i32 %1874, 4
  %1876 = trunc i32 %1875 to i8
  %1877 = and i8 %1876, 1
  store i8 %1877, i8* %26, align 1
  %1878 = zext i1 %1866 to i8
  store i8 %1878, i8* %29, align 1
  %1879 = lshr i32 %1863, 31
  %1880 = trunc i32 %1879 to i8
  store i8 %1880, i8* %32, align 1
  %1881 = lshr i32 %1862, 31
  %1882 = xor i32 %1879, %1881
  %1883 = add nuw nsw i32 %1882, %1879
  %1884 = icmp eq i32 %1883, 2
  %1885 = zext i1 %1884 to i8
  store i8 %1885, i8* %38, align 1
  %1886 = add i64 %1605, 14
  store i64 %1886, i64* %3, align 8
  store i32 %1863, i32* %1861, align 4
  %1887 = load i64, i64* %3, align 8
  %1888 = add i64 %1887, -176
  store i64 %1888, i64* %3, align 8
  br label %block_.L_489324

block_.L_4893d9:                                  ; preds = %block_.L_489324
  store i64 0, i64* %RAX.i1605, align 8
  store i8 0, i8* %14, align 1
  store i8 1, i8* %21, align 1
  store i8 1, i8* %29, align 1
  store i8 0, i8* %32, align 1
  store i8 0, i8* %38, align 1
  store i8 0, i8* %26, align 1
  store i64 0, i64* %RDI.i1624, align 8
  store i64 0, i64* %RSI.i1621, align 8
  %1889 = add i64 %1571, -532249
  %1890 = add i64 %1571, 11
  %1891 = load i64, i64* %6, align 8
  %1892 = add i64 %1891, -8
  %1893 = inttoptr i64 %1892 to i64*
  store i64 %1890, i64* %1893, align 8
  store i64 %1892, i64* %6, align 8
  store i64 %1889, i64* %3, align 8
  %call2_4893df = tail call %struct.Memory* @sub_4074c0.dct_chroma(%struct.State* nonnull %0, i64 %1889, %struct.Memory* %call2_4892f9)
  %1894 = load i64, i64* %RBP.i, align 8
  %1895 = add i64 %1894, -76
  %1896 = load i32, i32* %EAX.i1602, align 4
  %1897 = load i64, i64* %3, align 8
  %1898 = add i64 %1897, 3
  store i64 %1898, i64* %3, align 8
  %1899 = inttoptr i64 %1895 to i32*
  store i32 %1896, i32* %1899, align 4
  %1900 = load i64, i64* %RBP.i, align 8
  %1901 = add i64 %1900, -40
  %1902 = load i64, i64* %3, align 8
  %1903 = add i64 %1902, 7
  store i64 %1903, i64* %3, align 8
  %1904 = inttoptr i64 %1901 to i32*
  store i32 0, i32* %1904, align 4
  %.pre99 = load i64, i64* %3, align 8
  br label %block_.L_4893ee

block_.L_4893ee:                                  ; preds = %block_.L_489490, %block_.L_4893d9
  %1905 = phi i64 [ %2252, %block_.L_489490 ], [ %.pre99, %block_.L_4893d9 ]
  %1906 = load i64, i64* %RBP.i, align 8
  %1907 = add i64 %1906, -40
  %1908 = add i64 %1905, 4
  store i64 %1908, i64* %3, align 8
  %1909 = inttoptr i64 %1907 to i32*
  %1910 = load i32, i32* %1909, align 4
  %1911 = add i32 %1910, -16
  %1912 = icmp ult i32 %1910, 16
  %1913 = zext i1 %1912 to i8
  store i8 %1913, i8* %14, align 1
  %1914 = and i32 %1911, 255
  %1915 = tail call i32 @llvm.ctpop.i32(i32 %1914)
  %1916 = trunc i32 %1915 to i8
  %1917 = and i8 %1916, 1
  %1918 = xor i8 %1917, 1
  store i8 %1918, i8* %21, align 1
  %1919 = xor i32 %1910, 16
  %1920 = xor i32 %1919, %1911
  %1921 = lshr i32 %1920, 4
  %1922 = trunc i32 %1921 to i8
  %1923 = and i8 %1922, 1
  store i8 %1923, i8* %26, align 1
  %1924 = icmp eq i32 %1911, 0
  %1925 = zext i1 %1924 to i8
  store i8 %1925, i8* %29, align 1
  %1926 = lshr i32 %1911, 31
  %1927 = trunc i32 %1926 to i8
  store i8 %1927, i8* %32, align 1
  %1928 = lshr i32 %1910, 31
  %1929 = xor i32 %1926, %1928
  %1930 = add nuw nsw i32 %1929, %1928
  %1931 = icmp eq i32 %1930, 2
  %1932 = zext i1 %1931 to i8
  store i8 %1932, i8* %38, align 1
  %1933 = icmp ne i8 %1927, 0
  %1934 = xor i1 %1933, %1931
  %.v124 = select i1 %1934, i64 10, i64 181
  %1935 = add i64 %1905, %.v124
  store i64 %1935, i64* %3, align 8
  br i1 %1934, label %block_4893f8, label %block_.L_4894a3

block_4893f8:                                     ; preds = %block_.L_4893ee
  %1936 = add i64 %1906, -36
  %1937 = add i64 %1935, 7
  store i64 %1937, i64* %3, align 8
  %1938 = inttoptr i64 %1936 to i32*
  store i32 0, i32* %1938, align 4
  %.pre113 = load i64, i64* %3, align 8
  br label %block_.L_4893ff

block_.L_4893ff:                                  ; preds = %block_489409, %block_4893f8
  %1939 = phi i64 [ %2222, %block_489409 ], [ %.pre113, %block_4893f8 ]
  %1940 = load i64, i64* %RBP.i, align 8
  %1941 = add i64 %1940, -36
  %1942 = add i64 %1939, 4
  store i64 %1942, i64* %3, align 8
  %1943 = inttoptr i64 %1941 to i32*
  %1944 = load i32, i32* %1943, align 4
  %1945 = add i32 %1944, -16
  %1946 = icmp ult i32 %1944, 16
  %1947 = zext i1 %1946 to i8
  store i8 %1947, i8* %14, align 1
  %1948 = and i32 %1945, 255
  %1949 = tail call i32 @llvm.ctpop.i32(i32 %1948)
  %1950 = trunc i32 %1949 to i8
  %1951 = and i8 %1950, 1
  %1952 = xor i8 %1951, 1
  store i8 %1952, i8* %21, align 1
  %1953 = xor i32 %1944, 16
  %1954 = xor i32 %1953, %1945
  %1955 = lshr i32 %1954, 4
  %1956 = trunc i32 %1955 to i8
  %1957 = and i8 %1956, 1
  store i8 %1957, i8* %26, align 1
  %1958 = icmp eq i32 %1945, 0
  %1959 = zext i1 %1958 to i8
  store i8 %1959, i8* %29, align 1
  %1960 = lshr i32 %1945, 31
  %1961 = trunc i32 %1960 to i8
  store i8 %1961, i8* %32, align 1
  %1962 = lshr i32 %1944, 31
  %1963 = xor i32 %1960, %1962
  %1964 = add nuw nsw i32 %1963, %1962
  %1965 = icmp eq i32 %1964, 2
  %1966 = zext i1 %1965 to i8
  store i8 %1966, i8* %38, align 1
  %1967 = icmp ne i8 %1961, 0
  %1968 = xor i1 %1967, %1965
  %.v116 = select i1 %1968, i64 10, i64 145
  %1969 = add i64 %1939, %.v116
  store i64 %1969, i64* %3, align 8
  br i1 %1968, label %block_489409, label %block_.L_489490

block_489409:                                     ; preds = %block_.L_4893ff
  store i64 ptrtoint (%G__0x6d40f0_type* @G__0x6d40f0 to i64), i64* %RAX.i1605, align 8
  store i64 ptrtoint (%G__0x6f8f20_type* @G__0x6f8f20 to i64), i64* %RCX.i1172, align 8
  %1970 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*), align 8
  %1971 = add i64 %1970, 13112
  store i64 %1971, i64* %RDX.i1148, align 8
  %1972 = icmp ugt i64 %1970, -13113
  %1973 = zext i1 %1972 to i8
  store i8 %1973, i8* %14, align 1
  %1974 = trunc i64 %1971 to i32
  %1975 = and i32 %1974, 255
  %1976 = tail call i32 @llvm.ctpop.i32(i32 %1975)
  %1977 = trunc i32 %1976 to i8
  %1978 = and i8 %1977, 1
  %1979 = xor i8 %1978, 1
  store i8 %1979, i8* %21, align 1
  %1980 = xor i64 %1970, 16
  %1981 = xor i64 %1980, %1971
  %1982 = lshr i64 %1981, 4
  %1983 = trunc i64 %1982 to i8
  %1984 = and i8 %1983, 1
  store i8 %1984, i8* %26, align 1
  %1985 = icmp eq i64 %1971, 0
  %1986 = zext i1 %1985 to i8
  store i8 %1986, i8* %29, align 1
  %1987 = lshr i64 %1971, 63
  %1988 = trunc i64 %1987 to i8
  store i8 %1988, i8* %32, align 1
  %1989 = lshr i64 %1970, 63
  %1990 = xor i64 %1987, %1989
  %1991 = add nuw nsw i64 %1990, %1987
  %1992 = icmp eq i64 %1991, 2
  %1993 = zext i1 %1992 to i8
  store i8 %1993, i8* %38, align 1
  %1994 = add i64 %1969, 39
  store i64 %1994, i64* %3, align 8
  %1995 = load i32, i32* %1943, align 4
  %1996 = sext i32 %1995 to i64
  %1997 = shl nsw i64 %1996, 6
  store i64 %1997, i64* %RSI.i1621, align 8
  %1998 = add i64 %1997, %1971
  store i64 %1998, i64* %RDX.i1148, align 8
  %1999 = icmp ult i64 %1998, %1971
  %2000 = icmp ult i64 %1998, %1997
  %2001 = or i1 %1999, %2000
  %2002 = zext i1 %2001 to i8
  store i8 %2002, i8* %14, align 1
  %2003 = trunc i64 %1998 to i32
  %2004 = and i32 %2003, 255
  %2005 = tail call i32 @llvm.ctpop.i32(i32 %2004)
  %2006 = trunc i32 %2005 to i8
  %2007 = and i8 %2006, 1
  %2008 = xor i8 %2007, 1
  store i8 %2008, i8* %21, align 1
  %2009 = xor i64 %1971, %1998
  %2010 = lshr i64 %2009, 4
  %2011 = trunc i64 %2010 to i8
  %2012 = and i8 %2011, 1
  store i8 %2012, i8* %26, align 1
  %2013 = icmp eq i64 %1998, 0
  %2014 = zext i1 %2013 to i8
  store i8 %2014, i8* %29, align 1
  %2015 = lshr i64 %1998, 63
  %2016 = trunc i64 %2015 to i8
  store i8 %2016, i8* %32, align 1
  %2017 = lshr i64 %1996, 57
  %2018 = and i64 %2017, 1
  %2019 = xor i64 %2015, %1987
  %2020 = xor i64 %2015, %2018
  %2021 = add nuw nsw i64 %2019, %2020
  %2022 = icmp eq i64 %2021, 2
  %2023 = zext i1 %2022 to i8
  store i8 %2023, i8* %38, align 1
  %2024 = load i64, i64* %RBP.i, align 8
  %2025 = add i64 %2024, -40
  %2026 = add i64 %1969, 50
  store i64 %2026, i64* %3, align 8
  %2027 = inttoptr i64 %2025 to i32*
  %2028 = load i32, i32* %2027, align 4
  %2029 = sext i32 %2028 to i64
  store i64 %2029, i64* %RSI.i1621, align 8
  %2030 = shl nsw i64 %2029, 2
  %2031 = add i64 %2030, %1998
  %2032 = add i64 %1969, 53
  store i64 %2032, i64* %3, align 8
  %2033 = inttoptr i64 %2031 to i32*
  %2034 = load i32, i32* %2033, align 4
  %2035 = zext i32 %2034 to i64
  store i64 %2035, i64* %RDI.i1624, align 8
  %2036 = add i64 %2024, -36
  %2037 = add i64 %1969, 57
  store i64 %2037, i64* %3, align 8
  %2038 = inttoptr i64 %2036 to i32*
  %2039 = load i32, i32* %2038, align 4
  %2040 = sext i32 %2039 to i64
  %2041 = shl nsw i64 %2040, 6
  store i64 %2041, i64* %RDX.i1148, align 8
  %2042 = load i64, i64* %RCX.i1172, align 8
  %2043 = add i64 %2041, %2042
  store i64 %2043, i64* %RCX.i1172, align 8
  %2044 = icmp ult i64 %2043, %2042
  %2045 = icmp ult i64 %2043, %2041
  %2046 = or i1 %2044, %2045
  %2047 = zext i1 %2046 to i8
  store i8 %2047, i8* %14, align 1
  %2048 = trunc i64 %2043 to i32
  %2049 = and i32 %2048, 255
  %2050 = tail call i32 @llvm.ctpop.i32(i32 %2049)
  %2051 = trunc i32 %2050 to i8
  %2052 = and i8 %2051, 1
  %2053 = xor i8 %2052, 1
  store i8 %2053, i8* %21, align 1
  %2054 = xor i64 %2042, %2043
  %2055 = lshr i64 %2054, 4
  %2056 = trunc i64 %2055 to i8
  %2057 = and i8 %2056, 1
  store i8 %2057, i8* %26, align 1
  %2058 = icmp eq i64 %2043, 0
  %2059 = zext i1 %2058 to i8
  store i8 %2059, i8* %29, align 1
  %2060 = lshr i64 %2043, 63
  %2061 = trunc i64 %2060 to i8
  store i8 %2061, i8* %32, align 1
  %2062 = lshr i64 %2042, 63
  %2063 = lshr i64 %2040, 57
  %2064 = and i64 %2063, 1
  %2065 = xor i64 %2060, %2062
  %2066 = xor i64 %2060, %2064
  %2067 = add nuw nsw i64 %2065, %2066
  %2068 = icmp eq i64 %2067, 2
  %2069 = zext i1 %2068 to i8
  store i8 %2069, i8* %38, align 1
  %2070 = add i64 %1969, 68
  store i64 %2070, i64* %3, align 8
  %2071 = load i32, i32* %2027, align 4
  %2072 = sext i32 %2071 to i64
  store i64 %2072, i64* %RDX.i1148, align 8
  %2073 = shl nsw i64 %2072, 2
  %2074 = add i64 %2073, %2043
  %2075 = add i64 %1969, 71
  store i64 %2075, i64* %3, align 8
  %2076 = inttoptr i64 %2074 to i32*
  store i32 %2034, i32* %2076, align 4
  %2077 = load i64, i64* %RBP.i, align 8
  %2078 = add i64 %2077, -36
  %2079 = load i64, i64* %3, align 8
  %2080 = add i64 %2079, 4
  store i64 %2080, i64* %3, align 8
  %2081 = inttoptr i64 %2078 to i32*
  %2082 = load i32, i32* %2081, align 4
  %2083 = sext i32 %2082 to i64
  %2084 = shl nsw i64 %2083, 6
  store i64 %2084, i64* %RCX.i1172, align 8
  %2085 = load i64, i64* %RAX.i1605, align 8
  %2086 = add i64 %2084, %2085
  store i64 %2086, i64* %RAX.i1605, align 8
  %2087 = icmp ult i64 %2086, %2085
  %2088 = icmp ult i64 %2086, %2084
  %2089 = or i1 %2087, %2088
  %2090 = zext i1 %2089 to i8
  store i8 %2090, i8* %14, align 1
  %2091 = trunc i64 %2086 to i32
  %2092 = and i32 %2091, 255
  %2093 = tail call i32 @llvm.ctpop.i32(i32 %2092)
  %2094 = trunc i32 %2093 to i8
  %2095 = and i8 %2094, 1
  %2096 = xor i8 %2095, 1
  store i8 %2096, i8* %21, align 1
  %2097 = xor i64 %2085, %2086
  %2098 = lshr i64 %2097, 4
  %2099 = trunc i64 %2098 to i8
  %2100 = and i8 %2099, 1
  store i8 %2100, i8* %26, align 1
  %2101 = icmp eq i64 %2086, 0
  %2102 = zext i1 %2101 to i8
  store i8 %2102, i8* %29, align 1
  %2103 = lshr i64 %2086, 63
  %2104 = trunc i64 %2103 to i8
  store i8 %2104, i8* %32, align 1
  %2105 = lshr i64 %2085, 63
  %2106 = lshr i64 %2083, 57
  %2107 = and i64 %2106, 1
  %2108 = xor i64 %2103, %2105
  %2109 = xor i64 %2103, %2107
  %2110 = add nuw nsw i64 %2108, %2109
  %2111 = icmp eq i64 %2110, 2
  %2112 = zext i1 %2111 to i8
  store i8 %2112, i8* %38, align 1
  %2113 = add i64 %2077, -40
  %2114 = add i64 %2079, 15
  store i64 %2114, i64* %3, align 8
  %2115 = inttoptr i64 %2113 to i32*
  %2116 = load i32, i32* %2115, align 4
  %2117 = sext i32 %2116 to i64
  store i64 %2117, i64* %RCX.i1172, align 8
  %2118 = shl nsw i64 %2117, 2
  %2119 = add i64 %2118, %2086
  %2120 = add i64 %2079, 18
  store i64 %2120, i64* %3, align 8
  %2121 = inttoptr i64 %2119 to i32*
  %2122 = load i32, i32* %2121, align 4
  %2123 = zext i32 %2122 to i64
  store i64 %2123, i64* %RDI.i1624, align 8
  %2124 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*), align 8
  %2125 = add i64 %2124, 13112
  store i64 %2125, i64* %RAX.i1605, align 8
  %2126 = icmp ugt i64 %2124, -13113
  %2127 = zext i1 %2126 to i8
  store i8 %2127, i8* %14, align 1
  %2128 = trunc i64 %2125 to i32
  %2129 = and i32 %2128, 255
  %2130 = tail call i32 @llvm.ctpop.i32(i32 %2129)
  %2131 = trunc i32 %2130 to i8
  %2132 = and i8 %2131, 1
  %2133 = xor i8 %2132, 1
  store i8 %2133, i8* %21, align 1
  %2134 = xor i64 %2124, 16
  %2135 = xor i64 %2134, %2125
  %2136 = lshr i64 %2135, 4
  %2137 = trunc i64 %2136 to i8
  %2138 = and i8 %2137, 1
  store i8 %2138, i8* %26, align 1
  %2139 = icmp eq i64 %2125, 0
  %2140 = zext i1 %2139 to i8
  store i8 %2140, i8* %29, align 1
  %2141 = lshr i64 %2125, 63
  %2142 = trunc i64 %2141 to i8
  store i8 %2142, i8* %32, align 1
  %2143 = lshr i64 %2124, 63
  %2144 = xor i64 %2141, %2143
  %2145 = add nuw nsw i64 %2144, %2141
  %2146 = icmp eq i64 %2145, 2
  %2147 = zext i1 %2146 to i8
  store i8 %2147, i8* %38, align 1
  %2148 = load i64, i64* %RBP.i, align 8
  %2149 = add i64 %2148, -36
  %2150 = add i64 %2079, 36
  store i64 %2150, i64* %3, align 8
  %2151 = inttoptr i64 %2149 to i32*
  %2152 = load i32, i32* %2151, align 4
  %2153 = sext i32 %2152 to i64
  %2154 = shl nsw i64 %2153, 6
  store i64 %2154, i64* %RCX.i1172, align 8
  %2155 = add i64 %2154, %2125
  store i64 %2155, i64* %RAX.i1605, align 8
  %2156 = icmp ult i64 %2155, %2125
  %2157 = icmp ult i64 %2155, %2154
  %2158 = or i1 %2156, %2157
  %2159 = zext i1 %2158 to i8
  store i8 %2159, i8* %14, align 1
  %2160 = trunc i64 %2155 to i32
  %2161 = and i32 %2160, 255
  %2162 = tail call i32 @llvm.ctpop.i32(i32 %2161)
  %2163 = trunc i32 %2162 to i8
  %2164 = and i8 %2163, 1
  %2165 = xor i8 %2164, 1
  store i8 %2165, i8* %21, align 1
  %2166 = xor i64 %2125, %2155
  %2167 = lshr i64 %2166, 4
  %2168 = trunc i64 %2167 to i8
  %2169 = and i8 %2168, 1
  store i8 %2169, i8* %26, align 1
  %2170 = icmp eq i64 %2155, 0
  %2171 = zext i1 %2170 to i8
  store i8 %2171, i8* %29, align 1
  %2172 = lshr i64 %2155, 63
  %2173 = trunc i64 %2172 to i8
  store i8 %2173, i8* %32, align 1
  %2174 = lshr i64 %2153, 57
  %2175 = and i64 %2174, 1
  %2176 = xor i64 %2172, %2141
  %2177 = xor i64 %2172, %2175
  %2178 = add nuw nsw i64 %2176, %2177
  %2179 = icmp eq i64 %2178, 2
  %2180 = zext i1 %2179 to i8
  store i8 %2180, i8* %38, align 1
  %2181 = add i64 %2148, -40
  %2182 = add i64 %2079, 47
  store i64 %2182, i64* %3, align 8
  %2183 = inttoptr i64 %2181 to i32*
  %2184 = load i32, i32* %2183, align 4
  %2185 = sext i32 %2184 to i64
  store i64 %2185, i64* %RCX.i1172, align 8
  %2186 = shl nsw i64 %2185, 2
  %2187 = add i64 %2186, %2155
  %2188 = load i32, i32* %EDI.i1116, align 4
  %2189 = add i64 %2079, 50
  store i64 %2189, i64* %3, align 8
  %2190 = inttoptr i64 %2187 to i32*
  store i32 %2188, i32* %2190, align 4
  %2191 = load i64, i64* %RBP.i, align 8
  %2192 = add i64 %2191, -36
  %2193 = load i64, i64* %3, align 8
  %2194 = add i64 %2193, 3
  store i64 %2194, i64* %3, align 8
  %2195 = inttoptr i64 %2192 to i32*
  %2196 = load i32, i32* %2195, align 4
  %2197 = add i32 %2196, 1
  %2198 = zext i32 %2197 to i64
  store i64 %2198, i64* %RAX.i1605, align 8
  %2199 = icmp eq i32 %2196, -1
  %2200 = icmp eq i32 %2197, 0
  %2201 = or i1 %2199, %2200
  %2202 = zext i1 %2201 to i8
  store i8 %2202, i8* %14, align 1
  %2203 = and i32 %2197, 255
  %2204 = tail call i32 @llvm.ctpop.i32(i32 %2203)
  %2205 = trunc i32 %2204 to i8
  %2206 = and i8 %2205, 1
  %2207 = xor i8 %2206, 1
  store i8 %2207, i8* %21, align 1
  %2208 = xor i32 %2197, %2196
  %2209 = lshr i32 %2208, 4
  %2210 = trunc i32 %2209 to i8
  %2211 = and i8 %2210, 1
  store i8 %2211, i8* %26, align 1
  %2212 = zext i1 %2200 to i8
  store i8 %2212, i8* %29, align 1
  %2213 = lshr i32 %2197, 31
  %2214 = trunc i32 %2213 to i8
  store i8 %2214, i8* %32, align 1
  %2215 = lshr i32 %2196, 31
  %2216 = xor i32 %2213, %2215
  %2217 = add nuw nsw i32 %2216, %2213
  %2218 = icmp eq i32 %2217, 2
  %2219 = zext i1 %2218 to i8
  store i8 %2219, i8* %38, align 1
  %2220 = add i64 %2193, 9
  store i64 %2220, i64* %3, align 8
  store i32 %2197, i32* %2195, align 4
  %2221 = load i64, i64* %3, align 8
  %2222 = add i64 %2221, -140
  store i64 %2222, i64* %3, align 8
  br label %block_.L_4893ff

block_.L_489490:                                  ; preds = %block_.L_4893ff
  %2223 = add i64 %1940, -40
  %2224 = add i64 %1969, 8
  store i64 %2224, i64* %3, align 8
  %2225 = inttoptr i64 %2223 to i32*
  %2226 = load i32, i32* %2225, align 4
  %2227 = add i32 %2226, 1
  %2228 = zext i32 %2227 to i64
  store i64 %2228, i64* %RAX.i1605, align 8
  %2229 = icmp eq i32 %2226, -1
  %2230 = icmp eq i32 %2227, 0
  %2231 = or i1 %2229, %2230
  %2232 = zext i1 %2231 to i8
  store i8 %2232, i8* %14, align 1
  %2233 = and i32 %2227, 255
  %2234 = tail call i32 @llvm.ctpop.i32(i32 %2233)
  %2235 = trunc i32 %2234 to i8
  %2236 = and i8 %2235, 1
  %2237 = xor i8 %2236, 1
  store i8 %2237, i8* %21, align 1
  %2238 = xor i32 %2227, %2226
  %2239 = lshr i32 %2238, 4
  %2240 = trunc i32 %2239 to i8
  %2241 = and i8 %2240, 1
  store i8 %2241, i8* %26, align 1
  %2242 = zext i1 %2230 to i8
  store i8 %2242, i8* %29, align 1
  %2243 = lshr i32 %2227, 31
  %2244 = trunc i32 %2243 to i8
  store i8 %2244, i8* %32, align 1
  %2245 = lshr i32 %2226, 31
  %2246 = xor i32 %2243, %2245
  %2247 = add nuw nsw i32 %2246, %2243
  %2248 = icmp eq i32 %2247, 2
  %2249 = zext i1 %2248 to i8
  store i8 %2249, i8* %38, align 1
  %2250 = add i64 %1969, 14
  store i64 %2250, i64* %3, align 8
  store i32 %2227, i32* %2225, align 4
  %2251 = load i64, i64* %3, align 8
  %2252 = add i64 %2251, -176
  store i64 %2252, i64* %3, align 8
  br label %block_.L_4893ee

block_.L_4894a3:                                  ; preds = %block_.L_4893ee
  store i64 1, i64* %RDI.i1624, align 8
  %2253 = add i64 %1906, -76
  %2254 = add i64 %1935, 8
  store i64 %2254, i64* %3, align 8
  %2255 = inttoptr i64 %2253 to i32*
  %2256 = load i32, i32* %2255, align 4
  %2257 = zext i32 %2256 to i64
  store i64 %2257, i64* %RSI.i1621, align 8
  %2258 = add i64 %1935, -532451
  %2259 = add i64 %1935, 13
  %2260 = load i64, i64* %6, align 8
  %2261 = add i64 %2260, -8
  %2262 = inttoptr i64 %2261 to i64*
  store i64 %2259, i64* %2262, align 8
  store i64 %2261, i64* %6, align 8
  store i64 %2258, i64* %3, align 8
  %call2_4894ab = tail call %struct.Memory* @sub_4074c0.dct_chroma(%struct.State* nonnull %0, i64 %2258, %struct.Memory* %call2_4893df)
  %2263 = load i64, i64* %RBP.i, align 8
  %2264 = add i64 %2263, -76
  %2265 = load i32, i32* %EAX.i1602, align 4
  %2266 = load i64, i64* %3, align 8
  %2267 = add i64 %2266, 3
  store i64 %2267, i64* %3, align 8
  %2268 = inttoptr i64 %2264 to i32*
  store i32 %2265, i32* %2268, align 4
  %2269 = load i64, i64* %RBP.i, align 8
  %2270 = add i64 %2269, -40
  %2271 = load i64, i64* %3, align 8
  %2272 = add i64 %2271, 7
  store i64 %2272, i64* %3, align 8
  %2273 = inttoptr i64 %2270 to i32*
  store i32 0, i32* %2273, align 4
  %.pre100 = load i64, i64* %3, align 8
  br label %block_.L_4894ba

block_.L_4894ba:                                  ; preds = %block_.L_489520, %block_.L_4894a3
  %2274 = phi i64 [ %2507, %block_.L_489520 ], [ %.pre100, %block_.L_4894a3 ]
  %2275 = load i64, i64* %RBP.i, align 8
  %2276 = add i64 %2275, -40
  %2277 = add i64 %2274, 4
  store i64 %2277, i64* %3, align 8
  %2278 = inttoptr i64 %2276 to i32*
  %2279 = load i32, i32* %2278, align 4
  %2280 = add i32 %2279, -16
  %2281 = icmp ult i32 %2279, 16
  %2282 = zext i1 %2281 to i8
  store i8 %2282, i8* %14, align 1
  %2283 = and i32 %2280, 255
  %2284 = tail call i32 @llvm.ctpop.i32(i32 %2283)
  %2285 = trunc i32 %2284 to i8
  %2286 = and i8 %2285, 1
  %2287 = xor i8 %2286, 1
  store i8 %2287, i8* %21, align 1
  %2288 = xor i32 %2279, 16
  %2289 = xor i32 %2288, %2280
  %2290 = lshr i32 %2289, 4
  %2291 = trunc i32 %2290 to i8
  %2292 = and i8 %2291, 1
  store i8 %2292, i8* %26, align 1
  %2293 = icmp eq i32 %2280, 0
  %2294 = zext i1 %2293 to i8
  store i8 %2294, i8* %29, align 1
  %2295 = lshr i32 %2280, 31
  %2296 = trunc i32 %2295 to i8
  store i8 %2296, i8* %32, align 1
  %2297 = lshr i32 %2279, 31
  %2298 = xor i32 %2295, %2297
  %2299 = add nuw nsw i32 %2298, %2297
  %2300 = icmp eq i32 %2299, 2
  %2301 = zext i1 %2300 to i8
  store i8 %2301, i8* %38, align 1
  %2302 = icmp ne i8 %2296, 0
  %2303 = xor i1 %2302, %2300
  %.v125 = select i1 %2303, i64 10, i64 121
  %2304 = add i64 %2274, %.v125
  store i64 %2304, i64* %3, align 8
  br i1 %2303, label %block_4894c4, label %block_.L_489533

block_4894c4:                                     ; preds = %block_.L_4894ba
  %2305 = add i64 %2275, -36
  %2306 = add i64 %2304, 7
  store i64 %2306, i64* %3, align 8
  %2307 = inttoptr i64 %2305 to i32*
  store i32 0, i32* %2307, align 4
  %.pre112 = load i64, i64* %3, align 8
  br label %block_.L_4894cb

block_.L_4894cb:                                  ; preds = %block_4894d5, %block_4894c4
  %2308 = phi i64 [ %2477, %block_4894d5 ], [ %.pre112, %block_4894c4 ]
  %2309 = load i64, i64* %RBP.i, align 8
  %2310 = add i64 %2309, -36
  %2311 = add i64 %2308, 4
  store i64 %2311, i64* %3, align 8
  %2312 = inttoptr i64 %2310 to i32*
  %2313 = load i32, i32* %2312, align 4
  %2314 = add i32 %2313, -16
  %2315 = icmp ult i32 %2313, 16
  %2316 = zext i1 %2315 to i8
  store i8 %2316, i8* %14, align 1
  %2317 = and i32 %2314, 255
  %2318 = tail call i32 @llvm.ctpop.i32(i32 %2317)
  %2319 = trunc i32 %2318 to i8
  %2320 = and i8 %2319, 1
  %2321 = xor i8 %2320, 1
  store i8 %2321, i8* %21, align 1
  %2322 = xor i32 %2313, 16
  %2323 = xor i32 %2322, %2314
  %2324 = lshr i32 %2323, 4
  %2325 = trunc i32 %2324 to i8
  %2326 = and i8 %2325, 1
  store i8 %2326, i8* %26, align 1
  %2327 = icmp eq i32 %2314, 0
  %2328 = zext i1 %2327 to i8
  store i8 %2328, i8* %29, align 1
  %2329 = lshr i32 %2314, 31
  %2330 = trunc i32 %2329 to i8
  store i8 %2330, i8* %32, align 1
  %2331 = lshr i32 %2313, 31
  %2332 = xor i32 %2329, %2331
  %2333 = add nuw nsw i32 %2332, %2331
  %2334 = icmp eq i32 %2333, 2
  %2335 = zext i1 %2334 to i8
  store i8 %2335, i8* %38, align 1
  %2336 = icmp ne i8 %2330, 0
  %2337 = xor i1 %2336, %2334
  %.v115 = select i1 %2337, i64 10, i64 85
  %2338 = add i64 %2308, %.v115
  store i64 %2338, i64* %3, align 8
  br i1 %2337, label %block_4894d5, label %block_.L_489520

block_4894d5:                                     ; preds = %block_.L_4894cb
  store i64 ptrtoint (%G__0x6d2ec0_type* @G__0x6d2ec0 to i64), i64* %RAX.i1605, align 8
  %2339 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*), align 8
  %2340 = add i64 %2339, 13112
  store i64 %2340, i64* %RCX.i1172, align 8
  %2341 = icmp ugt i64 %2339, -13113
  %2342 = zext i1 %2341 to i8
  store i8 %2342, i8* %14, align 1
  %2343 = trunc i64 %2340 to i32
  %2344 = and i32 %2343, 255
  %2345 = tail call i32 @llvm.ctpop.i32(i32 %2344)
  %2346 = trunc i32 %2345 to i8
  %2347 = and i8 %2346, 1
  %2348 = xor i8 %2347, 1
  store i8 %2348, i8* %21, align 1
  %2349 = xor i64 %2339, 16
  %2350 = xor i64 %2349, %2340
  %2351 = lshr i64 %2350, 4
  %2352 = trunc i64 %2351 to i8
  %2353 = and i8 %2352, 1
  store i8 %2353, i8* %26, align 1
  %2354 = icmp eq i64 %2340, 0
  %2355 = zext i1 %2354 to i8
  store i8 %2355, i8* %29, align 1
  %2356 = lshr i64 %2340, 63
  %2357 = trunc i64 %2356 to i8
  store i8 %2357, i8* %32, align 1
  %2358 = lshr i64 %2339, 63
  %2359 = xor i64 %2356, %2358
  %2360 = add nuw nsw i64 %2359, %2356
  %2361 = icmp eq i64 %2360, 2
  %2362 = zext i1 %2361 to i8
  store i8 %2362, i8* %38, align 1
  %2363 = add i64 %2338, 29
  store i64 %2363, i64* %3, align 8
  %2364 = load i32, i32* %2312, align 4
  %2365 = sext i32 %2364 to i64
  %2366 = shl nsw i64 %2365, 6
  store i64 %2366, i64* %RDX.i1148, align 8
  %2367 = add i64 %2366, %2340
  store i64 %2367, i64* %RCX.i1172, align 8
  %2368 = icmp ult i64 %2367, %2340
  %2369 = icmp ult i64 %2367, %2366
  %2370 = or i1 %2368, %2369
  %2371 = zext i1 %2370 to i8
  store i8 %2371, i8* %14, align 1
  %2372 = trunc i64 %2367 to i32
  %2373 = and i32 %2372, 255
  %2374 = tail call i32 @llvm.ctpop.i32(i32 %2373)
  %2375 = trunc i32 %2374 to i8
  %2376 = and i8 %2375, 1
  %2377 = xor i8 %2376, 1
  store i8 %2377, i8* %21, align 1
  %2378 = xor i64 %2340, %2367
  %2379 = lshr i64 %2378, 4
  %2380 = trunc i64 %2379 to i8
  %2381 = and i8 %2380, 1
  store i8 %2381, i8* %26, align 1
  %2382 = icmp eq i64 %2367, 0
  %2383 = zext i1 %2382 to i8
  store i8 %2383, i8* %29, align 1
  %2384 = lshr i64 %2367, 63
  %2385 = trunc i64 %2384 to i8
  store i8 %2385, i8* %32, align 1
  %2386 = lshr i64 %2365, 57
  %2387 = and i64 %2386, 1
  %2388 = xor i64 %2384, %2356
  %2389 = xor i64 %2384, %2387
  %2390 = add nuw nsw i64 %2388, %2389
  %2391 = icmp eq i64 %2390, 2
  %2392 = zext i1 %2391 to i8
  store i8 %2392, i8* %38, align 1
  %2393 = load i64, i64* %RBP.i, align 8
  %2394 = add i64 %2393, -40
  %2395 = add i64 %2338, 40
  store i64 %2395, i64* %3, align 8
  %2396 = inttoptr i64 %2394 to i32*
  %2397 = load i32, i32* %2396, align 4
  %2398 = sext i32 %2397 to i64
  store i64 %2398, i64* %RDX.i1148, align 8
  %2399 = shl nsw i64 %2398, 2
  %2400 = add i64 %2399, %2367
  %2401 = add i64 %2338, 43
  store i64 %2401, i64* %3, align 8
  %2402 = inttoptr i64 %2400 to i32*
  %2403 = load i32, i32* %2402, align 4
  %2404 = zext i32 %2403 to i64
  store i64 %2404, i64* %RSI.i1621, align 8
  %2405 = add i64 %2393, -36
  %2406 = add i64 %2338, 47
  store i64 %2406, i64* %3, align 8
  %2407 = inttoptr i64 %2405 to i32*
  %2408 = load i32, i32* %2407, align 4
  %2409 = sext i32 %2408 to i64
  %2410 = shl nsw i64 %2409, 6
  store i64 %2410, i64* %RCX.i1172, align 8
  %2411 = load i64, i64* %RAX.i1605, align 8
  %2412 = add i64 %2410, %2411
  store i64 %2412, i64* %RAX.i1605, align 8
  %2413 = icmp ult i64 %2412, %2411
  %2414 = icmp ult i64 %2412, %2410
  %2415 = or i1 %2413, %2414
  %2416 = zext i1 %2415 to i8
  store i8 %2416, i8* %14, align 1
  %2417 = trunc i64 %2412 to i32
  %2418 = and i32 %2417, 255
  %2419 = tail call i32 @llvm.ctpop.i32(i32 %2418)
  %2420 = trunc i32 %2419 to i8
  %2421 = and i8 %2420, 1
  %2422 = xor i8 %2421, 1
  store i8 %2422, i8* %21, align 1
  %2423 = xor i64 %2411, %2412
  %2424 = lshr i64 %2423, 4
  %2425 = trunc i64 %2424 to i8
  %2426 = and i8 %2425, 1
  store i8 %2426, i8* %26, align 1
  %2427 = icmp eq i64 %2412, 0
  %2428 = zext i1 %2427 to i8
  store i8 %2428, i8* %29, align 1
  %2429 = lshr i64 %2412, 63
  %2430 = trunc i64 %2429 to i8
  store i8 %2430, i8* %32, align 1
  %2431 = lshr i64 %2411, 63
  %2432 = lshr i64 %2409, 57
  %2433 = and i64 %2432, 1
  %2434 = xor i64 %2429, %2431
  %2435 = xor i64 %2429, %2433
  %2436 = add nuw nsw i64 %2434, %2435
  %2437 = icmp eq i64 %2436, 2
  %2438 = zext i1 %2437 to i8
  store i8 %2438, i8* %38, align 1
  %2439 = add i64 %2338, 58
  store i64 %2439, i64* %3, align 8
  %2440 = load i32, i32* %2396, align 4
  %2441 = sext i32 %2440 to i64
  store i64 %2441, i64* %RCX.i1172, align 8
  %2442 = shl nsw i64 %2441, 2
  %2443 = add i64 %2442, %2412
  %2444 = add i64 %2338, 61
  store i64 %2444, i64* %3, align 8
  %2445 = inttoptr i64 %2443 to i32*
  store i32 %2403, i32* %2445, align 4
  %2446 = load i64, i64* %RBP.i, align 8
  %2447 = add i64 %2446, -36
  %2448 = load i64, i64* %3, align 8
  %2449 = add i64 %2448, 3
  store i64 %2449, i64* %3, align 8
  %2450 = inttoptr i64 %2447 to i32*
  %2451 = load i32, i32* %2450, align 4
  %2452 = add i32 %2451, 1
  %2453 = zext i32 %2452 to i64
  store i64 %2453, i64* %RAX.i1605, align 8
  %2454 = icmp eq i32 %2451, -1
  %2455 = icmp eq i32 %2452, 0
  %2456 = or i1 %2454, %2455
  %2457 = zext i1 %2456 to i8
  store i8 %2457, i8* %14, align 1
  %2458 = and i32 %2452, 255
  %2459 = tail call i32 @llvm.ctpop.i32(i32 %2458)
  %2460 = trunc i32 %2459 to i8
  %2461 = and i8 %2460, 1
  %2462 = xor i8 %2461, 1
  store i8 %2462, i8* %21, align 1
  %2463 = xor i32 %2452, %2451
  %2464 = lshr i32 %2463, 4
  %2465 = trunc i32 %2464 to i8
  %2466 = and i8 %2465, 1
  store i8 %2466, i8* %26, align 1
  %2467 = zext i1 %2455 to i8
  store i8 %2467, i8* %29, align 1
  %2468 = lshr i32 %2452, 31
  %2469 = trunc i32 %2468 to i8
  store i8 %2469, i8* %32, align 1
  %2470 = lshr i32 %2451, 31
  %2471 = xor i32 %2468, %2470
  %2472 = add nuw nsw i32 %2471, %2468
  %2473 = icmp eq i32 %2472, 2
  %2474 = zext i1 %2473 to i8
  store i8 %2474, i8* %38, align 1
  %2475 = add i64 %2448, 9
  store i64 %2475, i64* %3, align 8
  store i32 %2452, i32* %2450, align 4
  %2476 = load i64, i64* %3, align 8
  %2477 = add i64 %2476, -80
  store i64 %2477, i64* %3, align 8
  br label %block_.L_4894cb

block_.L_489520:                                  ; preds = %block_.L_4894cb
  %2478 = add i64 %2309, -40
  %2479 = add i64 %2338, 8
  store i64 %2479, i64* %3, align 8
  %2480 = inttoptr i64 %2478 to i32*
  %2481 = load i32, i32* %2480, align 4
  %2482 = add i32 %2481, 1
  %2483 = zext i32 %2482 to i64
  store i64 %2483, i64* %RAX.i1605, align 8
  %2484 = icmp eq i32 %2481, -1
  %2485 = icmp eq i32 %2482, 0
  %2486 = or i1 %2484, %2485
  %2487 = zext i1 %2486 to i8
  store i8 %2487, i8* %14, align 1
  %2488 = and i32 %2482, 255
  %2489 = tail call i32 @llvm.ctpop.i32(i32 %2488)
  %2490 = trunc i32 %2489 to i8
  %2491 = and i8 %2490, 1
  %2492 = xor i8 %2491, 1
  store i8 %2492, i8* %21, align 1
  %2493 = xor i32 %2482, %2481
  %2494 = lshr i32 %2493, 4
  %2495 = trunc i32 %2494 to i8
  %2496 = and i8 %2495, 1
  store i8 %2496, i8* %26, align 1
  %2497 = zext i1 %2485 to i8
  store i8 %2497, i8* %29, align 1
  %2498 = lshr i32 %2482, 31
  %2499 = trunc i32 %2498 to i8
  store i8 %2499, i8* %32, align 1
  %2500 = lshr i32 %2481, 31
  %2501 = xor i32 %2498, %2500
  %2502 = add nuw nsw i32 %2501, %2498
  %2503 = icmp eq i32 %2502, 2
  %2504 = zext i1 %2503 to i8
  store i8 %2504, i8* %38, align 1
  %2505 = add i64 %2338, 14
  store i64 %2505, i64* %3, align 8
  store i32 %2482, i32* %2480, align 4
  %2506 = load i64, i64* %3, align 8
  %2507 = add i64 %2506, -116
  store i64 %2507, i64* %3, align 8
  br label %block_.L_4894ba

block_.L_489533:                                  ; preds = %block_.L_4894ba
  %2508 = add i64 %2275, -76
  %2509 = add i64 %2304, 3
  store i64 %2509, i64* %3, align 8
  %2510 = inttoptr i64 %2508 to i32*
  %2511 = load i32, i32* %2510, align 4
  %2512 = shl i32 %2511, 4
  %2513 = zext i32 %2512 to i64
  store i64 %2513, i64* %RAX.i1605, align 8
  %2514 = lshr i32 %2511, 28
  %2515 = trunc i32 %2514 to i8
  %2516 = and i8 %2515, 1
  store i8 %2516, i8* %14, align 1
  %2517 = and i32 %2512, 240
  %2518 = tail call i32 @llvm.ctpop.i32(i32 %2517)
  %2519 = trunc i32 %2518 to i8
  %2520 = and i8 %2519, 1
  %2521 = xor i8 %2520, 1
  store i8 %2521, i8* %21, align 1
  store i8 0, i8* %26, align 1
  %2522 = icmp eq i32 %2512, 0
  %2523 = zext i1 %2522 to i8
  store i8 %2523, i8* %29, align 1
  %2524 = lshr i32 %2511, 27
  %2525 = trunc i32 %2524 to i8
  %2526 = and i8 %2525, 1
  store i8 %2526, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %2527 = add i64 %2275, -8
  %2528 = add i64 %2304, 10
  store i64 %2528, i64* %3, align 8
  %2529 = inttoptr i64 %2527 to i64*
  %2530 = load i64, i64* %2529, align 8
  store i64 %2530, i64* %RCX.i1172, align 8
  %2531 = add i64 %2530, 460
  %2532 = add i64 %2304, 16
  store i64 %2532, i64* %3, align 8
  %2533 = inttoptr i64 %2531 to i32*
  %2534 = load i32, i32* %2533, align 4
  %2535 = add i32 %2534, %2512
  %2536 = zext i32 %2535 to i64
  store i64 %2536, i64* %RAX.i1605, align 8
  %2537 = icmp ult i32 %2535, %2512
  %2538 = icmp ult i32 %2535, %2534
  %2539 = or i1 %2537, %2538
  %2540 = zext i1 %2539 to i8
  store i8 %2540, i8* %14, align 1
  %2541 = and i32 %2535, 255
  %2542 = tail call i32 @llvm.ctpop.i32(i32 %2541)
  %2543 = trunc i32 %2542 to i8
  %2544 = and i8 %2543, 1
  %2545 = xor i8 %2544, 1
  store i8 %2545, i8* %21, align 1
  %2546 = xor i32 %2534, %2512
  %2547 = xor i32 %2546, %2535
  %2548 = lshr i32 %2547, 4
  %2549 = trunc i32 %2548 to i8
  %2550 = and i8 %2549, 1
  store i8 %2550, i8* %26, align 1
  %2551 = icmp eq i32 %2535, 0
  %2552 = zext i1 %2551 to i8
  store i8 %2552, i8* %29, align 1
  %2553 = lshr i32 %2535, 31
  %2554 = trunc i32 %2553 to i8
  store i8 %2554, i8* %32, align 1
  %2555 = lshr i32 %2511, 27
  %2556 = and i32 %2555, 1
  %2557 = lshr i32 %2534, 31
  %2558 = xor i32 %2553, %2556
  %2559 = xor i32 %2553, %2557
  %2560 = add nuw nsw i32 %2558, %2559
  %2561 = icmp eq i32 %2560, 2
  %2562 = zext i1 %2561 to i8
  store i8 %2562, i8* %38, align 1
  %2563 = add i64 %2304, 22
  store i64 %2563, i64* %3, align 8
  store i32 %2535, i32* %2533, align 4
  %2564 = load i64, i64* %RBP.i, align 8
  %2565 = add i64 %2564, -40
  %2566 = load i64, i64* %3, align 8
  %2567 = add i64 %2566, 7
  store i64 %2567, i64* %3, align 8
  %2568 = inttoptr i64 %2565 to i32*
  store i32 0, i32* %2568, align 4
  %2569 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %RDX.i844 = getelementptr inbounds %union.anon, %union.anon* %2569, i64 0, i32 0
  %2570 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0
  %R8D.i827 = bitcast %union.anon* %2570 to i32*
  %2571 = getelementptr inbounds %union.anon, %union.anon* %2570, i64 0, i32 0
  %2572 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 19, i32 0
  %R9D.i809 = bitcast %union.anon* %2572 to i32*
  %2573 = getelementptr inbounds %union.anon, %union.anon* %2572, i64 0, i32 0
  %2574 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 21, i32 0, i32 0
  %ECX.i635 = bitcast %union.anon* %1510 to i32*
  %DX.i527 = bitcast %union.anon* %2569 to i16*
  %CX.i52 = bitcast %union.anon* %1510 to i16*
  %.pre101 = load i64, i64* %3, align 8
  br label %block_.L_489550

block_.L_489550:                                  ; preds = %block_.L_489a83, %block_.L_489533
  %2575 = phi i64 [ %5329, %block_.L_489a83 ], [ %.pre101, %block_.L_489533 ]
  %2576 = load i64, i64* %RBP.i, align 8
  %2577 = add i64 %2576, -40
  %2578 = add i64 %2575, 4
  store i64 %2578, i64* %3, align 8
  %2579 = inttoptr i64 %2577 to i32*
  %2580 = load i32, i32* %2579, align 4
  %2581 = add i32 %2580, -16
  %2582 = icmp ult i32 %2580, 16
  %2583 = zext i1 %2582 to i8
  store i8 %2583, i8* %14, align 1
  %2584 = and i32 %2581, 255
  %2585 = tail call i32 @llvm.ctpop.i32(i32 %2584)
  %2586 = trunc i32 %2585 to i8
  %2587 = and i8 %2586, 1
  %2588 = xor i8 %2587, 1
  store i8 %2588, i8* %21, align 1
  %2589 = xor i32 %2580, 16
  %2590 = xor i32 %2589, %2581
  %2591 = lshr i32 %2590, 4
  %2592 = trunc i32 %2591 to i8
  %2593 = and i8 %2592, 1
  store i8 %2593, i8* %26, align 1
  %2594 = icmp eq i32 %2581, 0
  %2595 = zext i1 %2594 to i8
  store i8 %2595, i8* %29, align 1
  %2596 = lshr i32 %2581, 31
  %2597 = trunc i32 %2596 to i8
  store i8 %2597, i8* %32, align 1
  %2598 = lshr i32 %2580, 31
  %2599 = xor i32 %2596, %2598
  %2600 = add nuw nsw i32 %2599, %2598
  %2601 = icmp eq i32 %2600, 2
  %2602 = zext i1 %2601 to i8
  store i8 %2602, i8* %38, align 1
  %2603 = icmp ne i8 %2597, 0
  %2604 = xor i1 %2603, %2601
  %.v126 = select i1 %2604, i64 10, i64 1350
  %2605 = add i64 %2575, %.v126
  store i64 %2605, i64* %3, align 8
  br i1 %2604, label %block_48955a, label %block_.L_489a96

block_48955a:                                     ; preds = %block_.L_489550
  %2606 = add i64 %2576, -36
  %2607 = add i64 %2605, 7
  store i64 %2607, i64* %3, align 8
  %2608 = inttoptr i64 %2606 to i32*
  store i32 0, i32* %2608, align 4
  %.pre102 = load i64, i64* %3, align 8
  br label %block_.L_489561

block_.L_489561:                                  ; preds = %block_.L_489a42, %block_48955a
  %2609 = phi i64 [ %5299, %block_.L_489a42 ], [ %.pre102, %block_48955a ]
  %2610 = load i64, i64* %RBP.i, align 8
  %2611 = add i64 %2610, -36
  %2612 = add i64 %2609, 4
  store i64 %2612, i64* %3, align 8
  %2613 = inttoptr i64 %2611 to i32*
  %2614 = load i32, i32* %2613, align 4
  %2615 = add i32 %2614, -16
  %2616 = icmp ult i32 %2614, 16
  %2617 = zext i1 %2616 to i8
  store i8 %2617, i8* %14, align 1
  %2618 = and i32 %2615, 255
  %2619 = tail call i32 @llvm.ctpop.i32(i32 %2618)
  %2620 = trunc i32 %2619 to i8
  %2621 = and i8 %2620, 1
  %2622 = xor i8 %2621, 1
  store i8 %2622, i8* %21, align 1
  %2623 = xor i32 %2614, 16
  %2624 = xor i32 %2623, %2615
  %2625 = lshr i32 %2624, 4
  %2626 = trunc i32 %2625 to i8
  %2627 = and i8 %2626, 1
  store i8 %2627, i8* %26, align 1
  %2628 = icmp eq i32 %2615, 0
  %2629 = zext i1 %2628 to i8
  store i8 %2629, i8* %29, align 1
  %2630 = lshr i32 %2615, 31
  %2631 = trunc i32 %2630 to i8
  store i8 %2631, i8* %32, align 1
  %2632 = lshr i32 %2614, 31
  %2633 = xor i32 %2630, %2632
  %2634 = add nuw nsw i32 %2633, %2632
  %2635 = icmp eq i32 %2634, 2
  %2636 = zext i1 %2635 to i8
  store i8 %2636, i8* %38, align 1
  %2637 = icmp ne i8 %2631, 0
  %2638 = xor i1 %2637, %2635
  %.v = select i1 %2638, i64 10, i64 1314
  %2639 = add i64 %2609, %.v
  store i64 %2639, i64* %3, align 8
  br i1 %2638, label %block_48956b, label %block_.L_489a83

block_48956b:                                     ; preds = %block_.L_489561
  store i64 0, i64* %RAX.i1605, align 8
  store i8 0, i8* %14, align 1
  store i8 1, i8* %21, align 1
  store i8 1, i8* %29, align 1
  store i8 0, i8* %32, align 1
  store i8 0, i8* %38, align 1
  store i8 0, i8* %26, align 1
  store i64 ptrtoint (%G__0x6f8f20_type* @G__0x6f8f20 to i64), i64* %RCX.i1172, align 8
  store i64 ptrtoint (%G__0x6d2ec0_type* @G__0x6d2ec0 to i64), i64* %RDX.i844, align 8
  store i64 ptrtoint (%G__0x722ff0_type* @G__0x722ff0 to i64), i64* %RSI.i1621, align 8
  %2640 = add i64 %2639, 36
  store i64 %2640, i64* %3, align 8
  %2641 = load i32, i32* %2613, align 4
  %2642 = sext i32 %2641 to i64
  %2643 = shl nsw i64 %2642, 6
  store i64 %2643, i64* %RDI.i1624, align 8
  %2644 = add i64 %2643, ptrtoint (%G__0x722ff0_type* @G__0x722ff0 to i64)
  store i64 %2644, i64* %RSI.i1621, align 8
  %2645 = icmp ult i64 %2644, ptrtoint (%G__0x722ff0_type* @G__0x722ff0 to i64)
  %2646 = icmp ult i64 %2644, %2643
  %2647 = or i1 %2645, %2646
  %2648 = zext i1 %2647 to i8
  store i8 %2648, i8* %14, align 1
  %2649 = trunc i64 %2644 to i32
  %2650 = and i32 %2649, 248
  %2651 = tail call i32 @llvm.ctpop.i32(i32 %2650)
  %2652 = trunc i32 %2651 to i8
  %2653 = and i8 %2652, 1
  %2654 = xor i8 %2653, 1
  store i8 %2654, i8* %21, align 1
  %2655 = xor i64 %2644, ptrtoint (%G__0x722ff0_type* @G__0x722ff0 to i64)
  %2656 = lshr i64 %2655, 4
  %2657 = trunc i64 %2656 to i8
  %2658 = and i8 %2657, 1
  store i8 %2658, i8* %26, align 1
  %2659 = icmp eq i64 %2644, 0
  %2660 = zext i1 %2659 to i8
  store i8 %2660, i8* %29, align 1
  %2661 = lshr i64 %2644, 63
  %2662 = trunc i64 %2661 to i8
  store i8 %2662, i8* %32, align 1
  %2663 = lshr i64 %2642, 57
  %2664 = and i64 %2663, 1
  %2665 = xor i64 %2661, lshr (i64 ptrtoint (%G__0x722ff0_type* @G__0x722ff0 to i64), i64 63)
  %2666 = xor i64 %2661, %2664
  %2667 = add nuw nsw i64 %2665, %2666
  %2668 = icmp eq i64 %2667, 2
  %2669 = zext i1 %2668 to i8
  store i8 %2669, i8* %38, align 1
  %2670 = add i64 %2610, -40
  %2671 = add i64 %2639, 47
  store i64 %2671, i64* %3, align 8
  %2672 = inttoptr i64 %2670 to i32*
  %2673 = load i32, i32* %2672, align 4
  %2674 = sext i32 %2673 to i64
  store i64 %2674, i64* %RDI.i1624, align 8
  %2675 = shl nsw i64 %2674, 2
  %2676 = add i64 %2675, %2644
  %2677 = add i64 %2639, 51
  store i64 %2677, i64* %3, align 8
  %2678 = inttoptr i64 %2676 to i32*
  %2679 = load i32, i32* %2678, align 4
  %2680 = zext i32 %2679 to i64
  store i64 %2680, i64* %2571, align 8
  %2681 = load i64, i64* %RBP.i, align 8
  %2682 = add i64 %2681, -36
  %2683 = add i64 %2639, 55
  store i64 %2683, i64* %3, align 8
  %2684 = inttoptr i64 %2682 to i32*
  %2685 = load i32, i32* %2684, align 4
  %2686 = sext i32 %2685 to i64
  %2687 = shl nsw i64 %2686, 6
  store i64 %2687, i64* %RSI.i1621, align 8
  %2688 = load i64, i64* %RDX.i844, align 8
  %2689 = add i64 %2687, %2688
  store i64 %2689, i64* %RDI.i1624, align 8
  %2690 = icmp ult i64 %2689, %2688
  %2691 = icmp ult i64 %2689, %2687
  %2692 = or i1 %2690, %2691
  %2693 = zext i1 %2692 to i8
  store i8 %2693, i8* %14, align 1
  %2694 = trunc i64 %2689 to i32
  %2695 = and i32 %2694, 255
  %2696 = tail call i32 @llvm.ctpop.i32(i32 %2695)
  %2697 = trunc i32 %2696 to i8
  %2698 = and i8 %2697, 1
  %2699 = xor i8 %2698, 1
  store i8 %2699, i8* %21, align 1
  %2700 = xor i64 %2688, %2689
  %2701 = lshr i64 %2700, 4
  %2702 = trunc i64 %2701 to i8
  %2703 = and i8 %2702, 1
  store i8 %2703, i8* %26, align 1
  %2704 = icmp eq i64 %2689, 0
  %2705 = zext i1 %2704 to i8
  store i8 %2705, i8* %29, align 1
  %2706 = lshr i64 %2689, 63
  %2707 = trunc i64 %2706 to i8
  store i8 %2707, i8* %32, align 1
  %2708 = lshr i64 %2688, 63
  %2709 = lshr i64 %2686, 57
  %2710 = and i64 %2709, 1
  %2711 = xor i64 %2706, %2708
  %2712 = xor i64 %2706, %2710
  %2713 = add nuw nsw i64 %2711, %2712
  %2714 = icmp eq i64 %2713, 2
  %2715 = zext i1 %2714 to i8
  store i8 %2715, i8* %38, align 1
  %2716 = add i64 %2681, -40
  %2717 = add i64 %2639, 69
  store i64 %2717, i64* %3, align 8
  %2718 = inttoptr i64 %2716 to i32*
  %2719 = load i32, i32* %2718, align 4
  %2720 = sext i32 %2719 to i64
  store i64 %2720, i64* %RSI.i1621, align 8
  %2721 = shl nsw i64 %2720, 2
  %2722 = add i64 %2721, %2689
  %2723 = add i64 %2639, 73
  store i64 %2723, i64* %3, align 8
  %2724 = inttoptr i64 %2722 to i32*
  %2725 = load i32, i32* %2724, align 4
  %2726 = zext i32 %2725 to i64
  %2727 = shl nuw i64 %2726, 32
  %2728 = ashr i64 %2727, 33
  %2729 = and i64 %2728, 4294967295
  store i64 %2729, i64* %2573, align 8
  %2730 = load i32, i32* %R8D.i827, align 4
  %2731 = trunc i64 %2728 to i32
  %2732 = sub i32 %2730, %2731
  %2733 = zext i32 %2732 to i64
  store i64 %2733, i64* %2571, align 8
  %2734 = icmp ult i32 %2730, %2731
  %2735 = zext i1 %2734 to i8
  store i8 %2735, i8* %14, align 1
  %2736 = and i32 %2732, 255
  %2737 = tail call i32 @llvm.ctpop.i32(i32 %2736)
  %2738 = trunc i32 %2737 to i8
  %2739 = and i8 %2738, 1
  %2740 = xor i8 %2739, 1
  store i8 %2740, i8* %21, align 1
  %2741 = xor i32 %2731, %2730
  %2742 = xor i32 %2741, %2732
  %2743 = lshr i32 %2742, 4
  %2744 = trunc i32 %2743 to i8
  %2745 = and i8 %2744, 1
  store i8 %2745, i8* %26, align 1
  %2746 = icmp eq i32 %2732, 0
  %2747 = zext i1 %2746 to i8
  store i8 %2747, i8* %29, align 1
  %2748 = lshr i32 %2732, 31
  %2749 = trunc i32 %2748 to i8
  store i8 %2749, i8* %32, align 1
  %2750 = lshr i32 %2730, 31
  %2751 = lshr i64 %2728, 31
  %2752 = trunc i64 %2751 to i32
  %2753 = and i32 %2752, 1
  %2754 = xor i32 %2753, %2750
  %2755 = xor i32 %2748, %2750
  %2756 = add nuw nsw i32 %2755, %2754
  %2757 = icmp eq i32 %2756, 2
  %2758 = zext i1 %2757 to i8
  store i8 %2758, i8* %38, align 1
  %2759 = load i64, i64* %RBP.i, align 8
  %2760 = add i64 %2759, -44
  %2761 = add i64 %2639, 83
  store i64 %2761, i64* %3, align 8
  %2762 = inttoptr i64 %2760 to i32*
  store i32 %2732, i32* %2762, align 4
  %2763 = load i64, i64* %RBP.i, align 8
  %2764 = add i64 %2763, -36
  %2765 = load i64, i64* %3, align 8
  %2766 = add i64 %2765, 4
  store i64 %2766, i64* %3, align 8
  %2767 = inttoptr i64 %2764 to i32*
  %2768 = load i32, i32* %2767, align 4
  %2769 = sext i32 %2768 to i64
  %2770 = shl nsw i64 %2769, 6
  store i64 %2770, i64* %RSI.i1621, align 8
  %2771 = load i64, i64* %RDX.i844, align 8
  %2772 = add i64 %2770, %2771
  store i64 %2772, i64* %RDX.i844, align 8
  %2773 = icmp ult i64 %2772, %2771
  %2774 = icmp ult i64 %2772, %2770
  %2775 = or i1 %2773, %2774
  %2776 = zext i1 %2775 to i8
  store i8 %2776, i8* %14, align 1
  %2777 = trunc i64 %2772 to i32
  %2778 = and i32 %2777, 255
  %2779 = tail call i32 @llvm.ctpop.i32(i32 %2778)
  %2780 = trunc i32 %2779 to i8
  %2781 = and i8 %2780, 1
  %2782 = xor i8 %2781, 1
  store i8 %2782, i8* %21, align 1
  %2783 = xor i64 %2771, %2772
  %2784 = lshr i64 %2783, 4
  %2785 = trunc i64 %2784 to i8
  %2786 = and i8 %2785, 1
  store i8 %2786, i8* %26, align 1
  %2787 = icmp eq i64 %2772, 0
  %2788 = zext i1 %2787 to i8
  store i8 %2788, i8* %29, align 1
  %2789 = lshr i64 %2772, 63
  %2790 = trunc i64 %2789 to i8
  store i8 %2790, i8* %32, align 1
  %2791 = lshr i64 %2771, 63
  %2792 = lshr i64 %2769, 57
  %2793 = and i64 %2792, 1
  %2794 = xor i64 %2789, %2791
  %2795 = xor i64 %2789, %2793
  %2796 = add nuw nsw i64 %2794, %2795
  %2797 = icmp eq i64 %2796, 2
  %2798 = zext i1 %2797 to i8
  store i8 %2798, i8* %38, align 1
  %2799 = add i64 %2763, -40
  %2800 = add i64 %2765, 15
  store i64 %2800, i64* %3, align 8
  %2801 = inttoptr i64 %2799 to i32*
  %2802 = load i32, i32* %2801, align 4
  %2803 = sext i32 %2802 to i64
  store i64 %2803, i64* %RSI.i1621, align 8
  %2804 = shl nsw i64 %2803, 2
  %2805 = add i64 %2804, %2772
  %2806 = add i64 %2765, 19
  store i64 %2806, i64* %3, align 8
  %2807 = inttoptr i64 %2805 to i32*
  %2808 = load i32, i32* %2807, align 4
  %2809 = zext i32 %2808 to i64
  store i64 %2809, i64* %2571, align 8
  %2810 = add i64 %2763, -44
  %2811 = add i64 %2765, 23
  store i64 %2811, i64* %3, align 8
  %2812 = inttoptr i64 %2810 to i32*
  %2813 = load i32, i32* %2812, align 4
  %2814 = add i32 %2813, %2808
  %2815 = zext i32 %2814 to i64
  store i64 %2815, i64* %2571, align 8
  %2816 = icmp ult i32 %2814, %2808
  %2817 = icmp ult i32 %2814, %2813
  %2818 = or i1 %2816, %2817
  %2819 = zext i1 %2818 to i8
  store i8 %2819, i8* %14, align 1
  %2820 = and i32 %2814, 255
  %2821 = tail call i32 @llvm.ctpop.i32(i32 %2820)
  %2822 = trunc i32 %2821 to i8
  %2823 = and i8 %2822, 1
  %2824 = xor i8 %2823, 1
  store i8 %2824, i8* %21, align 1
  %2825 = xor i32 %2813, %2808
  %2826 = xor i32 %2825, %2814
  %2827 = lshr i32 %2826, 4
  %2828 = trunc i32 %2827 to i8
  %2829 = and i8 %2828, 1
  store i8 %2829, i8* %26, align 1
  %2830 = icmp eq i32 %2814, 0
  %2831 = zext i1 %2830 to i8
  store i8 %2831, i8* %29, align 1
  %2832 = lshr i32 %2814, 31
  %2833 = trunc i32 %2832 to i8
  store i8 %2833, i8* %32, align 1
  %2834 = lshr i32 %2808, 31
  %2835 = lshr i32 %2813, 31
  %2836 = xor i32 %2832, %2834
  %2837 = xor i32 %2832, %2835
  %2838 = add nuw nsw i32 %2836, %2837
  %2839 = icmp eq i32 %2838, 2
  %2840 = zext i1 %2839 to i8
  store i8 %2840, i8* %38, align 1
  %2841 = load i64, i64* %RBP.i, align 8
  %2842 = add i64 %2841, -24
  %2843 = add i64 %2765, 27
  store i64 %2843, i64* %3, align 8
  %2844 = inttoptr i64 %2842 to i32*
  store i32 %2814, i32* %2844, align 4
  %2845 = load i64, i64* %RBP.i, align 8
  %2846 = add i64 %2845, -44
  %2847 = load i64, i64* %3, align 8
  %2848 = add i64 %2847, 4
  store i64 %2848, i64* %3, align 8
  %2849 = inttoptr i64 %2846 to i32*
  %2850 = load i32, i32* %2849, align 4
  %2851 = zext i32 %2850 to i64
  store i64 %2851, i64* %2571, align 8
  %2852 = add i64 %2845, -36
  %2853 = add i64 %2847, 8
  store i64 %2853, i64* %3, align 8
  %2854 = inttoptr i64 %2852 to i32*
  %2855 = load i32, i32* %2854, align 4
  %2856 = sext i32 %2855 to i64
  %2857 = shl nsw i64 %2856, 6
  store i64 %2857, i64* %RDX.i844, align 8
  %2858 = load i64, i64* %RCX.i1172, align 8
  %2859 = add i64 %2857, %2858
  store i64 %2859, i64* %RSI.i1621, align 8
  %2860 = icmp ult i64 %2859, %2858
  %2861 = icmp ult i64 %2859, %2857
  %2862 = or i1 %2860, %2861
  %2863 = zext i1 %2862 to i8
  store i8 %2863, i8* %14, align 1
  %2864 = trunc i64 %2859 to i32
  %2865 = and i32 %2864, 255
  %2866 = tail call i32 @llvm.ctpop.i32(i32 %2865)
  %2867 = trunc i32 %2866 to i8
  %2868 = and i8 %2867, 1
  %2869 = xor i8 %2868, 1
  store i8 %2869, i8* %21, align 1
  %2870 = xor i64 %2858, %2859
  %2871 = lshr i64 %2870, 4
  %2872 = trunc i64 %2871 to i8
  %2873 = and i8 %2872, 1
  store i8 %2873, i8* %26, align 1
  %2874 = icmp eq i64 %2859, 0
  %2875 = zext i1 %2874 to i8
  store i8 %2875, i8* %29, align 1
  %2876 = lshr i64 %2859, 63
  %2877 = trunc i64 %2876 to i8
  store i8 %2877, i8* %32, align 1
  %2878 = lshr i64 %2858, 63
  %2879 = lshr i64 %2856, 57
  %2880 = and i64 %2879, 1
  %2881 = xor i64 %2876, %2878
  %2882 = xor i64 %2876, %2880
  %2883 = add nuw nsw i64 %2881, %2882
  %2884 = icmp eq i64 %2883, 2
  %2885 = zext i1 %2884 to i8
  store i8 %2885, i8* %38, align 1
  %2886 = add i64 %2845, -40
  %2887 = add i64 %2847, 22
  store i64 %2887, i64* %3, align 8
  %2888 = inttoptr i64 %2886 to i32*
  %2889 = load i32, i32* %2888, align 4
  %2890 = sext i32 %2889 to i64
  store i64 %2890, i64* %RDX.i844, align 8
  %2891 = shl nsw i64 %2890, 2
  %2892 = add i64 %2891, %2859
  %2893 = add i64 %2847, 26
  store i64 %2893, i64* %3, align 8
  %2894 = inttoptr i64 %2892 to i32*
  %2895 = load i32, i32* %2894, align 4
  %2896 = zext i32 %2895 to i64
  %2897 = shl nuw i64 %2896, 32
  %2898 = ashr i64 %2897, 33
  %2899 = and i64 %2898, 4294967295
  store i64 %2899, i64* %2573, align 8
  %2900 = load i32, i32* %R8D.i827, align 4
  %2901 = trunc i64 %2898 to i32
  %2902 = sub i32 %2900, %2901
  %2903 = zext i32 %2902 to i64
  store i64 %2903, i64* %2571, align 8
  %2904 = icmp ult i32 %2900, %2901
  %2905 = zext i1 %2904 to i8
  store i8 %2905, i8* %14, align 1
  %2906 = and i32 %2902, 255
  %2907 = tail call i32 @llvm.ctpop.i32(i32 %2906)
  %2908 = trunc i32 %2907 to i8
  %2909 = and i8 %2908, 1
  %2910 = xor i8 %2909, 1
  store i8 %2910, i8* %21, align 1
  %2911 = xor i32 %2901, %2900
  %2912 = xor i32 %2911, %2902
  %2913 = lshr i32 %2912, 4
  %2914 = trunc i32 %2913 to i8
  %2915 = and i8 %2914, 1
  store i8 %2915, i8* %26, align 1
  %2916 = icmp eq i32 %2902, 0
  %2917 = zext i1 %2916 to i8
  store i8 %2917, i8* %29, align 1
  %2918 = lshr i32 %2902, 31
  %2919 = trunc i32 %2918 to i8
  store i8 %2919, i8* %32, align 1
  %2920 = lshr i32 %2900, 31
  %2921 = lshr i64 %2898, 31
  %2922 = trunc i64 %2921 to i32
  %2923 = and i32 %2922, 1
  %2924 = xor i32 %2923, %2920
  %2925 = xor i32 %2918, %2920
  %2926 = add nuw nsw i32 %2925, %2924
  %2927 = icmp eq i32 %2926, 2
  %2928 = zext i1 %2927 to i8
  store i8 %2928, i8* %38, align 1
  %2929 = load i64, i64* %RBP.i, align 8
  %2930 = add i64 %2929, -28
  %2931 = add i64 %2847, 36
  store i64 %2931, i64* %3, align 8
  %2932 = inttoptr i64 %2930 to i32*
  store i32 %2902, i32* %2932, align 4
  %2933 = load i64, i64* %RBP.i, align 8
  %2934 = add i64 %2933, -28
  %2935 = load i64, i64* %3, align 8
  %2936 = add i64 %2935, 4
  store i64 %2936, i64* %3, align 8
  %2937 = inttoptr i64 %2934 to i32*
  %2938 = load i32, i32* %2937, align 4
  %2939 = zext i32 %2938 to i64
  store i64 %2939, i64* %2571, align 8
  %2940 = add i64 %2933, -36
  %2941 = add i64 %2935, 8
  store i64 %2941, i64* %3, align 8
  %2942 = inttoptr i64 %2940 to i32*
  %2943 = load i32, i32* %2942, align 4
  %2944 = sext i32 %2943 to i64
  %2945 = shl nsw i64 %2944, 6
  store i64 %2945, i64* %RDX.i844, align 8
  %2946 = load i64, i64* %RCX.i1172, align 8
  %2947 = add i64 %2945, %2946
  store i64 %2947, i64* %RCX.i1172, align 8
  %2948 = icmp ult i64 %2947, %2946
  %2949 = icmp ult i64 %2947, %2945
  %2950 = or i1 %2948, %2949
  %2951 = zext i1 %2950 to i8
  store i8 %2951, i8* %14, align 1
  %2952 = trunc i64 %2947 to i32
  %2953 = and i32 %2952, 255
  %2954 = tail call i32 @llvm.ctpop.i32(i32 %2953)
  %2955 = trunc i32 %2954 to i8
  %2956 = and i8 %2955, 1
  %2957 = xor i8 %2956, 1
  store i8 %2957, i8* %21, align 1
  %2958 = xor i64 %2946, %2947
  %2959 = lshr i64 %2958, 4
  %2960 = trunc i64 %2959 to i8
  %2961 = and i8 %2960, 1
  store i8 %2961, i8* %26, align 1
  %2962 = icmp eq i64 %2947, 0
  %2963 = zext i1 %2962 to i8
  store i8 %2963, i8* %29, align 1
  %2964 = lshr i64 %2947, 63
  %2965 = trunc i64 %2964 to i8
  store i8 %2965, i8* %32, align 1
  %2966 = lshr i64 %2946, 63
  %2967 = lshr i64 %2944, 57
  %2968 = and i64 %2967, 1
  %2969 = xor i64 %2964, %2966
  %2970 = xor i64 %2964, %2968
  %2971 = add nuw nsw i64 %2969, %2970
  %2972 = icmp eq i64 %2971, 2
  %2973 = zext i1 %2972 to i8
  store i8 %2973, i8* %38, align 1
  %2974 = add i64 %2933, -40
  %2975 = add i64 %2935, 19
  store i64 %2975, i64* %3, align 8
  %2976 = inttoptr i64 %2974 to i32*
  %2977 = load i32, i32* %2976, align 4
  %2978 = sext i32 %2977 to i64
  store i64 %2978, i64* %RDX.i844, align 8
  %2979 = shl nsw i64 %2978, 2
  %2980 = add i64 %2947, %2979
  %2981 = add i64 %2935, 23
  store i64 %2981, i64* %3, align 8
  %2982 = inttoptr i64 %2980 to i32*
  %2983 = load i32, i32* %2982, align 4
  %2984 = add i32 %2983, %2938
  %2985 = zext i32 %2984 to i64
  store i64 %2985, i64* %2571, align 8
  %2986 = icmp ult i32 %2984, %2938
  %2987 = icmp ult i32 %2984, %2983
  %2988 = or i1 %2986, %2987
  %2989 = zext i1 %2988 to i8
  store i8 %2989, i8* %14, align 1
  %2990 = and i32 %2984, 255
  %2991 = tail call i32 @llvm.ctpop.i32(i32 %2990)
  %2992 = trunc i32 %2991 to i8
  %2993 = and i8 %2992, 1
  %2994 = xor i8 %2993, 1
  store i8 %2994, i8* %21, align 1
  %2995 = xor i32 %2983, %2938
  %2996 = xor i32 %2995, %2984
  %2997 = lshr i32 %2996, 4
  %2998 = trunc i32 %2997 to i8
  %2999 = and i8 %2998, 1
  store i8 %2999, i8* %26, align 1
  %3000 = icmp eq i32 %2984, 0
  %3001 = zext i1 %3000 to i8
  store i8 %3001, i8* %29, align 1
  %3002 = lshr i32 %2984, 31
  %3003 = trunc i32 %3002 to i8
  store i8 %3003, i8* %32, align 1
  %3004 = lshr i32 %2938, 31
  %3005 = lshr i32 %2983, 31
  %3006 = xor i32 %3002, %3004
  %3007 = xor i32 %3002, %3005
  %3008 = add nuw nsw i32 %3006, %3007
  %3009 = icmp eq i32 %3008, 2
  %3010 = zext i1 %3009 to i8
  store i8 %3010, i8* %38, align 1
  %3011 = load i64, i64* %RBP.i, align 8
  %3012 = add i64 %3011, -20
  %3013 = add i64 %2935, 27
  store i64 %3013, i64* %3, align 8
  %3014 = inttoptr i64 %3012 to i32*
  store i32 %2984, i32* %3014, align 4
  %3015 = load i64, i64* %3, align 8
  %3016 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*), align 8
  store i64 %3016, i64* %RCX.i1172, align 8
  %3017 = add i64 %3016, 72688
  %3018 = add i64 %3015, 15
  store i64 %3018, i64* %3, align 8
  %3019 = inttoptr i64 %3017 to i32*
  %3020 = load i32, i32* %3019, align 4
  %3021 = zext i32 %3020 to i64
  store i64 %3021, i64* %2571, align 8
  %3022 = load i64, i64* %RBP.i, align 8
  %3023 = add i64 %3022, -28
  %3024 = add i64 %3015, 19
  store i64 %3024, i64* %3, align 8
  %3025 = inttoptr i64 %3023 to i32*
  %3026 = load i32, i32* %3025, align 4
  %3027 = zext i32 %3026 to i64
  store i64 %3027, i64* %2573, align 8
  %3028 = add i64 %3016, 8504
  store i64 %3028, i64* %RCX.i1172, align 8
  %3029 = icmp ugt i64 %3016, -8505
  %3030 = zext i1 %3029 to i8
  store i8 %3030, i8* %14, align 1
  %3031 = trunc i64 %3028 to i32
  %3032 = and i32 %3031, 255
  %3033 = tail call i32 @llvm.ctpop.i32(i32 %3032)
  %3034 = trunc i32 %3033 to i8
  %3035 = and i8 %3034, 1
  %3036 = xor i8 %3035, 1
  store i8 %3036, i8* %21, align 1
  %3037 = xor i64 %3016, 16
  %3038 = xor i64 %3037, %3028
  %3039 = lshr i64 %3038, 4
  %3040 = trunc i64 %3039 to i8
  %3041 = and i8 %3040, 1
  store i8 %3041, i8* %26, align 1
  %3042 = icmp eq i64 %3028, 0
  %3043 = zext i1 %3042 to i8
  store i8 %3043, i8* %29, align 1
  %3044 = lshr i64 %3028, 63
  %3045 = trunc i64 %3044 to i8
  store i8 %3045, i8* %32, align 1
  %3046 = lshr i64 %3016, 63
  %3047 = xor i64 %3044, %3046
  %3048 = add nuw nsw i64 %3047, %3044
  %3049 = icmp eq i64 %3048, 2
  %3050 = zext i1 %3049 to i8
  store i8 %3050, i8* %38, align 1
  %3051 = add i64 %3022, -32
  %3052 = add i64 %3015, 38
  store i64 %3052, i64* %3, align 8
  %3053 = inttoptr i64 %3051 to i32*
  %3054 = load i32, i32* %3053, align 4
  %3055 = sext i32 %3054 to i64
  %3056 = shl nsw i64 %3055, 9
  store i64 %3056, i64* %RDX.i844, align 8
  %3057 = add i64 %3056, %3028
  store i64 %3057, i64* %RCX.i1172, align 8
  %3058 = icmp ult i64 %3057, %3028
  %3059 = icmp ult i64 %3057, %3056
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
  %3068 = xor i64 %3028, %3057
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
  %3076 = lshr i64 %3055, 54
  %3077 = and i64 %3076, 1
  %3078 = xor i64 %3074, %3044
  %3079 = xor i64 %3074, %3077
  %3080 = add nuw nsw i64 %3078, %3079
  %3081 = icmp eq i64 %3080, 2
  %3082 = zext i1 %3081 to i8
  store i8 %3082, i8* %38, align 1
  %3083 = load i64, i64* %RBP.i, align 8
  %3084 = add i64 %3083, -36
  %3085 = add i64 %3015, 49
  store i64 %3085, i64* %3, align 8
  %3086 = inttoptr i64 %3084 to i32*
  %3087 = load i32, i32* %3086, align 4
  %3088 = sext i32 %3087 to i64
  %3089 = shl nsw i64 %3088, 5
  store i64 %3089, i64* %RDX.i844, align 8
  %3090 = add i64 %3089, %3057
  store i64 %3090, i64* %RCX.i1172, align 8
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
  %3109 = lshr i64 %3088, 58
  %3110 = and i64 %3109, 1
  %3111 = xor i64 %3107, %3074
  %3112 = xor i64 %3107, %3110
  %3113 = add nuw nsw i64 %3111, %3112
  %3114 = icmp eq i64 %3113, 2
  %3115 = zext i1 %3114 to i8
  store i8 %3115, i8* %38, align 1
  %3116 = add i64 %3083, -40
  %3117 = add i64 %3015, 60
  store i64 %3117, i64* %3, align 8
  %3118 = inttoptr i64 %3116 to i32*
  %3119 = load i32, i32* %3118, align 4
  %3120 = sext i32 %3119 to i64
  store i64 %3120, i64* %RDX.i844, align 8
  %3121 = shl nsw i64 %3120, 1
  %3122 = add i64 %3121, %3090
  %3123 = add i64 %3015, 65
  store i64 %3123, i64* %3, align 8
  %3124 = inttoptr i64 %3122 to i16*
  %3125 = load i16, i16* %3124, align 2
  %3126 = zext i16 %3125 to i64
  store i64 %3126, i64* %2574, align 8
  %3127 = load i32, i32* %R9D.i809, align 4
  %3128 = zext i16 %3125 to i32
  %3129 = add i32 %3128, %3127
  %3130 = zext i32 %3129 to i64
  store i64 %3130, i64* %2573, align 8
  %3131 = lshr i32 %3129, 31
  %3132 = load i32, i32* %EAX.i1602, align 4
  %3133 = sub i32 %3132, %3129
  %3134 = icmp ult i32 %3132, %3129
  %3135 = zext i1 %3134 to i8
  store i8 %3135, i8* %14, align 1
  %3136 = and i32 %3133, 255
  %3137 = tail call i32 @llvm.ctpop.i32(i32 %3136)
  %3138 = trunc i32 %3137 to i8
  %3139 = and i8 %3138, 1
  %3140 = xor i8 %3139, 1
  store i8 %3140, i8* %21, align 1
  %3141 = xor i32 %3129, %3132
  %3142 = xor i32 %3141, %3133
  %3143 = lshr i32 %3142, 4
  %3144 = trunc i32 %3143 to i8
  %3145 = and i8 %3144, 1
  store i8 %3145, i8* %26, align 1
  %3146 = icmp eq i32 %3133, 0
  %3147 = zext i1 %3146 to i8
  store i8 %3147, i8* %29, align 1
  %3148 = lshr i32 %3133, 31
  %3149 = trunc i32 %3148 to i8
  store i8 %3149, i8* %32, align 1
  %3150 = lshr i32 %3132, 31
  %3151 = xor i32 %3131, %3150
  %3152 = xor i32 %3148, %3150
  %3153 = add nuw nsw i32 %3152, %3151
  %3154 = icmp eq i32 %3153, 2
  %3155 = zext i1 %3154 to i8
  store i8 %3155, i8* %38, align 1
  %3156 = load i64, i64* %RBP.i, align 8
  %3157 = add i64 %3156, -84
  %3158 = load i32, i32* %R8D.i827, align 4
  %3159 = add i64 %3015, 75
  store i64 %3159, i64* %3, align 8
  %3160 = inttoptr i64 %3157 to i32*
  store i32 %3158, i32* %3160, align 4
  %3161 = load i64, i64* %3, align 8
  %3162 = load i8, i8* %29, align 1
  %3163 = icmp ne i8 %3162, 0
  %3164 = load i8, i8* %32, align 1
  %3165 = icmp ne i8 %3164, 0
  %3166 = load i8, i8* %38, align 1
  %3167 = icmp ne i8 %3166, 0
  %3168 = xor i1 %3165, %3167
  %3169 = or i1 %3163, %3168
  %.v150 = select i1 %3169, i64 16, i64 6
  %3170 = add i64 %3161, %.v150
  store i64 %3170, i64* %3, align 8
  br i1 %3169, label %block_.L_489675, label %block_48966b

block_48966b:                                     ; preds = %block_48956b
  store i64 0, i64* %RAX.i1605, align 8
  store i8 0, i8* %14, align 1
  store i8 1, i8* %21, align 1
  store i8 1, i8* %29, align 1
  store i8 0, i8* %32, align 1
  store i8 0, i8* %38, align 1
  store i8 0, i8* %26, align 1
  %3171 = load i64, i64* %RBP.i, align 8
  %3172 = add i64 %3171, -88
  %3173 = add i64 %3170, 5
  store i64 %3173, i64* %3, align 8
  %3174 = inttoptr i64 %3172 to i32*
  store i32 0, i32* %3174, align 4
  %3175 = load i64, i64* %3, align 8
  %3176 = add i64 %3175, 58
  store i64 %3176, i64* %3, align 8
  br label %block_.L_4896aa

block_.L_489675:                                  ; preds = %block_48956b
  %3177 = load i64, i64* %RBP.i, align 8
  %3178 = add i64 %3177, -28
  %3179 = add i64 %3170, 3
  store i64 %3179, i64* %3, align 8
  %3180 = inttoptr i64 %3178 to i32*
  %3181 = load i32, i32* %3180, align 4
  %3182 = zext i32 %3181 to i64
  store i64 %3182, i64* %RAX.i1605, align 8
  %3183 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*), align 8
  %3184 = add i64 %3183, 8504
  store i64 %3184, i64* %RCX.i1172, align 8
  %3185 = icmp ugt i64 %3183, -8505
  %3186 = zext i1 %3185 to i8
  store i8 %3186, i8* %14, align 1
  %3187 = trunc i64 %3184 to i32
  %3188 = and i32 %3187, 255
  %3189 = tail call i32 @llvm.ctpop.i32(i32 %3188)
  %3190 = trunc i32 %3189 to i8
  %3191 = and i8 %3190, 1
  %3192 = xor i8 %3191, 1
  store i8 %3192, i8* %21, align 1
  %3193 = xor i64 %3183, 16
  %3194 = xor i64 %3193, %3184
  %3195 = lshr i64 %3194, 4
  %3196 = trunc i64 %3195 to i8
  %3197 = and i8 %3196, 1
  store i8 %3197, i8* %26, align 1
  %3198 = icmp eq i64 %3184, 0
  %3199 = zext i1 %3198 to i8
  store i8 %3199, i8* %29, align 1
  %3200 = lshr i64 %3184, 63
  %3201 = trunc i64 %3200 to i8
  store i8 %3201, i8* %32, align 1
  %3202 = lshr i64 %3183, 63
  %3203 = xor i64 %3200, %3202
  %3204 = add nuw nsw i64 %3203, %3200
  %3205 = icmp eq i64 %3204, 2
  %3206 = zext i1 %3205 to i8
  store i8 %3206, i8* %38, align 1
  %3207 = add i64 %3177, -32
  %3208 = add i64 %3170, 22
  store i64 %3208, i64* %3, align 8
  %3209 = inttoptr i64 %3207 to i32*
  %3210 = load i32, i32* %3209, align 4
  %3211 = sext i32 %3210 to i64
  %3212 = shl nsw i64 %3211, 9
  store i64 %3212, i64* %RDX.i844, align 8
  %3213 = add i64 %3212, %3184
  store i64 %3213, i64* %RCX.i1172, align 8
  %3214 = icmp ult i64 %3213, %3184
  %3215 = icmp ult i64 %3213, %3212
  %3216 = or i1 %3214, %3215
  %3217 = zext i1 %3216 to i8
  store i8 %3217, i8* %14, align 1
  %3218 = trunc i64 %3213 to i32
  %3219 = and i32 %3218, 255
  %3220 = tail call i32 @llvm.ctpop.i32(i32 %3219)
  %3221 = trunc i32 %3220 to i8
  %3222 = and i8 %3221, 1
  %3223 = xor i8 %3222, 1
  store i8 %3223, i8* %21, align 1
  %3224 = xor i64 %3184, %3213
  %3225 = lshr i64 %3224, 4
  %3226 = trunc i64 %3225 to i8
  %3227 = and i8 %3226, 1
  store i8 %3227, i8* %26, align 1
  %3228 = icmp eq i64 %3213, 0
  %3229 = zext i1 %3228 to i8
  store i8 %3229, i8* %29, align 1
  %3230 = lshr i64 %3213, 63
  %3231 = trunc i64 %3230 to i8
  store i8 %3231, i8* %32, align 1
  %3232 = lshr i64 %3211, 54
  %3233 = and i64 %3232, 1
  %3234 = xor i64 %3230, %3200
  %3235 = xor i64 %3230, %3233
  %3236 = add nuw nsw i64 %3234, %3235
  %3237 = icmp eq i64 %3236, 2
  %3238 = zext i1 %3237 to i8
  store i8 %3238, i8* %38, align 1
  %3239 = load i64, i64* %RBP.i, align 8
  %3240 = add i64 %3239, -36
  %3241 = add i64 %3170, 33
  store i64 %3241, i64* %3, align 8
  %3242 = inttoptr i64 %3240 to i32*
  %3243 = load i32, i32* %3242, align 4
  %3244 = sext i32 %3243 to i64
  %3245 = shl nsw i64 %3244, 5
  store i64 %3245, i64* %RDX.i844, align 8
  %3246 = add i64 %3245, %3213
  store i64 %3246, i64* %RCX.i1172, align 8
  %3247 = icmp ult i64 %3246, %3213
  %3248 = icmp ult i64 %3246, %3245
  %3249 = or i1 %3247, %3248
  %3250 = zext i1 %3249 to i8
  store i8 %3250, i8* %14, align 1
  %3251 = trunc i64 %3246 to i32
  %3252 = and i32 %3251, 255
  %3253 = tail call i32 @llvm.ctpop.i32(i32 %3252)
  %3254 = trunc i32 %3253 to i8
  %3255 = and i8 %3254, 1
  %3256 = xor i8 %3255, 1
  store i8 %3256, i8* %21, align 1
  %3257 = xor i64 %3213, %3246
  %3258 = lshr i64 %3257, 4
  %3259 = trunc i64 %3258 to i8
  %3260 = and i8 %3259, 1
  store i8 %3260, i8* %26, align 1
  %3261 = icmp eq i64 %3246, 0
  %3262 = zext i1 %3261 to i8
  store i8 %3262, i8* %29, align 1
  %3263 = lshr i64 %3246, 63
  %3264 = trunc i64 %3263 to i8
  store i8 %3264, i8* %32, align 1
  %3265 = lshr i64 %3244, 58
  %3266 = and i64 %3265, 1
  %3267 = xor i64 %3263, %3230
  %3268 = xor i64 %3263, %3266
  %3269 = add nuw nsw i64 %3267, %3268
  %3270 = icmp eq i64 %3269, 2
  %3271 = zext i1 %3270 to i8
  store i8 %3271, i8* %38, align 1
  %3272 = add i64 %3239, -40
  %3273 = add i64 %3170, 44
  store i64 %3273, i64* %3, align 8
  %3274 = inttoptr i64 %3272 to i32*
  %3275 = load i32, i32* %3274, align 4
  %3276 = sext i32 %3275 to i64
  store i64 %3276, i64* %RDX.i844, align 8
  %3277 = shl nsw i64 %3276, 1
  %3278 = add i64 %3277, %3246
  %3279 = add i64 %3170, 48
  store i64 %3279, i64* %3, align 8
  %3280 = inttoptr i64 %3278 to i16*
  %3281 = load i16, i16* %3280, align 2
  %3282 = zext i16 %3281 to i64
  store i64 %3282, i64* %RSI.i1621, align 8
  %3283 = load i64, i64* %RAX.i1605, align 8
  %3284 = zext i16 %3281 to i32
  %3285 = zext i16 %3281 to i64
  %3286 = trunc i64 %3283 to i32
  %3287 = add i32 %3284, %3286
  %3288 = zext i32 %3287 to i64
  store i64 %3288, i64* %RAX.i1605, align 8
  %3289 = icmp ult i32 %3287, %3286
  %3290 = icmp ult i32 %3287, %3284
  %3291 = or i1 %3289, %3290
  %3292 = zext i1 %3291 to i8
  store i8 %3292, i8* %14, align 1
  %3293 = and i32 %3287, 255
  %3294 = tail call i32 @llvm.ctpop.i32(i32 %3293)
  %3295 = trunc i32 %3294 to i8
  %3296 = and i8 %3295, 1
  %3297 = xor i8 %3296, 1
  store i8 %3297, i8* %21, align 1
  %3298 = xor i64 %3285, %3283
  %3299 = trunc i64 %3298 to i32
  %3300 = xor i32 %3299, %3287
  %3301 = lshr i32 %3300, 4
  %3302 = trunc i32 %3301 to i8
  %3303 = and i8 %3302, 1
  store i8 %3303, i8* %26, align 1
  %3304 = icmp eq i32 %3287, 0
  %3305 = zext i1 %3304 to i8
  store i8 %3305, i8* %29, align 1
  %3306 = lshr i32 %3287, 31
  %3307 = trunc i32 %3306 to i8
  store i8 %3307, i8* %32, align 1
  %3308 = lshr i32 %3286, 31
  %3309 = xor i32 %3306, %3308
  %3310 = add nuw nsw i32 %3309, %3306
  %3311 = icmp eq i32 %3310, 2
  %3312 = zext i1 %3311 to i8
  store i8 %3312, i8* %38, align 1
  %3313 = load i64, i64* %RBP.i, align 8
  %3314 = add i64 %3313, -88
  %3315 = add i64 %3170, 53
  store i64 %3315, i64* %3, align 8
  %3316 = inttoptr i64 %3314 to i32*
  store i32 %3287, i32* %3316, align 4
  %.pre103 = load i64, i64* %3, align 8
  br label %block_.L_4896aa

block_.L_4896aa:                                  ; preds = %block_.L_489675, %block_48966b
  %3317 = phi i64 [ %.pre103, %block_.L_489675 ], [ %3176, %block_48966b ]
  %3318 = load i64, i64* %RBP.i, align 8
  %3319 = add i64 %3318, -88
  %3320 = add i64 %3317, 3
  store i64 %3320, i64* %3, align 8
  %3321 = inttoptr i64 %3319 to i32*
  %3322 = load i32, i32* %3321, align 4
  %3323 = zext i32 %3322 to i64
  store i64 %3323, i64* %RAX.i1605, align 8
  %3324 = add i64 %3318, -84
  %3325 = add i64 %3317, 6
  store i64 %3325, i64* %3, align 8
  %3326 = inttoptr i64 %3324 to i32*
  %3327 = load i32, i32* %3326, align 4
  %3328 = zext i32 %3327 to i64
  store i64 %3328, i64* %RCX.i1172, align 8
  %3329 = sub i32 %3327, %3322
  %3330 = icmp ult i32 %3327, %3322
  %3331 = zext i1 %3330 to i8
  store i8 %3331, i8* %14, align 1
  %3332 = and i32 %3329, 255
  %3333 = tail call i32 @llvm.ctpop.i32(i32 %3332)
  %3334 = trunc i32 %3333 to i8
  %3335 = and i8 %3334, 1
  %3336 = xor i8 %3335, 1
  store i8 %3336, i8* %21, align 1
  %3337 = xor i32 %3322, %3327
  %3338 = xor i32 %3337, %3329
  %3339 = lshr i32 %3338, 4
  %3340 = trunc i32 %3339 to i8
  %3341 = and i8 %3340, 1
  store i8 %3341, i8* %26, align 1
  %3342 = icmp eq i32 %3329, 0
  %3343 = zext i1 %3342 to i8
  store i8 %3343, i8* %29, align 1
  %3344 = lshr i32 %3329, 31
  %3345 = trunc i32 %3344 to i8
  store i8 %3345, i8* %32, align 1
  %3346 = lshr i32 %3327, 31
  %3347 = lshr i32 %3322, 31
  %3348 = xor i32 %3347, %3346
  %3349 = xor i32 %3344, %3346
  %3350 = add nuw nsw i32 %3349, %3348
  %3351 = icmp eq i32 %3350, 2
  %3352 = zext i1 %3351 to i8
  store i8 %3352, i8* %38, align 1
  %3353 = icmp ne i8 %3345, 0
  %3354 = xor i1 %3353, %3351
  %.v127 = select i1 %3354, i64 14, i64 36
  %3355 = add i64 %3317, %.v127
  store i64 %3355, i64* %3, align 8
  br i1 %3354, label %block_4896b8, label %block_.L_4896ce

block_4896b8:                                     ; preds = %block_.L_4896aa
  %3356 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*), align 8
  store i64 %3356, i64* %RAX.i1605, align 8
  %3357 = add i64 %3356, 72688
  %3358 = add i64 %3355, 14
  store i64 %3358, i64* %3, align 8
  %3359 = inttoptr i64 %3357 to i32*
  %3360 = load i32, i32* %3359, align 4
  %3361 = zext i32 %3360 to i64
  store i64 %3361, i64* %RCX.i1172, align 8
  %3362 = add i64 %3318, -92
  %3363 = add i64 %3355, 17
  store i64 %3363, i64* %3, align 8
  %3364 = inttoptr i64 %3362 to i32*
  store i32 %3360, i32* %3364, align 4
  %3365 = load i64, i64* %3, align 8
  %3366 = add i64 %3365, 134
  store i64 %3366, i64* %3, align 8
  br label %block_.L_48974f

block_.L_4896ce:                                  ; preds = %block_.L_4896aa
  store i64 0, i64* %RAX.i1605, align 8
  store i8 0, i8* %14, align 1
  store i8 1, i8* %21, align 1
  store i8 1, i8* %29, align 1
  store i8 0, i8* %32, align 1
  store i8 0, i8* %38, align 1
  store i8 0, i8* %26, align 1
  %3367 = add i64 %3318, -28
  %3368 = add i64 %3355, 5
  store i64 %3368, i64* %3, align 8
  %3369 = inttoptr i64 %3367 to i32*
  %3370 = load i32, i32* %3369, align 4
  %3371 = zext i32 %3370 to i64
  store i64 %3371, i64* %RCX.i1172, align 8
  %3372 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*), align 8
  %3373 = add i64 %3372, 8504
  store i64 %3373, i64* %RDX.i844, align 8
  %3374 = icmp ugt i64 %3372, -8505
  %3375 = zext i1 %3374 to i8
  store i8 %3375, i8* %14, align 1
  %3376 = trunc i64 %3373 to i32
  %3377 = and i32 %3376, 255
  %3378 = tail call i32 @llvm.ctpop.i32(i32 %3377)
  %3379 = trunc i32 %3378 to i8
  %3380 = and i8 %3379, 1
  %3381 = xor i8 %3380, 1
  store i8 %3381, i8* %21, align 1
  %3382 = xor i64 %3372, 16
  %3383 = xor i64 %3382, %3373
  %3384 = lshr i64 %3383, 4
  %3385 = trunc i64 %3384 to i8
  %3386 = and i8 %3385, 1
  store i8 %3386, i8* %26, align 1
  %3387 = icmp eq i64 %3373, 0
  %3388 = zext i1 %3387 to i8
  store i8 %3388, i8* %29, align 1
  %3389 = lshr i64 %3373, 63
  %3390 = trunc i64 %3389 to i8
  store i8 %3390, i8* %32, align 1
  %3391 = lshr i64 %3372, 63
  %3392 = xor i64 %3389, %3391
  %3393 = add nuw nsw i64 %3392, %3389
  %3394 = icmp eq i64 %3393, 2
  %3395 = zext i1 %3394 to i8
  store i8 %3395, i8* %38, align 1
  %3396 = add i64 %3318, -32
  %3397 = add i64 %3355, 24
  store i64 %3397, i64* %3, align 8
  %3398 = inttoptr i64 %3396 to i32*
  %3399 = load i32, i32* %3398, align 4
  %3400 = sext i32 %3399 to i64
  %3401 = shl nsw i64 %3400, 9
  store i64 %3401, i64* %RSI.i1621, align 8
  %3402 = add i64 %3401, %3373
  store i64 %3402, i64* %RDX.i844, align 8
  %3403 = icmp ult i64 %3402, %3373
  %3404 = icmp ult i64 %3402, %3401
  %3405 = or i1 %3403, %3404
  %3406 = zext i1 %3405 to i8
  store i8 %3406, i8* %14, align 1
  %3407 = trunc i64 %3402 to i32
  %3408 = and i32 %3407, 255
  %3409 = tail call i32 @llvm.ctpop.i32(i32 %3408)
  %3410 = trunc i32 %3409 to i8
  %3411 = and i8 %3410, 1
  %3412 = xor i8 %3411, 1
  store i8 %3412, i8* %21, align 1
  %3413 = xor i64 %3373, %3402
  %3414 = lshr i64 %3413, 4
  %3415 = trunc i64 %3414 to i8
  %3416 = and i8 %3415, 1
  store i8 %3416, i8* %26, align 1
  %3417 = icmp eq i64 %3402, 0
  %3418 = zext i1 %3417 to i8
  store i8 %3418, i8* %29, align 1
  %3419 = lshr i64 %3402, 63
  %3420 = trunc i64 %3419 to i8
  store i8 %3420, i8* %32, align 1
  %3421 = lshr i64 %3400, 54
  %3422 = and i64 %3421, 1
  %3423 = xor i64 %3419, %3389
  %3424 = xor i64 %3419, %3422
  %3425 = add nuw nsw i64 %3423, %3424
  %3426 = icmp eq i64 %3425, 2
  %3427 = zext i1 %3426 to i8
  store i8 %3427, i8* %38, align 1
  %3428 = load i64, i64* %RBP.i, align 8
  %3429 = add i64 %3428, -36
  %3430 = add i64 %3355, 35
  store i64 %3430, i64* %3, align 8
  %3431 = inttoptr i64 %3429 to i32*
  %3432 = load i32, i32* %3431, align 4
  %3433 = sext i32 %3432 to i64
  %3434 = shl nsw i64 %3433, 5
  store i64 %3434, i64* %RSI.i1621, align 8
  %3435 = add i64 %3434, %3402
  store i64 %3435, i64* %RDX.i844, align 8
  %3436 = icmp ult i64 %3435, %3402
  %3437 = icmp ult i64 %3435, %3434
  %3438 = or i1 %3436, %3437
  %3439 = zext i1 %3438 to i8
  store i8 %3439, i8* %14, align 1
  %3440 = trunc i64 %3435 to i32
  %3441 = and i32 %3440, 255
  %3442 = tail call i32 @llvm.ctpop.i32(i32 %3441)
  %3443 = trunc i32 %3442 to i8
  %3444 = and i8 %3443, 1
  %3445 = xor i8 %3444, 1
  store i8 %3445, i8* %21, align 1
  %3446 = xor i64 %3402, %3435
  %3447 = lshr i64 %3446, 4
  %3448 = trunc i64 %3447 to i8
  %3449 = and i8 %3448, 1
  store i8 %3449, i8* %26, align 1
  %3450 = icmp eq i64 %3435, 0
  %3451 = zext i1 %3450 to i8
  store i8 %3451, i8* %29, align 1
  %3452 = lshr i64 %3435, 63
  %3453 = trunc i64 %3452 to i8
  store i8 %3453, i8* %32, align 1
  %3454 = lshr i64 %3433, 58
  %3455 = and i64 %3454, 1
  %3456 = xor i64 %3452, %3419
  %3457 = xor i64 %3452, %3455
  %3458 = add nuw nsw i64 %3456, %3457
  %3459 = icmp eq i64 %3458, 2
  %3460 = zext i1 %3459 to i8
  store i8 %3460, i8* %38, align 1
  %3461 = add i64 %3428, -40
  %3462 = add i64 %3355, 46
  store i64 %3462, i64* %3, align 8
  %3463 = inttoptr i64 %3461 to i32*
  %3464 = load i32, i32* %3463, align 4
  %3465 = sext i32 %3464 to i64
  store i64 %3465, i64* %RSI.i1621, align 8
  %3466 = shl nsw i64 %3465, 1
  %3467 = add i64 %3466, %3435
  %3468 = add i64 %3355, 50
  store i64 %3468, i64* %3, align 8
  %3469 = inttoptr i64 %3467 to i16*
  %3470 = load i16, i16* %3469, align 2
  %3471 = zext i16 %3470 to i64
  store i64 %3471, i64* %RDI.i1624, align 8
  %3472 = load i64, i64* %RCX.i1172, align 8
  %3473 = zext i16 %3470 to i32
  %3474 = trunc i64 %3472 to i32
  %3475 = add i32 %3473, %3474
  %3476 = zext i32 %3475 to i64
  store i64 %3476, i64* %RCX.i1172, align 8
  %3477 = lshr i32 %3475, 31
  %3478 = load i32, i32* %EAX.i1602, align 4
  %3479 = sub i32 %3478, %3475
  %3480 = icmp ult i32 %3478, %3475
  %3481 = zext i1 %3480 to i8
  store i8 %3481, i8* %14, align 1
  %3482 = and i32 %3479, 255
  %3483 = tail call i32 @llvm.ctpop.i32(i32 %3482)
  %3484 = trunc i32 %3483 to i8
  %3485 = and i8 %3484, 1
  %3486 = xor i8 %3485, 1
  store i8 %3486, i8* %21, align 1
  %3487 = xor i32 %3475, %3478
  %3488 = xor i32 %3487, %3479
  %3489 = lshr i32 %3488, 4
  %3490 = trunc i32 %3489 to i8
  %3491 = and i8 %3490, 1
  store i8 %3491, i8* %26, align 1
  %3492 = icmp eq i32 %3479, 0
  %3493 = zext i1 %3492 to i8
  store i8 %3493, i8* %29, align 1
  %3494 = lshr i32 %3479, 31
  %3495 = trunc i32 %3494 to i8
  store i8 %3495, i8* %32, align 1
  %3496 = lshr i32 %3478, 31
  %3497 = xor i32 %3477, %3496
  %3498 = xor i32 %3494, %3496
  %3499 = add nuw nsw i32 %3498, %3497
  %3500 = icmp eq i32 %3499, 2
  %3501 = zext i1 %3500 to i8
  store i8 %3501, i8* %38, align 1
  %3502 = icmp ne i8 %3495, 0
  %3503 = xor i1 %3502, %3500
  %3504 = or i1 %3492, %3503
  %.v128 = select i1 %3504, i64 70, i64 60
  %3505 = add i64 %3355, %.v128
  store i64 %3505, i64* %3, align 8
  br i1 %3504, label %block_.L_489714, label %block_48970a

block_48970a:                                     ; preds = %block_.L_4896ce
  store i64 0, i64* %RAX.i1605, align 8
  store i8 0, i8* %14, align 1
  store i8 1, i8* %21, align 1
  store i8 1, i8* %29, align 1
  store i8 0, i8* %32, align 1
  store i8 0, i8* %38, align 1
  store i8 0, i8* %26, align 1
  %3506 = load i64, i64* %RBP.i, align 8
  %3507 = add i64 %3506, -96
  %3508 = add i64 %3505, 5
  store i64 %3508, i64* %3, align 8
  %3509 = inttoptr i64 %3507 to i32*
  store i32 0, i32* %3509, align 4
  %3510 = load i64, i64* %3, align 8
  %3511 = add i64 %3510, 58
  store i64 %3511, i64* %3, align 8
  br label %block_.L_489749

block_.L_489714:                                  ; preds = %block_.L_4896ce
  %3512 = load i64, i64* %RBP.i, align 8
  %3513 = add i64 %3512, -28
  %3514 = add i64 %3505, 3
  store i64 %3514, i64* %3, align 8
  %3515 = inttoptr i64 %3513 to i32*
  %3516 = load i32, i32* %3515, align 4
  %3517 = zext i32 %3516 to i64
  store i64 %3517, i64* %RAX.i1605, align 8
  %3518 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*), align 8
  %3519 = add i64 %3518, 8504
  store i64 %3519, i64* %RCX.i1172, align 8
  %3520 = icmp ugt i64 %3518, -8505
  %3521 = zext i1 %3520 to i8
  store i8 %3521, i8* %14, align 1
  %3522 = trunc i64 %3519 to i32
  %3523 = and i32 %3522, 255
  %3524 = tail call i32 @llvm.ctpop.i32(i32 %3523)
  %3525 = trunc i32 %3524 to i8
  %3526 = and i8 %3525, 1
  %3527 = xor i8 %3526, 1
  store i8 %3527, i8* %21, align 1
  %3528 = xor i64 %3518, 16
  %3529 = xor i64 %3528, %3519
  %3530 = lshr i64 %3529, 4
  %3531 = trunc i64 %3530 to i8
  %3532 = and i8 %3531, 1
  store i8 %3532, i8* %26, align 1
  %3533 = icmp eq i64 %3519, 0
  %3534 = zext i1 %3533 to i8
  store i8 %3534, i8* %29, align 1
  %3535 = lshr i64 %3519, 63
  %3536 = trunc i64 %3535 to i8
  store i8 %3536, i8* %32, align 1
  %3537 = lshr i64 %3518, 63
  %3538 = xor i64 %3535, %3537
  %3539 = add nuw nsw i64 %3538, %3535
  %3540 = icmp eq i64 %3539, 2
  %3541 = zext i1 %3540 to i8
  store i8 %3541, i8* %38, align 1
  %3542 = add i64 %3512, -32
  %3543 = add i64 %3505, 22
  store i64 %3543, i64* %3, align 8
  %3544 = inttoptr i64 %3542 to i32*
  %3545 = load i32, i32* %3544, align 4
  %3546 = sext i32 %3545 to i64
  %3547 = shl nsw i64 %3546, 9
  store i64 %3547, i64* %RDX.i844, align 8
  %3548 = add i64 %3547, %3519
  store i64 %3548, i64* %RCX.i1172, align 8
  %3549 = icmp ult i64 %3548, %3519
  %3550 = icmp ult i64 %3548, %3547
  %3551 = or i1 %3549, %3550
  %3552 = zext i1 %3551 to i8
  store i8 %3552, i8* %14, align 1
  %3553 = trunc i64 %3548 to i32
  %3554 = and i32 %3553, 255
  %3555 = tail call i32 @llvm.ctpop.i32(i32 %3554)
  %3556 = trunc i32 %3555 to i8
  %3557 = and i8 %3556, 1
  %3558 = xor i8 %3557, 1
  store i8 %3558, i8* %21, align 1
  %3559 = xor i64 %3519, %3548
  %3560 = lshr i64 %3559, 4
  %3561 = trunc i64 %3560 to i8
  %3562 = and i8 %3561, 1
  store i8 %3562, i8* %26, align 1
  %3563 = icmp eq i64 %3548, 0
  %3564 = zext i1 %3563 to i8
  store i8 %3564, i8* %29, align 1
  %3565 = lshr i64 %3548, 63
  %3566 = trunc i64 %3565 to i8
  store i8 %3566, i8* %32, align 1
  %3567 = lshr i64 %3546, 54
  %3568 = and i64 %3567, 1
  %3569 = xor i64 %3565, %3535
  %3570 = xor i64 %3565, %3568
  %3571 = add nuw nsw i64 %3569, %3570
  %3572 = icmp eq i64 %3571, 2
  %3573 = zext i1 %3572 to i8
  store i8 %3573, i8* %38, align 1
  %3574 = load i64, i64* %RBP.i, align 8
  %3575 = add i64 %3574, -36
  %3576 = add i64 %3505, 33
  store i64 %3576, i64* %3, align 8
  %3577 = inttoptr i64 %3575 to i32*
  %3578 = load i32, i32* %3577, align 4
  %3579 = sext i32 %3578 to i64
  %3580 = shl nsw i64 %3579, 5
  store i64 %3580, i64* %RDX.i844, align 8
  %3581 = add i64 %3580, %3548
  store i64 %3581, i64* %RCX.i1172, align 8
  %3582 = icmp ult i64 %3581, %3548
  %3583 = icmp ult i64 %3581, %3580
  %3584 = or i1 %3582, %3583
  %3585 = zext i1 %3584 to i8
  store i8 %3585, i8* %14, align 1
  %3586 = trunc i64 %3581 to i32
  %3587 = and i32 %3586, 255
  %3588 = tail call i32 @llvm.ctpop.i32(i32 %3587)
  %3589 = trunc i32 %3588 to i8
  %3590 = and i8 %3589, 1
  %3591 = xor i8 %3590, 1
  store i8 %3591, i8* %21, align 1
  %3592 = xor i64 %3548, %3581
  %3593 = lshr i64 %3592, 4
  %3594 = trunc i64 %3593 to i8
  %3595 = and i8 %3594, 1
  store i8 %3595, i8* %26, align 1
  %3596 = icmp eq i64 %3581, 0
  %3597 = zext i1 %3596 to i8
  store i8 %3597, i8* %29, align 1
  %3598 = lshr i64 %3581, 63
  %3599 = trunc i64 %3598 to i8
  store i8 %3599, i8* %32, align 1
  %3600 = lshr i64 %3579, 58
  %3601 = and i64 %3600, 1
  %3602 = xor i64 %3598, %3565
  %3603 = xor i64 %3598, %3601
  %3604 = add nuw nsw i64 %3602, %3603
  %3605 = icmp eq i64 %3604, 2
  %3606 = zext i1 %3605 to i8
  store i8 %3606, i8* %38, align 1
  %3607 = add i64 %3574, -40
  %3608 = add i64 %3505, 44
  store i64 %3608, i64* %3, align 8
  %3609 = inttoptr i64 %3607 to i32*
  %3610 = load i32, i32* %3609, align 4
  %3611 = sext i32 %3610 to i64
  store i64 %3611, i64* %RDX.i844, align 8
  %3612 = shl nsw i64 %3611, 1
  %3613 = add i64 %3612, %3581
  %3614 = add i64 %3505, 48
  store i64 %3614, i64* %3, align 8
  %3615 = inttoptr i64 %3613 to i16*
  %3616 = load i16, i16* %3615, align 2
  %3617 = zext i16 %3616 to i64
  store i64 %3617, i64* %RSI.i1621, align 8
  %3618 = load i64, i64* %RAX.i1605, align 8
  %3619 = zext i16 %3616 to i32
  %3620 = zext i16 %3616 to i64
  %3621 = trunc i64 %3618 to i32
  %3622 = add i32 %3619, %3621
  %3623 = zext i32 %3622 to i64
  store i64 %3623, i64* %RAX.i1605, align 8
  %3624 = icmp ult i32 %3622, %3621
  %3625 = icmp ult i32 %3622, %3619
  %3626 = or i1 %3624, %3625
  %3627 = zext i1 %3626 to i8
  store i8 %3627, i8* %14, align 1
  %3628 = and i32 %3622, 255
  %3629 = tail call i32 @llvm.ctpop.i32(i32 %3628)
  %3630 = trunc i32 %3629 to i8
  %3631 = and i8 %3630, 1
  %3632 = xor i8 %3631, 1
  store i8 %3632, i8* %21, align 1
  %3633 = xor i64 %3620, %3618
  %3634 = trunc i64 %3633 to i32
  %3635 = xor i32 %3634, %3622
  %3636 = lshr i32 %3635, 4
  %3637 = trunc i32 %3636 to i8
  %3638 = and i8 %3637, 1
  store i8 %3638, i8* %26, align 1
  %3639 = icmp eq i32 %3622, 0
  %3640 = zext i1 %3639 to i8
  store i8 %3640, i8* %29, align 1
  %3641 = lshr i32 %3622, 31
  %3642 = trunc i32 %3641 to i8
  store i8 %3642, i8* %32, align 1
  %3643 = lshr i32 %3621, 31
  %3644 = xor i32 %3641, %3643
  %3645 = add nuw nsw i32 %3644, %3641
  %3646 = icmp eq i32 %3645, 2
  %3647 = zext i1 %3646 to i8
  store i8 %3647, i8* %38, align 1
  %3648 = load i64, i64* %RBP.i, align 8
  %3649 = add i64 %3648, -96
  %3650 = add i64 %3505, 53
  store i64 %3650, i64* %3, align 8
  %3651 = inttoptr i64 %3649 to i32*
  store i32 %3622, i32* %3651, align 4
  %.pre104 = load i64, i64* %3, align 8
  br label %block_.L_489749

block_.L_489749:                                  ; preds = %block_.L_489714, %block_48970a
  %3652 = phi i64 [ %.pre104, %block_.L_489714 ], [ %3511, %block_48970a ]
  %3653 = load i64, i64* %RBP.i, align 8
  %3654 = add i64 %3653, -96
  %3655 = add i64 %3652, 3
  store i64 %3655, i64* %3, align 8
  %3656 = inttoptr i64 %3654 to i32*
  %3657 = load i32, i32* %3656, align 4
  %3658 = zext i32 %3657 to i64
  store i64 %3658, i64* %RAX.i1605, align 8
  %3659 = add i64 %3653, -92
  %3660 = add i64 %3652, 6
  store i64 %3660, i64* %3, align 8
  %3661 = inttoptr i64 %3659 to i32*
  store i32 %3657, i32* %3661, align 4
  %.pre105 = load i64, i64* %3, align 8
  br label %block_.L_48974f

block_.L_48974f:                                  ; preds = %block_.L_489749, %block_4896b8
  %3662 = phi i64 [ %.pre105, %block_.L_489749 ], [ %3366, %block_4896b8 ]
  %3663 = load i64, i64* %RBP.i, align 8
  %3664 = add i64 %3663, -92
  %3665 = add i64 %3662, 3
  store i64 %3665, i64* %3, align 8
  %3666 = inttoptr i64 %3664 to i32*
  %3667 = load i32, i32* %3666, align 4
  %3668 = zext i32 %3667 to i64
  store i64 %3668, i64* %RAX.i1605, align 8
  store i64 0, i64* %RCX.i1172, align 8
  store i8 0, i8* %14, align 1
  store i8 1, i8* %21, align 1
  store i8 1, i8* %29, align 1
  store i8 0, i8* %32, align 1
  store i8 0, i8* %38, align 1
  store i8 0, i8* %26, align 1
  %3669 = trunc i32 %3667 to i16
  store i16 %3669, i16* %DX.i527, align 2
  %3670 = load i64, i64* bitcast (%G_0x70fcf0_type* @G_0x70fcf0 to i64*), align 8
  store i64 %3670, i64* %RSI.i1621, align 8
  %3671 = add i64 %3670, 6464
  %3672 = add i64 %3662, 23
  store i64 %3672, i64* %3, align 8
  %3673 = inttoptr i64 %3671 to i64*
  %3674 = load i64, i64* %3673, align 8
  store i64 %3674, i64* %RSI.i1621, align 8
  %3675 = add i64 %3662, 26
  store i64 %3675, i64* %3, align 8
  %3676 = inttoptr i64 %3674 to i64*
  %3677 = load i64, i64* %3676, align 8
  store i64 %3677, i64* %RSI.i1621, align 8
  %3678 = add i64 %3663, -52
  %3679 = add i64 %3662, 29
  store i64 %3679, i64* %3, align 8
  %3680 = inttoptr i64 %3678 to i32*
  %3681 = load i32, i32* %3680, align 4
  %3682 = zext i32 %3681 to i64
  store i64 %3682, i64* %RAX.i1605, align 8
  %3683 = add i64 %3663, -40
  %3684 = add i64 %3662, 32
  store i64 %3684, i64* %3, align 8
  %3685 = inttoptr i64 %3683 to i32*
  %3686 = load i32, i32* %3685, align 4
  %3687 = add i32 %3686, %3681
  %3688 = zext i32 %3687 to i64
  store i64 %3688, i64* %RAX.i1605, align 8
  %3689 = icmp ult i32 %3687, %3681
  %3690 = icmp ult i32 %3687, %3686
  %3691 = or i1 %3689, %3690
  %3692 = zext i1 %3691 to i8
  store i8 %3692, i8* %14, align 1
  %3693 = and i32 %3687, 255
  %3694 = tail call i32 @llvm.ctpop.i32(i32 %3693)
  %3695 = trunc i32 %3694 to i8
  %3696 = and i8 %3695, 1
  %3697 = xor i8 %3696, 1
  store i8 %3697, i8* %21, align 1
  %3698 = xor i32 %3686, %3681
  %3699 = xor i32 %3698, %3687
  %3700 = lshr i32 %3699, 4
  %3701 = trunc i32 %3700 to i8
  %3702 = and i8 %3701, 1
  store i8 %3702, i8* %26, align 1
  %3703 = icmp eq i32 %3687, 0
  %3704 = zext i1 %3703 to i8
  store i8 %3704, i8* %29, align 1
  %3705 = lshr i32 %3687, 31
  %3706 = trunc i32 %3705 to i8
  store i8 %3706, i8* %32, align 1
  %3707 = lshr i32 %3681, 31
  %3708 = lshr i32 %3686, 31
  %3709 = xor i32 %3705, %3707
  %3710 = xor i32 %3705, %3708
  %3711 = add nuw nsw i32 %3709, %3710
  %3712 = icmp eq i32 %3711, 2
  %3713 = zext i1 %3712 to i8
  store i8 %3713, i8* %38, align 1
  %3714 = sext i32 %3687 to i64
  store i64 %3714, i64* %RDI.i1624, align 8
  %3715 = shl nsw i64 %3714, 3
  %3716 = add i64 %3677, %3715
  %3717 = add i64 %3662, 39
  store i64 %3717, i64* %3, align 8
  %3718 = inttoptr i64 %3716 to i64*
  %3719 = load i64, i64* %3718, align 8
  store i64 %3719, i64* %RSI.i1621, align 8
  %3720 = load i64, i64* %RBP.i, align 8
  %3721 = add i64 %3720, -48
  %3722 = add i64 %3662, 42
  store i64 %3722, i64* %3, align 8
  %3723 = inttoptr i64 %3721 to i32*
  %3724 = load i32, i32* %3723, align 4
  %3725 = zext i32 %3724 to i64
  store i64 %3725, i64* %RAX.i1605, align 8
  %3726 = add i64 %3720, -36
  %3727 = add i64 %3662, 45
  store i64 %3727, i64* %3, align 8
  %3728 = inttoptr i64 %3726 to i32*
  %3729 = load i32, i32* %3728, align 4
  %3730 = add i32 %3729, %3724
  %3731 = zext i32 %3730 to i64
  store i64 %3731, i64* %RAX.i1605, align 8
  %3732 = icmp ult i32 %3730, %3724
  %3733 = icmp ult i32 %3730, %3729
  %3734 = or i1 %3732, %3733
  %3735 = zext i1 %3734 to i8
  store i8 %3735, i8* %14, align 1
  %3736 = and i32 %3730, 255
  %3737 = tail call i32 @llvm.ctpop.i32(i32 %3736)
  %3738 = trunc i32 %3737 to i8
  %3739 = and i8 %3738, 1
  %3740 = xor i8 %3739, 1
  store i8 %3740, i8* %21, align 1
  %3741 = xor i32 %3729, %3724
  %3742 = xor i32 %3741, %3730
  %3743 = lshr i32 %3742, 4
  %3744 = trunc i32 %3743 to i8
  %3745 = and i8 %3744, 1
  store i8 %3745, i8* %26, align 1
  %3746 = icmp eq i32 %3730, 0
  %3747 = zext i1 %3746 to i8
  store i8 %3747, i8* %29, align 1
  %3748 = lshr i32 %3730, 31
  %3749 = trunc i32 %3748 to i8
  store i8 %3749, i8* %32, align 1
  %3750 = lshr i32 %3724, 31
  %3751 = lshr i32 %3729, 31
  %3752 = xor i32 %3748, %3750
  %3753 = xor i32 %3748, %3751
  %3754 = add nuw nsw i32 %3752, %3753
  %3755 = icmp eq i32 %3754, 2
  %3756 = zext i1 %3755 to i8
  store i8 %3756, i8* %38, align 1
  %3757 = sext i32 %3730 to i64
  store i64 %3757, i64* %RDI.i1624, align 8
  %3758 = shl nsw i64 %3757, 1
  %3759 = add i64 %3719, %3758
  %3760 = load i16, i16* %DX.i527, align 2
  %3761 = add i64 %3662, 52
  store i64 %3761, i64* %3, align 8
  %3762 = inttoptr i64 %3759 to i16*
  store i16 %3760, i16* %3762, align 2
  %3763 = load i64, i64* %3, align 8
  %3764 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*), align 8
  store i64 %3764, i64* %RSI.i1621, align 8
  %3765 = add i64 %3764, 72684
  %3766 = add i64 %3763, 14
  store i64 %3766, i64* %3, align 8
  %3767 = inttoptr i64 %3765 to i32*
  %3768 = load i32, i32* %3767, align 4
  %3769 = zext i32 %3768 to i64
  store i64 %3769, i64* %RAX.i1605, align 8
  %3770 = load i64, i64* %RBP.i, align 8
  %3771 = add i64 %3770, -24
  %3772 = add i64 %3763, 18
  store i64 %3772, i64* %3, align 8
  %3773 = inttoptr i64 %3771 to i32*
  %3774 = load i32, i32* %3773, align 4
  %3775 = zext i32 %3774 to i64
  store i64 %3775, i64* %2571, align 8
  %3776 = add i64 %3764, 4792
  store i64 %3776, i64* %RSI.i1621, align 8
  %3777 = icmp ugt i64 %3764, -4793
  %3778 = zext i1 %3777 to i8
  store i8 %3778, i8* %14, align 1
  %3779 = trunc i64 %3776 to i32
  %3780 = and i32 %3779, 255
  %3781 = tail call i32 @llvm.ctpop.i32(i32 %3780)
  %3782 = trunc i32 %3781 to i8
  %3783 = and i8 %3782, 1
  %3784 = xor i8 %3783, 1
  store i8 %3784, i8* %21, align 1
  %3785 = xor i64 %3764, 16
  %3786 = xor i64 %3785, %3776
  %3787 = lshr i64 %3786, 4
  %3788 = trunc i64 %3787 to i8
  %3789 = and i8 %3788, 1
  store i8 %3789, i8* %26, align 1
  %3790 = icmp eq i64 %3776, 0
  %3791 = zext i1 %3790 to i8
  store i8 %3791, i8* %29, align 1
  %3792 = lshr i64 %3776, 63
  %3793 = trunc i64 %3792 to i8
  store i8 %3793, i8* %32, align 1
  %3794 = lshr i64 %3764, 63
  %3795 = xor i64 %3792, %3794
  %3796 = add nuw nsw i64 %3795, %3792
  %3797 = icmp eq i64 %3796, 2
  %3798 = zext i1 %3797 to i8
  store i8 %3798, i8* %38, align 1
  %3799 = add i64 %3770, -16
  %3800 = add i64 %3763, 37
  store i64 %3800, i64* %3, align 8
  %3801 = inttoptr i64 %3799 to i64*
  %3802 = load i64, i64* %3801, align 8
  store i64 %3802, i64* %RDI.i1624, align 8
  %3803 = add i64 %3763, 40
  store i64 %3803, i64* %3, align 8
  %3804 = inttoptr i64 %3802 to i32*
  %3805 = load i32, i32* %3804, align 4
  %3806 = sext i32 %3805 to i64
  %3807 = shl nsw i64 %3806, 9
  store i64 %3807, i64* %RDI.i1624, align 8
  %3808 = add i64 %3807, %3776
  store i64 %3808, i64* %RSI.i1621, align 8
  %3809 = icmp ult i64 %3808, %3776
  %3810 = icmp ult i64 %3808, %3807
  %3811 = or i1 %3809, %3810
  %3812 = zext i1 %3811 to i8
  store i8 %3812, i8* %14, align 1
  %3813 = trunc i64 %3808 to i32
  %3814 = and i32 %3813, 255
  %3815 = tail call i32 @llvm.ctpop.i32(i32 %3814)
  %3816 = trunc i32 %3815 to i8
  %3817 = and i8 %3816, 1
  %3818 = xor i8 %3817, 1
  store i8 %3818, i8* %21, align 1
  %3819 = xor i64 %3776, %3808
  %3820 = lshr i64 %3819, 4
  %3821 = trunc i64 %3820 to i8
  %3822 = and i8 %3821, 1
  store i8 %3822, i8* %26, align 1
  %3823 = icmp eq i64 %3808, 0
  %3824 = zext i1 %3823 to i8
  store i8 %3824, i8* %29, align 1
  %3825 = lshr i64 %3808, 63
  %3826 = trunc i64 %3825 to i8
  store i8 %3826, i8* %32, align 1
  %3827 = lshr i64 %3806, 54
  %3828 = and i64 %3827, 1
  %3829 = xor i64 %3825, %3792
  %3830 = xor i64 %3825, %3828
  %3831 = add nuw nsw i64 %3829, %3830
  %3832 = icmp eq i64 %3831, 2
  %3833 = zext i1 %3832 to i8
  store i8 %3833, i8* %38, align 1
  %3834 = load i64, i64* %RBP.i, align 8
  %3835 = add i64 %3834, -40
  %3836 = add i64 %3763, 51
  store i64 %3836, i64* %3, align 8
  %3837 = inttoptr i64 %3835 to i32*
  %3838 = load i32, i32* %3837, align 4
  %3839 = sext i32 %3838 to i64
  %3840 = shl nsw i64 %3839, 5
  store i64 %3840, i64* %RDI.i1624, align 8
  %3841 = add i64 %3840, %3808
  store i64 %3841, i64* %RSI.i1621, align 8
  %3842 = icmp ult i64 %3841, %3808
  %3843 = icmp ult i64 %3841, %3840
  %3844 = or i1 %3842, %3843
  %3845 = zext i1 %3844 to i8
  store i8 %3845, i8* %14, align 1
  %3846 = trunc i64 %3841 to i32
  %3847 = and i32 %3846, 255
  %3848 = tail call i32 @llvm.ctpop.i32(i32 %3847)
  %3849 = trunc i32 %3848 to i8
  %3850 = and i8 %3849, 1
  %3851 = xor i8 %3850, 1
  store i8 %3851, i8* %21, align 1
  %3852 = xor i64 %3808, %3841
  %3853 = lshr i64 %3852, 4
  %3854 = trunc i64 %3853 to i8
  %3855 = and i8 %3854, 1
  store i8 %3855, i8* %26, align 1
  %3856 = icmp eq i64 %3841, 0
  %3857 = zext i1 %3856 to i8
  store i8 %3857, i8* %29, align 1
  %3858 = lshr i64 %3841, 63
  %3859 = trunc i64 %3858 to i8
  store i8 %3859, i8* %32, align 1
  %3860 = lshr i64 %3839, 58
  %3861 = and i64 %3860, 1
  %3862 = xor i64 %3858, %3825
  %3863 = xor i64 %3858, %3861
  %3864 = add nuw nsw i64 %3862, %3863
  %3865 = icmp eq i64 %3864, 2
  %3866 = zext i1 %3865 to i8
  store i8 %3866, i8* %38, align 1
  %3867 = add i64 %3834, -36
  %3868 = add i64 %3763, 62
  store i64 %3868, i64* %3, align 8
  %3869 = inttoptr i64 %3867 to i32*
  %3870 = load i32, i32* %3869, align 4
  %3871 = sext i32 %3870 to i64
  store i64 %3871, i64* %RDI.i1624, align 8
  %3872 = shl nsw i64 %3871, 1
  %3873 = add i64 %3872, %3841
  %3874 = add i64 %3763, 67
  store i64 %3874, i64* %3, align 8
  %3875 = inttoptr i64 %3873 to i16*
  %3876 = load i16, i16* %3875, align 2
  %3877 = zext i16 %3876 to i64
  store i64 %3877, i64* %2573, align 8
  %3878 = load i32, i32* %R8D.i827, align 4
  %3879 = zext i16 %3876 to i32
  %3880 = add i32 %3879, %3878
  %3881 = zext i32 %3880 to i64
  store i64 %3881, i64* %2571, align 8
  %3882 = lshr i32 %3880, 31
  %3883 = load i32, i32* %ECX.i635, align 4
  %3884 = sub i32 %3883, %3880
  %3885 = icmp ult i32 %3883, %3880
  %3886 = zext i1 %3885 to i8
  store i8 %3886, i8* %14, align 1
  %3887 = and i32 %3884, 255
  %3888 = tail call i32 @llvm.ctpop.i32(i32 %3887)
  %3889 = trunc i32 %3888 to i8
  %3890 = and i8 %3889, 1
  %3891 = xor i8 %3890, 1
  store i8 %3891, i8* %21, align 1
  %3892 = xor i32 %3880, %3883
  %3893 = xor i32 %3892, %3884
  %3894 = lshr i32 %3893, 4
  %3895 = trunc i32 %3894 to i8
  %3896 = and i8 %3895, 1
  store i8 %3896, i8* %26, align 1
  %3897 = icmp eq i32 %3884, 0
  %3898 = zext i1 %3897 to i8
  store i8 %3898, i8* %29, align 1
  %3899 = lshr i32 %3884, 31
  %3900 = trunc i32 %3899 to i8
  store i8 %3900, i8* %32, align 1
  %3901 = lshr i32 %3883, 31
  %3902 = xor i32 %3882, %3901
  %3903 = xor i32 %3899, %3901
  %3904 = add nuw nsw i32 %3903, %3902
  %3905 = icmp eq i32 %3904, 2
  %3906 = zext i1 %3905 to i8
  store i8 %3906, i8* %38, align 1
  %3907 = load i64, i64* %RBP.i, align 8
  %3908 = add i64 %3907, -100
  %3909 = load i32, i32* %EAX.i1602, align 4
  %3910 = add i64 %3763, 76
  store i64 %3910, i64* %3, align 8
  %3911 = inttoptr i64 %3908 to i32*
  store i32 %3909, i32* %3911, align 4
  %3912 = load i64, i64* %3, align 8
  %3913 = load i8, i8* %29, align 1
  %3914 = icmp ne i8 %3913, 0
  %3915 = load i8, i8* %32, align 1
  %3916 = icmp ne i8 %3915, 0
  %3917 = load i8, i8* %38, align 1
  %3918 = icmp ne i8 %3917, 0
  %3919 = xor i1 %3916, %3918
  %3920 = or i1 %3914, %3919
  %.v151 = select i1 %3920, i64 16, i64 6
  %3921 = add i64 %3912, %.v151
  store i64 %3921, i64* %3, align 8
  br i1 %3920, label %block_.L_4897df, label %block_4897d5

block_4897d5:                                     ; preds = %block_.L_48974f
  store i64 0, i64* %RAX.i1605, align 8
  store i8 0, i8* %14, align 1
  store i8 1, i8* %21, align 1
  store i8 1, i8* %29, align 1
  store i8 0, i8* %32, align 1
  store i8 0, i8* %38, align 1
  store i8 0, i8* %26, align 1
  %3922 = load i64, i64* %RBP.i, align 8
  %3923 = add i64 %3922, -104
  %3924 = add i64 %3921, 5
  store i64 %3924, i64* %3, align 8
  %3925 = inttoptr i64 %3923 to i32*
  store i32 0, i32* %3925, align 4
  %3926 = load i64, i64* %3, align 8
  %3927 = add i64 %3926, 61
  store i64 %3927, i64* %3, align 8
  br label %block_.L_489817

block_.L_4897df:                                  ; preds = %block_.L_48974f
  %3928 = load i64, i64* %RBP.i, align 8
  %3929 = add i64 %3928, -24
  %3930 = add i64 %3921, 3
  store i64 %3930, i64* %3, align 8
  %3931 = inttoptr i64 %3929 to i32*
  %3932 = load i32, i32* %3931, align 4
  %3933 = zext i32 %3932 to i64
  store i64 %3933, i64* %RAX.i1605, align 8
  %3934 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*), align 8
  %3935 = add i64 %3934, 4792
  store i64 %3935, i64* %RCX.i1172, align 8
  %3936 = icmp ugt i64 %3934, -4793
  %3937 = zext i1 %3936 to i8
  store i8 %3937, i8* %14, align 1
  %3938 = trunc i64 %3935 to i32
  %3939 = and i32 %3938, 255
  %3940 = tail call i32 @llvm.ctpop.i32(i32 %3939)
  %3941 = trunc i32 %3940 to i8
  %3942 = and i8 %3941, 1
  %3943 = xor i8 %3942, 1
  store i8 %3943, i8* %21, align 1
  %3944 = xor i64 %3934, 16
  %3945 = xor i64 %3944, %3935
  %3946 = lshr i64 %3945, 4
  %3947 = trunc i64 %3946 to i8
  %3948 = and i8 %3947, 1
  store i8 %3948, i8* %26, align 1
  %3949 = icmp eq i64 %3935, 0
  %3950 = zext i1 %3949 to i8
  store i8 %3950, i8* %29, align 1
  %3951 = lshr i64 %3935, 63
  %3952 = trunc i64 %3951 to i8
  store i8 %3952, i8* %32, align 1
  %3953 = lshr i64 %3934, 63
  %3954 = xor i64 %3951, %3953
  %3955 = add nuw nsw i64 %3954, %3951
  %3956 = icmp eq i64 %3955, 2
  %3957 = zext i1 %3956 to i8
  store i8 %3957, i8* %38, align 1
  %3958 = add i64 %3928, -16
  %3959 = add i64 %3921, 22
  store i64 %3959, i64* %3, align 8
  %3960 = inttoptr i64 %3958 to i64*
  %3961 = load i64, i64* %3960, align 8
  store i64 %3961, i64* %RDX.i844, align 8
  %3962 = add i64 %3921, 25
  store i64 %3962, i64* %3, align 8
  %3963 = inttoptr i64 %3961 to i32*
  %3964 = load i32, i32* %3963, align 4
  %3965 = sext i32 %3964 to i64
  %3966 = shl nsw i64 %3965, 9
  store i64 %3966, i64* %RDX.i844, align 8
  %3967 = add i64 %3966, %3935
  store i64 %3967, i64* %RCX.i1172, align 8
  %3968 = icmp ult i64 %3967, %3935
  %3969 = icmp ult i64 %3967, %3966
  %3970 = or i1 %3968, %3969
  %3971 = zext i1 %3970 to i8
  store i8 %3971, i8* %14, align 1
  %3972 = trunc i64 %3967 to i32
  %3973 = and i32 %3972, 255
  %3974 = tail call i32 @llvm.ctpop.i32(i32 %3973)
  %3975 = trunc i32 %3974 to i8
  %3976 = and i8 %3975, 1
  %3977 = xor i8 %3976, 1
  store i8 %3977, i8* %21, align 1
  %3978 = xor i64 %3935, %3967
  %3979 = lshr i64 %3978, 4
  %3980 = trunc i64 %3979 to i8
  %3981 = and i8 %3980, 1
  store i8 %3981, i8* %26, align 1
  %3982 = icmp eq i64 %3967, 0
  %3983 = zext i1 %3982 to i8
  store i8 %3983, i8* %29, align 1
  %3984 = lshr i64 %3967, 63
  %3985 = trunc i64 %3984 to i8
  store i8 %3985, i8* %32, align 1
  %3986 = lshr i64 %3965, 54
  %3987 = and i64 %3986, 1
  %3988 = xor i64 %3984, %3951
  %3989 = xor i64 %3984, %3987
  %3990 = add nuw nsw i64 %3988, %3989
  %3991 = icmp eq i64 %3990, 2
  %3992 = zext i1 %3991 to i8
  store i8 %3992, i8* %38, align 1
  %3993 = load i64, i64* %RBP.i, align 8
  %3994 = add i64 %3993, -40
  %3995 = add i64 %3921, 36
  store i64 %3995, i64* %3, align 8
  %3996 = inttoptr i64 %3994 to i32*
  %3997 = load i32, i32* %3996, align 4
  %3998 = sext i32 %3997 to i64
  %3999 = shl nsw i64 %3998, 5
  store i64 %3999, i64* %RDX.i844, align 8
  %4000 = add i64 %3999, %3967
  store i64 %4000, i64* %RCX.i1172, align 8
  %4001 = icmp ult i64 %4000, %3967
  %4002 = icmp ult i64 %4000, %3999
  %4003 = or i1 %4001, %4002
  %4004 = zext i1 %4003 to i8
  store i8 %4004, i8* %14, align 1
  %4005 = trunc i64 %4000 to i32
  %4006 = and i32 %4005, 255
  %4007 = tail call i32 @llvm.ctpop.i32(i32 %4006)
  %4008 = trunc i32 %4007 to i8
  %4009 = and i8 %4008, 1
  %4010 = xor i8 %4009, 1
  store i8 %4010, i8* %21, align 1
  %4011 = xor i64 %3967, %4000
  %4012 = lshr i64 %4011, 4
  %4013 = trunc i64 %4012 to i8
  %4014 = and i8 %4013, 1
  store i8 %4014, i8* %26, align 1
  %4015 = icmp eq i64 %4000, 0
  %4016 = zext i1 %4015 to i8
  store i8 %4016, i8* %29, align 1
  %4017 = lshr i64 %4000, 63
  %4018 = trunc i64 %4017 to i8
  store i8 %4018, i8* %32, align 1
  %4019 = lshr i64 %3998, 58
  %4020 = and i64 %4019, 1
  %4021 = xor i64 %4017, %3984
  %4022 = xor i64 %4017, %4020
  %4023 = add nuw nsw i64 %4021, %4022
  %4024 = icmp eq i64 %4023, 2
  %4025 = zext i1 %4024 to i8
  store i8 %4025, i8* %38, align 1
  %4026 = add i64 %3993, -36
  %4027 = add i64 %3921, 47
  store i64 %4027, i64* %3, align 8
  %4028 = inttoptr i64 %4026 to i32*
  %4029 = load i32, i32* %4028, align 4
  %4030 = sext i32 %4029 to i64
  store i64 %4030, i64* %RDX.i844, align 8
  %4031 = shl nsw i64 %4030, 1
  %4032 = add i64 %4031, %4000
  %4033 = add i64 %3921, 51
  store i64 %4033, i64* %3, align 8
  %4034 = inttoptr i64 %4032 to i16*
  %4035 = load i16, i16* %4034, align 2
  %4036 = zext i16 %4035 to i64
  store i64 %4036, i64* %RSI.i1621, align 8
  %4037 = load i64, i64* %RAX.i1605, align 8
  %4038 = zext i16 %4035 to i32
  %4039 = zext i16 %4035 to i64
  %4040 = trunc i64 %4037 to i32
  %4041 = add i32 %4038, %4040
  %4042 = zext i32 %4041 to i64
  store i64 %4042, i64* %RAX.i1605, align 8
  %4043 = icmp ult i32 %4041, %4040
  %4044 = icmp ult i32 %4041, %4038
  %4045 = or i1 %4043, %4044
  %4046 = zext i1 %4045 to i8
  store i8 %4046, i8* %14, align 1
  %4047 = and i32 %4041, 255
  %4048 = tail call i32 @llvm.ctpop.i32(i32 %4047)
  %4049 = trunc i32 %4048 to i8
  %4050 = and i8 %4049, 1
  %4051 = xor i8 %4050, 1
  store i8 %4051, i8* %21, align 1
  %4052 = xor i64 %4039, %4037
  %4053 = trunc i64 %4052 to i32
  %4054 = xor i32 %4053, %4041
  %4055 = lshr i32 %4054, 4
  %4056 = trunc i32 %4055 to i8
  %4057 = and i8 %4056, 1
  store i8 %4057, i8* %26, align 1
  %4058 = icmp eq i32 %4041, 0
  %4059 = zext i1 %4058 to i8
  store i8 %4059, i8* %29, align 1
  %4060 = lshr i32 %4041, 31
  %4061 = trunc i32 %4060 to i8
  store i8 %4061, i8* %32, align 1
  %4062 = lshr i32 %4040, 31
  %4063 = xor i32 %4060, %4062
  %4064 = add nuw nsw i32 %4063, %4060
  %4065 = icmp eq i32 %4064, 2
  %4066 = zext i1 %4065 to i8
  store i8 %4066, i8* %38, align 1
  %4067 = load i64, i64* %RBP.i, align 8
  %4068 = add i64 %4067, -104
  %4069 = add i64 %3921, 56
  store i64 %4069, i64* %3, align 8
  %4070 = inttoptr i64 %4068 to i32*
  store i32 %4041, i32* %4070, align 4
  %.pre106 = load i64, i64* %3, align 8
  br label %block_.L_489817

block_.L_489817:                                  ; preds = %block_.L_4897df, %block_4897d5
  %4071 = phi i64 [ %.pre106, %block_.L_4897df ], [ %3927, %block_4897d5 ]
  %4072 = load i64, i64* %RBP.i, align 8
  %4073 = add i64 %4072, -104
  %4074 = add i64 %4071, 3
  store i64 %4074, i64* %3, align 8
  %4075 = inttoptr i64 %4073 to i32*
  %4076 = load i32, i32* %4075, align 4
  %4077 = zext i32 %4076 to i64
  store i64 %4077, i64* %RAX.i1605, align 8
  %4078 = add i64 %4072, -100
  %4079 = add i64 %4071, 6
  store i64 %4079, i64* %3, align 8
  %4080 = inttoptr i64 %4078 to i32*
  %4081 = load i32, i32* %4080, align 4
  %4082 = zext i32 %4081 to i64
  store i64 %4082, i64* %RCX.i1172, align 8
  %4083 = sub i32 %4081, %4076
  %4084 = icmp ult i32 %4081, %4076
  %4085 = zext i1 %4084 to i8
  store i8 %4085, i8* %14, align 1
  %4086 = and i32 %4083, 255
  %4087 = tail call i32 @llvm.ctpop.i32(i32 %4086)
  %4088 = trunc i32 %4087 to i8
  %4089 = and i8 %4088, 1
  %4090 = xor i8 %4089, 1
  store i8 %4090, i8* %21, align 1
  %4091 = xor i32 %4076, %4081
  %4092 = xor i32 %4091, %4083
  %4093 = lshr i32 %4092, 4
  %4094 = trunc i32 %4093 to i8
  %4095 = and i8 %4094, 1
  store i8 %4095, i8* %26, align 1
  %4096 = icmp eq i32 %4083, 0
  %4097 = zext i1 %4096 to i8
  store i8 %4097, i8* %29, align 1
  %4098 = lshr i32 %4083, 31
  %4099 = trunc i32 %4098 to i8
  store i8 %4099, i8* %32, align 1
  %4100 = lshr i32 %4081, 31
  %4101 = lshr i32 %4076, 31
  %4102 = xor i32 %4101, %4100
  %4103 = xor i32 %4098, %4100
  %4104 = add nuw nsw i32 %4103, %4102
  %4105 = icmp eq i32 %4104, 2
  %4106 = zext i1 %4105 to i8
  store i8 %4106, i8* %38, align 1
  %4107 = icmp ne i8 %4099, 0
  %4108 = xor i1 %4107, %4105
  %.v129 = select i1 %4108, i64 14, i64 36
  %4109 = add i64 %4071, %.v129
  store i64 %4109, i64* %3, align 8
  br i1 %4108, label %block_489825, label %block_.L_48983b

block_489825:                                     ; preds = %block_.L_489817
  %4110 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*), align 8
  store i64 %4110, i64* %RAX.i1605, align 8
  %4111 = add i64 %4110, 72684
  %4112 = add i64 %4109, 14
  store i64 %4112, i64* %3, align 8
  %4113 = inttoptr i64 %4111 to i32*
  %4114 = load i32, i32* %4113, align 4
  %4115 = zext i32 %4114 to i64
  store i64 %4115, i64* %RCX.i1172, align 8
  %4116 = add i64 %4072, -108
  %4117 = add i64 %4109, 17
  store i64 %4117, i64* %3, align 8
  %4118 = inttoptr i64 %4116 to i32*
  store i32 %4114, i32* %4118, align 4
  %4119 = load i64, i64* %3, align 8
  %4120 = add i64 %4119, 140
  store i64 %4120, i64* %3, align 8
  br label %block_.L_4898c2

block_.L_48983b:                                  ; preds = %block_.L_489817
  store i64 0, i64* %RAX.i1605, align 8
  store i8 0, i8* %14, align 1
  store i8 1, i8* %21, align 1
  store i8 1, i8* %29, align 1
  store i8 0, i8* %32, align 1
  store i8 0, i8* %38, align 1
  store i8 0, i8* %26, align 1
  %4121 = add i64 %4072, -24
  %4122 = add i64 %4109, 5
  store i64 %4122, i64* %3, align 8
  %4123 = inttoptr i64 %4121 to i32*
  %4124 = load i32, i32* %4123, align 4
  %4125 = zext i32 %4124 to i64
  store i64 %4125, i64* %RCX.i1172, align 8
  %4126 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*), align 8
  %4127 = add i64 %4126, 4792
  store i64 %4127, i64* %RDX.i844, align 8
  %4128 = icmp ugt i64 %4126, -4793
  %4129 = zext i1 %4128 to i8
  store i8 %4129, i8* %14, align 1
  %4130 = trunc i64 %4127 to i32
  %4131 = and i32 %4130, 255
  %4132 = tail call i32 @llvm.ctpop.i32(i32 %4131)
  %4133 = trunc i32 %4132 to i8
  %4134 = and i8 %4133, 1
  %4135 = xor i8 %4134, 1
  store i8 %4135, i8* %21, align 1
  %4136 = xor i64 %4126, 16
  %4137 = xor i64 %4136, %4127
  %4138 = lshr i64 %4137, 4
  %4139 = trunc i64 %4138 to i8
  %4140 = and i8 %4139, 1
  store i8 %4140, i8* %26, align 1
  %4141 = icmp eq i64 %4127, 0
  %4142 = zext i1 %4141 to i8
  store i8 %4142, i8* %29, align 1
  %4143 = lshr i64 %4127, 63
  %4144 = trunc i64 %4143 to i8
  store i8 %4144, i8* %32, align 1
  %4145 = lshr i64 %4126, 63
  %4146 = xor i64 %4143, %4145
  %4147 = add nuw nsw i64 %4146, %4143
  %4148 = icmp eq i64 %4147, 2
  %4149 = zext i1 %4148 to i8
  store i8 %4149, i8* %38, align 1
  %4150 = add i64 %4072, -16
  %4151 = add i64 %4109, 24
  store i64 %4151, i64* %3, align 8
  %4152 = inttoptr i64 %4150 to i64*
  %4153 = load i64, i64* %4152, align 8
  store i64 %4153, i64* %RSI.i1621, align 8
  %4154 = add i64 %4109, 27
  store i64 %4154, i64* %3, align 8
  %4155 = inttoptr i64 %4153 to i32*
  %4156 = load i32, i32* %4155, align 4
  %4157 = sext i32 %4156 to i64
  %4158 = shl nsw i64 %4157, 9
  store i64 %4158, i64* %RSI.i1621, align 8
  %4159 = add i64 %4158, %4127
  store i64 %4159, i64* %RDX.i844, align 8
  %4160 = icmp ult i64 %4159, %4127
  %4161 = icmp ult i64 %4159, %4158
  %4162 = or i1 %4160, %4161
  %4163 = zext i1 %4162 to i8
  store i8 %4163, i8* %14, align 1
  %4164 = trunc i64 %4159 to i32
  %4165 = and i32 %4164, 255
  %4166 = tail call i32 @llvm.ctpop.i32(i32 %4165)
  %4167 = trunc i32 %4166 to i8
  %4168 = and i8 %4167, 1
  %4169 = xor i8 %4168, 1
  store i8 %4169, i8* %21, align 1
  %4170 = xor i64 %4127, %4159
  %4171 = lshr i64 %4170, 4
  %4172 = trunc i64 %4171 to i8
  %4173 = and i8 %4172, 1
  store i8 %4173, i8* %26, align 1
  %4174 = icmp eq i64 %4159, 0
  %4175 = zext i1 %4174 to i8
  store i8 %4175, i8* %29, align 1
  %4176 = lshr i64 %4159, 63
  %4177 = trunc i64 %4176 to i8
  store i8 %4177, i8* %32, align 1
  %4178 = lshr i64 %4157, 54
  %4179 = and i64 %4178, 1
  %4180 = xor i64 %4176, %4143
  %4181 = xor i64 %4176, %4179
  %4182 = add nuw nsw i64 %4180, %4181
  %4183 = icmp eq i64 %4182, 2
  %4184 = zext i1 %4183 to i8
  store i8 %4184, i8* %38, align 1
  %4185 = load i64, i64* %RBP.i, align 8
  %4186 = add i64 %4185, -40
  %4187 = add i64 %4109, 38
  store i64 %4187, i64* %3, align 8
  %4188 = inttoptr i64 %4186 to i32*
  %4189 = load i32, i32* %4188, align 4
  %4190 = sext i32 %4189 to i64
  %4191 = shl nsw i64 %4190, 5
  store i64 %4191, i64* %RSI.i1621, align 8
  %4192 = add i64 %4191, %4159
  store i64 %4192, i64* %RDX.i844, align 8
  %4193 = icmp ult i64 %4192, %4159
  %4194 = icmp ult i64 %4192, %4191
  %4195 = or i1 %4193, %4194
  %4196 = zext i1 %4195 to i8
  store i8 %4196, i8* %14, align 1
  %4197 = trunc i64 %4192 to i32
  %4198 = and i32 %4197, 255
  %4199 = tail call i32 @llvm.ctpop.i32(i32 %4198)
  %4200 = trunc i32 %4199 to i8
  %4201 = and i8 %4200, 1
  %4202 = xor i8 %4201, 1
  store i8 %4202, i8* %21, align 1
  %4203 = xor i64 %4159, %4192
  %4204 = lshr i64 %4203, 4
  %4205 = trunc i64 %4204 to i8
  %4206 = and i8 %4205, 1
  store i8 %4206, i8* %26, align 1
  %4207 = icmp eq i64 %4192, 0
  %4208 = zext i1 %4207 to i8
  store i8 %4208, i8* %29, align 1
  %4209 = lshr i64 %4192, 63
  %4210 = trunc i64 %4209 to i8
  store i8 %4210, i8* %32, align 1
  %4211 = lshr i64 %4190, 58
  %4212 = and i64 %4211, 1
  %4213 = xor i64 %4209, %4176
  %4214 = xor i64 %4209, %4212
  %4215 = add nuw nsw i64 %4213, %4214
  %4216 = icmp eq i64 %4215, 2
  %4217 = zext i1 %4216 to i8
  store i8 %4217, i8* %38, align 1
  %4218 = add i64 %4185, -36
  %4219 = add i64 %4109, 49
  store i64 %4219, i64* %3, align 8
  %4220 = inttoptr i64 %4218 to i32*
  %4221 = load i32, i32* %4220, align 4
  %4222 = sext i32 %4221 to i64
  store i64 %4222, i64* %RSI.i1621, align 8
  %4223 = shl nsw i64 %4222, 1
  %4224 = add i64 %4223, %4192
  %4225 = add i64 %4109, 53
  store i64 %4225, i64* %3, align 8
  %4226 = inttoptr i64 %4224 to i16*
  %4227 = load i16, i16* %4226, align 2
  %4228 = zext i16 %4227 to i64
  store i64 %4228, i64* %RDI.i1624, align 8
  %4229 = load i64, i64* %RCX.i1172, align 8
  %4230 = zext i16 %4227 to i32
  %4231 = trunc i64 %4229 to i32
  %4232 = add i32 %4230, %4231
  %4233 = zext i32 %4232 to i64
  store i64 %4233, i64* %RCX.i1172, align 8
  %4234 = lshr i32 %4232, 31
  %4235 = load i32, i32* %EAX.i1602, align 4
  %4236 = sub i32 %4235, %4232
  %4237 = icmp ult i32 %4235, %4232
  %4238 = zext i1 %4237 to i8
  store i8 %4238, i8* %14, align 1
  %4239 = and i32 %4236, 255
  %4240 = tail call i32 @llvm.ctpop.i32(i32 %4239)
  %4241 = trunc i32 %4240 to i8
  %4242 = and i8 %4241, 1
  %4243 = xor i8 %4242, 1
  store i8 %4243, i8* %21, align 1
  %4244 = xor i32 %4232, %4235
  %4245 = xor i32 %4244, %4236
  %4246 = lshr i32 %4245, 4
  %4247 = trunc i32 %4246 to i8
  %4248 = and i8 %4247, 1
  store i8 %4248, i8* %26, align 1
  %4249 = icmp eq i32 %4236, 0
  %4250 = zext i1 %4249 to i8
  store i8 %4250, i8* %29, align 1
  %4251 = lshr i32 %4236, 31
  %4252 = trunc i32 %4251 to i8
  store i8 %4252, i8* %32, align 1
  %4253 = lshr i32 %4235, 31
  %4254 = xor i32 %4234, %4253
  %4255 = xor i32 %4251, %4253
  %4256 = add nuw nsw i32 %4255, %4254
  %4257 = icmp eq i32 %4256, 2
  %4258 = zext i1 %4257 to i8
  store i8 %4258, i8* %38, align 1
  %4259 = icmp ne i8 %4252, 0
  %4260 = xor i1 %4259, %4257
  %4261 = or i1 %4249, %4260
  %.v130 = select i1 %4261, i64 73, i64 63
  %4262 = add i64 %4109, %.v130
  store i64 %4262, i64* %3, align 8
  br i1 %4261, label %block_.L_489884, label %block_48987a

block_48987a:                                     ; preds = %block_.L_48983b
  store i64 0, i64* %RAX.i1605, align 8
  store i8 0, i8* %14, align 1
  store i8 1, i8* %21, align 1
  store i8 1, i8* %29, align 1
  store i8 0, i8* %32, align 1
  store i8 0, i8* %38, align 1
  store i8 0, i8* %26, align 1
  %4263 = load i64, i64* %RBP.i, align 8
  %4264 = add i64 %4263, -112
  %4265 = add i64 %4262, 5
  store i64 %4265, i64* %3, align 8
  %4266 = inttoptr i64 %4264 to i32*
  store i32 0, i32* %4266, align 4
  %4267 = load i64, i64* %3, align 8
  %4268 = add i64 %4267, 61
  store i64 %4268, i64* %3, align 8
  br label %block_.L_4898bc

block_.L_489884:                                  ; preds = %block_.L_48983b
  %4269 = load i64, i64* %RBP.i, align 8
  %4270 = add i64 %4269, -24
  %4271 = add i64 %4262, 3
  store i64 %4271, i64* %3, align 8
  %4272 = inttoptr i64 %4270 to i32*
  %4273 = load i32, i32* %4272, align 4
  %4274 = zext i32 %4273 to i64
  store i64 %4274, i64* %RAX.i1605, align 8
  %4275 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*), align 8
  %4276 = add i64 %4275, 4792
  store i64 %4276, i64* %RCX.i1172, align 8
  %4277 = icmp ugt i64 %4275, -4793
  %4278 = zext i1 %4277 to i8
  store i8 %4278, i8* %14, align 1
  %4279 = trunc i64 %4276 to i32
  %4280 = and i32 %4279, 255
  %4281 = tail call i32 @llvm.ctpop.i32(i32 %4280)
  %4282 = trunc i32 %4281 to i8
  %4283 = and i8 %4282, 1
  %4284 = xor i8 %4283, 1
  store i8 %4284, i8* %21, align 1
  %4285 = xor i64 %4275, 16
  %4286 = xor i64 %4285, %4276
  %4287 = lshr i64 %4286, 4
  %4288 = trunc i64 %4287 to i8
  %4289 = and i8 %4288, 1
  store i8 %4289, i8* %26, align 1
  %4290 = icmp eq i64 %4276, 0
  %4291 = zext i1 %4290 to i8
  store i8 %4291, i8* %29, align 1
  %4292 = lshr i64 %4276, 63
  %4293 = trunc i64 %4292 to i8
  store i8 %4293, i8* %32, align 1
  %4294 = lshr i64 %4275, 63
  %4295 = xor i64 %4292, %4294
  %4296 = add nuw nsw i64 %4295, %4292
  %4297 = icmp eq i64 %4296, 2
  %4298 = zext i1 %4297 to i8
  store i8 %4298, i8* %38, align 1
  %4299 = add i64 %4269, -16
  %4300 = add i64 %4262, 22
  store i64 %4300, i64* %3, align 8
  %4301 = inttoptr i64 %4299 to i64*
  %4302 = load i64, i64* %4301, align 8
  store i64 %4302, i64* %RDX.i844, align 8
  %4303 = add i64 %4262, 25
  store i64 %4303, i64* %3, align 8
  %4304 = inttoptr i64 %4302 to i32*
  %4305 = load i32, i32* %4304, align 4
  %4306 = sext i32 %4305 to i64
  %4307 = shl nsw i64 %4306, 9
  store i64 %4307, i64* %RDX.i844, align 8
  %4308 = add i64 %4307, %4276
  store i64 %4308, i64* %RCX.i1172, align 8
  %4309 = icmp ult i64 %4308, %4276
  %4310 = icmp ult i64 %4308, %4307
  %4311 = or i1 %4309, %4310
  %4312 = zext i1 %4311 to i8
  store i8 %4312, i8* %14, align 1
  %4313 = trunc i64 %4308 to i32
  %4314 = and i32 %4313, 255
  %4315 = tail call i32 @llvm.ctpop.i32(i32 %4314)
  %4316 = trunc i32 %4315 to i8
  %4317 = and i8 %4316, 1
  %4318 = xor i8 %4317, 1
  store i8 %4318, i8* %21, align 1
  %4319 = xor i64 %4276, %4308
  %4320 = lshr i64 %4319, 4
  %4321 = trunc i64 %4320 to i8
  %4322 = and i8 %4321, 1
  store i8 %4322, i8* %26, align 1
  %4323 = icmp eq i64 %4308, 0
  %4324 = zext i1 %4323 to i8
  store i8 %4324, i8* %29, align 1
  %4325 = lshr i64 %4308, 63
  %4326 = trunc i64 %4325 to i8
  store i8 %4326, i8* %32, align 1
  %4327 = lshr i64 %4306, 54
  %4328 = and i64 %4327, 1
  %4329 = xor i64 %4325, %4292
  %4330 = xor i64 %4325, %4328
  %4331 = add nuw nsw i64 %4329, %4330
  %4332 = icmp eq i64 %4331, 2
  %4333 = zext i1 %4332 to i8
  store i8 %4333, i8* %38, align 1
  %4334 = load i64, i64* %RBP.i, align 8
  %4335 = add i64 %4334, -40
  %4336 = add i64 %4262, 36
  store i64 %4336, i64* %3, align 8
  %4337 = inttoptr i64 %4335 to i32*
  %4338 = load i32, i32* %4337, align 4
  %4339 = sext i32 %4338 to i64
  %4340 = shl nsw i64 %4339, 5
  store i64 %4340, i64* %RDX.i844, align 8
  %4341 = add i64 %4340, %4308
  store i64 %4341, i64* %RCX.i1172, align 8
  %4342 = icmp ult i64 %4341, %4308
  %4343 = icmp ult i64 %4341, %4340
  %4344 = or i1 %4342, %4343
  %4345 = zext i1 %4344 to i8
  store i8 %4345, i8* %14, align 1
  %4346 = trunc i64 %4341 to i32
  %4347 = and i32 %4346, 255
  %4348 = tail call i32 @llvm.ctpop.i32(i32 %4347)
  %4349 = trunc i32 %4348 to i8
  %4350 = and i8 %4349, 1
  %4351 = xor i8 %4350, 1
  store i8 %4351, i8* %21, align 1
  %4352 = xor i64 %4308, %4341
  %4353 = lshr i64 %4352, 4
  %4354 = trunc i64 %4353 to i8
  %4355 = and i8 %4354, 1
  store i8 %4355, i8* %26, align 1
  %4356 = icmp eq i64 %4341, 0
  %4357 = zext i1 %4356 to i8
  store i8 %4357, i8* %29, align 1
  %4358 = lshr i64 %4341, 63
  %4359 = trunc i64 %4358 to i8
  store i8 %4359, i8* %32, align 1
  %4360 = lshr i64 %4339, 58
  %4361 = and i64 %4360, 1
  %4362 = xor i64 %4358, %4325
  %4363 = xor i64 %4358, %4361
  %4364 = add nuw nsw i64 %4362, %4363
  %4365 = icmp eq i64 %4364, 2
  %4366 = zext i1 %4365 to i8
  store i8 %4366, i8* %38, align 1
  %4367 = add i64 %4334, -36
  %4368 = add i64 %4262, 47
  store i64 %4368, i64* %3, align 8
  %4369 = inttoptr i64 %4367 to i32*
  %4370 = load i32, i32* %4369, align 4
  %4371 = sext i32 %4370 to i64
  store i64 %4371, i64* %RDX.i844, align 8
  %4372 = shl nsw i64 %4371, 1
  %4373 = add i64 %4372, %4341
  %4374 = add i64 %4262, 51
  store i64 %4374, i64* %3, align 8
  %4375 = inttoptr i64 %4373 to i16*
  %4376 = load i16, i16* %4375, align 2
  %4377 = zext i16 %4376 to i64
  store i64 %4377, i64* %RSI.i1621, align 8
  %4378 = load i64, i64* %RAX.i1605, align 8
  %4379 = zext i16 %4376 to i32
  %4380 = zext i16 %4376 to i64
  %4381 = trunc i64 %4378 to i32
  %4382 = add i32 %4379, %4381
  %4383 = zext i32 %4382 to i64
  store i64 %4383, i64* %RAX.i1605, align 8
  %4384 = icmp ult i32 %4382, %4381
  %4385 = icmp ult i32 %4382, %4379
  %4386 = or i1 %4384, %4385
  %4387 = zext i1 %4386 to i8
  store i8 %4387, i8* %14, align 1
  %4388 = and i32 %4382, 255
  %4389 = tail call i32 @llvm.ctpop.i32(i32 %4388)
  %4390 = trunc i32 %4389 to i8
  %4391 = and i8 %4390, 1
  %4392 = xor i8 %4391, 1
  store i8 %4392, i8* %21, align 1
  %4393 = xor i64 %4380, %4378
  %4394 = trunc i64 %4393 to i32
  %4395 = xor i32 %4394, %4382
  %4396 = lshr i32 %4395, 4
  %4397 = trunc i32 %4396 to i8
  %4398 = and i8 %4397, 1
  store i8 %4398, i8* %26, align 1
  %4399 = icmp eq i32 %4382, 0
  %4400 = zext i1 %4399 to i8
  store i8 %4400, i8* %29, align 1
  %4401 = lshr i32 %4382, 31
  %4402 = trunc i32 %4401 to i8
  store i8 %4402, i8* %32, align 1
  %4403 = lshr i32 %4381, 31
  %4404 = xor i32 %4401, %4403
  %4405 = add nuw nsw i32 %4404, %4401
  %4406 = icmp eq i32 %4405, 2
  %4407 = zext i1 %4406 to i8
  store i8 %4407, i8* %38, align 1
  %4408 = load i64, i64* %RBP.i, align 8
  %4409 = add i64 %4408, -112
  %4410 = add i64 %4262, 56
  store i64 %4410, i64* %3, align 8
  %4411 = inttoptr i64 %4409 to i32*
  store i32 %4382, i32* %4411, align 4
  %.pre107 = load i64, i64* %3, align 8
  br label %block_.L_4898bc

block_.L_4898bc:                                  ; preds = %block_.L_489884, %block_48987a
  %4412 = phi i64 [ %.pre107, %block_.L_489884 ], [ %4268, %block_48987a ]
  %4413 = load i64, i64* %RBP.i, align 8
  %4414 = add i64 %4413, -112
  %4415 = add i64 %4412, 3
  store i64 %4415, i64* %3, align 8
  %4416 = inttoptr i64 %4414 to i32*
  %4417 = load i32, i32* %4416, align 4
  %4418 = zext i32 %4417 to i64
  store i64 %4418, i64* %RAX.i1605, align 8
  %4419 = add i64 %4413, -108
  %4420 = add i64 %4412, 6
  store i64 %4420, i64* %3, align 8
  %4421 = inttoptr i64 %4419 to i32*
  store i32 %4417, i32* %4421, align 4
  %.pre108 = load i64, i64* %3, align 8
  br label %block_.L_4898c2

block_.L_4898c2:                                  ; preds = %block_.L_4898bc, %block_489825
  %4422 = phi i64 [ %.pre108, %block_.L_4898bc ], [ %4120, %block_489825 ]
  %4423 = load i64, i64* %RBP.i, align 8
  %4424 = add i64 %4423, -108
  %4425 = add i64 %4422, 3
  store i64 %4425, i64* %3, align 8
  %4426 = inttoptr i64 %4424 to i32*
  %4427 = load i32, i32* %4426, align 4
  %4428 = zext i32 %4427 to i64
  store i64 %4428, i64* %RAX.i1605, align 8
  store i64 0, i64* %RCX.i1172, align 8
  store i8 0, i8* %14, align 1
  store i8 1, i8* %21, align 1
  store i8 1, i8* %29, align 1
  store i8 0, i8* %32, align 1
  store i8 0, i8* %38, align 1
  store i8 0, i8* %26, align 1
  %4429 = trunc i32 %4427 to i16
  store i16 %4429, i16* %DX.i527, align 2
  %4430 = load i64, i64* bitcast (%G_0x70fcf0_type* @G_0x70fcf0 to i64*), align 8
  store i64 %4430, i64* %RSI.i1621, align 8
  %4431 = add i64 %4430, 6424
  %4432 = add i64 %4422, 23
  store i64 %4432, i64* %3, align 8
  %4433 = inttoptr i64 %4431 to i64*
  %4434 = load i64, i64* %4433, align 8
  store i64 %4434, i64* %RSI.i1621, align 8
  %4435 = add i64 %4423, -52
  %4436 = add i64 %4422, 26
  store i64 %4436, i64* %3, align 8
  %4437 = inttoptr i64 %4435 to i32*
  %4438 = load i32, i32* %4437, align 4
  %4439 = zext i32 %4438 to i64
  store i64 %4439, i64* %RAX.i1605, align 8
  %4440 = add i64 %4423, -40
  %4441 = add i64 %4422, 29
  store i64 %4441, i64* %3, align 8
  %4442 = inttoptr i64 %4440 to i32*
  %4443 = load i32, i32* %4442, align 4
  %4444 = add i32 %4443, %4438
  %4445 = zext i32 %4444 to i64
  store i64 %4445, i64* %RAX.i1605, align 8
  %4446 = icmp ult i32 %4444, %4438
  %4447 = icmp ult i32 %4444, %4443
  %4448 = or i1 %4446, %4447
  %4449 = zext i1 %4448 to i8
  store i8 %4449, i8* %14, align 1
  %4450 = and i32 %4444, 255
  %4451 = tail call i32 @llvm.ctpop.i32(i32 %4450)
  %4452 = trunc i32 %4451 to i8
  %4453 = and i8 %4452, 1
  %4454 = xor i8 %4453, 1
  store i8 %4454, i8* %21, align 1
  %4455 = xor i32 %4443, %4438
  %4456 = xor i32 %4455, %4444
  %4457 = lshr i32 %4456, 4
  %4458 = trunc i32 %4457 to i8
  %4459 = and i8 %4458, 1
  store i8 %4459, i8* %26, align 1
  %4460 = icmp eq i32 %4444, 0
  %4461 = zext i1 %4460 to i8
  store i8 %4461, i8* %29, align 1
  %4462 = lshr i32 %4444, 31
  %4463 = trunc i32 %4462 to i8
  store i8 %4463, i8* %32, align 1
  %4464 = lshr i32 %4438, 31
  %4465 = lshr i32 %4443, 31
  %4466 = xor i32 %4462, %4464
  %4467 = xor i32 %4462, %4465
  %4468 = add nuw nsw i32 %4466, %4467
  %4469 = icmp eq i32 %4468, 2
  %4470 = zext i1 %4469 to i8
  store i8 %4470, i8* %38, align 1
  %4471 = sext i32 %4444 to i64
  store i64 %4471, i64* %RDI.i1624, align 8
  %4472 = shl nsw i64 %4471, 3
  %4473 = add i64 %4434, %4472
  %4474 = add i64 %4422, 36
  store i64 %4474, i64* %3, align 8
  %4475 = inttoptr i64 %4473 to i64*
  %4476 = load i64, i64* %4475, align 8
  store i64 %4476, i64* %RSI.i1621, align 8
  %4477 = load i64, i64* %RBP.i, align 8
  %4478 = add i64 %4477, -48
  %4479 = add i64 %4422, 39
  store i64 %4479, i64* %3, align 8
  %4480 = inttoptr i64 %4478 to i32*
  %4481 = load i32, i32* %4480, align 4
  %4482 = zext i32 %4481 to i64
  store i64 %4482, i64* %RAX.i1605, align 8
  %4483 = add i64 %4477, -36
  %4484 = add i64 %4422, 42
  store i64 %4484, i64* %3, align 8
  %4485 = inttoptr i64 %4483 to i32*
  %4486 = load i32, i32* %4485, align 4
  %4487 = add i32 %4486, %4481
  %4488 = zext i32 %4487 to i64
  store i64 %4488, i64* %RAX.i1605, align 8
  %4489 = icmp ult i32 %4487, %4481
  %4490 = icmp ult i32 %4487, %4486
  %4491 = or i1 %4489, %4490
  %4492 = zext i1 %4491 to i8
  store i8 %4492, i8* %14, align 1
  %4493 = and i32 %4487, 255
  %4494 = tail call i32 @llvm.ctpop.i32(i32 %4493)
  %4495 = trunc i32 %4494 to i8
  %4496 = and i8 %4495, 1
  %4497 = xor i8 %4496, 1
  store i8 %4497, i8* %21, align 1
  %4498 = xor i32 %4486, %4481
  %4499 = xor i32 %4498, %4487
  %4500 = lshr i32 %4499, 4
  %4501 = trunc i32 %4500 to i8
  %4502 = and i8 %4501, 1
  store i8 %4502, i8* %26, align 1
  %4503 = icmp eq i32 %4487, 0
  %4504 = zext i1 %4503 to i8
  store i8 %4504, i8* %29, align 1
  %4505 = lshr i32 %4487, 31
  %4506 = trunc i32 %4505 to i8
  store i8 %4506, i8* %32, align 1
  %4507 = lshr i32 %4481, 31
  %4508 = lshr i32 %4486, 31
  %4509 = xor i32 %4505, %4507
  %4510 = xor i32 %4505, %4508
  %4511 = add nuw nsw i32 %4509, %4510
  %4512 = icmp eq i32 %4511, 2
  %4513 = zext i1 %4512 to i8
  store i8 %4513, i8* %38, align 1
  %4514 = sext i32 %4487 to i64
  store i64 %4514, i64* %RDI.i1624, align 8
  %4515 = shl nsw i64 %4514, 1
  %4516 = add i64 %4476, %4515
  %4517 = load i16, i16* %DX.i527, align 2
  %4518 = add i64 %4422, 49
  store i64 %4518, i64* %3, align 8
  %4519 = inttoptr i64 %4516 to i16*
  store i16 %4517, i16* %4519, align 2
  %4520 = load i64, i64* %3, align 8
  %4521 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*), align 8
  store i64 %4521, i64* %RSI.i1621, align 8
  %4522 = add i64 %4521, 72688
  %4523 = add i64 %4520, 14
  store i64 %4523, i64* %3, align 8
  %4524 = inttoptr i64 %4522 to i32*
  %4525 = load i32, i32* %4524, align 4
  %4526 = zext i32 %4525 to i64
  store i64 %4526, i64* %RAX.i1605, align 8
  %4527 = load i64, i64* %RBP.i, align 8
  %4528 = add i64 %4527, -20
  %4529 = add i64 %4520, 18
  store i64 %4529, i64* %3, align 8
  %4530 = inttoptr i64 %4528 to i32*
  %4531 = load i32, i32* %4530, align 4
  %4532 = zext i32 %4531 to i64
  store i64 %4532, i64* %2571, align 8
  %4533 = add i64 %4521, 8504
  %4534 = lshr i64 %4533, 63
  %4535 = add i64 %4521, 10552
  store i64 %4535, i64* %RSI.i1621, align 8
  %4536 = icmp ugt i64 %4533, -2049
  %4537 = zext i1 %4536 to i8
  store i8 %4537, i8* %14, align 1
  %4538 = trunc i64 %4535 to i32
  %4539 = and i32 %4538, 255
  %4540 = tail call i32 @llvm.ctpop.i32(i32 %4539)
  %4541 = trunc i32 %4540 to i8
  %4542 = and i8 %4541, 1
  %4543 = xor i8 %4542, 1
  store i8 %4543, i8* %21, align 1
  %4544 = xor i64 %4535, %4533
  %4545 = lshr i64 %4544, 4
  %4546 = trunc i64 %4545 to i8
  %4547 = and i8 %4546, 1
  store i8 %4547, i8* %26, align 1
  %4548 = icmp eq i64 %4535, 0
  %4549 = zext i1 %4548 to i8
  store i8 %4549, i8* %29, align 1
  %4550 = lshr i64 %4535, 63
  %4551 = trunc i64 %4550 to i8
  store i8 %4551, i8* %32, align 1
  %4552 = xor i64 %4550, %4534
  %4553 = add nuw nsw i64 %4552, %4550
  %4554 = icmp eq i64 %4553, 2
  %4555 = zext i1 %4554 to i8
  store i8 %4555, i8* %38, align 1
  %4556 = add i64 %4527, -32
  %4557 = add i64 %4520, 44
  store i64 %4557, i64* %3, align 8
  %4558 = inttoptr i64 %4556 to i32*
  %4559 = load i32, i32* %4558, align 4
  %4560 = sext i32 %4559 to i64
  %4561 = shl nsw i64 %4560, 9
  store i64 %4561, i64* %RDI.i1624, align 8
  %4562 = add i64 %4561, %4535
  store i64 %4562, i64* %RSI.i1621, align 8
  %4563 = icmp ult i64 %4562, %4535
  %4564 = icmp ult i64 %4562, %4561
  %4565 = or i1 %4563, %4564
  %4566 = zext i1 %4565 to i8
  store i8 %4566, i8* %14, align 1
  %4567 = trunc i64 %4562 to i32
  %4568 = and i32 %4567, 255
  %4569 = tail call i32 @llvm.ctpop.i32(i32 %4568)
  %4570 = trunc i32 %4569 to i8
  %4571 = and i8 %4570, 1
  %4572 = xor i8 %4571, 1
  store i8 %4572, i8* %21, align 1
  %4573 = xor i64 %4535, %4562
  %4574 = lshr i64 %4573, 4
  %4575 = trunc i64 %4574 to i8
  %4576 = and i8 %4575, 1
  store i8 %4576, i8* %26, align 1
  %4577 = icmp eq i64 %4562, 0
  %4578 = zext i1 %4577 to i8
  store i8 %4578, i8* %29, align 1
  %4579 = lshr i64 %4562, 63
  %4580 = trunc i64 %4579 to i8
  store i8 %4580, i8* %32, align 1
  %4581 = lshr i64 %4560, 54
  %4582 = and i64 %4581, 1
  %4583 = xor i64 %4579, %4550
  %4584 = xor i64 %4579, %4582
  %4585 = add nuw nsw i64 %4583, %4584
  %4586 = icmp eq i64 %4585, 2
  %4587 = zext i1 %4586 to i8
  store i8 %4587, i8* %38, align 1
  %4588 = load i64, i64* %RBP.i, align 8
  %4589 = add i64 %4588, -36
  %4590 = add i64 %4520, 55
  store i64 %4590, i64* %3, align 8
  %4591 = inttoptr i64 %4589 to i32*
  %4592 = load i32, i32* %4591, align 4
  %4593 = sext i32 %4592 to i64
  %4594 = shl nsw i64 %4593, 5
  store i64 %4594, i64* %RDI.i1624, align 8
  %4595 = add i64 %4594, %4562
  store i64 %4595, i64* %RSI.i1621, align 8
  %4596 = icmp ult i64 %4595, %4562
  %4597 = icmp ult i64 %4595, %4594
  %4598 = or i1 %4596, %4597
  %4599 = zext i1 %4598 to i8
  store i8 %4599, i8* %14, align 1
  %4600 = trunc i64 %4595 to i32
  %4601 = and i32 %4600, 255
  %4602 = tail call i32 @llvm.ctpop.i32(i32 %4601)
  %4603 = trunc i32 %4602 to i8
  %4604 = and i8 %4603, 1
  %4605 = xor i8 %4604, 1
  store i8 %4605, i8* %21, align 1
  %4606 = xor i64 %4562, %4595
  %4607 = lshr i64 %4606, 4
  %4608 = trunc i64 %4607 to i8
  %4609 = and i8 %4608, 1
  store i8 %4609, i8* %26, align 1
  %4610 = icmp eq i64 %4595, 0
  %4611 = zext i1 %4610 to i8
  store i8 %4611, i8* %29, align 1
  %4612 = lshr i64 %4595, 63
  %4613 = trunc i64 %4612 to i8
  store i8 %4613, i8* %32, align 1
  %4614 = lshr i64 %4593, 58
  %4615 = and i64 %4614, 1
  %4616 = xor i64 %4612, %4579
  %4617 = xor i64 %4612, %4615
  %4618 = add nuw nsw i64 %4616, %4617
  %4619 = icmp eq i64 %4618, 2
  %4620 = zext i1 %4619 to i8
  store i8 %4620, i8* %38, align 1
  %4621 = add i64 %4588, -40
  %4622 = add i64 %4520, 66
  store i64 %4622, i64* %3, align 8
  %4623 = inttoptr i64 %4621 to i32*
  %4624 = load i32, i32* %4623, align 4
  %4625 = sext i32 %4624 to i64
  store i64 %4625, i64* %RDI.i1624, align 8
  %4626 = shl nsw i64 %4625, 1
  %4627 = add i64 %4626, %4595
  %4628 = add i64 %4520, 71
  store i64 %4628, i64* %3, align 8
  %4629 = inttoptr i64 %4627 to i16*
  %4630 = load i16, i16* %4629, align 2
  %4631 = zext i16 %4630 to i64
  store i64 %4631, i64* %2573, align 8
  %4632 = load i32, i32* %R8D.i827, align 4
  %4633 = zext i16 %4630 to i32
  %4634 = add i32 %4633, %4632
  %4635 = zext i32 %4634 to i64
  store i64 %4635, i64* %2571, align 8
  %4636 = lshr i32 %4634, 31
  %4637 = load i32, i32* %ECX.i635, align 4
  %4638 = sub i32 %4637, %4634
  %4639 = icmp ult i32 %4637, %4634
  %4640 = zext i1 %4639 to i8
  store i8 %4640, i8* %14, align 1
  %4641 = and i32 %4638, 255
  %4642 = tail call i32 @llvm.ctpop.i32(i32 %4641)
  %4643 = trunc i32 %4642 to i8
  %4644 = and i8 %4643, 1
  %4645 = xor i8 %4644, 1
  store i8 %4645, i8* %21, align 1
  %4646 = xor i32 %4634, %4637
  %4647 = xor i32 %4646, %4638
  %4648 = lshr i32 %4647, 4
  %4649 = trunc i32 %4648 to i8
  %4650 = and i8 %4649, 1
  store i8 %4650, i8* %26, align 1
  %4651 = icmp eq i32 %4638, 0
  %4652 = zext i1 %4651 to i8
  store i8 %4652, i8* %29, align 1
  %4653 = lshr i32 %4638, 31
  %4654 = trunc i32 %4653 to i8
  store i8 %4654, i8* %32, align 1
  %4655 = lshr i32 %4637, 31
  %4656 = xor i32 %4636, %4655
  %4657 = xor i32 %4653, %4655
  %4658 = add nuw nsw i32 %4657, %4656
  %4659 = icmp eq i32 %4658, 2
  %4660 = zext i1 %4659 to i8
  store i8 %4660, i8* %38, align 1
  %4661 = load i64, i64* %RBP.i, align 8
  %4662 = add i64 %4661, -116
  %4663 = load i32, i32* %EAX.i1602, align 4
  %4664 = add i64 %4520, 80
  store i64 %4664, i64* %3, align 8
  %4665 = inttoptr i64 %4662 to i32*
  store i32 %4663, i32* %4665, align 4
  %4666 = load i64, i64* %3, align 8
  %4667 = load i8, i8* %29, align 1
  %4668 = icmp ne i8 %4667, 0
  %4669 = load i8, i8* %32, align 1
  %4670 = icmp ne i8 %4669, 0
  %4671 = load i8, i8* %38, align 1
  %4672 = icmp ne i8 %4671, 0
  %4673 = xor i1 %4670, %4672
  %4674 = or i1 %4668, %4673
  %.v152 = select i1 %4674, i64 16, i64 6
  %4675 = add i64 %4666, %.v152
  store i64 %4675, i64* %3, align 8
  br i1 %4674, label %block_.L_489953, label %block_489949

block_489949:                                     ; preds = %block_.L_4898c2
  store i64 0, i64* %RAX.i1605, align 8
  store i8 0, i8* %14, align 1
  store i8 1, i8* %21, align 1
  store i8 1, i8* %29, align 1
  store i8 0, i8* %32, align 1
  store i8 0, i8* %38, align 1
  store i8 0, i8* %26, align 1
  %4676 = load i64, i64* %RBP.i, align 8
  %4677 = add i64 %4676, -120
  %4678 = add i64 %4675, 5
  store i64 %4678, i64* %3, align 8
  %4679 = inttoptr i64 %4677 to i32*
  store i32 0, i32* %4679, align 4
  %4680 = load i64, i64* %3, align 8
  %4681 = add i64 %4680, 65
  store i64 %4681, i64* %3, align 8
  br label %block_.L_48998f

block_.L_489953:                                  ; preds = %block_.L_4898c2
  %4682 = load i64, i64* %RBP.i, align 8
  %4683 = add i64 %4682, -20
  %4684 = add i64 %4675, 3
  store i64 %4684, i64* %3, align 8
  %4685 = inttoptr i64 %4683 to i32*
  %4686 = load i32, i32* %4685, align 4
  %4687 = zext i32 %4686 to i64
  store i64 %4687, i64* %RAX.i1605, align 8
  %4688 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*), align 8
  %4689 = add i64 %4688, 8504
  %4690 = lshr i64 %4689, 63
  %4691 = add i64 %4688, 10552
  store i64 %4691, i64* %RCX.i1172, align 8
  %4692 = icmp ugt i64 %4689, -2049
  %4693 = zext i1 %4692 to i8
  store i8 %4693, i8* %14, align 1
  %4694 = trunc i64 %4691 to i32
  %4695 = and i32 %4694, 255
  %4696 = tail call i32 @llvm.ctpop.i32(i32 %4695)
  %4697 = trunc i32 %4696 to i8
  %4698 = and i8 %4697, 1
  %4699 = xor i8 %4698, 1
  store i8 %4699, i8* %21, align 1
  %4700 = xor i64 %4691, %4689
  %4701 = lshr i64 %4700, 4
  %4702 = trunc i64 %4701 to i8
  %4703 = and i8 %4702, 1
  store i8 %4703, i8* %26, align 1
  %4704 = icmp eq i64 %4691, 0
  %4705 = zext i1 %4704 to i8
  store i8 %4705, i8* %29, align 1
  %4706 = lshr i64 %4691, 63
  %4707 = trunc i64 %4706 to i8
  store i8 %4707, i8* %32, align 1
  %4708 = xor i64 %4706, %4690
  %4709 = add nuw nsw i64 %4708, %4706
  %4710 = icmp eq i64 %4709, 2
  %4711 = zext i1 %4710 to i8
  store i8 %4711, i8* %38, align 1
  %4712 = add i64 %4682, -32
  %4713 = add i64 %4675, 29
  store i64 %4713, i64* %3, align 8
  %4714 = inttoptr i64 %4712 to i32*
  %4715 = load i32, i32* %4714, align 4
  %4716 = sext i32 %4715 to i64
  %4717 = shl nsw i64 %4716, 9
  store i64 %4717, i64* %RDX.i844, align 8
  %4718 = add i64 %4717, %4691
  store i64 %4718, i64* %RCX.i1172, align 8
  %4719 = icmp ult i64 %4718, %4691
  %4720 = icmp ult i64 %4718, %4717
  %4721 = or i1 %4719, %4720
  %4722 = zext i1 %4721 to i8
  store i8 %4722, i8* %14, align 1
  %4723 = trunc i64 %4718 to i32
  %4724 = and i32 %4723, 255
  %4725 = tail call i32 @llvm.ctpop.i32(i32 %4724)
  %4726 = trunc i32 %4725 to i8
  %4727 = and i8 %4726, 1
  %4728 = xor i8 %4727, 1
  store i8 %4728, i8* %21, align 1
  %4729 = xor i64 %4691, %4718
  %4730 = lshr i64 %4729, 4
  %4731 = trunc i64 %4730 to i8
  %4732 = and i8 %4731, 1
  store i8 %4732, i8* %26, align 1
  %4733 = icmp eq i64 %4718, 0
  %4734 = zext i1 %4733 to i8
  store i8 %4734, i8* %29, align 1
  %4735 = lshr i64 %4718, 63
  %4736 = trunc i64 %4735 to i8
  store i8 %4736, i8* %32, align 1
  %4737 = lshr i64 %4716, 54
  %4738 = and i64 %4737, 1
  %4739 = xor i64 %4735, %4706
  %4740 = xor i64 %4735, %4738
  %4741 = add nuw nsw i64 %4739, %4740
  %4742 = icmp eq i64 %4741, 2
  %4743 = zext i1 %4742 to i8
  store i8 %4743, i8* %38, align 1
  %4744 = load i64, i64* %RBP.i, align 8
  %4745 = add i64 %4744, -36
  %4746 = add i64 %4675, 40
  store i64 %4746, i64* %3, align 8
  %4747 = inttoptr i64 %4745 to i32*
  %4748 = load i32, i32* %4747, align 4
  %4749 = sext i32 %4748 to i64
  %4750 = shl nsw i64 %4749, 5
  store i64 %4750, i64* %RDX.i844, align 8
  %4751 = add i64 %4750, %4718
  store i64 %4751, i64* %RCX.i1172, align 8
  %4752 = icmp ult i64 %4751, %4718
  %4753 = icmp ult i64 %4751, %4750
  %4754 = or i1 %4752, %4753
  %4755 = zext i1 %4754 to i8
  store i8 %4755, i8* %14, align 1
  %4756 = trunc i64 %4751 to i32
  %4757 = and i32 %4756, 255
  %4758 = tail call i32 @llvm.ctpop.i32(i32 %4757)
  %4759 = trunc i32 %4758 to i8
  %4760 = and i8 %4759, 1
  %4761 = xor i8 %4760, 1
  store i8 %4761, i8* %21, align 1
  %4762 = xor i64 %4718, %4751
  %4763 = lshr i64 %4762, 4
  %4764 = trunc i64 %4763 to i8
  %4765 = and i8 %4764, 1
  store i8 %4765, i8* %26, align 1
  %4766 = icmp eq i64 %4751, 0
  %4767 = zext i1 %4766 to i8
  store i8 %4767, i8* %29, align 1
  %4768 = lshr i64 %4751, 63
  %4769 = trunc i64 %4768 to i8
  store i8 %4769, i8* %32, align 1
  %4770 = lshr i64 %4749, 58
  %4771 = and i64 %4770, 1
  %4772 = xor i64 %4768, %4735
  %4773 = xor i64 %4768, %4771
  %4774 = add nuw nsw i64 %4772, %4773
  %4775 = icmp eq i64 %4774, 2
  %4776 = zext i1 %4775 to i8
  store i8 %4776, i8* %38, align 1
  %4777 = add i64 %4744, -40
  %4778 = add i64 %4675, 51
  store i64 %4778, i64* %3, align 8
  %4779 = inttoptr i64 %4777 to i32*
  %4780 = load i32, i32* %4779, align 4
  %4781 = sext i32 %4780 to i64
  store i64 %4781, i64* %RDX.i844, align 8
  %4782 = shl nsw i64 %4781, 1
  %4783 = add i64 %4782, %4751
  %4784 = add i64 %4675, 55
  store i64 %4784, i64* %3, align 8
  %4785 = inttoptr i64 %4783 to i16*
  %4786 = load i16, i16* %4785, align 2
  %4787 = zext i16 %4786 to i64
  store i64 %4787, i64* %RSI.i1621, align 8
  %4788 = load i64, i64* %RAX.i1605, align 8
  %4789 = zext i16 %4786 to i32
  %4790 = zext i16 %4786 to i64
  %4791 = trunc i64 %4788 to i32
  %4792 = add i32 %4789, %4791
  %4793 = zext i32 %4792 to i64
  store i64 %4793, i64* %RAX.i1605, align 8
  %4794 = icmp ult i32 %4792, %4791
  %4795 = icmp ult i32 %4792, %4789
  %4796 = or i1 %4794, %4795
  %4797 = zext i1 %4796 to i8
  store i8 %4797, i8* %14, align 1
  %4798 = and i32 %4792, 255
  %4799 = tail call i32 @llvm.ctpop.i32(i32 %4798)
  %4800 = trunc i32 %4799 to i8
  %4801 = and i8 %4800, 1
  %4802 = xor i8 %4801, 1
  store i8 %4802, i8* %21, align 1
  %4803 = xor i64 %4790, %4788
  %4804 = trunc i64 %4803 to i32
  %4805 = xor i32 %4804, %4792
  %4806 = lshr i32 %4805, 4
  %4807 = trunc i32 %4806 to i8
  %4808 = and i8 %4807, 1
  store i8 %4808, i8* %26, align 1
  %4809 = icmp eq i32 %4792, 0
  %4810 = zext i1 %4809 to i8
  store i8 %4810, i8* %29, align 1
  %4811 = lshr i32 %4792, 31
  %4812 = trunc i32 %4811 to i8
  store i8 %4812, i8* %32, align 1
  %4813 = lshr i32 %4791, 31
  %4814 = xor i32 %4811, %4813
  %4815 = add nuw nsw i32 %4814, %4811
  %4816 = icmp eq i32 %4815, 2
  %4817 = zext i1 %4816 to i8
  store i8 %4817, i8* %38, align 1
  %4818 = load i64, i64* %RBP.i, align 8
  %4819 = add i64 %4818, -120
  %4820 = add i64 %4675, 60
  store i64 %4820, i64* %3, align 8
  %4821 = inttoptr i64 %4819 to i32*
  store i32 %4792, i32* %4821, align 4
  %.pre109 = load i64, i64* %3, align 8
  br label %block_.L_48998f

block_.L_48998f:                                  ; preds = %block_.L_489953, %block_489949
  %4822 = phi i64 [ %.pre109, %block_.L_489953 ], [ %4681, %block_489949 ]
  %4823 = load i64, i64* %RBP.i, align 8
  %4824 = add i64 %4823, -120
  %4825 = add i64 %4822, 3
  store i64 %4825, i64* %3, align 8
  %4826 = inttoptr i64 %4824 to i32*
  %4827 = load i32, i32* %4826, align 4
  %4828 = zext i32 %4827 to i64
  store i64 %4828, i64* %RAX.i1605, align 8
  %4829 = add i64 %4823, -116
  %4830 = add i64 %4822, 6
  store i64 %4830, i64* %3, align 8
  %4831 = inttoptr i64 %4829 to i32*
  %4832 = load i32, i32* %4831, align 4
  %4833 = zext i32 %4832 to i64
  store i64 %4833, i64* %RCX.i1172, align 8
  %4834 = sub i32 %4832, %4827
  %4835 = icmp ult i32 %4832, %4827
  %4836 = zext i1 %4835 to i8
  store i8 %4836, i8* %14, align 1
  %4837 = and i32 %4834, 255
  %4838 = tail call i32 @llvm.ctpop.i32(i32 %4837)
  %4839 = trunc i32 %4838 to i8
  %4840 = and i8 %4839, 1
  %4841 = xor i8 %4840, 1
  store i8 %4841, i8* %21, align 1
  %4842 = xor i32 %4827, %4832
  %4843 = xor i32 %4842, %4834
  %4844 = lshr i32 %4843, 4
  %4845 = trunc i32 %4844 to i8
  %4846 = and i8 %4845, 1
  store i8 %4846, i8* %26, align 1
  %4847 = icmp eq i32 %4834, 0
  %4848 = zext i1 %4847 to i8
  store i8 %4848, i8* %29, align 1
  %4849 = lshr i32 %4834, 31
  %4850 = trunc i32 %4849 to i8
  store i8 %4850, i8* %32, align 1
  %4851 = lshr i32 %4832, 31
  %4852 = lshr i32 %4827, 31
  %4853 = xor i32 %4852, %4851
  %4854 = xor i32 %4849, %4851
  %4855 = add nuw nsw i32 %4854, %4853
  %4856 = icmp eq i32 %4855, 2
  %4857 = zext i1 %4856 to i8
  store i8 %4857, i8* %38, align 1
  %4858 = icmp ne i8 %4850, 0
  %4859 = xor i1 %4858, %4856
  %.v131 = select i1 %4859, i64 14, i64 36
  %4860 = add i64 %4822, %.v131
  store i64 %4860, i64* %3, align 8
  br i1 %4859, label %block_48999d, label %block_.L_4899b3

block_48999d:                                     ; preds = %block_.L_48998f
  %4861 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*), align 8
  store i64 %4861, i64* %RAX.i1605, align 8
  %4862 = add i64 %4861, 72688
  %4863 = add i64 %4860, 14
  store i64 %4863, i64* %3, align 8
  %4864 = inttoptr i64 %4862 to i32*
  %4865 = load i32, i32* %4864, align 4
  %4866 = zext i32 %4865 to i64
  store i64 %4866, i64* %RCX.i1172, align 8
  %4867 = add i64 %4823, -124
  %4868 = add i64 %4860, 17
  store i64 %4868, i64* %3, align 8
  %4869 = inttoptr i64 %4867 to i32*
  store i32 %4865, i32* %4869, align 4
  %4870 = load i64, i64* %3, align 8
  %4871 = add i64 %4870, 148
  store i64 %4871, i64* %3, align 8
  br label %block_.L_489a42

block_.L_4899b3:                                  ; preds = %block_.L_48998f
  store i64 0, i64* %RAX.i1605, align 8
  store i8 0, i8* %14, align 1
  store i8 1, i8* %21, align 1
  store i8 1, i8* %29, align 1
  store i8 0, i8* %32, align 1
  store i8 0, i8* %38, align 1
  store i8 0, i8* %26, align 1
  %4872 = add i64 %4823, -20
  %4873 = add i64 %4860, 5
  store i64 %4873, i64* %3, align 8
  %4874 = inttoptr i64 %4872 to i32*
  %4875 = load i32, i32* %4874, align 4
  %4876 = zext i32 %4875 to i64
  store i64 %4876, i64* %RCX.i1172, align 8
  %4877 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*), align 8
  %4878 = add i64 %4877, 8504
  %4879 = lshr i64 %4878, 63
  %4880 = add i64 %4877, 10552
  store i64 %4880, i64* %RDX.i844, align 8
  %4881 = icmp ugt i64 %4878, -2049
  %4882 = zext i1 %4881 to i8
  store i8 %4882, i8* %14, align 1
  %4883 = trunc i64 %4880 to i32
  %4884 = and i32 %4883, 255
  %4885 = tail call i32 @llvm.ctpop.i32(i32 %4884)
  %4886 = trunc i32 %4885 to i8
  %4887 = and i8 %4886, 1
  %4888 = xor i8 %4887, 1
  store i8 %4888, i8* %21, align 1
  %4889 = xor i64 %4880, %4878
  %4890 = lshr i64 %4889, 4
  %4891 = trunc i64 %4890 to i8
  %4892 = and i8 %4891, 1
  store i8 %4892, i8* %26, align 1
  %4893 = icmp eq i64 %4880, 0
  %4894 = zext i1 %4893 to i8
  store i8 %4894, i8* %29, align 1
  %4895 = lshr i64 %4880, 63
  %4896 = trunc i64 %4895 to i8
  store i8 %4896, i8* %32, align 1
  %4897 = xor i64 %4895, %4879
  %4898 = add nuw nsw i64 %4897, %4895
  %4899 = icmp eq i64 %4898, 2
  %4900 = zext i1 %4899 to i8
  store i8 %4900, i8* %38, align 1
  %4901 = add i64 %4823, -32
  %4902 = add i64 %4860, 31
  store i64 %4902, i64* %3, align 8
  %4903 = inttoptr i64 %4901 to i32*
  %4904 = load i32, i32* %4903, align 4
  %4905 = sext i32 %4904 to i64
  %4906 = shl nsw i64 %4905, 9
  store i64 %4906, i64* %RSI.i1621, align 8
  %4907 = add i64 %4906, %4880
  store i64 %4907, i64* %RDX.i844, align 8
  %4908 = icmp ult i64 %4907, %4880
  %4909 = icmp ult i64 %4907, %4906
  %4910 = or i1 %4908, %4909
  %4911 = zext i1 %4910 to i8
  store i8 %4911, i8* %14, align 1
  %4912 = trunc i64 %4907 to i32
  %4913 = and i32 %4912, 255
  %4914 = tail call i32 @llvm.ctpop.i32(i32 %4913)
  %4915 = trunc i32 %4914 to i8
  %4916 = and i8 %4915, 1
  %4917 = xor i8 %4916, 1
  store i8 %4917, i8* %21, align 1
  %4918 = xor i64 %4880, %4907
  %4919 = lshr i64 %4918, 4
  %4920 = trunc i64 %4919 to i8
  %4921 = and i8 %4920, 1
  store i8 %4921, i8* %26, align 1
  %4922 = icmp eq i64 %4907, 0
  %4923 = zext i1 %4922 to i8
  store i8 %4923, i8* %29, align 1
  %4924 = lshr i64 %4907, 63
  %4925 = trunc i64 %4924 to i8
  store i8 %4925, i8* %32, align 1
  %4926 = lshr i64 %4905, 54
  %4927 = and i64 %4926, 1
  %4928 = xor i64 %4924, %4895
  %4929 = xor i64 %4924, %4927
  %4930 = add nuw nsw i64 %4928, %4929
  %4931 = icmp eq i64 %4930, 2
  %4932 = zext i1 %4931 to i8
  store i8 %4932, i8* %38, align 1
  %4933 = load i64, i64* %RBP.i, align 8
  %4934 = add i64 %4933, -36
  %4935 = add i64 %4860, 42
  store i64 %4935, i64* %3, align 8
  %4936 = inttoptr i64 %4934 to i32*
  %4937 = load i32, i32* %4936, align 4
  %4938 = sext i32 %4937 to i64
  %4939 = shl nsw i64 %4938, 5
  store i64 %4939, i64* %RSI.i1621, align 8
  %4940 = add i64 %4939, %4907
  store i64 %4940, i64* %RDX.i844, align 8
  %4941 = icmp ult i64 %4940, %4907
  %4942 = icmp ult i64 %4940, %4939
  %4943 = or i1 %4941, %4942
  %4944 = zext i1 %4943 to i8
  store i8 %4944, i8* %14, align 1
  %4945 = trunc i64 %4940 to i32
  %4946 = and i32 %4945, 255
  %4947 = tail call i32 @llvm.ctpop.i32(i32 %4946)
  %4948 = trunc i32 %4947 to i8
  %4949 = and i8 %4948, 1
  %4950 = xor i8 %4949, 1
  store i8 %4950, i8* %21, align 1
  %4951 = xor i64 %4907, %4940
  %4952 = lshr i64 %4951, 4
  %4953 = trunc i64 %4952 to i8
  %4954 = and i8 %4953, 1
  store i8 %4954, i8* %26, align 1
  %4955 = icmp eq i64 %4940, 0
  %4956 = zext i1 %4955 to i8
  store i8 %4956, i8* %29, align 1
  %4957 = lshr i64 %4940, 63
  %4958 = trunc i64 %4957 to i8
  store i8 %4958, i8* %32, align 1
  %4959 = lshr i64 %4938, 58
  %4960 = and i64 %4959, 1
  %4961 = xor i64 %4957, %4924
  %4962 = xor i64 %4957, %4960
  %4963 = add nuw nsw i64 %4961, %4962
  %4964 = icmp eq i64 %4963, 2
  %4965 = zext i1 %4964 to i8
  store i8 %4965, i8* %38, align 1
  %4966 = add i64 %4933, -40
  %4967 = add i64 %4860, 53
  store i64 %4967, i64* %3, align 8
  %4968 = inttoptr i64 %4966 to i32*
  %4969 = load i32, i32* %4968, align 4
  %4970 = sext i32 %4969 to i64
  store i64 %4970, i64* %RSI.i1621, align 8
  %4971 = shl nsw i64 %4970, 1
  %4972 = add i64 %4971, %4940
  %4973 = add i64 %4860, 57
  store i64 %4973, i64* %3, align 8
  %4974 = inttoptr i64 %4972 to i16*
  %4975 = load i16, i16* %4974, align 2
  %4976 = zext i16 %4975 to i64
  store i64 %4976, i64* %RDI.i1624, align 8
  %4977 = load i64, i64* %RCX.i1172, align 8
  %4978 = zext i16 %4975 to i32
  %4979 = trunc i64 %4977 to i32
  %4980 = add i32 %4978, %4979
  %4981 = zext i32 %4980 to i64
  store i64 %4981, i64* %RCX.i1172, align 8
  %4982 = lshr i32 %4980, 31
  %4983 = load i32, i32* %EAX.i1602, align 4
  %4984 = sub i32 %4983, %4980
  %4985 = icmp ult i32 %4983, %4980
  %4986 = zext i1 %4985 to i8
  store i8 %4986, i8* %14, align 1
  %4987 = and i32 %4984, 255
  %4988 = tail call i32 @llvm.ctpop.i32(i32 %4987)
  %4989 = trunc i32 %4988 to i8
  %4990 = and i8 %4989, 1
  %4991 = xor i8 %4990, 1
  store i8 %4991, i8* %21, align 1
  %4992 = xor i32 %4980, %4983
  %4993 = xor i32 %4992, %4984
  %4994 = lshr i32 %4993, 4
  %4995 = trunc i32 %4994 to i8
  %4996 = and i8 %4995, 1
  store i8 %4996, i8* %26, align 1
  %4997 = icmp eq i32 %4984, 0
  %4998 = zext i1 %4997 to i8
  store i8 %4998, i8* %29, align 1
  %4999 = lshr i32 %4984, 31
  %5000 = trunc i32 %4999 to i8
  store i8 %5000, i8* %32, align 1
  %5001 = lshr i32 %4983, 31
  %5002 = xor i32 %4982, %5001
  %5003 = xor i32 %4999, %5001
  %5004 = add nuw nsw i32 %5003, %5002
  %5005 = icmp eq i32 %5004, 2
  %5006 = zext i1 %5005 to i8
  store i8 %5006, i8* %38, align 1
  %5007 = icmp ne i8 %5000, 0
  %5008 = xor i1 %5007, %5005
  %5009 = or i1 %4997, %5008
  %.v132 = select i1 %5009, i64 77, i64 67
  %5010 = add i64 %4860, %.v132
  store i64 %5010, i64* %3, align 8
  br i1 %5009, label %block_.L_489a00, label %block_4899f6

block_4899f6:                                     ; preds = %block_.L_4899b3
  store i64 0, i64* %RAX.i1605, align 8
  store i8 0, i8* %14, align 1
  store i8 1, i8* %21, align 1
  store i8 1, i8* %29, align 1
  store i8 0, i8* %32, align 1
  store i8 0, i8* %38, align 1
  store i8 0, i8* %26, align 1
  %5011 = load i64, i64* %RBP.i, align 8
  %5012 = add i64 %5011, -128
  %5013 = add i64 %5010, 5
  store i64 %5013, i64* %3, align 8
  %5014 = inttoptr i64 %5012 to i32*
  store i32 0, i32* %5014, align 4
  %5015 = load i64, i64* %3, align 8
  %5016 = add i64 %5015, 65
  store i64 %5016, i64* %3, align 8
  br label %block_.L_489a3c

block_.L_489a00:                                  ; preds = %block_.L_4899b3
  %5017 = load i64, i64* %RBP.i, align 8
  %5018 = add i64 %5017, -20
  %5019 = add i64 %5010, 3
  store i64 %5019, i64* %3, align 8
  %5020 = inttoptr i64 %5018 to i32*
  %5021 = load i32, i32* %5020, align 4
  %5022 = zext i32 %5021 to i64
  store i64 %5022, i64* %RAX.i1605, align 8
  %5023 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*), align 8
  %5024 = add i64 %5023, 8504
  %5025 = lshr i64 %5024, 63
  %5026 = add i64 %5023, 10552
  store i64 %5026, i64* %RCX.i1172, align 8
  %5027 = icmp ugt i64 %5024, -2049
  %5028 = zext i1 %5027 to i8
  store i8 %5028, i8* %14, align 1
  %5029 = trunc i64 %5026 to i32
  %5030 = and i32 %5029, 255
  %5031 = tail call i32 @llvm.ctpop.i32(i32 %5030)
  %5032 = trunc i32 %5031 to i8
  %5033 = and i8 %5032, 1
  %5034 = xor i8 %5033, 1
  store i8 %5034, i8* %21, align 1
  %5035 = xor i64 %5026, %5024
  %5036 = lshr i64 %5035, 4
  %5037 = trunc i64 %5036 to i8
  %5038 = and i8 %5037, 1
  store i8 %5038, i8* %26, align 1
  %5039 = icmp eq i64 %5026, 0
  %5040 = zext i1 %5039 to i8
  store i8 %5040, i8* %29, align 1
  %5041 = lshr i64 %5026, 63
  %5042 = trunc i64 %5041 to i8
  store i8 %5042, i8* %32, align 1
  %5043 = xor i64 %5041, %5025
  %5044 = add nuw nsw i64 %5043, %5041
  %5045 = icmp eq i64 %5044, 2
  %5046 = zext i1 %5045 to i8
  store i8 %5046, i8* %38, align 1
  %5047 = add i64 %5017, -32
  %5048 = add i64 %5010, 29
  store i64 %5048, i64* %3, align 8
  %5049 = inttoptr i64 %5047 to i32*
  %5050 = load i32, i32* %5049, align 4
  %5051 = sext i32 %5050 to i64
  %5052 = shl nsw i64 %5051, 9
  store i64 %5052, i64* %RDX.i844, align 8
  %5053 = add i64 %5052, %5026
  store i64 %5053, i64* %RCX.i1172, align 8
  %5054 = icmp ult i64 %5053, %5026
  %5055 = icmp ult i64 %5053, %5052
  %5056 = or i1 %5054, %5055
  %5057 = zext i1 %5056 to i8
  store i8 %5057, i8* %14, align 1
  %5058 = trunc i64 %5053 to i32
  %5059 = and i32 %5058, 255
  %5060 = tail call i32 @llvm.ctpop.i32(i32 %5059)
  %5061 = trunc i32 %5060 to i8
  %5062 = and i8 %5061, 1
  %5063 = xor i8 %5062, 1
  store i8 %5063, i8* %21, align 1
  %5064 = xor i64 %5026, %5053
  %5065 = lshr i64 %5064, 4
  %5066 = trunc i64 %5065 to i8
  %5067 = and i8 %5066, 1
  store i8 %5067, i8* %26, align 1
  %5068 = icmp eq i64 %5053, 0
  %5069 = zext i1 %5068 to i8
  store i8 %5069, i8* %29, align 1
  %5070 = lshr i64 %5053, 63
  %5071 = trunc i64 %5070 to i8
  store i8 %5071, i8* %32, align 1
  %5072 = lshr i64 %5051, 54
  %5073 = and i64 %5072, 1
  %5074 = xor i64 %5070, %5041
  %5075 = xor i64 %5070, %5073
  %5076 = add nuw nsw i64 %5074, %5075
  %5077 = icmp eq i64 %5076, 2
  %5078 = zext i1 %5077 to i8
  store i8 %5078, i8* %38, align 1
  %5079 = load i64, i64* %RBP.i, align 8
  %5080 = add i64 %5079, -36
  %5081 = add i64 %5010, 40
  store i64 %5081, i64* %3, align 8
  %5082 = inttoptr i64 %5080 to i32*
  %5083 = load i32, i32* %5082, align 4
  %5084 = sext i32 %5083 to i64
  %5085 = shl nsw i64 %5084, 5
  store i64 %5085, i64* %RDX.i844, align 8
  %5086 = add i64 %5085, %5053
  store i64 %5086, i64* %RCX.i1172, align 8
  %5087 = icmp ult i64 %5086, %5053
  %5088 = icmp ult i64 %5086, %5085
  %5089 = or i1 %5087, %5088
  %5090 = zext i1 %5089 to i8
  store i8 %5090, i8* %14, align 1
  %5091 = trunc i64 %5086 to i32
  %5092 = and i32 %5091, 255
  %5093 = tail call i32 @llvm.ctpop.i32(i32 %5092)
  %5094 = trunc i32 %5093 to i8
  %5095 = and i8 %5094, 1
  %5096 = xor i8 %5095, 1
  store i8 %5096, i8* %21, align 1
  %5097 = xor i64 %5053, %5086
  %5098 = lshr i64 %5097, 4
  %5099 = trunc i64 %5098 to i8
  %5100 = and i8 %5099, 1
  store i8 %5100, i8* %26, align 1
  %5101 = icmp eq i64 %5086, 0
  %5102 = zext i1 %5101 to i8
  store i8 %5102, i8* %29, align 1
  %5103 = lshr i64 %5086, 63
  %5104 = trunc i64 %5103 to i8
  store i8 %5104, i8* %32, align 1
  %5105 = lshr i64 %5084, 58
  %5106 = and i64 %5105, 1
  %5107 = xor i64 %5103, %5070
  %5108 = xor i64 %5103, %5106
  %5109 = add nuw nsw i64 %5107, %5108
  %5110 = icmp eq i64 %5109, 2
  %5111 = zext i1 %5110 to i8
  store i8 %5111, i8* %38, align 1
  %5112 = add i64 %5079, -40
  %5113 = add i64 %5010, 51
  store i64 %5113, i64* %3, align 8
  %5114 = inttoptr i64 %5112 to i32*
  %5115 = load i32, i32* %5114, align 4
  %5116 = sext i32 %5115 to i64
  store i64 %5116, i64* %RDX.i844, align 8
  %5117 = shl nsw i64 %5116, 1
  %5118 = add i64 %5117, %5086
  %5119 = add i64 %5010, 55
  store i64 %5119, i64* %3, align 8
  %5120 = inttoptr i64 %5118 to i16*
  %5121 = load i16, i16* %5120, align 2
  %5122 = zext i16 %5121 to i64
  store i64 %5122, i64* %RSI.i1621, align 8
  %5123 = load i64, i64* %RAX.i1605, align 8
  %5124 = zext i16 %5121 to i32
  %5125 = zext i16 %5121 to i64
  %5126 = trunc i64 %5123 to i32
  %5127 = add i32 %5124, %5126
  %5128 = zext i32 %5127 to i64
  store i64 %5128, i64* %RAX.i1605, align 8
  %5129 = icmp ult i32 %5127, %5126
  %5130 = icmp ult i32 %5127, %5124
  %5131 = or i1 %5129, %5130
  %5132 = zext i1 %5131 to i8
  store i8 %5132, i8* %14, align 1
  %5133 = and i32 %5127, 255
  %5134 = tail call i32 @llvm.ctpop.i32(i32 %5133)
  %5135 = trunc i32 %5134 to i8
  %5136 = and i8 %5135, 1
  %5137 = xor i8 %5136, 1
  store i8 %5137, i8* %21, align 1
  %5138 = xor i64 %5125, %5123
  %5139 = trunc i64 %5138 to i32
  %5140 = xor i32 %5139, %5127
  %5141 = lshr i32 %5140, 4
  %5142 = trunc i32 %5141 to i8
  %5143 = and i8 %5142, 1
  store i8 %5143, i8* %26, align 1
  %5144 = icmp eq i32 %5127, 0
  %5145 = zext i1 %5144 to i8
  store i8 %5145, i8* %29, align 1
  %5146 = lshr i32 %5127, 31
  %5147 = trunc i32 %5146 to i8
  store i8 %5147, i8* %32, align 1
  %5148 = lshr i32 %5126, 31
  %5149 = xor i32 %5146, %5148
  %5150 = add nuw nsw i32 %5149, %5146
  %5151 = icmp eq i32 %5150, 2
  %5152 = zext i1 %5151 to i8
  store i8 %5152, i8* %38, align 1
  %5153 = load i64, i64* %RBP.i, align 8
  %5154 = add i64 %5153, -128
  %5155 = add i64 %5010, 60
  store i64 %5155, i64* %3, align 8
  %5156 = inttoptr i64 %5154 to i32*
  store i32 %5127, i32* %5156, align 4
  %.pre110 = load i64, i64* %3, align 8
  br label %block_.L_489a3c

block_.L_489a3c:                                  ; preds = %block_.L_489a00, %block_4899f6
  %5157 = phi i64 [ %.pre110, %block_.L_489a00 ], [ %5016, %block_4899f6 ]
  %5158 = load i64, i64* %RBP.i, align 8
  %5159 = add i64 %5158, -128
  %5160 = add i64 %5157, 3
  store i64 %5160, i64* %3, align 8
  %5161 = inttoptr i64 %5159 to i32*
  %5162 = load i32, i32* %5161, align 4
  %5163 = zext i32 %5162 to i64
  store i64 %5163, i64* %RAX.i1605, align 8
  %5164 = add i64 %5158, -124
  %5165 = add i64 %5157, 6
  store i64 %5165, i64* %3, align 8
  %5166 = inttoptr i64 %5164 to i32*
  store i32 %5162, i32* %5166, align 4
  %.pre111 = load i64, i64* %3, align 8
  br label %block_.L_489a42

block_.L_489a42:                                  ; preds = %block_.L_489a3c, %block_48999d
  %5167 = phi i64 [ %.pre111, %block_.L_489a3c ], [ %4871, %block_48999d ]
  %5168 = load i64, i64* %RBP.i, align 8
  %5169 = add i64 %5168, -124
  %5170 = add i64 %5167, 3
  store i64 %5170, i64* %3, align 8
  %5171 = inttoptr i64 %5169 to i32*
  %5172 = load i32, i32* %5171, align 4
  %5173 = zext i32 %5172 to i64
  store i64 %5173, i64* %RAX.i1605, align 8
  %5174 = trunc i32 %5172 to i16
  store i16 %5174, i16* %CX.i52, align 2
  %5175 = load i64, i64* bitcast (%G_0x70fcf0_type* @G_0x70fcf0 to i64*), align 8
  store i64 %5175, i64* %RDX.i844, align 8
  %5176 = add i64 %5175, 6464
  %5177 = add i64 %5167, 21
  store i64 %5177, i64* %3, align 8
  %5178 = inttoptr i64 %5176 to i64*
  %5179 = load i64, i64* %5178, align 8
  store i64 %5179, i64* %RDX.i844, align 8
  %5180 = add i64 %5179, 8
  %5181 = add i64 %5167, 25
  store i64 %5181, i64* %3, align 8
  %5182 = inttoptr i64 %5180 to i64*
  %5183 = load i64, i64* %5182, align 8
  store i64 %5183, i64* %RDX.i844, align 8
  %5184 = add i64 %5168, -52
  %5185 = add i64 %5167, 28
  store i64 %5185, i64* %3, align 8
  %5186 = inttoptr i64 %5184 to i32*
  %5187 = load i32, i32* %5186, align 4
  %5188 = zext i32 %5187 to i64
  store i64 %5188, i64* %RAX.i1605, align 8
  %5189 = add i64 %5168, -40
  %5190 = add i64 %5167, 31
  store i64 %5190, i64* %3, align 8
  %5191 = inttoptr i64 %5189 to i32*
  %5192 = load i32, i32* %5191, align 4
  %5193 = add i32 %5192, %5187
  %5194 = zext i32 %5193 to i64
  store i64 %5194, i64* %RAX.i1605, align 8
  %5195 = icmp ult i32 %5193, %5187
  %5196 = icmp ult i32 %5193, %5192
  %5197 = or i1 %5195, %5196
  %5198 = zext i1 %5197 to i8
  store i8 %5198, i8* %14, align 1
  %5199 = and i32 %5193, 255
  %5200 = tail call i32 @llvm.ctpop.i32(i32 %5199)
  %5201 = trunc i32 %5200 to i8
  %5202 = and i8 %5201, 1
  %5203 = xor i8 %5202, 1
  store i8 %5203, i8* %21, align 1
  %5204 = xor i32 %5192, %5187
  %5205 = xor i32 %5204, %5193
  %5206 = lshr i32 %5205, 4
  %5207 = trunc i32 %5206 to i8
  %5208 = and i8 %5207, 1
  store i8 %5208, i8* %26, align 1
  %5209 = icmp eq i32 %5193, 0
  %5210 = zext i1 %5209 to i8
  store i8 %5210, i8* %29, align 1
  %5211 = lshr i32 %5193, 31
  %5212 = trunc i32 %5211 to i8
  store i8 %5212, i8* %32, align 1
  %5213 = lshr i32 %5187, 31
  %5214 = lshr i32 %5192, 31
  %5215 = xor i32 %5211, %5213
  %5216 = xor i32 %5211, %5214
  %5217 = add nuw nsw i32 %5215, %5216
  %5218 = icmp eq i32 %5217, 2
  %5219 = zext i1 %5218 to i8
  store i8 %5219, i8* %38, align 1
  %5220 = sext i32 %5193 to i64
  store i64 %5220, i64* %RSI.i1621, align 8
  %5221 = shl nsw i64 %5220, 3
  %5222 = add i64 %5183, %5221
  %5223 = add i64 %5167, 38
  store i64 %5223, i64* %3, align 8
  %5224 = inttoptr i64 %5222 to i64*
  %5225 = load i64, i64* %5224, align 8
  store i64 %5225, i64* %RDX.i844, align 8
  %5226 = add i64 %5168, -48
  %5227 = add i64 %5167, 41
  store i64 %5227, i64* %3, align 8
  %5228 = inttoptr i64 %5226 to i32*
  %5229 = load i32, i32* %5228, align 4
  %5230 = zext i32 %5229 to i64
  store i64 %5230, i64* %RAX.i1605, align 8
  %5231 = add i64 %5168, -36
  %5232 = add i64 %5167, 44
  store i64 %5232, i64* %3, align 8
  %5233 = inttoptr i64 %5231 to i32*
  %5234 = load i32, i32* %5233, align 4
  %5235 = add i32 %5234, %5229
  %5236 = zext i32 %5235 to i64
  store i64 %5236, i64* %RAX.i1605, align 8
  %5237 = icmp ult i32 %5235, %5229
  %5238 = icmp ult i32 %5235, %5234
  %5239 = or i1 %5237, %5238
  %5240 = zext i1 %5239 to i8
  store i8 %5240, i8* %14, align 1
  %5241 = and i32 %5235, 255
  %5242 = tail call i32 @llvm.ctpop.i32(i32 %5241)
  %5243 = trunc i32 %5242 to i8
  %5244 = and i8 %5243, 1
  %5245 = xor i8 %5244, 1
  store i8 %5245, i8* %21, align 1
  %5246 = xor i32 %5234, %5229
  %5247 = xor i32 %5246, %5235
  %5248 = lshr i32 %5247, 4
  %5249 = trunc i32 %5248 to i8
  %5250 = and i8 %5249, 1
  store i8 %5250, i8* %26, align 1
  %5251 = icmp eq i32 %5235, 0
  %5252 = zext i1 %5251 to i8
  store i8 %5252, i8* %29, align 1
  %5253 = lshr i32 %5235, 31
  %5254 = trunc i32 %5253 to i8
  store i8 %5254, i8* %32, align 1
  %5255 = lshr i32 %5229, 31
  %5256 = lshr i32 %5234, 31
  %5257 = xor i32 %5253, %5255
  %5258 = xor i32 %5253, %5256
  %5259 = add nuw nsw i32 %5257, %5258
  %5260 = icmp eq i32 %5259, 2
  %5261 = zext i1 %5260 to i8
  store i8 %5261, i8* %38, align 1
  %5262 = sext i32 %5235 to i64
  store i64 %5262, i64* %RSI.i1621, align 8
  %5263 = shl nsw i64 %5262, 1
  %5264 = add i64 %5225, %5263
  %5265 = load i16, i16* %CX.i52, align 2
  %5266 = add i64 %5167, 51
  store i64 %5266, i64* %3, align 8
  %5267 = inttoptr i64 %5264 to i16*
  store i16 %5265, i16* %5267, align 2
  %5268 = load i64, i64* %RBP.i, align 8
  %5269 = add i64 %5268, -36
  %5270 = load i64, i64* %3, align 8
  %5271 = add i64 %5270, 3
  store i64 %5271, i64* %3, align 8
  %5272 = inttoptr i64 %5269 to i32*
  %5273 = load i32, i32* %5272, align 4
  %5274 = add i32 %5273, 1
  %5275 = zext i32 %5274 to i64
  store i64 %5275, i64* %RAX.i1605, align 8
  %5276 = icmp eq i32 %5273, -1
  %5277 = icmp eq i32 %5274, 0
  %5278 = or i1 %5276, %5277
  %5279 = zext i1 %5278 to i8
  store i8 %5279, i8* %14, align 1
  %5280 = and i32 %5274, 255
  %5281 = tail call i32 @llvm.ctpop.i32(i32 %5280)
  %5282 = trunc i32 %5281 to i8
  %5283 = and i8 %5282, 1
  %5284 = xor i8 %5283, 1
  store i8 %5284, i8* %21, align 1
  %5285 = xor i32 %5274, %5273
  %5286 = lshr i32 %5285, 4
  %5287 = trunc i32 %5286 to i8
  %5288 = and i8 %5287, 1
  store i8 %5288, i8* %26, align 1
  %5289 = zext i1 %5277 to i8
  store i8 %5289, i8* %29, align 1
  %5290 = lshr i32 %5274, 31
  %5291 = trunc i32 %5290 to i8
  store i8 %5291, i8* %32, align 1
  %5292 = lshr i32 %5273, 31
  %5293 = xor i32 %5290, %5292
  %5294 = add nuw nsw i32 %5293, %5290
  %5295 = icmp eq i32 %5294, 2
  %5296 = zext i1 %5295 to i8
  store i8 %5296, i8* %38, align 1
  %5297 = add i64 %5270, 9
  store i64 %5297, i64* %3, align 8
  store i32 %5274, i32* %5272, align 4
  %5298 = load i64, i64* %3, align 8
  %5299 = add i64 %5298, -1309
  store i64 %5299, i64* %3, align 8
  br label %block_.L_489561

block_.L_489a83:                                  ; preds = %block_.L_489561
  %5300 = add i64 %2610, -40
  %5301 = add i64 %2639, 8
  store i64 %5301, i64* %3, align 8
  %5302 = inttoptr i64 %5300 to i32*
  %5303 = load i32, i32* %5302, align 4
  %5304 = add i32 %5303, 1
  %5305 = zext i32 %5304 to i64
  store i64 %5305, i64* %RAX.i1605, align 8
  %5306 = icmp eq i32 %5303, -1
  %5307 = icmp eq i32 %5304, 0
  %5308 = or i1 %5306, %5307
  %5309 = zext i1 %5308 to i8
  store i8 %5309, i8* %14, align 1
  %5310 = and i32 %5304, 255
  %5311 = tail call i32 @llvm.ctpop.i32(i32 %5310)
  %5312 = trunc i32 %5311 to i8
  %5313 = and i8 %5312, 1
  %5314 = xor i8 %5313, 1
  store i8 %5314, i8* %21, align 1
  %5315 = xor i32 %5304, %5303
  %5316 = lshr i32 %5315, 4
  %5317 = trunc i32 %5316 to i8
  %5318 = and i8 %5317, 1
  store i8 %5318, i8* %26, align 1
  %5319 = zext i1 %5307 to i8
  store i8 %5319, i8* %29, align 1
  %5320 = lshr i32 %5304, 31
  %5321 = trunc i32 %5320 to i8
  store i8 %5321, i8* %32, align 1
  %5322 = lshr i32 %5303, 31
  %5323 = xor i32 %5320, %5322
  %5324 = add nuw nsw i32 %5323, %5320
  %5325 = icmp eq i32 %5324, 2
  %5326 = zext i1 %5325 to i8
  store i8 %5326, i8* %38, align 1
  %5327 = add i64 %2639, 14
  store i64 %5327, i64* %3, align 8
  store i32 %5304, i32* %5302, align 4
  %5328 = load i64, i64* %3, align 8
  %5329 = add i64 %5328, -1345
  store i64 %5329, i64* %3, align 8
  br label %block_.L_489550

block_.L_489a96:                                  ; preds = %block_.L_489550
  %5330 = add i64 %2605, 5
  store i64 %5330, i64* %3, align 8
  br label %block_.L_489a9b

block_.L_489a9b:                                  ; preds = %block_.L_489a96, %block_.L_4892f3
  %5331 = phi i64 [ %1536, %block_.L_4892f3 ], [ %5330, %block_.L_489a96 ]
  %MEMORY.21 = phi %struct.Memory* [ %call2_4892f9, %block_.L_4892f3 ], [ %call2_4894ab, %block_.L_489a96 ]
  %5332 = load i64, i64* %6, align 8
  %5333 = add i64 %5332, 128
  store i64 %5333, i64* %6, align 8
  %5334 = icmp ugt i64 %5332, -129
  %5335 = zext i1 %5334 to i8
  store i8 %5335, i8* %14, align 1
  %5336 = trunc i64 %5333 to i32
  %5337 = and i32 %5336, 255
  %5338 = tail call i32 @llvm.ctpop.i32(i32 %5337)
  %5339 = trunc i32 %5338 to i8
  %5340 = and i8 %5339, 1
  %5341 = xor i8 %5340, 1
  store i8 %5341, i8* %21, align 1
  %5342 = xor i64 %5333, %5332
  %5343 = lshr i64 %5342, 4
  %5344 = trunc i64 %5343 to i8
  %5345 = and i8 %5344, 1
  store i8 %5345, i8* %26, align 1
  %5346 = icmp eq i64 %5333, 0
  %5347 = zext i1 %5346 to i8
  store i8 %5347, i8* %29, align 1
  %5348 = lshr i64 %5333, 63
  %5349 = trunc i64 %5348 to i8
  store i8 %5349, i8* %32, align 1
  %5350 = lshr i64 %5332, 63
  %5351 = xor i64 %5348, %5350
  %5352 = add nuw nsw i64 %5351, %5348
  %5353 = icmp eq i64 %5352, 2
  %5354 = zext i1 %5353 to i8
  store i8 %5354, i8* %38, align 1
  %5355 = add i64 %5331, 8
  store i64 %5355, i64* %3, align 8
  %5356 = add i64 %5332, 136
  %5357 = inttoptr i64 %5333 to i64*
  %5358 = load i64, i64* %5357, align 8
  store i64 %5358, i64* %RBP.i, align 8
  store i64 %5356, i64* %6, align 8
  %5359 = add i64 %5331, 9
  store i64 %5359, i64* %3, align 8
  %5360 = inttoptr i64 %5356 to i64*
  %5361 = load i64, i64* %5360, align 8
  store i64 %5361, i64* %3, align 8
  %5362 = add i64 %5332, 144
  store i64 %5362, i64* %6, align 8
  ret %struct.Memory* %MEMORY.21
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
define %struct.Memory* @routine_subq__0x80___rsp(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %3 = load i64, i64* %RSP, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 7
  store i64 %5, i64* %PC, align 8
  %6 = add i64 %3, -128
  store i64 %6, i64* %RSP, align 8
  %7 = icmp ult i64 %3, 128
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
define %struct.Memory* @routine_movslq_0xc__rdi____rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %RDI, align 8
  %4 = add i64 %3, 12
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
define %struct.Memory* @routine_movl_0x20c__rsi____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %RSI, align 8
  %4 = add i64 %3, 524
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
define %struct.Memory* @routine_movl_0x98__rsi____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %RSI, align 8
  %4 = add i64 %3, 152
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
define %struct.Memory* @routine_movl_0x9c__rsi____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %RSI, align 8
  %4 = add i64 %3, 156
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
define %struct.Memory* @routine_movq__rsi__MINUS0x40__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -64
  %5 = load i64, i64* %RSI, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 4
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %4 to i64*
  store i64 %5, i64* %8, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_0x6f6f90___rsi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 8
  store i64 %4, i64* %PC, align 8
  %5 = load i64, i64* bitcast (%G_0x6f6f90_type* @G_0x6f6f90 to i64*), align 8
  store i64 %5, i64* %RSI, align 8
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
define %struct.Memory* @routine_callq_.intrapred_luma_16x16(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_cmpl__0x0__0x11c14__rsi_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %RSI, align 8
  %4 = add i64 %3, 72724
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
define %struct.Memory* @routine_jne_.L_4890b3(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movq_MINUS0x10__rbp____rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -16
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RDI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_callq_.find_sad_16x16(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_cmpl__0x0__0x11c14__rax_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = add i64 %3, 72724
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
define %struct.Memory* @routine_je_.L_4892f3(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl__0x0__MINUS0x28__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -40
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  store i32 0, i32* %7, align 4
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__0x10__MINUS0x28__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -40
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
define %struct.Memory* @routine_jge_.L_4892ee(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl__0x0__MINUS0x24__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -36
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  store i32 0, i32* %7, align 4
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__0x10__MINUS0x24__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -36
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
define %struct.Memory* @routine_jge_.L_4892db(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movq__0x723720___rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x723720_type* @G__0x723720 to i64), i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__0x6d40f0___rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x6d40f0_type* @G__0x6d40f0 to i64), i64* %RCX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__0x6f6fa0___rdx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x6f6fa0_type* @G__0x6f6fa0 to i64), i64* %RDX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_MINUS0x48__rbp____rsi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -72
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
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
define %struct.Memory* @routine_movl_MINUS0x34__rbp____edi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -52
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
define %struct.Memory* @routine_addl_MINUS0x28__rbp____edi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RDI, align 8
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -40
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 3
  store i64 %7, i64* %PC, align 8
  %8 = trunc i64 %3 to i32
  %9 = inttoptr i64 %5 to i32*
  %10 = load i32, i32* %9, align 4
  %11 = add i32 %10, %8
  %12 = zext i32 %11 to i64
  store i64 %12, i64* %RDI, align 8
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
define %struct.Memory* @routine_movslq__edi___r8(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0
  %EDI = bitcast %union.anon* %3 to i32*
  %R8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0, i32 0
  %4 = load i32, i32* %EDI, align 4
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 3
  store i64 %6, i64* %PC, align 8
  %7 = sext i32 %4 to i64
  store i64 %7, i64* %R8, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq___rsi__r8_8____rsi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %R8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0, i32 0
  %3 = load i64, i64* %RSI, align 8
  %4 = load i64, i64* %R8, align 8
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
define %struct.Memory* @routine_movl_MINUS0x30__rbp____edi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -48
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
define %struct.Memory* @routine_addl_MINUS0x24__rbp____edi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RDI, align 8
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -36
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 3
  store i64 %7, i64* %PC, align 8
  %8 = trunc i64 %3 to i32
  %9 = inttoptr i64 %5 to i32*
  %10 = load i32, i32* %9, align 4
  %11 = add i32 %10, %8
  %12 = zext i32 %11 to i64
  store i64 %12, i64* %RDI, align 8
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
define %struct.Memory* @routine_movzwl___rsi__r8_2____edi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %R8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0, i32 0
  %3 = load i64, i64* %RSI, align 8
  %4 = load i64, i64* %R8, align 8
  %5 = shl i64 %4, 1
  %6 = add i64 %5, %3
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 5
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %6 to i16*
  %10 = load i16, i16* %9, align 2
  %11 = zext i16 %10 to i64
  store i64 %11, i64* %RDI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_addq__0x2138___rsi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %RSI, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 7
  store i64 %5, i64* %PC, align 8
  %6 = add i64 %3, 8504
  store i64 %6, i64* %RSI, align 8
  %7 = icmp ugt i64 %3, -8505
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
define %struct.Memory* @routine_movslq_MINUS0x20__rbp____r8(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %R8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -32
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
define %struct.Memory* @routine_shlq__0x9___r8(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %R8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0, i32 0
  %3 = load i64, i64* %R8, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 4
  store i64 %5, i64* %PC, align 8
  %6 = shl i64 %3, 9
  store i64 %6, i64* %R8, align 8
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
define %struct.Memory* @routine_movslq_MINUS0x24__rbp____r8(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %R8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -36
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
define %struct.Memory* @routine_shlq__0x5___r8(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %R8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0, i32 0
  %3 = load i64, i64* %R8, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 4
  store i64 %5, i64* %PC, align 8
  %6 = shl i64 %3, 5
  store i64 %6, i64* %R8, align 8
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
define %struct.Memory* @routine_movslq_MINUS0x28__rbp____r8(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %R8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -40
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
define %struct.Memory* @routine_movzwl___rsi__r8_2____r9d(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %R8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 19, i32 0, i32 0
  %4 = load i64, i64* %RSI, align 8
  %5 = load i64, i64* %R8, align 8
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
define %struct.Memory* @routine_subl__r9d___edi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 19, i32 0
  %R9D = bitcast %union.anon* %3 to i32*
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %4 = load i64, i64* %RDI, align 8
  %5 = load i32, i32* %R9D, align 4
  %6 = zext i32 %5 to i64
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = trunc i64 %4 to i32
  %10 = sub i32 %9, %5
  %11 = zext i32 %10 to i64
  store i64 %11, i64* %RDI, align 8
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
define %struct.Memory* @routine_movl__edi__MINUS0x1c__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0
  %EDI = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -28
  %6 = load i32, i32* %EDI, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_MINUS0x40__rbp____rsi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -64
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RSI, align 8
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
define %struct.Memory* @routine_movslq___r8____r8(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %R8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0, i32 0
  %3 = bitcast i64* %R8 to i32**
  %4 = load i32*, i32** %3, align 8
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 3
  store i64 %6, i64* %PC, align 8
  %7 = load i32, i32* %4, align 4
  %8 = sext i32 %7 to i64
  store i64 %8, i64* %R8, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__edi__MINUS0x18__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0
  %EDI = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -24
  %6 = load i32, i32* %EDI, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
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

; Function Attrs: nounwind
define %struct.Memory* @routine_addq__0x800___rsi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %RSI, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 7
  store i64 %5, i64* %PC, align 8
  %6 = add i64 %3, 2048
  store i64 %6, i64* %RSI, align 8
  %7 = icmp ugt i64 %3, -2049
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
define %struct.Memory* @routine_movl__edi__MINUS0x14__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0
  %EDI = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -20
  %6 = load i32, i32* %EDI, align 4
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

; Function Attrs: nounwind
define %struct.Memory* @routine_subl_MINUS0x1c__rbp____edi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RDI, align 8
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -28
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 3
  store i64 %7, i64* %PC, align 8
  %8 = trunc i64 %3 to i32
  %9 = inttoptr i64 %5 to i32*
  %10 = load i32, i32* %9, align 4
  %11 = sub i32 %8, %10
  %12 = zext i32 %11 to i64
  store i64 %12, i64* %RDI, align 8
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
define %struct.Memory* @routine_movslq_MINUS0x24__rbp____rsi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -36
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
define %struct.Memory* @routine_movq__rdx___r8(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %R8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0, i32 0
  %3 = load i64, i64* %RDX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 3
  store i64 %5, i64* %PC, align 8
  store i64 %3, i64* %R8, align 8
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
define %struct.Memory* @routine_movslq_MINUS0x28__rbp____rsi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -40
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
define %struct.Memory* @routine_movl__edi____r8__rsi_4_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0
  %EDI = bitcast %union.anon* %3 to i32*
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %R8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0, i32 0
  %4 = load i64, i64* %R8, align 8
  %5 = load i64, i64* %RSI, align 8
  %6 = shl i64 %5, 2
  %7 = add i64 %6, %4
  %8 = load i32, i32* %EDI, align 4
  %9 = load i64, i64* %PC, align 8
  %10 = add i64 %9, 4
  store i64 %10, i64* %PC, align 8
  %11 = inttoptr i64 %7 to i32*
  store i32 %8, i32* %11, align 4
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
define %struct.Memory* @routine_movl___rdx__rsi_4____r9d(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 19, i32 0, i32 0
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

; Function Attrs: nounwind
define %struct.Memory* @routine_sarl__0x1___r9d(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 19, i32 0
  %R9D = bitcast %union.anon* %3 to i32*
  %4 = getelementptr inbounds %union.anon, %union.anon* %3, i64 0, i32 0
  %5 = load i32, i32* %R9D, align 4
  %6 = zext i32 %5 to i64
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = shl nuw i64 %6, 32
  %10 = ashr i64 %9, 33
  %11 = trunc i32 %5 to i8
  %12 = and i8 %11, 1
  %13 = trunc i64 %10 to i32
  %14 = and i64 %10, 4294967295
  store i64 %14, i64* %4, align 8
  %15 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %12, i8* %15, align 1
  %16 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %17 = and i32 %13, 255
  %18 = tail call i32 @llvm.ctpop.i32(i32 %17)
  %19 = trunc i32 %18 to i8
  %20 = and i8 %19, 1
  %21 = xor i8 %20, 1
  store i8 %21, i8* %16, align 1
  %22 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %22, align 1
  %23 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %24 = icmp eq i32 %13, 0
  %25 = zext i1 %24 to i8
  store i8 %25, i8* %23, align 1
  %26 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %27 = lshr i64 %10, 31
  %28 = trunc i64 %27 to i8
  %29 = and i8 %28, 1
  store i8 %29, i8* %26, align 1
  %30 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %30, align 1
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_addl__r9d___edi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 19, i32 0
  %R9D = bitcast %union.anon* %3 to i32*
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %4 = load i64, i64* %RDI, align 8
  %5 = load i32, i32* %R9D, align 4
  %6 = zext i32 %5 to i64
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
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
define %struct.Memory* @routine_movl__edi__MINUS0x2c__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0
  %EDI = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -44
  %6 = load i32, i32* %EDI, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x18__rbp____edi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -24
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
define %struct.Memory* @routine_subl_MINUS0x2c__rbp____edi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RDI, align 8
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -44
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 3
  store i64 %7, i64* %PC, align 8
  %8 = trunc i64 %3 to i32
  %9 = inttoptr i64 %5 to i32*
  %10 = load i32, i32* %9, align 4
  %11 = sub i32 %8, %10
  %12 = zext i32 %11 to i64
  store i64 %12, i64* %RDI, align 8
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
define %struct.Memory* @routine_movslq_MINUS0x24__rbp____rdx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -36
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

; Function Attrs: nounwind
define %struct.Memory* @routine_addq__rdx___rsi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %RSI, align 8
  %4 = load i64, i64* %RDX, align 8
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
define %struct.Memory* @routine_movslq_MINUS0x28__rbp____rdx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -40
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
define %struct.Memory* @routine_movl__edi____rsi__rdx_4_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0
  %EDI = bitcast %union.anon* %3 to i32*
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %4 = load i64, i64* %RSI, align 8
  %5 = load i64, i64* %RDX, align 8
  %6 = shl i64 %5, 2
  %7 = add i64 %6, %4
  %8 = load i32, i32* %EDI, align 4
  %9 = load i64, i64* %PC, align 8
  %10 = add i64 %9, 3
  store i64 %10, i64* %PC, align 8
  %11 = inttoptr i64 %7 to i32*
  store i32 %8, i32* %11, align 4
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
define %struct.Memory* @routine_movl___rcx__rdx_4____r9d(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 19, i32 0, i32 0
  %4 = load i64, i64* %RCX, align 8
  %5 = load i64, i64* %RDX, align 8
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
define %struct.Memory* @routine_movslq_MINUS0x24__rbp____rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -36
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
define %struct.Memory* @routine_movslq_MINUS0x28__rbp____rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -40
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
define %struct.Memory* @routine_movl__edi____rdx__rcx_4_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0
  %EDI = bitcast %union.anon* %3 to i32*
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %4 = load i64, i64* %RDX, align 8
  %5 = load i64, i64* %RCX, align 8
  %6 = shl i64 %5, 2
  %7 = add i64 %6, %4
  %8 = load i32, i32* %EDI, align 4
  %9 = load i64, i64* %PC, align 8
  %10 = add i64 %9, 3
  store i64 %10, i64* %PC, align 8
  %11 = inttoptr i64 %7 to i32*
  store i32 %8, i32* %11, align 4
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

; Function Attrs: nounwind
define %struct.Memory* @routine_addq__0x3338___rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 6
  store i64 %5, i64* %PC, align 8
  %6 = add i64 %3, 13112
  store i64 %6, i64* %RAX, align 8
  %7 = icmp ugt i64 %3, -13113
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
define %struct.Memory* @routine_movl__edi____rax__rcx_4_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0
  %EDI = bitcast %union.anon* %3 to i32*
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %4 = load i64, i64* %RAX, align 8
  %5 = load i64, i64* %RCX, align 8
  %6 = shl i64 %5, 2
  %7 = add i64 %6, %4
  %8 = load i32, i32* %EDI, align 4
  %9 = load i64, i64* %PC, align 8
  %10 = add i64 %9, 3
  store i64 %10, i64* %PC, align 8
  %11 = inttoptr i64 %7 to i32*
  store i32 %8, i32* %11, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x24__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -36
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_4890e0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_4892e0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
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
define %struct.Memory* @routine_jmpq_.L_4890cf(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_4892f3(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
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
define %struct.Memory* @routine_movl___rax____edi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = bitcast i64* %RAX to i32**
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
define %struct.Memory* @routine_callq_.dct_luma_16x16(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl__eax__0x1cc__rcx_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %4 = load i64, i64* %RCX, align 8
  %5 = add i64 %4, 460
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
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
define %struct.Memory* @routine_cmpl__0x0__0x11c14__rcx_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = add i64 %3, 72724
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
define %struct.Memory* @routine_je_.L_489a9b(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jge_.L_4893d9(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jge_.L_4893c6(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movq__0x6f6fa0___rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x6f6fa0_type* @G__0x6f6fa0 to i64), i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__0x722ff0___rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x722ff0_type* @G__0x722ff0 to i64), i64* %RCX, align 8
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

; Function Attrs: nounwind
define %struct.Memory* @routine_addq__0x3338___rdx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %RDX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 7
  store i64 %5, i64* %PC, align 8
  %6 = add i64 %3, 13112
  store i64 %6, i64* %RDX, align 8
  %7 = icmp ugt i64 %3, -13113
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
define %struct.Memory* @routine_movl__edi____rcx__rdx_4_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0
  %EDI = bitcast %union.anon* %3 to i32*
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %4 = load i64, i64* %RCX, align 8
  %5 = load i64, i64* %RDX, align 8
  %6 = shl i64 %5, 2
  %7 = add i64 %6, %4
  %8 = load i32, i32* %EDI, align 4
  %9 = load i64, i64* %PC, align 8
  %10 = add i64 %9, 3
  store i64 %10, i64* %PC, align 8
  %11 = inttoptr i64 %7 to i32*
  store i32 %8, i32* %11, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_489335(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_4893cb(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_489324(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_callq_.dct_chroma(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jge_.L_4894a3(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jge_.L_489490(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movq__0x6d40f0___rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x6d40f0_type* @G__0x6d40f0 to i64), i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__0x6f8f20___rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x6f8f20_type* @G__0x6f8f20 to i64), i64* %RCX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_4893ff(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_489495(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_4893ee(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x1___edi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 5
  store i64 %4, i64* %PC, align 8
  store i64 1, i64* %RDI, align 8
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jge_.L_489533(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jge_.L_489520(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movq__0x6d2ec0___rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x6d2ec0_type* @G__0x6d2ec0 to i64), i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_addq__0x3338___rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 7
  store i64 %5, i64* %PC, align 8
  %6 = add i64 %3, 13112
  store i64 %6, i64* %RCX, align 8
  %7 = icmp ugt i64 %3, -13113
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
define %struct.Memory* @routine_jmpq_.L_4894cb(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_489525(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_4894ba(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
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
define %struct.Memory* @routine_shll__0x4___eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 3
  store i64 %5, i64* %PC, align 8
  %.tr = trunc i64 %3 to i32
  %6 = shl i32 %.tr, 4
  %7 = zext i32 %6 to i64
  store i64 %7, i64* %RAX, align 8
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

; Function Attrs: nounwind
define %struct.Memory* @routine_addl_0x1cc__rcx____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %RCX, align 8
  %5 = add i64 %4, 460
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
define %struct.Memory* @routine_jge_.L_489a96(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jge_.L_489a83(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movq__0x6d2ec0___rdx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x6d2ec0_type* @G__0x6d2ec0 to i64), i64* %RDX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__0x722ff0___rsi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x722ff0_type* @G__0x722ff0 to i64), i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movslq_MINUS0x24__rbp____rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -36
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
define %struct.Memory* @routine_shlq__0x6___rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %RDI, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 4
  store i64 %5, i64* %PC, align 8
  %6 = shl i64 %3, 6
  store i64 %6, i64* %RDI, align 8
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
define %struct.Memory* @routine_movslq_MINUS0x28__rbp____rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -40
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
define %struct.Memory* @routine_movl___rsi__rdi_4____r8d(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0, i32 0
  %4 = load i64, i64* %RSI, align 8
  %5 = load i64, i64* %RDI, align 8
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
define %struct.Memory* @routine_movl___rdi__rsi_4____r9d(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 19, i32 0, i32 0
  %4 = load i64, i64* %RDI, align 8
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
define %struct.Memory* @routine_movl__r8d__MINUS0x2c__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0
  %R8D = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -44
  %6 = load i32, i32* %R8D, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 4
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
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

; Function Attrs: nounwind
define %struct.Memory* @routine_addl_MINUS0x2c__rbp____r8d(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0
  %R8D = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = getelementptr inbounds %union.anon, %union.anon* %3, i64 0, i32 0
  %5 = load i32, i32* %R8D, align 4
  %6 = load i64, i64* %RBP, align 8
  %7 = add i64 %6, -44
  %8 = load i64, i64* %PC, align 8
  %9 = add i64 %8, 4
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
define %struct.Memory* @routine_movl__r8d__MINUS0x18__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0
  %R8D = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -24
  %6 = load i32, i32* %R8D, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 4
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x2c__rbp____r8d(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -44
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
define %struct.Memory* @routine_movl___rsi__rdx_4____r9d(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 19, i32 0, i32 0
  %4 = load i64, i64* %RSI, align 8
  %5 = load i64, i64* %RDX, align 8
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
define %struct.Memory* @routine_movl_MINUS0x1c__rbp____r8d(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -28
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 4
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %5 to i32*
  %9 = load i32, i32* %8, align 4
  %10 = zext i32 %9 to i64
  store i64 %10, i64* %3, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_addl___rcx__rdx_4____r8d(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0
  %R8D = bitcast %union.anon* %3 to i32*
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %4 = getelementptr inbounds %union.anon, %union.anon* %3, i64 0, i32 0
  %5 = load i32, i32* %R8D, align 4
  %6 = load i64, i64* %RCX, align 8
  %7 = load i64, i64* %RDX, align 8
  %8 = shl i64 %7, 2
  %9 = add i64 %8, %6
  %10 = load i64, i64* %PC, align 8
  %11 = add i64 %10, 4
  store i64 %11, i64* %PC, align 8
  %12 = inttoptr i64 %9 to i32*
  %13 = load i32, i32* %12, align 4
  %14 = add i32 %13, %5
  %15 = zext i32 %14 to i64
  store i64 %15, i64* %4, align 8
  %16 = icmp ult i32 %14, %5
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
  %27 = xor i32 %13, %5
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
  %39 = lshr i32 %5, 31
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
define %struct.Memory* @routine_movl_0x11bf0__rcx____r8d(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0, i32 0
  %4 = load i64, i64* %RCX, align 8
  %5 = add i64 %4, 72688
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
define %struct.Memory* @routine_movl_MINUS0x1c__rbp____r9d(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 19, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -28
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 4
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %5 to i32*
  %9 = load i32, i32* %8, align 4
  %10 = zext i32 %9 to i64
  store i64 %10, i64* %3, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_addq__0x2138___rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 7
  store i64 %5, i64* %PC, align 8
  %6 = add i64 %3, 8504
  store i64 %6, i64* %RCX, align 8
  %7 = icmp ugt i64 %3, -8505
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
define %struct.Memory* @routine_movslq_MINUS0x20__rbp____rdx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -32
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
define %struct.Memory* @routine_shlq__0x9___rdx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %RDX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 4
  store i64 %5, i64* %PC, align 8
  %6 = shl i64 %3, 9
  store i64 %6, i64* %RDX, align 8
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
define %struct.Memory* @routine_shlq__0x5___rdx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %RDX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 4
  store i64 %5, i64* %PC, align 8
  %6 = shl i64 %3, 5
  store i64 %6, i64* %RDX, align 8
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
define %struct.Memory* @routine_movzwl___rcx__rdx_2____r10d(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 21, i32 0, i32 0
  %4 = load i64, i64* %RCX, align 8
  %5 = load i64, i64* %RDX, align 8
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
define %struct.Memory* @routine_addl__r10d___r9d(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 19, i32 0
  %R9D = bitcast %union.anon* %3 to i32*
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 21, i32 0
  %R10D = bitcast %union.anon* %4 to i32*
  %5 = getelementptr inbounds %union.anon, %union.anon* %3, i64 0, i32 0
  %6 = load i32, i32* %R9D, align 4
  %7 = load i32, i32* %R10D, align 4
  %8 = load i64, i64* %PC, align 8
  %9 = add i64 %8, 3
  store i64 %9, i64* %PC, align 8
  %10 = add i32 %7, %6
  %11 = zext i32 %10 to i64
  store i64 %11, i64* %5, align 8
  %12 = icmp ult i32 %10, %6
  %13 = icmp ult i32 %10, %7
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
  %23 = xor i32 %7, %6
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
  %35 = lshr i32 %6, 31
  %36 = lshr i32 %7, 31
  %37 = xor i32 %32, %35
  %38 = xor i32 %32, %36
  %39 = add nuw nsw i32 %37, %38
  %40 = icmp eq i32 %39, 2
  %41 = zext i1 %40 to i8
  %42 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %41, i8* %42, align 1
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__r9d___eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 19, i32 0
  %R9D = bitcast %union.anon* %4 to i32*
  %5 = load i32, i32* %EAX, align 4
  %6 = load i32, i32* %R9D, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
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
define %struct.Memory* @routine_movl__r8d__MINUS0x54__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0
  %R8D = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -84
  %6 = load i32, i32* %R8D, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 4
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jle_.L_489675(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jmpq_.L_4896aa(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_addl__esi___eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
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
define %struct.Memory* @routine_movl_MINUS0x58__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -88
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
define %struct.Memory* @routine_movl_MINUS0x54__rbp____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -84
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
define %struct.Memory* @routine_jge_.L_4896ce(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl__ecx__MINUS0x5c__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %ECX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -92
  %6 = load i32, i32* %ECX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_48974f(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
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

; Function Attrs: nounwind
define %struct.Memory* @routine_addq__0x2138___rdx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %RDX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 7
  store i64 %5, i64* %PC, align 8
  %6 = add i64 %3, 8504
  store i64 %6, i64* %RDX, align 8
  %7 = icmp ugt i64 %3, -8505
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
define %struct.Memory* @routine_movslq_MINUS0x20__rbp____rsi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -32
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
define %struct.Memory* @routine_shlq__0x9___rsi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %RSI, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 4
  store i64 %5, i64* %PC, align 8
  %6 = shl i64 %3, 9
  store i64 %6, i64* %RSI, align 8
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
define %struct.Memory* @routine_shlq__0x5___rsi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %RSI, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 4
  store i64 %5, i64* %PC, align 8
  %6 = shl i64 %3, 5
  store i64 %6, i64* %RSI, align 8
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
define %struct.Memory* @routine_movzwl___rdx__rsi_2____edi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
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
  store i64 %11, i64* %RDI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_addl__edi___ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0
  %EDI = bitcast %union.anon* %3 to i32*
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %4 = load i64, i64* %RCX, align 8
  %5 = load i32, i32* %EDI, align 4
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
define %struct.Memory* @routine_jle_.L_489714(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jmpq_.L_489749(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
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
define %struct.Memory* @routine_movl_MINUS0x5c__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -92
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
define %struct.Memory* @routine_movq_0x1940__rsi____rsi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %RSI, align 8
  %4 = add i64 %3, 6464
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RSI, align 8
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
define %struct.Memory* @routine_addl_MINUS0x28__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -40
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
define %struct.Memory* @routine_movslq__eax___rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %4 = load i32, i32* %EAX, align 4
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

; Function Attrs: nounwind
define %struct.Memory* @routine_addl_MINUS0x24__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -36
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
define %struct.Memory* @routine_movl_0x11bec__rsi____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %RSI, align 8
  %4 = add i64 %3, 72684
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
define %struct.Memory* @routine_movl_MINUS0x18__rbp____r8d(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -24
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
define %struct.Memory* @routine_movslq___rdi____rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = bitcast i64* %RDI to i32**
  %4 = load i32*, i32** %3, align 8
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 3
  store i64 %6, i64* %PC, align 8
  %7 = load i32, i32* %4, align 4
  %8 = sext i32 %7 to i64
  store i64 %8, i64* %RDI, align 8
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
define %struct.Memory* @routine_addl__r9d___r8d(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
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
  %10 = add i32 %7, %6
  %11 = zext i32 %10 to i64
  store i64 %11, i64* %5, align 8
  %12 = icmp ult i32 %10, %6
  %13 = icmp ult i32 %10, %7
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
  %23 = xor i32 %7, %6
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
  %35 = lshr i32 %6, 31
  %36 = lshr i32 %7, 31
  %37 = xor i32 %32, %35
  %38 = xor i32 %32, %36
  %39 = add nuw nsw i32 %37, %38
  %40 = icmp eq i32 %39, 2
  %41 = zext i1 %40 to i8
  %42 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %41, i8* %42, align 1
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__r8d___ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %ECX = bitcast %union.anon* %3 to i32*
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0
  %R8D = bitcast %union.anon* %4 to i32*
  %5 = load i32, i32* %ECX, align 4
  %6 = load i32, i32* %R8D, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jle_.L_4897df(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jmpq_.L_489817(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
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

; Function Attrs: nounwind
define %struct.Memory* @routine_addq__0x12b8___rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 7
  store i64 %5, i64* %PC, align 8
  %6 = add i64 %3, 4792
  store i64 %6, i64* %RCX, align 8
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movslq___rdx____rdx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = bitcast i64* %RDX to i32**
  %4 = load i32*, i32** %3, align 8
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 3
  store i64 %6, i64* %PC, align 8
  %7 = load i32, i32* %4, align 4
  %8 = sext i32 %7 to i64
  store i64 %8, i64* %RDX, align 8
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
define %struct.Memory* @routine_movl_MINUS0x64__rbp____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -100
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
define %struct.Memory* @routine_jge_.L_48983b(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl__ecx__MINUS0x6c__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %ECX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -108
  %6 = load i32, i32* %ECX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_4898c2(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x18__rbp____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -24
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
define %struct.Memory* @routine_addq__0x12b8___rdx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %RDX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 7
  store i64 %5, i64* %PC, align 8
  %6 = add i64 %3, 4792
  store i64 %6, i64* %RDX, align 8
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
define %struct.Memory* @routine_movslq___rsi____rsi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = bitcast i64* %RSI to i32**
  %4 = load i32*, i32** %3, align 8
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 3
  store i64 %6, i64* %PC, align 8
  %7 = load i32, i32* %4, align 4
  %8 = sext i32 %7 to i64
  store i64 %8, i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jle_.L_489884(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jmpq_.L_4898bc(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x70__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -112
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
define %struct.Memory* @routine_movq_0x1918__rsi____rsi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %RSI, align 8
  %4 = add i64 %3, 6424
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_0x11bf0__rsi____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %RSI, align 8
  %4 = add i64 %3, 72688
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
define %struct.Memory* @routine_movl_MINUS0x14__rbp____r8d(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -20
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
define %struct.Memory* @routine_movslq_MINUS0x20__rbp____rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -32
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
define %struct.Memory* @routine_jle_.L_489953(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jmpq_.L_48998f(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
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

; Function Attrs: nounwind
define %struct.Memory* @routine_addq__0x800___rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 7
  store i64 %5, i64* %PC, align 8
  %6 = add i64 %3, 2048
  store i64 %6, i64* %RCX, align 8
  %7 = icmp ugt i64 %3, -2049
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jge_.L_4899b3(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl__ecx__MINUS0x7c__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %ECX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -124
  %6 = load i32, i32* %ECX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_489a42(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x14__rbp____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -20
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
define %struct.Memory* @routine_addq__0x800___rdx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %RDX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 7
  store i64 %5, i64* %PC, align 8
  %6 = add i64 %3, 2048
  store i64 %6, i64* %RDX, align 8
  %7 = icmp ugt i64 %3, -2049
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
define %struct.Memory* @routine_jle_.L_489a00(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jmpq_.L_489a3c(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
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
define %struct.Memory* @routine_movq_0x70fcf0___rdx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 8
  store i64 %4, i64* %PC, align 8
  %5 = load i64, i64* bitcast (%G_0x70fcf0_type* @G_0x70fcf0 to i64*), align 8
  store i64 %5, i64* %RDX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_0x1940__rdx____rdx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %RDX, align 8
  %4 = add i64 %3, 6464
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RDX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_0x8__rdx____rdx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %RDX, align 8
  %4 = add i64 %3, 8
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RDX, align 8
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
define %struct.Memory* @routine_jmpq_.L_489561(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_489a88(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_489550(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_489a9b(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_addq__0x80___rsp(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %3 = load i64, i64* %RSP, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 7
  store i64 %5, i64* %PC, align 8
  %6 = add i64 %3, 128
  store i64 %6, i64* %RSP, align 8
  %7 = icmp ugt i64 %3, -129
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
