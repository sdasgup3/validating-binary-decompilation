; ModuleID = 'mcsema/test.proposed.inline.ll'
source_filename = "llvm-link"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu-elf"

%__bss_start_type = type <{ [8 x i8] }>
%G_0x24730__rip__type = type <{ [8 x i8] }>
%G_0x24762__rip__type = type <{ [8 x i8] }>
%G_0x2483e__rip__type = type <{ [8 x i8] }>
%G_0x6cb8f8_type = type <{ [8 x i8] }>
%G_0x6cb900_type = type <{ [8 x i8] }>
%G_0x6cb918_type = type <{ [8 x i8] }>
%G_0x6cc628_type = type <{ [8 x i8] }>
%G_0x6f6f90_type = type <{ [8 x i8] }>
%G_0x70fcf0_type = type <{ [8 x i8] }>
%G_0x722cb8_type = type <{ [8 x i8] }>
%G_0x726418_type = type <{ [8 x i8] }>
%G__0x6cc660_type = type <{ [8 x i8] }>
%G__0x6d0920_type = type <{ [8 x i8] }>
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
@G_0x24730__rip_ = global %G_0x24730__rip__type zeroinitializer
@G_0x24762__rip_ = global %G_0x24762__rip__type zeroinitializer
@G_0x2483e__rip_ = global %G_0x2483e__rip__type zeroinitializer
@G_0x6cb8f8 = local_unnamed_addr global %G_0x6cb8f8_type zeroinitializer
@G_0x6cb900 = local_unnamed_addr global %G_0x6cb900_type zeroinitializer
@G_0x6cb918 = local_unnamed_addr global %G_0x6cb918_type zeroinitializer
@G_0x6cc628 = local_unnamed_addr global %G_0x6cc628_type zeroinitializer
@G_0x6f6f90 = local_unnamed_addr global %G_0x6f6f90_type zeroinitializer
@G_0x70fcf0 = local_unnamed_addr global %G_0x70fcf0_type zeroinitializer
@G_0x722cb8 = local_unnamed_addr global %G_0x722cb8_type zeroinitializer
@G_0x726418 = local_unnamed_addr global %G_0x726418_type zeroinitializer
@G__0x6cc660 = global %G__0x6cc660_type zeroinitializer
@G__0x6d0920 = global %G__0x6d0920_type zeroinitializer

declare %struct.Memory* @__remill_error(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr

; Function Attrs: nounwind readnone
declare i32 @llvm.ctpop.i32(i32) #0

declare %struct.Memory* @sub_488020.SetModesAndRefframeForBlocks(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_440fa0.LumaResidualCoding(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_489ab0.SetCoeffAndReconstruction8x8(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_486b60.Mode_Decision_for_Intra4x4Macroblock(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_40bc60.dct_chroma_DC(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_489010.Intra16x16_Mode_Decision(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_4a3f60.Mode_Decision_for_new_Intra8x8Macroblock(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_41dca0.compute_residue_mb(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_441540.ChromaResidualCoding(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_487ff0.I16Offset(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_41ca20.decode_one_mb(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_49d8c0.store_coding_state(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_443f60.writeMBLayer(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_4ac700.ue_linfo(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_49dc00.reset_coding_state(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_48d340.field_flag_inference(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

; Function Attrs: alwaysinline
define %struct.Memory* @RDCost_for_macroblocks(%struct.State* noalias, i64, %struct.Memory* noalias) local_unnamed_addr #1 {
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
  %11 = add i64 %7, -200
  store i64 %11, i64* %6, align 8
  %12 = icmp ult i64 %8, 192
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
  %39 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1
  %40 = add i64 %7, -24
  %41 = add i64 %10, 15
  store i64 %41, i64* %3, align 8
  %42 = bitcast [32 x %union.VectorReg]* %39 to double*
  %43 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %39, i64 0, i64 0, i32 0, i32 0, i32 0, i64 0
  %44 = load i64, i64* %43, align 1
  %45 = inttoptr i64 %40 to i64*
  store i64 %44, i64* %45, align 8
  %46 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0
  %EDI.i659 = bitcast %union.anon* %46 to i32*
  %47 = load i64, i64* %RBP.i, align 8
  %48 = add i64 %47, -20
  %49 = load i32, i32* %EDI.i659, align 4
  %50 = load i64, i64* %3, align 8
  %51 = add i64 %50, 3
  store i64 %51, i64* %3, align 8
  %52 = inttoptr i64 %48 to i32*
  store i32 %49, i32* %52, align 4
  %53 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0
  %RSI.i1580 = getelementptr inbounds %union.anon, %union.anon* %53, i64 0, i32 0
  %54 = load i64, i64* %RBP.i, align 8
  %55 = add i64 %54, -32
  %56 = load i64, i64* %RSI.i1580, align 8
  %57 = load i64, i64* %3, align 8
  %58 = add i64 %57, 4
  store i64 %58, i64* %3, align 8
  %59 = inttoptr i64 %55 to i64*
  store i64 %56, i64* %59, align 8
  %60 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %EDX.i1577 = bitcast %union.anon* %60 to i32*
  %61 = load i64, i64* %RBP.i, align 8
  %62 = add i64 %61, -36
  %63 = load i32, i32* %EDX.i1577, align 4
  %64 = load i64, i64* %3, align 8
  %65 = add i64 %64, 3
  store i64 %65, i64* %3, align 8
  %66 = inttoptr i64 %62 to i32*
  store i32 %63, i32* %66, align 4
  %67 = load i64, i64* %RBP.i, align 8
  %68 = add i64 %67, -52
  %69 = load i64, i64* %3, align 8
  %70 = add i64 %69, 7
  store i64 %70, i64* %3, align 8
  %71 = inttoptr i64 %68 to i32*
  store i32 0, i32* %71, align 4
  %72 = load i64, i64* %RBP.i, align 8
  %73 = add i64 %72, -64
  %74 = load i64, i64* %3, align 8
  %75 = add i64 %74, 8
  store i64 %75, i64* %3, align 8
  %76 = inttoptr i64 %73 to i64*
  store i64 0, i64* %76, align 8
  %77 = load i64, i64* %3, align 8
  %78 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*), align 8
  store i64 %78, i64* %RSI.i1580, align 8
  %79 = add i64 %78, 14168
  %80 = add i64 %77, 15
  store i64 %80, i64* %3, align 8
  %81 = inttoptr i64 %79 to i64*
  %82 = load i64, i64* %81, align 8
  store i64 %82, i64* %RSI.i1580, align 8
  %83 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %RAX.i1567 = getelementptr inbounds %union.anon, %union.anon* %83, i64 0, i32 0
  store i64 %78, i64* %RAX.i1567, align 8
  %84 = add i64 %78, 12
  %85 = add i64 %77, 27
  store i64 %85, i64* %3, align 8
  %86 = inttoptr i64 %84 to i32*
  %87 = load i32, i32* %86, align 4
  %88 = sext i32 %87 to i64
  %89 = mul nsw i64 %88, 632
  %90 = lshr i64 %89, 63
  %91 = add i64 %89, %82
  store i64 %91, i64* %RSI.i1580, align 8
  %92 = icmp ult i64 %91, %82
  %93 = icmp ult i64 %91, %89
  %94 = or i1 %92, %93
  %95 = zext i1 %94 to i8
  store i8 %95, i8* %14, align 1
  %96 = trunc i64 %91 to i32
  %97 = and i32 %96, 255
  %98 = tail call i32 @llvm.ctpop.i32(i32 %97)
  %99 = trunc i32 %98 to i8
  %100 = and i8 %99, 1
  %101 = xor i8 %100, 1
  store i8 %101, i8* %21, align 1
  %102 = xor i64 %89, %82
  %103 = xor i64 %102, %91
  %104 = lshr i64 %103, 4
  %105 = trunc i64 %104 to i8
  %106 = and i8 %105, 1
  store i8 %106, i8* %26, align 1
  %107 = icmp eq i64 %91, 0
  %108 = zext i1 %107 to i8
  store i8 %108, i8* %29, align 1
  %109 = lshr i64 %91, 63
  %110 = trunc i64 %109 to i8
  store i8 %110, i8* %32, align 1
  %111 = lshr i64 %82, 63
  %112 = xor i64 %109, %111
  %113 = xor i64 %109, %90
  %114 = add nuw nsw i64 %112, %113
  %115 = icmp eq i64 %114, 2
  %116 = zext i1 %115 to i8
  store i8 %116, i8* %38, align 1
  %117 = load i64, i64* %RBP.i, align 8
  %118 = add i64 %117, -80
  %119 = add i64 %77, 41
  store i64 %119, i64* %3, align 8
  %120 = inttoptr i64 %118 to i64*
  store i64 %91, i64* %120, align 8
  %121 = load i64, i64* %3, align 8
  %122 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*), align 8
  store i64 %122, i64* %RAX.i1567, align 8
  %123 = add i64 %122, 12
  %124 = add i64 %121, 12
  store i64 %124, i64* %3, align 8
  %125 = inttoptr i64 %123 to i32*
  %126 = load i32, i32* %125, align 4
  store i8 0, i8* %14, align 1
  %127 = and i32 %126, 255
  %128 = tail call i32 @llvm.ctpop.i32(i32 %127)
  %129 = trunc i32 %128 to i8
  %130 = and i8 %129, 1
  %131 = xor i8 %130, 1
  store i8 %131, i8* %21, align 1
  store i8 0, i8* %26, align 1
  %132 = icmp eq i32 %126, 0
  %133 = zext i1 %132 to i8
  store i8 %133, i8* %29, align 1
  %134 = lshr i32 %126, 31
  %135 = trunc i32 %134 to i8
  store i8 %135, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %.v209 = select i1 %132, i64 72, i64 18
  %136 = add i64 %121, %.v209
  store i64 %136, i64* %3, align 8
  br i1 %132, label %block_.L_48c61a, label %block_48c5e4

block_48c5e4:                                     ; preds = %entry
  store i64 %122, i64* %RAX.i1567, align 8
  %137 = add i64 %122, 14168
  %138 = add i64 %136, 15
  store i64 %138, i64* %3, align 8
  %139 = inttoptr i64 %137 to i64*
  %140 = load i64, i64* %139, align 8
  store i64 %140, i64* %RAX.i1567, align 8
  %RCX.i1546 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  store i64 %122, i64* %RCX.i1546, align 8
  %RDX.i1544 = getelementptr inbounds %union.anon, %union.anon* %60, i64 0, i32 0
  %141 = add i64 %136, 26
  store i64 %141, i64* %3, align 8
  %142 = load i32, i32* %125, align 4
  %143 = add i32 %142, -1
  %144 = zext i32 %143 to i64
  store i64 %144, i64* %RDX.i1544, align 8
  %145 = sext i32 %143 to i64
  %146 = mul nsw i64 %145, 632
  store i64 %146, i64* %RCX.i1546, align 8
  %147 = lshr i64 %146, 63
  %148 = add i64 %146, %140
  store i64 %148, i64* %RAX.i1567, align 8
  %149 = icmp ult i64 %148, %140
  %150 = icmp ult i64 %148, %146
  %151 = or i1 %149, %150
  %152 = zext i1 %151 to i8
  store i8 %152, i8* %14, align 1
  %153 = trunc i64 %148 to i32
  %154 = and i32 %153, 255
  %155 = tail call i32 @llvm.ctpop.i32(i32 %154)
  %156 = trunc i32 %155 to i8
  %157 = and i8 %156, 1
  %158 = xor i8 %157, 1
  store i8 %158, i8* %21, align 1
  %159 = xor i64 %146, %140
  %160 = xor i64 %159, %148
  %161 = lshr i64 %160, 4
  %162 = trunc i64 %161 to i8
  %163 = and i8 %162, 1
  store i8 %163, i8* %26, align 1
  %164 = icmp eq i64 %148, 0
  %165 = zext i1 %164 to i8
  store i8 %165, i8* %29, align 1
  %166 = lshr i64 %148, 63
  %167 = trunc i64 %166 to i8
  store i8 %167, i8* %32, align 1
  %168 = lshr i64 %140, 63
  %169 = xor i64 %166, %168
  %170 = xor i64 %166, %147
  %171 = add nuw nsw i64 %169, %170
  %172 = icmp eq i64 %171, 2
  %173 = zext i1 %172 to i8
  store i8 %173, i8* %38, align 1
  %174 = load i64, i64* %RBP.i, align 8
  %175 = add i64 %174, -136
  %176 = add i64 %136, 49
  store i64 %176, i64* %3, align 8
  %177 = inttoptr i64 %175 to i64*
  store i64 %148, i64* %177, align 8
  %178 = load i64, i64* %3, align 8
  %179 = add i64 %178, 21
  br label %block_.L_48c62a

block_.L_48c61a:                                  ; preds = %entry
  store i64 0, i64* %RAX.i1567, align 8
  store i8 0, i8* %14, align 1
  store i8 1, i8* %21, align 1
  store i8 1, i8* %29, align 1
  store i8 0, i8* %32, align 1
  store i8 0, i8* %38, align 1
  store i8 0, i8* %26, align 1
  %RCX.i1524 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  store i64 0, i64* %RCX.i1524, align 8
  %180 = load i64, i64* %RBP.i, align 8
  %181 = add i64 %180, -136
  %182 = add i64 %136, 11
  store i64 %182, i64* %3, align 8
  %183 = inttoptr i64 %181 to i64*
  store i64 0, i64* %183, align 8
  %184 = load i64, i64* %3, align 8
  %185 = add i64 %184, 5
  store i64 %185, i64* %3, align 8
  br label %block_.L_48c62a

block_.L_48c62a:                                  ; preds = %block_.L_48c61a, %block_48c5e4
  %storemerge = phi i64 [ %179, %block_48c5e4 ], [ %185, %block_.L_48c61a ]
  %186 = load i64, i64* %RBP.i, align 8
  %187 = add i64 %186, -136
  %188 = add i64 %storemerge, 7
  store i64 %188, i64* %3, align 8
  %189 = inttoptr i64 %187 to i64*
  %190 = load i64, i64* %189, align 8
  %191 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %RCX.i1514 = getelementptr inbounds %union.anon, %union.anon* %191, i64 0, i32 0
  store i64 0, i64* %RCX.i1514, align 8
  store i8 0, i8* %14, align 1
  store i8 1, i8* %21, align 1
  store i8 1, i8* %29, align 1
  store i8 0, i8* %32, align 1
  store i8 0, i8* %38, align 1
  store i8 0, i8* %26, align 1
  %CL.i1510 = bitcast %union.anon* %191 to i8*
  %DL.i1511 = bitcast %union.anon* %60 to i8*
  store i8 0, i8* %DL.i1511, align 1
  %192 = add i64 %186, -88
  %193 = add i64 %storemerge, 15
  store i64 %193, i64* %3, align 8
  %194 = inttoptr i64 %192 to i64*
  store i64 %190, i64* %194, align 8
  %195 = load i64, i64* %3, align 8
  %196 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*), align 8
  store i64 %196, i64* %RAX.i1567, align 8
  %197 = add i64 %196, 24
  %198 = add i64 %195, 12
  store i64 %198, i64* %3, align 8
  %199 = inttoptr i64 %197 to i32*
  %200 = load i32, i32* %199, align 4
  %201 = icmp eq i32 %200, 1
  %202 = zext i1 %201 to i8
  %SIL.i1501 = bitcast %union.anon* %53 to i8*
  store i8 %202, i8* %SIL.i1501, align 1
  store i8 0, i8* %14, align 1
  %203 = zext i1 %201 to i32
  %204 = tail call i32 @llvm.ctpop.i32(i32 %203)
  %205 = trunc i32 %204 to i8
  %206 = xor i8 %205, 1
  store i8 %206, i8* %21, align 1
  %207 = xor i8 %202, 1
  store i8 %207, i8* %29, align 1
  store i8 0, i8* %32, align 1
  store i8 0, i8* %38, align 1
  store i8 0, i8* %26, align 1
  %208 = zext i1 %201 to i64
  store i64 %208, i64* %RCX.i1514, align 8
  %209 = load i64, i64* %RBP.i, align 8
  %210 = add i64 %209, -92
  %211 = zext i1 %201 to i32
  %212 = add i64 %195, 27
  store i64 %212, i64* %3, align 8
  %213 = inttoptr i64 %210 to i32*
  store i32 %211, i32* %213, align 4
  %214 = load i64, i64* %3, align 8
  %215 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*), align 8
  store i64 %215, i64* %RAX.i1567, align 8
  %216 = add i64 %215, 24
  %217 = add i64 %214, 12
  store i64 %217, i64* %3, align 8
  %218 = inttoptr i64 %216 to i32*
  %219 = load i32, i32* %218, align 4
  %220 = add i32 %219, -2
  %221 = icmp ult i32 %219, 2
  %222 = zext i1 %221 to i8
  store i8 %222, i8* %14, align 1
  %223 = and i32 %220, 255
  %224 = tail call i32 @llvm.ctpop.i32(i32 %223)
  %225 = trunc i32 %224 to i8
  %226 = and i8 %225, 1
  %227 = xor i8 %226, 1
  store i8 %227, i8* %21, align 1
  %228 = xor i32 %220, %219
  %229 = lshr i32 %228, 4
  %230 = trunc i32 %229 to i8
  %231 = and i8 %230, 1
  store i8 %231, i8* %26, align 1
  %232 = icmp eq i32 %220, 0
  %233 = zext i1 %232 to i8
  store i8 %233, i8* %29, align 1
  %234 = lshr i32 %220, 31
  %235 = trunc i32 %234 to i8
  store i8 %235, i8* %32, align 1
  %236 = lshr i32 %219, 31
  %237 = xor i32 %234, %236
  %238 = add nuw nsw i32 %237, %236
  %239 = icmp eq i32 %238, 2
  %240 = zext i1 %239 to i8
  store i8 %240, i8* %38, align 1
  %241 = load i64, i64* %RBP.i, align 8
  %242 = add i64 %241, -137
  %243 = load i8, i8* %DL.i1511, align 1
  %244 = add i64 %214, 18
  store i64 %244, i64* %3, align 8
  %245 = inttoptr i64 %242 to i8*
  store i8 %243, i8* %245, align 1
  %246 = load i64, i64* %3, align 8
  %247 = load i8, i8* %29, align 1
  %248 = icmp ne i8 %247, 0
  %.v301 = select i1 %248, i64 30, i64 6
  %249 = add i64 %246, %.v301
  store i64 %249, i64* %3, align 8
  %cmpBr_48c666 = icmp eq i8 %247, 1
  br i1 %cmpBr_48c666, label %block_.L_48c684, label %block_48c66c

block_48c66c:                                     ; preds = %block_.L_48c62a
  %250 = load i64, i64* bitcast (%G_0x6cb8f8_type* @G_0x6cb8f8 to i64*), align 8
  store i64 %250, i64* %RAX.i1567, align 8
  %251 = add i64 %250, 2356
  %252 = add i64 %249, 15
  store i64 %252, i64* %3, align 8
  %253 = inttoptr i64 %251 to i32*
  %254 = load i32, i32* %253, align 4
  %255 = add i32 %254, -1
  %256 = icmp eq i32 %254, 0
  %257 = zext i1 %256 to i8
  store i8 %257, i8* %14, align 1
  %258 = and i32 %255, 255
  %259 = tail call i32 @llvm.ctpop.i32(i32 %258)
  %260 = trunc i32 %259 to i8
  %261 = and i8 %260, 1
  %262 = xor i8 %261, 1
  store i8 %262, i8* %21, align 1
  %263 = xor i32 %255, %254
  %264 = lshr i32 %263, 4
  %265 = trunc i32 %264 to i8
  %266 = and i8 %265, 1
  store i8 %266, i8* %26, align 1
  %267 = icmp eq i32 %255, 0
  %268 = zext i1 %267 to i8
  store i8 %268, i8* %29, align 1
  %269 = lshr i32 %255, 31
  %270 = trunc i32 %269 to i8
  store i8 %270, i8* %32, align 1
  %271 = lshr i32 %254, 31
  %272 = xor i32 %269, %271
  %273 = add nuw nsw i32 %272, %271
  %274 = icmp eq i32 %273, 2
  %275 = zext i1 %274 to i8
  store i8 %275, i8* %38, align 1
  %276 = xor i1 %267, true
  %277 = zext i1 %276 to i8
  store i8 %277, i8* %CL.i1510, align 1
  %278 = load i64, i64* %RBP.i, align 8
  %279 = add i64 %278, -137
  %280 = add i64 %249, 24
  store i64 %280, i64* %3, align 8
  %281 = inttoptr i64 %279 to i8*
  store i8 %277, i8* %281, align 1
  %.pre = load i64, i64* %3, align 8
  br label %block_.L_48c684

block_.L_48c684:                                  ; preds = %block_48c66c, %block_.L_48c62a
  %282 = phi i64 [ %.pre, %block_48c66c ], [ %249, %block_.L_48c62a ]
  %AL.i1475 = bitcast %union.anon* %83 to i8*
  %283 = load i64, i64* %RBP.i, align 8
  %284 = add i64 %283, -137
  %285 = add i64 %282, 6
  store i64 %285, i64* %3, align 8
  %286 = inttoptr i64 %284 to i8*
  %287 = load i8, i8* %286, align 1
  %288 = and i8 %287, 1
  store i8 %288, i8* %AL.i1475, align 1
  store i8 0, i8* %14, align 1
  %289 = zext i8 %288 to i32
  %290 = tail call i32 @llvm.ctpop.i32(i32 %289)
  %291 = trunc i32 %290 to i8
  %292 = xor i8 %291, 1
  store i8 %292, i8* %21, align 1
  %293 = xor i8 %288, 1
  store i8 %293, i8* %29, align 1
  store i8 0, i8* %32, align 1
  store i8 0, i8* %38, align 1
  store i8 0, i8* %26, align 1
  %294 = zext i8 %288 to i64
  store i64 %294, i64* %RCX.i1514, align 8
  %295 = add i64 %283, -100
  %296 = zext i8 %288 to i32
  %297 = add i64 %282, 14
  store i64 %297, i64* %3, align 8
  %298 = inttoptr i64 %295 to i32*
  store i32 %296, i32* %298, align 4
  %299 = load i64, i64* %RBP.i, align 8
  %300 = add i64 %299, -112
  %301 = load i64, i64* %3, align 8
  %302 = add i64 %301, 7
  store i64 %302, i64* %3, align 8
  %303 = inttoptr i64 %300 to i32*
  store i32 0, i32* %303, align 4
  %RDI.i1462 = getelementptr inbounds %union.anon, %union.anon* %46, i64 0, i32 0
  %304 = load i64, i64* %RBP.i, align 8
  %305 = add i64 %304, -20
  %306 = load i64, i64* %3, align 8
  %307 = add i64 %306, 3
  store i64 %307, i64* %3, align 8
  %308 = inttoptr i64 %305 to i32*
  %309 = load i32, i32* %308, align 4
  %310 = zext i32 %309 to i64
  store i64 %310, i64* %RDI.i1462, align 8
  %311 = add i64 %306, -18041
  %312 = add i64 %306, 8
  %313 = load i64, i64* %6, align 8
  %314 = add i64 %313, -8
  %315 = inttoptr i64 %314 to i64*
  store i64 %312, i64* %315, align 8
  store i64 %314, i64* %6, align 8
  store i64 %311, i64* %3, align 8
  %call2_48c69c = tail call %struct.Memory* @sub_488020.SetModesAndRefframeForBlocks(%struct.State* nonnull %0, i64 %311, %struct.Memory* %2)
  %316 = load i64, i64* %RBP.i, align 8
  %317 = add i64 %316, -92
  %318 = load i64, i64* %3, align 8
  %319 = add i64 %318, 4
  store i64 %319, i64* %3, align 8
  %320 = inttoptr i64 %317 to i32*
  %321 = load i32, i32* %320, align 4
  store i8 0, i8* %14, align 1
  %322 = and i32 %321, 255
  %323 = tail call i32 @llvm.ctpop.i32(i32 %322)
  %324 = trunc i32 %323 to i8
  %325 = and i8 %324, 1
  %326 = xor i8 %325, 1
  store i8 %326, i8* %21, align 1
  store i8 0, i8* %26, align 1
  %327 = icmp eq i32 %321, 0
  %328 = zext i1 %327 to i8
  store i8 %328, i8* %29, align 1
  %329 = lshr i32 %321, 31
  %330 = trunc i32 %329 to i8
  store i8 %330, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %.v210 = select i1 %327, i64 192, i64 10
  %331 = add i64 %318, %.v210
  store i64 %331, i64* %3, align 8
  br i1 %327, label %block_.L_48c761, label %block_48c6ab

block_48c6ab:                                     ; preds = %block_.L_48c684
  %332 = add i64 %316, -20
  %333 = add i64 %331, 4
  store i64 %333, i64* %3, align 8
  %334 = inttoptr i64 %332 to i32*
  %335 = load i32, i32* %334, align 4
  store i8 0, i8* %14, align 1
  %336 = and i32 %335, 255
  %337 = tail call i32 @llvm.ctpop.i32(i32 %336)
  %338 = trunc i32 %337 to i8
  %339 = and i8 %338, 1
  %340 = xor i8 %339, 1
  store i8 %340, i8* %21, align 1
  store i8 0, i8* %26, align 1
  %341 = icmp eq i32 %335, 0
  %342 = zext i1 %341 to i8
  store i8 %342, i8* %29, align 1
  %343 = lshr i32 %335, 31
  %344 = trunc i32 %343 to i8
  store i8 %344, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %.v211 = select i1 %341, i64 10, i64 182
  %345 = add i64 %331, %.v211
  store i64 %345, i64* %3, align 8
  br i1 %341, label %block_48c6b5, label %block_.L_48c761

block_48c6b5:                                     ; preds = %block_48c6ab
  %346 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*), align 8
  store i64 %346, i64* %RAX.i1567, align 8
  %347 = add i64 %346, 152
  %348 = add i64 %345, 14
  store i64 %348, i64* %3, align 8
  %349 = inttoptr i64 %347 to i32*
  %350 = load i32, i32* %349, align 4
  %351 = sext i32 %350 to i64
  %352 = ashr i64 %351, 1
  %353 = lshr i64 %352, 1
  %354 = trunc i64 %352 to i8
  %355 = and i8 %354, 1
  %356 = trunc i64 %353 to i32
  %357 = and i64 %353, 4294967295
  store i64 %357, i64* %RCX.i1514, align 8
  store i8 %355, i8* %14, align 1
  %358 = and i32 %356, 255
  %359 = tail call i32 @llvm.ctpop.i32(i32 %358)
  %360 = trunc i32 %359 to i8
  %361 = and i8 %360, 1
  %362 = xor i8 %361, 1
  store i8 %362, i8* %21, align 1
  store i8 0, i8* %26, align 1
  %363 = icmp eq i32 %356, 0
  %364 = zext i1 %363 to i8
  store i8 %364, i8* %29, align 1
  %365 = lshr i64 %352, 32
  %366 = trunc i64 %365 to i8
  %367 = and i8 %366, 1
  store i8 %367, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %368 = add i64 %316, -120
  %369 = trunc i64 %353 to i32
  %370 = add i64 %345, 20
  store i64 %370, i64* %3, align 8
  %371 = inttoptr i64 %368 to i32*
  store i32 %369, i32* %371, align 4
  %372 = load i64, i64* %3, align 8
  %373 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*), align 8
  store i64 %373, i64* %RAX.i1567, align 8
  %374 = add i64 %373, 156
  %375 = add i64 %372, 14
  store i64 %375, i64* %3, align 8
  %376 = inttoptr i64 %374 to i32*
  %377 = load i32, i32* %376, align 4
  %378 = sext i32 %377 to i64
  %379 = ashr i64 %378, 1
  %380 = lshr i64 %379, 1
  %381 = trunc i64 %379 to i8
  %382 = and i8 %381, 1
  %383 = trunc i64 %380 to i32
  %384 = and i64 %380, 4294967295
  store i64 %384, i64* %RCX.i1514, align 8
  store i8 %382, i8* %14, align 1
  %385 = and i32 %383, 255
  %386 = tail call i32 @llvm.ctpop.i32(i32 %385)
  %387 = trunc i32 %386 to i8
  %388 = and i8 %387, 1
  %389 = xor i8 %388, 1
  store i8 %389, i8* %21, align 1
  store i8 0, i8* %26, align 1
  %390 = icmp eq i32 %383, 0
  %391 = zext i1 %390 to i8
  store i8 %391, i8* %29, align 1
  %392 = lshr i64 %379, 32
  %393 = trunc i64 %392 to i8
  %394 = and i8 %393, 1
  store i8 %394, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %395 = load i64, i64* %RBP.i, align 8
  %396 = add i64 %395, -124
  %397 = trunc i64 %380 to i32
  %398 = add i64 %372, 20
  store i64 %398, i64* %3, align 8
  %399 = inttoptr i64 %396 to i32*
  store i32 %397, i32* %399, align 4
  %400 = load i64, i64* %RBP.i, align 8
  %401 = add i64 %400, -40
  %402 = load i64, i64* %3, align 8
  %403 = add i64 %402, 7
  store i64 %403, i64* %3, align 8
  %404 = inttoptr i64 %401 to i32*
  store i32 0, i32* %404, align 4
  %RDX.i1415 = getelementptr inbounds %union.anon, %union.anon* %60, i64 0, i32 0
  %.pre148 = load i64, i64* %3, align 8
  br label %block_.L_48c6e4

block_.L_48c6e4:                                  ; preds = %block_.L_48c749, %block_48c6b5
  %405 = phi i64 [ %631, %block_.L_48c749 ], [ %.pre148, %block_48c6b5 ]
  %406 = load i64, i64* %RBP.i, align 8
  %407 = add i64 %406, -40
  %408 = add i64 %405, 4
  store i64 %408, i64* %3, align 8
  %409 = inttoptr i64 %407 to i32*
  %410 = load i32, i32* %409, align 4
  %411 = add i32 %410, -4
  %412 = icmp ult i32 %410, 4
  %413 = zext i1 %412 to i8
  store i8 %413, i8* %14, align 1
  %414 = and i32 %411, 255
  %415 = tail call i32 @llvm.ctpop.i32(i32 %414)
  %416 = trunc i32 %415 to i8
  %417 = and i8 %416, 1
  %418 = xor i8 %417, 1
  store i8 %418, i8* %21, align 1
  %419 = xor i32 %411, %410
  %420 = lshr i32 %419, 4
  %421 = trunc i32 %420 to i8
  %422 = and i8 %421, 1
  store i8 %422, i8* %26, align 1
  %423 = icmp eq i32 %411, 0
  %424 = zext i1 %423 to i8
  store i8 %424, i8* %29, align 1
  %425 = lshr i32 %411, 31
  %426 = trunc i32 %425 to i8
  store i8 %426, i8* %32, align 1
  %427 = lshr i32 %410, 31
  %428 = xor i32 %425, %427
  %429 = add nuw nsw i32 %428, %427
  %430 = icmp eq i32 %429, 2
  %431 = zext i1 %430 to i8
  store i8 %431, i8* %38, align 1
  %432 = icmp ne i8 %426, 0
  %433 = xor i1 %432, %430
  %.v256 = select i1 %433, i64 10, i64 120
  %434 = add i64 %405, %.v256
  store i64 %434, i64* %3, align 8
  br i1 %433, label %block_48c6ee, label %block_.L_48c75c

block_48c6ee:                                     ; preds = %block_.L_48c6e4
  %435 = add i64 %406, -44
  %436 = add i64 %434, 7
  store i64 %436, i64* %3, align 8
  %437 = inttoptr i64 %435 to i32*
  store i32 0, i32* %437, align 4
  %.pre149 = load i64, i64* %3, align 8
  br label %block_.L_48c6f5

block_.L_48c6f5:                                  ; preds = %block_.L_48c736, %block_48c6ee
  %438 = phi i64 [ %601, %block_.L_48c736 ], [ %.pre149, %block_48c6ee ]
  %439 = load i64, i64* %RBP.i, align 8
  %440 = add i64 %439, -44
  %441 = add i64 %438, 4
  store i64 %441, i64* %3, align 8
  %442 = inttoptr i64 %440 to i32*
  %443 = load i32, i32* %442, align 4
  %444 = add i32 %443, -4
  %445 = icmp ult i32 %443, 4
  %446 = zext i1 %445 to i8
  store i8 %446, i8* %14, align 1
  %447 = and i32 %444, 255
  %448 = tail call i32 @llvm.ctpop.i32(i32 %447)
  %449 = trunc i32 %448 to i8
  %450 = and i8 %449, 1
  %451 = xor i8 %450, 1
  store i8 %451, i8* %21, align 1
  %452 = xor i32 %444, %443
  %453 = lshr i32 %452, 4
  %454 = trunc i32 %453 to i8
  %455 = and i8 %454, 1
  store i8 %455, i8* %26, align 1
  %456 = icmp eq i32 %444, 0
  %457 = zext i1 %456 to i8
  store i8 %457, i8* %29, align 1
  %458 = lshr i32 %444, 31
  %459 = trunc i32 %458 to i8
  store i8 %459, i8* %32, align 1
  %460 = lshr i32 %443, 31
  %461 = xor i32 %458, %460
  %462 = add nuw nsw i32 %461, %460
  %463 = icmp eq i32 %462, 2
  %464 = zext i1 %463 to i8
  store i8 %464, i8* %38, align 1
  %465 = icmp ne i8 %459, 0
  %466 = xor i1 %465, %463
  %.v208 = select i1 %466, i64 10, i64 84
  %467 = add i64 %438, %.v208
  store i64 %467, i64* %3, align 8
  br i1 %466, label %block_48c6ff, label %block_.L_48c749

block_48c6ff:                                     ; preds = %block_.L_48c6f5
  %468 = load i64, i64* bitcast (%G_0x722cb8_type* @G_0x722cb8 to i64*), align 8
  store i64 %468, i64* %RAX.i1567, align 8
  %469 = add i64 %439, -120
  %470 = add i64 %467, 11
  store i64 %470, i64* %3, align 8
  %471 = inttoptr i64 %469 to i32*
  %472 = load i32, i32* %471, align 4
  %473 = zext i32 %472 to i64
  store i64 %473, i64* %RCX.i1514, align 8
  %474 = add i64 %439, -40
  %475 = add i64 %467, 14
  store i64 %475, i64* %3, align 8
  %476 = inttoptr i64 %474 to i32*
  %477 = load i32, i32* %476, align 4
  %478 = add i32 %477, %472
  %479 = zext i32 %478 to i64
  store i64 %479, i64* %RCX.i1514, align 8
  %480 = icmp ult i32 %478, %472
  %481 = icmp ult i32 %478, %477
  %482 = or i1 %480, %481
  %483 = zext i1 %482 to i8
  store i8 %483, i8* %14, align 1
  %484 = and i32 %478, 255
  %485 = tail call i32 @llvm.ctpop.i32(i32 %484)
  %486 = trunc i32 %485 to i8
  %487 = and i8 %486, 1
  %488 = xor i8 %487, 1
  store i8 %488, i8* %21, align 1
  %489 = xor i32 %477, %472
  %490 = xor i32 %489, %478
  %491 = lshr i32 %490, 4
  %492 = trunc i32 %491 to i8
  %493 = and i8 %492, 1
  store i8 %493, i8* %26, align 1
  %494 = icmp eq i32 %478, 0
  %495 = zext i1 %494 to i8
  store i8 %495, i8* %29, align 1
  %496 = lshr i32 %478, 31
  %497 = trunc i32 %496 to i8
  store i8 %497, i8* %32, align 1
  %498 = lshr i32 %472, 31
  %499 = lshr i32 %477, 31
  %500 = xor i32 %496, %498
  %501 = xor i32 %496, %499
  %502 = add nuw nsw i32 %500, %501
  %503 = icmp eq i32 %502, 2
  %504 = zext i1 %503 to i8
  store i8 %504, i8* %38, align 1
  %505 = sext i32 %478 to i64
  store i64 %505, i64* %RDX.i1415, align 8
  %506 = shl nsw i64 %505, 3
  %507 = add i64 %468, %506
  %508 = add i64 %467, 21
  store i64 %508, i64* %3, align 8
  %509 = inttoptr i64 %507 to i64*
  %510 = load i64, i64* %509, align 8
  store i64 %510, i64* %RAX.i1567, align 8
  %511 = add i64 %439, -124
  %512 = add i64 %467, 24
  store i64 %512, i64* %3, align 8
  %513 = inttoptr i64 %511 to i32*
  %514 = load i32, i32* %513, align 4
  %515 = zext i32 %514 to i64
  store i64 %515, i64* %RCX.i1514, align 8
  %516 = add i64 %467, 27
  store i64 %516, i64* %3, align 8
  %517 = load i32, i32* %442, align 4
  %518 = add i32 %517, %514
  %519 = zext i32 %518 to i64
  store i64 %519, i64* %RCX.i1514, align 8
  %520 = icmp ult i32 %518, %514
  %521 = icmp ult i32 %518, %517
  %522 = or i1 %520, %521
  %523 = zext i1 %522 to i8
  store i8 %523, i8* %14, align 1
  %524 = and i32 %518, 255
  %525 = tail call i32 @llvm.ctpop.i32(i32 %524)
  %526 = trunc i32 %525 to i8
  %527 = and i8 %526, 1
  %528 = xor i8 %527, 1
  store i8 %528, i8* %21, align 1
  %529 = xor i32 %517, %514
  %530 = xor i32 %529, %518
  %531 = lshr i32 %530, 4
  %532 = trunc i32 %531 to i8
  %533 = and i8 %532, 1
  store i8 %533, i8* %26, align 1
  %534 = icmp eq i32 %518, 0
  %535 = zext i1 %534 to i8
  store i8 %535, i8* %29, align 1
  %536 = lshr i32 %518, 31
  %537 = trunc i32 %536 to i8
  store i8 %537, i8* %32, align 1
  %538 = lshr i32 %514, 31
  %539 = lshr i32 %517, 31
  %540 = xor i32 %536, %538
  %541 = xor i32 %536, %539
  %542 = add nuw nsw i32 %540, %541
  %543 = icmp eq i32 %542, 2
  %544 = zext i1 %543 to i8
  store i8 %544, i8* %38, align 1
  %545 = sext i32 %518 to i64
  store i64 %545, i64* %RDX.i1415, align 8
  %546 = shl nsw i64 %545, 1
  %547 = add i64 %510, %546
  %548 = add i64 %467, 34
  store i64 %548, i64* %3, align 8
  %549 = inttoptr i64 %547 to i16*
  %550 = load i16, i16* %549, align 2
  %551 = sext i16 %550 to i64
  %552 = and i64 %551, 4294967295
  store i64 %552, i64* %RCX.i1514, align 8
  %553 = sext i16 %550 to i32
  %554 = add i64 %467, 37
  store i8 0, i8* %14, align 1
  %555 = and i32 %553, 255
  %556 = tail call i32 @llvm.ctpop.i32(i32 %555)
  %557 = trunc i32 %556 to i8
  %558 = and i8 %557, 1
  %559 = xor i8 %558, 1
  store i8 %559, i8* %21, align 1
  store i8 0, i8* %26, align 1
  %560 = icmp eq i16 %550, 0
  %561 = zext i1 %560 to i8
  store i8 %561, i8* %29, align 1
  %562 = lshr i32 %553, 31
  %563 = trunc i32 %562 to i8
  store i8 %563, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %564 = icmp ne i8 %563, 0
  %.v = select i1 %564, i64 6, i64 18
  %565 = add i64 %554, %.v
  store i64 %565, i64* %3, align 8
  %566 = load i64, i64* %RBP.i, align 8
  br i1 %564, label %block_48c72a, label %block_.L_48c736

block_48c72a:                                     ; preds = %block_48c6ff
  %567 = add i64 %566, -4
  %568 = add i64 %565, 7
  store i64 %568, i64* %3, align 8
  %569 = inttoptr i64 %567 to i32*
  store i32 0, i32* %569, align 4
  %570 = load i64, i64* %3, align 8
  %571 = add i64 %570, 3072
  store i64 %571, i64* %3, align 8
  br label %block_.L_48d331

block_.L_48c736:                                  ; preds = %block_48c6ff
  %572 = add i64 %566, -44
  %573 = add i64 %565, 8
  store i64 %573, i64* %3, align 8
  %574 = inttoptr i64 %572 to i32*
  %575 = load i32, i32* %574, align 4
  %576 = add i32 %575, 1
  %577 = zext i32 %576 to i64
  store i64 %577, i64* %RAX.i1567, align 8
  %578 = icmp eq i32 %575, -1
  %579 = icmp eq i32 %576, 0
  %580 = or i1 %578, %579
  %581 = zext i1 %580 to i8
  store i8 %581, i8* %14, align 1
  %582 = and i32 %576, 255
  %583 = tail call i32 @llvm.ctpop.i32(i32 %582)
  %584 = trunc i32 %583 to i8
  %585 = and i8 %584, 1
  %586 = xor i8 %585, 1
  store i8 %586, i8* %21, align 1
  %587 = xor i32 %576, %575
  %588 = lshr i32 %587, 4
  %589 = trunc i32 %588 to i8
  %590 = and i8 %589, 1
  store i8 %590, i8* %26, align 1
  %591 = zext i1 %579 to i8
  store i8 %591, i8* %29, align 1
  %592 = lshr i32 %576, 31
  %593 = trunc i32 %592 to i8
  store i8 %593, i8* %32, align 1
  %594 = lshr i32 %575, 31
  %595 = xor i32 %592, %594
  %596 = add nuw nsw i32 %595, %592
  %597 = icmp eq i32 %596, 2
  %598 = zext i1 %597 to i8
  store i8 %598, i8* %38, align 1
  %599 = add i64 %565, 14
  store i64 %599, i64* %3, align 8
  store i32 %576, i32* %574, align 4
  %600 = load i64, i64* %3, align 8
  %601 = add i64 %600, -79
  store i64 %601, i64* %3, align 8
  br label %block_.L_48c6f5

block_.L_48c749:                                  ; preds = %block_.L_48c6f5
  %602 = add i64 %439, -40
  %603 = add i64 %467, 8
  store i64 %603, i64* %3, align 8
  %604 = inttoptr i64 %602 to i32*
  %605 = load i32, i32* %604, align 4
  %606 = add i32 %605, 1
  %607 = zext i32 %606 to i64
  store i64 %607, i64* %RAX.i1567, align 8
  %608 = icmp eq i32 %605, -1
  %609 = icmp eq i32 %606, 0
  %610 = or i1 %608, %609
  %611 = zext i1 %610 to i8
  store i8 %611, i8* %14, align 1
  %612 = and i32 %606, 255
  %613 = tail call i32 @llvm.ctpop.i32(i32 %612)
  %614 = trunc i32 %613 to i8
  %615 = and i8 %614, 1
  %616 = xor i8 %615, 1
  store i8 %616, i8* %21, align 1
  %617 = xor i32 %606, %605
  %618 = lshr i32 %617, 4
  %619 = trunc i32 %618 to i8
  %620 = and i8 %619, 1
  store i8 %620, i8* %26, align 1
  %621 = zext i1 %609 to i8
  store i8 %621, i8* %29, align 1
  %622 = lshr i32 %606, 31
  %623 = trunc i32 %622 to i8
  store i8 %623, i8* %32, align 1
  %624 = lshr i32 %605, 31
  %625 = xor i32 %622, %624
  %626 = add nuw nsw i32 %625, %622
  %627 = icmp eq i32 %626, 2
  %628 = zext i1 %627 to i8
  store i8 %628, i8* %38, align 1
  %629 = add i64 %467, 14
  store i64 %629, i64* %3, align 8
  store i32 %606, i32* %604, align 4
  %630 = load i64, i64* %3, align 8
  %631 = add i64 %630, -115
  store i64 %631, i64* %3, align 8
  br label %block_.L_48c6e4

block_.L_48c75c:                                  ; preds = %block_.L_48c6e4
  %632 = add i64 %434, 5
  store i64 %632, i64* %3, align 8
  br label %block_.L_48c761

block_.L_48c761:                                  ; preds = %block_48c6ab, %block_.L_48c75c, %block_.L_48c684
  %633 = phi i64 [ %632, %block_.L_48c75c ], [ %345, %block_48c6ab ], [ %331, %block_.L_48c684 ]
  %634 = phi i64 [ %406, %block_.L_48c75c ], [ %316, %block_48c6ab ], [ %316, %block_.L_48c684 ]
  %635 = add i64 %634, -20
  %636 = add i64 %633, 4
  store i64 %636, i64* %3, align 8
  %637 = inttoptr i64 %635 to i32*
  %638 = load i32, i32* %637, align 4
  %639 = add i32 %638, -8
  %640 = icmp ult i32 %638, 8
  %641 = zext i1 %640 to i8
  store i8 %641, i8* %14, align 1
  %642 = and i32 %639, 255
  %643 = tail call i32 @llvm.ctpop.i32(i32 %642)
  %644 = trunc i32 %643 to i8
  %645 = and i8 %644, 1
  %646 = xor i8 %645, 1
  store i8 %646, i8* %21, align 1
  %647 = xor i32 %639, %638
  %648 = lshr i32 %647, 4
  %649 = trunc i32 %648 to i8
  %650 = and i8 %649, 1
  store i8 %650, i8* %26, align 1
  %651 = icmp eq i32 %639, 0
  %652 = zext i1 %651 to i8
  store i8 %652, i8* %29, align 1
  %653 = lshr i32 %639, 31
  %654 = trunc i32 %653 to i8
  store i8 %654, i8* %32, align 1
  %655 = lshr i32 %638, 31
  %656 = xor i32 %653, %655
  %657 = add nuw nsw i32 %656, %655
  %658 = icmp eq i32 %657, 2
  %659 = zext i1 %658 to i8
  store i8 %659, i8* %38, align 1
  %660 = icmp ne i8 %654, 0
  %661 = xor i1 %660, %658
  %.v212 = select i1 %661, i64 10, i64 78
  %662 = add i64 %633, %.v212
  store i64 %662, i64* %3, align 8
  br i1 %661, label %block_48c76b, label %block_.L_48c7af

block_48c76b:                                     ; preds = %block_.L_48c761
  store i8 0, i8* %AL.i1475, align 1
  %663 = add i64 %662, -309195
  %664 = add i64 %662, 7
  %665 = load i64, i64* %6, align 8
  %666 = add i64 %665, -8
  %667 = inttoptr i64 %666 to i64*
  store i64 %664, i64* %667, align 8
  store i64 %666, i64* %6, align 8
  store i64 %663, i64* %3, align 8
  %call2_48c76d = tail call %struct.Memory* @sub_440fa0.LumaResidualCoding(%struct.State* nonnull %0, i64 %663, %struct.Memory* %call2_48c69c)
  %668 = load i64, i64* %RBP.i, align 8
  %669 = add i64 %668, -20
  %670 = load i64, i64* %3, align 8
  %671 = add i64 %670, 4
  store i64 %671, i64* %3, align 8
  %672 = inttoptr i64 %669 to i32*
  %673 = load i32, i32* %672, align 4
  store i8 0, i8* %14, align 1
  %674 = and i32 %673, 255
  %675 = tail call i32 @llvm.ctpop.i32(i32 %674)
  %676 = trunc i32 %675 to i8
  %677 = and i8 %676, 1
  %678 = xor i8 %677, 1
  store i8 %678, i8* %21, align 1
  store i8 0, i8* %26, align 1
  %679 = icmp eq i32 %673, 0
  %680 = zext i1 %679 to i8
  store i8 %680, i8* %29, align 1
  %681 = lshr i32 %673, 31
  %682 = trunc i32 %681 to i8
  store i8 %682, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %.v253 = select i1 %679, i64 10, i64 56
  %683 = add i64 %670, %.v253
  store i64 %683, i64* %3, align 8
  br i1 %679, label %block_48c77c, label %block_.L_48c7aa

block_48c77c:                                     ; preds = %block_48c76b
  %684 = add i64 %668, -80
  %685 = add i64 %683, 4
  store i64 %685, i64* %3, align 8
  %686 = inttoptr i64 %684 to i64*
  %687 = load i64, i64* %686, align 8
  store i64 %687, i64* %RAX.i1567, align 8
  %688 = add i64 %687, 460
  %689 = add i64 %683, 11
  store i64 %689, i64* %3, align 8
  %690 = inttoptr i64 %688 to i32*
  %691 = load i32, i32* %690, align 4
  store i8 0, i8* %14, align 1
  %692 = and i32 %691, 255
  %693 = tail call i32 @llvm.ctpop.i32(i32 %692)
  %694 = trunc i32 %693 to i8
  %695 = and i8 %694, 1
  %696 = xor i8 %695, 1
  store i8 %696, i8* %21, align 1
  store i8 0, i8* %26, align 1
  %697 = icmp eq i32 %691, 0
  %698 = zext i1 %697 to i8
  store i8 %698, i8* %29, align 1
  %699 = lshr i32 %691, 31
  %700 = trunc i32 %699 to i8
  store i8 %700, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %.v254 = select i1 %697, i64 17, i64 46
  %701 = add i64 %683, %.v254
  store i64 %701, i64* %3, align 8
  br i1 %697, label %block_48c78d, label %block_.L_48c7aa

block_48c78d:                                     ; preds = %block_48c77c
  %702 = add i64 %701, 4
  store i64 %702, i64* %3, align 8
  %703 = load i64, i64* %686, align 8
  store i64 %703, i64* %RAX.i1567, align 8
  %704 = add i64 %703, 572
  %705 = add i64 %701, 11
  store i64 %705, i64* %3, align 8
  %706 = inttoptr i64 %704 to i32*
  %707 = load i32, i32* %706, align 4
  %708 = add i32 %707, -1
  %709 = icmp eq i32 %707, 0
  %710 = zext i1 %709 to i8
  store i8 %710, i8* %14, align 1
  %711 = and i32 %708, 255
  %712 = tail call i32 @llvm.ctpop.i32(i32 %711)
  %713 = trunc i32 %712 to i8
  %714 = and i8 %713, 1
  %715 = xor i8 %714, 1
  store i8 %715, i8* %21, align 1
  %716 = xor i32 %708, %707
  %717 = lshr i32 %716, 4
  %718 = trunc i32 %717 to i8
  %719 = and i8 %718, 1
  store i8 %719, i8* %26, align 1
  %720 = icmp eq i32 %708, 0
  %721 = zext i1 %720 to i8
  store i8 %721, i8* %29, align 1
  %722 = lshr i32 %708, 31
  %723 = trunc i32 %722 to i8
  store i8 %723, i8* %32, align 1
  %724 = lshr i32 %707, 31
  %725 = xor i32 %722, %724
  %726 = add nuw nsw i32 %725, %724
  %727 = icmp eq i32 %726, 2
  %728 = zext i1 %727 to i8
  store i8 %728, i8* %38, align 1
  %.v255 = select i1 %720, i64 17, i64 29
  %729 = add i64 %701, %.v255
  store i64 %729, i64* %3, align 8
  br i1 %720, label %block_48c79e, label %block_.L_48c7aa

block_48c79e:                                     ; preds = %block_48c78d
  %730 = add i64 %668, -4
  %731 = add i64 %729, 7
  store i64 %731, i64* %3, align 8
  %732 = inttoptr i64 %730 to i32*
  store i32 0, i32* %732, align 4
  %733 = load i64, i64* %3, align 8
  %734 = add i64 %733, 2956
  store i64 %734, i64* %3, align 8
  br label %block_.L_48d331

block_.L_48c7aa:                                  ; preds = %block_48c78d, %block_48c77c, %block_48c76b
  %735 = phi i64 [ %729, %block_48c78d ], [ %701, %block_48c77c ], [ %683, %block_48c76b ]
  %736 = add i64 %735, 653
  br label %block_.L_48ca37

block_.L_48c7af:                                  ; preds = %block_.L_48c761
  %737 = add i64 %662, 4
  store i64 %737, i64* %3, align 8
  %738 = load i32, i32* %637, align 4
  %739 = add i32 %738, -8
  %740 = icmp ult i32 %738, 8
  %741 = zext i1 %740 to i8
  store i8 %741, i8* %14, align 1
  %742 = and i32 %739, 255
  %743 = tail call i32 @llvm.ctpop.i32(i32 %742)
  %744 = trunc i32 %743 to i8
  %745 = and i8 %744, 1
  %746 = xor i8 %745, 1
  store i8 %746, i8* %21, align 1
  %747 = xor i32 %739, %738
  %748 = lshr i32 %747, 4
  %749 = trunc i32 %748 to i8
  %750 = and i8 %749, 1
  store i8 %750, i8* %26, align 1
  %751 = icmp eq i32 %739, 0
  %752 = zext i1 %751 to i8
  store i8 %752, i8* %29, align 1
  %753 = lshr i32 %739, 31
  %754 = trunc i32 %753 to i8
  store i8 %754, i8* %32, align 1
  %755 = lshr i32 %738, 31
  %756 = xor i32 %753, %755
  %757 = add nuw nsw i32 %756, %755
  %758 = icmp eq i32 %757, 2
  %759 = zext i1 %758 to i8
  store i8 %759, i8* %38, align 1
  %.v213 = select i1 %751, i64 10, i64 24
  %760 = add i64 %662, %.v213
  store i64 %760, i64* %3, align 8
  br i1 %751, label %block_48c7b9, label %block_.L_48c7c7

block_48c7b9:                                     ; preds = %block_.L_48c7af
  %761 = add i64 %634, -80
  %762 = add i64 %760, 4
  store i64 %762, i64* %3, align 8
  %763 = inttoptr i64 %761 to i64*
  %764 = load i64, i64* %763, align 8
  store i64 %764, i64* %RDI.i1462, align 8
  %765 = add i64 %760, -11529
  %766 = add i64 %760, 9
  %767 = load i64, i64* %6, align 8
  %768 = add i64 %767, -8
  %769 = inttoptr i64 %768 to i64*
  store i64 %766, i64* %769, align 8
  store i64 %768, i64* %6, align 8
  store i64 %765, i64* %3, align 8
  %call2_48c7bd = tail call %struct.Memory* @sub_489ab0.SetCoeffAndReconstruction8x8(%struct.State* nonnull %0, i64 %765, %struct.Memory* %call2_48c69c)
  %770 = load i64, i64* %3, align 8
  %771 = add i64 %770, 624
  br label %block_.L_48ca32

block_.L_48c7c7:                                  ; preds = %block_.L_48c7af
  %772 = add i64 %760, 4
  store i64 %772, i64* %3, align 8
  %773 = load i32, i32* %637, align 4
  %774 = add i32 %773, -9
  %775 = icmp ult i32 %773, 9
  %776 = zext i1 %775 to i8
  store i8 %776, i8* %14, align 1
  %777 = and i32 %774, 255
  %778 = tail call i32 @llvm.ctpop.i32(i32 %777)
  %779 = trunc i32 %778 to i8
  %780 = and i8 %779, 1
  %781 = xor i8 %780, 1
  store i8 %781, i8* %21, align 1
  %782 = xor i32 %774, %773
  %783 = lshr i32 %782, 4
  %784 = trunc i32 %783 to i8
  %785 = and i8 %784, 1
  store i8 %785, i8* %26, align 1
  %786 = icmp eq i32 %774, 0
  %787 = zext i1 %786 to i8
  store i8 %787, i8* %29, align 1
  %788 = lshr i32 %774, 31
  %789 = trunc i32 %788 to i8
  store i8 %789, i8* %32, align 1
  %790 = lshr i32 %773, 31
  %791 = xor i32 %788, %790
  %792 = add nuw nsw i32 %791, %790
  %793 = icmp eq i32 %792, 2
  %794 = zext i1 %793 to i8
  store i8 %794, i8* %38, align 1
  %.v214 = select i1 %786, i64 10, i64 288
  %795 = add i64 %760, %.v214
  store i64 %795, i64* %3, align 8
  br i1 %786, label %block_48c7d1, label %block_.L_48c8e7

block_48c7d1:                                     ; preds = %block_.L_48c7c7
  %796 = add i64 %634, -108
  store i64 %796, i64* %RDI.i1462, align 8
  %797 = add i64 %634, -16
  %798 = add i64 %795, 9
  store i64 %798, i64* %3, align 8
  %799 = inttoptr i64 %797 to i64*
  %800 = load i64, i64* %799, align 8
  store i64 %800, i64* %43, align 1
  %801 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 1
  %802 = bitcast i64* %801 to double*
  store double 0.000000e+00, double* %802, align 1
  %803 = add i64 %795, -23665
  %804 = add i64 %795, 14
  %805 = load i64, i64* %6, align 8
  %806 = add i64 %805, -8
  %807 = inttoptr i64 %806 to i64*
  store i64 %804, i64* %807, align 8
  store i64 %806, i64* %6, align 8
  store i64 %803, i64* %3, align 8
  %call2_48c7da = tail call %struct.Memory* @sub_486b60.Mode_Decision_for_Intra4x4Macroblock(%struct.State* nonnull %0, i64 %803, %struct.Memory* %call2_48c69c)
  %808 = load i64, i64* %RBP.i, align 8
  %809 = add i64 %808, -80
  %810 = load i64, i64* %3, align 8
  %811 = add i64 %810, 4
  store i64 %811, i64* %3, align 8
  %812 = inttoptr i64 %809 to i64*
  %813 = load i64, i64* %812, align 8
  %EAX.i1322 = bitcast %union.anon* %83 to i32*
  %814 = add i64 %813, 460
  %815 = load i32, i32* %EAX.i1322, align 4
  %816 = add i64 %810, 10
  store i64 %816, i64* %3, align 8
  %817 = inttoptr i64 %814 to i32*
  store i32 %815, i32* %817, align 4
  %818 = load i64, i64* %3, align 8
  %819 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*), align 8
  store i64 %819, i64* %RDI.i1462, align 8
  %820 = add i64 %819, 72724
  %821 = add i64 %818, 15
  store i64 %821, i64* %3, align 8
  %822 = inttoptr i64 %820 to i32*
  %823 = load i32, i32* %822, align 4
  store i8 0, i8* %14, align 1
  %824 = and i32 %823, 255
  %825 = tail call i32 @llvm.ctpop.i32(i32 %824)
  %826 = trunc i32 %825 to i8
  %827 = and i8 %826, 1
  %828 = xor i8 %827, 1
  store i8 %828, i8* %21, align 1
  store i8 0, i8* %26, align 1
  %829 = icmp eq i32 %823, 0
  %830 = zext i1 %829 to i8
  store i8 %830, i8* %29, align 1
  %831 = lshr i32 %823, 31
  %832 = trunc i32 %831 to i8
  store i8 %832, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %.v249 = select i1 %829, i64 249, i64 21
  %833 = add i64 %818, %.v249
  store i64 %833, i64* %3, align 8
  br i1 %829, label %block_.L_48c8e2, label %block_48c7fe

block_48c7fe:                                     ; preds = %block_48c7d1
  %834 = load i64, i64* %RBP.i, align 8
  %835 = add i64 %834, -40
  %836 = add i64 %833, 7
  store i64 %836, i64* %3, align 8
  %837 = inttoptr i64 %835 to i32*
  store i32 0, i32* %837, align 4
  %.pre150 = load i64, i64* %3, align 8
  br label %block_.L_48c805

block_.L_48c805:                                  ; preds = %block_.L_48c88c, %block_48c7fe
  %838 = phi i64 [ %1114, %block_.L_48c88c ], [ %.pre150, %block_48c7fe ]
  %839 = load i64, i64* %RBP.i, align 8
  %840 = add i64 %839, -40
  %841 = add i64 %838, 4
  store i64 %841, i64* %3, align 8
  %842 = inttoptr i64 %840 to i32*
  %843 = load i32, i32* %842, align 4
  %844 = add i32 %843, -2
  %845 = icmp ult i32 %843, 2
  %846 = zext i1 %845 to i8
  store i8 %846, i8* %14, align 1
  %847 = and i32 %844, 255
  %848 = tail call i32 @llvm.ctpop.i32(i32 %847)
  %849 = trunc i32 %848 to i8
  %850 = and i8 %849, 1
  %851 = xor i8 %850, 1
  store i8 %851, i8* %21, align 1
  %852 = xor i32 %844, %843
  %853 = lshr i32 %852, 4
  %854 = trunc i32 %853 to i8
  %855 = and i8 %854, 1
  store i8 %855, i8* %26, align 1
  %856 = icmp eq i32 %844, 0
  %857 = zext i1 %856 to i8
  store i8 %857, i8* %29, align 1
  %858 = lshr i32 %844, 31
  %859 = trunc i32 %858 to i8
  store i8 %859, i8* %32, align 1
  %860 = lshr i32 %843, 31
  %861 = xor i32 %858, %860
  %862 = add nuw nsw i32 %861, %860
  %863 = icmp eq i32 %862, 2
  %864 = zext i1 %863 to i8
  store i8 %864, i8* %38, align 1
  %865 = icmp ne i8 %859, 0
  %866 = xor i1 %865, %863
  %.v250 = select i1 %866, i64 10, i64 154
  %867 = add i64 %838, %.v250
  store i64 %867, i64* %3, align 8
  br i1 %866, label %block_48c80f, label %block_.L_48c89f

block_48c80f:                                     ; preds = %block_.L_48c805
  %868 = add i64 %839, -44
  %869 = add i64 %867, 7
  store i64 %869, i64* %3, align 8
  %870 = inttoptr i64 %868 to i32*
  store i32 0, i32* %870, align 4
  %.pre152 = load i64, i64* %3, align 8
  br label %block_.L_48c816

block_.L_48c816:                                  ; preds = %block_.L_48c879, %block_48c80f
  %871 = phi i64 [ %1084, %block_.L_48c879 ], [ %.pre152, %block_48c80f ]
  %872 = load i64, i64* %RBP.i, align 8
  %873 = add i64 %872, -44
  %874 = add i64 %871, 4
  store i64 %874, i64* %3, align 8
  %875 = inttoptr i64 %873 to i32*
  %876 = load i32, i32* %875, align 4
  %877 = add i32 %876, -4
  %878 = icmp ult i32 %876, 4
  %879 = zext i1 %878 to i8
  store i8 %879, i8* %14, align 1
  %880 = and i32 %877, 255
  %881 = tail call i32 @llvm.ctpop.i32(i32 %880)
  %882 = trunc i32 %881 to i8
  %883 = and i8 %882, 1
  %884 = xor i8 %883, 1
  store i8 %884, i8* %21, align 1
  %885 = xor i32 %877, %876
  %886 = lshr i32 %885, 4
  %887 = trunc i32 %886 to i8
  %888 = and i8 %887, 1
  store i8 %888, i8* %26, align 1
  %889 = icmp eq i32 %877, 0
  %890 = zext i1 %889 to i8
  store i8 %890, i8* %29, align 1
  %891 = lshr i32 %877, 31
  %892 = trunc i32 %891 to i8
  store i8 %892, i8* %32, align 1
  %893 = lshr i32 %876, 31
  %894 = xor i32 %891, %893
  %895 = add nuw nsw i32 %894, %893
  %896 = icmp eq i32 %895, 2
  %897 = zext i1 %896 to i8
  store i8 %897, i8* %38, align 1
  %898 = icmp ne i8 %892, 0
  %899 = xor i1 %898, %896
  %.v204 = select i1 %899, i64 10, i64 118
  %900 = add i64 %871, %.v204
  store i64 %900, i64* %3, align 8
  br i1 %899, label %block_48c820, label %block_.L_48c88c

block_48c820:                                     ; preds = %block_.L_48c816
  %901 = add i64 %872, -48
  %902 = add i64 %900, 7
  store i64 %902, i64* %3, align 8
  %903 = inttoptr i64 %901 to i32*
  store i32 0, i32* %903, align 4
  %.pre153 = load i64, i64* %3, align 8
  br label %block_.L_48c827

block_.L_48c827:                                  ; preds = %block_.L_48c866, %block_48c820
  %904 = phi i64 [ %1054, %block_.L_48c866 ], [ %.pre153, %block_48c820 ]
  %905 = load i64, i64* %RBP.i, align 8
  %906 = add i64 %905, -48
  %907 = add i64 %904, 4
  store i64 %907, i64* %3, align 8
  %908 = inttoptr i64 %906 to i32*
  %909 = load i32, i32* %908, align 4
  %910 = add i32 %909, -4
  %911 = icmp ult i32 %909, 4
  %912 = zext i1 %911 to i8
  store i8 %912, i8* %14, align 1
  %913 = and i32 %910, 255
  %914 = tail call i32 @llvm.ctpop.i32(i32 %913)
  %915 = trunc i32 %914 to i8
  %916 = and i8 %915, 1
  %917 = xor i8 %916, 1
  store i8 %917, i8* %21, align 1
  %918 = xor i32 %910, %909
  %919 = lshr i32 %918, 4
  %920 = trunc i32 %919 to i8
  %921 = and i8 %920, 1
  store i8 %921, i8* %26, align 1
  %922 = icmp eq i32 %910, 0
  %923 = zext i1 %922 to i8
  store i8 %923, i8* %29, align 1
  %924 = lshr i32 %910, 31
  %925 = trunc i32 %924 to i8
  store i8 %925, i8* %32, align 1
  %926 = lshr i32 %909, 31
  %927 = xor i32 %924, %926
  %928 = add nuw nsw i32 %927, %926
  %929 = icmp eq i32 %928, 2
  %930 = zext i1 %929 to i8
  store i8 %930, i8* %38, align 1
  %931 = icmp ne i8 %925, 0
  %932 = xor i1 %931, %929
  %.v205 = select i1 %932, i64 10, i64 82
  %933 = add i64 %904, %.v205
  store i64 %933, i64* %3, align 8
  br i1 %932, label %block_48c831, label %block_.L_48c879

block_48c831:                                     ; preds = %block_.L_48c827
  store i64 ptrtoint (%G__0x6d0920_type* @G__0x6d0920 to i64), i64* %RAX.i1567, align 8
  %934 = add i64 %905, -40
  %935 = add i64 %933, 14
  store i64 %935, i64* %3, align 8
  %936 = inttoptr i64 %934 to i32*
  %937 = load i32, i32* %936, align 4
  %938 = sext i32 %937 to i64
  %939 = shl nsw i64 %938, 6
  store i64 %939, i64* %RCX.i1514, align 8
  %940 = add i64 %939, ptrtoint (%G__0x6d0920_type* @G__0x6d0920 to i64)
  store i64 %940, i64* %RAX.i1567, align 8
  %941 = icmp ult i64 %940, ptrtoint (%G__0x6d0920_type* @G__0x6d0920 to i64)
  %942 = icmp ult i64 %940, %939
  %943 = or i1 %941, %942
  %944 = zext i1 %943 to i8
  store i8 %944, i8* %14, align 1
  %945 = trunc i64 %940 to i32
  %946 = and i32 %945, 248
  %947 = tail call i32 @llvm.ctpop.i32(i32 %946)
  %948 = trunc i32 %947 to i8
  %949 = and i8 %948, 1
  %950 = xor i8 %949, 1
  store i8 %950, i8* %21, align 1
  %951 = xor i64 %940, ptrtoint (%G__0x6d0920_type* @G__0x6d0920 to i64)
  %952 = lshr i64 %951, 4
  %953 = trunc i64 %952 to i8
  %954 = and i8 %953, 1
  store i8 %954, i8* %26, align 1
  %955 = icmp eq i64 %940, 0
  %956 = zext i1 %955 to i8
  store i8 %956, i8* %29, align 1
  %957 = lshr i64 %940, 63
  %958 = trunc i64 %957 to i8
  store i8 %958, i8* %32, align 1
  %959 = lshr i64 %938, 57
  %960 = and i64 %959, 1
  %961 = xor i64 %957, lshr (i64 ptrtoint (%G__0x6d0920_type* @G__0x6d0920 to i64), i64 63)
  %962 = xor i64 %957, %960
  %963 = add nuw nsw i64 %961, %962
  %964 = icmp eq i64 %963, 2
  %965 = zext i1 %964 to i8
  store i8 %965, i8* %38, align 1
  %966 = add i64 %905, -44
  %967 = add i64 %933, 25
  store i64 %967, i64* %3, align 8
  %968 = inttoptr i64 %966 to i32*
  %969 = load i32, i32* %968, align 4
  %970 = sext i32 %969 to i64
  %971 = shl nsw i64 %970, 4
  store i64 %971, i64* %RCX.i1514, align 8
  %972 = add i64 %971, %940
  store i64 %972, i64* %RAX.i1567, align 8
  %973 = icmp ult i64 %972, %940
  %974 = icmp ult i64 %972, %971
  %975 = or i1 %973, %974
  %976 = zext i1 %975 to i8
  store i8 %976, i8* %14, align 1
  %977 = trunc i64 %972 to i32
  %978 = and i32 %977, 248
  %979 = tail call i32 @llvm.ctpop.i32(i32 %978)
  %980 = trunc i32 %979 to i8
  %981 = and i8 %980, 1
  %982 = xor i8 %981, 1
  store i8 %982, i8* %21, align 1
  %983 = xor i64 %971, %940
  %984 = xor i64 %983, %972
  %985 = lshr i64 %984, 4
  %986 = trunc i64 %985 to i8
  %987 = and i8 %986, 1
  store i8 %987, i8* %26, align 1
  %988 = icmp eq i64 %972, 0
  %989 = zext i1 %988 to i8
  store i8 %989, i8* %29, align 1
  %990 = lshr i64 %972, 63
  %991 = trunc i64 %990 to i8
  store i8 %991, i8* %32, align 1
  %992 = lshr i64 %970, 59
  %993 = and i64 %992, 1
  %994 = xor i64 %990, %957
  %995 = xor i64 %990, %993
  %996 = add nuw nsw i64 %994, %995
  %997 = icmp eq i64 %996, 2
  %998 = zext i1 %997 to i8
  store i8 %998, i8* %38, align 1
  %999 = load i64, i64* %RBP.i, align 8
  %1000 = add i64 %999, -48
  %1001 = add i64 %933, 36
  store i64 %1001, i64* %3, align 8
  %1002 = inttoptr i64 %1000 to i32*
  %1003 = load i32, i32* %1002, align 4
  %1004 = sext i32 %1003 to i64
  store i64 %1004, i64* %RCX.i1514, align 8
  %1005 = shl nsw i64 %1004, 2
  %1006 = add i64 %1005, %972
  %1007 = add i64 %933, 40
  store i64 %1007, i64* %3, align 8
  %1008 = inttoptr i64 %1006 to i32*
  %1009 = load i32, i32* %1008, align 4
  store i8 0, i8* %14, align 1
  %1010 = and i32 %1009, 255
  %1011 = tail call i32 @llvm.ctpop.i32(i32 %1010)
  %1012 = trunc i32 %1011 to i8
  %1013 = and i8 %1012, 1
  %1014 = xor i8 %1013, 1
  store i8 %1014, i8* %21, align 1
  store i8 0, i8* %26, align 1
  %1015 = icmp eq i32 %1009, 0
  %1016 = zext i1 %1015 to i8
  store i8 %1016, i8* %29, align 1
  %1017 = lshr i32 %1009, 31
  %1018 = trunc i32 %1017 to i8
  store i8 %1018, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %.v252 = select i1 %1015, i64 53, i64 46
  %1019 = add i64 %933, %.v252
  store i64 %1019, i64* %3, align 8
  br i1 %1015, label %block_.L_48c866, label %block_48c85f

block_48c85f:                                     ; preds = %block_48c831
  %1020 = add i64 %999, -112
  %1021 = add i64 %1019, 7
  store i64 %1021, i64* %3, align 8
  %1022 = inttoptr i64 %1020 to i32*
  store i32 2, i32* %1022, align 4
  %.pre154 = load i64, i64* %3, align 8
  %.pre155 = load i64, i64* %RBP.i, align 8
  br label %block_.L_48c866

block_.L_48c866:                                  ; preds = %block_48c85f, %block_48c831
  %1023 = phi i64 [ %.pre155, %block_48c85f ], [ %999, %block_48c831 ]
  %1024 = phi i64 [ %.pre154, %block_48c85f ], [ %1019, %block_48c831 ]
  %1025 = add i64 %1023, -48
  %1026 = add i64 %1024, 8
  store i64 %1026, i64* %3, align 8
  %1027 = inttoptr i64 %1025 to i32*
  %1028 = load i32, i32* %1027, align 4
  %1029 = add i32 %1028, 1
  %1030 = zext i32 %1029 to i64
  store i64 %1030, i64* %RAX.i1567, align 8
  %1031 = icmp eq i32 %1028, -1
  %1032 = icmp eq i32 %1029, 0
  %1033 = or i1 %1031, %1032
  %1034 = zext i1 %1033 to i8
  store i8 %1034, i8* %14, align 1
  %1035 = and i32 %1029, 255
  %1036 = tail call i32 @llvm.ctpop.i32(i32 %1035)
  %1037 = trunc i32 %1036 to i8
  %1038 = and i8 %1037, 1
  %1039 = xor i8 %1038, 1
  store i8 %1039, i8* %21, align 1
  %1040 = xor i32 %1029, %1028
  %1041 = lshr i32 %1040, 4
  %1042 = trunc i32 %1041 to i8
  %1043 = and i8 %1042, 1
  store i8 %1043, i8* %26, align 1
  %1044 = zext i1 %1032 to i8
  store i8 %1044, i8* %29, align 1
  %1045 = lshr i32 %1029, 31
  %1046 = trunc i32 %1045 to i8
  store i8 %1046, i8* %32, align 1
  %1047 = lshr i32 %1028, 31
  %1048 = xor i32 %1045, %1047
  %1049 = add nuw nsw i32 %1048, %1045
  %1050 = icmp eq i32 %1049, 2
  %1051 = zext i1 %1050 to i8
  store i8 %1051, i8* %38, align 1
  %1052 = add i64 %1024, 14
  store i64 %1052, i64* %3, align 8
  store i32 %1029, i32* %1027, align 4
  %1053 = load i64, i64* %3, align 8
  %1054 = add i64 %1053, -77
  store i64 %1054, i64* %3, align 8
  br label %block_.L_48c827

block_.L_48c879:                                  ; preds = %block_.L_48c827
  %1055 = add i64 %905, -44
  %1056 = add i64 %933, 8
  store i64 %1056, i64* %3, align 8
  %1057 = inttoptr i64 %1055 to i32*
  %1058 = load i32, i32* %1057, align 4
  %1059 = add i32 %1058, 1
  %1060 = zext i32 %1059 to i64
  store i64 %1060, i64* %RAX.i1567, align 8
  %1061 = icmp eq i32 %1058, -1
  %1062 = icmp eq i32 %1059, 0
  %1063 = or i1 %1061, %1062
  %1064 = zext i1 %1063 to i8
  store i8 %1064, i8* %14, align 1
  %1065 = and i32 %1059, 255
  %1066 = tail call i32 @llvm.ctpop.i32(i32 %1065)
  %1067 = trunc i32 %1066 to i8
  %1068 = and i8 %1067, 1
  %1069 = xor i8 %1068, 1
  store i8 %1069, i8* %21, align 1
  %1070 = xor i32 %1059, %1058
  %1071 = lshr i32 %1070, 4
  %1072 = trunc i32 %1071 to i8
  %1073 = and i8 %1072, 1
  store i8 %1073, i8* %26, align 1
  %1074 = zext i1 %1062 to i8
  store i8 %1074, i8* %29, align 1
  %1075 = lshr i32 %1059, 31
  %1076 = trunc i32 %1075 to i8
  store i8 %1076, i8* %32, align 1
  %1077 = lshr i32 %1058, 31
  %1078 = xor i32 %1075, %1077
  %1079 = add nuw nsw i32 %1078, %1075
  %1080 = icmp eq i32 %1079, 2
  %1081 = zext i1 %1080 to i8
  store i8 %1081, i8* %38, align 1
  %1082 = add i64 %933, 14
  store i64 %1082, i64* %3, align 8
  store i32 %1059, i32* %1057, align 4
  %1083 = load i64, i64* %3, align 8
  %1084 = add i64 %1083, -113
  store i64 %1084, i64* %3, align 8
  br label %block_.L_48c816

block_.L_48c88c:                                  ; preds = %block_.L_48c816
  %1085 = add i64 %872, -40
  %1086 = add i64 %900, 8
  store i64 %1086, i64* %3, align 8
  %1087 = inttoptr i64 %1085 to i32*
  %1088 = load i32, i32* %1087, align 4
  %1089 = add i32 %1088, 1
  %1090 = zext i32 %1089 to i64
  store i64 %1090, i64* %RAX.i1567, align 8
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
  store i8 %1103, i8* %26, align 1
  %1104 = zext i1 %1092 to i8
  store i8 %1104, i8* %29, align 1
  %1105 = lshr i32 %1089, 31
  %1106 = trunc i32 %1105 to i8
  store i8 %1106, i8* %32, align 1
  %1107 = lshr i32 %1088, 31
  %1108 = xor i32 %1105, %1107
  %1109 = add nuw nsw i32 %1108, %1105
  %1110 = icmp eq i32 %1109, 2
  %1111 = zext i1 %1110 to i8
  store i8 %1111, i8* %38, align 1
  %1112 = add i64 %900, 14
  store i64 %1112, i64* %3, align 8
  store i32 %1089, i32* %1087, align 4
  %1113 = load i64, i64* %3, align 8
  %1114 = add i64 %1113, -149
  store i64 %1114, i64* %3, align 8
  br label %block_.L_48c805

block_.L_48c89f:                                  ; preds = %block_.L_48c805
  %1115 = add i64 %839, -116
  %1116 = add i64 %867, 7
  store i64 %1116, i64* %3, align 8
  %1117 = inttoptr i64 %1115 to i32*
  store i32 0, i32* %1117, align 4
  %.pre151 = load i64, i64* %3, align 8
  br label %block_.L_48c8a6

block_.L_48c8a6:                                  ; preds = %block_48c8b0, %block_.L_48c89f
  %1118 = phi i64 [ %1198, %block_48c8b0 ], [ %.pre151, %block_.L_48c89f ]
  %1119 = load i64, i64* %RBP.i, align 8
  %1120 = add i64 %1119, -116
  %1121 = add i64 %1118, 4
  store i64 %1121, i64* %3, align 8
  %1122 = inttoptr i64 %1120 to i32*
  %1123 = load i32, i32* %1122, align 4
  %1124 = add i32 %1123, -2
  %1125 = icmp ult i32 %1123, 2
  %1126 = zext i1 %1125 to i8
  store i8 %1126, i8* %14, align 1
  %1127 = and i32 %1124, 255
  %1128 = tail call i32 @llvm.ctpop.i32(i32 %1127)
  %1129 = trunc i32 %1128 to i8
  %1130 = and i8 %1129, 1
  %1131 = xor i8 %1130, 1
  store i8 %1131, i8* %21, align 1
  %1132 = xor i32 %1124, %1123
  %1133 = lshr i32 %1132, 4
  %1134 = trunc i32 %1133 to i8
  %1135 = and i8 %1134, 1
  store i8 %1135, i8* %26, align 1
  %1136 = icmp eq i32 %1124, 0
  %1137 = zext i1 %1136 to i8
  store i8 %1137, i8* %29, align 1
  %1138 = lshr i32 %1124, 31
  %1139 = trunc i32 %1138 to i8
  store i8 %1139, i8* %32, align 1
  %1140 = lshr i32 %1123, 31
  %1141 = xor i32 %1138, %1140
  %1142 = add nuw nsw i32 %1141, %1140
  %1143 = icmp eq i32 %1142, 2
  %1144 = zext i1 %1143 to i8
  store i8 %1144, i8* %38, align 1
  %1145 = icmp ne i8 %1139, 0
  %1146 = xor i1 %1145, %1143
  %.v251 = select i1 %1146, i64 10, i64 38
  %1147 = add i64 %1118, %.v251
  store i64 %1147, i64* %3, align 8
  br i1 %1146, label %block_48c8b0, label %block_.L_48c8cc

block_48c8b0:                                     ; preds = %block_.L_48c8a6
  %1148 = add i64 %1147, 3
  store i64 %1148, i64* %3, align 8
  %1149 = load i32, i32* %1122, align 4
  %1150 = zext i32 %1149 to i64
  store i64 %1150, i64* %RDI.i1462, align 8
  %1151 = add i64 %1119, -112
  %1152 = add i64 %1147, 6
  store i64 %1152, i64* %3, align 8
  %1153 = inttoptr i64 %1151 to i32*
  %1154 = load i32, i32* %1153, align 4
  %1155 = zext i32 %1154 to i64
  store i64 %1155, i64* %RSI.i1580, align 8
  %1156 = add i64 %1147, -527440
  %1157 = add i64 %1147, 11
  %1158 = load i64, i64* %6, align 8
  %1159 = add i64 %1158, -8
  %1160 = inttoptr i64 %1159 to i64*
  store i64 %1157, i64* %1160, align 8
  store i64 %1159, i64* %6, align 8
  store i64 %1156, i64* %3, align 8
  %call2_48c8b6 = tail call %struct.Memory* @sub_40bc60.dct_chroma_DC(%struct.State* nonnull %0, i64 %1156, %struct.Memory* %call2_48c7da)
  %1161 = load i64, i64* %RBP.i, align 8
  %1162 = add i64 %1161, -112
  %1163 = load i32, i32* %EAX.i1322, align 4
  %1164 = load i64, i64* %3, align 8
  %1165 = add i64 %1164, 3
  store i64 %1165, i64* %3, align 8
  %1166 = inttoptr i64 %1162 to i32*
  store i32 %1163, i32* %1166, align 4
  %1167 = load i64, i64* %RBP.i, align 8
  %1168 = add i64 %1167, -116
  %1169 = load i64, i64* %3, align 8
  %1170 = add i64 %1169, 3
  store i64 %1170, i64* %3, align 8
  %1171 = inttoptr i64 %1168 to i32*
  %1172 = load i32, i32* %1171, align 4
  %1173 = add i32 %1172, 1
  %1174 = zext i32 %1173 to i64
  store i64 %1174, i64* %RAX.i1567, align 8
  %1175 = icmp eq i32 %1172, -1
  %1176 = icmp eq i32 %1173, 0
  %1177 = or i1 %1175, %1176
  %1178 = zext i1 %1177 to i8
  store i8 %1178, i8* %14, align 1
  %1179 = and i32 %1173, 255
  %1180 = tail call i32 @llvm.ctpop.i32(i32 %1179)
  %1181 = trunc i32 %1180 to i8
  %1182 = and i8 %1181, 1
  %1183 = xor i8 %1182, 1
  store i8 %1183, i8* %21, align 1
  %1184 = xor i32 %1173, %1172
  %1185 = lshr i32 %1184, 4
  %1186 = trunc i32 %1185 to i8
  %1187 = and i8 %1186, 1
  store i8 %1187, i8* %26, align 1
  %1188 = zext i1 %1176 to i8
  store i8 %1188, i8* %29, align 1
  %1189 = lshr i32 %1173, 31
  %1190 = trunc i32 %1189 to i8
  store i8 %1190, i8* %32, align 1
  %1191 = lshr i32 %1172, 31
  %1192 = xor i32 %1189, %1191
  %1193 = add nuw nsw i32 %1192, %1189
  %1194 = icmp eq i32 %1193, 2
  %1195 = zext i1 %1194 to i8
  store i8 %1195, i8* %38, align 1
  %1196 = add i64 %1169, 9
  store i64 %1196, i64* %3, align 8
  store i32 %1173, i32* %1171, align 4
  %1197 = load i64, i64* %3, align 8
  %1198 = add i64 %1197, -33
  store i64 %1198, i64* %3, align 8
  br label %block_.L_48c8a6

block_.L_48c8cc:                                  ; preds = %block_.L_48c8a6
  %1199 = add i64 %1119, -112
  %1200 = add i64 %1147, 3
  store i64 %1200, i64* %3, align 8
  %1201 = inttoptr i64 %1199 to i32*
  %1202 = load i32, i32* %1201, align 4
  %1203 = shl i32 %1202, 4
  %1204 = zext i32 %1203 to i64
  store i64 %1204, i64* %RAX.i1567, align 8
  %1205 = lshr i32 %1202, 28
  %1206 = trunc i32 %1205 to i8
  %1207 = and i8 %1206, 1
  store i8 %1207, i8* %14, align 1
  %1208 = and i32 %1203, 240
  %1209 = tail call i32 @llvm.ctpop.i32(i32 %1208)
  %1210 = trunc i32 %1209 to i8
  %1211 = and i8 %1210, 1
  %1212 = xor i8 %1211, 1
  store i8 %1212, i8* %21, align 1
  store i8 0, i8* %26, align 1
  %1213 = icmp eq i32 %1203, 0
  %1214 = zext i1 %1213 to i8
  store i8 %1214, i8* %29, align 1
  %1215 = lshr i32 %1202, 27
  %1216 = trunc i32 %1215 to i8
  %1217 = and i8 %1216, 1
  store i8 %1217, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %1218 = add i64 %1119, -80
  %1219 = add i64 %1147, 10
  store i64 %1219, i64* %3, align 8
  %1220 = inttoptr i64 %1218 to i64*
  %1221 = load i64, i64* %1220, align 8
  store i64 %1221, i64* %RCX.i1514, align 8
  %1222 = add i64 %1221, 460
  %1223 = add i64 %1147, 16
  store i64 %1223, i64* %3, align 8
  %1224 = inttoptr i64 %1222 to i32*
  %1225 = load i32, i32* %1224, align 4
  %1226 = add i32 %1225, %1203
  %1227 = zext i32 %1226 to i64
  store i64 %1227, i64* %RAX.i1567, align 8
  %1228 = icmp ult i32 %1226, %1203
  %1229 = icmp ult i32 %1226, %1225
  %1230 = or i1 %1228, %1229
  %1231 = zext i1 %1230 to i8
  store i8 %1231, i8* %14, align 1
  %1232 = and i32 %1226, 255
  %1233 = tail call i32 @llvm.ctpop.i32(i32 %1232)
  %1234 = trunc i32 %1233 to i8
  %1235 = and i8 %1234, 1
  %1236 = xor i8 %1235, 1
  store i8 %1236, i8* %21, align 1
  %1237 = xor i32 %1225, %1203
  %1238 = xor i32 %1237, %1226
  %1239 = lshr i32 %1238, 4
  %1240 = trunc i32 %1239 to i8
  %1241 = and i8 %1240, 1
  store i8 %1241, i8* %26, align 1
  %1242 = icmp eq i32 %1226, 0
  %1243 = zext i1 %1242 to i8
  store i8 %1243, i8* %29, align 1
  %1244 = lshr i32 %1226, 31
  %1245 = trunc i32 %1244 to i8
  store i8 %1245, i8* %32, align 1
  %1246 = lshr i32 %1202, 27
  %1247 = and i32 %1246, 1
  %1248 = lshr i32 %1225, 31
  %1249 = xor i32 %1244, %1247
  %1250 = xor i32 %1244, %1248
  %1251 = add nuw nsw i32 %1249, %1250
  %1252 = icmp eq i32 %1251, 2
  %1253 = zext i1 %1252 to i8
  store i8 %1253, i8* %38, align 1
  %1254 = add i64 %1147, 22
  store i64 %1254, i64* %3, align 8
  store i32 %1226, i32* %1224, align 4
  %.pre156 = load i64, i64* %3, align 8
  br label %block_.L_48c8e2

block_.L_48c8e2:                                  ; preds = %block_.L_48c8cc, %block_48c7d1
  %1255 = phi i64 [ %.pre156, %block_.L_48c8cc ], [ %833, %block_48c7d1 ]
  %1256 = add i64 %1255, 331
  br label %block_.L_48ca2d

block_.L_48c8e7:                                  ; preds = %block_.L_48c7c7
  %1257 = add i64 %795, 4
  store i64 %1257, i64* %3, align 8
  %1258 = load i32, i32* %637, align 4
  %1259 = add i32 %1258, -10
  %1260 = icmp ult i32 %1258, 10
  %1261 = zext i1 %1260 to i8
  store i8 %1261, i8* %14, align 1
  %1262 = and i32 %1259, 255
  %1263 = tail call i32 @llvm.ctpop.i32(i32 %1262)
  %1264 = trunc i32 %1263 to i8
  %1265 = and i8 %1264, 1
  %1266 = xor i8 %1265, 1
  store i8 %1266, i8* %21, align 1
  %1267 = xor i32 %1259, %1258
  %1268 = lshr i32 %1267, 4
  %1269 = trunc i32 %1268 to i8
  %1270 = and i8 %1269, 1
  store i8 %1270, i8* %26, align 1
  %1271 = icmp eq i32 %1259, 0
  %1272 = zext i1 %1271 to i8
  store i8 %1272, i8* %29, align 1
  %1273 = lshr i32 %1259, 31
  %1274 = trunc i32 %1273 to i8
  store i8 %1274, i8* %32, align 1
  %1275 = lshr i32 %1258, 31
  %1276 = xor i32 %1273, %1275
  %1277 = add nuw nsw i32 %1276, %1275
  %1278 = icmp eq i32 %1277, 2
  %1279 = zext i1 %1278 to i8
  store i8 %1279, i8* %38, align 1
  %.v215 = select i1 %1271, i64 10, i64 28
  %1280 = add i64 %795, %.v215
  store i64 %1280, i64* %3, align 8
  br i1 %1271, label %block_48c8f1, label %block_.L_48c903

block_48c8f1:                                     ; preds = %block_.L_48c8e7
  %1281 = add i64 %634, -36
  store i64 %1281, i64* %RSI.i1580, align 8
  %1282 = add i64 %634, -80
  %1283 = add i64 %1280, 8
  store i64 %1283, i64* %3, align 8
  %1284 = inttoptr i64 %1282 to i64*
  %1285 = load i64, i64* %1284, align 8
  store i64 %1285, i64* %RDI.i1462, align 8
  %1286 = add i64 %1280, -14561
  %1287 = add i64 %1280, 13
  %1288 = load i64, i64* %6, align 8
  %1289 = add i64 %1288, -8
  %1290 = inttoptr i64 %1289 to i64*
  store i64 %1287, i64* %1290, align 8
  store i64 %1289, i64* %6, align 8
  store i64 %1286, i64* %3, align 8
  %call2_48c8f9 = tail call %struct.Memory* @sub_489010.Intra16x16_Mode_Decision(%struct.State* nonnull %0, i64 %1286, %struct.Memory* %call2_48c69c)
  %1291 = load i64, i64* %3, align 8
  %1292 = add i64 %1291, 298
  br label %block_.L_48ca28

block_.L_48c903:                                  ; preds = %block_.L_48c8e7
  %1293 = add i64 %1280, 4
  store i64 %1293, i64* %3, align 8
  %1294 = load i32, i32* %637, align 4
  %1295 = add i32 %1294, -13
  %1296 = icmp ult i32 %1294, 13
  %1297 = zext i1 %1296 to i8
  store i8 %1297, i8* %14, align 1
  %1298 = and i32 %1295, 255
  %1299 = tail call i32 @llvm.ctpop.i32(i32 %1298)
  %1300 = trunc i32 %1299 to i8
  %1301 = and i8 %1300, 1
  %1302 = xor i8 %1301, 1
  store i8 %1302, i8* %21, align 1
  %1303 = xor i32 %1295, %1294
  %1304 = lshr i32 %1303, 4
  %1305 = trunc i32 %1304 to i8
  %1306 = and i8 %1305, 1
  store i8 %1306, i8* %26, align 1
  %1307 = icmp eq i32 %1295, 0
  %1308 = zext i1 %1307 to i8
  store i8 %1308, i8* %29, align 1
  %1309 = lshr i32 %1295, 31
  %1310 = trunc i32 %1309 to i8
  store i8 %1310, i8* %32, align 1
  %1311 = lshr i32 %1294, 31
  %1312 = xor i32 %1309, %1311
  %1313 = add nuw nsw i32 %1312, %1311
  %1314 = icmp eq i32 %1313, 2
  %1315 = zext i1 %1314 to i8
  store i8 %1315, i8* %38, align 1
  %.v216 = select i1 %1307, i64 10, i64 288
  %1316 = add i64 %1280, %.v216
  store i64 %1316, i64* %3, align 8
  br i1 %1307, label %block_48c90d, label %block_.L_48ca23

block_48c90d:                                     ; preds = %block_.L_48c903
  %1317 = add i64 %634, -108
  store i64 %1317, i64* %RDI.i1462, align 8
  %1318 = add i64 %634, -16
  %1319 = add i64 %1316, 9
  store i64 %1319, i64* %3, align 8
  %1320 = inttoptr i64 %1318 to i64*
  %1321 = load i64, i64* %1320, align 8
  store i64 %1321, i64* %43, align 1
  %1322 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 1
  %1323 = bitcast i64* %1322 to double*
  store double 0.000000e+00, double* %1323, align 1
  %1324 = add i64 %1316, 95827
  %1325 = add i64 %1316, 14
  %1326 = load i64, i64* %6, align 8
  %1327 = add i64 %1326, -8
  %1328 = inttoptr i64 %1327 to i64*
  store i64 %1325, i64* %1328, align 8
  store i64 %1327, i64* %6, align 8
  store i64 %1324, i64* %3, align 8
  %call2_48c916 = tail call %struct.Memory* @sub_4a3f60.Mode_Decision_for_new_Intra8x8Macroblock(%struct.State* nonnull %0, i64 %1324, %struct.Memory* %call2_48c69c)
  %1329 = load i64, i64* %RBP.i, align 8
  %1330 = add i64 %1329, -80
  %1331 = load i64, i64* %3, align 8
  %1332 = add i64 %1331, 4
  store i64 %1332, i64* %3, align 8
  %1333 = inttoptr i64 %1330 to i64*
  %1334 = load i64, i64* %1333, align 8
  %EAX.i1179 = bitcast %union.anon* %83 to i32*
  %1335 = add i64 %1334, 460
  %1336 = load i32, i32* %EAX.i1179, align 4
  %1337 = add i64 %1331, 10
  store i64 %1337, i64* %3, align 8
  %1338 = inttoptr i64 %1335 to i32*
  store i32 %1336, i32* %1338, align 4
  %1339 = load i64, i64* %3, align 8
  %1340 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*), align 8
  store i64 %1340, i64* %RDI.i1462, align 8
  %1341 = add i64 %1340, 72724
  %1342 = add i64 %1339, 15
  store i64 %1342, i64* %3, align 8
  %1343 = inttoptr i64 %1341 to i32*
  %1344 = load i32, i32* %1343, align 4
  store i8 0, i8* %14, align 1
  %1345 = and i32 %1344, 255
  %1346 = tail call i32 @llvm.ctpop.i32(i32 %1345)
  %1347 = trunc i32 %1346 to i8
  %1348 = and i8 %1347, 1
  %1349 = xor i8 %1348, 1
  store i8 %1349, i8* %21, align 1
  store i8 0, i8* %26, align 1
  %1350 = icmp eq i32 %1344, 0
  %1351 = zext i1 %1350 to i8
  store i8 %1351, i8* %29, align 1
  %1352 = lshr i32 %1344, 31
  %1353 = trunc i32 %1352 to i8
  store i8 %1353, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %.v245 = select i1 %1350, i64 249, i64 21
  %1354 = add i64 %1339, %.v245
  store i64 %1354, i64* %3, align 8
  br i1 %1350, label %block_.L_48ca1e, label %block_48c93a

block_48c93a:                                     ; preds = %block_48c90d
  %1355 = load i64, i64* %RBP.i, align 8
  %1356 = add i64 %1355, -40
  %1357 = add i64 %1354, 7
  store i64 %1357, i64* %3, align 8
  %1358 = inttoptr i64 %1356 to i32*
  store i32 0, i32* %1358, align 4
  %.pre157 = load i64, i64* %3, align 8
  br label %block_.L_48c941

block_.L_48c941:                                  ; preds = %block_.L_48c9c8, %block_48c93a
  %1359 = phi i64 [ %1635, %block_.L_48c9c8 ], [ %.pre157, %block_48c93a ]
  %1360 = load i64, i64* %RBP.i, align 8
  %1361 = add i64 %1360, -40
  %1362 = add i64 %1359, 4
  store i64 %1362, i64* %3, align 8
  %1363 = inttoptr i64 %1361 to i32*
  %1364 = load i32, i32* %1363, align 4
  %1365 = add i32 %1364, -2
  %1366 = icmp ult i32 %1364, 2
  %1367 = zext i1 %1366 to i8
  store i8 %1367, i8* %14, align 1
  %1368 = and i32 %1365, 255
  %1369 = tail call i32 @llvm.ctpop.i32(i32 %1368)
  %1370 = trunc i32 %1369 to i8
  %1371 = and i8 %1370, 1
  %1372 = xor i8 %1371, 1
  store i8 %1372, i8* %21, align 1
  %1373 = xor i32 %1365, %1364
  %1374 = lshr i32 %1373, 4
  %1375 = trunc i32 %1374 to i8
  %1376 = and i8 %1375, 1
  store i8 %1376, i8* %26, align 1
  %1377 = icmp eq i32 %1365, 0
  %1378 = zext i1 %1377 to i8
  store i8 %1378, i8* %29, align 1
  %1379 = lshr i32 %1365, 31
  %1380 = trunc i32 %1379 to i8
  store i8 %1380, i8* %32, align 1
  %1381 = lshr i32 %1364, 31
  %1382 = xor i32 %1379, %1381
  %1383 = add nuw nsw i32 %1382, %1381
  %1384 = icmp eq i32 %1383, 2
  %1385 = zext i1 %1384 to i8
  store i8 %1385, i8* %38, align 1
  %1386 = icmp ne i8 %1380, 0
  %1387 = xor i1 %1386, %1384
  %.v246 = select i1 %1387, i64 10, i64 154
  %1388 = add i64 %1359, %.v246
  store i64 %1388, i64* %3, align 8
  br i1 %1387, label %block_48c94b, label %block_.L_48c9db

block_48c94b:                                     ; preds = %block_.L_48c941
  %1389 = add i64 %1360, -44
  %1390 = add i64 %1388, 7
  store i64 %1390, i64* %3, align 8
  %1391 = inttoptr i64 %1389 to i32*
  store i32 0, i32* %1391, align 4
  %.pre159 = load i64, i64* %3, align 8
  br label %block_.L_48c952

block_.L_48c952:                                  ; preds = %block_.L_48c9b5, %block_48c94b
  %1392 = phi i64 [ %1605, %block_.L_48c9b5 ], [ %.pre159, %block_48c94b ]
  %1393 = load i64, i64* %RBP.i, align 8
  %1394 = add i64 %1393, -44
  %1395 = add i64 %1392, 4
  store i64 %1395, i64* %3, align 8
  %1396 = inttoptr i64 %1394 to i32*
  %1397 = load i32, i32* %1396, align 4
  %1398 = add i32 %1397, -4
  %1399 = icmp ult i32 %1397, 4
  %1400 = zext i1 %1399 to i8
  store i8 %1400, i8* %14, align 1
  %1401 = and i32 %1398, 255
  %1402 = tail call i32 @llvm.ctpop.i32(i32 %1401)
  %1403 = trunc i32 %1402 to i8
  %1404 = and i8 %1403, 1
  %1405 = xor i8 %1404, 1
  store i8 %1405, i8* %21, align 1
  %1406 = xor i32 %1398, %1397
  %1407 = lshr i32 %1406, 4
  %1408 = trunc i32 %1407 to i8
  %1409 = and i8 %1408, 1
  store i8 %1409, i8* %26, align 1
  %1410 = icmp eq i32 %1398, 0
  %1411 = zext i1 %1410 to i8
  store i8 %1411, i8* %29, align 1
  %1412 = lshr i32 %1398, 31
  %1413 = trunc i32 %1412 to i8
  store i8 %1413, i8* %32, align 1
  %1414 = lshr i32 %1397, 31
  %1415 = xor i32 %1412, %1414
  %1416 = add nuw nsw i32 %1415, %1414
  %1417 = icmp eq i32 %1416, 2
  %1418 = zext i1 %1417 to i8
  store i8 %1418, i8* %38, align 1
  %1419 = icmp ne i8 %1413, 0
  %1420 = xor i1 %1419, %1417
  %.v206 = select i1 %1420, i64 10, i64 118
  %1421 = add i64 %1392, %.v206
  store i64 %1421, i64* %3, align 8
  br i1 %1420, label %block_48c95c, label %block_.L_48c9c8

block_48c95c:                                     ; preds = %block_.L_48c952
  %1422 = add i64 %1393, -48
  %1423 = add i64 %1421, 7
  store i64 %1423, i64* %3, align 8
  %1424 = inttoptr i64 %1422 to i32*
  store i32 0, i32* %1424, align 4
  %.pre160 = load i64, i64* %3, align 8
  br label %block_.L_48c963

block_.L_48c963:                                  ; preds = %block_.L_48c9a2, %block_48c95c
  %1425 = phi i64 [ %1575, %block_.L_48c9a2 ], [ %.pre160, %block_48c95c ]
  %1426 = load i64, i64* %RBP.i, align 8
  %1427 = add i64 %1426, -48
  %1428 = add i64 %1425, 4
  store i64 %1428, i64* %3, align 8
  %1429 = inttoptr i64 %1427 to i32*
  %1430 = load i32, i32* %1429, align 4
  %1431 = add i32 %1430, -4
  %1432 = icmp ult i32 %1430, 4
  %1433 = zext i1 %1432 to i8
  store i8 %1433, i8* %14, align 1
  %1434 = and i32 %1431, 255
  %1435 = tail call i32 @llvm.ctpop.i32(i32 %1434)
  %1436 = trunc i32 %1435 to i8
  %1437 = and i8 %1436, 1
  %1438 = xor i8 %1437, 1
  store i8 %1438, i8* %21, align 1
  %1439 = xor i32 %1431, %1430
  %1440 = lshr i32 %1439, 4
  %1441 = trunc i32 %1440 to i8
  %1442 = and i8 %1441, 1
  store i8 %1442, i8* %26, align 1
  %1443 = icmp eq i32 %1431, 0
  %1444 = zext i1 %1443 to i8
  store i8 %1444, i8* %29, align 1
  %1445 = lshr i32 %1431, 31
  %1446 = trunc i32 %1445 to i8
  store i8 %1446, i8* %32, align 1
  %1447 = lshr i32 %1430, 31
  %1448 = xor i32 %1445, %1447
  %1449 = add nuw nsw i32 %1448, %1447
  %1450 = icmp eq i32 %1449, 2
  %1451 = zext i1 %1450 to i8
  store i8 %1451, i8* %38, align 1
  %1452 = icmp ne i8 %1446, 0
  %1453 = xor i1 %1452, %1450
  %.v207 = select i1 %1453, i64 10, i64 82
  %1454 = add i64 %1425, %.v207
  store i64 %1454, i64* %3, align 8
  br i1 %1453, label %block_48c96d, label %block_.L_48c9b5

block_48c96d:                                     ; preds = %block_.L_48c963
  store i64 ptrtoint (%G__0x6d0920_type* @G__0x6d0920 to i64), i64* %RAX.i1567, align 8
  %1455 = add i64 %1426, -40
  %1456 = add i64 %1454, 14
  store i64 %1456, i64* %3, align 8
  %1457 = inttoptr i64 %1455 to i32*
  %1458 = load i32, i32* %1457, align 4
  %1459 = sext i32 %1458 to i64
  %1460 = shl nsw i64 %1459, 6
  store i64 %1460, i64* %RCX.i1514, align 8
  %1461 = add i64 %1460, ptrtoint (%G__0x6d0920_type* @G__0x6d0920 to i64)
  store i64 %1461, i64* %RAX.i1567, align 8
  %1462 = icmp ult i64 %1461, ptrtoint (%G__0x6d0920_type* @G__0x6d0920 to i64)
  %1463 = icmp ult i64 %1461, %1460
  %1464 = or i1 %1462, %1463
  %1465 = zext i1 %1464 to i8
  store i8 %1465, i8* %14, align 1
  %1466 = trunc i64 %1461 to i32
  %1467 = and i32 %1466, 248
  %1468 = tail call i32 @llvm.ctpop.i32(i32 %1467)
  %1469 = trunc i32 %1468 to i8
  %1470 = and i8 %1469, 1
  %1471 = xor i8 %1470, 1
  store i8 %1471, i8* %21, align 1
  %1472 = xor i64 %1461, ptrtoint (%G__0x6d0920_type* @G__0x6d0920 to i64)
  %1473 = lshr i64 %1472, 4
  %1474 = trunc i64 %1473 to i8
  %1475 = and i8 %1474, 1
  store i8 %1475, i8* %26, align 1
  %1476 = icmp eq i64 %1461, 0
  %1477 = zext i1 %1476 to i8
  store i8 %1477, i8* %29, align 1
  %1478 = lshr i64 %1461, 63
  %1479 = trunc i64 %1478 to i8
  store i8 %1479, i8* %32, align 1
  %1480 = lshr i64 %1459, 57
  %1481 = and i64 %1480, 1
  %1482 = xor i64 %1478, lshr (i64 ptrtoint (%G__0x6d0920_type* @G__0x6d0920 to i64), i64 63)
  %1483 = xor i64 %1478, %1481
  %1484 = add nuw nsw i64 %1482, %1483
  %1485 = icmp eq i64 %1484, 2
  %1486 = zext i1 %1485 to i8
  store i8 %1486, i8* %38, align 1
  %1487 = add i64 %1426, -44
  %1488 = add i64 %1454, 25
  store i64 %1488, i64* %3, align 8
  %1489 = inttoptr i64 %1487 to i32*
  %1490 = load i32, i32* %1489, align 4
  %1491 = sext i32 %1490 to i64
  %1492 = shl nsw i64 %1491, 4
  store i64 %1492, i64* %RCX.i1514, align 8
  %1493 = add i64 %1492, %1461
  store i64 %1493, i64* %RAX.i1567, align 8
  %1494 = icmp ult i64 %1493, %1461
  %1495 = icmp ult i64 %1493, %1492
  %1496 = or i1 %1494, %1495
  %1497 = zext i1 %1496 to i8
  store i8 %1497, i8* %14, align 1
  %1498 = trunc i64 %1493 to i32
  %1499 = and i32 %1498, 248
  %1500 = tail call i32 @llvm.ctpop.i32(i32 %1499)
  %1501 = trunc i32 %1500 to i8
  %1502 = and i8 %1501, 1
  %1503 = xor i8 %1502, 1
  store i8 %1503, i8* %21, align 1
  %1504 = xor i64 %1492, %1461
  %1505 = xor i64 %1504, %1493
  %1506 = lshr i64 %1505, 4
  %1507 = trunc i64 %1506 to i8
  %1508 = and i8 %1507, 1
  store i8 %1508, i8* %26, align 1
  %1509 = icmp eq i64 %1493, 0
  %1510 = zext i1 %1509 to i8
  store i8 %1510, i8* %29, align 1
  %1511 = lshr i64 %1493, 63
  %1512 = trunc i64 %1511 to i8
  store i8 %1512, i8* %32, align 1
  %1513 = lshr i64 %1491, 59
  %1514 = and i64 %1513, 1
  %1515 = xor i64 %1511, %1478
  %1516 = xor i64 %1511, %1514
  %1517 = add nuw nsw i64 %1515, %1516
  %1518 = icmp eq i64 %1517, 2
  %1519 = zext i1 %1518 to i8
  store i8 %1519, i8* %38, align 1
  %1520 = load i64, i64* %RBP.i, align 8
  %1521 = add i64 %1520, -48
  %1522 = add i64 %1454, 36
  store i64 %1522, i64* %3, align 8
  %1523 = inttoptr i64 %1521 to i32*
  %1524 = load i32, i32* %1523, align 4
  %1525 = sext i32 %1524 to i64
  store i64 %1525, i64* %RCX.i1514, align 8
  %1526 = shl nsw i64 %1525, 2
  %1527 = add i64 %1526, %1493
  %1528 = add i64 %1454, 40
  store i64 %1528, i64* %3, align 8
  %1529 = inttoptr i64 %1527 to i32*
  %1530 = load i32, i32* %1529, align 4
  store i8 0, i8* %14, align 1
  %1531 = and i32 %1530, 255
  %1532 = tail call i32 @llvm.ctpop.i32(i32 %1531)
  %1533 = trunc i32 %1532 to i8
  %1534 = and i8 %1533, 1
  %1535 = xor i8 %1534, 1
  store i8 %1535, i8* %21, align 1
  store i8 0, i8* %26, align 1
  %1536 = icmp eq i32 %1530, 0
  %1537 = zext i1 %1536 to i8
  store i8 %1537, i8* %29, align 1
  %1538 = lshr i32 %1530, 31
  %1539 = trunc i32 %1538 to i8
  store i8 %1539, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %.v248 = select i1 %1536, i64 53, i64 46
  %1540 = add i64 %1454, %.v248
  store i64 %1540, i64* %3, align 8
  br i1 %1536, label %block_.L_48c9a2, label %block_48c99b

block_48c99b:                                     ; preds = %block_48c96d
  %1541 = add i64 %1520, -112
  %1542 = add i64 %1540, 7
  store i64 %1542, i64* %3, align 8
  %1543 = inttoptr i64 %1541 to i32*
  store i32 2, i32* %1543, align 4
  %.pre161 = load i64, i64* %3, align 8
  %.pre162 = load i64, i64* %RBP.i, align 8
  br label %block_.L_48c9a2

block_.L_48c9a2:                                  ; preds = %block_48c99b, %block_48c96d
  %1544 = phi i64 [ %.pre162, %block_48c99b ], [ %1520, %block_48c96d ]
  %1545 = phi i64 [ %.pre161, %block_48c99b ], [ %1540, %block_48c96d ]
  %1546 = add i64 %1544, -48
  %1547 = add i64 %1545, 8
  store i64 %1547, i64* %3, align 8
  %1548 = inttoptr i64 %1546 to i32*
  %1549 = load i32, i32* %1548, align 4
  %1550 = add i32 %1549, 1
  %1551 = zext i32 %1550 to i64
  store i64 %1551, i64* %RAX.i1567, align 8
  %1552 = icmp eq i32 %1549, -1
  %1553 = icmp eq i32 %1550, 0
  %1554 = or i1 %1552, %1553
  %1555 = zext i1 %1554 to i8
  store i8 %1555, i8* %14, align 1
  %1556 = and i32 %1550, 255
  %1557 = tail call i32 @llvm.ctpop.i32(i32 %1556)
  %1558 = trunc i32 %1557 to i8
  %1559 = and i8 %1558, 1
  %1560 = xor i8 %1559, 1
  store i8 %1560, i8* %21, align 1
  %1561 = xor i32 %1550, %1549
  %1562 = lshr i32 %1561, 4
  %1563 = trunc i32 %1562 to i8
  %1564 = and i8 %1563, 1
  store i8 %1564, i8* %26, align 1
  %1565 = zext i1 %1553 to i8
  store i8 %1565, i8* %29, align 1
  %1566 = lshr i32 %1550, 31
  %1567 = trunc i32 %1566 to i8
  store i8 %1567, i8* %32, align 1
  %1568 = lshr i32 %1549, 31
  %1569 = xor i32 %1566, %1568
  %1570 = add nuw nsw i32 %1569, %1566
  %1571 = icmp eq i32 %1570, 2
  %1572 = zext i1 %1571 to i8
  store i8 %1572, i8* %38, align 1
  %1573 = add i64 %1545, 14
  store i64 %1573, i64* %3, align 8
  store i32 %1550, i32* %1548, align 4
  %1574 = load i64, i64* %3, align 8
  %1575 = add i64 %1574, -77
  store i64 %1575, i64* %3, align 8
  br label %block_.L_48c963

block_.L_48c9b5:                                  ; preds = %block_.L_48c963
  %1576 = add i64 %1426, -44
  %1577 = add i64 %1454, 8
  store i64 %1577, i64* %3, align 8
  %1578 = inttoptr i64 %1576 to i32*
  %1579 = load i32, i32* %1578, align 4
  %1580 = add i32 %1579, 1
  %1581 = zext i32 %1580 to i64
  store i64 %1581, i64* %RAX.i1567, align 8
  %1582 = icmp eq i32 %1579, -1
  %1583 = icmp eq i32 %1580, 0
  %1584 = or i1 %1582, %1583
  %1585 = zext i1 %1584 to i8
  store i8 %1585, i8* %14, align 1
  %1586 = and i32 %1580, 255
  %1587 = tail call i32 @llvm.ctpop.i32(i32 %1586)
  %1588 = trunc i32 %1587 to i8
  %1589 = and i8 %1588, 1
  %1590 = xor i8 %1589, 1
  store i8 %1590, i8* %21, align 1
  %1591 = xor i32 %1580, %1579
  %1592 = lshr i32 %1591, 4
  %1593 = trunc i32 %1592 to i8
  %1594 = and i8 %1593, 1
  store i8 %1594, i8* %26, align 1
  %1595 = zext i1 %1583 to i8
  store i8 %1595, i8* %29, align 1
  %1596 = lshr i32 %1580, 31
  %1597 = trunc i32 %1596 to i8
  store i8 %1597, i8* %32, align 1
  %1598 = lshr i32 %1579, 31
  %1599 = xor i32 %1596, %1598
  %1600 = add nuw nsw i32 %1599, %1596
  %1601 = icmp eq i32 %1600, 2
  %1602 = zext i1 %1601 to i8
  store i8 %1602, i8* %38, align 1
  %1603 = add i64 %1454, 14
  store i64 %1603, i64* %3, align 8
  store i32 %1580, i32* %1578, align 4
  %1604 = load i64, i64* %3, align 8
  %1605 = add i64 %1604, -113
  store i64 %1605, i64* %3, align 8
  br label %block_.L_48c952

block_.L_48c9c8:                                  ; preds = %block_.L_48c952
  %1606 = add i64 %1393, -40
  %1607 = add i64 %1421, 8
  store i64 %1607, i64* %3, align 8
  %1608 = inttoptr i64 %1606 to i32*
  %1609 = load i32, i32* %1608, align 4
  %1610 = add i32 %1609, 1
  %1611 = zext i32 %1610 to i64
  store i64 %1611, i64* %RAX.i1567, align 8
  %1612 = icmp eq i32 %1609, -1
  %1613 = icmp eq i32 %1610, 0
  %1614 = or i1 %1612, %1613
  %1615 = zext i1 %1614 to i8
  store i8 %1615, i8* %14, align 1
  %1616 = and i32 %1610, 255
  %1617 = tail call i32 @llvm.ctpop.i32(i32 %1616)
  %1618 = trunc i32 %1617 to i8
  %1619 = and i8 %1618, 1
  %1620 = xor i8 %1619, 1
  store i8 %1620, i8* %21, align 1
  %1621 = xor i32 %1610, %1609
  %1622 = lshr i32 %1621, 4
  %1623 = trunc i32 %1622 to i8
  %1624 = and i8 %1623, 1
  store i8 %1624, i8* %26, align 1
  %1625 = zext i1 %1613 to i8
  store i8 %1625, i8* %29, align 1
  %1626 = lshr i32 %1610, 31
  %1627 = trunc i32 %1626 to i8
  store i8 %1627, i8* %32, align 1
  %1628 = lshr i32 %1609, 31
  %1629 = xor i32 %1626, %1628
  %1630 = add nuw nsw i32 %1629, %1626
  %1631 = icmp eq i32 %1630, 2
  %1632 = zext i1 %1631 to i8
  store i8 %1632, i8* %38, align 1
  %1633 = add i64 %1421, 14
  store i64 %1633, i64* %3, align 8
  store i32 %1610, i32* %1608, align 4
  %1634 = load i64, i64* %3, align 8
  %1635 = add i64 %1634, -149
  store i64 %1635, i64* %3, align 8
  br label %block_.L_48c941

block_.L_48c9db:                                  ; preds = %block_.L_48c941
  %1636 = add i64 %1360, -116
  %1637 = add i64 %1388, 7
  store i64 %1637, i64* %3, align 8
  %1638 = inttoptr i64 %1636 to i32*
  store i32 0, i32* %1638, align 4
  %.pre158 = load i64, i64* %3, align 8
  br label %block_.L_48c9e2

block_.L_48c9e2:                                  ; preds = %block_48c9ec, %block_.L_48c9db
  %1639 = phi i64 [ %1719, %block_48c9ec ], [ %.pre158, %block_.L_48c9db ]
  %1640 = load i64, i64* %RBP.i, align 8
  %1641 = add i64 %1640, -116
  %1642 = add i64 %1639, 4
  store i64 %1642, i64* %3, align 8
  %1643 = inttoptr i64 %1641 to i32*
  %1644 = load i32, i32* %1643, align 4
  %1645 = add i32 %1644, -2
  %1646 = icmp ult i32 %1644, 2
  %1647 = zext i1 %1646 to i8
  store i8 %1647, i8* %14, align 1
  %1648 = and i32 %1645, 255
  %1649 = tail call i32 @llvm.ctpop.i32(i32 %1648)
  %1650 = trunc i32 %1649 to i8
  %1651 = and i8 %1650, 1
  %1652 = xor i8 %1651, 1
  store i8 %1652, i8* %21, align 1
  %1653 = xor i32 %1645, %1644
  %1654 = lshr i32 %1653, 4
  %1655 = trunc i32 %1654 to i8
  %1656 = and i8 %1655, 1
  store i8 %1656, i8* %26, align 1
  %1657 = icmp eq i32 %1645, 0
  %1658 = zext i1 %1657 to i8
  store i8 %1658, i8* %29, align 1
  %1659 = lshr i32 %1645, 31
  %1660 = trunc i32 %1659 to i8
  store i8 %1660, i8* %32, align 1
  %1661 = lshr i32 %1644, 31
  %1662 = xor i32 %1659, %1661
  %1663 = add nuw nsw i32 %1662, %1661
  %1664 = icmp eq i32 %1663, 2
  %1665 = zext i1 %1664 to i8
  store i8 %1665, i8* %38, align 1
  %1666 = icmp ne i8 %1660, 0
  %1667 = xor i1 %1666, %1664
  %.v247 = select i1 %1667, i64 10, i64 38
  %1668 = add i64 %1639, %.v247
  store i64 %1668, i64* %3, align 8
  br i1 %1667, label %block_48c9ec, label %block_.L_48ca08

block_48c9ec:                                     ; preds = %block_.L_48c9e2
  %1669 = add i64 %1668, 3
  store i64 %1669, i64* %3, align 8
  %1670 = load i32, i32* %1643, align 4
  %1671 = zext i32 %1670 to i64
  store i64 %1671, i64* %RDI.i1462, align 8
  %1672 = add i64 %1640, -112
  %1673 = add i64 %1668, 6
  store i64 %1673, i64* %3, align 8
  %1674 = inttoptr i64 %1672 to i32*
  %1675 = load i32, i32* %1674, align 4
  %1676 = zext i32 %1675 to i64
  store i64 %1676, i64* %RSI.i1580, align 8
  %1677 = add i64 %1668, -527756
  %1678 = add i64 %1668, 11
  %1679 = load i64, i64* %6, align 8
  %1680 = add i64 %1679, -8
  %1681 = inttoptr i64 %1680 to i64*
  store i64 %1678, i64* %1681, align 8
  store i64 %1680, i64* %6, align 8
  store i64 %1677, i64* %3, align 8
  %call2_48c9f2 = tail call %struct.Memory* @sub_40bc60.dct_chroma_DC(%struct.State* nonnull %0, i64 %1677, %struct.Memory* %call2_48c916)
  %1682 = load i64, i64* %RBP.i, align 8
  %1683 = add i64 %1682, -112
  %1684 = load i32, i32* %EAX.i1179, align 4
  %1685 = load i64, i64* %3, align 8
  %1686 = add i64 %1685, 3
  store i64 %1686, i64* %3, align 8
  %1687 = inttoptr i64 %1683 to i32*
  store i32 %1684, i32* %1687, align 4
  %1688 = load i64, i64* %RBP.i, align 8
  %1689 = add i64 %1688, -116
  %1690 = load i64, i64* %3, align 8
  %1691 = add i64 %1690, 3
  store i64 %1691, i64* %3, align 8
  %1692 = inttoptr i64 %1689 to i32*
  %1693 = load i32, i32* %1692, align 4
  %1694 = add i32 %1693, 1
  %1695 = zext i32 %1694 to i64
  store i64 %1695, i64* %RAX.i1567, align 8
  %1696 = icmp eq i32 %1693, -1
  %1697 = icmp eq i32 %1694, 0
  %1698 = or i1 %1696, %1697
  %1699 = zext i1 %1698 to i8
  store i8 %1699, i8* %14, align 1
  %1700 = and i32 %1694, 255
  %1701 = tail call i32 @llvm.ctpop.i32(i32 %1700)
  %1702 = trunc i32 %1701 to i8
  %1703 = and i8 %1702, 1
  %1704 = xor i8 %1703, 1
  store i8 %1704, i8* %21, align 1
  %1705 = xor i32 %1694, %1693
  %1706 = lshr i32 %1705, 4
  %1707 = trunc i32 %1706 to i8
  %1708 = and i8 %1707, 1
  store i8 %1708, i8* %26, align 1
  %1709 = zext i1 %1697 to i8
  store i8 %1709, i8* %29, align 1
  %1710 = lshr i32 %1694, 31
  %1711 = trunc i32 %1710 to i8
  store i8 %1711, i8* %32, align 1
  %1712 = lshr i32 %1693, 31
  %1713 = xor i32 %1710, %1712
  %1714 = add nuw nsw i32 %1713, %1710
  %1715 = icmp eq i32 %1714, 2
  %1716 = zext i1 %1715 to i8
  store i8 %1716, i8* %38, align 1
  %1717 = add i64 %1690, 9
  store i64 %1717, i64* %3, align 8
  store i32 %1694, i32* %1692, align 4
  %1718 = load i64, i64* %3, align 8
  %1719 = add i64 %1718, -33
  store i64 %1719, i64* %3, align 8
  br label %block_.L_48c9e2

block_.L_48ca08:                                  ; preds = %block_.L_48c9e2
  %1720 = add i64 %1640, -112
  %1721 = add i64 %1668, 3
  store i64 %1721, i64* %3, align 8
  %1722 = inttoptr i64 %1720 to i32*
  %1723 = load i32, i32* %1722, align 4
  %1724 = shl i32 %1723, 4
  %1725 = zext i32 %1724 to i64
  store i64 %1725, i64* %RAX.i1567, align 8
  %1726 = lshr i32 %1723, 28
  %1727 = trunc i32 %1726 to i8
  %1728 = and i8 %1727, 1
  store i8 %1728, i8* %14, align 1
  %1729 = and i32 %1724, 240
  %1730 = tail call i32 @llvm.ctpop.i32(i32 %1729)
  %1731 = trunc i32 %1730 to i8
  %1732 = and i8 %1731, 1
  %1733 = xor i8 %1732, 1
  store i8 %1733, i8* %21, align 1
  store i8 0, i8* %26, align 1
  %1734 = icmp eq i32 %1724, 0
  %1735 = zext i1 %1734 to i8
  store i8 %1735, i8* %29, align 1
  %1736 = lshr i32 %1723, 27
  %1737 = trunc i32 %1736 to i8
  %1738 = and i8 %1737, 1
  store i8 %1738, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %1739 = add i64 %1640, -80
  %1740 = add i64 %1668, 10
  store i64 %1740, i64* %3, align 8
  %1741 = inttoptr i64 %1739 to i64*
  %1742 = load i64, i64* %1741, align 8
  store i64 %1742, i64* %RCX.i1514, align 8
  %1743 = add i64 %1742, 460
  %1744 = add i64 %1668, 16
  store i64 %1744, i64* %3, align 8
  %1745 = inttoptr i64 %1743 to i32*
  %1746 = load i32, i32* %1745, align 4
  %1747 = add i32 %1746, %1724
  %1748 = zext i32 %1747 to i64
  store i64 %1748, i64* %RAX.i1567, align 8
  %1749 = icmp ult i32 %1747, %1724
  %1750 = icmp ult i32 %1747, %1746
  %1751 = or i1 %1749, %1750
  %1752 = zext i1 %1751 to i8
  store i8 %1752, i8* %14, align 1
  %1753 = and i32 %1747, 255
  %1754 = tail call i32 @llvm.ctpop.i32(i32 %1753)
  %1755 = trunc i32 %1754 to i8
  %1756 = and i8 %1755, 1
  %1757 = xor i8 %1756, 1
  store i8 %1757, i8* %21, align 1
  %1758 = xor i32 %1746, %1724
  %1759 = xor i32 %1758, %1747
  %1760 = lshr i32 %1759, 4
  %1761 = trunc i32 %1760 to i8
  %1762 = and i8 %1761, 1
  store i8 %1762, i8* %26, align 1
  %1763 = icmp eq i32 %1747, 0
  %1764 = zext i1 %1763 to i8
  store i8 %1764, i8* %29, align 1
  %1765 = lshr i32 %1747, 31
  %1766 = trunc i32 %1765 to i8
  store i8 %1766, i8* %32, align 1
  %1767 = lshr i32 %1723, 27
  %1768 = and i32 %1767, 1
  %1769 = lshr i32 %1746, 31
  %1770 = xor i32 %1765, %1768
  %1771 = xor i32 %1765, %1769
  %1772 = add nuw nsw i32 %1770, %1771
  %1773 = icmp eq i32 %1772, 2
  %1774 = zext i1 %1773 to i8
  store i8 %1774, i8* %38, align 1
  %1775 = add i64 %1668, 22
  store i64 %1775, i64* %3, align 8
  store i32 %1747, i32* %1745, align 4
  %.pre163 = load i64, i64* %3, align 8
  br label %block_.L_48ca1e

block_.L_48ca1e:                                  ; preds = %block_.L_48ca08, %block_48c90d
  %1776 = phi i64 [ %.pre163, %block_.L_48ca08 ], [ %1354, %block_48c90d ]
  %1777 = add i64 %1776, 5
  store i64 %1777, i64* %3, align 8
  br label %block_.L_48ca23

block_.L_48ca23:                                  ; preds = %block_.L_48c903, %block_.L_48ca1e
  %1778 = phi i64 [ %1316, %block_.L_48c903 ], [ %1777, %block_.L_48ca1e ]
  %MEMORY.18 = phi %struct.Memory* [ %call2_48c69c, %block_.L_48c903 ], [ %call2_48c916, %block_.L_48ca1e ]
  %1779 = add i64 %1778, 5
  store i64 %1779, i64* %3, align 8
  br label %block_.L_48ca28

block_.L_48ca28:                                  ; preds = %block_.L_48ca23, %block_48c8f1
  %storemerge87 = phi i64 [ %1292, %block_48c8f1 ], [ %1779, %block_.L_48ca23 ]
  %MEMORY.19 = phi %struct.Memory* [ %call2_48c8f9, %block_48c8f1 ], [ %MEMORY.18, %block_.L_48ca23 ]
  %1780 = add i64 %storemerge87, 5
  store i64 %1780, i64* %3, align 8
  br label %block_.L_48ca2d

block_.L_48ca2d:                                  ; preds = %block_.L_48ca28, %block_.L_48c8e2
  %storemerge86 = phi i64 [ %1256, %block_.L_48c8e2 ], [ %1780, %block_.L_48ca28 ]
  %MEMORY.20 = phi %struct.Memory* [ %call2_48c7da, %block_.L_48c8e2 ], [ %MEMORY.19, %block_.L_48ca28 ]
  %1781 = add i64 %storemerge86, 5
  store i64 %1781, i64* %3, align 8
  br label %block_.L_48ca32

block_.L_48ca32:                                  ; preds = %block_.L_48ca2d, %block_48c7b9
  %storemerge82 = phi i64 [ %771, %block_48c7b9 ], [ %1781, %block_.L_48ca2d ]
  %MEMORY.21 = phi %struct.Memory* [ %call2_48c7bd, %block_48c7b9 ], [ %MEMORY.20, %block_.L_48ca2d ]
  %1782 = add i64 %storemerge82, 5
  store i64 %1782, i64* %3, align 8
  br label %block_.L_48ca37

block_.L_48ca37:                                  ; preds = %block_.L_48ca32, %block_.L_48c7aa
  %storemerge73 = phi i64 [ %736, %block_.L_48c7aa ], [ %1782, %block_.L_48ca32 ]
  %MEMORY.22 = phi %struct.Memory* [ %call2_48c76d, %block_.L_48c7aa ], [ %MEMORY.21, %block_.L_48ca32 ]
  %1783 = load i64, i64* bitcast (%G_0x6cb8f8_type* @G_0x6cb8f8 to i64*), align 8
  store i64 %1783, i64* %RAX.i1567, align 8
  %1784 = add i64 %1783, 2464
  %1785 = add i64 %storemerge73, 15
  store i64 %1785, i64* %3, align 8
  %1786 = inttoptr i64 %1784 to i32*
  %1787 = load i32, i32* %1786, align 4
  %1788 = add i32 %1787, -2
  %1789 = icmp ult i32 %1787, 2
  %1790 = zext i1 %1789 to i8
  store i8 %1790, i8* %14, align 1
  %1791 = and i32 %1788, 255
  %1792 = tail call i32 @llvm.ctpop.i32(i32 %1791)
  %1793 = trunc i32 %1792 to i8
  %1794 = and i8 %1793, 1
  %1795 = xor i8 %1794, 1
  store i8 %1795, i8* %21, align 1
  %1796 = xor i32 %1788, %1787
  %1797 = lshr i32 %1796, 4
  %1798 = trunc i32 %1797 to i8
  %1799 = and i8 %1798, 1
  store i8 %1799, i8* %26, align 1
  %1800 = icmp eq i32 %1788, 0
  %1801 = zext i1 %1800 to i8
  store i8 %1801, i8* %29, align 1
  %1802 = lshr i32 %1788, 31
  %1803 = trunc i32 %1802 to i8
  store i8 %1803, i8* %32, align 1
  %1804 = lshr i32 %1787, 31
  %1805 = xor i32 %1802, %1804
  %1806 = add nuw nsw i32 %1805, %1804
  %1807 = icmp eq i32 %1806, 2
  %1808 = zext i1 %1807 to i8
  store i8 %1808, i8* %38, align 1
  %.v217 = select i1 %1800, i64 21, i64 92
  %1809 = add i64 %storemerge73, %.v217
  store i64 %1809, i64* %3, align 8
  br i1 %1800, label %block_48ca4c, label %block_.L_48ca93

block_48ca4c:                                     ; preds = %block_.L_48ca37
  %1810 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*), align 8
  store i64 %1810, i64* %RAX.i1567, align 8
  %1811 = add i64 %1810, 24
  %1812 = add i64 %1809, 12
  store i64 %1812, i64* %3, align 8
  %1813 = inttoptr i64 %1811 to i32*
  %1814 = load i32, i32* %1813, align 4
  %1815 = add i32 %1814, -1
  %1816 = icmp eq i32 %1814, 0
  %1817 = zext i1 %1816 to i8
  store i8 %1817, i8* %14, align 1
  %1818 = and i32 %1815, 255
  %1819 = tail call i32 @llvm.ctpop.i32(i32 %1818)
  %1820 = trunc i32 %1819 to i8
  %1821 = and i8 %1820, 1
  %1822 = xor i8 %1821, 1
  store i8 %1822, i8* %21, align 1
  %1823 = xor i32 %1815, %1814
  %1824 = lshr i32 %1823, 4
  %1825 = trunc i32 %1824 to i8
  %1826 = and i8 %1825, 1
  store i8 %1826, i8* %26, align 1
  %1827 = icmp eq i32 %1815, 0
  %1828 = zext i1 %1827 to i8
  store i8 %1828, i8* %29, align 1
  %1829 = lshr i32 %1815, 31
  %1830 = trunc i32 %1829 to i8
  store i8 %1830, i8* %32, align 1
  %1831 = lshr i32 %1814, 31
  %1832 = xor i32 %1829, %1831
  %1833 = add nuw nsw i32 %1832, %1831
  %1834 = icmp eq i32 %1833, 2
  %1835 = zext i1 %1834 to i8
  store i8 %1835, i8* %38, align 1
  %.v243 = select i1 %1827, i64 71, i64 18
  %1836 = add i64 %1809, %.v243
  store i64 %1836, i64* %3, align 8
  br i1 %1827, label %block_.L_48ca93, label %block_48ca5e

block_48ca5e:                                     ; preds = %block_48ca4c
  %1837 = load i64, i64* %RBP.i, align 8
  %1838 = add i64 %1837, -20
  %1839 = add i64 %1836, 4
  store i64 %1839, i64* %3, align 8
  %1840 = inttoptr i64 %1838 to i32*
  %1841 = load i32, i32* %1840, align 4
  %1842 = add i32 %1841, -10
  %1843 = icmp ult i32 %1841, 10
  %1844 = zext i1 %1843 to i8
  store i8 %1844, i8* %14, align 1
  %1845 = and i32 %1842, 255
  %1846 = tail call i32 @llvm.ctpop.i32(i32 %1845)
  %1847 = trunc i32 %1846 to i8
  %1848 = and i8 %1847, 1
  %1849 = xor i8 %1848, 1
  store i8 %1849, i8* %21, align 1
  %1850 = xor i32 %1842, %1841
  %1851 = lshr i32 %1850, 4
  %1852 = trunc i32 %1851 to i8
  %1853 = and i8 %1852, 1
  store i8 %1853, i8* %26, align 1
  %1854 = icmp eq i32 %1842, 0
  %1855 = zext i1 %1854 to i8
  store i8 %1855, i8* %29, align 1
  %1856 = lshr i32 %1842, 31
  %1857 = trunc i32 %1856 to i8
  store i8 %1857, i8* %32, align 1
  %1858 = lshr i32 %1841, 31
  %1859 = xor i32 %1856, %1858
  %1860 = add nuw nsw i32 %1859, %1858
  %1861 = icmp eq i32 %1860, 2
  %1862 = zext i1 %1861 to i8
  store i8 %1862, i8* %38, align 1
  %.v244 = select i1 %1854, i64 10, i64 24
  %1863 = add i64 %1836, %.v244
  store i64 %1863, i64* %3, align 8
  br i1 %1854, label %block_48ca68, label %block_.L_48ca76

block_48ca68:                                     ; preds = %block_48ca5e
  %1864 = add i64 %1837, -36
  %1865 = add i64 %1863, 3
  store i64 %1865, i64* %3, align 8
  %1866 = inttoptr i64 %1864 to i32*
  %1867 = load i32, i32* %1866, align 4
  %1868 = zext i32 %1867 to i64
  store i64 %1868, i64* %RAX.i1567, align 8
  %1869 = add i64 %1837, -144
  %1870 = add i64 %1863, 9
  store i64 %1870, i64* %3, align 8
  %1871 = inttoptr i64 %1869 to i32*
  store i32 %1867, i32* %1871, align 4
  %1872 = load i64, i64* %3, align 8
  %1873 = add i64 %1872, 21
  br label %block_.L_48ca86

block_.L_48ca76:                                  ; preds = %block_48ca5e
  store i64 4294967295, i64* %RAX.i1567, align 8
  %1874 = add i64 %1837, -144
  %1875 = add i64 %1863, 11
  store i64 %1875, i64* %3, align 8
  %1876 = inttoptr i64 %1874 to i32*
  store i32 -1, i32* %1876, align 4
  %1877 = load i64, i64* %3, align 8
  %1878 = add i64 %1877, 5
  store i64 %1878, i64* %3, align 8
  br label %block_.L_48ca86

block_.L_48ca86:                                  ; preds = %block_.L_48ca76, %block_48ca68
  %storemerge74 = phi i64 [ %1873, %block_48ca68 ], [ %1878, %block_.L_48ca76 ]
  %1879 = load i64, i64* %RBP.i, align 8
  %1880 = add i64 %1879, -144
  %1881 = add i64 %storemerge74, 6
  store i64 %1881, i64* %3, align 8
  %1882 = inttoptr i64 %1880 to i32*
  %1883 = load i32, i32* %1882, align 4
  %1884 = zext i32 %1883 to i64
  store i64 %1884, i64* %RAX.i1567, align 8
  store i64 %1884, i64* %RDI.i1462, align 8
  %1885 = add i64 %storemerge74, -454118
  %1886 = add i64 %storemerge74, 13
  %1887 = load i64, i64* %6, align 8
  %1888 = add i64 %1887, -8
  %1889 = inttoptr i64 %1888 to i64*
  store i64 %1886, i64* %1889, align 8
  store i64 %1888, i64* %6, align 8
  store i64 %1885, i64* %3, align 8
  %call2_48ca8e = tail call %struct.Memory* @sub_41dca0.compute_residue_mb(%struct.State* nonnull %0, i64 %1885, %struct.Memory* %MEMORY.22)
  %.pre164 = load i64, i64* %3, align 8
  br label %block_.L_48ca93

block_.L_48ca93:                                  ; preds = %block_.L_48ca37, %block_.L_48ca86, %block_48ca4c
  %1890 = phi i64 [ %1809, %block_.L_48ca37 ], [ %1836, %block_48ca4c ], [ %.pre164, %block_.L_48ca86 ]
  %MEMORY.24 = phi %struct.Memory* [ %MEMORY.22, %block_.L_48ca37 ], [ %MEMORY.22, %block_48ca4c ], [ %call2_48ca8e, %block_.L_48ca86 ]
  %1891 = load i64, i64* %RBP.i, align 8
  %1892 = add i64 %1891, -20
  %1893 = add i64 %1890, 4
  store i64 %1893, i64* %3, align 8
  %1894 = inttoptr i64 %1892 to i32*
  %1895 = load i32, i32* %1894, align 4
  %1896 = add i32 %1895, -10
  %1897 = icmp ult i32 %1895, 10
  %1898 = zext i1 %1897 to i8
  store i8 %1898, i8* %14, align 1
  %1899 = and i32 %1896, 255
  %1900 = tail call i32 @llvm.ctpop.i32(i32 %1899)
  %1901 = trunc i32 %1900 to i8
  %1902 = and i8 %1901, 1
  %1903 = xor i8 %1902, 1
  store i8 %1903, i8* %21, align 1
  %1904 = xor i32 %1896, %1895
  %1905 = lshr i32 %1904, 4
  %1906 = trunc i32 %1905 to i8
  %1907 = and i8 %1906, 1
  store i8 %1907, i8* %26, align 1
  %1908 = icmp eq i32 %1896, 0
  %1909 = zext i1 %1908 to i8
  store i8 %1909, i8* %29, align 1
  %1910 = lshr i32 %1896, 31
  %1911 = trunc i32 %1910 to i8
  store i8 %1911, i8* %32, align 1
  %1912 = lshr i32 %1895, 31
  %1913 = xor i32 %1910, %1912
  %1914 = add nuw nsw i32 %1913, %1912
  %1915 = icmp eq i32 %1914, 2
  %1916 = zext i1 %1915 to i8
  store i8 %1916, i8* %38, align 1
  %.v192 = select i1 %1908, i64 10, i64 155
  %1917 = add i64 %1890, %.v192
  %1918 = add i64 %1891, -40
  %1919 = add i64 %1917, 7
  store i64 %1919, i64* %3, align 8
  %1920 = inttoptr i64 %1918 to i32*
  store i32 0, i32* %1920, align 4
  %RDX.i930 = getelementptr inbounds %union.anon, %union.anon* %60, i64 0, i32 0
  %ESI.i903 = bitcast %union.anon* %53 to i32*
  %EAX.i895 = bitcast %union.anon* %83 to i32*
  %.pre165 = load i64, i64* %3, align 8
  br i1 %1908, label %block_.L_48caa4.preheader, label %block_.L_48cb35.preheader

block_.L_48cb35.preheader:                        ; preds = %block_.L_48ca93
  br label %block_.L_48cb35

block_.L_48caa4.preheader:                        ; preds = %block_.L_48ca93
  br label %block_.L_48caa4

block_.L_48caa4:                                  ; preds = %block_.L_48caa4.preheader, %block_.L_48cb16
  %1921 = phi i64 [ %2187, %block_.L_48cb16 ], [ %.pre165, %block_.L_48caa4.preheader ]
  %1922 = load i64, i64* %RBP.i, align 8
  %1923 = add i64 %1922, -40
  %1924 = add i64 %1921, 4
  store i64 %1924, i64* %3, align 8
  %1925 = inttoptr i64 %1923 to i32*
  %1926 = load i32, i32* %1925, align 4
  %1927 = add i32 %1926, -16
  %1928 = icmp ult i32 %1926, 16
  %1929 = zext i1 %1928 to i8
  store i8 %1929, i8* %14, align 1
  %1930 = and i32 %1927, 255
  %1931 = tail call i32 @llvm.ctpop.i32(i32 %1930)
  %1932 = trunc i32 %1931 to i8
  %1933 = and i8 %1932, 1
  %1934 = xor i8 %1933, 1
  store i8 %1934, i8* %21, align 1
  %1935 = xor i32 %1926, 16
  %1936 = xor i32 %1935, %1927
  %1937 = lshr i32 %1936, 4
  %1938 = trunc i32 %1937 to i8
  %1939 = and i8 %1938, 1
  store i8 %1939, i8* %26, align 1
  %1940 = icmp eq i32 %1927, 0
  %1941 = zext i1 %1940 to i8
  store i8 %1941, i8* %29, align 1
  %1942 = lshr i32 %1927, 31
  %1943 = trunc i32 %1942 to i8
  store i8 %1943, i8* %32, align 1
  %1944 = lshr i32 %1926, 31
  %1945 = xor i32 %1942, %1944
  %1946 = add nuw nsw i32 %1945, %1944
  %1947 = icmp eq i32 %1946, 2
  %1948 = zext i1 %1947 to i8
  store i8 %1948, i8* %38, align 1
  %1949 = icmp ne i8 %1943, 0
  %1950 = xor i1 %1949, %1947
  %.v242 = select i1 %1950, i64 10, i64 133
  %1951 = add i64 %1921, %.v242
  store i64 %1951, i64* %3, align 8
  br i1 %1950, label %block_48caae, label %block_.L_48cb29

block_48caae:                                     ; preds = %block_.L_48caa4
  %1952 = add i64 %1922, -44
  %1953 = add i64 %1951, 7
  store i64 %1953, i64* %3, align 8
  %1954 = inttoptr i64 %1952 to i32*
  store i32 0, i32* %1954, align 4
  %.pre166 = load i64, i64* %3, align 8
  br label %block_.L_48cab5

block_.L_48cab5:                                  ; preds = %block_48cabf, %block_48caae
  %1955 = phi i64 [ %2157, %block_48cabf ], [ %.pre166, %block_48caae ]
  %1956 = load i64, i64* %RBP.i, align 8
  %1957 = add i64 %1956, -44
  %1958 = add i64 %1955, 4
  store i64 %1958, i64* %3, align 8
  %1959 = inttoptr i64 %1957 to i32*
  %1960 = load i32, i32* %1959, align 4
  %1961 = add i32 %1960, -16
  %1962 = icmp ult i32 %1960, 16
  %1963 = zext i1 %1962 to i8
  store i8 %1963, i8* %14, align 1
  %1964 = and i32 %1961, 255
  %1965 = tail call i32 @llvm.ctpop.i32(i32 %1964)
  %1966 = trunc i32 %1965 to i8
  %1967 = and i8 %1966, 1
  %1968 = xor i8 %1967, 1
  store i8 %1968, i8* %21, align 1
  %1969 = xor i32 %1960, 16
  %1970 = xor i32 %1969, %1961
  %1971 = lshr i32 %1970, 4
  %1972 = trunc i32 %1971 to i8
  %1973 = and i8 %1972, 1
  store i8 %1973, i8* %26, align 1
  %1974 = icmp eq i32 %1961, 0
  %1975 = zext i1 %1974 to i8
  store i8 %1975, i8* %29, align 1
  %1976 = lshr i32 %1961, 31
  %1977 = trunc i32 %1976 to i8
  store i8 %1977, i8* %32, align 1
  %1978 = lshr i32 %1960, 31
  %1979 = xor i32 %1976, %1978
  %1980 = add nuw nsw i32 %1979, %1978
  %1981 = icmp eq i32 %1980, 2
  %1982 = zext i1 %1981 to i8
  store i8 %1982, i8* %38, align 1
  %1983 = icmp ne i8 %1977, 0
  %1984 = xor i1 %1983, %1981
  %.v202 = select i1 %1984, i64 10, i64 97
  %1985 = add i64 %1955, %.v202
  store i64 %1985, i64* %3, align 8
  br i1 %1984, label %block_48cabf, label %block_.L_48cb16

block_48cabf:                                     ; preds = %block_.L_48cab5
  store i64 ptrtoint (%G__0x6cc660_type* @G__0x6cc660 to i64), i64* %RAX.i1567, align 8
  %1986 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*), align 8
  %1987 = add i64 %1986, 4792
  store i64 %1987, i64* %RCX.i1514, align 8
  %1988 = icmp ugt i64 %1986, -4793
  %1989 = zext i1 %1988 to i8
  store i8 %1989, i8* %14, align 1
  %1990 = trunc i64 %1987 to i32
  %1991 = and i32 %1990, 255
  %1992 = tail call i32 @llvm.ctpop.i32(i32 %1991)
  %1993 = trunc i32 %1992 to i8
  %1994 = and i8 %1993, 1
  %1995 = xor i8 %1994, 1
  store i8 %1995, i8* %21, align 1
  %1996 = xor i64 %1986, 16
  %1997 = xor i64 %1996, %1987
  %1998 = lshr i64 %1997, 4
  %1999 = trunc i64 %1998 to i8
  %2000 = and i8 %1999, 1
  store i8 %2000, i8* %26, align 1
  %2001 = icmp eq i64 %1987, 0
  %2002 = zext i1 %2001 to i8
  store i8 %2002, i8* %29, align 1
  %2003 = lshr i64 %1987, 63
  %2004 = trunc i64 %2003 to i8
  store i8 %2004, i8* %32, align 1
  %2005 = lshr i64 %1986, 63
  %2006 = xor i64 %2003, %2005
  %2007 = add nuw nsw i64 %2006, %2003
  %2008 = icmp eq i64 %2007, 2
  %2009 = zext i1 %2008 to i8
  store i8 %2009, i8* %38, align 1
  %2010 = add i64 %1956, -36
  %2011 = add i64 %1985, 29
  store i64 %2011, i64* %3, align 8
  %2012 = inttoptr i64 %2010 to i32*
  %2013 = load i32, i32* %2012, align 4
  %2014 = sext i32 %2013 to i64
  %2015 = shl nsw i64 %2014, 9
  store i64 %2015, i64* %RDX.i930, align 8
  %2016 = add i64 %2015, %1987
  store i64 %2016, i64* %RCX.i1514, align 8
  %2017 = icmp ult i64 %2016, %1987
  %2018 = icmp ult i64 %2016, %2015
  %2019 = or i1 %2017, %2018
  %2020 = zext i1 %2019 to i8
  store i8 %2020, i8* %14, align 1
  %2021 = trunc i64 %2016 to i32
  %2022 = and i32 %2021, 255
  %2023 = tail call i32 @llvm.ctpop.i32(i32 %2022)
  %2024 = trunc i32 %2023 to i8
  %2025 = and i8 %2024, 1
  %2026 = xor i8 %2025, 1
  store i8 %2026, i8* %21, align 1
  %2027 = xor i64 %1987, %2016
  %2028 = lshr i64 %2027, 4
  %2029 = trunc i64 %2028 to i8
  %2030 = and i8 %2029, 1
  store i8 %2030, i8* %26, align 1
  %2031 = icmp eq i64 %2016, 0
  %2032 = zext i1 %2031 to i8
  store i8 %2032, i8* %29, align 1
  %2033 = lshr i64 %2016, 63
  %2034 = trunc i64 %2033 to i8
  store i8 %2034, i8* %32, align 1
  %2035 = lshr i64 %2014, 54
  %2036 = and i64 %2035, 1
  %2037 = xor i64 %2033, %2003
  %2038 = xor i64 %2033, %2036
  %2039 = add nuw nsw i64 %2037, %2038
  %2040 = icmp eq i64 %2039, 2
  %2041 = zext i1 %2040 to i8
  store i8 %2041, i8* %38, align 1
  %2042 = add i64 %1985, 40
  store i64 %2042, i64* %3, align 8
  %2043 = load i32, i32* %1959, align 4
  %2044 = sext i32 %2043 to i64
  %2045 = shl nsw i64 %2044, 5
  store i64 %2045, i64* %RDX.i930, align 8
  %2046 = add i64 %2045, %2016
  store i64 %2046, i64* %RCX.i1514, align 8
  %2047 = icmp ult i64 %2046, %2016
  %2048 = icmp ult i64 %2046, %2045
  %2049 = or i1 %2047, %2048
  %2050 = zext i1 %2049 to i8
  store i8 %2050, i8* %14, align 1
  %2051 = trunc i64 %2046 to i32
  %2052 = and i32 %2051, 255
  %2053 = tail call i32 @llvm.ctpop.i32(i32 %2052)
  %2054 = trunc i32 %2053 to i8
  %2055 = and i8 %2054, 1
  %2056 = xor i8 %2055, 1
  store i8 %2056, i8* %21, align 1
  %2057 = xor i64 %2016, %2046
  %2058 = lshr i64 %2057, 4
  %2059 = trunc i64 %2058 to i8
  %2060 = and i8 %2059, 1
  store i8 %2060, i8* %26, align 1
  %2061 = icmp eq i64 %2046, 0
  %2062 = zext i1 %2061 to i8
  store i8 %2062, i8* %29, align 1
  %2063 = lshr i64 %2046, 63
  %2064 = trunc i64 %2063 to i8
  store i8 %2064, i8* %32, align 1
  %2065 = lshr i64 %2044, 58
  %2066 = and i64 %2065, 1
  %2067 = xor i64 %2063, %2033
  %2068 = xor i64 %2063, %2066
  %2069 = add nuw nsw i64 %2067, %2068
  %2070 = icmp eq i64 %2069, 2
  %2071 = zext i1 %2070 to i8
  store i8 %2071, i8* %38, align 1
  %2072 = load i64, i64* %RBP.i, align 8
  %2073 = add i64 %2072, -40
  %2074 = add i64 %1985, 51
  store i64 %2074, i64* %3, align 8
  %2075 = inttoptr i64 %2073 to i32*
  %2076 = load i32, i32* %2075, align 4
  %2077 = sext i32 %2076 to i64
  store i64 %2077, i64* %RDX.i930, align 8
  %2078 = shl nsw i64 %2077, 1
  %2079 = add i64 %2078, %2046
  %2080 = add i64 %1985, 55
  store i64 %2080, i64* %3, align 8
  %2081 = inttoptr i64 %2079 to i16*
  %2082 = load i16, i16* %2081, align 2
  %2083 = zext i16 %2082 to i64
  store i64 %2083, i64* %RSI.i1580, align 8
  %2084 = add i64 %2072, -44
  %2085 = add i64 %1985, 59
  store i64 %2085, i64* %3, align 8
  %2086 = inttoptr i64 %2084 to i32*
  %2087 = load i32, i32* %2086, align 4
  %2088 = sext i32 %2087 to i64
  %2089 = shl nsw i64 %2088, 6
  store i64 %2089, i64* %RCX.i1514, align 8
  %2090 = load i64, i64* %RAX.i1567, align 8
  %2091 = add i64 %2089, %2090
  store i64 %2091, i64* %RAX.i1567, align 8
  %2092 = icmp ult i64 %2091, %2090
  %2093 = icmp ult i64 %2091, %2089
  %2094 = or i1 %2092, %2093
  %2095 = zext i1 %2094 to i8
  store i8 %2095, i8* %14, align 1
  %2096 = trunc i64 %2091 to i32
  %2097 = and i32 %2096, 255
  %2098 = tail call i32 @llvm.ctpop.i32(i32 %2097)
  %2099 = trunc i32 %2098 to i8
  %2100 = and i8 %2099, 1
  %2101 = xor i8 %2100, 1
  store i8 %2101, i8* %21, align 1
  %2102 = xor i64 %2090, %2091
  %2103 = lshr i64 %2102, 4
  %2104 = trunc i64 %2103 to i8
  %2105 = and i8 %2104, 1
  store i8 %2105, i8* %26, align 1
  %2106 = icmp eq i64 %2091, 0
  %2107 = zext i1 %2106 to i8
  store i8 %2107, i8* %29, align 1
  %2108 = lshr i64 %2091, 63
  %2109 = trunc i64 %2108 to i8
  store i8 %2109, i8* %32, align 1
  %2110 = lshr i64 %2090, 63
  %2111 = lshr i64 %2088, 57
  %2112 = and i64 %2111, 1
  %2113 = xor i64 %2108, %2110
  %2114 = xor i64 %2108, %2112
  %2115 = add nuw nsw i64 %2113, %2114
  %2116 = icmp eq i64 %2115, 2
  %2117 = zext i1 %2116 to i8
  store i8 %2117, i8* %38, align 1
  %2118 = add i64 %1985, 70
  store i64 %2118, i64* %3, align 8
  %2119 = load i32, i32* %2075, align 4
  %2120 = sext i32 %2119 to i64
  store i64 %2120, i64* %RCX.i1514, align 8
  %2121 = shl nsw i64 %2120, 2
  %2122 = add i64 %2121, %2091
  %2123 = zext i16 %2082 to i32
  %2124 = add i64 %1985, 73
  store i64 %2124, i64* %3, align 8
  %2125 = inttoptr i64 %2122 to i32*
  store i32 %2123, i32* %2125, align 4
  %2126 = load i64, i64* %RBP.i, align 8
  %2127 = add i64 %2126, -44
  %2128 = load i64, i64* %3, align 8
  %2129 = add i64 %2128, 3
  store i64 %2129, i64* %3, align 8
  %2130 = inttoptr i64 %2127 to i32*
  %2131 = load i32, i32* %2130, align 4
  %2132 = add i32 %2131, 1
  %2133 = zext i32 %2132 to i64
  store i64 %2133, i64* %RAX.i1567, align 8
  %2134 = icmp eq i32 %2131, -1
  %2135 = icmp eq i32 %2132, 0
  %2136 = or i1 %2134, %2135
  %2137 = zext i1 %2136 to i8
  store i8 %2137, i8* %14, align 1
  %2138 = and i32 %2132, 255
  %2139 = tail call i32 @llvm.ctpop.i32(i32 %2138)
  %2140 = trunc i32 %2139 to i8
  %2141 = and i8 %2140, 1
  %2142 = xor i8 %2141, 1
  store i8 %2142, i8* %21, align 1
  %2143 = xor i32 %2132, %2131
  %2144 = lshr i32 %2143, 4
  %2145 = trunc i32 %2144 to i8
  %2146 = and i8 %2145, 1
  store i8 %2146, i8* %26, align 1
  %2147 = zext i1 %2135 to i8
  store i8 %2147, i8* %29, align 1
  %2148 = lshr i32 %2132, 31
  %2149 = trunc i32 %2148 to i8
  store i8 %2149, i8* %32, align 1
  %2150 = lshr i32 %2131, 31
  %2151 = xor i32 %2148, %2150
  %2152 = add nuw nsw i32 %2151, %2148
  %2153 = icmp eq i32 %2152, 2
  %2154 = zext i1 %2153 to i8
  store i8 %2154, i8* %38, align 1
  %2155 = add i64 %2128, 9
  store i64 %2155, i64* %3, align 8
  store i32 %2132, i32* %2130, align 4
  %2156 = load i64, i64* %3, align 8
  %2157 = add i64 %2156, -92
  store i64 %2157, i64* %3, align 8
  br label %block_.L_48cab5

block_.L_48cb16:                                  ; preds = %block_.L_48cab5
  %2158 = add i64 %1956, -40
  %2159 = add i64 %1985, 8
  store i64 %2159, i64* %3, align 8
  %2160 = inttoptr i64 %2158 to i32*
  %2161 = load i32, i32* %2160, align 4
  %2162 = add i32 %2161, 1
  %2163 = zext i32 %2162 to i64
  store i64 %2163, i64* %RAX.i1567, align 8
  %2164 = icmp eq i32 %2161, -1
  %2165 = icmp eq i32 %2162, 0
  %2166 = or i1 %2164, %2165
  %2167 = zext i1 %2166 to i8
  store i8 %2167, i8* %14, align 1
  %2168 = and i32 %2162, 255
  %2169 = tail call i32 @llvm.ctpop.i32(i32 %2168)
  %2170 = trunc i32 %2169 to i8
  %2171 = and i8 %2170, 1
  %2172 = xor i8 %2171, 1
  store i8 %2172, i8* %21, align 1
  %2173 = xor i32 %2162, %2161
  %2174 = lshr i32 %2173, 4
  %2175 = trunc i32 %2174 to i8
  %2176 = and i8 %2175, 1
  store i8 %2176, i8* %26, align 1
  %2177 = zext i1 %2165 to i8
  store i8 %2177, i8* %29, align 1
  %2178 = lshr i32 %2162, 31
  %2179 = trunc i32 %2178 to i8
  store i8 %2179, i8* %32, align 1
  %2180 = lshr i32 %2161, 31
  %2181 = xor i32 %2178, %2180
  %2182 = add nuw nsw i32 %2181, %2178
  %2183 = icmp eq i32 %2182, 2
  %2184 = zext i1 %2183 to i8
  store i8 %2184, i8* %38, align 1
  %2185 = add i64 %1985, 14
  store i64 %2185, i64* %3, align 8
  store i32 %2162, i32* %2160, align 4
  %2186 = load i64, i64* %3, align 8
  %2187 = add i64 %2186, -128
  store i64 %2187, i64* %3, align 8
  br label %block_.L_48caa4

block_.L_48cb29:                                  ; preds = %block_.L_48caa4
  %2188 = add i64 %1951, 139
  br label %block_.L_48cbb4

block_.L_48cb35:                                  ; preds = %block_.L_48cb35.preheader, %block_.L_48cb9c
  %2189 = phi i64 [ %2425, %block_.L_48cb9c ], [ %.pre165, %block_.L_48cb35.preheader ]
  %2190 = load i64, i64* %RBP.i, align 8
  %2191 = add i64 %2190, -40
  %2192 = add i64 %2189, 4
  store i64 %2192, i64* %3, align 8
  %2193 = inttoptr i64 %2191 to i32*
  %2194 = load i32, i32* %2193, align 4
  %2195 = add i32 %2194, -16
  %2196 = icmp ult i32 %2194, 16
  %2197 = zext i1 %2196 to i8
  store i8 %2197, i8* %14, align 1
  %2198 = and i32 %2195, 255
  %2199 = tail call i32 @llvm.ctpop.i32(i32 %2198)
  %2200 = trunc i32 %2199 to i8
  %2201 = and i8 %2200, 1
  %2202 = xor i8 %2201, 1
  store i8 %2202, i8* %21, align 1
  %2203 = xor i32 %2194, 16
  %2204 = xor i32 %2203, %2195
  %2205 = lshr i32 %2204, 4
  %2206 = trunc i32 %2205 to i8
  %2207 = and i8 %2206, 1
  store i8 %2207, i8* %26, align 1
  %2208 = icmp eq i32 %2195, 0
  %2209 = zext i1 %2208 to i8
  store i8 %2209, i8* %29, align 1
  %2210 = lshr i32 %2195, 31
  %2211 = trunc i32 %2210 to i8
  store i8 %2211, i8* %32, align 1
  %2212 = lshr i32 %2194, 31
  %2213 = xor i32 %2210, %2212
  %2214 = add nuw nsw i32 %2213, %2212
  %2215 = icmp eq i32 %2214, 2
  %2216 = zext i1 %2215 to i8
  store i8 %2216, i8* %38, align 1
  %2217 = icmp ne i8 %2211, 0
  %2218 = xor i1 %2217, %2215
  %.v218 = select i1 %2218, i64 10, i64 122
  %2219 = add i64 %2189, %.v218
  store i64 %2219, i64* %3, align 8
  br i1 %2218, label %block_48cb3f, label %block_.L_48cbaf

block_48cb3f:                                     ; preds = %block_.L_48cb35
  %2220 = add i64 %2190, -44
  %2221 = add i64 %2219, 7
  store i64 %2221, i64* %3, align 8
  %2222 = inttoptr i64 %2220 to i32*
  store i32 0, i32* %2222, align 4
  %.pre191 = load i64, i64* %3, align 8
  br label %block_.L_48cb46

block_.L_48cb46:                                  ; preds = %block_48cb50, %block_48cb3f
  %2223 = phi i64 [ %2395, %block_48cb50 ], [ %.pre191, %block_48cb3f ]
  %2224 = load i64, i64* %RBP.i, align 8
  %2225 = add i64 %2224, -44
  %2226 = add i64 %2223, 4
  store i64 %2226, i64* %3, align 8
  %2227 = inttoptr i64 %2225 to i32*
  %2228 = load i32, i32* %2227, align 4
  %2229 = add i32 %2228, -16
  %2230 = icmp ult i32 %2228, 16
  %2231 = zext i1 %2230 to i8
  store i8 %2231, i8* %14, align 1
  %2232 = and i32 %2229, 255
  %2233 = tail call i32 @llvm.ctpop.i32(i32 %2232)
  %2234 = trunc i32 %2233 to i8
  %2235 = and i8 %2234, 1
  %2236 = xor i8 %2235, 1
  store i8 %2236, i8* %21, align 1
  %2237 = xor i32 %2228, 16
  %2238 = xor i32 %2237, %2229
  %2239 = lshr i32 %2238, 4
  %2240 = trunc i32 %2239 to i8
  %2241 = and i8 %2240, 1
  store i8 %2241, i8* %26, align 1
  %2242 = icmp eq i32 %2229, 0
  %2243 = zext i1 %2242 to i8
  store i8 %2243, i8* %29, align 1
  %2244 = lshr i32 %2229, 31
  %2245 = trunc i32 %2244 to i8
  store i8 %2245, i8* %32, align 1
  %2246 = lshr i32 %2228, 31
  %2247 = xor i32 %2244, %2246
  %2248 = add nuw nsw i32 %2247, %2246
  %2249 = icmp eq i32 %2248, 2
  %2250 = zext i1 %2249 to i8
  store i8 %2250, i8* %38, align 1
  %2251 = icmp ne i8 %2245, 0
  %2252 = xor i1 %2251, %2249
  %.v203 = select i1 %2252, i64 10, i64 86
  %2253 = add i64 %2223, %.v203
  store i64 %2253, i64* %3, align 8
  br i1 %2252, label %block_48cb50, label %block_.L_48cb9c

block_48cb50:                                     ; preds = %block_.L_48cb46
  store i64 ptrtoint (%G__0x6cc660_type* @G__0x6cc660 to i64), i64* %RAX.i1567, align 8
  %2254 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*), align 8
  %2255 = add i64 %2254, 12600
  store i64 %2255, i64* %RCX.i1514, align 8
  %2256 = icmp ugt i64 %2254, -12601
  %2257 = zext i1 %2256 to i8
  store i8 %2257, i8* %14, align 1
  %2258 = trunc i64 %2255 to i32
  %2259 = and i32 %2258, 255
  %2260 = tail call i32 @llvm.ctpop.i32(i32 %2259)
  %2261 = trunc i32 %2260 to i8
  %2262 = and i8 %2261, 1
  %2263 = xor i8 %2262, 1
  store i8 %2263, i8* %21, align 1
  %2264 = xor i64 %2254, 16
  %2265 = xor i64 %2264, %2255
  %2266 = lshr i64 %2265, 4
  %2267 = trunc i64 %2266 to i8
  %2268 = and i8 %2267, 1
  store i8 %2268, i8* %26, align 1
  %2269 = icmp eq i64 %2255, 0
  %2270 = zext i1 %2269 to i8
  store i8 %2270, i8* %29, align 1
  %2271 = lshr i64 %2255, 63
  %2272 = trunc i64 %2271 to i8
  store i8 %2272, i8* %32, align 1
  %2273 = lshr i64 %2254, 63
  %2274 = xor i64 %2271, %2273
  %2275 = add nuw nsw i64 %2274, %2271
  %2276 = icmp eq i64 %2275, 2
  %2277 = zext i1 %2276 to i8
  store i8 %2277, i8* %38, align 1
  %2278 = add i64 %2224, -40
  %2279 = add i64 %2253, 29
  store i64 %2279, i64* %3, align 8
  %2280 = inttoptr i64 %2278 to i32*
  %2281 = load i32, i32* %2280, align 4
  %2282 = sext i32 %2281 to i64
  %2283 = shl nsw i64 %2282, 5
  store i64 %2283, i64* %RDX.i930, align 8
  %2284 = add i64 %2283, %2255
  store i64 %2284, i64* %RCX.i1514, align 8
  %2285 = icmp ult i64 %2284, %2255
  %2286 = icmp ult i64 %2284, %2283
  %2287 = or i1 %2285, %2286
  %2288 = zext i1 %2287 to i8
  store i8 %2288, i8* %14, align 1
  %2289 = trunc i64 %2284 to i32
  %2290 = and i32 %2289, 255
  %2291 = tail call i32 @llvm.ctpop.i32(i32 %2290)
  %2292 = trunc i32 %2291 to i8
  %2293 = and i8 %2292, 1
  %2294 = xor i8 %2293, 1
  store i8 %2294, i8* %21, align 1
  %2295 = xor i64 %2255, %2284
  %2296 = lshr i64 %2295, 4
  %2297 = trunc i64 %2296 to i8
  %2298 = and i8 %2297, 1
  store i8 %2298, i8* %26, align 1
  %2299 = icmp eq i64 %2284, 0
  %2300 = zext i1 %2299 to i8
  store i8 %2300, i8* %29, align 1
  %2301 = lshr i64 %2284, 63
  %2302 = trunc i64 %2301 to i8
  store i8 %2302, i8* %32, align 1
  %2303 = lshr i64 %2282, 58
  %2304 = and i64 %2303, 1
  %2305 = xor i64 %2301, %2271
  %2306 = xor i64 %2301, %2304
  %2307 = add nuw nsw i64 %2305, %2306
  %2308 = icmp eq i64 %2307, 2
  %2309 = zext i1 %2308 to i8
  store i8 %2309, i8* %38, align 1
  %2310 = load i64, i64* %RBP.i, align 8
  %2311 = add i64 %2310, -44
  %2312 = add i64 %2253, 40
  store i64 %2312, i64* %3, align 8
  %2313 = inttoptr i64 %2311 to i32*
  %2314 = load i32, i32* %2313, align 4
  %2315 = sext i32 %2314 to i64
  store i64 %2315, i64* %RDX.i930, align 8
  %2316 = shl nsw i64 %2315, 1
  %2317 = add i64 %2316, %2284
  %2318 = add i64 %2253, 44
  store i64 %2318, i64* %3, align 8
  %2319 = inttoptr i64 %2317 to i16*
  %2320 = load i16, i16* %2319, align 2
  %2321 = zext i16 %2320 to i64
  store i64 %2321, i64* %RSI.i1580, align 8
  %2322 = add i64 %2253, 48
  store i64 %2322, i64* %3, align 8
  %2323 = load i32, i32* %2313, align 4
  %2324 = sext i32 %2323 to i64
  %2325 = shl nsw i64 %2324, 6
  store i64 %2325, i64* %RCX.i1514, align 8
  %2326 = load i64, i64* %RAX.i1567, align 8
  %2327 = add i64 %2325, %2326
  store i64 %2327, i64* %RAX.i1567, align 8
  %2328 = icmp ult i64 %2327, %2326
  %2329 = icmp ult i64 %2327, %2325
  %2330 = or i1 %2328, %2329
  %2331 = zext i1 %2330 to i8
  store i8 %2331, i8* %14, align 1
  %2332 = trunc i64 %2327 to i32
  %2333 = and i32 %2332, 255
  %2334 = tail call i32 @llvm.ctpop.i32(i32 %2333)
  %2335 = trunc i32 %2334 to i8
  %2336 = and i8 %2335, 1
  %2337 = xor i8 %2336, 1
  store i8 %2337, i8* %21, align 1
  %2338 = xor i64 %2326, %2327
  %2339 = lshr i64 %2338, 4
  %2340 = trunc i64 %2339 to i8
  %2341 = and i8 %2340, 1
  store i8 %2341, i8* %26, align 1
  %2342 = icmp eq i64 %2327, 0
  %2343 = zext i1 %2342 to i8
  store i8 %2343, i8* %29, align 1
  %2344 = lshr i64 %2327, 63
  %2345 = trunc i64 %2344 to i8
  store i8 %2345, i8* %32, align 1
  %2346 = lshr i64 %2326, 63
  %2347 = lshr i64 %2324, 57
  %2348 = and i64 %2347, 1
  %2349 = xor i64 %2344, %2346
  %2350 = xor i64 %2344, %2348
  %2351 = add nuw nsw i64 %2349, %2350
  %2352 = icmp eq i64 %2351, 2
  %2353 = zext i1 %2352 to i8
  store i8 %2353, i8* %38, align 1
  %2354 = add i64 %2310, -40
  %2355 = add i64 %2253, 59
  store i64 %2355, i64* %3, align 8
  %2356 = inttoptr i64 %2354 to i32*
  %2357 = load i32, i32* %2356, align 4
  %2358 = sext i32 %2357 to i64
  store i64 %2358, i64* %RCX.i1514, align 8
  %2359 = shl nsw i64 %2358, 2
  %2360 = add i64 %2359, %2327
  %2361 = zext i16 %2320 to i32
  %2362 = add i64 %2253, 62
  store i64 %2362, i64* %3, align 8
  %2363 = inttoptr i64 %2360 to i32*
  store i32 %2361, i32* %2363, align 4
  %2364 = load i64, i64* %RBP.i, align 8
  %2365 = add i64 %2364, -44
  %2366 = load i64, i64* %3, align 8
  %2367 = add i64 %2366, 3
  store i64 %2367, i64* %3, align 8
  %2368 = inttoptr i64 %2365 to i32*
  %2369 = load i32, i32* %2368, align 4
  %2370 = add i32 %2369, 1
  %2371 = zext i32 %2370 to i64
  store i64 %2371, i64* %RAX.i1567, align 8
  %2372 = icmp eq i32 %2369, -1
  %2373 = icmp eq i32 %2370, 0
  %2374 = or i1 %2372, %2373
  %2375 = zext i1 %2374 to i8
  store i8 %2375, i8* %14, align 1
  %2376 = and i32 %2370, 255
  %2377 = tail call i32 @llvm.ctpop.i32(i32 %2376)
  %2378 = trunc i32 %2377 to i8
  %2379 = and i8 %2378, 1
  %2380 = xor i8 %2379, 1
  store i8 %2380, i8* %21, align 1
  %2381 = xor i32 %2370, %2369
  %2382 = lshr i32 %2381, 4
  %2383 = trunc i32 %2382 to i8
  %2384 = and i8 %2383, 1
  store i8 %2384, i8* %26, align 1
  %2385 = zext i1 %2373 to i8
  store i8 %2385, i8* %29, align 1
  %2386 = lshr i32 %2370, 31
  %2387 = trunc i32 %2386 to i8
  store i8 %2387, i8* %32, align 1
  %2388 = lshr i32 %2369, 31
  %2389 = xor i32 %2386, %2388
  %2390 = add nuw nsw i32 %2389, %2386
  %2391 = icmp eq i32 %2390, 2
  %2392 = zext i1 %2391 to i8
  store i8 %2392, i8* %38, align 1
  %2393 = add i64 %2366, 9
  store i64 %2393, i64* %3, align 8
  store i32 %2370, i32* %2368, align 4
  %2394 = load i64, i64* %3, align 8
  %2395 = add i64 %2394, -81
  store i64 %2395, i64* %3, align 8
  br label %block_.L_48cb46

block_.L_48cb9c:                                  ; preds = %block_.L_48cb46
  %2396 = add i64 %2224, -40
  %2397 = add i64 %2253, 8
  store i64 %2397, i64* %3, align 8
  %2398 = inttoptr i64 %2396 to i32*
  %2399 = load i32, i32* %2398, align 4
  %2400 = add i32 %2399, 1
  %2401 = zext i32 %2400 to i64
  store i64 %2401, i64* %RAX.i1567, align 8
  %2402 = icmp eq i32 %2399, -1
  %2403 = icmp eq i32 %2400, 0
  %2404 = or i1 %2402, %2403
  %2405 = zext i1 %2404 to i8
  store i8 %2405, i8* %14, align 1
  %2406 = and i32 %2400, 255
  %2407 = tail call i32 @llvm.ctpop.i32(i32 %2406)
  %2408 = trunc i32 %2407 to i8
  %2409 = and i8 %2408, 1
  %2410 = xor i8 %2409, 1
  store i8 %2410, i8* %21, align 1
  %2411 = xor i32 %2400, %2399
  %2412 = lshr i32 %2411, 4
  %2413 = trunc i32 %2412 to i8
  %2414 = and i8 %2413, 1
  store i8 %2414, i8* %26, align 1
  %2415 = zext i1 %2403 to i8
  store i8 %2415, i8* %29, align 1
  %2416 = lshr i32 %2400, 31
  %2417 = trunc i32 %2416 to i8
  store i8 %2417, i8* %32, align 1
  %2418 = lshr i32 %2399, 31
  %2419 = xor i32 %2416, %2418
  %2420 = add nuw nsw i32 %2419, %2416
  %2421 = icmp eq i32 %2420, 2
  %2422 = zext i1 %2421 to i8
  store i8 %2422, i8* %38, align 1
  %2423 = add i64 %2253, 14
  store i64 %2423, i64* %3, align 8
  store i32 %2400, i32* %2398, align 4
  %2424 = load i64, i64* %3, align 8
  %2425 = add i64 %2424, -117
  store i64 %2425, i64* %3, align 8
  br label %block_.L_48cb35

block_.L_48cbaf:                                  ; preds = %block_.L_48cb35
  %2426 = add i64 %2219, 5
  store i64 %2426, i64* %3, align 8
  br label %block_.L_48cbb4

block_.L_48cbb4:                                  ; preds = %block_.L_48cbaf, %block_.L_48cb29
  %storemerge77 = phi i64 [ %2188, %block_.L_48cb29 ], [ %2426, %block_.L_48cbaf ]
  %2427 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*), align 8
  %2428 = add i64 %2427, 72380
  %2429 = add i64 %storemerge77, 18
  store i64 %2429, i64* %3, align 8
  %2430 = inttoptr i64 %2428 to i32*
  store i32 0, i32* %2430, align 4
  %2431 = load i64, i64* %RBP.i, align 8
  %2432 = add i64 %2431, -108
  %2433 = load i64, i64* %3, align 8
  %2434 = add i64 %2433, 7
  store i64 %2434, i64* %3, align 8
  %2435 = inttoptr i64 %2432 to i32*
  store i32 0, i32* %2435, align 4
  %2436 = load i64, i64* %3, align 8
  %2437 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*), align 8
  store i64 %2437, i64* %RAX.i1567, align 8
  %2438 = add i64 %2437, 72724
  %2439 = add i64 %2436, 15
  store i64 %2439, i64* %3, align 8
  %2440 = inttoptr i64 %2438 to i32*
  %2441 = load i32, i32* %2440, align 4
  store i8 0, i8* %14, align 1
  %2442 = and i32 %2441, 255
  %2443 = tail call i32 @llvm.ctpop.i32(i32 %2442)
  %2444 = trunc i32 %2443 to i8
  %2445 = and i8 %2444, 1
  %2446 = xor i8 %2445, 1
  store i8 %2446, i8* %21, align 1
  store i8 0, i8* %26, align 1
  %2447 = icmp eq i32 %2441, 0
  %2448 = zext i1 %2447 to i8
  store i8 %2448, i8* %29, align 1
  %2449 = lshr i32 %2441, 31
  %2450 = trunc i32 %2449 to i8
  store i8 %2450, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %.v219 = select i1 %2447, i64 51, i64 21
  %2451 = add i64 %2436, %.v219
  store i64 %2451, i64* %3, align 8
  br i1 %2447, label %block_.L_48cc00, label %block_48cbe2

block_48cbe2:                                     ; preds = %block_.L_48cbb4
  %2452 = load i64, i64* %RBP.i, align 8
  %2453 = add i64 %2452, -20
  %2454 = add i64 %2451, 4
  store i64 %2454, i64* %3, align 8
  %2455 = inttoptr i64 %2453 to i32*
  %2456 = load i32, i32* %2455, align 4
  %2457 = add i32 %2456, -9
  %2458 = icmp ult i32 %2456, 9
  %2459 = zext i1 %2458 to i8
  store i8 %2459, i8* %14, align 1
  %2460 = and i32 %2457, 255
  %2461 = tail call i32 @llvm.ctpop.i32(i32 %2460)
  %2462 = trunc i32 %2461 to i8
  %2463 = and i8 %2462, 1
  %2464 = xor i8 %2463, 1
  store i8 %2464, i8* %21, align 1
  %2465 = xor i32 %2457, %2456
  %2466 = lshr i32 %2465, 4
  %2467 = trunc i32 %2466 to i8
  %2468 = and i8 %2467, 1
  store i8 %2468, i8* %26, align 1
  %2469 = icmp eq i32 %2457, 0
  %2470 = zext i1 %2469 to i8
  store i8 %2470, i8* %29, align 1
  %2471 = lshr i32 %2457, 31
  %2472 = trunc i32 %2471 to i8
  store i8 %2472, i8* %32, align 1
  %2473 = lshr i32 %2456, 31
  %2474 = xor i32 %2471, %2473
  %2475 = add nuw nsw i32 %2474, %2473
  %2476 = icmp eq i32 %2475, 2
  %2477 = zext i1 %2476 to i8
  store i8 %2477, i8* %38, align 1
  %.v220 = select i1 %2469, i64 60, i64 10
  %2478 = add i64 %2451, %.v220
  store i64 %2478, i64* %3, align 8
  br i1 %2469, label %block_.L_48cc1e, label %block_48cbec

block_48cbec:                                     ; preds = %block_48cbe2
  %2479 = add i64 %2478, 4
  store i64 %2479, i64* %3, align 8
  %2480 = load i32, i32* %2455, align 4
  %2481 = add i32 %2480, -10
  %2482 = icmp ult i32 %2480, 10
  %2483 = zext i1 %2482 to i8
  store i8 %2483, i8* %14, align 1
  %2484 = and i32 %2481, 255
  %2485 = tail call i32 @llvm.ctpop.i32(i32 %2484)
  %2486 = trunc i32 %2485 to i8
  %2487 = and i8 %2486, 1
  %2488 = xor i8 %2487, 1
  store i8 %2488, i8* %21, align 1
  %2489 = xor i32 %2481, %2480
  %2490 = lshr i32 %2489, 4
  %2491 = trunc i32 %2490 to i8
  %2492 = and i8 %2491, 1
  store i8 %2492, i8* %26, align 1
  %2493 = icmp eq i32 %2481, 0
  %2494 = zext i1 %2493 to i8
  store i8 %2494, i8* %29, align 1
  %2495 = lshr i32 %2481, 31
  %2496 = trunc i32 %2495 to i8
  store i8 %2496, i8* %32, align 1
  %2497 = lshr i32 %2480, 31
  %2498 = xor i32 %2495, %2497
  %2499 = add nuw nsw i32 %2498, %2497
  %2500 = icmp eq i32 %2499, 2
  %2501 = zext i1 %2500 to i8
  store i8 %2501, i8* %38, align 1
  %.v221 = select i1 %2493, i64 50, i64 10
  %2502 = add i64 %2478, %.v221
  store i64 %2502, i64* %3, align 8
  br i1 %2493, label %block_.L_48cc1e, label %block_48cbf6

block_48cbf6:                                     ; preds = %block_48cbec
  %2503 = add i64 %2502, 4
  store i64 %2503, i64* %3, align 8
  %2504 = load i32, i32* %2455, align 4
  %2505 = add i32 %2504, -13
  %2506 = icmp ult i32 %2504, 13
  %2507 = zext i1 %2506 to i8
  store i8 %2507, i8* %14, align 1
  %2508 = and i32 %2505, 255
  %2509 = tail call i32 @llvm.ctpop.i32(i32 %2508)
  %2510 = trunc i32 %2509 to i8
  %2511 = and i8 %2510, 1
  %2512 = xor i8 %2511, 1
  store i8 %2512, i8* %21, align 1
  %2513 = xor i32 %2505, %2504
  %2514 = lshr i32 %2513, 4
  %2515 = trunc i32 %2514 to i8
  %2516 = and i8 %2515, 1
  store i8 %2516, i8* %26, align 1
  %2517 = icmp eq i32 %2505, 0
  %2518 = zext i1 %2517 to i8
  store i8 %2518, i8* %29, align 1
  %2519 = lshr i32 %2505, 31
  %2520 = trunc i32 %2519 to i8
  store i8 %2520, i8* %32, align 1
  %2521 = lshr i32 %2504, 31
  %2522 = xor i32 %2519, %2521
  %2523 = add nuw nsw i32 %2522, %2521
  %2524 = icmp eq i32 %2523, 2
  %2525 = zext i1 %2524 to i8
  store i8 %2525, i8* %38, align 1
  %.v222 = select i1 %2517, i64 40, i64 10
  %2526 = add i64 %2502, %.v222
  store i64 %2526, i64* %3, align 8
  br i1 %2517, label %block_.L_48cc1e, label %block_.L_48cc00

block_.L_48cc00:                                  ; preds = %block_48cbf6, %block_.L_48cbb4
  %2527 = phi i64 [ %2526, %block_48cbf6 ], [ %2451, %block_.L_48cbb4 ]
  store i64 %2437, i64* %RAX.i1567, align 8
  %2528 = add i64 %2437, 72700
  %2529 = add i64 %2527, 15
  store i64 %2529, i64* %3, align 8
  %2530 = inttoptr i64 %2528 to i32*
  %2531 = load i32, i32* %2530, align 4
  store i8 0, i8* %14, align 1
  %2532 = and i32 %2531, 255
  %2533 = tail call i32 @llvm.ctpop.i32(i32 %2532)
  %2534 = trunc i32 %2533 to i8
  %2535 = and i8 %2534, 1
  %2536 = xor i8 %2535, 1
  store i8 %2536, i8* %21, align 1
  store i8 0, i8* %26, align 1
  %2537 = icmp eq i32 %2531, 0
  %2538 = zext i1 %2537 to i8
  store i8 %2538, i8* %29, align 1
  %2539 = lshr i32 %2531, 31
  %2540 = trunc i32 %2539 to i8
  store i8 %2540, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %.v223 = select i1 %2537, i64 30, i64 21
  %2541 = add i64 %2527, %.v223
  store i64 %2541, i64* %3, align 8
  br i1 %2537, label %block_.L_48cc1e, label %block_48cc15

block_48cc15:                                     ; preds = %block_.L_48cc00
  %2542 = load i64, i64* %RBP.i, align 8
  %2543 = add i64 %2542, -108
  store i64 %2543, i64* %RDI.i1462, align 8
  %2544 = add i64 %2541, -308949
  %2545 = add i64 %2541, 9
  %2546 = load i64, i64* %6, align 8
  %2547 = add i64 %2546, -8
  %2548 = inttoptr i64 %2547 to i64*
  store i64 %2545, i64* %2548, align 8
  store i64 %2547, i64* %6, align 8
  store i64 %2544, i64* %3, align 8
  %call2_48cc19 = tail call %struct.Memory* @sub_441540.ChromaResidualCoding(%struct.State* nonnull %0, i64 %2544, %struct.Memory* %MEMORY.24)
  %.pre168 = load i64, i64* %3, align 8
  br label %block_.L_48cc1e

block_.L_48cc1e:                                  ; preds = %block_48cc15, %block_.L_48cc00, %block_48cbf6, %block_48cbec, %block_48cbe2
  %2549 = phi i64 [ %2541, %block_.L_48cc00 ], [ %.pre168, %block_48cc15 ], [ %2478, %block_48cbe2 ], [ %2502, %block_48cbec ], [ %2526, %block_48cbf6 ]
  %MEMORY.31 = phi %struct.Memory* [ %MEMORY.24, %block_.L_48cc00 ], [ %call2_48cc19, %block_48cc15 ], [ %MEMORY.24, %block_48cbe2 ], [ %MEMORY.24, %block_48cbec ], [ %MEMORY.24, %block_48cbf6 ]
  %2550 = load i64, i64* %RBP.i, align 8
  %2551 = add i64 %2550, -20
  %2552 = add i64 %2549, 4
  store i64 %2552, i64* %3, align 8
  %2553 = inttoptr i64 %2551 to i32*
  %2554 = load i32, i32* %2553, align 4
  %2555 = add i32 %2554, -10
  %2556 = icmp ult i32 %2554, 10
  %2557 = zext i1 %2556 to i8
  store i8 %2557, i8* %14, align 1
  %2558 = and i32 %2555, 255
  %2559 = tail call i32 @llvm.ctpop.i32(i32 %2558)
  %2560 = trunc i32 %2559 to i8
  %2561 = and i8 %2560, 1
  %2562 = xor i8 %2561, 1
  store i8 %2562, i8* %21, align 1
  %2563 = xor i32 %2555, %2554
  %2564 = lshr i32 %2563, 4
  %2565 = trunc i32 %2564 to i8
  %2566 = and i8 %2565, 1
  store i8 %2566, i8* %26, align 1
  %2567 = icmp eq i32 %2555, 0
  %2568 = zext i1 %2567 to i8
  store i8 %2568, i8* %29, align 1
  %2569 = lshr i32 %2555, 31
  %2570 = trunc i32 %2569 to i8
  store i8 %2570, i8* %32, align 1
  %2571 = lshr i32 %2554, 31
  %2572 = xor i32 %2569, %2571
  %2573 = add nuw nsw i32 %2572, %2571
  %2574 = icmp eq i32 %2573, 2
  %2575 = zext i1 %2574 to i8
  store i8 %2575, i8* %38, align 1
  %.v224 = select i1 %2567, i64 10, i64 42
  %2576 = add i64 %2549, %.v224
  store i64 %2576, i64* %3, align 8
  br i1 %2567, label %block_48cc28, label %block_.L_48cc48

block_48cc28:                                     ; preds = %block_.L_48cc1e
  %2577 = add i64 %2550, -80
  %2578 = add i64 %2576, 4
  store i64 %2578, i64* %3, align 8
  %2579 = inttoptr i64 %2577 to i64*
  %2580 = load i64, i64* %2579, align 8
  store i64 %2580, i64* %RAX.i1567, align 8
  %2581 = add i64 %2580, 460
  %2582 = add i64 %2576, 10
  store i64 %2582, i64* %3, align 8
  %2583 = inttoptr i64 %2581 to i32*
  %2584 = load i32, i32* %2583, align 4
  %2585 = zext i32 %2584 to i64
  store i64 %2585, i64* %RDI.i1462, align 8
  %2586 = add i64 %2550, -36
  %2587 = add i64 %2576, 13
  store i64 %2587, i64* %3, align 8
  %2588 = inttoptr i64 %2586 to i32*
  %2589 = load i32, i32* %2588, align 4
  %2590 = zext i32 %2589 to i64
  store i64 %2590, i64* %RSI.i1580, align 8
  %2591 = add i64 %2576, -19512
  %2592 = add i64 %2576, 18
  %2593 = load i64, i64* %6, align 8
  %2594 = add i64 %2593, -8
  %2595 = inttoptr i64 %2594 to i64*
  store i64 %2592, i64* %2595, align 8
  store i64 %2594, i64* %6, align 8
  store i64 %2591, i64* %3, align 8
  %call2_48cc35 = tail call %struct.Memory* @sub_487ff0.I16Offset(%struct.State* nonnull %0, i64 %2591, %struct.Memory* %MEMORY.31)
  %2596 = load i64, i64* %3, align 8
  %2597 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*), align 8
  store i64 %2597, i64* %RCX.i1514, align 8
  %2598 = add i64 %2597, 72380
  %2599 = load i32, i32* %EAX.i895, align 4
  %2600 = add i64 %2596, 14
  store i64 %2600, i64* %3, align 8
  %2601 = inttoptr i64 %2598 to i32*
  store i32 %2599, i32* %2601, align 4
  %.pre169 = load i64, i64* %3, align 8
  br label %block_.L_48cc48

block_.L_48cc48:                                  ; preds = %block_.L_48cc1e, %block_48cc28
  %2602 = phi i64 [ %2576, %block_.L_48cc1e ], [ %.pre169, %block_48cc28 ]
  %MEMORY.32 = phi %struct.Memory* [ %MEMORY.31, %block_.L_48cc1e ], [ %call2_48cc35, %block_48cc28 ]
  %2603 = load i64, i64* bitcast (%G_0x6cb8f8_type* @G_0x6cb8f8 to i64*), align 8
  store i64 %2603, i64* %RAX.i1567, align 8
  %2604 = add i64 %2603, 2464
  %2605 = add i64 %2602, 15
  store i64 %2605, i64* %3, align 8
  %2606 = inttoptr i64 %2604 to i32*
  %2607 = load i32, i32* %2606, align 4
  %2608 = add i32 %2607, -2
  %2609 = icmp ult i32 %2607, 2
  %2610 = zext i1 %2609 to i8
  store i8 %2610, i8* %14, align 1
  %2611 = and i32 %2608, 255
  %2612 = tail call i32 @llvm.ctpop.i32(i32 %2611)
  %2613 = trunc i32 %2612 to i8
  %2614 = and i8 %2613, 1
  %2615 = xor i8 %2614, 1
  store i8 %2615, i8* %21, align 1
  %2616 = xor i32 %2608, %2607
  %2617 = lshr i32 %2616, 4
  %2618 = trunc i32 %2617 to i8
  %2619 = and i8 %2618, 1
  store i8 %2619, i8* %26, align 1
  %2620 = icmp eq i32 %2608, 0
  %2621 = zext i1 %2620 to i8
  store i8 %2621, i8* %29, align 1
  %2622 = lshr i32 %2608, 31
  %2623 = trunc i32 %2622 to i8
  store i8 %2623, i8* %32, align 1
  %2624 = lshr i32 %2607, 31
  %2625 = xor i32 %2622, %2624
  %2626 = add nuw nsw i32 %2625, %2624
  %2627 = icmp eq i32 %2626, 2
  %2628 = zext i1 %2627 to i8
  store i8 %2628, i8* %38, align 1
  %.v225 = select i1 %2620, i64 21, i64 369
  %2629 = add i64 %2602, %.v225
  store i64 %2629, i64* %3, align 8
  br i1 %2620, label %block_48cc5d, label %block_.L_48cdb9

block_48cc5d:                                     ; preds = %block_.L_48cc48
  %2630 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*), align 8
  store i64 %2630, i64* %RAX.i1567, align 8
  %2631 = add i64 %2630, 24
  %2632 = add i64 %2629, 12
  store i64 %2632, i64* %3, align 8
  %2633 = inttoptr i64 %2631 to i32*
  %2634 = load i32, i32* %2633, align 4
  %2635 = add i32 %2634, -1
  %2636 = icmp eq i32 %2634, 0
  %2637 = zext i1 %2636 to i8
  store i8 %2637, i8* %14, align 1
  %2638 = and i32 %2635, 255
  %2639 = tail call i32 @llvm.ctpop.i32(i32 %2638)
  %2640 = trunc i32 %2639 to i8
  %2641 = and i8 %2640, 1
  %2642 = xor i8 %2641, 1
  store i8 %2642, i8* %21, align 1
  %2643 = xor i32 %2635, %2634
  %2644 = lshr i32 %2643, 4
  %2645 = trunc i32 %2644 to i8
  %2646 = and i8 %2645, 1
  store i8 %2646, i8* %26, align 1
  %2647 = icmp eq i32 %2635, 0
  %2648 = zext i1 %2647 to i8
  store i8 %2648, i8* %29, align 1
  %2649 = lshr i32 %2635, 31
  %2650 = trunc i32 %2649 to i8
  store i8 %2650, i8* %32, align 1
  %2651 = lshr i32 %2634, 31
  %2652 = xor i32 %2649, %2651
  %2653 = add nuw nsw i32 %2652, %2651
  %2654 = icmp eq i32 %2653, 2
  %2655 = zext i1 %2654 to i8
  store i8 %2655, i8* %38, align 1
  %.v240 = select i1 %2647, i64 348, i64 18
  %2656 = add i64 %2629, %.v240
  store i64 %2656, i64* %3, align 8
  br i1 %2647, label %block_.L_48cdb9, label %block_48cc6f

block_48cc6f:                                     ; preds = %block_48cc5d
  %2657 = load i64, i64* %RBP.i, align 8
  %2658 = add i64 %2657, -48
  %2659 = add i64 %2656, 7
  store i64 %2659, i64* %3, align 8
  %2660 = inttoptr i64 %2658 to i32*
  store i32 0, i32* %2660, align 4
  %.pre170 = load i64, i64* %3, align 8
  br label %block_.L_48cc76

block_.L_48cc76:                                  ; preds = %block_.L_48cd74, %block_48cc6f
  %2661 = phi i64 [ %3084, %block_.L_48cd74 ], [ %.pre170, %block_48cc6f ]
  %2662 = load i64, i64* %RBP.i, align 8
  %2663 = add i64 %2662, -48
  %2664 = add i64 %2661, 3
  store i64 %2664, i64* %3, align 8
  %2665 = inttoptr i64 %2663 to i32*
  %2666 = load i32, i32* %2665, align 4
  %2667 = zext i32 %2666 to i64
  store i64 %2667, i64* %RAX.i1567, align 8
  %2668 = load i64, i64* bitcast (%G_0x6cb8f8_type* @G_0x6cb8f8 to i64*), align 8
  store i64 %2668, i64* %RCX.i1514, align 8
  %2669 = add i64 %2668, 2904
  %2670 = add i64 %2661, 17
  store i64 %2670, i64* %3, align 8
  %2671 = inttoptr i64 %2669 to i32*
  %2672 = load i32, i32* %2671, align 4
  %2673 = sub i32 %2666, %2672
  %2674 = icmp ult i32 %2666, %2672
  %2675 = zext i1 %2674 to i8
  store i8 %2675, i8* %14, align 1
  %2676 = and i32 %2673, 255
  %2677 = tail call i32 @llvm.ctpop.i32(i32 %2676)
  %2678 = trunc i32 %2677 to i8
  %2679 = and i8 %2678, 1
  %2680 = xor i8 %2679, 1
  store i8 %2680, i8* %21, align 1
  %2681 = xor i32 %2672, %2666
  %2682 = xor i32 %2681, %2673
  %2683 = lshr i32 %2682, 4
  %2684 = trunc i32 %2683 to i8
  %2685 = and i8 %2684, 1
  store i8 %2685, i8* %26, align 1
  %2686 = icmp eq i32 %2673, 0
  %2687 = zext i1 %2686 to i8
  store i8 %2687, i8* %29, align 1
  %2688 = lshr i32 %2673, 31
  %2689 = trunc i32 %2688 to i8
  store i8 %2689, i8* %32, align 1
  %2690 = lshr i32 %2666, 31
  %2691 = lshr i32 %2672, 31
  %2692 = xor i32 %2691, %2690
  %2693 = xor i32 %2688, %2690
  %2694 = add nuw nsw i32 %2693, %2692
  %2695 = icmp eq i32 %2694, 2
  %2696 = zext i1 %2695 to i8
  store i8 %2696, i8* %38, align 1
  %2697 = icmp ne i8 %2689, 0
  %2698 = xor i1 %2697, %2695
  %.v241 = select i1 %2698, i64 23, i64 273
  %2699 = add i64 %2661, %.v241
  store i64 %2699, i64* %3, align 8
  br i1 %2698, label %block_48cc8d, label %block_.L_48cd87

block_48cc8d:                                     ; preds = %block_.L_48cc76
  %2700 = add i64 %2699, 3
  store i64 %2700, i64* %3, align 8
  %2701 = load i32, i32* %2665, align 4
  %2702 = zext i32 %2701 to i64
  store i64 %2702, i64* %RDI.i1462, align 8
  %2703 = add i64 %2662, -80
  %2704 = add i64 %2699, 7
  store i64 %2704, i64* %3, align 8
  %2705 = inttoptr i64 %2703 to i64*
  %2706 = load i64, i64* %2705, align 8
  store i64 %2706, i64* %RSI.i1580, align 8
  %2707 = add i64 %2699, -459373
  %2708 = add i64 %2699, 12
  %2709 = load i64, i64* %6, align 8
  %2710 = add i64 %2709, -8
  %2711 = inttoptr i64 %2710 to i64*
  store i64 %2708, i64* %2711, align 8
  store i64 %2710, i64* %6, align 8
  store i64 %2707, i64* %3, align 8
  %call2_48cc94 = tail call %struct.Memory* @sub_41ca20.decode_one_mb(%struct.State* nonnull %0, i64 %2707, %struct.Memory* %MEMORY.32)
  %2712 = load i64, i64* %RBP.i, align 8
  %2713 = add i64 %2712, -44
  %2714 = load i64, i64* %3, align 8
  %2715 = add i64 %2714, 7
  store i64 %2715, i64* %3, align 8
  %2716 = inttoptr i64 %2713 to i32*
  store i32 0, i32* %2716, align 4
  %.pre174 = load i64, i64* %3, align 8
  br label %block_.L_48cca0

block_.L_48cca0:                                  ; preds = %block_.L_48cd61, %block_48cc8d
  %2717 = phi i64 [ %3054, %block_.L_48cd61 ], [ %.pre174, %block_48cc8d ]
  %2718 = load i64, i64* %RBP.i, align 8
  %2719 = add i64 %2718, -44
  %2720 = add i64 %2717, 4
  store i64 %2720, i64* %3, align 8
  %2721 = inttoptr i64 %2719 to i32*
  %2722 = load i32, i32* %2721, align 4
  %2723 = add i32 %2722, -16
  %2724 = icmp ult i32 %2722, 16
  %2725 = zext i1 %2724 to i8
  store i8 %2725, i8* %14, align 1
  %2726 = and i32 %2723, 255
  %2727 = tail call i32 @llvm.ctpop.i32(i32 %2726)
  %2728 = trunc i32 %2727 to i8
  %2729 = and i8 %2728, 1
  %2730 = xor i8 %2729, 1
  store i8 %2730, i8* %21, align 1
  %2731 = xor i32 %2722, 16
  %2732 = xor i32 %2731, %2723
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
  %2745 = icmp ne i8 %2739, 0
  %2746 = xor i1 %2745, %2743
  %.v199 = select i1 %2746, i64 10, i64 212
  %2747 = add i64 %2717, %.v199
  store i64 %2747, i64* %3, align 8
  br i1 %2746, label %block_48ccaa, label %block_.L_48cd74

block_48ccaa:                                     ; preds = %block_.L_48cca0
  %2748 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*), align 8
  store i64 %2748, i64* %RAX.i1567, align 8
  %2749 = add i64 %2748, 168
  %2750 = add i64 %2747, 14
  store i64 %2750, i64* %3, align 8
  %2751 = inttoptr i64 %2749 to i32*
  %2752 = load i32, i32* %2751, align 4
  %2753 = zext i32 %2752 to i64
  store i64 %2753, i64* %RCX.i1514, align 8
  %2754 = add i64 %2718, -40
  %2755 = add i64 %2747, 17
  store i64 %2755, i64* %3, align 8
  %2756 = inttoptr i64 %2754 to i32*
  store i32 %2752, i32* %2756, align 4
  %.pre175 = load i64, i64* %3, align 8
  br label %block_.L_48ccbb

block_.L_48ccbb:                                  ; preds = %block_48ccd7, %block_48ccaa
  %2757 = phi i64 [ %3024, %block_48ccd7 ], [ %.pre175, %block_48ccaa ]
  %2758 = load i64, i64* %RBP.i, align 8
  %2759 = add i64 %2758, -40
  %2760 = add i64 %2757, 3
  store i64 %2760, i64* %3, align 8
  %2761 = inttoptr i64 %2759 to i32*
  %2762 = load i32, i32* %2761, align 4
  %2763 = zext i32 %2762 to i64
  store i64 %2763, i64* %RAX.i1567, align 8
  %2764 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*), align 8
  store i64 %2764, i64* %RCX.i1514, align 8
  %2765 = add i64 %2764, 168
  %2766 = add i64 %2757, 17
  store i64 %2766, i64* %3, align 8
  %2767 = inttoptr i64 %2765 to i32*
  %2768 = load i32, i32* %2767, align 4
  %2769 = add i32 %2768, 16
  %2770 = zext i32 %2769 to i64
  store i64 %2770, i64* %RDX.i930, align 8
  %2771 = lshr i32 %2769, 31
  %2772 = sub i32 %2762, %2769
  %2773 = icmp ult i32 %2762, %2769
  %2774 = zext i1 %2773 to i8
  store i8 %2774, i8* %14, align 1
  %2775 = and i32 %2772, 255
  %2776 = tail call i32 @llvm.ctpop.i32(i32 %2775)
  %2777 = trunc i32 %2776 to i8
  %2778 = and i8 %2777, 1
  %2779 = xor i8 %2778, 1
  store i8 %2779, i8* %21, align 1
  %2780 = xor i32 %2769, %2762
  %2781 = xor i32 %2780, %2772
  %2782 = lshr i32 %2781, 4
  %2783 = trunc i32 %2782 to i8
  %2784 = and i8 %2783, 1
  store i8 %2784, i8* %26, align 1
  %2785 = icmp eq i32 %2772, 0
  %2786 = zext i1 %2785 to i8
  store i8 %2786, i8* %29, align 1
  %2787 = lshr i32 %2772, 31
  %2788 = trunc i32 %2787 to i8
  store i8 %2788, i8* %32, align 1
  %2789 = lshr i32 %2762, 31
  %2790 = xor i32 %2771, %2789
  %2791 = xor i32 %2787, %2789
  %2792 = add nuw nsw i32 %2791, %2790
  %2793 = icmp eq i32 %2792, 2
  %2794 = zext i1 %2793 to i8
  store i8 %2794, i8* %38, align 1
  %2795 = icmp ne i8 %2788, 0
  %2796 = xor i1 %2795, %2793
  %.v200 = select i1 %2796, i64 28, i64 166
  %2797 = add i64 %2757, %.v200
  store i64 %2797, i64* %3, align 8
  br i1 %2796, label %block_48ccd7, label %block_.L_48cd61

block_48ccd7:                                     ; preds = %block_.L_48ccbb
  store i64 %2764, i64* %RAX.i1567, align 8
  %2798 = add i64 %2764, 71776
  %2799 = add i64 %2797, 15
  store i64 %2799, i64* %3, align 8
  %2800 = inttoptr i64 %2798 to i64*
  %2801 = load i64, i64* %2800, align 8
  store i64 %2801, i64* %RAX.i1567, align 8
  %2802 = load i64, i64* bitcast (%G_0x726418_type* @G_0x726418 to i64*), align 8
  store i64 %2802, i64* %RCX.i1514, align 8
  store i64 %2764, i64* %RDX.i930, align 8
  %2803 = add i64 %2764, 172
  %2804 = add i64 %2797, 37
  store i64 %2804, i64* %3, align 8
  %2805 = inttoptr i64 %2803 to i32*
  %2806 = load i32, i32* %2805, align 4
  %2807 = zext i32 %2806 to i64
  store i64 %2807, i64* %RSI.i1580, align 8
  %2808 = add i64 %2758, -44
  %2809 = add i64 %2797, 40
  store i64 %2809, i64* %3, align 8
  %2810 = inttoptr i64 %2808 to i32*
  %2811 = load i32, i32* %2810, align 4
  %2812 = add i32 %2811, %2806
  %2813 = zext i32 %2812 to i64
  store i64 %2813, i64* %RSI.i1580, align 8
  %2814 = icmp ult i32 %2812, %2806
  %2815 = icmp ult i32 %2812, %2811
  %2816 = or i1 %2814, %2815
  %2817 = zext i1 %2816 to i8
  store i8 %2817, i8* %14, align 1
  %2818 = and i32 %2812, 255
  %2819 = tail call i32 @llvm.ctpop.i32(i32 %2818)
  %2820 = trunc i32 %2819 to i8
  %2821 = and i8 %2820, 1
  %2822 = xor i8 %2821, 1
  store i8 %2822, i8* %21, align 1
  %2823 = xor i32 %2811, %2806
  %2824 = xor i32 %2823, %2812
  %2825 = lshr i32 %2824, 4
  %2826 = trunc i32 %2825 to i8
  %2827 = and i8 %2826, 1
  store i8 %2827, i8* %26, align 1
  %2828 = icmp eq i32 %2812, 0
  %2829 = zext i1 %2828 to i8
  store i8 %2829, i8* %29, align 1
  %2830 = lshr i32 %2812, 31
  %2831 = trunc i32 %2830 to i8
  store i8 %2831, i8* %32, align 1
  %2832 = lshr i32 %2806, 31
  %2833 = lshr i32 %2811, 31
  %2834 = xor i32 %2830, %2832
  %2835 = xor i32 %2830, %2833
  %2836 = add nuw nsw i32 %2834, %2835
  %2837 = icmp eq i32 %2836, 2
  %2838 = zext i1 %2837 to i8
  store i8 %2838, i8* %38, align 1
  %2839 = sext i32 %2812 to i64
  store i64 %2839, i64* %RDX.i930, align 8
  %2840 = shl nsw i64 %2839, 3
  %2841 = add i64 %2802, %2840
  %2842 = add i64 %2797, 47
  store i64 %2842, i64* %3, align 8
  %2843 = inttoptr i64 %2841 to i64*
  %2844 = load i64, i64* %2843, align 8
  store i64 %2844, i64* %RCX.i1514, align 8
  %2845 = add i64 %2797, 51
  store i64 %2845, i64* %3, align 8
  %2846 = load i32, i32* %2761, align 4
  %2847 = sext i32 %2846 to i64
  store i64 %2847, i64* %RDX.i930, align 8
  %2848 = shl nsw i64 %2847, 1
  %2849 = add i64 %2848, %2844
  %2850 = add i64 %2797, 55
  store i64 %2850, i64* %3, align 8
  %2851 = inttoptr i64 %2849 to i16*
  %2852 = load i16, i16* %2851, align 2
  %2853 = zext i16 %2852 to i64
  store i64 %2853, i64* %RSI.i1580, align 8
  %2854 = load i64, i64* bitcast (%G_0x6cb918_type* @G_0x6cb918 to i64*), align 8
  store i64 %2854, i64* %RCX.i1514, align 8
  %2855 = add i64 %2854, 8
  %2856 = add i64 %2797, 67
  store i64 %2856, i64* %3, align 8
  %2857 = inttoptr i64 %2855 to i64*
  %2858 = load i64, i64* %2857, align 8
  store i64 %2858, i64* %RCX.i1514, align 8
  %2859 = add i64 %2758, -48
  %2860 = add i64 %2797, 71
  store i64 %2860, i64* %3, align 8
  %2861 = inttoptr i64 %2859 to i32*
  %2862 = load i32, i32* %2861, align 4
  %2863 = sext i32 %2862 to i64
  store i64 %2863, i64* %RDX.i930, align 8
  %2864 = shl nsw i64 %2863, 3
  %2865 = add i64 %2864, %2858
  %2866 = add i64 %2797, 75
  store i64 %2866, i64* %3, align 8
  %2867 = inttoptr i64 %2865 to i64*
  %2868 = load i64, i64* %2867, align 8
  store i64 %2868, i64* %RCX.i1514, align 8
  %2869 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*), align 8
  store i64 %2869, i64* %RDX.i930, align 8
  %2870 = add i64 %2869, 172
  %2871 = add i64 %2797, 89
  store i64 %2871, i64* %3, align 8
  %2872 = inttoptr i64 %2870 to i32*
  %2873 = load i32, i32* %2872, align 4
  %2874 = zext i32 %2873 to i64
  store i64 %2874, i64* %RDI.i1462, align 8
  %2875 = load i64, i64* %RBP.i, align 8
  %2876 = add i64 %2875, -44
  %2877 = add i64 %2797, 92
  store i64 %2877, i64* %3, align 8
  %2878 = inttoptr i64 %2876 to i32*
  %2879 = load i32, i32* %2878, align 4
  %2880 = add i32 %2879, %2873
  %2881 = zext i32 %2880 to i64
  store i64 %2881, i64* %RDI.i1462, align 8
  %2882 = icmp ult i32 %2880, %2873
  %2883 = icmp ult i32 %2880, %2879
  %2884 = or i1 %2882, %2883
  %2885 = zext i1 %2884 to i8
  store i8 %2885, i8* %14, align 1
  %2886 = and i32 %2880, 255
  %2887 = tail call i32 @llvm.ctpop.i32(i32 %2886)
  %2888 = trunc i32 %2887 to i8
  %2889 = and i8 %2888, 1
  %2890 = xor i8 %2889, 1
  store i8 %2890, i8* %21, align 1
  %2891 = xor i32 %2879, %2873
  %2892 = xor i32 %2891, %2880
  %2893 = lshr i32 %2892, 4
  %2894 = trunc i32 %2893 to i8
  %2895 = and i8 %2894, 1
  store i8 %2895, i8* %26, align 1
  %2896 = icmp eq i32 %2880, 0
  %2897 = zext i1 %2896 to i8
  store i8 %2897, i8* %29, align 1
  %2898 = lshr i32 %2880, 31
  %2899 = trunc i32 %2898 to i8
  store i8 %2899, i8* %32, align 1
  %2900 = lshr i32 %2873, 31
  %2901 = lshr i32 %2879, 31
  %2902 = xor i32 %2898, %2900
  %2903 = xor i32 %2898, %2901
  %2904 = add nuw nsw i32 %2902, %2903
  %2905 = icmp eq i32 %2904, 2
  %2906 = zext i1 %2905 to i8
  store i8 %2906, i8* %38, align 1
  %2907 = sext i32 %2880 to i64
  store i64 %2907, i64* %RDX.i930, align 8
  %2908 = shl nsw i64 %2907, 3
  %2909 = add i64 %2868, %2908
  %2910 = add i64 %2797, 99
  store i64 %2910, i64* %3, align 8
  %2911 = inttoptr i64 %2909 to i64*
  %2912 = load i64, i64* %2911, align 8
  store i64 %2912, i64* %RCX.i1514, align 8
  %2913 = add i64 %2875, -40
  %2914 = add i64 %2797, 103
  store i64 %2914, i64* %3, align 8
  %2915 = inttoptr i64 %2913 to i32*
  %2916 = load i32, i32* %2915, align 4
  %2917 = sext i32 %2916 to i64
  store i64 %2917, i64* %RDX.i930, align 8
  %2918 = shl nsw i64 %2917, 1
  %2919 = add i64 %2918, %2912
  %2920 = add i64 %2797, 107
  store i64 %2920, i64* %3, align 8
  %2921 = inttoptr i64 %2919 to i16*
  %2922 = load i16, i16* %2921, align 2
  %2923 = zext i16 %2922 to i64
  store i64 %2923, i64* %RDI.i1462, align 8
  %2924 = load i64, i64* %RSI.i1580, align 8
  %2925 = zext i16 %2922 to i32
  %2926 = zext i16 %2922 to i64
  %2927 = trunc i64 %2924 to i32
  %2928 = sub i32 %2927, %2925
  %2929 = zext i32 %2928 to i64
  store i64 %2929, i64* %RSI.i1580, align 8
  %2930 = icmp ult i32 %2927, %2925
  %2931 = zext i1 %2930 to i8
  store i8 %2931, i8* %14, align 1
  %2932 = and i32 %2928, 255
  %2933 = tail call i32 @llvm.ctpop.i32(i32 %2932)
  %2934 = trunc i32 %2933 to i8
  %2935 = and i8 %2934, 1
  %2936 = xor i8 %2935, 1
  store i8 %2936, i8* %21, align 1
  %2937 = xor i64 %2926, %2924
  %2938 = trunc i64 %2937 to i32
  %2939 = xor i32 %2938, %2928
  %2940 = lshr i32 %2939, 4
  %2941 = trunc i32 %2940 to i8
  %2942 = and i8 %2941, 1
  store i8 %2942, i8* %26, align 1
  %2943 = icmp eq i32 %2928, 0
  %2944 = zext i1 %2943 to i8
  store i8 %2944, i8* %29, align 1
  %2945 = lshr i32 %2928, 31
  %2946 = trunc i32 %2945 to i8
  store i8 %2946, i8* %32, align 1
  %2947 = lshr i32 %2927, 31
  %2948 = xor i32 %2945, %2947
  %2949 = add nuw nsw i32 %2948, %2947
  %2950 = icmp eq i32 %2949, 2
  %2951 = zext i1 %2950 to i8
  store i8 %2951, i8* %38, align 1
  %2952 = sext i32 %2928 to i64
  store i64 %2952, i64* %RCX.i1514, align 8
  %2953 = load i64, i64* %RAX.i1567, align 8
  %2954 = shl nsw i64 %2952, 2
  %2955 = add i64 %2953, %2954
  %2956 = add i64 %2797, 116
  store i64 %2956, i64* %3, align 8
  %2957 = inttoptr i64 %2955 to i32*
  %2958 = load i32, i32* %2957, align 4
  %2959 = sext i32 %2958 to i64
  store i64 %2959, i64* %RAX.i1567, align 8
  %2960 = load i64, i64* %RBP.i, align 8
  %2961 = add i64 %2960, -64
  %2962 = add i64 %2797, 120
  store i64 %2962, i64* %3, align 8
  %2963 = inttoptr i64 %2961 to i64*
  %2964 = load i64, i64* %2963, align 8
  %2965 = add i64 %2964, %2959
  store i64 %2965, i64* %RAX.i1567, align 8
  %2966 = icmp ult i64 %2965, %2959
  %2967 = icmp ult i64 %2965, %2964
  %2968 = or i1 %2966, %2967
  %2969 = zext i1 %2968 to i8
  store i8 %2969, i8* %14, align 1
  %2970 = trunc i64 %2965 to i32
  %2971 = and i32 %2970, 255
  %2972 = tail call i32 @llvm.ctpop.i32(i32 %2971)
  %2973 = trunc i32 %2972 to i8
  %2974 = and i8 %2973, 1
  %2975 = xor i8 %2974, 1
  store i8 %2975, i8* %21, align 1
  %2976 = xor i64 %2964, %2959
  %2977 = xor i64 %2976, %2965
  %2978 = lshr i64 %2977, 4
  %2979 = trunc i64 %2978 to i8
  %2980 = and i8 %2979, 1
  store i8 %2980, i8* %26, align 1
  %2981 = icmp eq i64 %2965, 0
  %2982 = zext i1 %2981 to i8
  store i8 %2982, i8* %29, align 1
  %2983 = lshr i64 %2965, 63
  %2984 = trunc i64 %2983 to i8
  store i8 %2984, i8* %32, align 1
  %2985 = lshr i64 %2959, 63
  %2986 = lshr i64 %2964, 63
  %2987 = xor i64 %2983, %2985
  %2988 = xor i64 %2983, %2986
  %2989 = add nuw nsw i64 %2987, %2988
  %2990 = icmp eq i64 %2989, 2
  %2991 = zext i1 %2990 to i8
  store i8 %2991, i8* %38, align 1
  %2992 = add i64 %2797, 124
  store i64 %2992, i64* %3, align 8
  store i64 %2965, i64* %2963, align 8
  %2993 = load i64, i64* %RBP.i, align 8
  %2994 = add i64 %2993, -40
  %2995 = load i64, i64* %3, align 8
  %2996 = add i64 %2995, 3
  store i64 %2996, i64* %3, align 8
  %2997 = inttoptr i64 %2994 to i32*
  %2998 = load i32, i32* %2997, align 4
  %2999 = add i32 %2998, 1
  %3000 = zext i32 %2999 to i64
  store i64 %3000, i64* %RAX.i1567, align 8
  %3001 = icmp eq i32 %2998, -1
  %3002 = icmp eq i32 %2999, 0
  %3003 = or i1 %3001, %3002
  %3004 = zext i1 %3003 to i8
  store i8 %3004, i8* %14, align 1
  %3005 = and i32 %2999, 255
  %3006 = tail call i32 @llvm.ctpop.i32(i32 %3005)
  %3007 = trunc i32 %3006 to i8
  %3008 = and i8 %3007, 1
  %3009 = xor i8 %3008, 1
  store i8 %3009, i8* %21, align 1
  %3010 = xor i32 %2999, %2998
  %3011 = lshr i32 %3010, 4
  %3012 = trunc i32 %3011 to i8
  %3013 = and i8 %3012, 1
  store i8 %3013, i8* %26, align 1
  %3014 = zext i1 %3002 to i8
  store i8 %3014, i8* %29, align 1
  %3015 = lshr i32 %2999, 31
  %3016 = trunc i32 %3015 to i8
  store i8 %3016, i8* %32, align 1
  %3017 = lshr i32 %2998, 31
  %3018 = xor i32 %3015, %3017
  %3019 = add nuw nsw i32 %3018, %3015
  %3020 = icmp eq i32 %3019, 2
  %3021 = zext i1 %3020 to i8
  store i8 %3021, i8* %38, align 1
  %3022 = add i64 %2995, 9
  store i64 %3022, i64* %3, align 8
  store i32 %2999, i32* %2997, align 4
  %3023 = load i64, i64* %3, align 8
  %3024 = add i64 %3023, -161
  store i64 %3024, i64* %3, align 8
  br label %block_.L_48ccbb

block_.L_48cd61:                                  ; preds = %block_.L_48ccbb
  %3025 = add i64 %2758, -44
  %3026 = add i64 %2797, 8
  store i64 %3026, i64* %3, align 8
  %3027 = inttoptr i64 %3025 to i32*
  %3028 = load i32, i32* %3027, align 4
  %3029 = add i32 %3028, 1
  %3030 = zext i32 %3029 to i64
  store i64 %3030, i64* %RAX.i1567, align 8
  %3031 = icmp eq i32 %3028, -1
  %3032 = icmp eq i32 %3029, 0
  %3033 = or i1 %3031, %3032
  %3034 = zext i1 %3033 to i8
  store i8 %3034, i8* %14, align 1
  %3035 = and i32 %3029, 255
  %3036 = tail call i32 @llvm.ctpop.i32(i32 %3035)
  %3037 = trunc i32 %3036 to i8
  %3038 = and i8 %3037, 1
  %3039 = xor i8 %3038, 1
  store i8 %3039, i8* %21, align 1
  %3040 = xor i32 %3029, %3028
  %3041 = lshr i32 %3040, 4
  %3042 = trunc i32 %3041 to i8
  %3043 = and i8 %3042, 1
  store i8 %3043, i8* %26, align 1
  %3044 = zext i1 %3032 to i8
  store i8 %3044, i8* %29, align 1
  %3045 = lshr i32 %3029, 31
  %3046 = trunc i32 %3045 to i8
  store i8 %3046, i8* %32, align 1
  %3047 = lshr i32 %3028, 31
  %3048 = xor i32 %3045, %3047
  %3049 = add nuw nsw i32 %3048, %3045
  %3050 = icmp eq i32 %3049, 2
  %3051 = zext i1 %3050 to i8
  store i8 %3051, i8* %38, align 1
  %3052 = add i64 %2797, 14
  store i64 %3052, i64* %3, align 8
  store i32 %3029, i32* %3027, align 4
  %3053 = load i64, i64* %3, align 8
  %3054 = add i64 %3053, -207
  store i64 %3054, i64* %3, align 8
  br label %block_.L_48cca0

block_.L_48cd74:                                  ; preds = %block_.L_48cca0
  %3055 = add i64 %2718, -48
  %3056 = add i64 %2747, 8
  store i64 %3056, i64* %3, align 8
  %3057 = inttoptr i64 %3055 to i32*
  %3058 = load i32, i32* %3057, align 4
  %3059 = add i32 %3058, 1
  %3060 = zext i32 %3059 to i64
  store i64 %3060, i64* %RAX.i1567, align 8
  %3061 = icmp eq i32 %3058, -1
  %3062 = icmp eq i32 %3059, 0
  %3063 = or i1 %3061, %3062
  %3064 = zext i1 %3063 to i8
  store i8 %3064, i8* %14, align 1
  %3065 = and i32 %3059, 255
  %3066 = tail call i32 @llvm.ctpop.i32(i32 %3065)
  %3067 = trunc i32 %3066 to i8
  %3068 = and i8 %3067, 1
  %3069 = xor i8 %3068, 1
  store i8 %3069, i8* %21, align 1
  %3070 = xor i32 %3059, %3058
  %3071 = lshr i32 %3070, 4
  %3072 = trunc i32 %3071 to i8
  %3073 = and i8 %3072, 1
  store i8 %3073, i8* %26, align 1
  %3074 = zext i1 %3062 to i8
  store i8 %3074, i8* %29, align 1
  %3075 = lshr i32 %3059, 31
  %3076 = trunc i32 %3075 to i8
  store i8 %3076, i8* %32, align 1
  %3077 = lshr i32 %3058, 31
  %3078 = xor i32 %3075, %3077
  %3079 = add nuw nsw i32 %3078, %3075
  %3080 = icmp eq i32 %3079, 2
  %3081 = zext i1 %3080 to i8
  store i8 %3081, i8* %38, align 1
  %3082 = add i64 %2747, 14
  store i64 %3082, i64* %3, align 8
  store i32 %3059, i32* %3057, align 4
  %3083 = load i64, i64* %3, align 8
  %3084 = add i64 %3083, -268
  store i64 %3084, i64* %3, align 8
  br label %block_.L_48cc76

block_.L_48cd87:                                  ; preds = %block_.L_48cc76
  store i64 %2668, i64* %RAX.i1567, align 8
  %3085 = add i64 %2699, 15
  store i64 %3085, i64* %3, align 8
  %3086 = load i32, i32* %2671, align 4
  %3087 = sext i32 %3086 to i64
  store i64 %3087, i64* %RAX.i1567, align 8
  %3088 = add i64 %2662, -64
  %3089 = add i64 %2699, 19
  store i64 %3089, i64* %3, align 8
  %3090 = inttoptr i64 %3088 to i64*
  %3091 = load i64, i64* %3090, align 8
  store i64 %3091, i64* %RCX.i1514, align 8
  %3092 = add i64 %2662, -152
  %3093 = add i64 %2699, 26
  store i64 %3093, i64* %3, align 8
  %3094 = inttoptr i64 %3092 to i64*
  store i64 %3087, i64* %3094, align 8
  %3095 = load i64, i64* %RCX.i1514, align 8
  %3096 = load i64, i64* %3, align 8
  store i64 %3095, i64* %RAX.i1567, align 8
  %3097 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3098 = ashr i64 %3095, 63
  store i64 %3098, i64* %3097, align 8
  %3099 = load i64, i64* %RBP.i, align 8
  %3100 = add i64 %3099, -152
  %3101 = add i64 %3096, 12
  store i64 %3101, i64* %3, align 8
  %3102 = inttoptr i64 %3100 to i64*
  %3103 = load i64, i64* %3102, align 8
  store i64 %3103, i64* %RCX.i1514, align 8
  %3104 = add i64 %3096, 15
  store i64 %3104, i64* %3, align 8
  %3105 = sext i64 %3103 to i128
  %3106 = and i128 %3105, -18446744073709551616
  %3107 = zext i64 %3098 to i128
  %3108 = shl nuw i128 %3107, 64
  %3109 = zext i64 %3095 to i128
  %3110 = or i128 %3108, %3109
  %3111 = zext i64 %3103 to i128
  %3112 = or i128 %3106, %3111
  %3113 = sdiv i128 %3110, %3112
  %3114 = trunc i128 %3113 to i64
  %3115 = and i128 %3113, 18446744073709551615
  %3116 = sext i64 %3114 to i128
  %3117 = and i128 %3116, -18446744073709551616
  %3118 = or i128 %3117, %3115
  %3119 = icmp eq i128 %3113, %3118
  br i1 %3119, label %3122, label %3120

; <label>:3120:                                   ; preds = %block_.L_48cd87
  %3121 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %3104, %struct.Memory* %MEMORY.32)
  %.pre171 = load i64, i64* %RBP.i, align 8
  %.pre172 = load i64, i64* %RAX.i1567, align 8
  %.pre173 = load i64, i64* %3, align 8
  br label %routine_idivq__rcx.exit

; <label>:3122:                                   ; preds = %block_.L_48cd87
  %3123 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3124 = srem i128 %3110, %3112
  %3125 = trunc i128 %3124 to i64
  store i64 %3114, i64* %3123, align 8
  store i64 %3125, i64* %3097, align 8
  store i8 0, i8* %14, align 1
  store i8 0, i8* %21, align 1
  store i8 0, i8* %26, align 1
  store i8 0, i8* %29, align 1
  store i8 0, i8* %32, align 1
  store i8 0, i8* %38, align 1
  br label %routine_idivq__rcx.exit

routine_idivq__rcx.exit:                          ; preds = %3122, %3120
  %3126 = phi i64 [ %.pre173, %3120 ], [ %3104, %3122 ]
  %3127 = phi i64 [ %.pre172, %3120 ], [ %3114, %3122 ]
  %3128 = phi i64 [ %.pre171, %3120 ], [ %3099, %3122 ]
  %3129 = phi %struct.Memory* [ %3121, %3120 ], [ %MEMORY.32, %3122 ]
  %3130 = add i64 %3128, -64
  %3131 = add i64 %3126, 4
  store i64 %3131, i64* %3, align 8
  %3132 = inttoptr i64 %3130 to i64*
  store i64 %3127, i64* %3132, align 8
  %3133 = load i64, i64* %3, align 8
  %3134 = add i64 %3133, 224
  br label %block_.L_48ce94

block_.L_48cdb9:                                  ; preds = %block_.L_48cc48, %block_48cc5d
  %3135 = phi i64 [ %2656, %block_48cc5d ], [ %2629, %block_.L_48cc48 ]
  %3136 = load i64, i64* %RBP.i, align 8
  %3137 = add i64 %3136, -44
  %3138 = add i64 %3135, 7
  store i64 %3138, i64* %3, align 8
  %3139 = inttoptr i64 %3137 to i32*
  store i32 0, i32* %3139, align 4
  %.pre176 = load i64, i64* %3, align 8
  br label %block_.L_48cdc0

block_.L_48cdc0:                                  ; preds = %block_.L_48ce7c, %block_.L_48cdb9
  %3140 = phi i64 [ %3459, %block_.L_48ce7c ], [ %.pre176, %block_.L_48cdb9 ]
  %3141 = load i64, i64* %RBP.i, align 8
  %3142 = add i64 %3141, -44
  %3143 = add i64 %3140, 4
  store i64 %3143, i64* %3, align 8
  %3144 = inttoptr i64 %3142 to i32*
  %3145 = load i32, i32* %3144, align 4
  %3146 = add i32 %3145, -16
  %3147 = icmp ult i32 %3145, 16
  %3148 = zext i1 %3147 to i8
  store i8 %3148, i8* %14, align 1
  %3149 = and i32 %3146, 255
  %3150 = tail call i32 @llvm.ctpop.i32(i32 %3149)
  %3151 = trunc i32 %3150 to i8
  %3152 = and i8 %3151, 1
  %3153 = xor i8 %3152, 1
  store i8 %3153, i8* %21, align 1
  %3154 = xor i32 %3145, 16
  %3155 = xor i32 %3154, %3146
  %3156 = lshr i32 %3155, 4
  %3157 = trunc i32 %3156 to i8
  %3158 = and i8 %3157, 1
  store i8 %3158, i8* %26, align 1
  %3159 = icmp eq i32 %3146, 0
  %3160 = zext i1 %3159 to i8
  store i8 %3160, i8* %29, align 1
  %3161 = lshr i32 %3146, 31
  %3162 = trunc i32 %3161 to i8
  store i8 %3162, i8* %32, align 1
  %3163 = lshr i32 %3145, 31
  %3164 = xor i32 %3161, %3163
  %3165 = add nuw nsw i32 %3164, %3163
  %3166 = icmp eq i32 %3165, 2
  %3167 = zext i1 %3166 to i8
  store i8 %3167, i8* %38, align 1
  %3168 = icmp ne i8 %3162, 0
  %3169 = xor i1 %3168, %3166
  %.v226 = select i1 %3169, i64 10, i64 207
  %3170 = add i64 %3140, %.v226
  store i64 %3170, i64* %3, align 8
  br i1 %3169, label %block_48cdca, label %block_.L_48ce8f

block_48cdca:                                     ; preds = %block_.L_48cdc0
  %3171 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*), align 8
  store i64 %3171, i64* %RAX.i1567, align 8
  %3172 = add i64 %3171, 168
  %3173 = add i64 %3170, 14
  store i64 %3173, i64* %3, align 8
  %3174 = inttoptr i64 %3172 to i32*
  %3175 = load i32, i32* %3174, align 4
  %3176 = zext i32 %3175 to i64
  store i64 %3176, i64* %RCX.i1514, align 8
  %3177 = add i64 %3141, -40
  %3178 = add i64 %3170, 17
  store i64 %3178, i64* %3, align 8
  %3179 = inttoptr i64 %3177 to i32*
  store i32 %3175, i32* %3179, align 4
  %.pre190 = load i64, i64* %3, align 8
  br label %block_.L_48cddb

block_.L_48cddb:                                  ; preds = %block_48cdf7, %block_48cdca
  %3180 = phi i64 [ %3429, %block_48cdf7 ], [ %.pre190, %block_48cdca ]
  %3181 = load i64, i64* %RBP.i, align 8
  %3182 = add i64 %3181, -40
  %3183 = add i64 %3180, 3
  store i64 %3183, i64* %3, align 8
  %3184 = inttoptr i64 %3182 to i32*
  %3185 = load i32, i32* %3184, align 4
  %3186 = zext i32 %3185 to i64
  store i64 %3186, i64* %RAX.i1567, align 8
  %3187 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*), align 8
  store i64 %3187, i64* %RCX.i1514, align 8
  %3188 = add i64 %3187, 168
  %3189 = add i64 %3180, 17
  store i64 %3189, i64* %3, align 8
  %3190 = inttoptr i64 %3188 to i32*
  %3191 = load i32, i32* %3190, align 4
  %3192 = add i32 %3191, 16
  %3193 = zext i32 %3192 to i64
  store i64 %3193, i64* %RDX.i930, align 8
  %3194 = lshr i32 %3192, 31
  %3195 = sub i32 %3185, %3192
  %3196 = icmp ult i32 %3185, %3192
  %3197 = zext i1 %3196 to i8
  store i8 %3197, i8* %14, align 1
  %3198 = and i32 %3195, 255
  %3199 = tail call i32 @llvm.ctpop.i32(i32 %3198)
  %3200 = trunc i32 %3199 to i8
  %3201 = and i8 %3200, 1
  %3202 = xor i8 %3201, 1
  store i8 %3202, i8* %21, align 1
  %3203 = xor i32 %3192, %3185
  %3204 = xor i32 %3203, %3195
  %3205 = lshr i32 %3204, 4
  %3206 = trunc i32 %3205 to i8
  %3207 = and i8 %3206, 1
  store i8 %3207, i8* %26, align 1
  %3208 = icmp eq i32 %3195, 0
  %3209 = zext i1 %3208 to i8
  store i8 %3209, i8* %29, align 1
  %3210 = lshr i32 %3195, 31
  %3211 = trunc i32 %3210 to i8
  store i8 %3211, i8* %32, align 1
  %3212 = lshr i32 %3185, 31
  %3213 = xor i32 %3194, %3212
  %3214 = xor i32 %3210, %3212
  %3215 = add nuw nsw i32 %3214, %3213
  %3216 = icmp eq i32 %3215, 2
  %3217 = zext i1 %3216 to i8
  store i8 %3217, i8* %38, align 1
  %3218 = icmp ne i8 %3211, 0
  %3219 = xor i1 %3218, %3216
  %.v201 = select i1 %3219, i64 28, i64 161
  %3220 = add i64 %3180, %.v201
  store i64 %3220, i64* %3, align 8
  br i1 %3219, label %block_48cdf7, label %block_.L_48ce7c

block_48cdf7:                                     ; preds = %block_.L_48cddb
  store i64 %3187, i64* %RAX.i1567, align 8
  %3221 = add i64 %3187, 71776
  %3222 = add i64 %3220, 15
  store i64 %3222, i64* %3, align 8
  %3223 = inttoptr i64 %3221 to i64*
  %3224 = load i64, i64* %3223, align 8
  store i64 %3224, i64* %RAX.i1567, align 8
  %3225 = load i64, i64* bitcast (%G_0x726418_type* @G_0x726418 to i64*), align 8
  store i64 %3225, i64* %RCX.i1514, align 8
  %3226 = add i64 %3181, -44
  %3227 = add i64 %3220, 26
  store i64 %3227, i64* %3, align 8
  %3228 = inttoptr i64 %3226 to i32*
  %3229 = load i32, i32* %3228, align 4
  %3230 = zext i32 %3229 to i64
  store i64 %3230, i64* %RDX.i930, align 8
  store i64 %3187, i64* %RSI.i1580, align 8
  %3231 = add i64 %3187, 172
  %3232 = add i64 %3220, 40
  store i64 %3232, i64* %3, align 8
  %3233 = inttoptr i64 %3231 to i32*
  %3234 = load i32, i32* %3233, align 4
  %3235 = add i32 %3234, %3229
  %3236 = zext i32 %3235 to i64
  store i64 %3236, i64* %RDX.i930, align 8
  %3237 = icmp ult i32 %3235, %3229
  %3238 = icmp ult i32 %3235, %3234
  %3239 = or i1 %3237, %3238
  %3240 = zext i1 %3239 to i8
  store i8 %3240, i8* %14, align 1
  %3241 = and i32 %3235, 255
  %3242 = tail call i32 @llvm.ctpop.i32(i32 %3241)
  %3243 = trunc i32 %3242 to i8
  %3244 = and i8 %3243, 1
  %3245 = xor i8 %3244, 1
  store i8 %3245, i8* %21, align 1
  %3246 = xor i32 %3234, %3229
  %3247 = xor i32 %3246, %3235
  %3248 = lshr i32 %3247, 4
  %3249 = trunc i32 %3248 to i8
  %3250 = and i8 %3249, 1
  store i8 %3250, i8* %26, align 1
  %3251 = icmp eq i32 %3235, 0
  %3252 = zext i1 %3251 to i8
  store i8 %3252, i8* %29, align 1
  %3253 = lshr i32 %3235, 31
  %3254 = trunc i32 %3253 to i8
  store i8 %3254, i8* %32, align 1
  %3255 = lshr i32 %3229, 31
  %3256 = lshr i32 %3234, 31
  %3257 = xor i32 %3253, %3255
  %3258 = xor i32 %3253, %3256
  %3259 = add nuw nsw i32 %3257, %3258
  %3260 = icmp eq i32 %3259, 2
  %3261 = zext i1 %3260 to i8
  store i8 %3261, i8* %38, align 1
  %3262 = sext i32 %3235 to i64
  store i64 %3262, i64* %RSI.i1580, align 8
  %3263 = shl nsw i64 %3262, 3
  %3264 = add i64 %3225, %3263
  %3265 = add i64 %3220, 47
  store i64 %3265, i64* %3, align 8
  %3266 = inttoptr i64 %3264 to i64*
  %3267 = load i64, i64* %3266, align 8
  store i64 %3267, i64* %RCX.i1514, align 8
  %3268 = add i64 %3220, 51
  store i64 %3268, i64* %3, align 8
  %3269 = load i32, i32* %3184, align 4
  %3270 = sext i32 %3269 to i64
  store i64 %3270, i64* %RSI.i1580, align 8
  %3271 = shl nsw i64 %3270, 1
  %3272 = add i64 %3271, %3267
  %3273 = add i64 %3220, 55
  store i64 %3273, i64* %3, align 8
  %3274 = inttoptr i64 %3272 to i16*
  %3275 = load i16, i16* %3274, align 2
  %3276 = zext i16 %3275 to i64
  store i64 %3276, i64* %RDX.i930, align 8
  %3277 = load i64, i64* bitcast (%G_0x70fcf0_type* @G_0x70fcf0 to i64*), align 8
  store i64 %3277, i64* %RCX.i1514, align 8
  %3278 = add i64 %3277, 6424
  %3279 = add i64 %3220, 70
  store i64 %3279, i64* %3, align 8
  %3280 = inttoptr i64 %3278 to i64*
  %3281 = load i64, i64* %3280, align 8
  store i64 %3281, i64* %RCX.i1514, align 8
  store i64 %3187, i64* %RSI.i1580, align 8
  %3282 = add i64 %3187, 156
  %3283 = add i64 %3220, 84
  store i64 %3283, i64* %3, align 8
  %3284 = inttoptr i64 %3282 to i32*
  %3285 = load i32, i32* %3284, align 4
  %3286 = zext i32 %3285 to i64
  store i64 %3286, i64* %RDI.i1462, align 8
  %3287 = load i64, i64* %RBP.i, align 8
  %3288 = add i64 %3287, -44
  %3289 = add i64 %3220, 87
  store i64 %3289, i64* %3, align 8
  %3290 = inttoptr i64 %3288 to i32*
  %3291 = load i32, i32* %3290, align 4
  %3292 = add i32 %3291, %3285
  %3293 = zext i32 %3292 to i64
  store i64 %3293, i64* %RDI.i1462, align 8
  %3294 = icmp ult i32 %3292, %3285
  %3295 = icmp ult i32 %3292, %3291
  %3296 = or i1 %3294, %3295
  %3297 = zext i1 %3296 to i8
  store i8 %3297, i8* %14, align 1
  %3298 = and i32 %3292, 255
  %3299 = tail call i32 @llvm.ctpop.i32(i32 %3298)
  %3300 = trunc i32 %3299 to i8
  %3301 = and i8 %3300, 1
  %3302 = xor i8 %3301, 1
  store i8 %3302, i8* %21, align 1
  %3303 = xor i32 %3291, %3285
  %3304 = xor i32 %3303, %3292
  %3305 = lshr i32 %3304, 4
  %3306 = trunc i32 %3305 to i8
  %3307 = and i8 %3306, 1
  store i8 %3307, i8* %26, align 1
  %3308 = icmp eq i32 %3292, 0
  %3309 = zext i1 %3308 to i8
  store i8 %3309, i8* %29, align 1
  %3310 = lshr i32 %3292, 31
  %3311 = trunc i32 %3310 to i8
  store i8 %3311, i8* %32, align 1
  %3312 = lshr i32 %3285, 31
  %3313 = lshr i32 %3291, 31
  %3314 = xor i32 %3310, %3312
  %3315 = xor i32 %3310, %3313
  %3316 = add nuw nsw i32 %3314, %3315
  %3317 = icmp eq i32 %3316, 2
  %3318 = zext i1 %3317 to i8
  store i8 %3318, i8* %38, align 1
  %3319 = sext i32 %3292 to i64
  store i64 %3319, i64* %RSI.i1580, align 8
  %3320 = shl nsw i64 %3319, 3
  %3321 = add i64 %3281, %3320
  %3322 = add i64 %3220, 94
  store i64 %3322, i64* %3, align 8
  %3323 = inttoptr i64 %3321 to i64*
  %3324 = load i64, i64* %3323, align 8
  store i64 %3324, i64* %RCX.i1514, align 8
  %3325 = add i64 %3287, -40
  %3326 = add i64 %3220, 98
  store i64 %3326, i64* %3, align 8
  %3327 = inttoptr i64 %3325 to i32*
  %3328 = load i32, i32* %3327, align 4
  %3329 = sext i32 %3328 to i64
  store i64 %3329, i64* %RSI.i1580, align 8
  %3330 = shl nsw i64 %3329, 1
  %3331 = add i64 %3330, %3324
  %3332 = add i64 %3220, 102
  store i64 %3332, i64* %3, align 8
  %3333 = inttoptr i64 %3331 to i16*
  %3334 = load i16, i16* %3333, align 2
  %3335 = zext i16 %3334 to i64
  store i64 %3335, i64* %RDI.i1462, align 8
  %3336 = zext i16 %3334 to i32
  %3337 = zext i16 %3275 to i32
  %3338 = sub nsw i32 %3337, %3336
  %3339 = zext i32 %3338 to i64
  store i64 %3339, i64* %RDX.i930, align 8
  %3340 = icmp ult i16 %3275, %3334
  %3341 = zext i1 %3340 to i8
  store i8 %3341, i8* %14, align 1
  %3342 = and i32 %3338, 255
  %3343 = tail call i32 @llvm.ctpop.i32(i32 %3342)
  %3344 = trunc i32 %3343 to i8
  %3345 = and i8 %3344, 1
  %3346 = xor i8 %3345, 1
  store i8 %3346, i8* %21, align 1
  %3347 = xor i16 %3334, %3275
  %3348 = zext i16 %3347 to i32
  %3349 = xor i32 %3348, %3338
  %3350 = lshr i32 %3349, 4
  %3351 = trunc i32 %3350 to i8
  %3352 = and i8 %3351, 1
  store i8 %3352, i8* %26, align 1
  %3353 = icmp eq i32 %3338, 0
  %3354 = zext i1 %3353 to i8
  store i8 %3354, i8* %29, align 1
  %3355 = lshr i32 %3338, 31
  %3356 = trunc i32 %3355 to i8
  store i8 %3356, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %3357 = sext i32 %3338 to i64
  store i64 %3357, i64* %RCX.i1514, align 8
  %3358 = load i64, i64* %RAX.i1567, align 8
  %3359 = shl nsw i64 %3357, 2
  %3360 = add i64 %3358, %3359
  %3361 = add i64 %3220, 111
  store i64 %3361, i64* %3, align 8
  %3362 = inttoptr i64 %3360 to i32*
  %3363 = load i32, i32* %3362, align 4
  %3364 = sext i32 %3363 to i64
  store i64 %3364, i64* %RAX.i1567, align 8
  %3365 = load i64, i64* %RBP.i, align 8
  %3366 = add i64 %3365, -64
  %3367 = add i64 %3220, 115
  store i64 %3367, i64* %3, align 8
  %3368 = inttoptr i64 %3366 to i64*
  %3369 = load i64, i64* %3368, align 8
  %3370 = add i64 %3369, %3364
  store i64 %3370, i64* %RAX.i1567, align 8
  %3371 = icmp ult i64 %3370, %3364
  %3372 = icmp ult i64 %3370, %3369
  %3373 = or i1 %3371, %3372
  %3374 = zext i1 %3373 to i8
  store i8 %3374, i8* %14, align 1
  %3375 = trunc i64 %3370 to i32
  %3376 = and i32 %3375, 255
  %3377 = tail call i32 @llvm.ctpop.i32(i32 %3376)
  %3378 = trunc i32 %3377 to i8
  %3379 = and i8 %3378, 1
  %3380 = xor i8 %3379, 1
  store i8 %3380, i8* %21, align 1
  %3381 = xor i64 %3369, %3364
  %3382 = xor i64 %3381, %3370
  %3383 = lshr i64 %3382, 4
  %3384 = trunc i64 %3383 to i8
  %3385 = and i8 %3384, 1
  store i8 %3385, i8* %26, align 1
  %3386 = icmp eq i64 %3370, 0
  %3387 = zext i1 %3386 to i8
  store i8 %3387, i8* %29, align 1
  %3388 = lshr i64 %3370, 63
  %3389 = trunc i64 %3388 to i8
  store i8 %3389, i8* %32, align 1
  %3390 = lshr i64 %3364, 63
  %3391 = lshr i64 %3369, 63
  %3392 = xor i64 %3388, %3390
  %3393 = xor i64 %3388, %3391
  %3394 = add nuw nsw i64 %3392, %3393
  %3395 = icmp eq i64 %3394, 2
  %3396 = zext i1 %3395 to i8
  store i8 %3396, i8* %38, align 1
  %3397 = add i64 %3220, 119
  store i64 %3397, i64* %3, align 8
  store i64 %3370, i64* %3368, align 8
  %3398 = load i64, i64* %RBP.i, align 8
  %3399 = add i64 %3398, -40
  %3400 = load i64, i64* %3, align 8
  %3401 = add i64 %3400, 3
  store i64 %3401, i64* %3, align 8
  %3402 = inttoptr i64 %3399 to i32*
  %3403 = load i32, i32* %3402, align 4
  %3404 = add i32 %3403, 1
  %3405 = zext i32 %3404 to i64
  store i64 %3405, i64* %RAX.i1567, align 8
  %3406 = icmp eq i32 %3403, -1
  %3407 = icmp eq i32 %3404, 0
  %3408 = or i1 %3406, %3407
  %3409 = zext i1 %3408 to i8
  store i8 %3409, i8* %14, align 1
  %3410 = and i32 %3404, 255
  %3411 = tail call i32 @llvm.ctpop.i32(i32 %3410)
  %3412 = trunc i32 %3411 to i8
  %3413 = and i8 %3412, 1
  %3414 = xor i8 %3413, 1
  store i8 %3414, i8* %21, align 1
  %3415 = xor i32 %3404, %3403
  %3416 = lshr i32 %3415, 4
  %3417 = trunc i32 %3416 to i8
  %3418 = and i8 %3417, 1
  store i8 %3418, i8* %26, align 1
  %3419 = zext i1 %3407 to i8
  store i8 %3419, i8* %29, align 1
  %3420 = lshr i32 %3404, 31
  %3421 = trunc i32 %3420 to i8
  store i8 %3421, i8* %32, align 1
  %3422 = lshr i32 %3403, 31
  %3423 = xor i32 %3420, %3422
  %3424 = add nuw nsw i32 %3423, %3420
  %3425 = icmp eq i32 %3424, 2
  %3426 = zext i1 %3425 to i8
  store i8 %3426, i8* %38, align 1
  %3427 = add i64 %3400, 9
  store i64 %3427, i64* %3, align 8
  store i32 %3404, i32* %3402, align 4
  %3428 = load i64, i64* %3, align 8
  %3429 = add i64 %3428, -156
  store i64 %3429, i64* %3, align 8
  br label %block_.L_48cddb

block_.L_48ce7c:                                  ; preds = %block_.L_48cddb
  %3430 = add i64 %3181, -44
  %3431 = add i64 %3220, 8
  store i64 %3431, i64* %3, align 8
  %3432 = inttoptr i64 %3430 to i32*
  %3433 = load i32, i32* %3432, align 4
  %3434 = add i32 %3433, 1
  %3435 = zext i32 %3434 to i64
  store i64 %3435, i64* %RAX.i1567, align 8
  %3436 = icmp eq i32 %3433, -1
  %3437 = icmp eq i32 %3434, 0
  %3438 = or i1 %3436, %3437
  %3439 = zext i1 %3438 to i8
  store i8 %3439, i8* %14, align 1
  %3440 = and i32 %3434, 255
  %3441 = tail call i32 @llvm.ctpop.i32(i32 %3440)
  %3442 = trunc i32 %3441 to i8
  %3443 = and i8 %3442, 1
  %3444 = xor i8 %3443, 1
  store i8 %3444, i8* %21, align 1
  %3445 = xor i32 %3434, %3433
  %3446 = lshr i32 %3445, 4
  %3447 = trunc i32 %3446 to i8
  %3448 = and i8 %3447, 1
  store i8 %3448, i8* %26, align 1
  %3449 = zext i1 %3437 to i8
  store i8 %3449, i8* %29, align 1
  %3450 = lshr i32 %3434, 31
  %3451 = trunc i32 %3450 to i8
  store i8 %3451, i8* %32, align 1
  %3452 = lshr i32 %3433, 31
  %3453 = xor i32 %3450, %3452
  %3454 = add nuw nsw i32 %3453, %3450
  %3455 = icmp eq i32 %3454, 2
  %3456 = zext i1 %3455 to i8
  store i8 %3456, i8* %38, align 1
  %3457 = add i64 %3220, 14
  store i64 %3457, i64* %3, align 8
  store i32 %3434, i32* %3432, align 4
  %3458 = load i64, i64* %3, align 8
  %3459 = add i64 %3458, -202
  store i64 %3459, i64* %3, align 8
  br label %block_.L_48cdc0

block_.L_48ce8f:                                  ; preds = %block_.L_48cdc0
  %3460 = add i64 %3170, 5
  store i64 %3460, i64* %3, align 8
  br label %block_.L_48ce94

block_.L_48ce94:                                  ; preds = %block_.L_48ce8f, %routine_idivq__rcx.exit
  %storemerge78 = phi i64 [ %3134, %routine_idivq__rcx.exit ], [ %3460, %block_.L_48ce8f ]
  %MEMORY.39 = phi %struct.Memory* [ %3129, %routine_idivq__rcx.exit ], [ %MEMORY.32, %block_.L_48ce8f ]
  %3461 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*), align 8
  store i64 %3461, i64* %RAX.i1567, align 8
  %3462 = add i64 %3461, 72700
  %3463 = add i64 %storemerge78, 15
  store i64 %3463, i64* %3, align 8
  %3464 = inttoptr i64 %3462 to i32*
  %3465 = load i32, i32* %3464, align 4
  store i8 0, i8* %14, align 1
  %3466 = and i32 %3465, 255
  %3467 = tail call i32 @llvm.ctpop.i32(i32 %3466)
  %3468 = trunc i32 %3467 to i8
  %3469 = and i8 %3468, 1
  %3470 = xor i8 %3469, 1
  store i8 %3470, i8* %21, align 1
  store i8 0, i8* %26, align 1
  %3471 = icmp eq i32 %3465, 0
  %3472 = zext i1 %3471 to i8
  store i8 %3472, i8* %29, align 1
  %3473 = lshr i32 %3465, 31
  %3474 = trunc i32 %3473 to i8
  store i8 %3474, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %.v227 = select i1 %3471, i64 397, i64 21
  %3475 = add i64 %storemerge78, %.v227
  store i64 %3475, i64* %3, align 8
  br i1 %3471, label %block_.L_48d021, label %block_48cea9

block_48cea9:                                     ; preds = %block_.L_48ce94
  %3476 = load i64, i64* %RBP.i, align 8
  %3477 = add i64 %3476, -44
  %3478 = add i64 %3475, 7
  store i64 %3478, i64* %3, align 8
  %3479 = inttoptr i64 %3477 to i32*
  store i32 0, i32* %3479, align 4
  %.pre177 = load i64, i64* %3, align 8
  br label %block_.L_48ceb0

block_.L_48ceb0:                                  ; preds = %block_.L_48d009, %block_48cea9
  %3480 = phi i64 [ %4013, %block_.L_48d009 ], [ %.pre177, %block_48cea9 ]
  %3481 = load i64, i64* %RBP.i, align 8
  %3482 = add i64 %3481, -44
  %3483 = add i64 %3480, 3
  store i64 %3483, i64* %3, align 8
  %3484 = inttoptr i64 %3482 to i32*
  %3485 = load i32, i32* %3484, align 4
  %3486 = zext i32 %3485 to i64
  store i64 %3486, i64* %RAX.i1567, align 8
  %3487 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*), align 8
  store i64 %3487, i64* %RCX.i1514, align 8
  %3488 = add i64 %3487, 72712
  %3489 = add i64 %3480, 17
  store i64 %3489, i64* %3, align 8
  %3490 = inttoptr i64 %3488 to i32*
  %3491 = load i32, i32* %3490, align 4
  %3492 = sub i32 %3485, %3491
  %3493 = icmp ult i32 %3485, %3491
  %3494 = zext i1 %3493 to i8
  store i8 %3494, i8* %14, align 1
  %3495 = and i32 %3492, 255
  %3496 = tail call i32 @llvm.ctpop.i32(i32 %3495)
  %3497 = trunc i32 %3496 to i8
  %3498 = and i8 %3497, 1
  %3499 = xor i8 %3498, 1
  store i8 %3499, i8* %21, align 1
  %3500 = xor i32 %3491, %3485
  %3501 = xor i32 %3500, %3492
  %3502 = lshr i32 %3501, 4
  %3503 = trunc i32 %3502 to i8
  %3504 = and i8 %3503, 1
  store i8 %3504, i8* %26, align 1
  %3505 = icmp eq i32 %3492, 0
  %3506 = zext i1 %3505 to i8
  store i8 %3506, i8* %29, align 1
  %3507 = lshr i32 %3492, 31
  %3508 = trunc i32 %3507 to i8
  store i8 %3508, i8* %32, align 1
  %3509 = lshr i32 %3485, 31
  %3510 = lshr i32 %3491, 31
  %3511 = xor i32 %3510, %3509
  %3512 = xor i32 %3507, %3509
  %3513 = add nuw nsw i32 %3512, %3511
  %3514 = icmp eq i32 %3513, 2
  %3515 = zext i1 %3514 to i8
  store i8 %3515, i8* %38, align 1
  %3516 = icmp ne i8 %3508, 0
  %3517 = xor i1 %3516, %3514
  %.v228 = select i1 %3517, i64 23, i64 364
  %3518 = add i64 %3480, %.v228
  store i64 %3518, i64* %3, align 8
  br i1 %3517, label %block_48cec7, label %block_.L_48d01c

block_48cec7:                                     ; preds = %block_.L_48ceb0
  store i64 %3487, i64* %RAX.i1567, align 8
  %3519 = add i64 %3487, 176
  %3520 = add i64 %3518, 14
  store i64 %3520, i64* %3, align 8
  %3521 = inttoptr i64 %3519 to i32*
  %3522 = load i32, i32* %3521, align 4
  %3523 = zext i32 %3522 to i64
  store i64 %3523, i64* %RCX.i1514, align 8
  %3524 = add i64 %3481, -40
  %3525 = add i64 %3518, 17
  store i64 %3525, i64* %3, align 8
  %3526 = inttoptr i64 %3524 to i32*
  store i32 %3522, i32* %3526, align 4
  %.pre178 = load i64, i64* %3, align 8
  br label %block_.L_48ced8

block_.L_48ced8:                                  ; preds = %block_48ceff, %block_48cec7
  %3527 = phi i64 [ %3982, %block_48ceff ], [ %.pre178, %block_48cec7 ]
  %3528 = load i64, i64* %RBP.i, align 8
  %3529 = add i64 %3528, -40
  %3530 = add i64 %3527, 3
  store i64 %3530, i64* %3, align 8
  %3531 = inttoptr i64 %3529 to i32*
  %3532 = load i32, i32* %3531, align 4
  %3533 = zext i32 %3532 to i64
  store i64 %3533, i64* %RAX.i1567, align 8
  %3534 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*), align 8
  store i64 %3534, i64* %RCX.i1514, align 8
  %3535 = add i64 %3534, 176
  %3536 = add i64 %3527, 17
  store i64 %3536, i64* %3, align 8
  %3537 = inttoptr i64 %3535 to i32*
  %3538 = load i32, i32* %3537, align 4
  %3539 = zext i32 %3538 to i64
  store i64 %3539, i64* %RDX.i930, align 8
  store i64 %3534, i64* %RCX.i1514, align 8
  %3540 = add i64 %3534, 72708
  %3541 = add i64 %3527, 31
  store i64 %3541, i64* %3, align 8
  %3542 = inttoptr i64 %3540 to i32*
  %3543 = load i32, i32* %3542, align 4
  %3544 = add i32 %3543, %3538
  %3545 = zext i32 %3544 to i64
  store i64 %3545, i64* %RDX.i930, align 8
  %3546 = lshr i32 %3544, 31
  %3547 = sub i32 %3532, %3544
  %3548 = icmp ult i32 %3532, %3544
  %3549 = zext i1 %3548 to i8
  store i8 %3549, i8* %14, align 1
  %3550 = and i32 %3547, 255
  %3551 = tail call i32 @llvm.ctpop.i32(i32 %3550)
  %3552 = trunc i32 %3551 to i8
  %3553 = and i8 %3552, 1
  %3554 = xor i8 %3553, 1
  store i8 %3554, i8* %21, align 1
  %3555 = xor i32 %3544, %3532
  %3556 = xor i32 %3555, %3547
  %3557 = lshr i32 %3556, 4
  %3558 = trunc i32 %3557 to i8
  %3559 = and i8 %3558, 1
  store i8 %3559, i8* %26, align 1
  %3560 = icmp eq i32 %3547, 0
  %3561 = zext i1 %3560 to i8
  store i8 %3561, i8* %29, align 1
  %3562 = lshr i32 %3547, 31
  %3563 = trunc i32 %3562 to i8
  store i8 %3563, i8* %32, align 1
  %3564 = lshr i32 %3532, 31
  %3565 = xor i32 %3546, %3564
  %3566 = xor i32 %3562, %3564
  %3567 = add nuw nsw i32 %3566, %3565
  %3568 = icmp eq i32 %3567, 2
  %3569 = zext i1 %3568 to i8
  store i8 %3569, i8* %38, align 1
  %3570 = icmp ne i8 %3563, 0
  %3571 = xor i1 %3570, %3568
  %.v239 = select i1 %3571, i64 39, i64 305
  %3572 = add i64 %3527, %.v239
  store i64 %3572, i64* %3, align 8
  br i1 %3571, label %block_48ceff, label %block_.L_48d009

block_48ceff:                                     ; preds = %block_.L_48ced8
  store i64 %3534, i64* %RAX.i1567, align 8
  %3573 = add i64 %3534, 71776
  %3574 = add i64 %3572, 15
  store i64 %3574, i64* %3, align 8
  %3575 = inttoptr i64 %3573 to i64*
  %3576 = load i64, i64* %3575, align 8
  store i64 %3576, i64* %RAX.i1567, align 8
  %3577 = load i64, i64* bitcast (%G_0x6f6f90_type* @G_0x6f6f90 to i64*), align 8
  store i64 %3577, i64* %RCX.i1514, align 8
  %3578 = add i64 %3572, 26
  store i64 %3578, i64* %3, align 8
  %3579 = inttoptr i64 %3577 to i64*
  %3580 = load i64, i64* %3579, align 8
  store i64 %3580, i64* %RCX.i1514, align 8
  %3581 = load i64, i64* %RBP.i, align 8
  %3582 = add i64 %3581, -44
  %3583 = add i64 %3572, 29
  store i64 %3583, i64* %3, align 8
  %3584 = inttoptr i64 %3582 to i32*
  %3585 = load i32, i32* %3584, align 4
  %3586 = zext i32 %3585 to i64
  store i64 %3586, i64* %RDX.i930, align 8
  store i64 %3534, i64* %RSI.i1580, align 8
  %3587 = add i64 %3534, 180
  %3588 = add i64 %3572, 43
  store i64 %3588, i64* %3, align 8
  %3589 = inttoptr i64 %3587 to i32*
  %3590 = load i32, i32* %3589, align 4
  %3591 = add i32 %3590, %3585
  %3592 = zext i32 %3591 to i64
  store i64 %3592, i64* %RDX.i930, align 8
  %3593 = icmp ult i32 %3591, %3585
  %3594 = icmp ult i32 %3591, %3590
  %3595 = or i1 %3593, %3594
  %3596 = zext i1 %3595 to i8
  store i8 %3596, i8* %14, align 1
  %3597 = and i32 %3591, 255
  %3598 = tail call i32 @llvm.ctpop.i32(i32 %3597)
  %3599 = trunc i32 %3598 to i8
  %3600 = and i8 %3599, 1
  %3601 = xor i8 %3600, 1
  store i8 %3601, i8* %21, align 1
  %3602 = xor i32 %3590, %3585
  %3603 = xor i32 %3602, %3591
  %3604 = lshr i32 %3603, 4
  %3605 = trunc i32 %3604 to i8
  %3606 = and i8 %3605, 1
  store i8 %3606, i8* %26, align 1
  %3607 = icmp eq i32 %3591, 0
  %3608 = zext i1 %3607 to i8
  store i8 %3608, i8* %29, align 1
  %3609 = lshr i32 %3591, 31
  %3610 = trunc i32 %3609 to i8
  store i8 %3610, i8* %32, align 1
  %3611 = lshr i32 %3585, 31
  %3612 = lshr i32 %3590, 31
  %3613 = xor i32 %3609, %3611
  %3614 = xor i32 %3609, %3612
  %3615 = add nuw nsw i32 %3613, %3614
  %3616 = icmp eq i32 %3615, 2
  %3617 = zext i1 %3616 to i8
  store i8 %3617, i8* %38, align 1
  %3618 = sext i32 %3591 to i64
  store i64 %3618, i64* %RSI.i1580, align 8
  %3619 = shl nsw i64 %3618, 3
  %3620 = add i64 %3580, %3619
  %3621 = add i64 %3572, 50
  store i64 %3621, i64* %3, align 8
  %3622 = inttoptr i64 %3620 to i64*
  %3623 = load i64, i64* %3622, align 8
  store i64 %3623, i64* %RCX.i1514, align 8
  %3624 = add i64 %3581, -40
  %3625 = add i64 %3572, 54
  store i64 %3625, i64* %3, align 8
  %3626 = inttoptr i64 %3624 to i32*
  %3627 = load i32, i32* %3626, align 4
  %3628 = sext i32 %3627 to i64
  store i64 %3628, i64* %RSI.i1580, align 8
  %3629 = shl nsw i64 %3628, 1
  %3630 = add i64 %3629, %3623
  %3631 = add i64 %3572, 58
  store i64 %3631, i64* %3, align 8
  %3632 = inttoptr i64 %3630 to i16*
  %3633 = load i16, i16* %3632, align 2
  %3634 = zext i16 %3633 to i64
  store i64 %3634, i64* %RDX.i930, align 8
  %3635 = load i64, i64* bitcast (%G_0x70fcf0_type* @G_0x70fcf0 to i64*), align 8
  store i64 %3635, i64* %RCX.i1514, align 8
  %3636 = add i64 %3635, 6464
  %3637 = add i64 %3572, 73
  store i64 %3637, i64* %3, align 8
  %3638 = inttoptr i64 %3636 to i64*
  %3639 = load i64, i64* %3638, align 8
  store i64 %3639, i64* %RCX.i1514, align 8
  %3640 = add i64 %3572, 76
  store i64 %3640, i64* %3, align 8
  %3641 = inttoptr i64 %3639 to i64*
  %3642 = load i64, i64* %3641, align 8
  store i64 %3642, i64* %RCX.i1514, align 8
  %3643 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*), align 8
  store i64 %3643, i64* %RSI.i1580, align 8
  %3644 = add i64 %3643, 164
  %3645 = add i64 %3572, 90
  store i64 %3645, i64* %3, align 8
  %3646 = inttoptr i64 %3644 to i32*
  %3647 = load i32, i32* %3646, align 4
  %3648 = zext i32 %3647 to i64
  store i64 %3648, i64* %RDI.i1462, align 8
  %3649 = load i64, i64* %RBP.i, align 8
  %3650 = add i64 %3649, -44
  %3651 = add i64 %3572, 93
  store i64 %3651, i64* %3, align 8
  %3652 = inttoptr i64 %3650 to i32*
  %3653 = load i32, i32* %3652, align 4
  %3654 = add i32 %3653, %3647
  %3655 = zext i32 %3654 to i64
  store i64 %3655, i64* %RDI.i1462, align 8
  %3656 = icmp ult i32 %3654, %3647
  %3657 = icmp ult i32 %3654, %3653
  %3658 = or i1 %3656, %3657
  %3659 = zext i1 %3658 to i8
  store i8 %3659, i8* %14, align 1
  %3660 = and i32 %3654, 255
  %3661 = tail call i32 @llvm.ctpop.i32(i32 %3660)
  %3662 = trunc i32 %3661 to i8
  %3663 = and i8 %3662, 1
  %3664 = xor i8 %3663, 1
  store i8 %3664, i8* %21, align 1
  %3665 = xor i32 %3653, %3647
  %3666 = xor i32 %3665, %3654
  %3667 = lshr i32 %3666, 4
  %3668 = trunc i32 %3667 to i8
  %3669 = and i8 %3668, 1
  store i8 %3669, i8* %26, align 1
  %3670 = icmp eq i32 %3654, 0
  %3671 = zext i1 %3670 to i8
  store i8 %3671, i8* %29, align 1
  %3672 = lshr i32 %3654, 31
  %3673 = trunc i32 %3672 to i8
  store i8 %3673, i8* %32, align 1
  %3674 = lshr i32 %3647, 31
  %3675 = lshr i32 %3653, 31
  %3676 = xor i32 %3672, %3674
  %3677 = xor i32 %3672, %3675
  %3678 = add nuw nsw i32 %3676, %3677
  %3679 = icmp eq i32 %3678, 2
  %3680 = zext i1 %3679 to i8
  store i8 %3680, i8* %38, align 1
  %3681 = sext i32 %3654 to i64
  store i64 %3681, i64* %RSI.i1580, align 8
  %3682 = shl nsw i64 %3681, 3
  %3683 = add i64 %3642, %3682
  %3684 = add i64 %3572, 100
  store i64 %3684, i64* %3, align 8
  %3685 = inttoptr i64 %3683 to i64*
  %3686 = load i64, i64* %3685, align 8
  store i64 %3686, i64* %RCX.i1514, align 8
  %3687 = add i64 %3649, -40
  %3688 = add i64 %3572, 104
  store i64 %3688, i64* %3, align 8
  %3689 = inttoptr i64 %3687 to i32*
  %3690 = load i32, i32* %3689, align 4
  %3691 = sext i32 %3690 to i64
  store i64 %3691, i64* %RSI.i1580, align 8
  %3692 = shl nsw i64 %3691, 1
  %3693 = add i64 %3692, %3686
  %3694 = add i64 %3572, 108
  store i64 %3694, i64* %3, align 8
  %3695 = inttoptr i64 %3693 to i16*
  %3696 = load i16, i16* %3695, align 2
  %3697 = zext i16 %3696 to i64
  store i64 %3697, i64* %RDI.i1462, align 8
  %3698 = zext i16 %3696 to i32
  %3699 = zext i16 %3633 to i32
  %3700 = sub nsw i32 %3699, %3698
  %3701 = zext i32 %3700 to i64
  store i64 %3701, i64* %RDX.i930, align 8
  %3702 = icmp ult i16 %3633, %3696
  %3703 = zext i1 %3702 to i8
  store i8 %3703, i8* %14, align 1
  %3704 = and i32 %3700, 255
  %3705 = tail call i32 @llvm.ctpop.i32(i32 %3704)
  %3706 = trunc i32 %3705 to i8
  %3707 = and i8 %3706, 1
  %3708 = xor i8 %3707, 1
  store i8 %3708, i8* %21, align 1
  %3709 = xor i16 %3696, %3633
  %3710 = zext i16 %3709 to i32
  %3711 = xor i32 %3710, %3700
  %3712 = lshr i32 %3711, 4
  %3713 = trunc i32 %3712 to i8
  %3714 = and i8 %3713, 1
  store i8 %3714, i8* %26, align 1
  %3715 = icmp eq i32 %3700, 0
  %3716 = zext i1 %3715 to i8
  store i8 %3716, i8* %29, align 1
  %3717 = lshr i32 %3700, 31
  %3718 = trunc i32 %3717 to i8
  store i8 %3718, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %3719 = sext i32 %3700 to i64
  store i64 %3719, i64* %RCX.i1514, align 8
  %3720 = load i64, i64* %RAX.i1567, align 8
  %3721 = shl nsw i64 %3719, 2
  %3722 = add i64 %3720, %3721
  %3723 = add i64 %3572, 117
  store i64 %3723, i64* %3, align 8
  %3724 = inttoptr i64 %3722 to i32*
  %3725 = load i32, i32* %3724, align 4
  %3726 = sext i32 %3725 to i64
  store i64 %3726, i64* %RAX.i1567, align 8
  %3727 = load i64, i64* %RBP.i, align 8
  %3728 = add i64 %3727, -64
  %3729 = add i64 %3572, 121
  store i64 %3729, i64* %3, align 8
  %3730 = inttoptr i64 %3728 to i64*
  %3731 = load i64, i64* %3730, align 8
  %3732 = add i64 %3731, %3726
  %3733 = icmp ult i64 %3732, %3726
  %3734 = icmp ult i64 %3732, %3731
  %3735 = or i1 %3733, %3734
  %3736 = zext i1 %3735 to i8
  store i8 %3736, i8* %14, align 1
  %3737 = trunc i64 %3732 to i32
  %3738 = and i32 %3737, 255
  %3739 = tail call i32 @llvm.ctpop.i32(i32 %3738)
  %3740 = trunc i32 %3739 to i8
  %3741 = and i8 %3740, 1
  %3742 = xor i8 %3741, 1
  store i8 %3742, i8* %21, align 1
  %3743 = xor i64 %3731, %3726
  %3744 = xor i64 %3743, %3732
  %3745 = lshr i64 %3744, 4
  %3746 = trunc i64 %3745 to i8
  %3747 = and i8 %3746, 1
  store i8 %3747, i8* %26, align 1
  %3748 = icmp eq i64 %3732, 0
  %3749 = zext i1 %3748 to i8
  store i8 %3749, i8* %29, align 1
  %3750 = lshr i64 %3732, 63
  %3751 = trunc i64 %3750 to i8
  store i8 %3751, i8* %32, align 1
  %3752 = lshr i64 %3726, 63
  %3753 = lshr i64 %3731, 63
  %3754 = xor i64 %3750, %3752
  %3755 = xor i64 %3750, %3753
  %3756 = add nuw nsw i64 %3754, %3755
  %3757 = icmp eq i64 %3756, 2
  %3758 = zext i1 %3757 to i8
  store i8 %3758, i8* %38, align 1
  %3759 = add i64 %3572, 125
  store i64 %3759, i64* %3, align 8
  store i64 %3732, i64* %3730, align 8
  %3760 = load i64, i64* %3, align 8
  %3761 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*), align 8
  store i64 %3761, i64* %RAX.i1567, align 8
  %3762 = add i64 %3761, 71776
  %3763 = add i64 %3760, 15
  store i64 %3763, i64* %3, align 8
  %3764 = inttoptr i64 %3762 to i64*
  %3765 = load i64, i64* %3764, align 8
  store i64 %3765, i64* %RAX.i1567, align 8
  %3766 = load i64, i64* bitcast (%G_0x6f6f90_type* @G_0x6f6f90 to i64*), align 8
  store i64 %3766, i64* %RCX.i1514, align 8
  %3767 = add i64 %3766, 8
  %3768 = add i64 %3760, 27
  store i64 %3768, i64* %3, align 8
  %3769 = inttoptr i64 %3767 to i64*
  %3770 = load i64, i64* %3769, align 8
  store i64 %3770, i64* %RCX.i1514, align 8
  %3771 = load i64, i64* %RBP.i, align 8
  %3772 = add i64 %3771, -44
  %3773 = add i64 %3760, 30
  store i64 %3773, i64* %3, align 8
  %3774 = inttoptr i64 %3772 to i32*
  %3775 = load i32, i32* %3774, align 4
  %3776 = zext i32 %3775 to i64
  store i64 %3776, i64* %RDX.i930, align 8
  store i64 %3761, i64* %RSI.i1580, align 8
  %3777 = add i64 %3761, 180
  %3778 = add i64 %3760, 44
  store i64 %3778, i64* %3, align 8
  %3779 = inttoptr i64 %3777 to i32*
  %3780 = load i32, i32* %3779, align 4
  %3781 = add i32 %3780, %3775
  %3782 = zext i32 %3781 to i64
  store i64 %3782, i64* %RDX.i930, align 8
  %3783 = icmp ult i32 %3781, %3775
  %3784 = icmp ult i32 %3781, %3780
  %3785 = or i1 %3783, %3784
  %3786 = zext i1 %3785 to i8
  store i8 %3786, i8* %14, align 1
  %3787 = and i32 %3781, 255
  %3788 = tail call i32 @llvm.ctpop.i32(i32 %3787)
  %3789 = trunc i32 %3788 to i8
  %3790 = and i8 %3789, 1
  %3791 = xor i8 %3790, 1
  store i8 %3791, i8* %21, align 1
  %3792 = xor i32 %3780, %3775
  %3793 = xor i32 %3792, %3781
  %3794 = lshr i32 %3793, 4
  %3795 = trunc i32 %3794 to i8
  %3796 = and i8 %3795, 1
  store i8 %3796, i8* %26, align 1
  %3797 = icmp eq i32 %3781, 0
  %3798 = zext i1 %3797 to i8
  store i8 %3798, i8* %29, align 1
  %3799 = lshr i32 %3781, 31
  %3800 = trunc i32 %3799 to i8
  store i8 %3800, i8* %32, align 1
  %3801 = lshr i32 %3775, 31
  %3802 = lshr i32 %3780, 31
  %3803 = xor i32 %3799, %3801
  %3804 = xor i32 %3799, %3802
  %3805 = add nuw nsw i32 %3803, %3804
  %3806 = icmp eq i32 %3805, 2
  %3807 = zext i1 %3806 to i8
  store i8 %3807, i8* %38, align 1
  %3808 = sext i32 %3781 to i64
  store i64 %3808, i64* %RSI.i1580, align 8
  %3809 = shl nsw i64 %3808, 3
  %3810 = add i64 %3770, %3809
  %3811 = add i64 %3760, 51
  store i64 %3811, i64* %3, align 8
  %3812 = inttoptr i64 %3810 to i64*
  %3813 = load i64, i64* %3812, align 8
  store i64 %3813, i64* %RCX.i1514, align 8
  %3814 = add i64 %3771, -40
  %3815 = add i64 %3760, 55
  store i64 %3815, i64* %3, align 8
  %3816 = inttoptr i64 %3814 to i32*
  %3817 = load i32, i32* %3816, align 4
  %3818 = sext i32 %3817 to i64
  store i64 %3818, i64* %RSI.i1580, align 8
  %3819 = shl nsw i64 %3818, 1
  %3820 = add i64 %3819, %3813
  %3821 = add i64 %3760, 59
  store i64 %3821, i64* %3, align 8
  %3822 = inttoptr i64 %3820 to i16*
  %3823 = load i16, i16* %3822, align 2
  %3824 = zext i16 %3823 to i64
  store i64 %3824, i64* %RDX.i930, align 8
  %3825 = load i64, i64* bitcast (%G_0x70fcf0_type* @G_0x70fcf0 to i64*), align 8
  store i64 %3825, i64* %RCX.i1514, align 8
  %3826 = add i64 %3825, 6464
  %3827 = add i64 %3760, 74
  store i64 %3827, i64* %3, align 8
  %3828 = inttoptr i64 %3826 to i64*
  %3829 = load i64, i64* %3828, align 8
  store i64 %3829, i64* %RCX.i1514, align 8
  %3830 = add i64 %3829, 8
  %3831 = add i64 %3760, 78
  store i64 %3831, i64* %3, align 8
  %3832 = inttoptr i64 %3830 to i64*
  %3833 = load i64, i64* %3832, align 8
  store i64 %3833, i64* %RCX.i1514, align 8
  %3834 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*), align 8
  store i64 %3834, i64* %RSI.i1580, align 8
  %3835 = add i64 %3834, 164
  %3836 = add i64 %3760, 92
  store i64 %3836, i64* %3, align 8
  %3837 = inttoptr i64 %3835 to i32*
  %3838 = load i32, i32* %3837, align 4
  %3839 = zext i32 %3838 to i64
  store i64 %3839, i64* %RDI.i1462, align 8
  %3840 = load i64, i64* %RBP.i, align 8
  %3841 = add i64 %3840, -44
  %3842 = add i64 %3760, 95
  store i64 %3842, i64* %3, align 8
  %3843 = inttoptr i64 %3841 to i32*
  %3844 = load i32, i32* %3843, align 4
  %3845 = add i32 %3844, %3838
  %3846 = zext i32 %3845 to i64
  store i64 %3846, i64* %RDI.i1462, align 8
  %3847 = icmp ult i32 %3845, %3838
  %3848 = icmp ult i32 %3845, %3844
  %3849 = or i1 %3847, %3848
  %3850 = zext i1 %3849 to i8
  store i8 %3850, i8* %14, align 1
  %3851 = and i32 %3845, 255
  %3852 = tail call i32 @llvm.ctpop.i32(i32 %3851)
  %3853 = trunc i32 %3852 to i8
  %3854 = and i8 %3853, 1
  %3855 = xor i8 %3854, 1
  store i8 %3855, i8* %21, align 1
  %3856 = xor i32 %3844, %3838
  %3857 = xor i32 %3856, %3845
  %3858 = lshr i32 %3857, 4
  %3859 = trunc i32 %3858 to i8
  %3860 = and i8 %3859, 1
  store i8 %3860, i8* %26, align 1
  %3861 = icmp eq i32 %3845, 0
  %3862 = zext i1 %3861 to i8
  store i8 %3862, i8* %29, align 1
  %3863 = lshr i32 %3845, 31
  %3864 = trunc i32 %3863 to i8
  store i8 %3864, i8* %32, align 1
  %3865 = lshr i32 %3838, 31
  %3866 = lshr i32 %3844, 31
  %3867 = xor i32 %3863, %3865
  %3868 = xor i32 %3863, %3866
  %3869 = add nuw nsw i32 %3867, %3868
  %3870 = icmp eq i32 %3869, 2
  %3871 = zext i1 %3870 to i8
  store i8 %3871, i8* %38, align 1
  %3872 = sext i32 %3845 to i64
  store i64 %3872, i64* %RSI.i1580, align 8
  %3873 = shl nsw i64 %3872, 3
  %3874 = add i64 %3833, %3873
  %3875 = add i64 %3760, 102
  store i64 %3875, i64* %3, align 8
  %3876 = inttoptr i64 %3874 to i64*
  %3877 = load i64, i64* %3876, align 8
  store i64 %3877, i64* %RCX.i1514, align 8
  %3878 = add i64 %3840, -40
  %3879 = add i64 %3760, 106
  store i64 %3879, i64* %3, align 8
  %3880 = inttoptr i64 %3878 to i32*
  %3881 = load i32, i32* %3880, align 4
  %3882 = sext i32 %3881 to i64
  store i64 %3882, i64* %RSI.i1580, align 8
  %3883 = shl nsw i64 %3882, 1
  %3884 = add i64 %3883, %3877
  %3885 = add i64 %3760, 110
  store i64 %3885, i64* %3, align 8
  %3886 = inttoptr i64 %3884 to i16*
  %3887 = load i16, i16* %3886, align 2
  %3888 = zext i16 %3887 to i64
  store i64 %3888, i64* %RDI.i1462, align 8
  %3889 = zext i16 %3887 to i32
  %3890 = zext i16 %3823 to i32
  %3891 = sub nsw i32 %3890, %3889
  %3892 = zext i32 %3891 to i64
  store i64 %3892, i64* %RDX.i930, align 8
  %3893 = icmp ult i16 %3823, %3887
  %3894 = zext i1 %3893 to i8
  store i8 %3894, i8* %14, align 1
  %3895 = and i32 %3891, 255
  %3896 = tail call i32 @llvm.ctpop.i32(i32 %3895)
  %3897 = trunc i32 %3896 to i8
  %3898 = and i8 %3897, 1
  %3899 = xor i8 %3898, 1
  store i8 %3899, i8* %21, align 1
  %3900 = xor i16 %3887, %3823
  %3901 = zext i16 %3900 to i32
  %3902 = xor i32 %3901, %3891
  %3903 = lshr i32 %3902, 4
  %3904 = trunc i32 %3903 to i8
  %3905 = and i8 %3904, 1
  store i8 %3905, i8* %26, align 1
  %3906 = icmp eq i32 %3891, 0
  %3907 = zext i1 %3906 to i8
  store i8 %3907, i8* %29, align 1
  %3908 = lshr i32 %3891, 31
  %3909 = trunc i32 %3908 to i8
  store i8 %3909, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %3910 = sext i32 %3891 to i64
  store i64 %3910, i64* %RCX.i1514, align 8
  %3911 = load i64, i64* %RAX.i1567, align 8
  %3912 = shl nsw i64 %3910, 2
  %3913 = add i64 %3911, %3912
  %3914 = add i64 %3760, 119
  store i64 %3914, i64* %3, align 8
  %3915 = inttoptr i64 %3913 to i32*
  %3916 = load i32, i32* %3915, align 4
  %3917 = sext i32 %3916 to i64
  store i64 %3917, i64* %RAX.i1567, align 8
  %3918 = load i64, i64* %RBP.i, align 8
  %3919 = add i64 %3918, -64
  %3920 = add i64 %3760, 123
  store i64 %3920, i64* %3, align 8
  %3921 = inttoptr i64 %3919 to i64*
  %3922 = load i64, i64* %3921, align 8
  %3923 = add i64 %3922, %3917
  store i64 %3923, i64* %RAX.i1567, align 8
  %3924 = icmp ult i64 %3923, %3917
  %3925 = icmp ult i64 %3923, %3922
  %3926 = or i1 %3924, %3925
  %3927 = zext i1 %3926 to i8
  store i8 %3927, i8* %14, align 1
  %3928 = trunc i64 %3923 to i32
  %3929 = and i32 %3928, 255
  %3930 = tail call i32 @llvm.ctpop.i32(i32 %3929)
  %3931 = trunc i32 %3930 to i8
  %3932 = and i8 %3931, 1
  %3933 = xor i8 %3932, 1
  store i8 %3933, i8* %21, align 1
  %3934 = xor i64 %3922, %3917
  %3935 = xor i64 %3934, %3923
  %3936 = lshr i64 %3935, 4
  %3937 = trunc i64 %3936 to i8
  %3938 = and i8 %3937, 1
  store i8 %3938, i8* %26, align 1
  %3939 = icmp eq i64 %3923, 0
  %3940 = zext i1 %3939 to i8
  store i8 %3940, i8* %29, align 1
  %3941 = lshr i64 %3923, 63
  %3942 = trunc i64 %3941 to i8
  store i8 %3942, i8* %32, align 1
  %3943 = lshr i64 %3917, 63
  %3944 = lshr i64 %3922, 63
  %3945 = xor i64 %3941, %3943
  %3946 = xor i64 %3941, %3944
  %3947 = add nuw nsw i64 %3945, %3946
  %3948 = icmp eq i64 %3947, 2
  %3949 = zext i1 %3948 to i8
  store i8 %3949, i8* %38, align 1
  %3950 = add i64 %3760, 127
  store i64 %3950, i64* %3, align 8
  store i64 %3923, i64* %3921, align 8
  %3951 = load i64, i64* %RBP.i, align 8
  %3952 = add i64 %3951, -40
  %3953 = load i64, i64* %3, align 8
  %3954 = add i64 %3953, 3
  store i64 %3954, i64* %3, align 8
  %3955 = inttoptr i64 %3952 to i32*
  %3956 = load i32, i32* %3955, align 4
  %3957 = add i32 %3956, 1
  %3958 = zext i32 %3957 to i64
  store i64 %3958, i64* %RAX.i1567, align 8
  %3959 = icmp eq i32 %3956, -1
  %3960 = icmp eq i32 %3957, 0
  %3961 = or i1 %3959, %3960
  %3962 = zext i1 %3961 to i8
  store i8 %3962, i8* %14, align 1
  %3963 = and i32 %3957, 255
  %3964 = tail call i32 @llvm.ctpop.i32(i32 %3963)
  %3965 = trunc i32 %3964 to i8
  %3966 = and i8 %3965, 1
  %3967 = xor i8 %3966, 1
  store i8 %3967, i8* %21, align 1
  %3968 = xor i32 %3957, %3956
  %3969 = lshr i32 %3968, 4
  %3970 = trunc i32 %3969 to i8
  %3971 = and i8 %3970, 1
  store i8 %3971, i8* %26, align 1
  %3972 = zext i1 %3960 to i8
  store i8 %3972, i8* %29, align 1
  %3973 = lshr i32 %3957, 31
  %3974 = trunc i32 %3973 to i8
  store i8 %3974, i8* %32, align 1
  %3975 = lshr i32 %3956, 31
  %3976 = xor i32 %3973, %3975
  %3977 = add nuw nsw i32 %3976, %3973
  %3978 = icmp eq i32 %3977, 2
  %3979 = zext i1 %3978 to i8
  store i8 %3979, i8* %38, align 1
  %3980 = add i64 %3953, 9
  store i64 %3980, i64* %3, align 8
  store i32 %3957, i32* %3955, align 4
  %3981 = load i64, i64* %3, align 8
  %3982 = add i64 %3981, -300
  store i64 %3982, i64* %3, align 8
  br label %block_.L_48ced8

block_.L_48d009:                                  ; preds = %block_.L_48ced8
  %3983 = load i64, i64* %RBP.i, align 8
  %3984 = add i64 %3983, -44
  %3985 = add i64 %3572, 8
  store i64 %3985, i64* %3, align 8
  %3986 = inttoptr i64 %3984 to i32*
  %3987 = load i32, i32* %3986, align 4
  %3988 = add i32 %3987, 1
  %3989 = zext i32 %3988 to i64
  store i64 %3989, i64* %RAX.i1567, align 8
  %3990 = icmp eq i32 %3987, -1
  %3991 = icmp eq i32 %3988, 0
  %3992 = or i1 %3990, %3991
  %3993 = zext i1 %3992 to i8
  store i8 %3993, i8* %14, align 1
  %3994 = and i32 %3988, 255
  %3995 = tail call i32 @llvm.ctpop.i32(i32 %3994)
  %3996 = trunc i32 %3995 to i8
  %3997 = and i8 %3996, 1
  %3998 = xor i8 %3997, 1
  store i8 %3998, i8* %21, align 1
  %3999 = xor i32 %3988, %3987
  %4000 = lshr i32 %3999, 4
  %4001 = trunc i32 %4000 to i8
  %4002 = and i8 %4001, 1
  store i8 %4002, i8* %26, align 1
  %4003 = zext i1 %3991 to i8
  store i8 %4003, i8* %29, align 1
  %4004 = lshr i32 %3988, 31
  %4005 = trunc i32 %4004 to i8
  store i8 %4005, i8* %32, align 1
  %4006 = lshr i32 %3987, 31
  %4007 = xor i32 %4004, %4006
  %4008 = add nuw nsw i32 %4007, %4004
  %4009 = icmp eq i32 %4008, 2
  %4010 = zext i1 %4009 to i8
  store i8 %4010, i8* %38, align 1
  %4011 = add i64 %3572, 14
  store i64 %4011, i64* %3, align 8
  store i32 %3988, i32* %3986, align 4
  %4012 = load i64, i64* %3, align 8
  %4013 = add i64 %4012, -359
  store i64 %4013, i64* %3, align 8
  br label %block_.L_48ceb0

block_.L_48d01c:                                  ; preds = %block_.L_48ceb0
  %4014 = add i64 %3518, 5
  store i64 %4014, i64* %3, align 8
  br label %block_.L_48d021

block_.L_48d021:                                  ; preds = %block_.L_48d01c, %block_.L_48ce94
  %4015 = phi i64 [ %4014, %block_.L_48d01c ], [ %3475, %block_.L_48ce94 ]
  %4016 = load i64, i64* bitcast (%G_0x6cc628_type* @G_0x6cc628 to i64*), align 8
  store i64 %4016, i64* %RDI.i1462, align 8
  %4017 = add i64 %4015, 67743
  %4018 = add i64 %4015, 13
  %4019 = load i64, i64* %6, align 8
  %4020 = add i64 %4019, -8
  %4021 = inttoptr i64 %4020 to i64*
  store i64 %4018, i64* %4021, align 8
  store i64 %4020, i64* %6, align 8
  store i64 %4017, i64* %3, align 8
  %call2_48d029 = tail call %struct.Memory* @sub_49d8c0.store_coding_state(%struct.State* nonnull %0, i64 %4017, %struct.Memory* %MEMORY.39)
  %4022 = load i64, i64* %RBP.i, align 8
  %4023 = add i64 %4022, -100
  %4024 = load i64, i64* %3, align 8
  %4025 = add i64 %4024, 4
  store i64 %4025, i64* %3, align 8
  %4026 = inttoptr i64 %4023 to i32*
  %4027 = load i32, i32* %4026, align 4
  store i8 0, i8* %14, align 1
  %4028 = and i32 %4027, 255
  %4029 = tail call i32 @llvm.ctpop.i32(i32 %4028)
  %4030 = trunc i32 %4029 to i8
  %4031 = and i8 %4030, 1
  %4032 = xor i8 %4031, 1
  store i8 %4032, i8* %21, align 1
  store i8 0, i8* %26, align 1
  %4033 = icmp eq i32 %4027, 0
  %4034 = zext i1 %4033 to i8
  store i8 %4034, i8* %29, align 1
  %4035 = lshr i32 %4027, 31
  %4036 = trunc i32 %4035 to i8
  store i8 %4036, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %.v229 = select i1 %4033, i64 214, i64 10
  %4037 = add i64 %4024, %.v229
  store i64 %4037, i64* %3, align 8
  br i1 %4033, label %block_.L_48d104, label %block_48d038

block_48d038:                                     ; preds = %block_.L_48d021
  %4038 = add i64 %4022, -80
  %4039 = add i64 %4037, 4
  store i64 %4039, i64* %3, align 8
  %4040 = inttoptr i64 %4038 to i64*
  %4041 = load i64, i64* %4040, align 8
  store i64 %4041, i64* %RAX.i1567, align 8
  %4042 = add i64 %4041, 72
  %4043 = add i64 %4037, 8
  store i64 %4043, i64* %3, align 8
  %4044 = inttoptr i64 %4042 to i32*
  %4045 = load i32, i32* %4044, align 4
  store i8 0, i8* %14, align 1
  %4046 = and i32 %4045, 255
  %4047 = tail call i32 @llvm.ctpop.i32(i32 %4046)
  %4048 = trunc i32 %4047 to i8
  %4049 = and i8 %4048, 1
  %4050 = xor i8 %4049, 1
  store i8 %4050, i8* %21, align 1
  store i8 0, i8* %26, align 1
  %4051 = icmp eq i32 %4045, 0
  %4052 = zext i1 %4051 to i8
  store i8 %4052, i8* %29, align 1
  %4053 = lshr i32 %4045, 31
  %4054 = trunc i32 %4053 to i8
  store i8 %4054, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %.v230 = select i1 %4051, i64 14, i64 41
  %4055 = add i64 %4037, %.v230
  store i64 %4055, i64* %3, align 8
  br i1 %4051, label %block_48d046, label %block_.L_48d061

block_48d046:                                     ; preds = %block_48d038
  %4056 = add i64 %4022, -92
  %4057 = add i64 %4055, 4
  store i64 %4057, i64* %3, align 8
  %4058 = inttoptr i64 %4056 to i32*
  %4059 = load i32, i32* %4058, align 4
  store i8 0, i8* %14, align 1
  %4060 = and i32 %4059, 255
  %4061 = tail call i32 @llvm.ctpop.i32(i32 %4060)
  %4062 = trunc i32 %4061 to i8
  %4063 = and i8 %4062, 1
  %4064 = xor i8 %4063, 1
  store i8 %4064, i8* %21, align 1
  store i8 0, i8* %26, align 1
  %4065 = icmp eq i32 %4059, 0
  %4066 = zext i1 %4065 to i8
  store i8 %4066, i8* %29, align 1
  %4067 = lshr i32 %4059, 31
  %4068 = trunc i32 %4067 to i8
  store i8 %4068, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %.v237 = select i1 %4065, i64 103, i64 10
  %4069 = add i64 %4055, %.v237
  store i64 %4069, i64* %3, align 8
  br i1 %4065, label %block_.L_48d0ad, label %block_48d050

block_48d050:                                     ; preds = %block_48d046
  %4070 = add i64 %4069, 4
  store i64 %4070, i64* %3, align 8
  %4071 = load i64, i64* %4040, align 8
  store i64 %4071, i64* %RAX.i1567, align 8
  %4072 = add i64 %4071, 460
  %4073 = add i64 %4069, 11
  store i64 %4073, i64* %3, align 8
  %4074 = inttoptr i64 %4072 to i32*
  %4075 = load i32, i32* %4074, align 4
  store i8 0, i8* %14, align 1
  %4076 = and i32 %4075, 255
  %4077 = tail call i32 @llvm.ctpop.i32(i32 %4076)
  %4078 = trunc i32 %4077 to i8
  %4079 = and i8 %4078, 1
  %4080 = xor i8 %4079, 1
  store i8 %4080, i8* %21, align 1
  store i8 0, i8* %26, align 1
  %4081 = icmp eq i32 %4075, 0
  %4082 = zext i1 %4081 to i8
  store i8 %4082, i8* %29, align 1
  %4083 = lshr i32 %4075, 31
  %4084 = trunc i32 %4083 to i8
  store i8 %4084, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %.v238 = select i1 %4081, i64 93, i64 17
  %4085 = add i64 %4069, %.v238
  store i64 %4085, i64* %3, align 8
  br i1 %4081, label %block_.L_48d0ad, label %block_.L_48d061

block_.L_48d061:                                  ; preds = %block_48d038, %block_48d050
  %4086 = phi i64 [ %4085, %block_48d050 ], [ %4055, %block_48d038 ]
  store i64 1, i64* %RDI.i1462, align 8
  %4087 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*), align 8
  store i64 %4087, i64* %RAX.i1567, align 8
  %4088 = add i64 %4087, 120
  %4089 = add i64 %4086, 16
  store i64 %4089, i64* %3, align 8
  %4090 = inttoptr i64 %4088 to i32*
  %4091 = load i32, i32* %4090, align 4
  %4092 = zext i32 %4091 to i64
  store i64 %4092, i64* %RCX.i1514, align 8
  %4093 = add i64 %4022, -96
  %4094 = add i64 %4086, 19
  store i64 %4094, i64* %3, align 8
  %4095 = inttoptr i64 %4093 to i32*
  store i32 %4091, i32* %4095, align 4
  %4096 = load i64, i64* %3, align 8
  %4097 = add i64 %4096, -299284
  %4098 = add i64 %4096, 5
  %4099 = load i64, i64* %6, align 8
  %4100 = add i64 %4099, -8
  %4101 = inttoptr i64 %4100 to i64*
  store i64 %4098, i64* %4101, align 8
  store i64 %4100, i64* %6, align 8
  store i64 %4097, i64* %3, align 8
  %call2_48d074 = tail call %struct.Memory* @sub_443f60.writeMBLayer(%struct.State* nonnull %0, i64 %4097, %struct.Memory* %call2_48d029)
  %4102 = load i64, i64* %RBP.i, align 8
  %4103 = add i64 %4102, -104
  %4104 = load i64, i64* %3, align 8
  store i64 %4103, i64* %RDX.i930, align 8
  %4105 = add i64 %4102, -108
  store i64 %4105, i64* %RCX.i1514, align 8
  %4106 = add i64 %4102, -52
  %4107 = load i32, i32* %EAX.i895, align 4
  %4108 = add i64 %4104, 11
  store i64 %4108, i64* %3, align 8
  %4109 = inttoptr i64 %4106 to i32*
  store i32 %4107, i32* %4109, align 4
  %4110 = load i64, i64* %RBP.i, align 8
  %4111 = add i64 %4110, -96
  %4112 = load i64, i64* %3, align 8
  %4113 = add i64 %4112, 3
  store i64 %4113, i64* %3, align 8
  %4114 = inttoptr i64 %4111 to i32*
  %4115 = load i32, i32* %4114, align 4
  %4116 = zext i32 %4115 to i64
  store i64 %4116, i64* %RDI.i1462, align 8
  %4117 = add i64 %4110, -108
  %4118 = add i64 %4112, 6
  store i64 %4118, i64* %3, align 8
  %4119 = inttoptr i64 %4117 to i32*
  %4120 = load i32, i32* %4119, align 4
  %4121 = zext i32 %4120 to i64
  store i64 %4121, i64* %RSI.i1580, align 8
  %4122 = add i64 %4112, 128636
  %4123 = add i64 %4112, 11
  %4124 = load i64, i64* %6, align 8
  %4125 = add i64 %4124, -8
  %4126 = inttoptr i64 %4125 to i64*
  store i64 %4123, i64* %4126, align 8
  store i64 %4125, i64* %6, align 8
  store i64 %4122, i64* %3, align 8
  %call2_48d08a = tail call %struct.Memory* @sub_4ac700.ue_linfo(%struct.State* nonnull %0, i64 %4122, %struct.Memory* %call2_48d074)
  %4127 = load i64, i64* %RBP.i, align 8
  %4128 = add i64 %4127, -104
  %4129 = load i64, i64* %3, align 8
  %4130 = add i64 %4129, 3
  store i64 %4130, i64* %3, align 8
  %4131 = inttoptr i64 %4128 to i32*
  %4132 = load i32, i32* %4131, align 4
  %4133 = zext i32 %4132 to i64
  store i64 %4133, i64* %RAX.i1567, align 8
  %4134 = add i64 %4127, -52
  %4135 = add i64 %4129, 6
  store i64 %4135, i64* %3, align 8
  %4136 = inttoptr i64 %4134 to i32*
  %4137 = load i32, i32* %4136, align 4
  %4138 = sub i32 %4137, %4132
  %4139 = zext i32 %4138 to i64
  store i64 %4139, i64* %RSI.i1580, align 8
  %4140 = icmp ult i32 %4137, %4132
  %4141 = zext i1 %4140 to i8
  store i8 %4141, i8* %14, align 1
  %4142 = and i32 %4138, 255
  %4143 = tail call i32 @llvm.ctpop.i32(i32 %4142)
  %4144 = trunc i32 %4143 to i8
  %4145 = and i8 %4144, 1
  %4146 = xor i8 %4145, 1
  store i8 %4146, i8* %21, align 1
  %4147 = xor i32 %4132, %4137
  %4148 = xor i32 %4147, %4138
  %4149 = lshr i32 %4148, 4
  %4150 = trunc i32 %4149 to i8
  %4151 = and i8 %4150, 1
  store i8 %4151, i8* %26, align 1
  %4152 = icmp eq i32 %4138, 0
  %4153 = zext i1 %4152 to i8
  store i8 %4153, i8* %29, align 1
  %4154 = lshr i32 %4138, 31
  %4155 = trunc i32 %4154 to i8
  store i8 %4155, i8* %32, align 1
  %4156 = lshr i32 %4137, 31
  %4157 = lshr i32 %4132, 31
  %4158 = xor i32 %4157, %4156
  %4159 = xor i32 %4154, %4156
  %4160 = add nuw nsw i32 %4159, %4158
  %4161 = icmp eq i32 %4160, 2
  %4162 = zext i1 %4161 to i8
  store i8 %4162, i8* %38, align 1
  %4163 = add i64 %4129, 11
  store i64 %4163, i64* %3, align 8
  store i32 %4138, i32* %4136, align 4
  %4164 = load i64, i64* %RBP.i, align 8
  %4165 = add i64 %4164, -96
  %4166 = load i64, i64* %3, align 8
  %4167 = add i64 %4166, 3
  store i64 %4167, i64* %3, align 8
  %4168 = inttoptr i64 %4165 to i32*
  %4169 = load i32, i32* %4168, align 4
  %4170 = zext i32 %4169 to i64
  store i64 %4170, i64* %RAX.i1567, align 8
  %4171 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*), align 8
  store i64 %4171, i64* %RCX.i1514, align 8
  %4172 = add i64 %4171, 120
  %4173 = add i64 %4166, 14
  store i64 %4173, i64* %3, align 8
  %4174 = inttoptr i64 %4172 to i32*
  store i32 %4169, i32* %4174, align 4
  %4175 = load i64, i64* %3, align 8
  %4176 = add i64 %4175, 87
  store i64 %4176, i64* %3, align 8
  br label %block_.L_48d0ff

block_.L_48d0ad:                                  ; preds = %block_48d050, %block_48d046
  %4177 = phi i64 [ %4085, %block_48d050 ], [ %4069, %block_48d046 ]
  %4178 = add i64 %4022, -52
  store i64 %4178, i64* %RDX.i930, align 8
  %4179 = add i64 %4022, -108
  store i64 %4179, i64* %RCX.i1514, align 8
  %4180 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*), align 8
  store i64 %4180, i64* %RAX.i1567, align 8
  %4181 = add i64 %4180, 120
  %4182 = add i64 %4177, 19
  store i64 %4182, i64* %3, align 8
  %4183 = inttoptr i64 %4181 to i32*
  %4184 = load i32, i32* %4183, align 4
  %4185 = add i32 %4184, 1
  %4186 = zext i32 %4185 to i64
  store i64 %4186, i64* %RSI.i1580, align 8
  %4187 = icmp eq i32 %4184, -1
  %4188 = icmp eq i32 %4185, 0
  %4189 = or i1 %4187, %4188
  %4190 = zext i1 %4189 to i8
  store i8 %4190, i8* %14, align 1
  %4191 = and i32 %4185, 255
  %4192 = tail call i32 @llvm.ctpop.i32(i32 %4191)
  %4193 = trunc i32 %4192 to i8
  %4194 = and i8 %4193, 1
  %4195 = xor i8 %4194, 1
  store i8 %4195, i8* %21, align 1
  %4196 = xor i32 %4185, %4184
  %4197 = lshr i32 %4196, 4
  %4198 = trunc i32 %4197 to i8
  %4199 = and i8 %4198, 1
  store i8 %4199, i8* %26, align 1
  %4200 = zext i1 %4188 to i8
  store i8 %4200, i8* %29, align 1
  %4201 = lshr i32 %4185, 31
  %4202 = trunc i32 %4201 to i8
  store i8 %4202, i8* %32, align 1
  %4203 = lshr i32 %4184, 31
  %4204 = xor i32 %4201, %4203
  %4205 = add nuw nsw i32 %4204, %4201
  %4206 = icmp eq i32 %4205, 2
  %4207 = zext i1 %4206 to i8
  store i8 %4207, i8* %38, align 1
  %4208 = add i64 %4177, 25
  store i64 %4208, i64* %3, align 8
  %4209 = inttoptr i64 %4179 to i32*
  %4210 = load i32, i32* %4209, align 4
  %4211 = add i64 %4022, -156
  %4212 = add i64 %4177, 31
  store i64 %4212, i64* %3, align 8
  %4213 = inttoptr i64 %4211 to i32*
  store i32 %4210, i32* %4213, align 4
  %4214 = load i32, i32* %ESI.i903, align 4
  %4215 = zext i32 %4214 to i64
  %4216 = load i64, i64* %3, align 8
  store i64 %4215, i64* %RDI.i1462, align 8
  %4217 = load i64, i64* %RBP.i, align 8
  %4218 = add i64 %4217, -156
  %4219 = add i64 %4216, 8
  store i64 %4219, i64* %3, align 8
  %4220 = inttoptr i64 %4218 to i32*
  %4221 = load i32, i32* %4220, align 4
  %4222 = zext i32 %4221 to i64
  store i64 %4222, i64* %RSI.i1580, align 8
  %4223 = add i64 %4216, 128564
  %4224 = add i64 %4216, 13
  %4225 = load i64, i64* %6, align 8
  %4226 = add i64 %4225, -8
  %4227 = inttoptr i64 %4226 to i64*
  store i64 %4224, i64* %4227, align 8
  store i64 %4226, i64* %6, align 8
  store i64 %4223, i64* %3, align 8
  %call2_48d0d4 = tail call %struct.Memory* @sub_4ac700.ue_linfo(%struct.State* nonnull %0, i64 %4223, %struct.Memory* %call2_48d029)
  %4228 = load i64, i64* %RBP.i, align 8
  %4229 = add i64 %4228, -104
  %4230 = load i64, i64* %3, align 8
  store i64 %4229, i64* %RDX.i930, align 8
  %4231 = add i64 %4228, -108
  store i64 %4231, i64* %RCX.i1514, align 8
  %4232 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*), align 8
  store i64 %4232, i64* %RAX.i1567, align 8
  %4233 = add i64 %4232, 120
  %4234 = add i64 %4230, 19
  store i64 %4234, i64* %3, align 8
  %4235 = inttoptr i64 %4233 to i32*
  %4236 = load i32, i32* %4235, align 4
  %4237 = zext i32 %4236 to i64
  store i64 %4237, i64* %RDI.i1462, align 8
  %4238 = add i64 %4230, 22
  store i64 %4238, i64* %3, align 8
  %4239 = inttoptr i64 %4231 to i32*
  %4240 = load i32, i32* %4239, align 4
  %4241 = zext i32 %4240 to i64
  store i64 %4241, i64* %RSI.i1580, align 8
  %4242 = add i64 %4230, 128551
  %4243 = add i64 %4230, 27
  %4244 = load i64, i64* %6, align 8
  %4245 = add i64 %4244, -8
  %4246 = inttoptr i64 %4245 to i64*
  store i64 %4243, i64* %4246, align 8
  store i64 %4245, i64* %6, align 8
  store i64 %4242, i64* %3, align 8
  %call2_48d0ef = tail call %struct.Memory* @sub_4ac700.ue_linfo(%struct.State* nonnull %0, i64 %4242, %struct.Memory* %call2_48d0d4)
  %4247 = load i64, i64* %RBP.i, align 8
  %4248 = add i64 %4247, -104
  %4249 = load i64, i64* %3, align 8
  %4250 = add i64 %4249, 3
  store i64 %4250, i64* %3, align 8
  %4251 = inttoptr i64 %4248 to i32*
  %4252 = load i32, i32* %4251, align 4
  %4253 = zext i32 %4252 to i64
  store i64 %4253, i64* %RSI.i1580, align 8
  %4254 = add i64 %4247, -52
  %4255 = add i64 %4249, 6
  store i64 %4255, i64* %3, align 8
  %4256 = inttoptr i64 %4254 to i32*
  %4257 = load i32, i32* %4256, align 4
  %4258 = sub i32 %4257, %4252
  %4259 = zext i32 %4258 to i64
  store i64 %4259, i64* %RDI.i1462, align 8
  %4260 = icmp ult i32 %4257, %4252
  %4261 = zext i1 %4260 to i8
  store i8 %4261, i8* %14, align 1
  %4262 = and i32 %4258, 255
  %4263 = tail call i32 @llvm.ctpop.i32(i32 %4262)
  %4264 = trunc i32 %4263 to i8
  %4265 = and i8 %4264, 1
  %4266 = xor i8 %4265, 1
  store i8 %4266, i8* %21, align 1
  %4267 = xor i32 %4252, %4257
  %4268 = xor i32 %4267, %4258
  %4269 = lshr i32 %4268, 4
  %4270 = trunc i32 %4269 to i8
  %4271 = and i8 %4270, 1
  store i8 %4271, i8* %26, align 1
  %4272 = icmp eq i32 %4258, 0
  %4273 = zext i1 %4272 to i8
  store i8 %4273, i8* %29, align 1
  %4274 = lshr i32 %4258, 31
  %4275 = trunc i32 %4274 to i8
  store i8 %4275, i8* %32, align 1
  %4276 = lshr i32 %4257, 31
  %4277 = lshr i32 %4252, 31
  %4278 = xor i32 %4277, %4276
  %4279 = xor i32 %4274, %4276
  %4280 = add nuw nsw i32 %4279, %4278
  %4281 = icmp eq i32 %4280, 2
  %4282 = zext i1 %4281 to i8
  store i8 %4282, i8* %38, align 1
  %4283 = add i64 %4249, 11
  store i64 %4283, i64* %3, align 8
  store i32 %4258, i32* %4256, align 4
  %.pre179 = load i64, i64* %3, align 8
  br label %block_.L_48d0ff

block_.L_48d0ff:                                  ; preds = %block_.L_48d0ad, %block_.L_48d061
  %4284 = phi i64 [ %4176, %block_.L_48d061 ], [ %.pre179, %block_.L_48d0ad ]
  %MEMORY.45 = phi %struct.Memory* [ %call2_48d08a, %block_.L_48d061 ], [ %call2_48d0ef, %block_.L_48d0ad ]
  %4285 = add i64 %4284, 18
  store i64 %4285, i64* %3, align 8
  br label %block_.L_48d111

block_.L_48d104:                                  ; preds = %block_.L_48d021
  store i64 1, i64* %RDI.i1462, align 8
  %4286 = add i64 %4037, -299428
  %4287 = add i64 %4037, 10
  %4288 = load i64, i64* %6, align 8
  %4289 = add i64 %4288, -8
  %4290 = inttoptr i64 %4289 to i64*
  store i64 %4287, i64* %4290, align 8
  store i64 %4289, i64* %6, align 8
  store i64 %4286, i64* %3, align 8
  %call2_48d109 = tail call %struct.Memory* @sub_443f60.writeMBLayer(%struct.State* nonnull %0, i64 %4286, %struct.Memory* %call2_48d029)
  %4291 = load i64, i64* %RBP.i, align 8
  %4292 = add i64 %4291, -52
  %4293 = load i32, i32* %EAX.i895, align 4
  %4294 = load i64, i64* %3, align 8
  %4295 = add i64 %4294, 3
  store i64 %4295, i64* %3, align 8
  %4296 = inttoptr i64 %4292 to i32*
  store i32 %4293, i32* %4296, align 4
  %.pre180 = load i64, i64* %3, align 8
  br label %block_.L_48d111

block_.L_48d111:                                  ; preds = %block_.L_48d104, %block_.L_48d0ff
  %4297 = phi i64 [ %.pre180, %block_.L_48d104 ], [ %4285, %block_.L_48d0ff ]
  %MEMORY.46 = phi %struct.Memory* [ %call2_48d109, %block_.L_48d104 ], [ %MEMORY.45, %block_.L_48d0ff ]
  %4298 = load i64, i64* bitcast (%G_0x6cc628_type* @G_0x6cc628 to i64*), align 8
  store i64 %4298, i64* %RDI.i1462, align 8
  %4299 = add i64 %4297, 68335
  %4300 = add i64 %4297, 13
  %4301 = load i64, i64* %6, align 8
  %4302 = add i64 %4301, -8
  %4303 = inttoptr i64 %4302 to i64*
  store i64 %4300, i64* %4303, align 8
  store i64 %4302, i64* %6, align 8
  store i64 %4299, i64* %3, align 8
  %call2_48d119 = tail call %struct.Memory* @sub_49dc00.reset_coding_state(%struct.State* nonnull %0, i64 %4299, %struct.Memory* %MEMORY.46)
  %4304 = load i64, i64* %3, align 8
  %4305 = add i64 %4304, ptrtoint (%G_0x24762__rip__type* @G_0x24762__rip_ to i64)
  %4306 = add i64 %4304, 8
  store i64 %4306, i64* %3, align 8
  %4307 = inttoptr i64 %4305 to i64*
  %4308 = load i64, i64* %4307, align 8
  store i64 %4308, i64* %43, align 1
  %4309 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 1
  %4310 = bitcast i64* %4309 to double*
  store double 0.000000e+00, double* %4310, align 1
  %4311 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1
  %4312 = load i64, i64* %RBP.i, align 8
  %4313 = add i64 %4312, -64
  %4314 = add i64 %4304, 14
  store i64 %4314, i64* %3, align 8
  %4315 = inttoptr i64 %4313 to i64*
  %4316 = load i64, i64* %4315, align 8
  %4317 = sitofp i64 %4316 to double
  %4318 = bitcast %union.VectorReg* %4311 to double*
  store double %4317, double* %4318, align 1
  %4319 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 2
  %4320 = add i64 %4312, -16
  %4321 = add i64 %4304, 19
  store i64 %4321, i64* %3, align 8
  %4322 = inttoptr i64 %4320 to i64*
  %4323 = load i64, i64* %4322, align 8
  %4324 = bitcast %union.VectorReg* %4319 to double*
  %4325 = getelementptr inbounds %union.VectorReg, %union.VectorReg* %4319, i64 0, i32 0, i32 0, i32 0, i64 0
  store i64 %4323, i64* %4325, align 1
  %4326 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 2, i32 0, i32 0, i32 0, i64 1
  %4327 = bitcast i64* %4326 to double*
  store double 0.000000e+00, double* %4327, align 1
  %4328 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 3
  %4329 = add i64 %4312, -52
  %4330 = add i64 %4304, 24
  store i64 %4330, i64* %3, align 8
  %4331 = inttoptr i64 %4329 to i32*
  %4332 = load i32, i32* %4331, align 4
  %4333 = sitofp i32 %4332 to double
  %4334 = bitcast %union.VectorReg* %4328 to double*
  store double %4333, double* %4334, align 1
  %4335 = add i64 %4304, 28
  store i64 %4335, i64* %3, align 8
  %4336 = bitcast i64 %4308 to double
  %4337 = fcmp uno double %4336, %4333
  br i1 %4337, label %4338, label %4348

; <label>:4338:                                   ; preds = %block_.L_48d111
  %4339 = fadd double %4333, %4336
  %4340 = bitcast double %4339 to i64
  %4341 = and i64 %4340, 9221120237041090560
  %4342 = icmp eq i64 %4341, 9218868437227405312
  %4343 = and i64 %4340, 2251799813685247
  %4344 = icmp ne i64 %4343, 0
  %4345 = and i1 %4342, %4344
  br i1 %4345, label %4346, label %4354

; <label>:4346:                                   ; preds = %4338
  %4347 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %4335, %struct.Memory* %call2_48d119)
  %.pre181 = load i64, i64* %RBP.i, align 8
  %.pre182 = load i64, i64* %3, align 8
  %.pre183 = load i64, i64* %4325, align 1
  br label %routine_ucomisd__xmm3___xmm0.exit

; <label>:4348:                                   ; preds = %block_.L_48d111
  %4349 = fcmp ogt double %4336, %4333
  br i1 %4349, label %4354, label %4350

; <label>:4350:                                   ; preds = %4348
  %4351 = fcmp olt double %4336, %4333
  br i1 %4351, label %4354, label %4352

; <label>:4352:                                   ; preds = %4350
  %4353 = fcmp oeq double %4336, %4333
  br i1 %4353, label %4354, label %4358

; <label>:4354:                                   ; preds = %4352, %4350, %4348, %4338
  %4355 = phi i8 [ 0, %4348 ], [ 0, %4350 ], [ 1, %4352 ], [ 1, %4338 ]
  %4356 = phi i8 [ 0, %4348 ], [ 0, %4350 ], [ 0, %4352 ], [ 1, %4338 ]
  %4357 = phi i8 [ 0, %4348 ], [ 1, %4350 ], [ 0, %4352 ], [ 1, %4338 ]
  store i8 %4355, i8* %29, align 1
  store i8 %4356, i8* %21, align 1
  store i8 %4357, i8* %14, align 1
  br label %4358

; <label>:4358:                                   ; preds = %4354, %4352
  store i8 0, i8* %38, align 1
  store i8 0, i8* %32, align 1
  store i8 0, i8* %26, align 1
  br label %routine_ucomisd__xmm3___xmm0.exit

routine_ucomisd__xmm3___xmm0.exit:                ; preds = %4358, %4346
  %4359 = phi i64 [ %.pre183, %4346 ], [ %4323, %4358 ]
  %4360 = phi i64 [ %.pre182, %4346 ], [ %4335, %4358 ]
  %4361 = phi i64 [ %.pre181, %4346 ], [ %4312, %4358 ]
  %4362 = phi %struct.Memory* [ %4347, %4346 ], [ %call2_48d119, %4358 ]
  %4363 = add i64 %4361, -168
  %4364 = add i64 %4360, 8
  store i64 %4364, i64* %3, align 8
  %4365 = inttoptr i64 %4363 to i64*
  store i64 %4359, i64* %4365, align 8
  %4366 = load i64, i64* %RBP.i, align 8
  %4367 = add i64 %4366, -176
  %4368 = load i64, i64* %3, align 8
  %4369 = add i64 %4368, 8
  store i64 %4369, i64* %3, align 8
  %4370 = getelementptr inbounds %union.VectorReg, %union.VectorReg* %4311, i64 0, i32 0, i32 0, i32 0, i64 0
  %4371 = load i64, i64* %4370, align 1
  %4372 = inttoptr i64 %4367 to i64*
  store i64 %4371, i64* %4372, align 8
  %4373 = load i64, i64* %3, align 8
  %4374 = load i8, i8* %14, align 1
  %4375 = load i8, i8* %29, align 1
  %4376 = or i8 %4375, %4374
  %4377 = icmp ne i8 %4376, 0
  %.v302 = select i1 %4377, i64 27, i64 6
  %4378 = add i64 %4373, %.v302
  store i64 %4378, i64* %3, align 8
  br i1 %4377, label %block_.L_48d165, label %block_48d150

block_48d150:                                     ; preds = %routine_ucomisd__xmm3___xmm0.exit
  %4379 = add i64 %4378, ptrtoint (%G_0x24730__rip__type* @G_0x24730__rip_ to i64)
  %4380 = add i64 %4378, 8
  store i64 %4380, i64* %3, align 8
  %4381 = inttoptr i64 %4379 to i64*
  %4382 = load i64, i64* %4381, align 8
  store i64 %4382, i64* %43, align 1
  store double 0.000000e+00, double* %4310, align 1
  %4383 = load i64, i64* %RBP.i, align 8
  %4384 = add i64 %4383, -184
  %4385 = add i64 %4378, 16
  store i64 %4385, i64* %3, align 8
  %4386 = inttoptr i64 %4384 to i64*
  store i64 %4382, i64* %4386, align 8
  %4387 = load i64, i64* %3, align 8
  %4388 = add i64 %4387, 18
  store i64 %4388, i64* %3, align 8
  br label %block_.L_48d172

block_.L_48d165:                                  ; preds = %routine_ucomisd__xmm3___xmm0.exit
  %4389 = load i64, i64* %RBP.i, align 8
  %4390 = add i64 %4389, -52
  %4391 = add i64 %4378, 5
  store i64 %4391, i64* %3, align 8
  %4392 = inttoptr i64 %4390 to i32*
  %4393 = load i32, i32* %4392, align 4
  %4394 = sitofp i32 %4393 to double
  store double %4394, double* %42, align 1
  %4395 = add i64 %4389, -184
  %4396 = add i64 %4378, 13
  store i64 %4396, i64* %3, align 8
  %4397 = inttoptr i64 %4395 to double*
  store double %4394, double* %4397, align 8
  %.pre184 = load i64, i64* %3, align 8
  br label %block_.L_48d172

block_.L_48d172:                                  ; preds = %block_.L_48d165, %block_48d150
  %4398 = phi i64 [ %.pre184, %block_.L_48d165 ], [ %4388, %block_48d150 ]
  %4399 = load i64, i64* %RBP.i, align 8
  %4400 = add i64 %4399, -184
  %4401 = add i64 %4398, 8
  store i64 %4401, i64* %3, align 8
  %4402 = inttoptr i64 %4400 to i64*
  %4403 = load i64, i64* %4402, align 8
  store i64 %4403, i64* %43, align 1
  store double 0.000000e+00, double* %4310, align 1
  %4404 = add i64 %4398, add (i64 ptrtoint (%G_0x2483e__rip__type* @G_0x2483e__rip_ to i64), i64 8)
  %4405 = add i64 %4398, 16
  store i64 %4405, i64* %3, align 8
  %4406 = inttoptr i64 %4404 to i64*
  %4407 = load i64, i64* %4406, align 8
  store i64 %4407, i64* %4370, align 1
  %4408 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1, i32 0, i32 0, i32 0, i64 1
  %4409 = bitcast i64* %4408 to double*
  store double 0.000000e+00, double* %4409, align 1
  %4410 = add i64 %4399, -168
  %4411 = add i64 %4398, 24
  store i64 %4411, i64* %3, align 8
  %4412 = inttoptr i64 %4410 to double*
  %4413 = load double, double* %4412, align 8
  %4414 = bitcast i64 %4403 to double
  %4415 = fmul double %4413, %4414
  store double %4415, double* %4324, align 1
  store i64 0, i64* %4326, align 1
  %4416 = add i64 %4399, -176
  %4417 = add i64 %4398, 36
  store i64 %4417, i64* %3, align 8
  %4418 = inttoptr i64 %4416 to double*
  %4419 = load double, double* %4418, align 8
  %4420 = fadd double %4419, %4415
  store double %4420, double* %42, align 1
  store i64 0, i64* %4309, align 1
  %4421 = add i64 %4399, -72
  %4422 = add i64 %4398, 45
  store i64 %4422, i64* %3, align 8
  %4423 = inttoptr i64 %4421 to double*
  store double %4420, double* %4423, align 8
  %4424 = load i64, i64* %RBP.i, align 8
  %4425 = add i64 %4424, -72
  %4426 = load i64, i64* %3, align 8
  %4427 = add i64 %4426, 5
  store i64 %4427, i64* %3, align 8
  %4428 = inttoptr i64 %4425 to i64*
  %4429 = load i64, i64* %4428, align 8
  store i64 %4429, i64* %43, align 1
  store double 0.000000e+00, double* %4310, align 1
  %4430 = add i64 %4424, -32
  %4431 = add i64 %4426, 9
  store i64 %4431, i64* %3, align 8
  %4432 = inttoptr i64 %4430 to i64*
  %4433 = load i64, i64* %4432, align 8
  store i64 %4433, i64* %RAX.i1567, align 8
  %4434 = add i64 %4426, 13
  store i64 %4434, i64* %3, align 8
  %4435 = bitcast i64 %4429 to double
  %4436 = inttoptr i64 %4433 to double*
  %4437 = load double, double* %4436, align 8
  %4438 = fsub double %4435, %4437
  store double %4438, double* %42, align 1
  store i64 0, i64* %4309, align 1
  %4439 = add i64 %4426, 17
  store i64 %4439, i64* %3, align 8
  %4440 = load double, double* %4318, align 1
  %4441 = fcmp uno double %4438, %4440
  br i1 %4441, label %4442, label %4452

; <label>:4442:                                   ; preds = %block_.L_48d172
  %4443 = fadd double %4438, %4440
  %4444 = bitcast double %4443 to i64
  %4445 = and i64 %4444, 9221120237041090560
  %4446 = icmp eq i64 %4445, 9218868437227405312
  %4447 = and i64 %4444, 2251799813685247
  %4448 = icmp ne i64 %4447, 0
  %4449 = and i1 %4446, %4448
  br i1 %4449, label %4450, label %4458

; <label>:4450:                                   ; preds = %4442
  %4451 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %4439, %struct.Memory* %4362)
  %.pre185 = load i64, i64* %3, align 8
  br label %routine_ucomisd__xmm1___xmm0.exit

; <label>:4452:                                   ; preds = %block_.L_48d172
  %4453 = fcmp ogt double %4438, %4440
  br i1 %4453, label %4458, label %4454

; <label>:4454:                                   ; preds = %4452
  %4455 = fcmp olt double %4438, %4440
  br i1 %4455, label %4458, label %4456

; <label>:4456:                                   ; preds = %4454
  %4457 = fcmp oeq double %4438, %4440
  br i1 %4457, label %4458, label %4462

; <label>:4458:                                   ; preds = %4456, %4454, %4452, %4442
  %4459 = phi i8 [ 0, %4452 ], [ 0, %4454 ], [ 1, %4456 ], [ 1, %4442 ]
  %4460 = phi i8 [ 0, %4452 ], [ 0, %4454 ], [ 0, %4456 ], [ 1, %4442 ]
  %4461 = phi i8 [ 0, %4452 ], [ 1, %4454 ], [ 0, %4456 ], [ 1, %4442 ]
  store i8 %4459, i8* %29, align 1
  store i8 %4460, i8* %21, align 1
  store i8 %4461, i8* %14, align 1
  br label %4462

; <label>:4462:                                   ; preds = %4458, %4456
  store i8 0, i8* %38, align 1
  store i8 0, i8* %32, align 1
  store i8 0, i8* %26, align 1
  br label %routine_ucomisd__xmm1___xmm0.exit

routine_ucomisd__xmm1___xmm0.exit:                ; preds = %4462, %4450
  %4463 = phi i64 [ %.pre185, %4450 ], [ %4439, %4462 ]
  %4464 = phi %struct.Memory* [ %4451, %4450 ], [ %4362, %4462 ]
  %4465 = add i64 %4463, 72
  %4466 = add i64 %4463, 6
  %4467 = load i8, i8* %14, align 1
  %4468 = icmp eq i8 %4467, 0
  %4469 = select i1 %4468, i64 %4465, i64 %4466
  store i64 %4469, i64* %3, align 8
  br i1 %4468, label %routine_ucomisd__xmm1___xmm0.exit.block_.L_48d1f8_crit_edge, label %block_48d1b6

routine_ucomisd__xmm1___xmm0.exit.block_.L_48d1f8_crit_edge: ; preds = %routine_ucomisd__xmm1___xmm0.exit
  %.pre188 = load i64, i64* %RBP.i, align 8
  br label %block_.L_48d1f8

block_48d1b6:                                     ; preds = %routine_ucomisd__xmm1___xmm0.exit
  %4470 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*), align 8
  store i64 %4470, i64* %RAX.i1567, align 8
  %4471 = add i64 %4470, 40
  %4472 = add i64 %4469, 11
  store i64 %4472, i64* %3, align 8
  %4473 = inttoptr i64 %4471 to i32*
  %4474 = load i32, i32* %4473, align 4
  %4475 = zext i32 %4474 to i64
  store i64 %4475, i64* %RCX.i1514, align 8
  store i64 %4470, i64* %RAX.i1567, align 8
  %4476 = add i64 %4470, 72668
  %4477 = add i64 %4469, 25
  store i64 %4477, i64* %3, align 8
  %4478 = inttoptr i64 %4476 to i32*
  %4479 = load i32, i32* %4478, align 4
  %4480 = add i32 %4479, %4474
  %4481 = zext i32 %4480 to i64
  store i64 %4481, i64* %RCX.i1514, align 8
  %4482 = and i32 %4480, 255
  %4483 = tail call i32 @llvm.ctpop.i32(i32 %4482)
  %4484 = trunc i32 %4483 to i8
  %4485 = and i8 %4484, 1
  %4486 = xor i8 %4485, 1
  %4487 = icmp eq i32 %4480, 0
  %4488 = zext i1 %4487 to i8
  %4489 = lshr i32 %4480, 31
  %4490 = trunc i32 %4489 to i8
  store i8 0, i8* %14, align 1
  store i8 %4486, i8* %21, align 1
  store i8 0, i8* %26, align 1
  store i8 %4488, i8* %29, align 1
  store i8 %4490, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %.v231 = select i1 %4487, i64 34, i64 78
  %4491 = add i64 %4469, %.v231
  store i64 %4491, i64* %3, align 8
  br i1 %4487, label %block_48d1d8, label %block_.L_48d204

block_48d1d8:                                     ; preds = %block_48d1b6
  store i64 %4470, i64* %RAX.i1567, align 8
  %4492 = add i64 %4470, 72704
  %4493 = add i64 %4491, 15
  store i64 %4493, i64* %3, align 8
  %4494 = inttoptr i64 %4492 to i32*
  %4495 = load i32, i32* %4494, align 4
  %4496 = add i32 %4495, -1
  %4497 = icmp eq i32 %4495, 0
  %4498 = zext i1 %4497 to i8
  store i8 %4498, i8* %14, align 1
  %4499 = and i32 %4496, 255
  %4500 = tail call i32 @llvm.ctpop.i32(i32 %4499)
  %4501 = trunc i32 %4500 to i8
  %4502 = and i8 %4501, 1
  %4503 = xor i8 %4502, 1
  store i8 %4503, i8* %21, align 1
  %4504 = xor i32 %4496, %4495
  %4505 = lshr i32 %4504, 4
  %4506 = trunc i32 %4505 to i8
  %4507 = and i8 %4506, 1
  store i8 %4507, i8* %26, align 1
  %4508 = icmp eq i32 %4496, 0
  %4509 = zext i1 %4508 to i8
  store i8 %4509, i8* %29, align 1
  %4510 = lshr i32 %4496, 31
  %4511 = trunc i32 %4510 to i8
  store i8 %4511, i8* %32, align 1
  %4512 = lshr i32 %4495, 31
  %4513 = xor i32 %4510, %4512
  %4514 = add nuw nsw i32 %4513, %4512
  %4515 = icmp eq i32 %4514, 2
  %4516 = zext i1 %4515 to i8
  store i8 %4516, i8* %38, align 1
  %.v235 = select i1 %4508, i64 21, i64 44
  %4517 = add i64 %4491, %.v235
  store i64 %4517, i64* %3, align 8
  br i1 %4508, label %block_48d1ed, label %block_.L_48d204

block_48d1ed:                                     ; preds = %block_48d1d8
  %4518 = load i64, i64* %RBP.i, align 8
  %4519 = add i64 %4518, -64
  %4520 = add i64 %4517, 5
  store i64 %4520, i64* %3, align 8
  %4521 = inttoptr i64 %4519 to i64*
  %4522 = load i64, i64* %4521, align 8
  store i8 0, i8* %14, align 1
  %4523 = trunc i64 %4522 to i32
  %4524 = and i32 %4523, 255
  %4525 = tail call i32 @llvm.ctpop.i32(i32 %4524)
  %4526 = trunc i32 %4525 to i8
  %4527 = and i8 %4526, 1
  %4528 = xor i8 %4527, 1
  store i8 %4528, i8* %21, align 1
  store i8 0, i8* %26, align 1
  %4529 = icmp eq i64 %4522, 0
  %4530 = zext i1 %4529 to i8
  store i8 %4530, i8* %29, align 1
  %4531 = lshr i64 %4522, 63
  %4532 = trunc i64 %4531 to i8
  store i8 %4532, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %.v236 = select i1 %4529, i64 23, i64 11
  %4533 = add i64 %4517, %.v236
  store i64 %4533, i64* %3, align 8
  br i1 %4529, label %block_.L_48d204, label %block_.L_48d1f8

block_.L_48d1f8:                                  ; preds = %routine_ucomisd__xmm1___xmm0.exit.block_.L_48d1f8_crit_edge, %block_48d1ed
  %4534 = phi i64 [ %4465, %routine_ucomisd__xmm1___xmm0.exit.block_.L_48d1f8_crit_edge ], [ %4533, %block_48d1ed ]
  %4535 = phi i64 [ %.pre188, %routine_ucomisd__xmm1___xmm0.exit.block_.L_48d1f8_crit_edge ], [ %4518, %block_48d1ed ]
  %4536 = add i64 %4535, -4
  %4537 = add i64 %4534, 7
  store i64 %4537, i64* %3, align 8
  %4538 = inttoptr i64 %4536 to i32*
  store i32 0, i32* %4538, align 4
  %4539 = load i64, i64* %3, align 8
  %4540 = add i64 %4539, 306
  store i64 %4540, i64* %3, align 8
  br label %block_.L_48d331

block_.L_48d204:                                  ; preds = %block_48d1d8, %block_48d1b6, %block_48d1ed
  %4541 = phi i64 [ %4533, %block_48d1ed ], [ %4517, %block_48d1d8 ], [ %4491, %block_48d1b6 ]
  store i64 %4470, i64* %RAX.i1567, align 8
  %4542 = add i64 %4470, 72400
  %4543 = add i64 %4541, 15
  store i64 %4543, i64* %3, align 8
  %4544 = inttoptr i64 %4542 to i32*
  %4545 = load i32, i32* %4544, align 4
  store i8 0, i8* %14, align 1
  %4546 = and i32 %4545, 255
  %4547 = tail call i32 @llvm.ctpop.i32(i32 %4546)
  %4548 = trunc i32 %4547 to i8
  %4549 = and i8 %4548, 1
  %4550 = xor i8 %4549, 1
  store i8 %4550, i8* %21, align 1
  store i8 0, i8* %26, align 1
  %4551 = icmp eq i32 %4545, 0
  %4552 = zext i1 %4551 to i8
  store i8 %4552, i8* %29, align 1
  %4553 = lshr i32 %4545, 31
  %4554 = trunc i32 %4553 to i8
  store i8 %4554, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %.v194 = select i1 %4551, i64 281, i64 21
  %4555 = add i64 %4541, %.v194
  store i64 %4555, i64* %3, align 8
  br i1 %4551, label %block_.L_48d31d, label %block_48d219

block_48d219:                                     ; preds = %block_.L_48d204
  %4556 = load i64, i64* %RBP.i, align 8
  %4557 = add i64 %4556, -20
  %4558 = add i64 %4555, 4
  store i64 %4558, i64* %3, align 8
  %4559 = inttoptr i64 %4557 to i32*
  %4560 = load i32, i32* %4559, align 4
  store i8 0, i8* %14, align 1
  %4561 = and i32 %4560, 255
  %4562 = tail call i32 @llvm.ctpop.i32(i32 %4561)
  %4563 = trunc i32 %4562 to i8
  %4564 = and i8 %4563, 1
  %4565 = xor i8 %4564, 1
  store i8 %4565, i8* %21, align 1
  store i8 0, i8* %26, align 1
  %4566 = icmp eq i32 %4560, 0
  %4567 = zext i1 %4566 to i8
  store i8 %4567, i8* %29, align 1
  %4568 = lshr i32 %4560, 31
  %4569 = trunc i32 %4568 to i8
  store i8 %4569, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %.v193 = select i1 %4566, i64 28, i64 10
  %4570 = add i64 %4555, %.v193
  store i64 %4570, i64* %3, align 8
  br i1 %4566, label %block_.L_48d235, label %block_48d230

block_48d230:                                     ; preds = %block_48d219
  store i64 0, i64* %RAX.i1567, align 8
  store i8 0, i8* %CL.i1510, align 1
  store i8 0, i8* %14, align 1
  store i8 1, i8* %21, align 1
  store i8 1, i8* %29, align 1
  store i8 0, i8* %32, align 1
  store i8 0, i8* %38, align 1
  store i8 0, i8* %26, align 1
  %4571 = add i64 %4570, 250
  store i64 %4571, i64* %3, align 8
  br label %block_.L_48d31d

block_.L_48d235:                                  ; preds = %block_48d219
  store i64 %4470, i64* %RAX.i1567, align 8
  %4572 = add i64 %4470, 24
  %4573 = add i64 %4570, 12
  store i64 %4573, i64* %3, align 8
  %4574 = inttoptr i64 %4572 to i32*
  %4575 = load i32, i32* %4574, align 4
  %4576 = add i32 %4575, -1
  %4577 = icmp eq i32 %4575, 0
  %4578 = zext i1 %4577 to i8
  store i8 %4578, i8* %14, align 1
  %4579 = and i32 %4576, 255
  %4580 = tail call i32 @llvm.ctpop.i32(i32 %4579)
  %4581 = trunc i32 %4580 to i8
  %4582 = and i8 %4581, 1
  %4583 = xor i8 %4582, 1
  store i8 %4583, i8* %21, align 1
  %4584 = xor i32 %4576, %4575
  %4585 = lshr i32 %4584, 4
  %4586 = trunc i32 %4585 to i8
  %4587 = and i8 %4586, 1
  store i8 %4587, i8* %26, align 1
  %4588 = icmp eq i32 %4576, 0
  %4589 = zext i1 %4588 to i8
  store i8 %4589, i8* %29, align 1
  %4590 = lshr i32 %4576, 31
  %4591 = trunc i32 %4590 to i8
  store i8 %4591, i8* %32, align 1
  %4592 = lshr i32 %4575, 31
  %4593 = xor i32 %4590, %4592
  %4594 = add nuw nsw i32 %4593, %4592
  %4595 = icmp eq i32 %4594, 2
  %4596 = zext i1 %4595 to i8
  store i8 %4596, i8* %38, align 1
  %.v198 = select i1 %4588, i64 18, i64 40
  %4597 = add i64 %4570, %.v198
  store i64 %4597, i64* %3, align 8
  br i1 %4588, label %block_48d247, label %block_.L_48d25d

block_48d247:                                     ; preds = %block_.L_48d235
  %4598 = add i64 %4556, -80
  %4599 = add i64 %4597, 4
  store i64 %4599, i64* %3, align 8
  %4600 = inttoptr i64 %4598 to i64*
  %4601 = load i64, i64* %4600, align 8
  store i64 %4601, i64* %RAX.i1567, align 8
  %4602 = add i64 %4601, 460
  %4603 = add i64 %4597, 11
  store i64 %4603, i64* %3, align 8
  %4604 = inttoptr i64 %4602 to i32*
  %4605 = load i32, i32* %4604, align 4
  store i8 0, i8* %14, align 1
  %4606 = and i32 %4605, 255
  %4607 = tail call i32 @llvm.ctpop.i32(i32 %4606)
  %4608 = trunc i32 %4607 to i8
  %4609 = and i8 %4608, 1
  %4610 = xor i8 %4609, 1
  store i8 %4610, i8* %21, align 1
  store i8 0, i8* %26, align 1
  %4611 = icmp eq i32 %4605, 0
  %4612 = zext i1 %4611 to i8
  store i8 %4612, i8* %29, align 1
  %4613 = lshr i32 %4605, 31
  %4614 = trunc i32 %4613 to i8
  store i8 %4614, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %.v234 = select i1 %4611, i64 17, i64 214
  %4615 = add i64 %4597, %.v234
  store i64 %4615, i64* %3, align 8
  br i1 %4611, label %block_48d258, label %block_.L_48d31d

block_48d258:                                     ; preds = %block_48d247
  %4616 = add i64 %4615, 20
  br label %block_.L_48d26c

block_.L_48d25d:                                  ; preds = %block_.L_48d235
  store i8 1, i8* %AL.i1475, align 1
  store i8 0, i8* %14, align 1
  store i8 0, i8* %21, align 1
  store i8 0, i8* %29, align 1
  store i8 0, i8* %32, align 1
  store i8 0, i8* %38, align 1
  store i8 0, i8* %26, align 1
  %4617 = add i64 %4597, 15
  br label %block_.L_48d26c

block_.L_48d26c:                                  ; preds = %block_.L_48d25d, %block_48d258
  %.sink = phi i64 [ %4617, %block_.L_48d25d ], [ %4616, %block_48d258 ]
  store i64 %.sink, i64* %3, align 8
  store i64 2, i64* %RAX.i1567, align 8
  store i64 %4470, i64* %RCX.i1514, align 8
  %4618 = add i64 %4470, 12
  %4619 = add i64 %.sink, 16
  store i64 %4619, i64* %3, align 8
  %4620 = inttoptr i64 %4618 to i32*
  %4621 = load i32, i32* %4620, align 4
  %4622 = zext i32 %4621 to i64
  store i64 %4622, i64* %RDX.i930, align 8
  %4623 = add i64 %4556, -188
  %4624 = add i64 %.sink, 22
  store i64 %4624, i64* %3, align 8
  %4625 = inttoptr i64 %4623 to i32*
  store i32 2, i32* %4625, align 4
  %4626 = load i32, i32* %EDX.i1577, align 4
  %4627 = zext i32 %4626 to i64
  %4628 = load i64, i64* %3, align 8
  store i64 %4627, i64* %RAX.i1567, align 8
  %4629 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %4630 = sext i32 %4626 to i64
  %4631 = lshr i64 %4630, 32
  store i64 %4631, i64* %4629, align 8
  %4632 = load i64, i64* %RBP.i, align 8
  %4633 = add i64 %4632, -188
  %4634 = add i64 %4628, 9
  store i64 %4634, i64* %3, align 8
  %4635 = inttoptr i64 %4633 to i32*
  %4636 = load i32, i32* %4635, align 4
  %4637 = zext i32 %4636 to i64
  store i64 %4637, i64* %RSI.i1580, align 8
  %4638 = add i64 %4628, 11
  store i64 %4638, i64* %3, align 8
  %4639 = sext i32 %4636 to i64
  %4640 = shl nuw i64 %4631, 32
  %4641 = or i64 %4640, %4627
  %4642 = sdiv i64 %4641, %4639
  %4643 = shl i64 %4642, 32
  %4644 = ashr exact i64 %4643, 32
  %4645 = icmp eq i64 %4642, %4644
  br i1 %4645, label %4648, label %4646

; <label>:4646:                                   ; preds = %block_.L_48d26c
  %4647 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %4638, %struct.Memory* %4464)
  %.pre186 = load i32, i32* %EDX.i1577, align 4
  %.pre187 = load i64, i64* %3, align 8
  br label %routine_idivl__esi.exit

; <label>:4648:                                   ; preds = %block_.L_48d26c
  %4649 = srem i64 %4641, %4639
  %4650 = and i64 %4642, 4294967295
  store i64 %4650, i64* %RAX.i1567, align 8
  %4651 = and i64 %4649, 4294967295
  store i64 %4651, i64* %RDX.i930, align 8
  store i8 0, i8* %14, align 1
  store i8 0, i8* %21, align 1
  store i8 0, i8* %26, align 1
  store i8 0, i8* %29, align 1
  store i8 0, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %4652 = trunc i64 %4649 to i32
  br label %routine_idivl__esi.exit

routine_idivl__esi.exit:                          ; preds = %4648, %4646
  %4653 = phi i64 [ %.pre187, %4646 ], [ %4638, %4648 ]
  %4654 = phi i32 [ %.pre186, %4646 ], [ %4652, %4648 ]
  %4655 = phi %struct.Memory* [ %4647, %4646 ], [ %4464, %4648 ]
  store i8 0, i8* %14, align 1
  %4656 = and i32 %4654, 255
  %4657 = tail call i32 @llvm.ctpop.i32(i32 %4656)
  %4658 = trunc i32 %4657 to i8
  %4659 = and i8 %4658, 1
  %4660 = xor i8 %4659, 1
  store i8 %4660, i8* %21, align 1
  store i8 0, i8* %26, align 1
  %4661 = icmp eq i32 %4654, 0
  %4662 = zext i1 %4661 to i8
  store i8 %4662, i8* %29, align 1
  %4663 = lshr i32 %4654, 31
  %4664 = trunc i32 %4663 to i8
  store i8 %4664, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %.v196 = select i1 %4661, i64 139, i64 9
  %4665 = add i64 %4653, %.v196
  store i64 %4665, i64* %3, align 8
  br i1 %4661, label %block_.L_48d318, label %block_48d296

block_48d296:                                     ; preds = %routine_idivl__esi.exit
  %4666 = load i64, i64* %RBP.i, align 8
  %4667 = add i64 %4666, -88
  %4668 = add i64 %4665, 4
  store i64 %4668, i64* %3, align 8
  %4669 = inttoptr i64 %4667 to i64*
  %4670 = load i64, i64* %4669, align 8
  store i64 %4670, i64* %RAX.i1567, align 8
  %4671 = add i64 %4670, 72
  %4672 = add i64 %4665, 8
  store i64 %4672, i64* %3, align 8
  %4673 = inttoptr i64 %4671 to i32*
  %4674 = load i32, i32* %4673, align 4
  store i8 0, i8* %14, align 1
  %4675 = and i32 %4674, 255
  %4676 = tail call i32 @llvm.ctpop.i32(i32 %4675)
  %4677 = trunc i32 %4676 to i8
  %4678 = and i8 %4677, 1
  %4679 = xor i8 %4678, 1
  store i8 %4679, i8* %21, align 1
  store i8 0, i8* %26, align 1
  %4680 = icmp eq i32 %4674, 0
  %4681 = zext i1 %4680 to i8
  store i8 %4681, i8* %29, align 1
  %4682 = lshr i32 %4674, 31
  %4683 = trunc i32 %4682 to i8
  store i8 %4683, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %.v195 = select i1 %4680, i64 32, i64 14
  %4684 = add i64 %4665, %.v195
  store i64 %4684, i64* %3, align 8
  br i1 %4680, label %block_.L_48d2b6, label %block_48d2a4

block_48d2a4:                                     ; preds = %block_48d296
  store i64 0, i64* %RAX.i1567, align 8
  store i8 0, i8* %CL.i1510, align 1
  store i8 0, i8* %14, align 1
  store i8 1, i8* %21, align 1
  store i8 1, i8* %29, align 1
  store i8 0, i8* %32, align 1
  store i8 0, i8* %38, align 1
  store i8 0, i8* %26, align 1
  %4685 = add i64 %4684, 13
  store i64 %4685, i64* %3, align 8
  br label %block_.L_48d313.sink.split

block_.L_48d2b6:                                  ; preds = %block_48d296
  %4686 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*), align 8
  store i64 %4686, i64* %RAX.i1567, align 8
  %4687 = add i64 %4686, 24
  %4688 = add i64 %4684, 12
  store i64 %4688, i64* %3, align 8
  %4689 = inttoptr i64 %4687 to i32*
  %4690 = load i32, i32* %4689, align 4
  %4691 = add i32 %4690, -1
  %4692 = icmp eq i32 %4690, 0
  %4693 = zext i1 %4692 to i8
  store i8 %4693, i8* %14, align 1
  %4694 = and i32 %4691, 255
  %4695 = tail call i32 @llvm.ctpop.i32(i32 %4694)
  %4696 = trunc i32 %4695 to i8
  %4697 = and i8 %4696, 1
  %4698 = xor i8 %4697, 1
  store i8 %4698, i8* %21, align 1
  %4699 = xor i32 %4691, %4690
  %4700 = lshr i32 %4699, 4
  %4701 = trunc i32 %4700 to i8
  %4702 = and i8 %4701, 1
  store i8 %4702, i8* %26, align 1
  %4703 = icmp eq i32 %4691, 0
  %4704 = zext i1 %4703 to i8
  store i8 %4704, i8* %29, align 1
  %4705 = lshr i32 %4691, 31
  %4706 = trunc i32 %4705 to i8
  store i8 %4706, i8* %32, align 1
  %4707 = lshr i32 %4690, 31
  %4708 = xor i32 %4705, %4707
  %4709 = add nuw nsw i32 %4708, %4707
  %4710 = icmp eq i32 %4709, 2
  %4711 = zext i1 %4710 to i8
  store i8 %4711, i8* %38, align 1
  %.v197 = select i1 %4703, i64 18, i64 40
  %4712 = add i64 %4684, %.v197
  store i64 %4712, i64* %3, align 8
  br i1 %4703, label %block_48d2c8, label %block_.L_48d2de

block_48d2c8:                                     ; preds = %block_.L_48d2b6
  %4713 = add i64 %4712, 4
  store i64 %4713, i64* %3, align 8
  %4714 = load i64, i64* %4669, align 8
  store i64 %4714, i64* %RAX.i1567, align 8
  %4715 = add i64 %4714, 460
  %4716 = add i64 %4712, 11
  store i64 %4716, i64* %3, align 8
  %4717 = inttoptr i64 %4715 to i32*
  %4718 = load i32, i32* %4717, align 4
  store i8 0, i8* %14, align 1
  %4719 = and i32 %4718, 255
  %4720 = tail call i32 @llvm.ctpop.i32(i32 %4719)
  %4721 = trunc i32 %4720 to i8
  %4722 = and i8 %4721, 1
  %4723 = xor i8 %4722, 1
  store i8 %4723, i8* %21, align 1
  store i8 0, i8* %26, align 1
  %4724 = icmp eq i32 %4718, 0
  %4725 = zext i1 %4724 to i8
  store i8 %4725, i8* %29, align 1
  %4726 = lshr i32 %4718, 31
  %4727 = trunc i32 %4726 to i8
  store i8 %4727, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %.v233 = select i1 %4724, i64 17, i64 75
  %4728 = add i64 %4712, %.v233
  store i64 %4728, i64* %3, align 8
  br i1 %4724, label %block_48d2d9, label %block_.L_48d313

block_48d2d9:                                     ; preds = %block_48d2c8
  %4729 = add i64 %4728, 20
  br label %block_.L_48d2ed

block_.L_48d2de:                                  ; preds = %block_.L_48d2b6
  store i8 1, i8* %AL.i1475, align 1
  store i8 0, i8* %14, align 1
  store i8 0, i8* %21, align 1
  store i8 0, i8* %29, align 1
  store i8 0, i8* %32, align 1
  store i8 0, i8* %38, align 1
  store i8 0, i8* %26, align 1
  %4730 = add i64 %4712, 15
  br label %block_.L_48d2ed

block_.L_48d2ed:                                  ; preds = %block_.L_48d2de, %block_48d2d9
  %.sink300 = phi i64 [ %4730, %block_.L_48d2de ], [ %4729, %block_48d2d9 ]
  store i64 %.sink300, i64* %3, align 8
  %4731 = add i64 %.sink300, 83
  %4732 = add i64 %.sink300, 5
  %4733 = load i64, i64* %6, align 8
  %4734 = add i64 %4733, -8
  %4735 = inttoptr i64 %4734 to i64*
  store i64 %4732, i64* %4735, align 8
  store i64 %4734, i64* %6, align 8
  store i64 %4731, i64* %3, align 8
  %call2_48d2ed = tail call %struct.Memory* @sub_48d340.field_flag_inference(%struct.State* nonnull %0, i64 %4731, %struct.Memory* %4655)
  %4736 = load i64, i64* %RBP.i, align 8
  %4737 = add i64 %4736, -80
  %4738 = load i64, i64* %3, align 8
  %4739 = add i64 %4738, 4
  store i64 %4739, i64* %3, align 8
  %4740 = inttoptr i64 %4737 to i64*
  %4741 = load i64, i64* %4740, align 8
  store i64 %4741, i64* %RCX.i1514, align 8
  %4742 = load i32, i32* %EAX.i895, align 4
  %4743 = add i64 %4741, 532
  %4744 = add i64 %4738, 10
  store i64 %4744, i64* %3, align 8
  %4745 = inttoptr i64 %4743 to i32*
  %4746 = load i32, i32* %4745, align 4
  %4747 = sub i32 %4742, %4746
  %4748 = icmp ult i32 %4742, %4746
  %4749 = zext i1 %4748 to i8
  store i8 %4749, i8* %14, align 1
  %4750 = and i32 %4747, 255
  %4751 = tail call i32 @llvm.ctpop.i32(i32 %4750)
  %4752 = trunc i32 %4751 to i8
  %4753 = and i8 %4752, 1
  %4754 = xor i8 %4753, 1
  store i8 %4754, i8* %21, align 1
  %4755 = xor i32 %4746, %4742
  %4756 = xor i32 %4755, %4747
  %4757 = lshr i32 %4756, 4
  %4758 = trunc i32 %4757 to i8
  %4759 = and i8 %4758, 1
  store i8 %4759, i8* %26, align 1
  %4760 = icmp eq i32 %4747, 0
  %4761 = zext i1 %4760 to i8
  store i8 %4761, i8* %29, align 1
  %4762 = lshr i32 %4747, 31
  %4763 = trunc i32 %4762 to i8
  store i8 %4763, i8* %32, align 1
  %4764 = lshr i32 %4742, 31
  %4765 = lshr i32 %4746, 31
  %4766 = xor i32 %4765, %4764
  %4767 = xor i32 %4762, %4764
  %4768 = add nuw nsw i32 %4767, %4766
  %4769 = icmp eq i32 %4768, 2
  %4770 = zext i1 %4769 to i8
  store i8 %4770, i8* %38, align 1
  %.v232 = select i1 %4760, i64 28, i64 16
  %4771 = add i64 %4738, %.v232
  store i64 %4771, i64* %3, align 8
  br i1 %4760, label %block_.L_48d313.sink.split, label %block_48d302

block_48d302:                                     ; preds = %block_.L_48d2ed
  %4772 = add i64 %4736, -4
  %4773 = add i64 %4771, 7
  store i64 %4773, i64* %3, align 8
  %4774 = inttoptr i64 %4772 to i32*
  store i32 0, i32* %4774, align 4
  %4775 = load i64, i64* %3, align 8
  %4776 = add i64 %4775, 40
  store i64 %4776, i64* %3, align 8
  br label %block_.L_48d331

block_.L_48d313.sink.split:                       ; preds = %block_48d2a4, %block_.L_48d2ed
  %4777 = phi i64 [ %4771, %block_.L_48d2ed ], [ %4685, %block_48d2a4 ]
  %.sink92 = phi i64 [ 5, %block_.L_48d2ed ], [ 98, %block_48d2a4 ]
  %MEMORY.52.ph = phi %struct.Memory* [ %call2_48d2ed, %block_.L_48d2ed ], [ %4655, %block_48d2a4 ]
  %4778 = add i64 %4777, %.sink92
  store i64 %4778, i64* %3, align 8
  br label %block_.L_48d313

block_.L_48d313:                                  ; preds = %block_48d2c8, %block_.L_48d313.sink.split
  %4779 = phi i64 [ %4728, %block_48d2c8 ], [ %4778, %block_.L_48d313.sink.split ]
  %MEMORY.52 = phi %struct.Memory* [ %4655, %block_48d2c8 ], [ %MEMORY.52.ph, %block_.L_48d313.sink.split ]
  %4780 = add i64 %4779, 5
  store i64 %4780, i64* %3, align 8
  br label %block_.L_48d318

block_.L_48d318:                                  ; preds = %block_.L_48d313, %routine_idivl__esi.exit
  %4781 = phi i64 [ %4665, %routine_idivl__esi.exit ], [ %4780, %block_.L_48d313 ]
  %MEMORY.53 = phi %struct.Memory* [ %4655, %routine_idivl__esi.exit ], [ %MEMORY.52, %block_.L_48d313 ]
  %4782 = add i64 %4781, 5
  store i64 %4782, i64* %3, align 8
  br label %block_.L_48d31d

block_.L_48d31d:                                  ; preds = %block_48d247, %block_.L_48d318, %block_48d230, %block_.L_48d204
  %4783 = phi i64 [ %4555, %block_.L_48d204 ], [ %4782, %block_.L_48d318 ], [ %4615, %block_48d247 ], [ %4571, %block_48d230 ]
  %MEMORY.54 = phi %struct.Memory* [ %4464, %block_.L_48d204 ], [ %MEMORY.53, %block_.L_48d318 ], [ %4464, %block_48d247 ], [ %4464, %block_48d230 ]
  %4784 = load i64, i64* %RBP.i, align 8
  %4785 = add i64 %4784, -72
  %4786 = add i64 %4783, 5
  store i64 %4786, i64* %3, align 8
  %4787 = inttoptr i64 %4785 to i64*
  %4788 = load i64, i64* %4787, align 8
  store i64 %4788, i64* %43, align 1
  store double 0.000000e+00, double* %4310, align 1
  %4789 = add i64 %4784, -32
  %4790 = add i64 %4783, 9
  store i64 %4790, i64* %3, align 8
  %4791 = inttoptr i64 %4789 to i64*
  %4792 = load i64, i64* %4791, align 8
  store i64 %4792, i64* %RAX.i1567, align 8
  %4793 = add i64 %4783, 13
  store i64 %4793, i64* %3, align 8
  %4794 = inttoptr i64 %4792 to i64*
  store i64 %4788, i64* %4794, align 8
  %4795 = load i64, i64* %RBP.i, align 8
  %4796 = add i64 %4795, -4
  %4797 = load i64, i64* %3, align 8
  %4798 = add i64 %4797, 7
  store i64 %4798, i64* %3, align 8
  %4799 = inttoptr i64 %4796 to i32*
  store i32 1, i32* %4799, align 4
  %.pre189 = load i64, i64* %3, align 8
  br label %block_.L_48d331

block_.L_48d331:                                  ; preds = %block_.L_48d31d, %block_48d302, %block_.L_48d1f8, %block_48c79e, %block_48c72a
  %4800 = phi i64 [ %4540, %block_.L_48d1f8 ], [ %.pre189, %block_.L_48d31d ], [ %4776, %block_48d302 ], [ %734, %block_48c79e ], [ %571, %block_48c72a ]
  %MEMORY.55 = phi %struct.Memory* [ %4464, %block_.L_48d1f8 ], [ %MEMORY.54, %block_.L_48d31d ], [ %call2_48d2ed, %block_48d302 ], [ %call2_48c76d, %block_48c79e ], [ %call2_48c69c, %block_48c72a ]
  %4801 = load i64, i64* %RBP.i, align 8
  %4802 = add i64 %4801, -4
  %4803 = add i64 %4800, 3
  store i64 %4803, i64* %3, align 8
  %4804 = inttoptr i64 %4802 to i32*
  %4805 = load i32, i32* %4804, align 4
  %4806 = zext i32 %4805 to i64
  store i64 %4806, i64* %RAX.i1567, align 8
  %4807 = load i64, i64* %6, align 8
  %4808 = add i64 %4807, 192
  store i64 %4808, i64* %6, align 8
  %4809 = icmp ugt i64 %4807, -193
  %4810 = zext i1 %4809 to i8
  store i8 %4810, i8* %14, align 1
  %4811 = trunc i64 %4808 to i32
  %4812 = and i32 %4811, 255
  %4813 = tail call i32 @llvm.ctpop.i32(i32 %4812)
  %4814 = trunc i32 %4813 to i8
  %4815 = and i8 %4814, 1
  %4816 = xor i8 %4815, 1
  store i8 %4816, i8* %21, align 1
  %4817 = xor i64 %4808, %4807
  %4818 = lshr i64 %4817, 4
  %4819 = trunc i64 %4818 to i8
  %4820 = and i8 %4819, 1
  store i8 %4820, i8* %26, align 1
  %4821 = icmp eq i64 %4808, 0
  %4822 = zext i1 %4821 to i8
  store i8 %4822, i8* %29, align 1
  %4823 = lshr i64 %4808, 63
  %4824 = trunc i64 %4823 to i8
  store i8 %4824, i8* %32, align 1
  %4825 = lshr i64 %4807, 63
  %4826 = xor i64 %4823, %4825
  %4827 = add nuw nsw i64 %4826, %4823
  %4828 = icmp eq i64 %4827, 2
  %4829 = zext i1 %4828 to i8
  store i8 %4829, i8* %38, align 1
  %4830 = add i64 %4800, 11
  store i64 %4830, i64* %3, align 8
  %4831 = add i64 %4807, 200
  %4832 = inttoptr i64 %4808 to i64*
  %4833 = load i64, i64* %4832, align 8
  store i64 %4833, i64* %RBP.i, align 8
  store i64 %4831, i64* %6, align 8
  %4834 = add i64 %4800, 12
  store i64 %4834, i64* %3, align 8
  %4835 = inttoptr i64 %4831 to i64*
  %4836 = load i64, i64* %4835, align 8
  store i64 %4836, i64* %3, align 8
  %4837 = add i64 %4807, 208
  store i64 %4837, i64* %6, align 8
  ret %struct.Memory* %MEMORY.55
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
define %struct.Memory* @routine_subq__0xc0___rsp(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %3 = load i64, i64* %RSP, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 7
  store i64 %5, i64* %PC, align 8
  %6 = add i64 %3, -192
  store i64 %6, i64* %RSP, align 8
  %7 = icmp ult i64 %3, 192
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
define %struct.Memory* @routine_movsd__xmm0__MINUS0x10__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -16
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 5
  store i64 %6, i64* %PC, align 8
  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 0
  %8 = load i64, i64* %7, align 1
  %9 = inttoptr i64 %4 to i64*
  store i64 %8, i64* %9, align 8
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
define %struct.Memory* @routine_movl__edx__MINUS0x24__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %EDX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -36
  %6 = load i32, i32* %EDX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x0__MINUS0x34__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -52
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  store i32 0, i32* %7, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__0x0__MINUS0x40__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -64
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 8
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  store i64 0, i64* %7, align 8
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
define %struct.Memory* @routine_movslq_0xc__rax____rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
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
  %9 = sext i32 %8 to i64
  store i64 %9, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_imulq__0x278___rax___rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 7
  store i64 %5, i64* %PC, align 8
  %6 = sext i64 %3 to i128
  %7 = and i128 %6, -18446744073709551616
  %8 = zext i64 %3 to i128
  %9 = or i128 %7, %8
  %10 = mul nsw i128 %9, 632
  %11 = trunc i128 %10 to i64
  store i64 %11, i64* %RAX, align 8
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
define %struct.Memory* @routine_addq__rax___rsi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %RSI, align 8
  %4 = load i64, i64* %RAX, align 8
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
define %struct.Memory* @routine_je_.L_48c61a(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movq__rax__MINUS0x88__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -136
  %5 = load i64, i64* %RAX, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 7
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %4 to i64*
  store i64 %5, i64* %8, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_48c62a(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movq__rcx__MINUS0x88__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -136
  %5 = load i64, i64* %RCX, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 7
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %4 to i64*
  store i64 %5, i64* %8, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_MINUS0x88__rbp____rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -136
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RAX, align 8
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
define %struct.Memory* @routine_movb__cl___dl(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %CL = bitcast %union.anon* %3 to i8*
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %DL = bitcast %union.anon* %4 to i8*
  %5 = load i8, i8* %CL, align 1
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 2
  store i64 %7, i64* %PC, align 8
  store i8 %5, i8* %DL, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__rax__MINUS0x58__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -88
  %5 = load i64, i64* %RAX, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 4
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %4 to i64*
  store i64 %5, i64* %8, align 8
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
define %struct.Memory* @routine_sete__sil(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0
  %SIL = bitcast %union.anon* %3 to i8*
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 4
  store i64 %5, i64* %PC, align 8
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %7 = load i8, i8* %6, align 1
  store i8 %7, i8* %SIL, align 1
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_andb__0x1___sil(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0
  %SIL = bitcast %union.anon* %3 to i8*
  %4 = load i8, i8* %SIL, align 1
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = and i8 %4, 1
  store i8 %7, i8* %SIL, align 1
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
define %struct.Memory* @routine_movzbl__sil___ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0
  %SIL = bitcast %union.anon* %3 to i8*
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %4 = load i8, i8* %SIL, align 1
  %5 = zext i8 %4 to i64
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 4
  store i64 %7, i64* %PC, align 8
  store i64 %5, i64* %RCX, align 8
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
define %struct.Memory* @routine_movb__dl__MINUS0x89__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %DL = bitcast %union.anon* %3 to i8*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -137
  %6 = load i8, i8* %DL, align 1
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i8*
  store i8 %6, i8* %9, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_je_.L_48c684(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movb__cl__MINUS0x89__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %CL = bitcast %union.anon* %3 to i8*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -137
  %6 = load i8, i8* %CL, align 1
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i8*
  store i8 %6, i8* %9, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movb_MINUS0x89__rbp____al(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %AL = bitcast %union.anon* %3 to i8*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -137
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
define %struct.Memory* @routine_movl__ecx__MINUS0x64__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %ECX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -100
  %6 = load i32, i32* %ECX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x0__MINUS0x70__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -112
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  store i32 0, i32* %7, align 4
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
define %struct.Memory* @routine_callq_.SetModesAndRefframeForBlocks(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_cmpl__0x0__MINUS0x5c__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -92
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
define %struct.Memory* @routine_je_.L_48c761(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_cmpl__0x0__MINUS0x14__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
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
define %struct.Memory* @routine_jne_.L_48c761(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl_0x98__rax____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = add i64 %3, 152
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__ecx__MINUS0x78__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %ECX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -120
  %6 = load i32, i32* %ECX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_0x9c__rax____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = add i64 %3, 156
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
define %struct.Memory* @routine_cmpl__0x4__MINUS0x28__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
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
define %struct.Memory* @routine_jge_.L_48c75c(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_cmpl__0x4__MINUS0x2c__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
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
define %struct.Memory* @routine_jge_.L_48c749(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movq_0x722cb8___rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 8
  store i64 %4, i64* %PC, align 8
  %5 = load i64, i64* bitcast (%G_0x722cb8_type* @G_0x722cb8 to i64*), align 8
  store i64 %5, i64* %RAX, align 8
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

; Function Attrs: nounwind
define %struct.Memory* @routine_addl_MINUS0x28__rbp____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
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
define %struct.Memory* @routine_addl_MINUS0x2c__rbp____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -44
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
define %struct.Memory* @routine_movswl___rax__rdx_2____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %RDX, align 8
  %5 = shl i64 %4, 1
  %6 = add i64 %5, %3
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 4
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %6 to i16*
  %10 = load i16, i16* %9, align 2
  %11 = sext i16 %10 to i64
  %12 = and i64 %11, 4294967295
  store i64 %12, i64* %RCX, align 8
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
define %struct.Memory* @routine_jge_.L_48c736(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jmpq_.L_48d331(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_48c73b(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
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
define %struct.Memory* @routine_jmpq_.L_48c6f5(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_48c74e(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jmpq_.L_48c6e4(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_48c761(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__0x8__MINUS0x14__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
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
define %struct.Memory* @routine_jge_.L_48c7af(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_callq_.LumaResidualCoding(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jne_.L_48c7aa(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__0x0__0x1cc__rax_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = add i64 %3, 460
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

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__0x1__0x23c__rax_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = add i64 %3, 572
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
define %struct.Memory* @routine_jmpq_.L_48ca37(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jne_.L_48c7c7(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movq_MINUS0x50__rbp____rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -80
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RDI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_callq_.SetCoeffAndReconstruction8x8(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jmpq_.L_48ca32(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__0x9__MINUS0x14__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
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
define %struct.Memory* @routine_jne_.L_48c8e7(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_leaq_MINUS0x6c__rbp____rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -108
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  store i64 %4, i64* %RDI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movsd_MINUS0x10__rbp____xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
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
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 0
  store i64 %8, i64* %9, align 1
  %10 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 1
  %11 = bitcast i64* %10 to double*
  store double 0.000000e+00, double* %11, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_callq_.Mode_Decision_for_Intra4x4Macroblock(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl__eax__0x1cc__rdi_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %4 = load i64, i64* %RDI, align 8
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

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__0x0__0x11c14__rdi_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %RDI, align 8
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
define %struct.Memory* @routine_je_.L_48c8e2(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_cmpl__0x2__MINUS0x28__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
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
define %struct.Memory* @routine_jge_.L_48c89f(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jge_.L_48c88c(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl__0x0__MINUS0x30__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -48
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  store i32 0, i32* %7, align 4
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__0x4__MINUS0x30__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -48
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
define %struct.Memory* @routine_jge_.L_48c879(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movq__0x6d0920___rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x6d0920_type* @G__0x6d0920 to i64), i64* %RAX, align 8
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

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__0x0____rax__rcx_4_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
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
  %11 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %11, align 1
  %12 = and i32 %10, 255
  %13 = tail call i32 @llvm.ctpop.i32(i32 %12)
  %14 = trunc i32 %13 to i8
  %15 = and i8 %14, 1
  %16 = xor i8 %15, 1
  %17 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %16, i8* %17, align 1
  %18 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %18, align 1
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
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_je_.L_48c866(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl__0x2__MINUS0x70__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -112
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  store i32 2, i32* %7, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_48c86b(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
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
define %struct.Memory* @routine_jmpq_.L_48c827(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_48c87e(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_48c816(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_48c891(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_48c805(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x0__MINUS0x74__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -116
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  store i32 0, i32* %7, align 4
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__0x2__MINUS0x74__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -116
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
define %struct.Memory* @routine_jge_.L_48c8cc(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl_MINUS0x74__rbp____edi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -116
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
define %struct.Memory* @routine_movl_MINUS0x70__rbp____esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -112
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
define %struct.Memory* @routine_callq_.dct_chroma_DC(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jmpq_.L_48c8a6(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jmpq_.L_48ca2d(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__0xa__MINUS0x14__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jne_.L_48c903(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_leaq_MINUS0x24__rbp____rsi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -36
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  store i64 %4, i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_callq_.Intra16x16_Mode_Decision(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jmpq_.L_48ca28(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__0xd__MINUS0x14__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
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
define %struct.Memory* @routine_jne_.L_48ca23(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_callq_.Mode_Decision_for_new_Intra8x8Macroblock(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_je_.L_48ca1e(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jge_.L_48c9db(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jge_.L_48c9c8(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jge_.L_48c9b5(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_je_.L_48c9a2(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jmpq_.L_48c9a7(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_48c963(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_48c9ba(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_48c952(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_48c9cd(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_48c941(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jge_.L_48ca08(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jmpq_.L_48c9e2(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_48ca23(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__0x2__0x9a0__rax_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = add i64 %3, 2464
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
define %struct.Memory* @routine_jne_.L_48ca93(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_je_.L_48ca93(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jne_.L_48ca76(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_48ca86(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0xffffffff___eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 5
  store i64 %4, i64* %PC, align 8
  store i64 4294967295, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x90__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -144
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
define %struct.Memory* @routine_callq_.compute_residue_mb(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jne_.L_48cb2e(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jge_.L_48cb29(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jge_.L_48cb16(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movq__0x6cc660___rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x6cc660_type* @G__0x6cc660 to i64), i64* %RAX, align 8
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
define %struct.Memory* @routine_movslq_MINUS0x2c__rbp____rdx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -44
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
define %struct.Memory* @routine_jmpq_.L_48cab5(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_48cb1b(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_48caa4(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_48cbb4(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jge_.L_48cbaf(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jge_.L_48cb9c(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_addq__0x3138___rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 7
  store i64 %5, i64* %PC, align 8
  %6 = add i64 %3, 12600
  store i64 %6, i64* %RCX, align 8
  %7 = icmp ugt i64 %3, -12601
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
define %struct.Memory* @routine_jmpq_.L_48cb46(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_48cba1(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_48cb35(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x0__0x11abc__rax_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = add i64 %3, 72380
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 10
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  store i32 0, i32* %7, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x0__MINUS0x6c__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -108
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  store i32 0, i32* %7, align 4
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
define %struct.Memory* @routine_je_.L_48cc00(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_je_.L_48cc1e(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_callq_.ChromaResidualCoding(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jne_.L_48cc48(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl_0x1cc__rax____edi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = add i64 %3, 460
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
define %struct.Memory* @routine_movl_MINUS0x24__rbp____esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -36
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
define %struct.Memory* @routine_callq_.I16Offset(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl__eax__0x11abc__rcx_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %4 = load i64, i64* %RCX, align 8
  %5 = add i64 %4, 72380
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jne_.L_48cdb9(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_je_.L_48cdb9(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_cmpl_0xb58__rcx____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %4 = load i32, i32* %EAX, align 4
  %5 = load i64, i64* %RCX, align 8
  %6 = add i64 %5, 2904
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
define %struct.Memory* @routine_jge_.L_48cd87(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_MINUS0x50__rbp____rsi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -80
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_callq_.decode_one_mb(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jge_.L_48cd74(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl_0xa8__rax____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = add i64 %3, 168
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_0xa8__rcx____edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = add i64 %3, 168
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
define %struct.Memory* @routine_addl__0x10___edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %RDX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 3
  store i64 %5, i64* %PC, align 8
  %6 = trunc i64 %3 to i32
  %7 = add i32 %6, 16
  %8 = zext i32 %7 to i64
  store i64 %8, i64* %RDX, align 8
  %9 = icmp ugt i32 %6, -17
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
define %struct.Memory* @routine_jge_.L_48cd61(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl_0xac__rdx____esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %RDX, align 8
  %4 = add i64 %3, 172
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
define %struct.Memory* @routine_addl_MINUS0x2c__rbp____esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RSI, align 8
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -44
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
define %struct.Memory* @routine_movq_0x6cb918___rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 8
  store i64 %4, i64* %PC, align 8
  %5 = load i64, i64* bitcast (%G_0x6cb918_type* @G_0x6cb918 to i64*), align 8
  store i64 %5, i64* %RCX, align 8
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movslq_MINUS0x30__rbp____rdx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -48
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
define %struct.Memory* @routine_movl_0xac__rdx____edi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %RDX, align 8
  %4 = add i64 %3, 172
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
define %struct.Memory* @routine_addl_MINUS0x2c__rbp____edi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
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
define %struct.Memory* @routine_addq_MINUS0x40__rbp____rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -64
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
define %struct.Memory* @routine_jmpq_.L_48ccbb(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_48cd66(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_48cca0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_48cd79(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_48cc76(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movslq_0xb58__rax____rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = add i64 %3, 2904
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
define %struct.Memory* @routine_movq__rax__MINUS0x98__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -152
  %5 = load i64, i64* %RAX, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 7
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %4 to i64*
  store i64 %5, i64* %8, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__rcx___rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 3
  store i64 %5, i64* %PC, align 8
  store i64 %3, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_cqto(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 2
  store i64 %4, i64* %PC, align 8
  %5 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = ashr i64 %7, 63
  store i64 %8, i64* %5, align 8
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

define %struct.Memory* @routine_idivq__rcx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 3
  store i64 %5, i64* %PC, align 8
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = sext i64 %3 to i128
  %11 = and i128 %10, -18446744073709551616
  %12 = zext i64 %9 to i128
  %13 = shl nuw i128 %12, 64
  %14 = zext i64 %7 to i128
  %15 = or i128 %13, %14
  %16 = zext i64 %3 to i128
  %17 = or i128 %11, %16
  %18 = sdiv i128 %15, %17
  %19 = trunc i128 %18 to i64
  %20 = and i128 %18, 18446744073709551615
  %21 = sext i64 %19 to i128
  %22 = and i128 %21, -18446744073709551616
  %23 = or i128 %22, %20
  %24 = icmp eq i128 %18, %23
  br i1 %24, label %27, label %25

; <label>:25:                                     ; preds = %block_400488
  %26 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %5, %struct.Memory* %2)
  br label %_ZN12_GLOBAL__N_1L10IDIVrdxraxI2RnImEEEP6MemoryS4_R5StateT_.exit

; <label>:27:                                     ; preds = %block_400488
  %28 = srem i128 %15, %17
  %29 = trunc i128 %28 to i64
  store i64 %19, i64* %6, align 8
  store i64 %29, i64* %8, align 8
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
  br label %_ZN12_GLOBAL__N_1L10IDIVrdxraxI2RnImEEEP6MemoryS4_R5StateT_.exit

_ZN12_GLOBAL__N_1L10IDIVrdxraxI2RnImEEEP6MemoryS4_R5StateT_.exit: ; preds = %27, %25
  %36 = phi %struct.Memory* [ %26, %25 ], [ %2, %27 ]
  ret %struct.Memory* %36
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_48ce94(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jge_.L_48ce8f(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jge_.L_48ce7c(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl_MINUS0x2c__rbp____edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -44
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
define %struct.Memory* @routine_addl_0xac__rsi____edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %RDX, align 8
  %4 = load i64, i64* %RSI, align 8
  %5 = add i64 %4, 172
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
define %struct.Memory* @routine_movq___rcx__rsi_8____rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = load i64, i64* %RSI, align 8
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
define %struct.Memory* @routine_movzwl___rcx__rsi_2____edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = load i64, i64* %RSI, align 8
  %5 = shl i64 %4, 1
  %6 = add i64 %5, %3
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 4
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %6 to i16*
  %10 = load i16, i16* %9, align 2
  %11 = zext i16 %10 to i64
  store i64 %11, i64* %RDX, align 8
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
define %struct.Memory* @routine_movl_0x9c__rsi____edi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %RSI, align 8
  %4 = add i64 %3, 156
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
define %struct.Memory* @routine_movslq__edi___rsi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0
  %EDI = bitcast %union.anon* %3 to i32*
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %4 = load i32, i32* %EDI, align 4
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 3
  store i64 %6, i64* %PC, align 8
  %7 = sext i32 %4 to i64
  store i64 %7, i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movzwl___rcx__rsi_2____edi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
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
define %struct.Memory* @routine_subl__edi___edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0
  %EDI = bitcast %union.anon* %3 to i32*
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %4 = load i64, i64* %RDX, align 8
  %5 = load i32, i32* %EDI, align 4
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
define %struct.Memory* @routine_jmpq_.L_48cddb(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_48ce81(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_48cdc0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_je_.L_48d021(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_cmpl_0x11c08__rcx____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %4 = load i32, i32* %EAX, align 4
  %5 = load i64, i64* %RCX, align 8
  %6 = add i64 %5, 72712
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
define %struct.Memory* @routine_jge_.L_48d01c(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl_0xb0__rax____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = add i64 %3, 176
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
define %struct.Memory* @routine_movl_0xb0__rcx____edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = add i64 %3, 176
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
define %struct.Memory* @routine_addl_0x11c04__rcx____edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %RDX, align 8
  %4 = load i64, i64* %RCX, align 8
  %5 = add i64 %4, 72708
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
define %struct.Memory* @routine_jge_.L_48d009(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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

; Function Attrs: nounwind
define %struct.Memory* @routine_addl_0xb4__rsi____edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %RDX, align 8
  %4 = load i64, i64* %RSI, align 8
  %5 = add i64 %4, 180
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
define %struct.Memory* @routine_movl_0xa4__rsi____edi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %RSI, align 8
  %4 = add i64 %3, 164
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
define %struct.Memory* @routine_jmpq_.L_48ced8(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_48d00e(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_48ceb0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_48d021(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_0x6cc628___rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 8
  store i64 %4, i64* %PC, align 8
  %5 = load i64, i64* bitcast (%G_0x6cc628_type* @G_0x6cc628 to i64*), align 8
  store i64 %5, i64* %RDI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_callq_.store_coding_state(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_cmpl__0x0__MINUS0x64__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
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
define %struct.Memory* @routine_je_.L_48d104(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_cmpl__0x0__0x48__rax_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
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
define %struct.Memory* @routine_jne_.L_48d061(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_je_.L_48d0ad(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl_0x78__rax____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = add i64 %3, 120
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
define %struct.Memory* @routine_movl__ecx__MINUS0x60__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %ECX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -96
  %6 = load i32, i32* %ECX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_callq_.writeMBLayer(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_leaq_MINUS0x68__rbp____rdx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -104
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  store i64 %4, i64* %RDX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_leaq_MINUS0x6c__rbp____rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -108
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  store i64 %4, i64* %RCX, align 8
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
define %struct.Memory* @routine_movl_MINUS0x60__rbp____edi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -96
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
define %struct.Memory* @routine_movl_MINUS0x6c__rbp____esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -108
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
define %struct.Memory* @routine_callq_.ue_linfo(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl_MINUS0x34__rbp____esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -52
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
define %struct.Memory* @routine_subl__eax___esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
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
define %struct.Memory* @routine_movl__esi__MINUS0x34__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0
  %ESI = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -52
  %6 = load i32, i32* %ESI, align 4
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
define %struct.Memory* @routine_movl__eax__0x78__rcx_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %4 = load i64, i64* %RCX, align 8
  %5 = add i64 %4, 120
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_48d0ff(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_leaq_MINUS0x34__rbp____rdx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -52
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  store i64 %4, i64* %RDX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_0x78__rax____esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = add i64 %3, 120
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
define %struct.Memory* @routine_movl_MINUS0x6c__rbp____edi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -108
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
define %struct.Memory* @routine_movl__edi__MINUS0x9c__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0
  %EDI = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -156
  %6 = load i32, i32* %EDI, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
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
define %struct.Memory* @routine_movl_MINUS0x9c__rbp____esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -156
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
define %struct.Memory* @routine_movl_0x78__rax____edi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = add i64 %3, 120
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
define %struct.Memory* @routine_movl_MINUS0x68__rbp____esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -104
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
define %struct.Memory* @routine_subl__esi___edi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0
  %ESI = bitcast %union.anon* %3 to i32*
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %4 = load i64, i64* %RDI, align 8
  %5 = load i32, i32* %ESI, align 4
  %6 = zext i32 %5 to i64
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 2
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
define %struct.Memory* @routine_movl__edi__MINUS0x34__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0
  %EDI = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -52
  %6 = load i32, i32* %EDI, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_48d111(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_callq_.reset_coding_state(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movsd_0x24762__rip____xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, ptrtoint (%G_0x24762__rip__type* @G_0x24762__rip_ to i64)
  %5 = add i64 %3, 8
  store i64 %5, i64* %PC, align 8
  %6 = inttoptr i64 %4 to i64*
  %7 = load i64, i64* %6, align 8
  %8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 0
  store i64 %7, i64* %8, align 1
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 1
  %10 = bitcast i64* %9 to double*
  store double 0.000000e+00, double* %10, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_cvtsi2sdq_MINUS0x40__rbp____xmm1(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -64
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
define %struct.Memory* @routine_movsd_MINUS0x10__rbp____xmm2(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
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
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 2, i32 0, i32 0, i32 0, i64 0
  store i64 %8, i64* %9, align 1
  %10 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 2, i32 0, i32 0, i32 0, i64 1
  %11 = bitcast i64* %10 to double*
  store double 0.000000e+00, double* %11, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_cvtsi2sdl_MINUS0x34__rbp____xmm3(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 3
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -52
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

define %struct.Memory* @routine_ucomisd__xmm3___xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 3
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = bitcast [32 x %union.VectorReg]* %3 to double*
  %8 = load double, double* %7, align 1
  %9 = bitcast %union.VectorReg* %4 to double*
  %10 = load double, double* %9, align 1
  %11 = fcmp uno double %8, %10
  br i1 %11, label %12, label %22

; <label>:12:                                     ; preds = %block_400488
  %13 = fadd double %8, %10
  %14 = bitcast double %13 to i64
  %15 = and i64 %14, 9221120237041090560
  %16 = icmp eq i64 %15, 9218868437227405312
  %17 = and i64 %14, 2251799813685247
  %18 = icmp ne i64 %17, 0
  %19 = and i1 %16, %18
  br i1 %19, label %20, label %28

; <label>:20:                                     ; preds = %12
  %21 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %6, %struct.Memory* %2)
  br label %_ZN12_GLOBAL__N_1L6COMISDI2VnI8vec128_tES3_EEP6MemoryS5_R5StateT_T0_.exit

; <label>:22:                                     ; preds = %block_400488
  %23 = fcmp ogt double %8, %10
  br i1 %23, label %28, label %24

; <label>:24:                                     ; preds = %22
  %25 = fcmp olt double %8, %10
  br i1 %25, label %28, label %26

; <label>:26:                                     ; preds = %24
  %27 = fcmp oeq double %8, %10
  br i1 %27, label %28, label %35

; <label>:28:                                     ; preds = %26, %24, %22, %12
  %29 = phi i8 [ 0, %22 ], [ 0, %24 ], [ 1, %26 ], [ 1, %12 ]
  %30 = phi i8 [ 0, %22 ], [ 0, %24 ], [ 0, %26 ], [ 1, %12 ]
  %31 = phi i8 [ 0, %22 ], [ 1, %24 ], [ 0, %26 ], [ 1, %12 ]
  %32 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %29, i8* %32, align 1
  %33 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %30, i8* %33, align 1
  %34 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %31, i8* %34, align 1
  br label %35

; <label>:35:                                     ; preds = %28, %26
  %36 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %36, align 1
  %37 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 0, i8* %37, align 1
  %38 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %38, align 1
  br label %_ZN12_GLOBAL__N_1L6COMISDI2VnI8vec128_tES3_EEP6MemoryS5_R5StateT_T0_.exit

_ZN12_GLOBAL__N_1L6COMISDI2VnI8vec128_tES3_EEP6MemoryS5_R5StateT_T0_.exit: ; preds = %35, %20
  %39 = phi %struct.Memory* [ %21, %20 ], [ %2, %35 ]
  ret %struct.Memory* %39
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movsd__xmm2__MINUS0xa8__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -168
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 8
  store i64 %6, i64* %PC, align 8
  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 2, i32 0, i32 0, i32 0, i64 0
  %8 = load i64, i64* %7, align 1
  %9 = inttoptr i64 %4 to i64*
  store i64 %8, i64* %9, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movsd__xmm1__MINUS0xb0__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -176
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 8
  store i64 %6, i64* %PC, align 8
  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1, i32 0, i32 0, i32 0, i64 0
  %8 = load i64, i64* %7, align 1
  %9 = inttoptr i64 %4 to i64*
  store i64 %8, i64* %9, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jbe_.L_48d165(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %5 = load i8, i8* %4, align 1
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %7 = load i8, i8* %6, align 1
  %8 = or i8 %7, %5
  %9 = icmp ne i8 %8, 0
  %10 = zext i1 %9 to i8
  store i8 %10, i8* %BRANCH_TAKEN, align 1
  %.v = select i1 %9, i64 %rel_off1, i64 %rel_off2
  %11 = add i64 %.v, %3
  store i64 %11, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movsd_0x24730__rip____xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, ptrtoint (%G_0x24730__rip__type* @G_0x24730__rip_ to i64)
  %5 = add i64 %3, 8
  store i64 %5, i64* %PC, align 8
  %6 = inttoptr i64 %4 to i64*
  %7 = load i64, i64* %6, align 8
  %8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 0
  store i64 %7, i64* %8, align 1
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 1
  %10 = bitcast i64* %9 to double*
  store double 0.000000e+00, double* %10, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movsd__xmm0__MINUS0xb8__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -184
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 8
  store i64 %6, i64* %PC, align 8
  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 0
  %8 = load i64, i64* %7, align 1
  %9 = inttoptr i64 %4 to i64*
  store i64 %8, i64* %9, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_48d172(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_cvtsi2sdl_MINUS0x34__rbp____xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -52
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
define %struct.Memory* @routine_movsd_MINUS0xb8__rbp____xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -184
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 8
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 0
  store i64 %8, i64* %9, align 1
  %10 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 1
  %11 = bitcast i64* %10 to double*
  store double 0.000000e+00, double* %11, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movsd_0x2483e__rip____xmm1(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, ptrtoint (%G_0x2483e__rip__type* @G_0x2483e__rip_ to i64)
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
define %struct.Memory* @routine_movsd_MINUS0xa8__rbp____xmm2(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -168
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 8
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 2, i32 0, i32 0, i32 0, i64 0
  store i64 %8, i64* %9, align 1
  %10 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 2, i32 0, i32 0, i32 0, i64 1
  %11 = bitcast i64* %10 to double*
  store double 0.000000e+00, double* %11, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_mulsd__xmm0___xmm2(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 2
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
define %struct.Memory* @routine_movsd_MINUS0xb0__rbp____xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -176
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 8
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 0
  store i64 %8, i64* %9, align 1
  %10 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 1
  %11 = bitcast i64* %10 to double*
  store double 0.000000e+00, double* %11, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_addsd__xmm2___xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 2
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = bitcast [32 x %union.VectorReg]* %3 to double*
  %8 = load double, double* %7, align 1
  %9 = bitcast %union.VectorReg* %4 to double*
  %10 = load double, double* %9, align 1
  %11 = fadd double %8, %10
  store double %11, double* %7, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movsd__xmm0__MINUS0x48__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -72
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 5
  store i64 %6, i64* %PC, align 8
  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 0
  %8 = load i64, i64* %7, align 1
  %9 = inttoptr i64 %4 to i64*
  store i64 %8, i64* %9, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movsd_MINUS0x48__rbp____xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -72
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 5
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 0
  store i64 %8, i64* %9, align 1
  %10 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 1
  %11 = bitcast i64* %10 to double*
  store double 0.000000e+00, double* %11, align 1
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
define %struct.Memory* @routine_subsd___rax____xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %4 = bitcast i64* %RAX to double**
  %5 = load double*, double** %4, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 4
  store i64 %7, i64* %PC, align 8
  %8 = bitcast %union.VectorReg* %3 to double*
  %9 = load double, double* %8, align 1
  %10 = load double, double* %5, align 8
  %11 = fsub double %9, %10
  store double %11, double* %8, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_ucomisd__xmm1___xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
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
  %11 = fcmp uno double %8, %10
  br i1 %11, label %12, label %22

; <label>:12:                                     ; preds = %block_400488
  %13 = fadd double %8, %10
  %14 = bitcast double %13 to i64
  %15 = and i64 %14, 9221120237041090560
  %16 = icmp eq i64 %15, 9218868437227405312
  %17 = and i64 %14, 2251799813685247
  %18 = icmp ne i64 %17, 0
  %19 = and i1 %16, %18
  br i1 %19, label %20, label %28

; <label>:20:                                     ; preds = %12
  %21 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %6, %struct.Memory* %2)
  br label %_ZN12_GLOBAL__N_1L6COMISDI2VnI8vec128_tES3_EEP6MemoryS5_R5StateT_T0_.exit

; <label>:22:                                     ; preds = %block_400488
  %23 = fcmp ogt double %8, %10
  br i1 %23, label %28, label %24

; <label>:24:                                     ; preds = %22
  %25 = fcmp olt double %8, %10
  br i1 %25, label %28, label %26

; <label>:26:                                     ; preds = %24
  %27 = fcmp oeq double %8, %10
  br i1 %27, label %28, label %35

; <label>:28:                                     ; preds = %26, %24, %22, %12
  %29 = phi i8 [ 0, %22 ], [ 0, %24 ], [ 1, %26 ], [ 1, %12 ]
  %30 = phi i8 [ 0, %22 ], [ 0, %24 ], [ 0, %26 ], [ 1, %12 ]
  %31 = phi i8 [ 0, %22 ], [ 1, %24 ], [ 0, %26 ], [ 1, %12 ]
  %32 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %29, i8* %32, align 1
  %33 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %30, i8* %33, align 1
  %34 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %31, i8* %34, align 1
  br label %35

; <label>:35:                                     ; preds = %28, %26
  %36 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %36, align 1
  %37 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 0, i8* %37, align 1
  %38 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %38, align 1
  br label %_ZN12_GLOBAL__N_1L6COMISDI2VnI8vec128_tES3_EEP6MemoryS5_R5StateT_T0_.exit

_ZN12_GLOBAL__N_1L6COMISDI2VnI8vec128_tES3_EEP6MemoryS5_R5StateT_T0_.exit: ; preds = %35, %20
  %39 = phi %struct.Memory* [ %21, %20 ], [ %2, %35 ]
  ret %struct.Memory* %39
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jae_.L_48d1f8(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
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

; Function Attrs: nounwind
define %struct.Memory* @routine_addl_0x11bdc__rax____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = load i64, i64* %RAX, align 8
  %5 = add i64 %4, 72668
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
define %struct.Memory* @routine_jne_.L_48d204(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_cmpl__0x1__0x11c00__rax_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = add i64 %3, 72704
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

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpq__0x0__MINUS0x40__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -64
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
define %struct.Memory* @routine_je_.L_48d204(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_je_.L_48d31d(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_je_.L_48d235(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_testb__0x1___cl(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %CL = bitcast %union.anon* %3 to i8*
  %4 = load i8, i8* %CL, align 1
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 3
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
define %struct.Memory* @routine_jne_.L_48d26c(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jmpq_.L_48d31d(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jne_.L_48d25d(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jne_.L_48d31d(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jmpq_.L_48d26c(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
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
define %struct.Memory* @routine_movl_MINUS0xbc__rbp____esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -188
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
define %struct.Memory* @routine_je_.L_48d318(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_je_.L_48d2b6(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jne_.L_48d2ed(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jmpq_.L_48d313(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jne_.L_48d2de(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jne_.L_48d313(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jmpq_.L_48d2ed(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_callq_.field_flag_inference(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_cmpl_0x214__rcx____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %4 = load i32, i32* %EAX, align 4
  %5 = load i64, i64* %RCX, align 8
  %6 = add i64 %5, 532
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
define %struct.Memory* @routine_je_.L_48d30e(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jmpq_.L_48d318(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movsd__xmm0____rax_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = bitcast i64* %RAX to i64**
  %4 = load i64*, i64** %3, align 8
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 0
  %8 = load i64, i64* %7, align 1
  store i64 %8, i64* %4, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x1__MINUS0x4__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -4
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  store i32 1, i32* %7, align 4
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
define %struct.Memory* @routine_addq__0xc0___rsp(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %3 = load i64, i64* %RSP, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 7
  store i64 %5, i64* %PC, align 8
  %6 = add i64 %3, 192
  store i64 %6, i64* %RSP, align 8
  %7 = icmp ugt i64 %3, -193
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
