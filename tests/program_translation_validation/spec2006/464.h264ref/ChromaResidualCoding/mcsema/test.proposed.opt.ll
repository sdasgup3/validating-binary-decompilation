; ModuleID = 'mcsema/test.proposed.inline.ll'
source_filename = "llvm-link"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu-elf"

%__bss_start_type = type <{ [8 x i8] }>
%G_0x6cb900_type = type <{ [8 x i8] }>
%G_0x6f6f90_type = type <{ [8 x i8] }>
%G_0x70fcf0_type = type <{ [8 x i8] }>
%G__0x4b8e40_type = type <{ [8 x i8] }>
%G__0x6d2ec0_type = type <{ [8 x i8] }>
%G__0x6d40f0_type = type <{ [8 x i8] }>
%G__0x6f6fa0_type = type <{ [8 x i8] }>
%G__0x6f8f20_type = type <{ [8 x i8] }>
%G__0x722ff0_type = type <{ [8 x i8] }>
%G__0x725610_type = type <{ [8 x i8] }>
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
@G__0x4b8e40 = global %G__0x4b8e40_type zeroinitializer
@G__0x6d2ec0 = global %G__0x6d2ec0_type zeroinitializer
@G__0x6d40f0 = global %G__0x6d40f0_type zeroinitializer
@G__0x6f6fa0 = global %G__0x6f6fa0_type zeroinitializer
@G__0x6f8f20 = global %G__0x6f8f20_type zeroinitializer
@G__0x722ff0 = global %G__0x722ff0_type zeroinitializer
@G__0x725610 = global %G__0x725610_type zeroinitializer

; Function Attrs: nounwind readnone
declare i32 @llvm.ctpop.i32(i32) #0

declare extern_weak x86_64_sysvcc i64 @memcpy(i64, i64, i64)

declare %struct.Memory* @__remill_function_call(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr

declare %struct.Memory* @sub_440c40.SetModesAndRefframe(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_43fcc0.ChromaPrediction4x4(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_40d2b0.dct_chroma_sp(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_4074c0.dct_chroma(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

; Function Attrs: alwaysinline
define %struct.Memory* @ChromaResidualCoding(%struct.State* noalias, i64, %struct.Memory* noalias) local_unnamed_addr #1 {
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
  %11 = add i64 %7, -360
  store i64 %11, i64* %6, align 8
  %12 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %13 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %14 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  %15 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %16 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %17 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %18 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX.i1788 = bitcast %union.anon* %18 to i32*
  %RAX.i1789 = getelementptr inbounds %union.anon, %union.anon* %18, i64 0, i32 0
  store i64 0, i64* %RAX.i1789, align 8
  store i8 0, i8* %12, align 1
  store i8 1, i8* %13, align 1
  store i8 1, i8* %15, align 1
  store i8 0, i8* %16, align 1
  store i8 0, i8* %17, align 1
  store i8 0, i8* %14, align 1
  %AL.i1785 = bitcast %union.anon* %18 to i8*
  %19 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %CL.i1786 = bitcast %union.anon* %19 to i8*
  store i8 0, i8* %CL.i1786, align 1
  %RDI.i1782 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %20 = add i64 %7, -16
  %21 = load i64, i64* %RDI.i1782, align 8
  %22 = add i64 %10, 18
  store i64 %22, i64* %3, align 8
  %23 = inttoptr i64 %20 to i64*
  store i64 %21, i64* %23, align 8
  %24 = load i64, i64* %3, align 8
  %25 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*), align 8
  store i64 %25, i64* %RDI.i1782, align 8
  %26 = add i64 %25, 14168
  %27 = add i64 %24, 15
  store i64 %27, i64* %3, align 8
  %28 = inttoptr i64 %26 to i64*
  %29 = load i64, i64* %28, align 8
  store i64 %29, i64* %RDI.i1782, align 8
  %30 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %RDX.i1776 = getelementptr inbounds %union.anon, %union.anon* %30, i64 0, i32 0
  store i64 %25, i64* %RDX.i1776, align 8
  %31 = add i64 %25, 12
  %32 = add i64 %24, 27
  store i64 %32, i64* %3, align 8
  %33 = inttoptr i64 %31 to i32*
  %34 = load i32, i32* %33, align 4
  %35 = sext i32 %34 to i64
  %36 = mul nsw i64 %35, 632
  store i64 %36, i64* %RDX.i1776, align 8
  %37 = lshr i64 %36, 63
  %38 = add i64 %36, %29
  store i64 %38, i64* %RDI.i1782, align 8
  %39 = icmp ult i64 %38, %29
  %40 = icmp ult i64 %38, %36
  %41 = or i1 %39, %40
  %42 = zext i1 %41 to i8
  store i8 %42, i8* %12, align 1
  %43 = trunc i64 %38 to i32
  %44 = and i32 %43, 255
  %45 = tail call i32 @llvm.ctpop.i32(i32 %44)
  %46 = trunc i32 %45 to i8
  %47 = and i8 %46, 1
  %48 = xor i8 %47, 1
  store i8 %48, i8* %13, align 1
  %49 = xor i64 %36, %29
  %50 = xor i64 %49, %38
  %51 = lshr i64 %50, 4
  %52 = trunc i64 %51 to i8
  %53 = and i8 %52, 1
  store i8 %53, i8* %14, align 1
  %54 = icmp eq i64 %38, 0
  %55 = zext i1 %54 to i8
  store i8 %55, i8* %15, align 1
  %56 = lshr i64 %38, 63
  %57 = trunc i64 %56 to i8
  store i8 %57, i8* %16, align 1
  %58 = lshr i64 %29, 63
  %59 = xor i64 %56, %58
  %60 = xor i64 %56, %37
  %61 = add nuw nsw i64 %59, %60
  %62 = icmp eq i64 %61, 2
  %63 = zext i1 %62 to i8
  store i8 %63, i8* %17, align 1
  %64 = add i64 %38, 72
  %65 = add i64 %24, 41
  store i64 %65, i64* %3, align 8
  %66 = inttoptr i64 %64 to i32*
  %67 = load i32, i32* %66, align 4
  store i8 0, i8* %12, align 1
  %68 = and i32 %67, 255
  %69 = tail call i32 @llvm.ctpop.i32(i32 %68)
  %70 = trunc i32 %69 to i8
  %71 = and i8 %70, 1
  %72 = xor i8 %71, 1
  store i8 %72, i8* %13, align 1
  store i8 0, i8* %14, align 1
  %73 = icmp eq i32 %67, 0
  %74 = zext i1 %73 to i8
  store i8 %74, i8* %15, align 1
  %75 = lshr i32 %67, 31
  %76 = trunc i32 %75 to i8
  store i8 %76, i8* %16, align 1
  store i8 0, i8* %17, align 1
  %77 = load i64, i64* %RBP.i, align 8
  %78 = add i64 %77, -273
  %79 = load i8, i8* %CL.i1786, align 1
  %80 = add i64 %24, 47
  store i64 %80, i64* %3, align 8
  %81 = inttoptr i64 %78 to i8*
  store i8 %79, i8* %81, align 1
  %82 = load i64, i64* %3, align 8
  %83 = add i64 %82, 65
  %84 = add i64 %82, 6
  %85 = load i8, i8* %15, align 1
  %86 = icmp eq i8 %85, 0
  %87 = select i1 %86, i64 %83, i64 %84
  store i64 %87, i64* %3, align 8
  br i1 %86, label %entry.block_.L_4415c3_crit_edge, label %block_441588

entry.block_.L_4415c3_crit_edge:                  ; preds = %entry
  %.pre150 = getelementptr inbounds %union.anon, %union.anon* %19, i64 0, i32 0
  br label %block_.L_4415c3

block_441588:                                     ; preds = %entry
  store i8 1, i8* %AL.i1785, align 1
  %RCX.i1759 = getelementptr inbounds %union.anon, %union.anon* %19, i64 0, i32 0
  %88 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*), align 8
  store i64 %88, i64* %RCX.i1759, align 8
  %89 = add i64 %88, 24
  %90 = add i64 %87, 14
  store i64 %90, i64* %3, align 8
  %91 = inttoptr i64 %89 to i32*
  %92 = load i32, i32* %91, align 4
  store i8 0, i8* %12, align 1
  %93 = and i32 %92, 255
  %94 = tail call i32 @llvm.ctpop.i32(i32 %93)
  %95 = trunc i32 %94 to i8
  %96 = and i8 %95, 1
  %97 = xor i8 %96, 1
  store i8 %97, i8* %13, align 1
  store i8 0, i8* %14, align 1
  %98 = icmp eq i32 %92, 0
  %99 = zext i1 %98 to i8
  store i8 %99, i8* %15, align 1
  %100 = lshr i32 %92, 31
  %101 = trunc i32 %100 to i8
  store i8 %101, i8* %16, align 1
  store i8 0, i8* %17, align 1
  %102 = load i64, i64* %RBP.i, align 8
  %103 = add i64 %102, -274
  %104 = add i64 %87, 20
  store i64 %104, i64* %3, align 8
  %105 = inttoptr i64 %103 to i8*
  store i8 1, i8* %105, align 1
  %106 = load i64, i64* %3, align 8
  %107 = load i8, i8* %15, align 1
  %108 = icmp ne i8 %107, 0
  %.v222 = select i1 %108, i64 27, i64 6
  %109 = add i64 %106, %.v222
  store i64 %109, i64* %3, align 8
  %cmpBr_44159c = icmp eq i8 %107, 1
  br i1 %cmpBr_44159c, label %block_.L_4415b7, label %block_4415a2

block_4415a2:                                     ; preds = %block_441588
  %110 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*), align 8
  store i64 %110, i64* %RAX.i1789, align 8
  %111 = add i64 %110, 24
  %112 = add i64 %109, 12
  store i64 %112, i64* %3, align 8
  %113 = inttoptr i64 %111 to i32*
  %114 = load i32, i32* %113, align 4
  %115 = add i32 %114, -3
  %116 = icmp ult i32 %114, 3
  %117 = zext i1 %116 to i8
  store i8 %117, i8* %12, align 1
  %118 = and i32 %115, 255
  %119 = tail call i32 @llvm.ctpop.i32(i32 %118)
  %120 = trunc i32 %119 to i8
  %121 = and i8 %120, 1
  %122 = xor i8 %121, 1
  store i8 %122, i8* %13, align 1
  %123 = xor i32 %115, %114
  %124 = lshr i32 %123, 4
  %125 = trunc i32 %124 to i8
  %126 = and i8 %125, 1
  store i8 %126, i8* %14, align 1
  %127 = icmp eq i32 %115, 0
  %128 = zext i1 %127 to i8
  store i8 %128, i8* %15, align 1
  %129 = lshr i32 %115, 31
  %130 = trunc i32 %129 to i8
  store i8 %130, i8* %16, align 1
  %131 = lshr i32 %114, 31
  %132 = xor i32 %129, %131
  %133 = add nuw nsw i32 %132, %131
  %134 = icmp eq i32 %133, 2
  %135 = zext i1 %134 to i8
  store i8 %135, i8* %17, align 1
  store i8 %128, i8* %CL.i1786, align 1
  %136 = load i64, i64* %RBP.i, align 8
  %137 = add i64 %136, -274
  %138 = add i64 %109, 21
  store i64 %138, i64* %3, align 8
  %139 = inttoptr i64 %137 to i8*
  store i8 %128, i8* %139, align 1
  %.pre = load i64, i64* %3, align 8
  br label %block_.L_4415b7

block_.L_4415b7:                                  ; preds = %block_4415a2, %block_441588
  %140 = phi i64 [ %.pre, %block_4415a2 ], [ %109, %block_441588 ]
  %141 = load i64, i64* %RBP.i, align 8
  %142 = add i64 %141, -274
  %143 = add i64 %140, 6
  store i64 %143, i64* %3, align 8
  %144 = inttoptr i64 %142 to i8*
  %145 = load i8, i8* %144, align 1
  store i8 %145, i8* %AL.i1785, align 1
  %146 = add i64 %141, -273
  %147 = add i64 %140, 12
  store i64 %147, i64* %3, align 8
  %148 = inttoptr i64 %146 to i8*
  store i8 %145, i8* %148, align 1
  %.pre119 = load i64, i64* %3, align 8
  br label %block_.L_4415c3

block_.L_4415c3:                                  ; preds = %entry.block_.L_4415c3_crit_edge, %block_.L_4415b7
  %RCX.i1734.pre-phi = phi i64* [ %.pre150, %entry.block_.L_4415c3_crit_edge ], [ %RCX.i1759, %block_.L_4415b7 ]
  %149 = phi i64 [ %83, %entry.block_.L_4415c3_crit_edge ], [ %.pre119, %block_.L_4415b7 ]
  %150 = load i64, i64* %RBP.i, align 8
  %151 = add i64 %150, -273
  %152 = add i64 %149, 6
  store i64 %152, i64* %3, align 8
  %153 = inttoptr i64 %151 to i8*
  %154 = load i8, i8* %153, align 1
  store i64 ptrtoint (%G__0x4b8e40_type* @G__0x4b8e40 to i64), i64* %RCX.i1734.pre-phi, align 8
  store i64 192, i64* %RDX.i1776, align 8
  %155 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0
  %RSI.i1729 = getelementptr inbounds %union.anon, %union.anon* %155, i64 0, i32 0
  %156 = add i64 %150, -256
  store i64 %156, i64* %RSI.i1729, align 8
  %157 = and i8 %154, 1
  store i8 %157, i8* %AL.i1785, align 1
  store i8 0, i8* %12, align 1
  %158 = zext i8 %157 to i32
  %159 = tail call i32 @llvm.ctpop.i32(i32 %158)
  %160 = trunc i32 %159 to i8
  %161 = xor i8 %160, 1
  store i8 %161, i8* %13, align 1
  %162 = xor i8 %157, 1
  store i8 %162, i8* %15, align 1
  store i8 0, i8* %16, align 1
  store i8 0, i8* %17, align 1
  store i8 0, i8* %14, align 1
  %163 = zext i8 %157 to i64
  store i64 %163, i64* %RDI.i1782, align 8
  %164 = add i64 %150, -52
  %165 = zext i8 %157 to i32
  %166 = add i64 %149, 36
  store i64 %166, i64* %3, align 8
  %167 = inttoptr i64 %164 to i32*
  store i32 %165, i32* %167, align 4
  %R8.i1720 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0, i32 0
  %168 = load i64, i64* %3, align 8
  %169 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*), align 8
  store i64 %169, i64* %R8.i1720, align 8
  %170 = add i64 %169, 72700
  %171 = add i64 %168, 15
  store i64 %171, i64* %3, align 8
  %172 = inttoptr i64 %170 to i32*
  %173 = load i32, i32* %172, align 4
  %174 = add i32 %173, -1
  %175 = icmp eq i32 %173, 0
  %176 = zext i1 %175 to i8
  store i8 %176, i8* %12, align 1
  %177 = and i32 %174, 255
  %178 = tail call i32 @llvm.ctpop.i32(i32 %177)
  %179 = trunc i32 %178 to i8
  %180 = and i8 %179, 1
  %181 = xor i8 %180, 1
  store i8 %181, i8* %13, align 1
  %182 = xor i32 %174, %173
  %183 = lshr i32 %182, 4
  %184 = trunc i32 %183 to i8
  %185 = and i8 %184, 1
  store i8 %185, i8* %14, align 1
  %186 = icmp eq i32 %174, 0
  %187 = zext i1 %186 to i8
  store i8 %187, i8* %15, align 1
  %188 = lshr i32 %174, 31
  %189 = trunc i32 %188 to i8
  store i8 %189, i8* %16, align 1
  %190 = lshr i32 %173, 31
  %191 = xor i32 %188, %190
  %192 = add nuw nsw i32 %191, %190
  %193 = icmp eq i32 %192, 2
  %194 = zext i1 %193 to i8
  store i8 %194, i8* %17, align 1
  %195 = load i64, i64* %RBP.i, align 8
  %196 = add i64 %195, -56
  %197 = add i64 %168, 21
  store i64 %197, i64* %3, align 8
  %198 = inttoptr i64 %196 to i32*
  store i32 %174, i32* %198, align 4
  %199 = load i64, i64* %RSI.i1729, align 8
  %200 = load i64, i64* %3, align 8
  store i64 %199, i64* %RDI.i1782, align 8
  %201 = load i64, i64* %RCX.i1734.pre-phi, align 8
  store i64 %201, i64* %RSI.i1729, align 8
  %202 = add i64 %200, -263372
  %203 = add i64 %200, 11
  %204 = load i64, i64* %6, align 8
  %205 = add i64 %204, -8
  %206 = inttoptr i64 %205 to i64*
  store i64 %203, i64* %206, align 8
  store i64 %205, i64* %6, align 8
  store i64 %202, i64* %3, align 8
  %207 = tail call %struct.Memory* @__remill_function_call(%struct.State* nonnull %0, i64 ptrtoint (i64 (i64, i64, i64)* @memcpy to i64), %struct.Memory* %2)
  %208 = load i64, i64* %RBP.i, align 8
  %209 = add i64 %208, -8
  %210 = load i64, i64* %3, align 8
  %211 = add i64 %210, 4
  store i64 %211, i64* %3, align 8
  %212 = inttoptr i64 %209 to i64*
  %213 = load i64, i64* %212, align 8
  store i64 %213, i64* %RCX.i1734.pre-phi, align 8
  %214 = add i64 %210, 10
  store i64 %214, i64* %3, align 8
  %215 = inttoptr i64 %213 to i32*
  store i32 0, i32* %215, align 4
  %216 = load i64, i64* %RBP.i, align 8
  %217 = add i64 %216, -12
  %218 = load i64, i64* %3, align 8
  %219 = add i64 %218, 7
  store i64 %219, i64* %3, align 8
  %220 = inttoptr i64 %217 to i32*
  store i32 0, i32* %220, align 4
  %R9.i = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 19, i32 0, i32 0
  %221 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 21, i32 0, i32 0
  %222 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 23, i32 0
  %R11W.i1592 = bitcast %union.anon* %222 to i16*
  %223 = bitcast i64* %6 to i32**
  %EDX.i1028 = bitcast %union.anon* %30 to i32*
  %DX.i1307 = bitcast %union.anon* %30 to i16*
  %.pre120 = load i64, i64* %3, align 8
  br label %block_.L_441618

block_.L_441618:                                  ; preds = %block_.L_441df4, %block_.L_4415c3
  %224 = phi i64 [ %.pre120, %block_.L_4415c3 ], [ %3120, %block_.L_441df4 ]
  %225 = load i64, i64* %RBP.i, align 8
  %226 = add i64 %225, -12
  %227 = add i64 %224, 4
  store i64 %227, i64* %3, align 8
  %228 = inttoptr i64 %226 to i32*
  %229 = load i32, i32* %228, align 4
  %230 = add i32 %229, -2
  %231 = icmp ult i32 %229, 2
  %232 = zext i1 %231 to i8
  store i8 %232, i8* %12, align 1
  %233 = and i32 %230, 255
  %234 = tail call i32 @llvm.ctpop.i32(i32 %233)
  %235 = trunc i32 %234 to i8
  %236 = and i8 %235, 1
  %237 = xor i8 %236, 1
  store i8 %237, i8* %13, align 1
  %238 = xor i32 %230, %229
  %239 = lshr i32 %238, 4
  %240 = trunc i32 %239 to i8
  %241 = and i8 %240, 1
  store i8 %241, i8* %14, align 1
  %242 = icmp eq i32 %230, 0
  %243 = zext i1 %242 to i8
  store i8 %243, i8* %15, align 1
  %244 = lshr i32 %230, 31
  %245 = trunc i32 %244 to i8
  store i8 %245, i8* %16, align 1
  %246 = lshr i32 %229, 31
  %247 = xor i32 %244, %246
  %248 = add nuw nsw i32 %247, %246
  %249 = icmp eq i32 %248, 2
  %250 = zext i1 %249 to i8
  store i8 %250, i8* %17, align 1
  %251 = icmp ne i8 %245, 0
  %252 = xor i1 %251, %249
  %.v160 = select i1 %252, i64 10, i64 2031
  %253 = add i64 %224, %.v160
  store i64 %253, i64* %3, align 8
  br i1 %252, label %block_441622, label %block_.L_441e07

block_441622:                                     ; preds = %block_.L_441618
  %254 = add i64 %225, -16
  %255 = add i64 %253, 7
  store i64 %255, i64* %3, align 8
  %256 = inttoptr i64 %254 to i32*
  store i32 0, i32* %256, align 4
  %257 = load i64, i64* %RBP.i, align 8
  %258 = add i64 %257, -20
  %259 = load i64, i64* %3, align 8
  %260 = add i64 %259, 7
  store i64 %260, i64* %3, align 8
  %261 = inttoptr i64 %258 to i32*
  store i32 0, i32* %261, align 4
  %.pre132 = load i64, i64* %3, align 8
  br label %block_.L_441630

block_.L_441630:                                  ; preds = %block_.L_4416f7, %block_441622
  %262 = phi i64 [ %581, %block_.L_4416f7 ], [ %.pre132, %block_441622 ]
  %263 = load i64, i64* %RBP.i, align 8
  %264 = add i64 %263, -20
  %265 = add i64 %262, 3
  store i64 %265, i64* %3, align 8
  %266 = inttoptr i64 %264 to i32*
  %267 = load i32, i32* %266, align 4
  %268 = zext i32 %267 to i64
  store i64 %268, i64* %RAX.i1789, align 8
  %269 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*), align 8
  store i64 %269, i64* %RCX.i1734.pre-phi, align 8
  %270 = add i64 %269, 72712
  %271 = add i64 %262, 17
  store i64 %271, i64* %3, align 8
  %272 = inttoptr i64 %270 to i32*
  %273 = load i32, i32* %272, align 4
  %274 = sub i32 %267, %273
  %275 = icmp ult i32 %267, %273
  %276 = zext i1 %275 to i8
  store i8 %276, i8* %12, align 1
  %277 = and i32 %274, 255
  %278 = tail call i32 @llvm.ctpop.i32(i32 %277)
  %279 = trunc i32 %278 to i8
  %280 = and i8 %279, 1
  %281 = xor i8 %280, 1
  store i8 %281, i8* %13, align 1
  %282 = xor i32 %273, %267
  %283 = xor i32 %282, %274
  %284 = lshr i32 %283, 4
  %285 = trunc i32 %284 to i8
  %286 = and i8 %285, 1
  store i8 %286, i8* %14, align 1
  %287 = icmp eq i32 %274, 0
  %288 = zext i1 %287 to i8
  store i8 %288, i8* %15, align 1
  %289 = lshr i32 %274, 31
  %290 = trunc i32 %289 to i8
  store i8 %290, i8* %16, align 1
  %291 = lshr i32 %267, 31
  %292 = lshr i32 %273, 31
  %293 = xor i32 %292, %291
  %294 = xor i32 %289, %291
  %295 = add nuw nsw i32 %294, %293
  %296 = icmp eq i32 %295, 2
  %297 = zext i1 %296 to i8
  store i8 %297, i8* %17, align 1
  %298 = icmp ne i8 %290, 0
  %299 = xor i1 %298, %296
  %.v169 = select i1 %299, i64 23, i64 218
  %300 = add i64 %262, %.v169
  store i64 %300, i64* %3, align 8
  br i1 %299, label %block_441647, label %block_.L_44170a

block_441647:                                     ; preds = %block_.L_441630
  %301 = add i64 %263, -24
  %302 = add i64 %300, 7
  store i64 %302, i64* %3, align 8
  %303 = inttoptr i64 %301 to i32*
  store i32 0, i32* %303, align 4
  %.pre149 = load i64, i64* %3, align 8
  br label %block_.L_44164e

block_.L_44164e:                                  ; preds = %block_441665, %block_441647
  %304 = phi i64 [ %552, %block_441665 ], [ %.pre149, %block_441647 ]
  %305 = load i64, i64* %RBP.i, align 8
  %306 = add i64 %305, -24
  %307 = add i64 %304, 3
  store i64 %307, i64* %3, align 8
  %308 = inttoptr i64 %306 to i32*
  %309 = load i32, i32* %308, align 4
  %310 = zext i32 %309 to i64
  store i64 %310, i64* %RAX.i1789, align 8
  %311 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*), align 8
  store i64 %311, i64* %RCX.i1734.pre-phi, align 8
  %312 = add i64 %311, 72708
  %313 = add i64 %304, 17
  store i64 %313, i64* %3, align 8
  %314 = inttoptr i64 %312 to i32*
  %315 = load i32, i32* %314, align 4
  %316 = sub i32 %309, %315
  %317 = icmp ult i32 %309, %315
  %318 = zext i1 %317 to i8
  store i8 %318, i8* %12, align 1
  %319 = and i32 %316, 255
  %320 = tail call i32 @llvm.ctpop.i32(i32 %319)
  %321 = trunc i32 %320 to i8
  %322 = and i8 %321, 1
  %323 = xor i8 %322, 1
  store i8 %323, i8* %13, align 1
  %324 = xor i32 %315, %309
  %325 = xor i32 %324, %316
  %326 = lshr i32 %325, 4
  %327 = trunc i32 %326 to i8
  %328 = and i8 %327, 1
  store i8 %328, i8* %14, align 1
  %329 = icmp eq i32 %316, 0
  %330 = zext i1 %329 to i8
  store i8 %330, i8* %15, align 1
  %331 = lshr i32 %316, 31
  %332 = trunc i32 %331 to i8
  store i8 %332, i8* %16, align 1
  %333 = lshr i32 %309, 31
  %334 = lshr i32 %315, 31
  %335 = xor i32 %334, %333
  %336 = xor i32 %331, %333
  %337 = add nuw nsw i32 %336, %335
  %338 = icmp eq i32 %337, 2
  %339 = zext i1 %338 to i8
  store i8 %339, i8* %17, align 1
  %340 = icmp ne i8 %332, 0
  %341 = xor i1 %340, %338
  %.v157 = select i1 %341, i64 23, i64 169
  %342 = add i64 %304, %.v157
  store i64 %342, i64* %3, align 8
  br i1 %341, label %block_441665, label %block_.L_4416f7

block_441665:                                     ; preds = %block_.L_44164e
  %343 = add i64 %305, -42
  store i64 %343, i64* %RSI.i1729, align 8
  %344 = add i64 %305, -36
  store i64 %344, i64* %RDX.i1776, align 8
  %345 = add i64 %305, -40
  store i64 %345, i64* %RCX.i1734.pre-phi, align 8
  %346 = add i64 %305, -44
  store i64 %346, i64* %R8.i1720, align 8
  %347 = add i64 %305, -46
  store i64 %347, i64* %R9.i, align 8
  %348 = add i64 %305, -256
  store i64 %348, i64* %RAX.i1789, align 8
  %349 = add i64 %305, -56
  %350 = add i64 %342, 31
  store i64 %350, i64* %3, align 8
  %351 = inttoptr i64 %349 to i32*
  %352 = load i32, i32* %351, align 4
  %353 = sext i32 %352 to i64
  %354 = shl nsw i64 %353, 6
  store i64 %354, i64* %RDI.i1782, align 8
  %355 = add i64 %354, %348
  store i64 %355, i64* %RAX.i1789, align 8
  %356 = icmp ult i64 %355, %348
  %357 = icmp ult i64 %355, %354
  %358 = or i1 %356, %357
  %359 = zext i1 %358 to i8
  store i8 %359, i8* %12, align 1
  %360 = trunc i64 %355 to i32
  %361 = and i32 %360, 255
  %362 = tail call i32 @llvm.ctpop.i32(i32 %361)
  %363 = trunc i32 %362 to i8
  %364 = and i8 %363, 1
  %365 = xor i8 %364, 1
  store i8 %365, i8* %13, align 1
  %366 = xor i64 %348, %355
  %367 = lshr i64 %366, 4
  %368 = trunc i64 %367 to i8
  %369 = and i8 %368, 1
  store i8 %369, i8* %14, align 1
  %370 = icmp eq i64 %355, 0
  %371 = zext i1 %370 to i8
  store i8 %371, i8* %15, align 1
  %372 = lshr i64 %355, 63
  %373 = trunc i64 %372 to i8
  store i8 %373, i8* %16, align 1
  %374 = lshr i64 %348, 63
  %375 = lshr i64 %353, 57
  %376 = and i64 %375, 1
  %377 = xor i64 %372, %374
  %378 = xor i64 %372, %376
  %379 = add nuw nsw i64 %377, %378
  %380 = icmp eq i64 %379, 2
  %381 = zext i1 %380 to i8
  store i8 %381, i8* %17, align 1
  %382 = add i64 %305, -20
  %383 = add i64 %342, 42
  store i64 %383, i64* %3, align 8
  %384 = inttoptr i64 %382 to i32*
  %385 = load i32, i32* %384, align 4
  %386 = sext i32 %385 to i64
  %387 = ashr i64 %386, 1
  %388 = lshr i64 %387, 1
  %389 = and i64 %388, 4294967295
  store i64 %389, i64* %221, align 8
  %sext = shl i64 %388, 32
  %390 = ashr exact i64 %sext, 28
  store i64 %390, i64* %RDI.i1782, align 8
  %391 = add i64 %390, %355
  store i64 %391, i64* %RAX.i1789, align 8
  %392 = icmp ult i64 %391, %355
  %393 = icmp ult i64 %391, %390
  %394 = or i1 %392, %393
  %395 = zext i1 %394 to i8
  store i8 %395, i8* %12, align 1
  %396 = trunc i64 %391 to i32
  %397 = and i32 %396, 255
  %398 = tail call i32 @llvm.ctpop.i32(i32 %397)
  %399 = trunc i32 %398 to i8
  %400 = and i8 %399, 1
  %401 = xor i8 %400, 1
  store i8 %401, i8* %13, align 1
  %402 = xor i64 %390, %355
  %403 = xor i64 %402, %391
  %404 = lshr i64 %403, 4
  %405 = trunc i64 %404 to i8
  %406 = and i8 %405, 1
  store i8 %406, i8* %14, align 1
  %407 = icmp eq i64 %391, 0
  %408 = zext i1 %407 to i8
  store i8 %408, i8* %15, align 1
  %409 = lshr i64 %391, 63
  %410 = trunc i64 %409 to i8
  store i8 %410, i8* %16, align 1
  %411 = lshr i64 %390, 63
  %412 = xor i64 %409, %372
  %413 = xor i64 %409, %411
  %414 = add nuw nsw i64 %412, %413
  %415 = icmp eq i64 %414, 2
  %416 = zext i1 %415 to i8
  store i8 %416, i8* %17, align 1
  %417 = load i64, i64* %RBP.i, align 8
  %418 = add i64 %417, -24
  %419 = add i64 %342, 60
  store i64 %419, i64* %3, align 8
  %420 = inttoptr i64 %418 to i32*
  %421 = load i32, i32* %420, align 4
  %422 = sext i32 %421 to i64
  %423 = ashr i64 %422, 1
  %424 = lshr i64 %423, 1
  %425 = trunc i64 %423 to i8
  %426 = and i8 %425, 1
  %427 = trunc i64 %424 to i32
  %428 = and i64 %424, 4294967295
  store i64 %428, i64* %221, align 8
  store i8 %426, i8* %12, align 1
  %429 = and i32 %427, 255
  %430 = tail call i32 @llvm.ctpop.i32(i32 %429)
  %431 = trunc i32 %430 to i8
  %432 = and i8 %431, 1
  %433 = xor i8 %432, 1
  store i8 %433, i8* %13, align 1
  store i8 0, i8* %14, align 1
  %434 = icmp eq i32 %427, 0
  %435 = zext i1 %434 to i8
  store i8 %435, i8* %15, align 1
  %436 = lshr i64 %423, 32
  %437 = trunc i64 %436 to i8
  %438 = and i8 %437, 1
  store i8 %438, i8* %16, align 1
  store i8 0, i8* %17, align 1
  %sext159 = shl i64 %424, 32
  %439 = ashr exact i64 %sext159, 32
  store i64 %439, i64* %RDI.i1782, align 8
  %440 = ashr exact i64 %sext159, 30
  %441 = add i64 %391, %440
  %442 = add i64 %342, 71
  store i64 %442, i64* %3, align 8
  %443 = inttoptr i64 %441 to i32*
  %444 = load i32, i32* %443, align 4
  %445 = zext i32 %444 to i64
  store i64 %445, i64* %221, align 8
  %446 = add i64 %417, -16
  %447 = add i64 %342, 75
  store i64 %447, i64* %3, align 8
  %448 = inttoptr i64 %446 to i32*
  store i32 %444, i32* %448, align 4
  %449 = load i64, i64* %RBP.i, align 8
  %450 = add i64 %449, -16
  %451 = load i64, i64* %3, align 8
  %452 = add i64 %451, 3
  store i64 %452, i64* %3, align 8
  %453 = inttoptr i64 %450 to i32*
  %454 = load i32, i32* %453, align 4
  %455 = zext i32 %454 to i64
  store i64 %455, i64* %RDI.i1782, align 8
  %456 = add i64 %451, -2672
  %457 = add i64 %451, 8
  %458 = load i64, i64* %6, align 8
  %459 = add i64 %458, -8
  %460 = inttoptr i64 %459 to i64*
  store i64 %457, i64* %460, align 8
  store i64 %459, i64* %6, align 8
  store i64 %456, i64* %3, align 8
  %call2_4416b3 = tail call %struct.Memory* @sub_440c40.SetModesAndRefframe(%struct.State* nonnull %0, i64 %456, %struct.Memory* %207)
  %461 = load i64, i64* %RBP.i, align 8
  %462 = add i64 %461, -12
  %463 = load i64, i64* %3, align 8
  %464 = add i64 %463, 3
  store i64 %464, i64* %3, align 8
  %465 = inttoptr i64 %462 to i32*
  %466 = load i32, i32* %465, align 4
  %467 = zext i32 %466 to i64
  store i64 %467, i64* %RDI.i1782, align 8
  %468 = add i64 %461, -24
  %469 = add i64 %463, 6
  store i64 %469, i64* %3, align 8
  %470 = inttoptr i64 %468 to i32*
  %471 = load i32, i32* %470, align 4
  %472 = zext i32 %471 to i64
  store i64 %472, i64* %RSI.i1729, align 8
  %473 = add i64 %461, -20
  %474 = add i64 %463, 9
  store i64 %474, i64* %3, align 8
  %475 = inttoptr i64 %473 to i32*
  %476 = load i32, i32* %475, align 4
  %477 = zext i32 %476 to i64
  store i64 %477, i64* %RDX.i1776, align 8
  %478 = add i64 %461, -42
  %479 = add i64 %463, 13
  store i64 %479, i64* %3, align 8
  %480 = inttoptr i64 %478 to i16*
  %481 = load i16, i16* %480, align 2
  %482 = sext i16 %481 to i64
  %483 = and i64 %482, 4294967295
  store i64 %483, i64* %RCX.i1734.pre-phi, align 8
  %484 = add i64 %461, -36
  %485 = add i64 %463, 17
  store i64 %485, i64* %3, align 8
  %486 = inttoptr i64 %484 to i32*
  %487 = load i32, i32* %486, align 4
  %488 = zext i32 %487 to i64
  store i64 %488, i64* %R8.i1720, align 8
  %489 = add i64 %461, -40
  %490 = add i64 %463, 21
  store i64 %490, i64* %3, align 8
  %491 = inttoptr i64 %489 to i32*
  %492 = load i32, i32* %491, align 4
  %493 = zext i32 %492 to i64
  store i64 %493, i64* %R9.i, align 8
  %494 = add i64 %461, -44
  %495 = add i64 %463, 26
  store i64 %495, i64* %3, align 8
  %496 = inttoptr i64 %494 to i16*
  %497 = load i16, i16* %496, align 2
  store i16 %497, i16* %R11W.i1592, align 2
  %498 = sext i16 %497 to i64
  %499 = and i64 %498, 4294967295
  store i64 %499, i64* %221, align 8
  %500 = load i32*, i32** %223, align 8
  %501 = sext i16 %497 to i32
  %502 = add i64 %463, 34
  store i64 %502, i64* %3, align 8
  store i32 %501, i32* %500, align 4
  %503 = load i64, i64* %RBP.i, align 8
  %504 = add i64 %503, -46
  %505 = load i64, i64* %3, align 8
  %506 = add i64 %505, 5
  store i64 %506, i64* %3, align 8
  %507 = inttoptr i64 %504 to i16*
  %508 = load i16, i16* %507, align 2
  %509 = sext i16 %508 to i64
  %510 = and i64 %509, 4294967295
  store i64 %510, i64* %221, align 8
  %511 = load i64, i64* %6, align 8
  %512 = add i64 %511, 8
  %513 = sext i16 %508 to i32
  %514 = add i64 %505, 10
  store i64 %514, i64* %3, align 8
  %515 = inttoptr i64 %512 to i32*
  store i32 %513, i32* %515, align 4
  %516 = load i64, i64* %3, align 8
  %517 = add i64 %516, -6692
  %518 = add i64 %516, 5
  %519 = load i64, i64* %6, align 8
  %520 = add i64 %519, -8
  %521 = inttoptr i64 %520 to i64*
  store i64 %518, i64* %521, align 8
  store i64 %520, i64* %6, align 8
  store i64 %517, i64* %3, align 8
  %call2_4416e4 = tail call %struct.Memory* @sub_43fcc0.ChromaPrediction4x4(%struct.State* nonnull %0, i64 %517, %struct.Memory* %207)
  %522 = load i64, i64* %RBP.i, align 8
  %523 = add i64 %522, -24
  %524 = load i64, i64* %3, align 8
  %525 = add i64 %524, 3
  store i64 %525, i64* %3, align 8
  %526 = inttoptr i64 %523 to i32*
  %527 = load i32, i32* %526, align 4
  %528 = add i32 %527, 4
  %529 = zext i32 %528 to i64
  store i64 %529, i64* %RAX.i1789, align 8
  %530 = icmp ugt i32 %527, -5
  %531 = zext i1 %530 to i8
  store i8 %531, i8* %12, align 1
  %532 = and i32 %528, 255
  %533 = tail call i32 @llvm.ctpop.i32(i32 %532)
  %534 = trunc i32 %533 to i8
  %535 = and i8 %534, 1
  %536 = xor i8 %535, 1
  store i8 %536, i8* %13, align 1
  %537 = xor i32 %528, %527
  %538 = lshr i32 %537, 4
  %539 = trunc i32 %538 to i8
  %540 = and i8 %539, 1
  store i8 %540, i8* %14, align 1
  %541 = icmp eq i32 %528, 0
  %542 = zext i1 %541 to i8
  store i8 %542, i8* %15, align 1
  %543 = lshr i32 %528, 31
  %544 = trunc i32 %543 to i8
  store i8 %544, i8* %16, align 1
  %545 = lshr i32 %527, 31
  %546 = xor i32 %543, %545
  %547 = add nuw nsw i32 %546, %543
  %548 = icmp eq i32 %547, 2
  %549 = zext i1 %548 to i8
  store i8 %549, i8* %17, align 1
  %550 = add i64 %524, 9
  store i64 %550, i64* %3, align 8
  store i32 %528, i32* %526, align 4
  %551 = load i64, i64* %3, align 8
  %552 = add i64 %551, -164
  store i64 %552, i64* %3, align 8
  br label %block_.L_44164e

block_.L_4416f7:                                  ; preds = %block_.L_44164e
  %553 = add i64 %305, -20
  %554 = add i64 %342, 8
  store i64 %554, i64* %3, align 8
  %555 = inttoptr i64 %553 to i32*
  %556 = load i32, i32* %555, align 4
  %557 = add i32 %556, 4
  %558 = zext i32 %557 to i64
  store i64 %558, i64* %RAX.i1789, align 8
  %559 = icmp ugt i32 %556, -5
  %560 = zext i1 %559 to i8
  store i8 %560, i8* %12, align 1
  %561 = and i32 %557, 255
  %562 = tail call i32 @llvm.ctpop.i32(i32 %561)
  %563 = trunc i32 %562 to i8
  %564 = and i8 %563, 1
  %565 = xor i8 %564, 1
  store i8 %565, i8* %13, align 1
  %566 = xor i32 %557, %556
  %567 = lshr i32 %566, 4
  %568 = trunc i32 %567 to i8
  %569 = and i8 %568, 1
  store i8 %569, i8* %14, align 1
  %570 = icmp eq i32 %557, 0
  %571 = zext i1 %570 to i8
  store i8 %571, i8* %15, align 1
  %572 = lshr i32 %557, 31
  %573 = trunc i32 %572 to i8
  store i8 %573, i8* %16, align 1
  %574 = lshr i32 %556, 31
  %575 = xor i32 %572, %574
  %576 = add nuw nsw i32 %575, %572
  %577 = icmp eq i32 %576, 2
  %578 = zext i1 %577 to i8
  store i8 %578, i8* %17, align 1
  %579 = add i64 %342, 14
  store i64 %579, i64* %3, align 8
  store i32 %557, i32* %555, align 4
  %580 = load i64, i64* %3, align 8
  %581 = add i64 %580, -213
  store i64 %581, i64* %3, align 8
  br label %block_.L_441630

block_.L_44170a:                                  ; preds = %block_.L_441630
  store i64 %269, i64* %RAX.i1789, align 8
  %582 = add i64 %269, 72392
  %583 = add i64 %300, 15
  store i64 %583, i64* %3, align 8
  %584 = inttoptr i64 %582 to i32*
  %585 = load i32, i32* %584, align 4
  store i8 0, i8* %12, align 1
  %586 = and i32 %585, 255
  %587 = tail call i32 @llvm.ctpop.i32(i32 %586)
  %588 = trunc i32 %587 to i8
  %589 = and i8 %588, 1
  %590 = xor i8 %589, 1
  store i8 %590, i8* %13, align 1
  store i8 0, i8* %14, align 1
  %591 = icmp eq i32 %585, 0
  %592 = zext i1 %591 to i8
  store i8 %592, i8* %15, align 1
  %593 = lshr i32 %585, 31
  %594 = trunc i32 %593 to i8
  store i8 %594, i8* %16, align 1
  store i8 0, i8* %17, align 1
  %.v170 = select i1 %591, i64 338, i64 21
  %595 = add i64 %300, %.v170
  store i64 %595, i64* %3, align 8
  br i1 %591, label %block_.L_44185c, label %block_44171f

block_44171f:                                     ; preds = %block_.L_44170a
  %596 = add i64 %263, -28
  %597 = add i64 %595, 7
  store i64 %597, i64* %3, align 8
  %598 = inttoptr i64 %596 to i32*
  store i32 0, i32* %598, align 4
  %.pre133 = load i64, i64* %3, align 8
  br label %block_.L_441726

block_.L_441726:                                  ; preds = %block_.L_441844, %block_44171f
  %599 = phi i64 [ %1017, %block_.L_441844 ], [ %.pre133, %block_44171f ]
  %600 = load i64, i64* %RBP.i, align 8
  %601 = add i64 %600, -28
  %602 = add i64 %599, 3
  store i64 %602, i64* %3, align 8
  %603 = inttoptr i64 %601 to i32*
  %604 = load i32, i32* %603, align 4
  %605 = zext i32 %604 to i64
  store i64 %605, i64* %RAX.i1789, align 8
  %606 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*), align 8
  store i64 %606, i64* %RCX.i1734.pre-phi, align 8
  %607 = add i64 %606, 72712
  %608 = add i64 %599, 17
  store i64 %608, i64* %3, align 8
  %609 = inttoptr i64 %607 to i32*
  %610 = load i32, i32* %609, align 4
  %611 = sub i32 %604, %610
  %612 = icmp ult i32 %604, %610
  %613 = zext i1 %612 to i8
  store i8 %613, i8* %12, align 1
  %614 = and i32 %611, 255
  %615 = tail call i32 @llvm.ctpop.i32(i32 %614)
  %616 = trunc i32 %615 to i8
  %617 = and i8 %616, 1
  %618 = xor i8 %617, 1
  store i8 %618, i8* %13, align 1
  %619 = xor i32 %610, %604
  %620 = xor i32 %619, %611
  %621 = lshr i32 %620, 4
  %622 = trunc i32 %621 to i8
  %623 = and i8 %622, 1
  store i8 %623, i8* %14, align 1
  %624 = icmp eq i32 %611, 0
  %625 = zext i1 %624 to i8
  store i8 %625, i8* %15, align 1
  %626 = lshr i32 %611, 31
  %627 = trunc i32 %626 to i8
  store i8 %627, i8* %16, align 1
  %628 = lshr i32 %604, 31
  %629 = lshr i32 %610, 31
  %630 = xor i32 %629, %628
  %631 = xor i32 %626, %628
  %632 = add nuw nsw i32 %631, %630
  %633 = icmp eq i32 %632, 2
  %634 = zext i1 %633 to i8
  store i8 %634, i8* %17, align 1
  %635 = icmp ne i8 %627, 0
  %636 = xor i1 %635, %633
  %.v171 = select i1 %636, i64 23, i64 305
  %637 = add i64 %599, %.v171
  store i64 %637, i64* %3, align 8
  br i1 %636, label %block_44173d, label %block_.L_441857

block_44173d:                                     ; preds = %block_.L_441726
  %638 = add i64 %600, -32
  %639 = add i64 %637, 7
  store i64 %639, i64* %3, align 8
  %640 = inttoptr i64 %638 to i32*
  store i32 0, i32* %640, align 4
  %.pre134 = load i64, i64* %3, align 8
  br label %block_.L_441744

block_.L_441744:                                  ; preds = %block_.L_441831, %block_44173d
  %641 = phi i64 [ %987, %block_.L_441831 ], [ %.pre134, %block_44173d ]
  %642 = load i64, i64* %RBP.i, align 8
  %643 = add i64 %642, -32
  %644 = add i64 %641, 3
  store i64 %644, i64* %3, align 8
  %645 = inttoptr i64 %643 to i32*
  %646 = load i32, i32* %645, align 4
  %647 = zext i32 %646 to i64
  store i64 %647, i64* %RAX.i1789, align 8
  %648 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*), align 8
  store i64 %648, i64* %RCX.i1734.pre-phi, align 8
  %649 = add i64 %648, 72708
  %650 = add i64 %641, 17
  store i64 %650, i64* %3, align 8
  %651 = inttoptr i64 %649 to i32*
  %652 = load i32, i32* %651, align 4
  %653 = sub i32 %646, %652
  %654 = icmp ult i32 %646, %652
  %655 = zext i1 %654 to i8
  store i8 %655, i8* %12, align 1
  %656 = and i32 %653, 255
  %657 = tail call i32 @llvm.ctpop.i32(i32 %656)
  %658 = trunc i32 %657 to i8
  %659 = and i8 %658, 1
  %660 = xor i8 %659, 1
  store i8 %660, i8* %13, align 1
  %661 = xor i32 %652, %646
  %662 = xor i32 %661, %653
  %663 = lshr i32 %662, 4
  %664 = trunc i32 %663 to i8
  %665 = and i8 %664, 1
  store i8 %665, i8* %14, align 1
  %666 = icmp eq i32 %653, 0
  %667 = zext i1 %666 to i8
  store i8 %667, i8* %15, align 1
  %668 = lshr i32 %653, 31
  %669 = trunc i32 %668 to i8
  store i8 %669, i8* %16, align 1
  %670 = lshr i32 %646, 31
  %671 = lshr i32 %652, 31
  %672 = xor i32 %671, %670
  %673 = xor i32 %668, %670
  %674 = add nuw nsw i32 %673, %672
  %675 = icmp eq i32 %674, 2
  %676 = zext i1 %675 to i8
  store i8 %676, i8* %17, align 1
  %677 = icmp ne i8 %669, 0
  %678 = xor i1 %677, %675
  %.v152 = select i1 %678, i64 23, i64 256
  %679 = add i64 %641, %.v152
  store i64 %679, i64* %3, align 8
  br i1 %678, label %block_44175b, label %block_.L_441844

block_44175b:                                     ; preds = %block_.L_441744
  store i64 %648, i64* %RAX.i1789, align 8
  %680 = add i64 %648, 72724
  %681 = add i64 %679, 15
  store i64 %681, i64* %3, align 8
  %682 = inttoptr i64 %680 to i32*
  %683 = load i32, i32* %682, align 4
  store i8 0, i8* %12, align 1
  %684 = and i32 %683, 255
  %685 = tail call i32 @llvm.ctpop.i32(i32 %684)
  %686 = trunc i32 %685 to i8
  %687 = and i8 %686, 1
  %688 = xor i8 %687, 1
  store i8 %688, i8* %13, align 1
  store i8 0, i8* %14, align 1
  %689 = icmp eq i32 %683, 0
  %690 = zext i1 %689 to i8
  store i8 %690, i8* %15, align 1
  %691 = lshr i32 %683, 31
  %692 = trunc i32 %691 to i8
  store i8 %692, i8* %16, align 1
  store i8 0, i8* %17, align 1
  %.v183 = select i1 %689, i64 21, i64 130
  %693 = add i64 %679, %.v183
  store i64 %693, i64* %3, align 8
  br i1 %689, label %block_441770, label %block_.L_4417dd

block_441770:                                     ; preds = %block_44175b
  %694 = add i64 %648, 12600
  store i64 %694, i64* %RAX.i1789, align 8
  %695 = icmp ugt i64 %648, -12601
  %696 = zext i1 %695 to i8
  store i8 %696, i8* %12, align 1
  %697 = trunc i64 %694 to i32
  %698 = and i32 %697, 255
  %699 = tail call i32 @llvm.ctpop.i32(i32 %698)
  %700 = trunc i32 %699 to i8
  %701 = and i8 %700, 1
  %702 = xor i8 %701, 1
  store i8 %702, i8* %13, align 1
  %703 = xor i64 %648, 16
  %704 = xor i64 %703, %694
  %705 = lshr i64 %704, 4
  %706 = trunc i64 %705 to i8
  %707 = and i8 %706, 1
  store i8 %707, i8* %14, align 1
  %708 = icmp eq i64 %694, 0
  %709 = zext i1 %708 to i8
  store i8 %709, i8* %15, align 1
  %710 = lshr i64 %694, 63
  %711 = trunc i64 %710 to i8
  store i8 %711, i8* %16, align 1
  %712 = lshr i64 %648, 63
  %713 = xor i64 %710, %712
  %714 = add nuw nsw i64 %713, %710
  %715 = icmp eq i64 %714, 2
  %716 = zext i1 %715 to i8
  store i8 %716, i8* %17, align 1
  %717 = add i64 %693, 18
  store i64 %717, i64* %3, align 8
  %718 = load i32, i32* %645, align 4
  %719 = sext i32 %718 to i64
  %720 = shl nsw i64 %719, 5
  store i64 %720, i64* %RCX.i1734.pre-phi, align 8
  %721 = add i64 %720, %694
  store i64 %721, i64* %RAX.i1789, align 8
  %722 = icmp ult i64 %721, %694
  %723 = icmp ult i64 %721, %720
  %724 = or i1 %722, %723
  %725 = zext i1 %724 to i8
  store i8 %725, i8* %12, align 1
  %726 = trunc i64 %721 to i32
  %727 = and i32 %726, 255
  %728 = tail call i32 @llvm.ctpop.i32(i32 %727)
  %729 = trunc i32 %728 to i8
  %730 = and i8 %729, 1
  %731 = xor i8 %730, 1
  store i8 %731, i8* %13, align 1
  %732 = xor i64 %694, %721
  %733 = lshr i64 %732, 4
  %734 = trunc i64 %733 to i8
  %735 = and i8 %734, 1
  store i8 %735, i8* %14, align 1
  %736 = icmp eq i64 %721, 0
  %737 = zext i1 %736 to i8
  store i8 %737, i8* %15, align 1
  %738 = lshr i64 %721, 63
  %739 = trunc i64 %738 to i8
  store i8 %739, i8* %16, align 1
  %740 = lshr i64 %719, 58
  %741 = and i64 %740, 1
  %742 = xor i64 %738, %710
  %743 = xor i64 %738, %741
  %744 = add nuw nsw i64 %742, %743
  %745 = icmp eq i64 %744, 2
  %746 = zext i1 %745 to i8
  store i8 %746, i8* %17, align 1
  %747 = add i64 %642, -28
  %748 = add i64 %693, 29
  store i64 %748, i64* %3, align 8
  %749 = inttoptr i64 %747 to i32*
  %750 = load i32, i32* %749, align 4
  %751 = sext i32 %750 to i64
  store i64 %751, i64* %RCX.i1734.pre-phi, align 8
  %752 = shl nsw i64 %751, 1
  %753 = add i64 %752, %721
  %754 = add i64 %693, 33
  store i64 %754, i64* %3, align 8
  %755 = inttoptr i64 %753 to i16*
  %756 = load i16, i16* %755, align 2
  store i16 %756, i16* %DX.i1307, align 2
  %757 = load i64, i64* bitcast (%G_0x70fcf0_type* @G_0x70fcf0 to i64*), align 8
  store i64 %757, i64* %RAX.i1789, align 8
  %758 = add i64 %757, 6464
  %759 = add i64 %693, 48
  store i64 %759, i64* %3, align 8
  %760 = inttoptr i64 %758 to i64*
  %761 = load i64, i64* %760, align 8
  store i64 %761, i64* %RAX.i1789, align 8
  %762 = load i64, i64* %RBP.i, align 8
  %763 = add i64 %762, -12
  %764 = add i64 %693, 52
  store i64 %764, i64* %3, align 8
  %765 = inttoptr i64 %763 to i32*
  %766 = load i32, i32* %765, align 4
  %767 = sext i32 %766 to i64
  store i64 %767, i64* %RCX.i1734.pre-phi, align 8
  %768 = shl nsw i64 %767, 3
  %769 = add i64 %768, %761
  %770 = add i64 %693, 56
  store i64 %770, i64* %3, align 8
  %771 = inttoptr i64 %769 to i64*
  %772 = load i64, i64* %771, align 8
  store i64 %772, i64* %RAX.i1789, align 8
  %773 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*), align 8
  store i64 %773, i64* %RCX.i1734.pre-phi, align 8
  %774 = add i64 %773, 164
  %775 = add i64 %693, 70
  store i64 %775, i64* %3, align 8
  %776 = inttoptr i64 %774 to i32*
  %777 = load i32, i32* %776, align 4
  %778 = zext i32 %777 to i64
  store i64 %778, i64* %RSI.i1729, align 8
  %779 = add i64 %762, -28
  %780 = add i64 %693, 73
  store i64 %780, i64* %3, align 8
  %781 = inttoptr i64 %779 to i32*
  %782 = load i32, i32* %781, align 4
  %783 = add i32 %782, %777
  %784 = zext i32 %783 to i64
  store i64 %784, i64* %RSI.i1729, align 8
  %785 = icmp ult i32 %783, %777
  %786 = icmp ult i32 %783, %782
  %787 = or i1 %785, %786
  %788 = zext i1 %787 to i8
  store i8 %788, i8* %12, align 1
  %789 = and i32 %783, 255
  %790 = tail call i32 @llvm.ctpop.i32(i32 %789)
  %791 = trunc i32 %790 to i8
  %792 = and i8 %791, 1
  %793 = xor i8 %792, 1
  store i8 %793, i8* %13, align 1
  %794 = xor i32 %782, %777
  %795 = xor i32 %794, %783
  %796 = lshr i32 %795, 4
  %797 = trunc i32 %796 to i8
  %798 = and i8 %797, 1
  store i8 %798, i8* %14, align 1
  %799 = icmp eq i32 %783, 0
  %800 = zext i1 %799 to i8
  store i8 %800, i8* %15, align 1
  %801 = lshr i32 %783, 31
  %802 = trunc i32 %801 to i8
  store i8 %802, i8* %16, align 1
  %803 = lshr i32 %777, 31
  %804 = lshr i32 %782, 31
  %805 = xor i32 %801, %803
  %806 = xor i32 %801, %804
  %807 = add nuw nsw i32 %805, %806
  %808 = icmp eq i32 %807, 2
  %809 = zext i1 %808 to i8
  store i8 %809, i8* %17, align 1
  %810 = sext i32 %783 to i64
  store i64 %810, i64* %RCX.i1734.pre-phi, align 8
  %811 = shl nsw i64 %810, 3
  %812 = add i64 %772, %811
  %813 = add i64 %693, 80
  store i64 %813, i64* %3, align 8
  %814 = inttoptr i64 %812 to i64*
  %815 = load i64, i64* %814, align 8
  store i64 %815, i64* %RAX.i1789, align 8
  store i64 %773, i64* %RCX.i1734.pre-phi, align 8
  %816 = add i64 %773, 160
  %817 = add i64 %693, 94
  store i64 %817, i64* %3, align 8
  %818 = inttoptr i64 %816 to i32*
  %819 = load i32, i32* %818, align 4
  %820 = zext i32 %819 to i64
  store i64 %820, i64* %RSI.i1729, align 8
  %821 = add i64 %762, -32
  %822 = add i64 %693, 97
  store i64 %822, i64* %3, align 8
  %823 = inttoptr i64 %821 to i32*
  %824 = load i32, i32* %823, align 4
  %825 = add i32 %824, %819
  %826 = zext i32 %825 to i64
  store i64 %826, i64* %RSI.i1729, align 8
  %827 = icmp ult i32 %825, %819
  %828 = icmp ult i32 %825, %824
  %829 = or i1 %827, %828
  %830 = zext i1 %829 to i8
  store i8 %830, i8* %12, align 1
  %831 = and i32 %825, 255
  %832 = tail call i32 @llvm.ctpop.i32(i32 %831)
  %833 = trunc i32 %832 to i8
  %834 = and i8 %833, 1
  %835 = xor i8 %834, 1
  store i8 %835, i8* %13, align 1
  %836 = xor i32 %824, %819
  %837 = xor i32 %836, %825
  %838 = lshr i32 %837, 4
  %839 = trunc i32 %838 to i8
  %840 = and i8 %839, 1
  store i8 %840, i8* %14, align 1
  %841 = icmp eq i32 %825, 0
  %842 = zext i1 %841 to i8
  store i8 %842, i8* %15, align 1
  %843 = lshr i32 %825, 31
  %844 = trunc i32 %843 to i8
  store i8 %844, i8* %16, align 1
  %845 = lshr i32 %819, 31
  %846 = lshr i32 %824, 31
  %847 = xor i32 %843, %845
  %848 = xor i32 %843, %846
  %849 = add nuw nsw i32 %847, %848
  %850 = icmp eq i32 %849, 2
  %851 = zext i1 %850 to i8
  store i8 %851, i8* %17, align 1
  %852 = sext i32 %825 to i64
  store i64 %852, i64* %RCX.i1734.pre-phi, align 8
  %853 = shl nsw i64 %852, 1
  %854 = add i64 %815, %853
  %855 = load i16, i16* %DX.i1307, align 2
  %856 = add i64 %693, 104
  store i64 %856, i64* %3, align 8
  %857 = inttoptr i64 %854 to i16*
  store i16 %855, i16* %857, align 2
  %858 = load i64, i64* %3, align 8
  %859 = add i64 %858, 89
  br label %block_.L_441831

block_.L_4417dd:                                  ; preds = %block_44175b
  %860 = add i64 %642, -12
  %861 = add i64 %693, 4
  store i64 %861, i64* %3, align 8
  %862 = inttoptr i64 %860 to i32*
  %863 = load i32, i32* %862, align 4
  store i8 0, i8* %12, align 1
  %864 = and i32 %863, 255
  %865 = tail call i32 @llvm.ctpop.i32(i32 %864)
  %866 = trunc i32 %865 to i8
  %867 = and i8 %866, 1
  %868 = xor i8 %867, 1
  store i8 %868, i8* %13, align 1
  store i8 0, i8* %14, align 1
  %869 = icmp eq i32 %863, 0
  %870 = zext i1 %869 to i8
  store i8 %870, i8* %15, align 1
  %871 = lshr i32 %863, 31
  %872 = trunc i32 %871 to i8
  store i8 %872, i8* %16, align 1
  store i8 0, i8* %17, align 1
  %.v184 = select i1 %869, i64 10, i64 47
  %873 = add i64 %693, %.v184
  %874 = add i64 %873, 10
  store i64 %874, i64* %3, align 8
  br i1 %869, label %block_4417e7, label %block_.L_44180c

block_4417e7:                                     ; preds = %block_.L_4417dd
  store i64 ptrtoint (%G__0x6f8f20_type* @G__0x6f8f20 to i64), i64* %RAX.i1789, align 8
  %875 = add i64 %873, 14
  store i64 %875, i64* %3, align 8
  %876 = load i32, i32* %645, align 4
  %877 = sext i32 %876 to i64
  %878 = shl nsw i64 %877, 6
  store i64 %878, i64* %RCX.i1734.pre-phi, align 8
  %879 = add i64 %878, ptrtoint (%G__0x6f8f20_type* @G__0x6f8f20 to i64)
  store i64 %879, i64* %RAX.i1789, align 8
  %880 = icmp ult i64 %879, ptrtoint (%G__0x6f8f20_type* @G__0x6f8f20 to i64)
  %881 = icmp ult i64 %879, %878
  %882 = or i1 %880, %881
  %883 = zext i1 %882 to i8
  store i8 %883, i8* %12, align 1
  %884 = trunc i64 %879 to i32
  %885 = and i32 %884, 248
  %886 = tail call i32 @llvm.ctpop.i32(i32 %885)
  %887 = trunc i32 %886 to i8
  %888 = and i8 %887, 1
  %889 = xor i8 %888, 1
  store i8 %889, i8* %13, align 1
  %890 = xor i64 %879, ptrtoint (%G__0x6f8f20_type* @G__0x6f8f20 to i64)
  %891 = lshr i64 %890, 4
  %892 = trunc i64 %891 to i8
  %893 = and i8 %892, 1
  store i8 %893, i8* %14, align 1
  %894 = icmp eq i64 %879, 0
  %895 = zext i1 %894 to i8
  store i8 %895, i8* %15, align 1
  %896 = lshr i64 %879, 63
  %897 = trunc i64 %896 to i8
  store i8 %897, i8* %16, align 1
  %898 = lshr i64 %877, 57
  %899 = and i64 %898, 1
  %900 = xor i64 %896, lshr (i64 ptrtoint (%G__0x6f8f20_type* @G__0x6f8f20 to i64), i64 63)
  %901 = xor i64 %896, %899
  %902 = add nuw nsw i64 %900, %901
  %903 = icmp eq i64 %902, 2
  %904 = zext i1 %903 to i8
  store i8 %904, i8* %17, align 1
  %905 = add i64 %642, -28
  %906 = add i64 %873, 25
  store i64 %906, i64* %3, align 8
  %907 = inttoptr i64 %905 to i32*
  %908 = load i32, i32* %907, align 4
  %909 = sext i32 %908 to i64
  store i64 %909, i64* %RCX.i1734.pre-phi, align 8
  %910 = shl nsw i64 %909, 2
  %911 = add i64 %910, %879
  %912 = add i64 %873, 32
  store i64 %912, i64* %3, align 8
  %913 = inttoptr i64 %911 to i32*
  store i32 0, i32* %913, align 4
  %914 = load i64, i64* %3, align 8
  %915 = add i64 %914, 37
  store i64 %915, i64* %3, align 8
  br label %block_.L_44182c

block_.L_44180c:                                  ; preds = %block_.L_4417dd
  store i64 ptrtoint (%G__0x6d2ec0_type* @G__0x6d2ec0 to i64), i64* %RAX.i1789, align 8
  %916 = add i64 %873, 14
  store i64 %916, i64* %3, align 8
  %917 = load i32, i32* %645, align 4
  %918 = sext i32 %917 to i64
  %919 = shl nsw i64 %918, 6
  store i64 %919, i64* %RCX.i1734.pre-phi, align 8
  %920 = add i64 %919, ptrtoint (%G__0x6d2ec0_type* @G__0x6d2ec0 to i64)
  store i64 %920, i64* %RAX.i1789, align 8
  %921 = icmp ult i64 %920, ptrtoint (%G__0x6d2ec0_type* @G__0x6d2ec0 to i64)
  %922 = icmp ult i64 %920, %919
  %923 = or i1 %921, %922
  %924 = zext i1 %923 to i8
  store i8 %924, i8* %12, align 1
  %925 = trunc i64 %920 to i32
  %926 = and i32 %925, 248
  %927 = tail call i32 @llvm.ctpop.i32(i32 %926)
  %928 = trunc i32 %927 to i8
  %929 = and i8 %928, 1
  %930 = xor i8 %929, 1
  store i8 %930, i8* %13, align 1
  %931 = xor i64 %920, ptrtoint (%G__0x6d2ec0_type* @G__0x6d2ec0 to i64)
  %932 = lshr i64 %931, 4
  %933 = trunc i64 %932 to i8
  %934 = and i8 %933, 1
  store i8 %934, i8* %14, align 1
  %935 = icmp eq i64 %920, 0
  %936 = zext i1 %935 to i8
  store i8 %936, i8* %15, align 1
  %937 = lshr i64 %920, 63
  %938 = trunc i64 %937 to i8
  store i8 %938, i8* %16, align 1
  %939 = lshr i64 %918, 57
  %940 = and i64 %939, 1
  %941 = xor i64 %937, lshr (i64 ptrtoint (%G__0x6d2ec0_type* @G__0x6d2ec0 to i64), i64 63)
  %942 = xor i64 %937, %940
  %943 = add nuw nsw i64 %941, %942
  %944 = icmp eq i64 %943, 2
  %945 = zext i1 %944 to i8
  store i8 %945, i8* %17, align 1
  %946 = add i64 %642, -28
  %947 = add i64 %873, 25
  store i64 %947, i64* %3, align 8
  %948 = inttoptr i64 %946 to i32*
  %949 = load i32, i32* %948, align 4
  %950 = sext i32 %949 to i64
  store i64 %950, i64* %RCX.i1734.pre-phi, align 8
  %951 = shl nsw i64 %950, 2
  %952 = add i64 %951, %920
  %953 = add i64 %873, 32
  store i64 %953, i64* %3, align 8
  %954 = inttoptr i64 %952 to i32*
  store i32 0, i32* %954, align 4
  %.pre135 = load i64, i64* %3, align 8
  br label %block_.L_44182c

block_.L_44182c:                                  ; preds = %block_.L_44180c, %block_4417e7
  %955 = phi i64 [ %.pre135, %block_.L_44180c ], [ %915, %block_4417e7 ]
  %956 = add i64 %955, 5
  store i64 %956, i64* %3, align 8
  br label %block_.L_441831

block_.L_441831:                                  ; preds = %block_.L_44182c, %block_441770
  %storemerge = phi i64 [ %859, %block_441770 ], [ %956, %block_.L_44182c ]
  %957 = load i64, i64* %RBP.i, align 8
  %958 = add i64 %957, -32
  %959 = add i64 %storemerge, 8
  store i64 %959, i64* %3, align 8
  %960 = inttoptr i64 %958 to i32*
  %961 = load i32, i32* %960, align 4
  %962 = add i32 %961, 1
  %963 = zext i32 %962 to i64
  store i64 %963, i64* %RAX.i1789, align 8
  %964 = icmp eq i32 %961, -1
  %965 = icmp eq i32 %962, 0
  %966 = or i1 %964, %965
  %967 = zext i1 %966 to i8
  store i8 %967, i8* %12, align 1
  %968 = and i32 %962, 255
  %969 = tail call i32 @llvm.ctpop.i32(i32 %968)
  %970 = trunc i32 %969 to i8
  %971 = and i8 %970, 1
  %972 = xor i8 %971, 1
  store i8 %972, i8* %13, align 1
  %973 = xor i32 %962, %961
  %974 = lshr i32 %973, 4
  %975 = trunc i32 %974 to i8
  %976 = and i8 %975, 1
  store i8 %976, i8* %14, align 1
  %977 = zext i1 %965 to i8
  store i8 %977, i8* %15, align 1
  %978 = lshr i32 %962, 31
  %979 = trunc i32 %978 to i8
  store i8 %979, i8* %16, align 1
  %980 = lshr i32 %961, 31
  %981 = xor i32 %978, %980
  %982 = add nuw nsw i32 %981, %978
  %983 = icmp eq i32 %982, 2
  %984 = zext i1 %983 to i8
  store i8 %984, i8* %17, align 1
  %985 = add i64 %storemerge, 14
  store i64 %985, i64* %3, align 8
  store i32 %962, i32* %960, align 4
  %986 = load i64, i64* %3, align 8
  %987 = add i64 %986, -251
  store i64 %987, i64* %3, align 8
  br label %block_.L_441744

block_.L_441844:                                  ; preds = %block_.L_441744
  %988 = add i64 %642, -28
  %989 = add i64 %679, 8
  store i64 %989, i64* %3, align 8
  %990 = inttoptr i64 %988 to i32*
  %991 = load i32, i32* %990, align 4
  %992 = add i32 %991, 1
  %993 = zext i32 %992 to i64
  store i64 %993, i64* %RAX.i1789, align 8
  %994 = icmp eq i32 %991, -1
  %995 = icmp eq i32 %992, 0
  %996 = or i1 %994, %995
  %997 = zext i1 %996 to i8
  store i8 %997, i8* %12, align 1
  %998 = and i32 %992, 255
  %999 = tail call i32 @llvm.ctpop.i32(i32 %998)
  %1000 = trunc i32 %999 to i8
  %1001 = and i8 %1000, 1
  %1002 = xor i8 %1001, 1
  store i8 %1002, i8* %13, align 1
  %1003 = xor i32 %992, %991
  %1004 = lshr i32 %1003, 4
  %1005 = trunc i32 %1004 to i8
  %1006 = and i8 %1005, 1
  store i8 %1006, i8* %14, align 1
  %1007 = zext i1 %995 to i8
  store i8 %1007, i8* %15, align 1
  %1008 = lshr i32 %992, 31
  %1009 = trunc i32 %1008 to i8
  store i8 %1009, i8* %16, align 1
  %1010 = lshr i32 %991, 31
  %1011 = xor i32 %1008, %1010
  %1012 = add nuw nsw i32 %1011, %1008
  %1013 = icmp eq i32 %1012, 2
  %1014 = zext i1 %1013 to i8
  store i8 %1014, i8* %17, align 1
  %1015 = add i64 %679, 14
  store i64 %1015, i64* %3, align 8
  store i32 %992, i32* %990, align 4
  %1016 = load i64, i64* %3, align 8
  %1017 = add i64 %1016, -300
  store i64 %1017, i64* %3, align 8
  br label %block_.L_441726

block_.L_441857:                                  ; preds = %block_.L_441726
  %1018 = add i64 %637, 878
  br label %block_.L_441bc5

block_.L_44185c:                                  ; preds = %block_.L_44170a
  %1019 = add i64 %263, -52
  %1020 = add i64 %595, 4
  store i64 %1020, i64* %3, align 8
  %1021 = inttoptr i64 %1019 to i32*
  %1022 = load i32, i32* %1021, align 4
  store i8 0, i8* %12, align 1
  %1023 = and i32 %1022, 255
  %1024 = tail call i32 @llvm.ctpop.i32(i32 %1023)
  %1025 = trunc i32 %1024 to i8
  %1026 = and i8 %1025, 1
  %1027 = xor i8 %1026, 1
  store i8 %1027, i8* %13, align 1
  store i8 0, i8* %14, align 1
  %1028 = icmp eq i32 %1022, 0
  %1029 = zext i1 %1028 to i8
  store i8 %1029, i8* %15, align 1
  %1030 = lshr i32 %1022, 31
  %1031 = trunc i32 %1030 to i8
  store i8 %1031, i8* %16, align 1
  store i8 0, i8* %17, align 1
  %.v185 = select i1 %1028, i64 136, i64 10
  %1032 = add i64 %595, %.v185
  store i64 %1032, i64* %3, align 8
  br i1 %1028, label %block_.L_4418e4, label %block_441866

block_441866:                                     ; preds = %block_.L_44185c
  store i64 %269, i64* %RAX.i1789, align 8
  %1033 = add i64 %269, 24
  %1034 = add i64 %1032, 12
  store i64 %1034, i64* %3, align 8
  %1035 = inttoptr i64 %1033 to i32*
  %1036 = load i32, i32* %1035, align 4
  %1037 = add i32 %1036, -3
  %1038 = icmp ult i32 %1036, 3
  %1039 = zext i1 %1038 to i8
  store i8 %1039, i8* %12, align 1
  %1040 = and i32 %1037, 255
  %1041 = tail call i32 @llvm.ctpop.i32(i32 %1040)
  %1042 = trunc i32 %1041 to i8
  %1043 = and i8 %1042, 1
  %1044 = xor i8 %1043, 1
  store i8 %1044, i8* %13, align 1
  %1045 = xor i32 %1037, %1036
  %1046 = lshr i32 %1045, 4
  %1047 = trunc i32 %1046 to i8
  %1048 = and i8 %1047, 1
  store i8 %1048, i8* %14, align 1
  %1049 = icmp eq i32 %1037, 0
  %1050 = zext i1 %1049 to i8
  store i8 %1050, i8* %15, align 1
  %1051 = lshr i32 %1037, 31
  %1052 = trunc i32 %1051 to i8
  store i8 %1052, i8* %16, align 1
  %1053 = lshr i32 %1036, 31
  %1054 = xor i32 %1051, %1053
  %1055 = add nuw nsw i32 %1054, %1053
  %1056 = icmp eq i32 %1055, 2
  %1057 = zext i1 %1056 to i8
  store i8 %1057, i8* %17, align 1
  %.v186 = select i1 %1049, i64 18, i64 126
  %1058 = add i64 %1032, %.v186
  store i64 %1058, i64* %3, align 8
  br i1 %1049, label %block_441878, label %block_.L_4418e4

block_441878:                                     ; preds = %block_441866
  %1059 = add i64 %263, -28
  %1060 = add i64 %1058, 7
  store i64 %1060, i64* %3, align 8
  %1061 = inttoptr i64 %1059 to i32*
  store i32 0, i32* %1061, align 4
  %.pre136 = load i64, i64* %3, align 8
  br label %block_.L_44187f

block_.L_44187f:                                  ; preds = %block_.L_4418cc, %block_441878
  %1062 = phi i64 [ %1249, %block_.L_4418cc ], [ %.pre136, %block_441878 ]
  %1063 = load i64, i64* %RBP.i, align 8
  %1064 = add i64 %1063, -28
  %1065 = add i64 %1062, 4
  store i64 %1065, i64* %3, align 8
  %1066 = inttoptr i64 %1064 to i32*
  %1067 = load i32, i32* %1066, align 4
  %1068 = add i32 %1067, -8
  %1069 = icmp ult i32 %1067, 8
  %1070 = zext i1 %1069 to i8
  store i8 %1070, i8* %12, align 1
  %1071 = and i32 %1068, 255
  %1072 = tail call i32 @llvm.ctpop.i32(i32 %1071)
  %1073 = trunc i32 %1072 to i8
  %1074 = and i8 %1073, 1
  %1075 = xor i8 %1074, 1
  store i8 %1075, i8* %13, align 1
  %1076 = xor i32 %1068, %1067
  %1077 = lshr i32 %1076, 4
  %1078 = trunc i32 %1077 to i8
  %1079 = and i8 %1078, 1
  store i8 %1079, i8* %14, align 1
  %1080 = icmp eq i32 %1068, 0
  %1081 = zext i1 %1080 to i8
  store i8 %1081, i8* %15, align 1
  %1082 = lshr i32 %1068, 31
  %1083 = trunc i32 %1082 to i8
  store i8 %1083, i8* %16, align 1
  %1084 = lshr i32 %1067, 31
  %1085 = xor i32 %1082, %1084
  %1086 = add nuw nsw i32 %1085, %1084
  %1087 = icmp eq i32 %1086, 2
  %1088 = zext i1 %1087 to i8
  store i8 %1088, i8* %17, align 1
  %1089 = icmp ne i8 %1083, 0
  %1090 = xor i1 %1089, %1087
  %.v193 = select i1 %1090, i64 10, i64 96
  %1091 = add i64 %1062, %.v193
  store i64 %1091, i64* %3, align 8
  br i1 %1090, label %block_441889, label %block_.L_4418df

block_441889:                                     ; preds = %block_.L_44187f
  %1092 = add i64 %1063, -32
  %1093 = add i64 %1091, 7
  store i64 %1093, i64* %3, align 8
  %1094 = inttoptr i64 %1092 to i32*
  store i32 0, i32* %1094, align 4
  %.pre137 = load i64, i64* %3, align 8
  br label %block_.L_441890

block_.L_441890:                                  ; preds = %block_44189a, %block_441889
  %1095 = phi i64 [ %1219, %block_44189a ], [ %.pre137, %block_441889 ]
  %1096 = load i64, i64* %RBP.i, align 8
  %1097 = add i64 %1096, -32
  %1098 = add i64 %1095, 4
  store i64 %1098, i64* %3, align 8
  %1099 = inttoptr i64 %1097 to i32*
  %1100 = load i32, i32* %1099, align 4
  %1101 = add i32 %1100, -8
  %1102 = icmp ult i32 %1100, 8
  %1103 = zext i1 %1102 to i8
  store i8 %1103, i8* %12, align 1
  %1104 = and i32 %1101, 255
  %1105 = tail call i32 @llvm.ctpop.i32(i32 %1104)
  %1106 = trunc i32 %1105 to i8
  %1107 = and i8 %1106, 1
  %1108 = xor i8 %1107, 1
  store i8 %1108, i8* %13, align 1
  %1109 = xor i32 %1101, %1100
  %1110 = lshr i32 %1109, 4
  %1111 = trunc i32 %1110 to i8
  %1112 = and i8 %1111, 1
  store i8 %1112, i8* %14, align 1
  %1113 = icmp eq i32 %1101, 0
  %1114 = zext i1 %1113 to i8
  store i8 %1114, i8* %15, align 1
  %1115 = lshr i32 %1101, 31
  %1116 = trunc i32 %1115 to i8
  store i8 %1116, i8* %16, align 1
  %1117 = lshr i32 %1100, 31
  %1118 = xor i32 %1115, %1117
  %1119 = add nuw nsw i32 %1118, %1117
  %1120 = icmp eq i32 %1119, 2
  %1121 = zext i1 %1120 to i8
  store i8 %1121, i8* %17, align 1
  %1122 = icmp ne i8 %1116, 0
  %1123 = xor i1 %1122, %1120
  %.v153 = select i1 %1123, i64 10, i64 60
  %1124 = add i64 %1095, %.v153
  store i64 %1124, i64* %3, align 8
  br i1 %1123, label %block_44189a, label %block_.L_4418cc

block_44189a:                                     ; preds = %block_.L_441890
  %1125 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*), align 8
  %1126 = add i64 %1125, 13112
  store i64 %1126, i64* %RAX.i1789, align 8
  %1127 = icmp ugt i64 %1125, -13113
  %1128 = zext i1 %1127 to i8
  store i8 %1128, i8* %12, align 1
  %1129 = trunc i64 %1126 to i32
  %1130 = and i32 %1129, 255
  %1131 = tail call i32 @llvm.ctpop.i32(i32 %1130)
  %1132 = trunc i32 %1131 to i8
  %1133 = and i8 %1132, 1
  %1134 = xor i8 %1133, 1
  store i8 %1134, i8* %13, align 1
  %1135 = xor i64 %1125, 16
  %1136 = xor i64 %1135, %1126
  %1137 = lshr i64 %1136, 4
  %1138 = trunc i64 %1137 to i8
  %1139 = and i8 %1138, 1
  store i8 %1139, i8* %14, align 1
  %1140 = icmp eq i64 %1126, 0
  %1141 = zext i1 %1140 to i8
  store i8 %1141, i8* %15, align 1
  %1142 = lshr i64 %1126, 63
  %1143 = trunc i64 %1142 to i8
  store i8 %1143, i8* %16, align 1
  %1144 = lshr i64 %1125, 63
  %1145 = xor i64 %1142, %1144
  %1146 = add nuw nsw i64 %1145, %1142
  %1147 = icmp eq i64 %1146, 2
  %1148 = zext i1 %1147 to i8
  store i8 %1148, i8* %17, align 1
  %1149 = add i64 %1124, 18
  store i64 %1149, i64* %3, align 8
  %1150 = load i32, i32* %1099, align 4
  %1151 = sext i32 %1150 to i64
  %1152 = shl nsw i64 %1151, 6
  store i64 %1152, i64* %RCX.i1734.pre-phi, align 8
  %1153 = add i64 %1152, %1126
  store i64 %1153, i64* %RAX.i1789, align 8
  %1154 = icmp ult i64 %1153, %1126
  %1155 = icmp ult i64 %1153, %1152
  %1156 = or i1 %1154, %1155
  %1157 = zext i1 %1156 to i8
  store i8 %1157, i8* %12, align 1
  %1158 = trunc i64 %1153 to i32
  %1159 = and i32 %1158, 255
  %1160 = tail call i32 @llvm.ctpop.i32(i32 %1159)
  %1161 = trunc i32 %1160 to i8
  %1162 = and i8 %1161, 1
  %1163 = xor i8 %1162, 1
  store i8 %1163, i8* %13, align 1
  %1164 = xor i64 %1126, %1153
  %1165 = lshr i64 %1164, 4
  %1166 = trunc i64 %1165 to i8
  %1167 = and i8 %1166, 1
  store i8 %1167, i8* %14, align 1
  %1168 = icmp eq i64 %1153, 0
  %1169 = zext i1 %1168 to i8
  store i8 %1169, i8* %15, align 1
  %1170 = lshr i64 %1153, 63
  %1171 = trunc i64 %1170 to i8
  store i8 %1171, i8* %16, align 1
  %1172 = lshr i64 %1151, 57
  %1173 = and i64 %1172, 1
  %1174 = xor i64 %1170, %1142
  %1175 = xor i64 %1170, %1173
  %1176 = add nuw nsw i64 %1174, %1175
  %1177 = icmp eq i64 %1176, 2
  %1178 = zext i1 %1177 to i8
  store i8 %1178, i8* %17, align 1
  %1179 = add i64 %1096, -28
  %1180 = add i64 %1124, 29
  store i64 %1180, i64* %3, align 8
  %1181 = inttoptr i64 %1179 to i32*
  %1182 = load i32, i32* %1181, align 4
  %1183 = sext i32 %1182 to i64
  store i64 %1183, i64* %RCX.i1734.pre-phi, align 8
  %1184 = shl nsw i64 %1183, 2
  %1185 = add i64 %1184, %1153
  %1186 = add i64 %1124, 36
  store i64 %1186, i64* %3, align 8
  %1187 = inttoptr i64 %1185 to i32*
  store i32 0, i32* %1187, align 4
  %1188 = load i64, i64* %RBP.i, align 8
  %1189 = add i64 %1188, -32
  %1190 = load i64, i64* %3, align 8
  %1191 = add i64 %1190, 3
  store i64 %1191, i64* %3, align 8
  %1192 = inttoptr i64 %1189 to i32*
  %1193 = load i32, i32* %1192, align 4
  %1194 = add i32 %1193, 1
  %1195 = zext i32 %1194 to i64
  store i64 %1195, i64* %RAX.i1789, align 8
  %1196 = icmp eq i32 %1193, -1
  %1197 = icmp eq i32 %1194, 0
  %1198 = or i1 %1196, %1197
  %1199 = zext i1 %1198 to i8
  store i8 %1199, i8* %12, align 1
  %1200 = and i32 %1194, 255
  %1201 = tail call i32 @llvm.ctpop.i32(i32 %1200)
  %1202 = trunc i32 %1201 to i8
  %1203 = and i8 %1202, 1
  %1204 = xor i8 %1203, 1
  store i8 %1204, i8* %13, align 1
  %1205 = xor i32 %1194, %1193
  %1206 = lshr i32 %1205, 4
  %1207 = trunc i32 %1206 to i8
  %1208 = and i8 %1207, 1
  store i8 %1208, i8* %14, align 1
  %1209 = zext i1 %1197 to i8
  store i8 %1209, i8* %15, align 1
  %1210 = lshr i32 %1194, 31
  %1211 = trunc i32 %1210 to i8
  store i8 %1211, i8* %16, align 1
  %1212 = lshr i32 %1193, 31
  %1213 = xor i32 %1210, %1212
  %1214 = add nuw nsw i32 %1213, %1210
  %1215 = icmp eq i32 %1214, 2
  %1216 = zext i1 %1215 to i8
  store i8 %1216, i8* %17, align 1
  %1217 = add i64 %1190, 9
  store i64 %1217, i64* %3, align 8
  store i32 %1194, i32* %1192, align 4
  %1218 = load i64, i64* %3, align 8
  %1219 = add i64 %1218, -55
  store i64 %1219, i64* %3, align 8
  br label %block_.L_441890

block_.L_4418cc:                                  ; preds = %block_.L_441890
  %1220 = add i64 %1096, -28
  %1221 = add i64 %1124, 8
  store i64 %1221, i64* %3, align 8
  %1222 = inttoptr i64 %1220 to i32*
  %1223 = load i32, i32* %1222, align 4
  %1224 = add i32 %1223, 1
  %1225 = zext i32 %1224 to i64
  store i64 %1225, i64* %RAX.i1789, align 8
  %1226 = icmp eq i32 %1223, -1
  %1227 = icmp eq i32 %1224, 0
  %1228 = or i1 %1226, %1227
  %1229 = zext i1 %1228 to i8
  store i8 %1229, i8* %12, align 1
  %1230 = and i32 %1224, 255
  %1231 = tail call i32 @llvm.ctpop.i32(i32 %1230)
  %1232 = trunc i32 %1231 to i8
  %1233 = and i8 %1232, 1
  %1234 = xor i8 %1233, 1
  store i8 %1234, i8* %13, align 1
  %1235 = xor i32 %1224, %1223
  %1236 = lshr i32 %1235, 4
  %1237 = trunc i32 %1236 to i8
  %1238 = and i8 %1237, 1
  store i8 %1238, i8* %14, align 1
  %1239 = zext i1 %1227 to i8
  store i8 %1239, i8* %15, align 1
  %1240 = lshr i32 %1224, 31
  %1241 = trunc i32 %1240 to i8
  store i8 %1241, i8* %16, align 1
  %1242 = lshr i32 %1223, 31
  %1243 = xor i32 %1240, %1242
  %1244 = add nuw nsw i32 %1243, %1240
  %1245 = icmp eq i32 %1244, 2
  %1246 = zext i1 %1245 to i8
  store i8 %1246, i8* %17, align 1
  %1247 = add i64 %1124, 14
  store i64 %1247, i64* %3, align 8
  store i32 %1224, i32* %1222, align 4
  %1248 = load i64, i64* %3, align 8
  %1249 = add i64 %1248, -91
  store i64 %1249, i64* %3, align 8
  br label %block_.L_44187f

block_.L_4418df:                                  ; preds = %block_.L_44187f
  %1250 = add i64 %1091, 737
  br label %block_.L_441bc0

block_.L_4418e4:                                  ; preds = %block_441866, %block_.L_44185c
  %1251 = phi i64 [ %1058, %block_441866 ], [ %1032, %block_.L_44185c ]
  %1252 = add i64 %1251, 4
  store i64 %1252, i64* %3, align 8
  %1253 = load i32, i32* %1021, align 4
  store i8 0, i8* %12, align 1
  %1254 = and i32 %1253, 255
  %1255 = tail call i32 @llvm.ctpop.i32(i32 %1254)
  %1256 = trunc i32 %1255 to i8
  %1257 = and i8 %1256, 1
  %1258 = xor i8 %1257, 1
  store i8 %1258, i8* %13, align 1
  store i8 0, i8* %14, align 1
  %1259 = icmp eq i32 %1253, 0
  %1260 = zext i1 %1259 to i8
  store i8 %1260, i8* %15, align 1
  %1261 = lshr i32 %1253, 31
  %1262 = trunc i32 %1261 to i8
  store i8 %1262, i8* %16, align 1
  store i8 0, i8* %17, align 1
  %.v154 = select i1 %1259, i64 327, i64 10
  %1263 = add i64 %1251, %.v154
  %1264 = add i64 %263, -28
  %1265 = add i64 %1263, 7
  store i64 %1265, i64* %3, align 8
  %1266 = inttoptr i64 %1264 to i32*
  store i32 0, i32* %1266, align 4
  %.pre141 = load i64, i64* %3, align 8
  br i1 %1259, label %block_.L_441a32.preheader, label %block_.L_4418f5.preheader

block_.L_4418f5.preheader:                        ; preds = %block_.L_4418e4
  br label %block_.L_4418f5

block_.L_441a32.preheader:                        ; preds = %block_.L_4418e4
  br label %block_.L_441a32

block_.L_4418f5:                                  ; preds = %block_.L_4418f5.preheader, %block_.L_441a13
  %1267 = phi i64 [ %1685, %block_.L_441a13 ], [ %.pre141, %block_.L_4418f5.preheader ]
  %1268 = load i64, i64* %RBP.i, align 8
  %1269 = add i64 %1268, -28
  %1270 = add i64 %1267, 3
  store i64 %1270, i64* %3, align 8
  %1271 = inttoptr i64 %1269 to i32*
  %1272 = load i32, i32* %1271, align 4
  %1273 = zext i32 %1272 to i64
  store i64 %1273, i64* %RAX.i1789, align 8
  %1274 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*), align 8
  store i64 %1274, i64* %RCX.i1734.pre-phi, align 8
  %1275 = add i64 %1274, 72712
  %1276 = add i64 %1267, 17
  store i64 %1276, i64* %3, align 8
  %1277 = inttoptr i64 %1275 to i32*
  %1278 = load i32, i32* %1277, align 4
  %1279 = sub i32 %1272, %1278
  %1280 = icmp ult i32 %1272, %1278
  %1281 = zext i1 %1280 to i8
  store i8 %1281, i8* %12, align 1
  %1282 = and i32 %1279, 255
  %1283 = tail call i32 @llvm.ctpop.i32(i32 %1282)
  %1284 = trunc i32 %1283 to i8
  %1285 = and i8 %1284, 1
  %1286 = xor i8 %1285, 1
  store i8 %1286, i8* %13, align 1
  %1287 = xor i32 %1278, %1272
  %1288 = xor i32 %1287, %1279
  %1289 = lshr i32 %1288, 4
  %1290 = trunc i32 %1289 to i8
  %1291 = and i8 %1290, 1
  store i8 %1291, i8* %14, align 1
  %1292 = icmp eq i32 %1279, 0
  %1293 = zext i1 %1292 to i8
  store i8 %1293, i8* %15, align 1
  %1294 = lshr i32 %1279, 31
  %1295 = trunc i32 %1294 to i8
  store i8 %1295, i8* %16, align 1
  %1296 = lshr i32 %1272, 31
  %1297 = lshr i32 %1278, 31
  %1298 = xor i32 %1297, %1296
  %1299 = xor i32 %1294, %1296
  %1300 = add nuw nsw i32 %1299, %1298
  %1301 = icmp eq i32 %1300, 2
  %1302 = zext i1 %1301 to i8
  store i8 %1302, i8* %17, align 1
  %1303 = icmp ne i8 %1295, 0
  %1304 = xor i1 %1303, %1301
  %.v187 = select i1 %1304, i64 23, i64 305
  %1305 = add i64 %1267, %.v187
  store i64 %1305, i64* %3, align 8
  br i1 %1304, label %block_44190c, label %block_.L_441a26

block_44190c:                                     ; preds = %block_.L_4418f5
  %1306 = add i64 %1268, -32
  %1307 = add i64 %1305, 7
  store i64 %1307, i64* %3, align 8
  %1308 = inttoptr i64 %1306 to i32*
  store i32 0, i32* %1308, align 4
  %.pre139 = load i64, i64* %3, align 8
  br label %block_.L_441913

block_.L_441913:                                  ; preds = %block_.L_441a00, %block_44190c
  %1309 = phi i64 [ %1655, %block_.L_441a00 ], [ %.pre139, %block_44190c ]
  %1310 = load i64, i64* %RBP.i, align 8
  %1311 = add i64 %1310, -32
  %1312 = add i64 %1309, 3
  store i64 %1312, i64* %3, align 8
  %1313 = inttoptr i64 %1311 to i32*
  %1314 = load i32, i32* %1313, align 4
  %1315 = zext i32 %1314 to i64
  store i64 %1315, i64* %RAX.i1789, align 8
  %1316 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*), align 8
  store i64 %1316, i64* %RCX.i1734.pre-phi, align 8
  %1317 = add i64 %1316, 72708
  %1318 = add i64 %1309, 17
  store i64 %1318, i64* %3, align 8
  %1319 = inttoptr i64 %1317 to i32*
  %1320 = load i32, i32* %1319, align 4
  %1321 = sub i32 %1314, %1320
  %1322 = icmp ult i32 %1314, %1320
  %1323 = zext i1 %1322 to i8
  store i8 %1323, i8* %12, align 1
  %1324 = and i32 %1321, 255
  %1325 = tail call i32 @llvm.ctpop.i32(i32 %1324)
  %1326 = trunc i32 %1325 to i8
  %1327 = and i8 %1326, 1
  %1328 = xor i8 %1327, 1
  store i8 %1328, i8* %13, align 1
  %1329 = xor i32 %1320, %1314
  %1330 = xor i32 %1329, %1321
  %1331 = lshr i32 %1330, 4
  %1332 = trunc i32 %1331 to i8
  %1333 = and i8 %1332, 1
  store i8 %1333, i8* %14, align 1
  %1334 = icmp eq i32 %1321, 0
  %1335 = zext i1 %1334 to i8
  store i8 %1335, i8* %15, align 1
  %1336 = lshr i32 %1321, 31
  %1337 = trunc i32 %1336 to i8
  store i8 %1337, i8* %16, align 1
  %1338 = lshr i32 %1314, 31
  %1339 = lshr i32 %1320, 31
  %1340 = xor i32 %1339, %1338
  %1341 = xor i32 %1336, %1338
  %1342 = add nuw nsw i32 %1341, %1340
  %1343 = icmp eq i32 %1342, 2
  %1344 = zext i1 %1343 to i8
  store i8 %1344, i8* %17, align 1
  %1345 = icmp ne i8 %1337, 0
  %1346 = xor i1 %1345, %1343
  %.v155 = select i1 %1346, i64 23, i64 256
  %1347 = add i64 %1309, %.v155
  store i64 %1347, i64* %3, align 8
  br i1 %1346, label %block_44192a, label %block_.L_441a13

block_44192a:                                     ; preds = %block_.L_441913
  store i64 %1316, i64* %RAX.i1789, align 8
  %1348 = add i64 %1316, 72724
  %1349 = add i64 %1347, 15
  store i64 %1349, i64* %3, align 8
  %1350 = inttoptr i64 %1348 to i32*
  %1351 = load i32, i32* %1350, align 4
  store i8 0, i8* %12, align 1
  %1352 = and i32 %1351, 255
  %1353 = tail call i32 @llvm.ctpop.i32(i32 %1352)
  %1354 = trunc i32 %1353 to i8
  %1355 = and i8 %1354, 1
  %1356 = xor i8 %1355, 1
  store i8 %1356, i8* %13, align 1
  store i8 0, i8* %14, align 1
  %1357 = icmp eq i32 %1351, 0
  %1358 = zext i1 %1357 to i8
  store i8 %1358, i8* %15, align 1
  %1359 = lshr i32 %1351, 31
  %1360 = trunc i32 %1359 to i8
  store i8 %1360, i8* %16, align 1
  store i8 0, i8* %17, align 1
  %.v188 = select i1 %1357, i64 21, i64 130
  %1361 = add i64 %1347, %.v188
  store i64 %1361, i64* %3, align 8
  br i1 %1357, label %block_44193f, label %block_.L_4419ac

block_44193f:                                     ; preds = %block_44192a
  %1362 = add i64 %1316, 12600
  store i64 %1362, i64* %RAX.i1789, align 8
  %1363 = icmp ugt i64 %1316, -12601
  %1364 = zext i1 %1363 to i8
  store i8 %1364, i8* %12, align 1
  %1365 = trunc i64 %1362 to i32
  %1366 = and i32 %1365, 255
  %1367 = tail call i32 @llvm.ctpop.i32(i32 %1366)
  %1368 = trunc i32 %1367 to i8
  %1369 = and i8 %1368, 1
  %1370 = xor i8 %1369, 1
  store i8 %1370, i8* %13, align 1
  %1371 = xor i64 %1316, 16
  %1372 = xor i64 %1371, %1362
  %1373 = lshr i64 %1372, 4
  %1374 = trunc i64 %1373 to i8
  %1375 = and i8 %1374, 1
  store i8 %1375, i8* %14, align 1
  %1376 = icmp eq i64 %1362, 0
  %1377 = zext i1 %1376 to i8
  store i8 %1377, i8* %15, align 1
  %1378 = lshr i64 %1362, 63
  %1379 = trunc i64 %1378 to i8
  store i8 %1379, i8* %16, align 1
  %1380 = lshr i64 %1316, 63
  %1381 = xor i64 %1378, %1380
  %1382 = add nuw nsw i64 %1381, %1378
  %1383 = icmp eq i64 %1382, 2
  %1384 = zext i1 %1383 to i8
  store i8 %1384, i8* %17, align 1
  %1385 = add i64 %1361, 18
  store i64 %1385, i64* %3, align 8
  %1386 = load i32, i32* %1313, align 4
  %1387 = sext i32 %1386 to i64
  %1388 = shl nsw i64 %1387, 5
  store i64 %1388, i64* %RCX.i1734.pre-phi, align 8
  %1389 = add i64 %1388, %1362
  store i64 %1389, i64* %RAX.i1789, align 8
  %1390 = icmp ult i64 %1389, %1362
  %1391 = icmp ult i64 %1389, %1388
  %1392 = or i1 %1390, %1391
  %1393 = zext i1 %1392 to i8
  store i8 %1393, i8* %12, align 1
  %1394 = trunc i64 %1389 to i32
  %1395 = and i32 %1394, 255
  %1396 = tail call i32 @llvm.ctpop.i32(i32 %1395)
  %1397 = trunc i32 %1396 to i8
  %1398 = and i8 %1397, 1
  %1399 = xor i8 %1398, 1
  store i8 %1399, i8* %13, align 1
  %1400 = xor i64 %1362, %1389
  %1401 = lshr i64 %1400, 4
  %1402 = trunc i64 %1401 to i8
  %1403 = and i8 %1402, 1
  store i8 %1403, i8* %14, align 1
  %1404 = icmp eq i64 %1389, 0
  %1405 = zext i1 %1404 to i8
  store i8 %1405, i8* %15, align 1
  %1406 = lshr i64 %1389, 63
  %1407 = trunc i64 %1406 to i8
  store i8 %1407, i8* %16, align 1
  %1408 = lshr i64 %1387, 58
  %1409 = and i64 %1408, 1
  %1410 = xor i64 %1406, %1378
  %1411 = xor i64 %1406, %1409
  %1412 = add nuw nsw i64 %1410, %1411
  %1413 = icmp eq i64 %1412, 2
  %1414 = zext i1 %1413 to i8
  store i8 %1414, i8* %17, align 1
  %1415 = add i64 %1310, -28
  %1416 = add i64 %1361, 29
  store i64 %1416, i64* %3, align 8
  %1417 = inttoptr i64 %1415 to i32*
  %1418 = load i32, i32* %1417, align 4
  %1419 = sext i32 %1418 to i64
  store i64 %1419, i64* %RCX.i1734.pre-phi, align 8
  %1420 = shl nsw i64 %1419, 1
  %1421 = add i64 %1420, %1389
  %1422 = add i64 %1361, 33
  store i64 %1422, i64* %3, align 8
  %1423 = inttoptr i64 %1421 to i16*
  %1424 = load i16, i16* %1423, align 2
  store i16 %1424, i16* %DX.i1307, align 2
  %1425 = load i64, i64* bitcast (%G_0x70fcf0_type* @G_0x70fcf0 to i64*), align 8
  store i64 %1425, i64* %RAX.i1789, align 8
  %1426 = add i64 %1425, 6464
  %1427 = add i64 %1361, 48
  store i64 %1427, i64* %3, align 8
  %1428 = inttoptr i64 %1426 to i64*
  %1429 = load i64, i64* %1428, align 8
  store i64 %1429, i64* %RAX.i1789, align 8
  %1430 = load i64, i64* %RBP.i, align 8
  %1431 = add i64 %1430, -12
  %1432 = add i64 %1361, 52
  store i64 %1432, i64* %3, align 8
  %1433 = inttoptr i64 %1431 to i32*
  %1434 = load i32, i32* %1433, align 4
  %1435 = sext i32 %1434 to i64
  store i64 %1435, i64* %RCX.i1734.pre-phi, align 8
  %1436 = shl nsw i64 %1435, 3
  %1437 = add i64 %1436, %1429
  %1438 = add i64 %1361, 56
  store i64 %1438, i64* %3, align 8
  %1439 = inttoptr i64 %1437 to i64*
  %1440 = load i64, i64* %1439, align 8
  store i64 %1440, i64* %RAX.i1789, align 8
  %1441 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*), align 8
  store i64 %1441, i64* %RCX.i1734.pre-phi, align 8
  %1442 = add i64 %1441, 164
  %1443 = add i64 %1361, 70
  store i64 %1443, i64* %3, align 8
  %1444 = inttoptr i64 %1442 to i32*
  %1445 = load i32, i32* %1444, align 4
  %1446 = zext i32 %1445 to i64
  store i64 %1446, i64* %RSI.i1729, align 8
  %1447 = add i64 %1430, -28
  %1448 = add i64 %1361, 73
  store i64 %1448, i64* %3, align 8
  %1449 = inttoptr i64 %1447 to i32*
  %1450 = load i32, i32* %1449, align 4
  %1451 = add i32 %1450, %1445
  %1452 = zext i32 %1451 to i64
  store i64 %1452, i64* %RSI.i1729, align 8
  %1453 = icmp ult i32 %1451, %1445
  %1454 = icmp ult i32 %1451, %1450
  %1455 = or i1 %1453, %1454
  %1456 = zext i1 %1455 to i8
  store i8 %1456, i8* %12, align 1
  %1457 = and i32 %1451, 255
  %1458 = tail call i32 @llvm.ctpop.i32(i32 %1457)
  %1459 = trunc i32 %1458 to i8
  %1460 = and i8 %1459, 1
  %1461 = xor i8 %1460, 1
  store i8 %1461, i8* %13, align 1
  %1462 = xor i32 %1450, %1445
  %1463 = xor i32 %1462, %1451
  %1464 = lshr i32 %1463, 4
  %1465 = trunc i32 %1464 to i8
  %1466 = and i8 %1465, 1
  store i8 %1466, i8* %14, align 1
  %1467 = icmp eq i32 %1451, 0
  %1468 = zext i1 %1467 to i8
  store i8 %1468, i8* %15, align 1
  %1469 = lshr i32 %1451, 31
  %1470 = trunc i32 %1469 to i8
  store i8 %1470, i8* %16, align 1
  %1471 = lshr i32 %1445, 31
  %1472 = lshr i32 %1450, 31
  %1473 = xor i32 %1469, %1471
  %1474 = xor i32 %1469, %1472
  %1475 = add nuw nsw i32 %1473, %1474
  %1476 = icmp eq i32 %1475, 2
  %1477 = zext i1 %1476 to i8
  store i8 %1477, i8* %17, align 1
  %1478 = sext i32 %1451 to i64
  store i64 %1478, i64* %RCX.i1734.pre-phi, align 8
  %1479 = shl nsw i64 %1478, 3
  %1480 = add i64 %1440, %1479
  %1481 = add i64 %1361, 80
  store i64 %1481, i64* %3, align 8
  %1482 = inttoptr i64 %1480 to i64*
  %1483 = load i64, i64* %1482, align 8
  store i64 %1483, i64* %RAX.i1789, align 8
  store i64 %1441, i64* %RCX.i1734.pre-phi, align 8
  %1484 = add i64 %1441, 160
  %1485 = add i64 %1361, 94
  store i64 %1485, i64* %3, align 8
  %1486 = inttoptr i64 %1484 to i32*
  %1487 = load i32, i32* %1486, align 4
  %1488 = zext i32 %1487 to i64
  store i64 %1488, i64* %RSI.i1729, align 8
  %1489 = add i64 %1430, -32
  %1490 = add i64 %1361, 97
  store i64 %1490, i64* %3, align 8
  %1491 = inttoptr i64 %1489 to i32*
  %1492 = load i32, i32* %1491, align 4
  %1493 = add i32 %1492, %1487
  %1494 = zext i32 %1493 to i64
  store i64 %1494, i64* %RSI.i1729, align 8
  %1495 = icmp ult i32 %1493, %1487
  %1496 = icmp ult i32 %1493, %1492
  %1497 = or i1 %1495, %1496
  %1498 = zext i1 %1497 to i8
  store i8 %1498, i8* %12, align 1
  %1499 = and i32 %1493, 255
  %1500 = tail call i32 @llvm.ctpop.i32(i32 %1499)
  %1501 = trunc i32 %1500 to i8
  %1502 = and i8 %1501, 1
  %1503 = xor i8 %1502, 1
  store i8 %1503, i8* %13, align 1
  %1504 = xor i32 %1492, %1487
  %1505 = xor i32 %1504, %1493
  %1506 = lshr i32 %1505, 4
  %1507 = trunc i32 %1506 to i8
  %1508 = and i8 %1507, 1
  store i8 %1508, i8* %14, align 1
  %1509 = icmp eq i32 %1493, 0
  %1510 = zext i1 %1509 to i8
  store i8 %1510, i8* %15, align 1
  %1511 = lshr i32 %1493, 31
  %1512 = trunc i32 %1511 to i8
  store i8 %1512, i8* %16, align 1
  %1513 = lshr i32 %1487, 31
  %1514 = lshr i32 %1492, 31
  %1515 = xor i32 %1511, %1513
  %1516 = xor i32 %1511, %1514
  %1517 = add nuw nsw i32 %1515, %1516
  %1518 = icmp eq i32 %1517, 2
  %1519 = zext i1 %1518 to i8
  store i8 %1519, i8* %17, align 1
  %1520 = sext i32 %1493 to i64
  store i64 %1520, i64* %RCX.i1734.pre-phi, align 8
  %1521 = shl nsw i64 %1520, 1
  %1522 = add i64 %1483, %1521
  %1523 = load i16, i16* %DX.i1307, align 2
  %1524 = add i64 %1361, 104
  store i64 %1524, i64* %3, align 8
  %1525 = inttoptr i64 %1522 to i16*
  store i16 %1523, i16* %1525, align 2
  %1526 = load i64, i64* %3, align 8
  %1527 = add i64 %1526, 89
  br label %block_.L_441a00

block_.L_4419ac:                                  ; preds = %block_44192a
  %1528 = add i64 %1310, -12
  %1529 = add i64 %1361, 4
  store i64 %1529, i64* %3, align 8
  %1530 = inttoptr i64 %1528 to i32*
  %1531 = load i32, i32* %1530, align 4
  store i8 0, i8* %12, align 1
  %1532 = and i32 %1531, 255
  %1533 = tail call i32 @llvm.ctpop.i32(i32 %1532)
  %1534 = trunc i32 %1533 to i8
  %1535 = and i8 %1534, 1
  %1536 = xor i8 %1535, 1
  store i8 %1536, i8* %13, align 1
  store i8 0, i8* %14, align 1
  %1537 = icmp eq i32 %1531, 0
  %1538 = zext i1 %1537 to i8
  store i8 %1538, i8* %15, align 1
  %1539 = lshr i32 %1531, 31
  %1540 = trunc i32 %1539 to i8
  store i8 %1540, i8* %16, align 1
  store i8 0, i8* %17, align 1
  %.v189 = select i1 %1537, i64 10, i64 47
  %1541 = add i64 %1361, %.v189
  %1542 = add i64 %1541, 10
  store i64 %1542, i64* %3, align 8
  br i1 %1537, label %block_4419b6, label %block_.L_4419db

block_4419b6:                                     ; preds = %block_.L_4419ac
  store i64 ptrtoint (%G__0x6f8f20_type* @G__0x6f8f20 to i64), i64* %RAX.i1789, align 8
  %1543 = add i64 %1541, 14
  store i64 %1543, i64* %3, align 8
  %1544 = load i32, i32* %1313, align 4
  %1545 = sext i32 %1544 to i64
  %1546 = shl nsw i64 %1545, 6
  store i64 %1546, i64* %RCX.i1734.pre-phi, align 8
  %1547 = add i64 %1546, ptrtoint (%G__0x6f8f20_type* @G__0x6f8f20 to i64)
  store i64 %1547, i64* %RAX.i1789, align 8
  %1548 = icmp ult i64 %1547, ptrtoint (%G__0x6f8f20_type* @G__0x6f8f20 to i64)
  %1549 = icmp ult i64 %1547, %1546
  %1550 = or i1 %1548, %1549
  %1551 = zext i1 %1550 to i8
  store i8 %1551, i8* %12, align 1
  %1552 = trunc i64 %1547 to i32
  %1553 = and i32 %1552, 248
  %1554 = tail call i32 @llvm.ctpop.i32(i32 %1553)
  %1555 = trunc i32 %1554 to i8
  %1556 = and i8 %1555, 1
  %1557 = xor i8 %1556, 1
  store i8 %1557, i8* %13, align 1
  %1558 = xor i64 %1547, ptrtoint (%G__0x6f8f20_type* @G__0x6f8f20 to i64)
  %1559 = lshr i64 %1558, 4
  %1560 = trunc i64 %1559 to i8
  %1561 = and i8 %1560, 1
  store i8 %1561, i8* %14, align 1
  %1562 = icmp eq i64 %1547, 0
  %1563 = zext i1 %1562 to i8
  store i8 %1563, i8* %15, align 1
  %1564 = lshr i64 %1547, 63
  %1565 = trunc i64 %1564 to i8
  store i8 %1565, i8* %16, align 1
  %1566 = lshr i64 %1545, 57
  %1567 = and i64 %1566, 1
  %1568 = xor i64 %1564, lshr (i64 ptrtoint (%G__0x6f8f20_type* @G__0x6f8f20 to i64), i64 63)
  %1569 = xor i64 %1564, %1567
  %1570 = add nuw nsw i64 %1568, %1569
  %1571 = icmp eq i64 %1570, 2
  %1572 = zext i1 %1571 to i8
  store i8 %1572, i8* %17, align 1
  %1573 = add i64 %1310, -28
  %1574 = add i64 %1541, 25
  store i64 %1574, i64* %3, align 8
  %1575 = inttoptr i64 %1573 to i32*
  %1576 = load i32, i32* %1575, align 4
  %1577 = sext i32 %1576 to i64
  store i64 %1577, i64* %RCX.i1734.pre-phi, align 8
  %1578 = shl nsw i64 %1577, 2
  %1579 = add i64 %1578, %1547
  %1580 = add i64 %1541, 32
  store i64 %1580, i64* %3, align 8
  %1581 = inttoptr i64 %1579 to i32*
  store i32 0, i32* %1581, align 4
  %1582 = load i64, i64* %3, align 8
  %1583 = add i64 %1582, 37
  store i64 %1583, i64* %3, align 8
  br label %block_.L_4419fb

block_.L_4419db:                                  ; preds = %block_.L_4419ac
  store i64 ptrtoint (%G__0x6d2ec0_type* @G__0x6d2ec0 to i64), i64* %RAX.i1789, align 8
  %1584 = add i64 %1541, 14
  store i64 %1584, i64* %3, align 8
  %1585 = load i32, i32* %1313, align 4
  %1586 = sext i32 %1585 to i64
  %1587 = shl nsw i64 %1586, 6
  store i64 %1587, i64* %RCX.i1734.pre-phi, align 8
  %1588 = add i64 %1587, ptrtoint (%G__0x6d2ec0_type* @G__0x6d2ec0 to i64)
  store i64 %1588, i64* %RAX.i1789, align 8
  %1589 = icmp ult i64 %1588, ptrtoint (%G__0x6d2ec0_type* @G__0x6d2ec0 to i64)
  %1590 = icmp ult i64 %1588, %1587
  %1591 = or i1 %1589, %1590
  %1592 = zext i1 %1591 to i8
  store i8 %1592, i8* %12, align 1
  %1593 = trunc i64 %1588 to i32
  %1594 = and i32 %1593, 248
  %1595 = tail call i32 @llvm.ctpop.i32(i32 %1594)
  %1596 = trunc i32 %1595 to i8
  %1597 = and i8 %1596, 1
  %1598 = xor i8 %1597, 1
  store i8 %1598, i8* %13, align 1
  %1599 = xor i64 %1588, ptrtoint (%G__0x6d2ec0_type* @G__0x6d2ec0 to i64)
  %1600 = lshr i64 %1599, 4
  %1601 = trunc i64 %1600 to i8
  %1602 = and i8 %1601, 1
  store i8 %1602, i8* %14, align 1
  %1603 = icmp eq i64 %1588, 0
  %1604 = zext i1 %1603 to i8
  store i8 %1604, i8* %15, align 1
  %1605 = lshr i64 %1588, 63
  %1606 = trunc i64 %1605 to i8
  store i8 %1606, i8* %16, align 1
  %1607 = lshr i64 %1586, 57
  %1608 = and i64 %1607, 1
  %1609 = xor i64 %1605, lshr (i64 ptrtoint (%G__0x6d2ec0_type* @G__0x6d2ec0 to i64), i64 63)
  %1610 = xor i64 %1605, %1608
  %1611 = add nuw nsw i64 %1609, %1610
  %1612 = icmp eq i64 %1611, 2
  %1613 = zext i1 %1612 to i8
  store i8 %1613, i8* %17, align 1
  %1614 = add i64 %1310, -28
  %1615 = add i64 %1541, 25
  store i64 %1615, i64* %3, align 8
  %1616 = inttoptr i64 %1614 to i32*
  %1617 = load i32, i32* %1616, align 4
  %1618 = sext i32 %1617 to i64
  store i64 %1618, i64* %RCX.i1734.pre-phi, align 8
  %1619 = shl nsw i64 %1618, 2
  %1620 = add i64 %1619, %1588
  %1621 = add i64 %1541, 32
  store i64 %1621, i64* %3, align 8
  %1622 = inttoptr i64 %1620 to i32*
  store i32 0, i32* %1622, align 4
  %.pre140 = load i64, i64* %3, align 8
  br label %block_.L_4419fb

block_.L_4419fb:                                  ; preds = %block_.L_4419db, %block_4419b6
  %1623 = phi i64 [ %.pre140, %block_.L_4419db ], [ %1583, %block_4419b6 ]
  %1624 = add i64 %1623, 5
  store i64 %1624, i64* %3, align 8
  br label %block_.L_441a00

block_.L_441a00:                                  ; preds = %block_.L_4419fb, %block_44193f
  %storemerge60 = phi i64 [ %1527, %block_44193f ], [ %1624, %block_.L_4419fb ]
  %1625 = load i64, i64* %RBP.i, align 8
  %1626 = add i64 %1625, -32
  %1627 = add i64 %storemerge60, 8
  store i64 %1627, i64* %3, align 8
  %1628 = inttoptr i64 %1626 to i32*
  %1629 = load i32, i32* %1628, align 4
  %1630 = add i32 %1629, 1
  %1631 = zext i32 %1630 to i64
  store i64 %1631, i64* %RAX.i1789, align 8
  %1632 = icmp eq i32 %1629, -1
  %1633 = icmp eq i32 %1630, 0
  %1634 = or i1 %1632, %1633
  %1635 = zext i1 %1634 to i8
  store i8 %1635, i8* %12, align 1
  %1636 = and i32 %1630, 255
  %1637 = tail call i32 @llvm.ctpop.i32(i32 %1636)
  %1638 = trunc i32 %1637 to i8
  %1639 = and i8 %1638, 1
  %1640 = xor i8 %1639, 1
  store i8 %1640, i8* %13, align 1
  %1641 = xor i32 %1630, %1629
  %1642 = lshr i32 %1641, 4
  %1643 = trunc i32 %1642 to i8
  %1644 = and i8 %1643, 1
  store i8 %1644, i8* %14, align 1
  %1645 = zext i1 %1633 to i8
  store i8 %1645, i8* %15, align 1
  %1646 = lshr i32 %1630, 31
  %1647 = trunc i32 %1646 to i8
  store i8 %1647, i8* %16, align 1
  %1648 = lshr i32 %1629, 31
  %1649 = xor i32 %1646, %1648
  %1650 = add nuw nsw i32 %1649, %1646
  %1651 = icmp eq i32 %1650, 2
  %1652 = zext i1 %1651 to i8
  store i8 %1652, i8* %17, align 1
  %1653 = add i64 %storemerge60, 14
  store i64 %1653, i64* %3, align 8
  store i32 %1630, i32* %1628, align 4
  %1654 = load i64, i64* %3, align 8
  %1655 = add i64 %1654, -251
  store i64 %1655, i64* %3, align 8
  br label %block_.L_441913

block_.L_441a13:                                  ; preds = %block_.L_441913
  %1656 = add i64 %1310, -28
  %1657 = add i64 %1347, 8
  store i64 %1657, i64* %3, align 8
  %1658 = inttoptr i64 %1656 to i32*
  %1659 = load i32, i32* %1658, align 4
  %1660 = add i32 %1659, 1
  %1661 = zext i32 %1660 to i64
  store i64 %1661, i64* %RAX.i1789, align 8
  %1662 = icmp eq i32 %1659, -1
  %1663 = icmp eq i32 %1660, 0
  %1664 = or i1 %1662, %1663
  %1665 = zext i1 %1664 to i8
  store i8 %1665, i8* %12, align 1
  %1666 = and i32 %1660, 255
  %1667 = tail call i32 @llvm.ctpop.i32(i32 %1666)
  %1668 = trunc i32 %1667 to i8
  %1669 = and i8 %1668, 1
  %1670 = xor i8 %1669, 1
  store i8 %1670, i8* %13, align 1
  %1671 = xor i32 %1660, %1659
  %1672 = lshr i32 %1671, 4
  %1673 = trunc i32 %1672 to i8
  %1674 = and i8 %1673, 1
  store i8 %1674, i8* %14, align 1
  %1675 = zext i1 %1663 to i8
  store i8 %1675, i8* %15, align 1
  %1676 = lshr i32 %1660, 31
  %1677 = trunc i32 %1676 to i8
  store i8 %1677, i8* %16, align 1
  %1678 = lshr i32 %1659, 31
  %1679 = xor i32 %1676, %1678
  %1680 = add nuw nsw i32 %1679, %1676
  %1681 = icmp eq i32 %1680, 2
  %1682 = zext i1 %1681 to i8
  store i8 %1682, i8* %17, align 1
  %1683 = add i64 %1347, 14
  store i64 %1683, i64* %3, align 8
  store i32 %1660, i32* %1658, align 4
  %1684 = load i64, i64* %3, align 8
  %1685 = add i64 %1684, -300
  store i64 %1685, i64* %3, align 8
  br label %block_.L_4418f5

block_.L_441a26:                                  ; preds = %block_.L_4418f5
  %1686 = add i64 %1305, 405
  br label %block_.L_441bbb

block_.L_441a32:                                  ; preds = %block_.L_441a32.preheader, %block_.L_441ba3
  %1687 = phi i64 [ %2310, %block_.L_441ba3 ], [ %.pre141, %block_.L_441a32.preheader ]
  %1688 = load i64, i64* %RBP.i, align 8
  %1689 = add i64 %1688, -28
  %1690 = add i64 %1687, 3
  store i64 %1690, i64* %3, align 8
  %1691 = inttoptr i64 %1689 to i32*
  %1692 = load i32, i32* %1691, align 4
  %1693 = zext i32 %1692 to i64
  store i64 %1693, i64* %RAX.i1789, align 8
  %1694 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*), align 8
  store i64 %1694, i64* %RCX.i1734.pre-phi, align 8
  %1695 = add i64 %1694, 72712
  %1696 = add i64 %1687, 17
  store i64 %1696, i64* %3, align 8
  %1697 = inttoptr i64 %1695 to i32*
  %1698 = load i32, i32* %1697, align 4
  %1699 = sub i32 %1692, %1698
  %1700 = icmp ult i32 %1692, %1698
  %1701 = zext i1 %1700 to i8
  store i8 %1701, i8* %12, align 1
  %1702 = and i32 %1699, 255
  %1703 = tail call i32 @llvm.ctpop.i32(i32 %1702)
  %1704 = trunc i32 %1703 to i8
  %1705 = and i8 %1704, 1
  %1706 = xor i8 %1705, 1
  store i8 %1706, i8* %13, align 1
  %1707 = xor i32 %1698, %1692
  %1708 = xor i32 %1707, %1699
  %1709 = lshr i32 %1708, 4
  %1710 = trunc i32 %1709 to i8
  %1711 = and i8 %1710, 1
  store i8 %1711, i8* %14, align 1
  %1712 = icmp eq i32 %1699, 0
  %1713 = zext i1 %1712 to i8
  store i8 %1713, i8* %15, align 1
  %1714 = lshr i32 %1699, 31
  %1715 = trunc i32 %1714 to i8
  store i8 %1715, i8* %16, align 1
  %1716 = lshr i32 %1692, 31
  %1717 = lshr i32 %1698, 31
  %1718 = xor i32 %1717, %1716
  %1719 = xor i32 %1714, %1716
  %1720 = add nuw nsw i32 %1719, %1718
  %1721 = icmp eq i32 %1720, 2
  %1722 = zext i1 %1721 to i8
  store i8 %1722, i8* %17, align 1
  %1723 = icmp ne i8 %1715, 0
  %1724 = xor i1 %1723, %1721
  %.v190 = select i1 %1724, i64 23, i64 388
  %1725 = add i64 %1687, %.v190
  store i64 %1725, i64* %3, align 8
  br i1 %1724, label %block_441a49, label %block_.L_441bb6

block_441a49:                                     ; preds = %block_.L_441a32
  %1726 = add i64 %1688, -32
  %1727 = add i64 %1725, 7
  store i64 %1727, i64* %3, align 8
  %1728 = inttoptr i64 %1726 to i32*
  store i32 0, i32* %1728, align 4
  %.pre147 = load i64, i64* %3, align 8
  br label %block_.L_441a50

block_.L_441a50:                                  ; preds = %block_.L_441b90, %block_441a49
  %1729 = phi i64 [ %2280, %block_.L_441b90 ], [ %.pre147, %block_441a49 ]
  %1730 = load i64, i64* %RBP.i, align 8
  %1731 = add i64 %1730, -32
  %1732 = add i64 %1729, 3
  store i64 %1732, i64* %3, align 8
  %1733 = inttoptr i64 %1731 to i32*
  %1734 = load i32, i32* %1733, align 4
  %1735 = zext i32 %1734 to i64
  store i64 %1735, i64* %RAX.i1789, align 8
  %1736 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*), align 8
  store i64 %1736, i64* %RCX.i1734.pre-phi, align 8
  %1737 = add i64 %1736, 72708
  %1738 = add i64 %1729, 17
  store i64 %1738, i64* %3, align 8
  %1739 = inttoptr i64 %1737 to i32*
  %1740 = load i32, i32* %1739, align 4
  %1741 = sub i32 %1734, %1740
  %1742 = icmp ult i32 %1734, %1740
  %1743 = zext i1 %1742 to i8
  store i8 %1743, i8* %12, align 1
  %1744 = and i32 %1741, 255
  %1745 = tail call i32 @llvm.ctpop.i32(i32 %1744)
  %1746 = trunc i32 %1745 to i8
  %1747 = and i8 %1746, 1
  %1748 = xor i8 %1747, 1
  store i8 %1748, i8* %13, align 1
  %1749 = xor i32 %1740, %1734
  %1750 = xor i32 %1749, %1741
  %1751 = lshr i32 %1750, 4
  %1752 = trunc i32 %1751 to i8
  %1753 = and i8 %1752, 1
  store i8 %1753, i8* %14, align 1
  %1754 = icmp eq i32 %1741, 0
  %1755 = zext i1 %1754 to i8
  store i8 %1755, i8* %15, align 1
  %1756 = lshr i32 %1741, 31
  %1757 = trunc i32 %1756 to i8
  store i8 %1757, i8* %16, align 1
  %1758 = lshr i32 %1734, 31
  %1759 = lshr i32 %1740, 31
  %1760 = xor i32 %1759, %1758
  %1761 = xor i32 %1756, %1758
  %1762 = add nuw nsw i32 %1761, %1760
  %1763 = icmp eq i32 %1762, 2
  %1764 = zext i1 %1763 to i8
  store i8 %1764, i8* %17, align 1
  %1765 = icmp ne i8 %1757, 0
  %1766 = xor i1 %1765, %1763
  %.v156 = select i1 %1766, i64 23, i64 339
  %1767 = add i64 %1729, %.v156
  store i64 %1767, i64* %3, align 8
  br i1 %1766, label %block_441a67, label %block_.L_441ba3

block_441a67:                                     ; preds = %block_.L_441a50
  store i64 %1736, i64* %RAX.i1789, align 8
  %1768 = add i64 %1736, 72724
  %1769 = add i64 %1767, 15
  store i64 %1769, i64* %3, align 8
  %1770 = inttoptr i64 %1768 to i32*
  %1771 = load i32, i32* %1770, align 4
  store i8 0, i8* %12, align 1
  %1772 = and i32 %1771, 255
  %1773 = tail call i32 @llvm.ctpop.i32(i32 %1772)
  %1774 = trunc i32 %1773 to i8
  %1775 = and i8 %1774, 1
  %1776 = xor i8 %1775, 1
  store i8 %1776, i8* %13, align 1
  store i8 0, i8* %14, align 1
  %1777 = icmp eq i32 %1771, 0
  %1778 = zext i1 %1777 to i8
  store i8 %1778, i8* %15, align 1
  %1779 = lshr i32 %1771, 31
  %1780 = trunc i32 %1779 to i8
  store i8 %1780, i8* %16, align 1
  store i8 0, i8* %17, align 1
  %.v191 = select i1 %1777, i64 21, i64 157
  %1781 = add i64 %1767, %.v191
  store i64 %1781, i64* %3, align 8
  br i1 %1777, label %block_441a7c, label %block_.L_441b04

block_441a7c:                                     ; preds = %block_441a67
  %1782 = load i64, i64* bitcast (%G_0x6f6f90_type* @G_0x6f6f90 to i64*), align 8
  store i64 %1782, i64* %RAX.i1789, align 8
  %1783 = add i64 %1730, -12
  %1784 = add i64 %1781, 12
  store i64 %1784, i64* %3, align 8
  %1785 = inttoptr i64 %1783 to i32*
  %1786 = load i32, i32* %1785, align 4
  %1787 = sext i32 %1786 to i64
  store i64 %1787, i64* %RCX.i1734.pre-phi, align 8
  %1788 = shl nsw i64 %1787, 3
  %1789 = add i64 %1788, %1782
  %1790 = add i64 %1781, 16
  store i64 %1790, i64* %3, align 8
  %1791 = inttoptr i64 %1789 to i64*
  %1792 = load i64, i64* %1791, align 8
  store i64 %1792, i64* %RAX.i1789, align 8
  store i64 %1736, i64* %RCX.i1734.pre-phi, align 8
  %1793 = add i64 %1736, 180
  %1794 = add i64 %1781, 30
  store i64 %1794, i64* %3, align 8
  %1795 = inttoptr i64 %1793 to i32*
  %1796 = load i32, i32* %1795, align 4
  %1797 = zext i32 %1796 to i64
  store i64 %1797, i64* %RDX.i1776, align 8
  %1798 = add i64 %1730, -28
  %1799 = add i64 %1781, 33
  store i64 %1799, i64* %3, align 8
  %1800 = inttoptr i64 %1798 to i32*
  %1801 = load i32, i32* %1800, align 4
  %1802 = add i32 %1801, %1796
  %1803 = zext i32 %1802 to i64
  store i64 %1803, i64* %RDX.i1776, align 8
  %1804 = icmp ult i32 %1802, %1796
  %1805 = icmp ult i32 %1802, %1801
  %1806 = or i1 %1804, %1805
  %1807 = zext i1 %1806 to i8
  store i8 %1807, i8* %12, align 1
  %1808 = and i32 %1802, 255
  %1809 = tail call i32 @llvm.ctpop.i32(i32 %1808)
  %1810 = trunc i32 %1809 to i8
  %1811 = and i8 %1810, 1
  %1812 = xor i8 %1811, 1
  store i8 %1812, i8* %13, align 1
  %1813 = xor i32 %1801, %1796
  %1814 = xor i32 %1813, %1802
  %1815 = lshr i32 %1814, 4
  %1816 = trunc i32 %1815 to i8
  %1817 = and i8 %1816, 1
  store i8 %1817, i8* %14, align 1
  %1818 = icmp eq i32 %1802, 0
  %1819 = zext i1 %1818 to i8
  store i8 %1819, i8* %15, align 1
  %1820 = lshr i32 %1802, 31
  %1821 = trunc i32 %1820 to i8
  store i8 %1821, i8* %16, align 1
  %1822 = lshr i32 %1796, 31
  %1823 = lshr i32 %1801, 31
  %1824 = xor i32 %1820, %1822
  %1825 = xor i32 %1820, %1823
  %1826 = add nuw nsw i32 %1824, %1825
  %1827 = icmp eq i32 %1826, 2
  %1828 = zext i1 %1827 to i8
  store i8 %1828, i8* %17, align 1
  %1829 = sext i32 %1802 to i64
  store i64 %1829, i64* %RCX.i1734.pre-phi, align 8
  %1830 = shl nsw i64 %1829, 3
  %1831 = add i64 %1792, %1830
  %1832 = add i64 %1781, 40
  store i64 %1832, i64* %3, align 8
  %1833 = inttoptr i64 %1831 to i64*
  %1834 = load i64, i64* %1833, align 8
  store i64 %1834, i64* %RAX.i1789, align 8
  store i64 %1736, i64* %RCX.i1734.pre-phi, align 8
  %1835 = add i64 %1736, 176
  %1836 = add i64 %1781, 54
  store i64 %1836, i64* %3, align 8
  %1837 = inttoptr i64 %1835 to i32*
  %1838 = load i32, i32* %1837, align 4
  %1839 = zext i32 %1838 to i64
  store i64 %1839, i64* %RDX.i1776, align 8
  %1840 = add i64 %1781, 57
  store i64 %1840, i64* %3, align 8
  %1841 = load i32, i32* %1733, align 4
  %1842 = add i32 %1841, %1838
  %1843 = zext i32 %1842 to i64
  store i64 %1843, i64* %RDX.i1776, align 8
  %1844 = icmp ult i32 %1842, %1838
  %1845 = icmp ult i32 %1842, %1841
  %1846 = or i1 %1844, %1845
  %1847 = zext i1 %1846 to i8
  store i8 %1847, i8* %12, align 1
  %1848 = and i32 %1842, 255
  %1849 = tail call i32 @llvm.ctpop.i32(i32 %1848)
  %1850 = trunc i32 %1849 to i8
  %1851 = and i8 %1850, 1
  %1852 = xor i8 %1851, 1
  store i8 %1852, i8* %13, align 1
  %1853 = xor i32 %1841, %1838
  %1854 = xor i32 %1853, %1842
  %1855 = lshr i32 %1854, 4
  %1856 = trunc i32 %1855 to i8
  %1857 = and i8 %1856, 1
  store i8 %1857, i8* %14, align 1
  %1858 = icmp eq i32 %1842, 0
  %1859 = zext i1 %1858 to i8
  store i8 %1859, i8* %15, align 1
  %1860 = lshr i32 %1842, 31
  %1861 = trunc i32 %1860 to i8
  store i8 %1861, i8* %16, align 1
  %1862 = lshr i32 %1838, 31
  %1863 = lshr i32 %1841, 31
  %1864 = xor i32 %1860, %1862
  %1865 = xor i32 %1860, %1863
  %1866 = add nuw nsw i32 %1864, %1865
  %1867 = icmp eq i32 %1866, 2
  %1868 = zext i1 %1867 to i8
  store i8 %1868, i8* %17, align 1
  %1869 = sext i32 %1842 to i64
  store i64 %1869, i64* %RCX.i1734.pre-phi, align 8
  %1870 = shl nsw i64 %1869, 1
  %1871 = add i64 %1834, %1870
  %1872 = add i64 %1781, 64
  store i64 %1872, i64* %3, align 8
  %1873 = inttoptr i64 %1871 to i16*
  %1874 = load i16, i16* %1873, align 2
  %1875 = zext i16 %1874 to i64
  store i64 %1875, i64* %RDX.i1776, align 8
  %1876 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*), align 8
  %1877 = add i64 %1876, 12600
  store i64 %1877, i64* %RAX.i1789, align 8
  %1878 = icmp ugt i64 %1876, -12601
  %1879 = zext i1 %1878 to i8
  store i8 %1879, i8* %12, align 1
  %1880 = trunc i64 %1877 to i32
  %1881 = and i32 %1880, 255
  %1882 = tail call i32 @llvm.ctpop.i32(i32 %1881)
  %1883 = trunc i32 %1882 to i8
  %1884 = and i8 %1883, 1
  %1885 = xor i8 %1884, 1
  store i8 %1885, i8* %13, align 1
  %1886 = xor i64 %1876, 16
  %1887 = xor i64 %1886, %1877
  %1888 = lshr i64 %1887, 4
  %1889 = trunc i64 %1888 to i8
  %1890 = and i8 %1889, 1
  store i8 %1890, i8* %14, align 1
  %1891 = icmp eq i64 %1877, 0
  %1892 = zext i1 %1891 to i8
  store i8 %1892, i8* %15, align 1
  %1893 = lshr i64 %1877, 63
  %1894 = trunc i64 %1893 to i8
  store i8 %1894, i8* %16, align 1
  %1895 = lshr i64 %1876, 63
  %1896 = xor i64 %1893, %1895
  %1897 = add nuw nsw i64 %1896, %1893
  %1898 = icmp eq i64 %1897, 2
  %1899 = zext i1 %1898 to i8
  store i8 %1899, i8* %17, align 1
  %1900 = load i64, i64* %RBP.i, align 8
  %1901 = add i64 %1900, -32
  %1902 = add i64 %1781, 82
  store i64 %1902, i64* %3, align 8
  %1903 = inttoptr i64 %1901 to i32*
  %1904 = load i32, i32* %1903, align 4
  %1905 = sext i32 %1904 to i64
  %1906 = shl nsw i64 %1905, 5
  store i64 %1906, i64* %RCX.i1734.pre-phi, align 8
  %1907 = add i64 %1906, %1877
  store i64 %1907, i64* %RAX.i1789, align 8
  %1908 = icmp ult i64 %1907, %1877
  %1909 = icmp ult i64 %1907, %1906
  %1910 = or i1 %1908, %1909
  %1911 = zext i1 %1910 to i8
  store i8 %1911, i8* %12, align 1
  %1912 = trunc i64 %1907 to i32
  %1913 = and i32 %1912, 255
  %1914 = tail call i32 @llvm.ctpop.i32(i32 %1913)
  %1915 = trunc i32 %1914 to i8
  %1916 = and i8 %1915, 1
  %1917 = xor i8 %1916, 1
  store i8 %1917, i8* %13, align 1
  %1918 = xor i64 %1877, %1907
  %1919 = lshr i64 %1918, 4
  %1920 = trunc i64 %1919 to i8
  %1921 = and i8 %1920, 1
  store i8 %1921, i8* %14, align 1
  %1922 = icmp eq i64 %1907, 0
  %1923 = zext i1 %1922 to i8
  store i8 %1923, i8* %15, align 1
  %1924 = lshr i64 %1907, 63
  %1925 = trunc i64 %1924 to i8
  store i8 %1925, i8* %16, align 1
  %1926 = lshr i64 %1905, 58
  %1927 = and i64 %1926, 1
  %1928 = xor i64 %1924, %1893
  %1929 = xor i64 %1924, %1927
  %1930 = add nuw nsw i64 %1928, %1929
  %1931 = icmp eq i64 %1930, 2
  %1932 = zext i1 %1931 to i8
  store i8 %1932, i8* %17, align 1
  %1933 = add i64 %1900, -28
  %1934 = add i64 %1781, 93
  store i64 %1934, i64* %3, align 8
  %1935 = inttoptr i64 %1933 to i32*
  %1936 = load i32, i32* %1935, align 4
  %1937 = sext i32 %1936 to i64
  store i64 %1937, i64* %RCX.i1734.pre-phi, align 8
  %1938 = shl nsw i64 %1937, 1
  %1939 = add i64 %1938, %1907
  %1940 = add i64 %1781, 97
  store i64 %1940, i64* %3, align 8
  %1941 = inttoptr i64 %1939 to i16*
  %1942 = load i16, i16* %1941, align 2
  %1943 = zext i16 %1942 to i64
  store i64 %1943, i64* %RSI.i1729, align 8
  %1944 = load i64, i64* %RDX.i1776, align 8
  %1945 = zext i16 %1942 to i64
  %1946 = sub i64 %1944, %1945
  %1947 = and i64 %1946, 4294967295
  store i64 %1947, i64* %RDX.i1776, align 8
  %1948 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*), align 8
  %1949 = add i64 %1948, 13112
  store i64 %1949, i64* %RAX.i1789, align 8
  %1950 = icmp ugt i64 %1948, -13113
  %1951 = zext i1 %1950 to i8
  store i8 %1951, i8* %12, align 1
  %1952 = trunc i64 %1949 to i32
  %1953 = and i32 %1952, 255
  %1954 = tail call i32 @llvm.ctpop.i32(i32 %1953)
  %1955 = trunc i32 %1954 to i8
  %1956 = and i8 %1955, 1
  %1957 = xor i8 %1956, 1
  store i8 %1957, i8* %13, align 1
  %1958 = xor i64 %1948, 16
  %1959 = xor i64 %1958, %1949
  %1960 = lshr i64 %1959, 4
  %1961 = trunc i64 %1960 to i8
  %1962 = and i8 %1961, 1
  store i8 %1962, i8* %14, align 1
  %1963 = icmp eq i64 %1949, 0
  %1964 = zext i1 %1963 to i8
  store i8 %1964, i8* %15, align 1
  %1965 = lshr i64 %1949, 63
  %1966 = trunc i64 %1965 to i8
  store i8 %1966, i8* %16, align 1
  %1967 = lshr i64 %1948, 63
  %1968 = xor i64 %1965, %1967
  %1969 = add nuw nsw i64 %1968, %1965
  %1970 = icmp eq i64 %1969, 2
  %1971 = zext i1 %1970 to i8
  store i8 %1971, i8* %17, align 1
  %1972 = load i64, i64* %RBP.i, align 8
  %1973 = add i64 %1972, -32
  %1974 = add i64 %1781, 117
  store i64 %1974, i64* %3, align 8
  %1975 = inttoptr i64 %1973 to i32*
  %1976 = load i32, i32* %1975, align 4
  %1977 = sext i32 %1976 to i64
  %1978 = shl nsw i64 %1977, 6
  store i64 %1978, i64* %RCX.i1734.pre-phi, align 8
  %1979 = add i64 %1978, %1949
  store i64 %1979, i64* %RAX.i1789, align 8
  %1980 = icmp ult i64 %1979, %1949
  %1981 = icmp ult i64 %1979, %1978
  %1982 = or i1 %1980, %1981
  %1983 = zext i1 %1982 to i8
  store i8 %1983, i8* %12, align 1
  %1984 = trunc i64 %1979 to i32
  %1985 = and i32 %1984, 255
  %1986 = tail call i32 @llvm.ctpop.i32(i32 %1985)
  %1987 = trunc i32 %1986 to i8
  %1988 = and i8 %1987, 1
  %1989 = xor i8 %1988, 1
  store i8 %1989, i8* %13, align 1
  %1990 = xor i64 %1949, %1979
  %1991 = lshr i64 %1990, 4
  %1992 = trunc i64 %1991 to i8
  %1993 = and i8 %1992, 1
  store i8 %1993, i8* %14, align 1
  %1994 = icmp eq i64 %1979, 0
  %1995 = zext i1 %1994 to i8
  store i8 %1995, i8* %15, align 1
  %1996 = lshr i64 %1979, 63
  %1997 = trunc i64 %1996 to i8
  store i8 %1997, i8* %16, align 1
  %1998 = lshr i64 %1977, 57
  %1999 = and i64 %1998, 1
  %2000 = xor i64 %1996, %1965
  %2001 = xor i64 %1996, %1999
  %2002 = add nuw nsw i64 %2000, %2001
  %2003 = icmp eq i64 %2002, 2
  %2004 = zext i1 %2003 to i8
  store i8 %2004, i8* %17, align 1
  %2005 = add i64 %1972, -28
  %2006 = add i64 %1781, 128
  store i64 %2006, i64* %3, align 8
  %2007 = inttoptr i64 %2005 to i32*
  %2008 = load i32, i32* %2007, align 4
  %2009 = sext i32 %2008 to i64
  store i64 %2009, i64* %RCX.i1734.pre-phi, align 8
  %2010 = shl nsw i64 %2009, 2
  %2011 = add i64 %2010, %1979
  %2012 = load i32, i32* %EDX.i1028, align 4
  %2013 = add i64 %1781, 131
  store i64 %2013, i64* %3, align 8
  %2014 = inttoptr i64 %2011 to i32*
  store i32 %2012, i32* %2014, align 4
  %2015 = load i64, i64* %3, align 8
  %2016 = add i64 %2015, 145
  br label %block_.L_441b90

block_.L_441b04:                                  ; preds = %block_441a67
  %2017 = add i64 %1730, -12
  %2018 = add i64 %1781, 4
  store i64 %2018, i64* %3, align 8
  %2019 = inttoptr i64 %2017 to i32*
  %2020 = load i32, i32* %2019, align 4
  store i8 0, i8* %12, align 1
  %2021 = and i32 %2020, 255
  %2022 = tail call i32 @llvm.ctpop.i32(i32 %2021)
  %2023 = trunc i32 %2022 to i8
  %2024 = and i8 %2023, 1
  %2025 = xor i8 %2024, 1
  store i8 %2025, i8* %13, align 1
  store i8 0, i8* %14, align 1
  %2026 = icmp eq i32 %2020, 0
  %2027 = zext i1 %2026 to i8
  store i8 %2027, i8* %15, align 1
  %2028 = lshr i32 %2020, 31
  %2029 = trunc i32 %2028 to i8
  store i8 %2029, i8* %16, align 1
  store i8 0, i8* %17, align 1
  %.v192 = select i1 %2026, i64 10, i64 75
  %2030 = add i64 %1781, %.v192
  %2031 = add i64 %2030, 10
  store i64 %2031, i64* %3, align 8
  br i1 %2026, label %block_441b0e, label %block_.L_441b4f

block_441b0e:                                     ; preds = %block_.L_441b04
  store i64 ptrtoint (%G__0x6f6fa0_type* @G__0x6f6fa0 to i64), i64* %RAX.i1789, align 8
  %2032 = add i64 %2030, 14
  store i64 %2032, i64* %3, align 8
  %2033 = load i32, i32* %1733, align 4
  %2034 = sext i32 %2033 to i64
  %2035 = shl nsw i64 %2034, 6
  store i64 %2035, i64* %RCX.i1734.pre-phi, align 8
  %2036 = add i64 %2035, ptrtoint (%G__0x6f6fa0_type* @G__0x6f6fa0 to i64)
  store i64 %2036, i64* %RAX.i1789, align 8
  %2037 = icmp ult i64 %2036, ptrtoint (%G__0x6f6fa0_type* @G__0x6f6fa0 to i64)
  %2038 = icmp ult i64 %2036, %2035
  %2039 = or i1 %2037, %2038
  %2040 = zext i1 %2039 to i8
  store i8 %2040, i8* %12, align 1
  %2041 = trunc i64 %2036 to i32
  %2042 = and i32 %2041, 248
  %2043 = tail call i32 @llvm.ctpop.i32(i32 %2042)
  %2044 = trunc i32 %2043 to i8
  %2045 = and i8 %2044, 1
  %2046 = xor i8 %2045, 1
  store i8 %2046, i8* %13, align 1
  %2047 = xor i64 %2036, ptrtoint (%G__0x6f6fa0_type* @G__0x6f6fa0 to i64)
  %2048 = lshr i64 %2047, 4
  %2049 = trunc i64 %2048 to i8
  %2050 = and i8 %2049, 1
  store i8 %2050, i8* %14, align 1
  %2051 = icmp eq i64 %2036, 0
  %2052 = zext i1 %2051 to i8
  store i8 %2052, i8* %15, align 1
  %2053 = lshr i64 %2036, 63
  %2054 = trunc i64 %2053 to i8
  store i8 %2054, i8* %16, align 1
  %2055 = lshr i64 %2034, 57
  %2056 = and i64 %2055, 1
  %2057 = xor i64 %2053, lshr (i64 ptrtoint (%G__0x6f6fa0_type* @G__0x6f6fa0 to i64), i64 63)
  %2058 = xor i64 %2053, %2056
  %2059 = add nuw nsw i64 %2057, %2058
  %2060 = icmp eq i64 %2059, 2
  %2061 = zext i1 %2060 to i8
  store i8 %2061, i8* %17, align 1
  %2062 = add i64 %1730, -28
  %2063 = add i64 %2030, 25
  store i64 %2063, i64* %3, align 8
  %2064 = inttoptr i64 %2062 to i32*
  %2065 = load i32, i32* %2064, align 4
  %2066 = sext i32 %2065 to i64
  store i64 %2066, i64* %RCX.i1734.pre-phi, align 8
  %2067 = shl nsw i64 %2066, 2
  %2068 = add i64 %2067, %2036
  %2069 = add i64 %2030, 28
  store i64 %2069, i64* %3, align 8
  %2070 = inttoptr i64 %2068 to i32*
  %2071 = load i32, i32* %2070, align 4
  %2072 = zext i32 %2071 to i64
  store i64 %2072, i64* %RDX.i1776, align 8
  %2073 = add i64 %1736, 13112
  store i64 %2073, i64* %RAX.i1789, align 8
  %2074 = icmp ugt i64 %1736, -13113
  %2075 = zext i1 %2074 to i8
  store i8 %2075, i8* %12, align 1
  %2076 = trunc i64 %2073 to i32
  %2077 = and i32 %2076, 255
  %2078 = tail call i32 @llvm.ctpop.i32(i32 %2077)
  %2079 = trunc i32 %2078 to i8
  %2080 = and i8 %2079, 1
  %2081 = xor i8 %2080, 1
  store i8 %2081, i8* %13, align 1
  %2082 = xor i64 %1736, 16
  %2083 = xor i64 %2082, %2073
  %2084 = lshr i64 %2083, 4
  %2085 = trunc i64 %2084 to i8
  %2086 = and i8 %2085, 1
  store i8 %2086, i8* %14, align 1
  %2087 = icmp eq i64 %2073, 0
  %2088 = zext i1 %2087 to i8
  store i8 %2088, i8* %15, align 1
  %2089 = lshr i64 %2073, 63
  %2090 = trunc i64 %2089 to i8
  store i8 %2090, i8* %16, align 1
  %2091 = lshr i64 %1736, 63
  %2092 = xor i64 %2089, %2091
  %2093 = add nuw nsw i64 %2092, %2089
  %2094 = icmp eq i64 %2093, 2
  %2095 = zext i1 %2094 to i8
  store i8 %2095, i8* %17, align 1
  %2096 = load i64, i64* %RBP.i, align 8
  %2097 = add i64 %2096, -32
  %2098 = add i64 %2030, 46
  store i64 %2098, i64* %3, align 8
  %2099 = inttoptr i64 %2097 to i32*
  %2100 = load i32, i32* %2099, align 4
  %2101 = sext i32 %2100 to i64
  %2102 = shl nsw i64 %2101, 6
  store i64 %2102, i64* %RCX.i1734.pre-phi, align 8
  %2103 = add i64 %2102, %2073
  store i64 %2103, i64* %RAX.i1789, align 8
  %2104 = icmp ult i64 %2103, %2073
  %2105 = icmp ult i64 %2103, %2102
  %2106 = or i1 %2104, %2105
  %2107 = zext i1 %2106 to i8
  store i8 %2107, i8* %12, align 1
  %2108 = trunc i64 %2103 to i32
  %2109 = and i32 %2108, 255
  %2110 = tail call i32 @llvm.ctpop.i32(i32 %2109)
  %2111 = trunc i32 %2110 to i8
  %2112 = and i8 %2111, 1
  %2113 = xor i8 %2112, 1
  store i8 %2113, i8* %13, align 1
  %2114 = xor i64 %2073, %2103
  %2115 = lshr i64 %2114, 4
  %2116 = trunc i64 %2115 to i8
  %2117 = and i8 %2116, 1
  store i8 %2117, i8* %14, align 1
  %2118 = icmp eq i64 %2103, 0
  %2119 = zext i1 %2118 to i8
  store i8 %2119, i8* %15, align 1
  %2120 = lshr i64 %2103, 63
  %2121 = trunc i64 %2120 to i8
  store i8 %2121, i8* %16, align 1
  %2122 = lshr i64 %2101, 57
  %2123 = and i64 %2122, 1
  %2124 = xor i64 %2120, %2089
  %2125 = xor i64 %2120, %2123
  %2126 = add nuw nsw i64 %2124, %2125
  %2127 = icmp eq i64 %2126, 2
  %2128 = zext i1 %2127 to i8
  store i8 %2128, i8* %17, align 1
  %2129 = add i64 %2096, -28
  %2130 = add i64 %2030, 57
  store i64 %2130, i64* %3, align 8
  %2131 = inttoptr i64 %2129 to i32*
  %2132 = load i32, i32* %2131, align 4
  %2133 = sext i32 %2132 to i64
  store i64 %2133, i64* %RCX.i1734.pre-phi, align 8
  %2134 = shl nsw i64 %2133, 2
  %2135 = add i64 %2134, %2103
  %2136 = load i32, i32* %EDX.i1028, align 4
  %2137 = add i64 %2030, 60
  store i64 %2137, i64* %3, align 8
  %2138 = inttoptr i64 %2135 to i32*
  store i32 %2136, i32* %2138, align 4
  %2139 = load i64, i64* %3, align 8
  %2140 = add i64 %2139, 65
  store i64 %2140, i64* %3, align 8
  br label %block_.L_441b8b

block_.L_441b4f:                                  ; preds = %block_.L_441b04
  store i64 ptrtoint (%G__0x6d40f0_type* @G__0x6d40f0 to i64), i64* %RAX.i1789, align 8
  %2141 = add i64 %2030, 14
  store i64 %2141, i64* %3, align 8
  %2142 = load i32, i32* %1733, align 4
  %2143 = sext i32 %2142 to i64
  %2144 = shl nsw i64 %2143, 6
  store i64 %2144, i64* %RCX.i1734.pre-phi, align 8
  %2145 = add i64 %2144, ptrtoint (%G__0x6d40f0_type* @G__0x6d40f0 to i64)
  store i64 %2145, i64* %RAX.i1789, align 8
  %2146 = icmp ult i64 %2145, ptrtoint (%G__0x6d40f0_type* @G__0x6d40f0 to i64)
  %2147 = icmp ult i64 %2145, %2144
  %2148 = or i1 %2146, %2147
  %2149 = zext i1 %2148 to i8
  store i8 %2149, i8* %12, align 1
  %2150 = trunc i64 %2145 to i32
  %2151 = and i32 %2150, 248
  %2152 = tail call i32 @llvm.ctpop.i32(i32 %2151)
  %2153 = trunc i32 %2152 to i8
  %2154 = and i8 %2153, 1
  %2155 = xor i8 %2154, 1
  store i8 %2155, i8* %13, align 1
  %2156 = xor i64 %2145, ptrtoint (%G__0x6d40f0_type* @G__0x6d40f0 to i64)
  %2157 = lshr i64 %2156, 4
  %2158 = trunc i64 %2157 to i8
  %2159 = and i8 %2158, 1
  store i8 %2159, i8* %14, align 1
  %2160 = icmp eq i64 %2145, 0
  %2161 = zext i1 %2160 to i8
  store i8 %2161, i8* %15, align 1
  %2162 = lshr i64 %2145, 63
  %2163 = trunc i64 %2162 to i8
  store i8 %2163, i8* %16, align 1
  %2164 = lshr i64 %2143, 57
  %2165 = and i64 %2164, 1
  %2166 = xor i64 %2162, lshr (i64 ptrtoint (%G__0x6d40f0_type* @G__0x6d40f0 to i64), i64 63)
  %2167 = xor i64 %2162, %2165
  %2168 = add nuw nsw i64 %2166, %2167
  %2169 = icmp eq i64 %2168, 2
  %2170 = zext i1 %2169 to i8
  store i8 %2170, i8* %17, align 1
  %2171 = add i64 %1730, -28
  %2172 = add i64 %2030, 25
  store i64 %2172, i64* %3, align 8
  %2173 = inttoptr i64 %2171 to i32*
  %2174 = load i32, i32* %2173, align 4
  %2175 = sext i32 %2174 to i64
  store i64 %2175, i64* %RCX.i1734.pre-phi, align 8
  %2176 = shl nsw i64 %2175, 2
  %2177 = add i64 %2176, %2145
  %2178 = add i64 %2030, 28
  store i64 %2178, i64* %3, align 8
  %2179 = inttoptr i64 %2177 to i32*
  %2180 = load i32, i32* %2179, align 4
  %2181 = zext i32 %2180 to i64
  store i64 %2181, i64* %RDX.i1776, align 8
  %2182 = add i64 %1736, 13112
  store i64 %2182, i64* %RAX.i1789, align 8
  %2183 = icmp ugt i64 %1736, -13113
  %2184 = zext i1 %2183 to i8
  store i8 %2184, i8* %12, align 1
  %2185 = trunc i64 %2182 to i32
  %2186 = and i32 %2185, 255
  %2187 = tail call i32 @llvm.ctpop.i32(i32 %2186)
  %2188 = trunc i32 %2187 to i8
  %2189 = and i8 %2188, 1
  %2190 = xor i8 %2189, 1
  store i8 %2190, i8* %13, align 1
  %2191 = xor i64 %1736, 16
  %2192 = xor i64 %2191, %2182
  %2193 = lshr i64 %2192, 4
  %2194 = trunc i64 %2193 to i8
  %2195 = and i8 %2194, 1
  store i8 %2195, i8* %14, align 1
  %2196 = icmp eq i64 %2182, 0
  %2197 = zext i1 %2196 to i8
  store i8 %2197, i8* %15, align 1
  %2198 = lshr i64 %2182, 63
  %2199 = trunc i64 %2198 to i8
  store i8 %2199, i8* %16, align 1
  %2200 = lshr i64 %1736, 63
  %2201 = xor i64 %2198, %2200
  %2202 = add nuw nsw i64 %2201, %2198
  %2203 = icmp eq i64 %2202, 2
  %2204 = zext i1 %2203 to i8
  store i8 %2204, i8* %17, align 1
  %2205 = load i64, i64* %RBP.i, align 8
  %2206 = add i64 %2205, -32
  %2207 = add i64 %2030, 46
  store i64 %2207, i64* %3, align 8
  %2208 = inttoptr i64 %2206 to i32*
  %2209 = load i32, i32* %2208, align 4
  %2210 = sext i32 %2209 to i64
  %2211 = shl nsw i64 %2210, 6
  store i64 %2211, i64* %RCX.i1734.pre-phi, align 8
  %2212 = add i64 %2211, %2182
  store i64 %2212, i64* %RAX.i1789, align 8
  %2213 = icmp ult i64 %2212, %2182
  %2214 = icmp ult i64 %2212, %2211
  %2215 = or i1 %2213, %2214
  %2216 = zext i1 %2215 to i8
  store i8 %2216, i8* %12, align 1
  %2217 = trunc i64 %2212 to i32
  %2218 = and i32 %2217, 255
  %2219 = tail call i32 @llvm.ctpop.i32(i32 %2218)
  %2220 = trunc i32 %2219 to i8
  %2221 = and i8 %2220, 1
  %2222 = xor i8 %2221, 1
  store i8 %2222, i8* %13, align 1
  %2223 = xor i64 %2182, %2212
  %2224 = lshr i64 %2223, 4
  %2225 = trunc i64 %2224 to i8
  %2226 = and i8 %2225, 1
  store i8 %2226, i8* %14, align 1
  %2227 = icmp eq i64 %2212, 0
  %2228 = zext i1 %2227 to i8
  store i8 %2228, i8* %15, align 1
  %2229 = lshr i64 %2212, 63
  %2230 = trunc i64 %2229 to i8
  store i8 %2230, i8* %16, align 1
  %2231 = lshr i64 %2210, 57
  %2232 = and i64 %2231, 1
  %2233 = xor i64 %2229, %2198
  %2234 = xor i64 %2229, %2232
  %2235 = add nuw nsw i64 %2233, %2234
  %2236 = icmp eq i64 %2235, 2
  %2237 = zext i1 %2236 to i8
  store i8 %2237, i8* %17, align 1
  %2238 = add i64 %2205, -28
  %2239 = add i64 %2030, 57
  store i64 %2239, i64* %3, align 8
  %2240 = inttoptr i64 %2238 to i32*
  %2241 = load i32, i32* %2240, align 4
  %2242 = sext i32 %2241 to i64
  store i64 %2242, i64* %RCX.i1734.pre-phi, align 8
  %2243 = shl nsw i64 %2242, 2
  %2244 = add i64 %2243, %2212
  %2245 = load i32, i32* %EDX.i1028, align 4
  %2246 = add i64 %2030, 60
  store i64 %2246, i64* %3, align 8
  %2247 = inttoptr i64 %2244 to i32*
  store i32 %2245, i32* %2247, align 4
  %.pre148 = load i64, i64* %3, align 8
  br label %block_.L_441b8b

block_.L_441b8b:                                  ; preds = %block_.L_441b4f, %block_441b0e
  %2248 = phi i64 [ %.pre148, %block_.L_441b4f ], [ %2140, %block_441b0e ]
  %2249 = add i64 %2248, 5
  store i64 %2249, i64* %3, align 8
  br label %block_.L_441b90

block_.L_441b90:                                  ; preds = %block_.L_441b8b, %block_441a7c
  %storemerge66 = phi i64 [ %2016, %block_441a7c ], [ %2249, %block_.L_441b8b ]
  %2250 = load i64, i64* %RBP.i, align 8
  %2251 = add i64 %2250, -32
  %2252 = add i64 %storemerge66, 8
  store i64 %2252, i64* %3, align 8
  %2253 = inttoptr i64 %2251 to i32*
  %2254 = load i32, i32* %2253, align 4
  %2255 = add i32 %2254, 1
  %2256 = zext i32 %2255 to i64
  store i64 %2256, i64* %RAX.i1789, align 8
  %2257 = icmp eq i32 %2254, -1
  %2258 = icmp eq i32 %2255, 0
  %2259 = or i1 %2257, %2258
  %2260 = zext i1 %2259 to i8
  store i8 %2260, i8* %12, align 1
  %2261 = and i32 %2255, 255
  %2262 = tail call i32 @llvm.ctpop.i32(i32 %2261)
  %2263 = trunc i32 %2262 to i8
  %2264 = and i8 %2263, 1
  %2265 = xor i8 %2264, 1
  store i8 %2265, i8* %13, align 1
  %2266 = xor i32 %2255, %2254
  %2267 = lshr i32 %2266, 4
  %2268 = trunc i32 %2267 to i8
  %2269 = and i8 %2268, 1
  store i8 %2269, i8* %14, align 1
  %2270 = zext i1 %2258 to i8
  store i8 %2270, i8* %15, align 1
  %2271 = lshr i32 %2255, 31
  %2272 = trunc i32 %2271 to i8
  store i8 %2272, i8* %16, align 1
  %2273 = lshr i32 %2254, 31
  %2274 = xor i32 %2271, %2273
  %2275 = add nuw nsw i32 %2274, %2271
  %2276 = icmp eq i32 %2275, 2
  %2277 = zext i1 %2276 to i8
  store i8 %2277, i8* %17, align 1
  %2278 = add i64 %storemerge66, 14
  store i64 %2278, i64* %3, align 8
  store i32 %2255, i32* %2253, align 4
  %2279 = load i64, i64* %3, align 8
  %2280 = add i64 %2279, -334
  store i64 %2280, i64* %3, align 8
  br label %block_.L_441a50

block_.L_441ba3:                                  ; preds = %block_.L_441a50
  %2281 = add i64 %1730, -28
  %2282 = add i64 %1767, 8
  store i64 %2282, i64* %3, align 8
  %2283 = inttoptr i64 %2281 to i32*
  %2284 = load i32, i32* %2283, align 4
  %2285 = add i32 %2284, 1
  %2286 = zext i32 %2285 to i64
  store i64 %2286, i64* %RAX.i1789, align 8
  %2287 = icmp eq i32 %2284, -1
  %2288 = icmp eq i32 %2285, 0
  %2289 = or i1 %2287, %2288
  %2290 = zext i1 %2289 to i8
  store i8 %2290, i8* %12, align 1
  %2291 = and i32 %2285, 255
  %2292 = tail call i32 @llvm.ctpop.i32(i32 %2291)
  %2293 = trunc i32 %2292 to i8
  %2294 = and i8 %2293, 1
  %2295 = xor i8 %2294, 1
  store i8 %2295, i8* %13, align 1
  %2296 = xor i32 %2285, %2284
  %2297 = lshr i32 %2296, 4
  %2298 = trunc i32 %2297 to i8
  %2299 = and i8 %2298, 1
  store i8 %2299, i8* %14, align 1
  %2300 = zext i1 %2288 to i8
  store i8 %2300, i8* %15, align 1
  %2301 = lshr i32 %2285, 31
  %2302 = trunc i32 %2301 to i8
  store i8 %2302, i8* %16, align 1
  %2303 = lshr i32 %2284, 31
  %2304 = xor i32 %2301, %2303
  %2305 = add nuw nsw i32 %2304, %2301
  %2306 = icmp eq i32 %2305, 2
  %2307 = zext i1 %2306 to i8
  store i8 %2307, i8* %17, align 1
  %2308 = add i64 %1767, 14
  store i64 %2308, i64* %3, align 8
  store i32 %2285, i32* %2283, align 4
  %2309 = load i64, i64* %3, align 8
  %2310 = add i64 %2309, -383
  store i64 %2310, i64* %3, align 8
  br label %block_.L_441a32

block_.L_441bb6:                                  ; preds = %block_.L_441a32
  %2311 = add i64 %1725, 5
  store i64 %2311, i64* %3, align 8
  br label %block_.L_441bbb

block_.L_441bbb:                                  ; preds = %block_.L_441bb6, %block_.L_441a26
  %2312 = phi i64 [ %1268, %block_.L_441a26 ], [ %1688, %block_.L_441bb6 ]
  %storemerge63 = phi i64 [ %1686, %block_.L_441a26 ], [ %2311, %block_.L_441bb6 ]
  %2313 = add i64 %storemerge63, 5
  store i64 %2313, i64* %3, align 8
  br label %block_.L_441bc0

block_.L_441bc0:                                  ; preds = %block_.L_441bbb, %block_.L_4418df
  %2314 = phi i64 [ %1063, %block_.L_4418df ], [ %2312, %block_.L_441bbb ]
  %storemerge58 = phi i64 [ %1250, %block_.L_4418df ], [ %2313, %block_.L_441bbb ]
  %2315 = add i64 %storemerge58, 5
  store i64 %2315, i64* %3, align 8
  br label %block_.L_441bc5

block_.L_441bc5:                                  ; preds = %block_.L_441bc0, %block_.L_441857
  %2316 = phi i64 [ %600, %block_.L_441857 ], [ %2314, %block_.L_441bc0 ]
  %storemerge51 = phi i64 [ %1018, %block_.L_441857 ], [ %2315, %block_.L_441bc0 ]
  %2317 = add i64 %2316, -52
  %2318 = add i64 %storemerge51, 4
  store i64 %2318, i64* %3, align 8
  %2319 = inttoptr i64 %2317 to i32*
  %2320 = load i32, i32* %2319, align 4
  store i8 0, i8* %12, align 1
  %2321 = and i32 %2320, 255
  %2322 = tail call i32 @llvm.ctpop.i32(i32 %2321)
  %2323 = trunc i32 %2322 to i8
  %2324 = and i8 %2323, 1
  %2325 = xor i8 %2324, 1
  store i8 %2325, i8* %13, align 1
  store i8 0, i8* %14, align 1
  %2326 = icmp eq i32 %2320, 0
  %2327 = zext i1 %2326 to i8
  store i8 %2327, i8* %15, align 1
  %2328 = lshr i32 %2320, 31
  %2329 = trunc i32 %2328 to i8
  store i8 %2329, i8* %16, align 1
  store i8 0, i8* %17, align 1
  %.v172 = select i1 %2326, i64 53, i64 10
  %2330 = add i64 %storemerge51, %.v172
  store i64 %2330, i64* %3, align 8
  %.pre142 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*), align 8
  br i1 %2326, label %block_.L_441bfa, label %block_441bcf

block_441bcf:                                     ; preds = %block_.L_441bc5
  store i64 %.pre142, i64* %RAX.i1789, align 8
  %2331 = add i64 %.pre142, 24
  %2332 = add i64 %2330, 12
  store i64 %2332, i64* %3, align 8
  %2333 = inttoptr i64 %2331 to i32*
  %2334 = load i32, i32* %2333, align 4
  %2335 = add i32 %2334, -3
  %2336 = icmp ult i32 %2334, 3
  %2337 = zext i1 %2336 to i8
  store i8 %2337, i8* %12, align 1
  %2338 = and i32 %2335, 255
  %2339 = tail call i32 @llvm.ctpop.i32(i32 %2338)
  %2340 = trunc i32 %2339 to i8
  %2341 = and i8 %2340, 1
  %2342 = xor i8 %2341, 1
  store i8 %2342, i8* %13, align 1
  %2343 = xor i32 %2335, %2334
  %2344 = lshr i32 %2343, 4
  %2345 = trunc i32 %2344 to i8
  %2346 = and i8 %2345, 1
  store i8 %2346, i8* %14, align 1
  %2347 = icmp eq i32 %2335, 0
  %2348 = zext i1 %2347 to i8
  store i8 %2348, i8* %15, align 1
  %2349 = lshr i32 %2335, 31
  %2350 = trunc i32 %2349 to i8
  store i8 %2350, i8* %16, align 1
  %2351 = lshr i32 %2334, 31
  %2352 = xor i32 %2349, %2351
  %2353 = add nuw nsw i32 %2352, %2351
  %2354 = icmp eq i32 %2353, 2
  %2355 = zext i1 %2354 to i8
  store i8 %2355, i8* %17, align 1
  %.v173 = select i1 %2347, i64 18, i64 43
  %2356 = add i64 %2330, %.v173
  store i64 %2356, i64* %3, align 8
  br i1 %2347, label %block_441be1, label %block_.L_441bfa

block_441be1:                                     ; preds = %block_441bcf
  %2357 = add i64 %2316, -12
  %2358 = add i64 %2356, 3
  store i64 %2358, i64* %3, align 8
  %2359 = inttoptr i64 %2357 to i32*
  %2360 = load i32, i32* %2359, align 4
  %2361 = zext i32 %2360 to i64
  store i64 %2361, i64* %RDI.i1782, align 8
  %2362 = add i64 %2316, -8
  %2363 = add i64 %2356, 7
  store i64 %2363, i64* %3, align 8
  %2364 = inttoptr i64 %2362 to i64*
  %2365 = load i64, i64* %2364, align 8
  store i64 %2365, i64* %RAX.i1789, align 8
  %2366 = add i64 %2356, 9
  store i64 %2366, i64* %3, align 8
  %2367 = inttoptr i64 %2365 to i32*
  %2368 = load i32, i32* %2367, align 4
  %2369 = zext i32 %2368 to i64
  store i64 %2369, i64* %RSI.i1729, align 8
  %2370 = add i64 %2356, -215345
  %2371 = add i64 %2356, 14
  %2372 = load i64, i64* %6, align 8
  %2373 = add i64 %2372, -8
  %2374 = inttoptr i64 %2373 to i64*
  store i64 %2371, i64* %2374, align 8
  store i64 %2373, i64* %6, align 8
  store i64 %2370, i64* %3, align 8
  %call2_441bea = tail call %struct.Memory* @sub_40d2b0.dct_chroma_sp(%struct.State* nonnull %0, i64 %2370, %struct.Memory* %207)
  %2375 = load i64, i64* %RBP.i, align 8
  %2376 = add i64 %2375, -8
  %2377 = load i64, i64* %3, align 8
  %2378 = add i64 %2377, 4
  store i64 %2378, i64* %3, align 8
  %2379 = inttoptr i64 %2376 to i64*
  %2380 = load i64, i64* %2379, align 8
  store i64 %2380, i64* %RCX.i1734.pre-phi, align 8
  %2381 = load i32, i32* %EAX.i1788, align 4
  %2382 = add i64 %2377, 6
  store i64 %2382, i64* %3, align 8
  %2383 = inttoptr i64 %2380 to i32*
  store i32 %2381, i32* %2383, align 4
  %2384 = load i64, i64* %3, align 8
  %2385 = add i64 %2384, 511
  br label %block_.L_441df4

block_.L_441bfa:                                  ; preds = %block_.L_441bc5, %block_441bcf
  %2386 = phi i64 [ %2356, %block_441bcf ], [ %2330, %block_.L_441bc5 ]
  store i64 %.pre142, i64* %RAX.i1789, align 8
  %2387 = add i64 %.pre142, 72392
  %2388 = add i64 %2386, 15
  store i64 %2388, i64* %3, align 8
  %2389 = inttoptr i64 %2387 to i32*
  %2390 = load i32, i32* %2389, align 4
  store i8 0, i8* %12, align 1
  %2391 = and i32 %2390, 255
  %2392 = tail call i32 @llvm.ctpop.i32(i32 %2391)
  %2393 = trunc i32 %2392 to i8
  %2394 = and i8 %2393, 1
  %2395 = xor i8 %2394, 1
  store i8 %2395, i8* %13, align 1
  store i8 0, i8* %14, align 1
  %2396 = icmp eq i32 %2390, 0
  %2397 = zext i1 %2396 to i8
  store i8 %2397, i8* %15, align 1
  %2398 = lshr i32 %2390, 31
  %2399 = trunc i32 %2398 to i8
  store i8 %2399, i8* %16, align 1
  store i8 0, i8* %17, align 1
  %.v174 = select i1 %2396, i64 21, i64 501
  %2400 = add i64 %2386, %.v174
  store i64 %2400, i64* %3, align 8
  br i1 %2396, label %block_441c0f, label %block_.L_441def

block_441c0f:                                     ; preds = %block_.L_441bfa
  %2401 = add i64 %2400, 4
  store i64 %2401, i64* %3, align 8
  %2402 = load i32, i32* %2319, align 4
  store i8 0, i8* %12, align 1
  %2403 = and i32 %2402, 255
  %2404 = tail call i32 @llvm.ctpop.i32(i32 %2403)
  %2405 = trunc i32 %2404 to i8
  %2406 = and i8 %2405, 1
  %2407 = xor i8 %2406, 1
  store i8 %2407, i8* %13, align 1
  store i8 0, i8* %14, align 1
  %2408 = icmp eq i32 %2402, 0
  %2409 = zext i1 %2408 to i8
  store i8 %2409, i8* %15, align 1
  %2410 = lshr i32 %2402, 31
  %2411 = trunc i32 %2410 to i8
  store i8 %2411, i8* %16, align 1
  store i8 0, i8* %17, align 1
  %.v175 = select i1 %2408, i64 10, i64 480
  %2412 = add i64 %2400, %.v175
  store i64 %2412, i64* %3, align 8
  br i1 %2408, label %block_441c19, label %block_.L_441def

block_441c19:                                     ; preds = %block_441c0f
  store i64 %.pre142, i64* %RAX.i1789, align 8
  %2413 = add i64 %.pre142, 24
  %2414 = add i64 %2412, 12
  store i64 %2414, i64* %3, align 8
  %2415 = inttoptr i64 %2413 to i32*
  %2416 = load i32, i32* %2415, align 4
  %2417 = add i32 %2416, -3
  %2418 = icmp ult i32 %2416, 3
  %2419 = zext i1 %2418 to i8
  store i8 %2419, i8* %12, align 1
  %2420 = and i32 %2417, 255
  %2421 = tail call i32 @llvm.ctpop.i32(i32 %2420)
  %2422 = trunc i32 %2421 to i8
  %2423 = and i8 %2422, 1
  %2424 = xor i8 %2423, 1
  store i8 %2424, i8* %13, align 1
  %2425 = xor i32 %2417, %2416
  %2426 = lshr i32 %2425, 4
  %2427 = trunc i32 %2426 to i8
  %2428 = and i8 %2427, 1
  store i8 %2428, i8* %14, align 1
  %2429 = icmp eq i32 %2417, 0
  %2430 = zext i1 %2429 to i8
  store i8 %2430, i8* %15, align 1
  %2431 = lshr i32 %2417, 31
  %2432 = trunc i32 %2431 to i8
  store i8 %2432, i8* %16, align 1
  %2433 = lshr i32 %2416, 31
  %2434 = xor i32 %2431, %2433
  %2435 = add nuw nsw i32 %2434, %2433
  %2436 = icmp eq i32 %2435, 2
  %2437 = zext i1 %2436 to i8
  store i8 %2437, i8* %17, align 1
  %.v176 = select i1 %2429, i64 18, i64 159
  %2438 = add i64 %2412, %.v176
  store i64 %2438, i64* %3, align 8
  br i1 %2429, label %block_441c2b, label %block_.L_441cb8

block_441c2b:                                     ; preds = %block_441c19
  store i64 %.pre142, i64* %RAX.i1789, align 8
  %2439 = add i64 %.pre142, 14168
  %2440 = add i64 %2438, 15
  store i64 %2440, i64* %3, align 8
  %2441 = inttoptr i64 %2439 to i64*
  %2442 = load i64, i64* %2441, align 8
  store i64 %2442, i64* %RAX.i1789, align 8
  store i64 %.pre142, i64* %RCX.i1734.pre-phi, align 8
  %2443 = add i64 %.pre142, 12
  %2444 = add i64 %2438, 27
  store i64 %2444, i64* %3, align 8
  %2445 = inttoptr i64 %2443 to i32*
  %2446 = load i32, i32* %2445, align 4
  %2447 = sext i32 %2446 to i64
  %2448 = mul nsw i64 %2447, 632
  store i64 %2448, i64* %RCX.i1734.pre-phi, align 8
  %2449 = lshr i64 %2448, 63
  %2450 = add i64 %2448, %2442
  store i64 %2450, i64* %RAX.i1789, align 8
  %2451 = icmp ult i64 %2450, %2442
  %2452 = icmp ult i64 %2450, %2448
  %2453 = or i1 %2451, %2452
  %2454 = zext i1 %2453 to i8
  store i8 %2454, i8* %12, align 1
  %2455 = trunc i64 %2450 to i32
  %2456 = and i32 %2455, 255
  %2457 = tail call i32 @llvm.ctpop.i32(i32 %2456)
  %2458 = trunc i32 %2457 to i8
  %2459 = and i8 %2458, 1
  %2460 = xor i8 %2459, 1
  store i8 %2460, i8* %13, align 1
  %2461 = xor i64 %2448, %2442
  %2462 = xor i64 %2461, %2450
  %2463 = lshr i64 %2462, 4
  %2464 = trunc i64 %2463 to i8
  %2465 = and i8 %2464, 1
  store i8 %2465, i8* %14, align 1
  %2466 = icmp eq i64 %2450, 0
  %2467 = zext i1 %2466 to i8
  store i8 %2467, i8* %15, align 1
  %2468 = lshr i64 %2450, 63
  %2469 = trunc i64 %2468 to i8
  store i8 %2469, i8* %16, align 1
  %2470 = lshr i64 %2442, 63
  %2471 = xor i64 %2468, %2470
  %2472 = xor i64 %2468, %2449
  %2473 = add nuw nsw i64 %2471, %2472
  %2474 = icmp eq i64 %2473, 2
  %2475 = zext i1 %2474 to i8
  store i8 %2475, i8* %17, align 1
  %2476 = add i64 %2450, 72
  %2477 = add i64 %2438, 41
  store i64 %2477, i64* %3, align 8
  %2478 = inttoptr i64 %2476 to i32*
  %2479 = load i32, i32* %2478, align 4
  %2480 = add i32 %2479, -9
  %2481 = icmp ult i32 %2479, 9
  %2482 = zext i1 %2481 to i8
  store i8 %2482, i8* %12, align 1
  %2483 = and i32 %2480, 255
  %2484 = tail call i32 @llvm.ctpop.i32(i32 %2483)
  %2485 = trunc i32 %2484 to i8
  %2486 = and i8 %2485, 1
  %2487 = xor i8 %2486, 1
  store i8 %2487, i8* %13, align 1
  %2488 = xor i32 %2480, %2479
  %2489 = lshr i32 %2488, 4
  %2490 = trunc i32 %2489 to i8
  %2491 = and i8 %2490, 1
  store i8 %2491, i8* %14, align 1
  %2492 = icmp eq i32 %2480, 0
  %2493 = zext i1 %2492 to i8
  store i8 %2493, i8* %15, align 1
  %2494 = lshr i32 %2480, 31
  %2495 = trunc i32 %2494 to i8
  store i8 %2495, i8* %16, align 1
  %2496 = lshr i32 %2479, 31
  %2497 = xor i32 %2494, %2496
  %2498 = add nuw nsw i32 %2497, %2496
  %2499 = icmp eq i32 %2498, 2
  %2500 = zext i1 %2499 to i8
  store i8 %2500, i8* %17, align 1
  %.v180 = select i1 %2492, i64 141, i64 47
  %2501 = add i64 %2438, %.v180
  store i64 %2501, i64* %3, align 8
  br i1 %2492, label %block_.L_441cb8, label %block_441c5a

block_441c5a:                                     ; preds = %block_441c2b
  %2502 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*), align 8
  store i64 %2502, i64* %RAX.i1789, align 8
  %2503 = add i64 %2502, 14168
  %2504 = add i64 %2501, 15
  store i64 %2504, i64* %3, align 8
  %2505 = inttoptr i64 %2503 to i64*
  %2506 = load i64, i64* %2505, align 8
  store i64 %2506, i64* %RAX.i1789, align 8
  store i64 %2502, i64* %RCX.i1734.pre-phi, align 8
  %2507 = add i64 %2502, 12
  %2508 = add i64 %2501, 27
  store i64 %2508, i64* %3, align 8
  %2509 = inttoptr i64 %2507 to i32*
  %2510 = load i32, i32* %2509, align 4
  %2511 = sext i32 %2510 to i64
  %2512 = mul nsw i64 %2511, 632
  store i64 %2512, i64* %RCX.i1734.pre-phi, align 8
  %2513 = lshr i64 %2512, 63
  %2514 = add i64 %2512, %2506
  store i64 %2514, i64* %RAX.i1789, align 8
  %2515 = icmp ult i64 %2514, %2506
  %2516 = icmp ult i64 %2514, %2512
  %2517 = or i1 %2515, %2516
  %2518 = zext i1 %2517 to i8
  store i8 %2518, i8* %12, align 1
  %2519 = trunc i64 %2514 to i32
  %2520 = and i32 %2519, 255
  %2521 = tail call i32 @llvm.ctpop.i32(i32 %2520)
  %2522 = trunc i32 %2521 to i8
  %2523 = and i8 %2522, 1
  %2524 = xor i8 %2523, 1
  store i8 %2524, i8* %13, align 1
  %2525 = xor i64 %2512, %2506
  %2526 = xor i64 %2525, %2514
  %2527 = lshr i64 %2526, 4
  %2528 = trunc i64 %2527 to i8
  %2529 = and i8 %2528, 1
  store i8 %2529, i8* %14, align 1
  %2530 = icmp eq i64 %2514, 0
  %2531 = zext i1 %2530 to i8
  store i8 %2531, i8* %15, align 1
  %2532 = lshr i64 %2514, 63
  %2533 = trunc i64 %2532 to i8
  store i8 %2533, i8* %16, align 1
  %2534 = lshr i64 %2506, 63
  %2535 = xor i64 %2532, %2534
  %2536 = xor i64 %2532, %2513
  %2537 = add nuw nsw i64 %2535, %2536
  %2538 = icmp eq i64 %2537, 2
  %2539 = zext i1 %2538 to i8
  store i8 %2539, i8* %17, align 1
  %2540 = add i64 %2514, 72
  %2541 = add i64 %2501, 41
  store i64 %2541, i64* %3, align 8
  %2542 = inttoptr i64 %2540 to i32*
  %2543 = load i32, i32* %2542, align 4
  %2544 = add i32 %2543, -10
  %2545 = icmp ult i32 %2543, 10
  %2546 = zext i1 %2545 to i8
  store i8 %2546, i8* %12, align 1
  %2547 = and i32 %2544, 255
  %2548 = tail call i32 @llvm.ctpop.i32(i32 %2547)
  %2549 = trunc i32 %2548 to i8
  %2550 = and i8 %2549, 1
  %2551 = xor i8 %2550, 1
  store i8 %2551, i8* %13, align 1
  %2552 = xor i32 %2544, %2543
  %2553 = lshr i32 %2552, 4
  %2554 = trunc i32 %2553 to i8
  %2555 = and i8 %2554, 1
  store i8 %2555, i8* %14, align 1
  %2556 = icmp eq i32 %2544, 0
  %2557 = zext i1 %2556 to i8
  store i8 %2557, i8* %15, align 1
  %2558 = lshr i32 %2544, 31
  %2559 = trunc i32 %2558 to i8
  store i8 %2559, i8* %16, align 1
  %2560 = lshr i32 %2543, 31
  %2561 = xor i32 %2558, %2560
  %2562 = add nuw nsw i32 %2561, %2560
  %2563 = icmp eq i32 %2562, 2
  %2564 = zext i1 %2563 to i8
  store i8 %2564, i8* %17, align 1
  %.v181 = select i1 %2556, i64 94, i64 47
  %2565 = add i64 %2501, %.v181
  store i64 %2565, i64* %3, align 8
  br i1 %2556, label %block_.L_441cb8, label %block_441c89

block_441c89:                                     ; preds = %block_441c5a
  %2566 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*), align 8
  store i64 %2566, i64* %RAX.i1789, align 8
  %2567 = add i64 %2566, 14168
  %2568 = add i64 %2565, 15
  store i64 %2568, i64* %3, align 8
  %2569 = inttoptr i64 %2567 to i64*
  %2570 = load i64, i64* %2569, align 8
  store i64 %2570, i64* %RAX.i1789, align 8
  store i64 %2566, i64* %RCX.i1734.pre-phi, align 8
  %2571 = add i64 %2566, 12
  %2572 = add i64 %2565, 27
  store i64 %2572, i64* %3, align 8
  %2573 = inttoptr i64 %2571 to i32*
  %2574 = load i32, i32* %2573, align 4
  %2575 = sext i32 %2574 to i64
  %2576 = mul nsw i64 %2575, 632
  store i64 %2576, i64* %RCX.i1734.pre-phi, align 8
  %2577 = lshr i64 %2576, 63
  %2578 = add i64 %2576, %2570
  store i64 %2578, i64* %RAX.i1789, align 8
  %2579 = icmp ult i64 %2578, %2570
  %2580 = icmp ult i64 %2578, %2576
  %2581 = or i1 %2579, %2580
  %2582 = zext i1 %2581 to i8
  store i8 %2582, i8* %12, align 1
  %2583 = trunc i64 %2578 to i32
  %2584 = and i32 %2583, 255
  %2585 = tail call i32 @llvm.ctpop.i32(i32 %2584)
  %2586 = trunc i32 %2585 to i8
  %2587 = and i8 %2586, 1
  %2588 = xor i8 %2587, 1
  store i8 %2588, i8* %13, align 1
  %2589 = xor i64 %2576, %2570
  %2590 = xor i64 %2589, %2578
  %2591 = lshr i64 %2590, 4
  %2592 = trunc i64 %2591 to i8
  %2593 = and i8 %2592, 1
  store i8 %2593, i8* %14, align 1
  %2594 = icmp eq i64 %2578, 0
  %2595 = zext i1 %2594 to i8
  store i8 %2595, i8* %15, align 1
  %2596 = lshr i64 %2578, 63
  %2597 = trunc i64 %2596 to i8
  store i8 %2597, i8* %16, align 1
  %2598 = lshr i64 %2570, 63
  %2599 = xor i64 %2596, %2598
  %2600 = xor i64 %2596, %2577
  %2601 = add nuw nsw i64 %2599, %2600
  %2602 = icmp eq i64 %2601, 2
  %2603 = zext i1 %2602 to i8
  store i8 %2603, i8* %17, align 1
  %2604 = add i64 %2578, 72
  %2605 = add i64 %2565, 41
  store i64 %2605, i64* %3, align 8
  %2606 = inttoptr i64 %2604 to i32*
  %2607 = load i32, i32* %2606, align 4
  %2608 = add i32 %2607, -13
  %2609 = icmp ult i32 %2607, 13
  %2610 = zext i1 %2609 to i8
  store i8 %2610, i8* %12, align 1
  %2611 = and i32 %2608, 255
  %2612 = tail call i32 @llvm.ctpop.i32(i32 %2611)
  %2613 = trunc i32 %2612 to i8
  %2614 = and i8 %2613, 1
  %2615 = xor i8 %2614, 1
  store i8 %2615, i8* %13, align 1
  %2616 = xor i32 %2608, %2607
  %2617 = lshr i32 %2616, 4
  %2618 = trunc i32 %2617 to i8
  %2619 = and i8 %2618, 1
  store i8 %2619, i8* %14, align 1
  %2620 = icmp eq i32 %2608, 0
  %2621 = zext i1 %2620 to i8
  store i8 %2621, i8* %15, align 1
  %2622 = lshr i32 %2608, 31
  %2623 = trunc i32 %2622 to i8
  store i8 %2623, i8* %16, align 1
  %2624 = lshr i32 %2607, 31
  %2625 = xor i32 %2622, %2624
  %2626 = add nuw nsw i32 %2625, %2624
  %2627 = icmp eq i32 %2626, 2
  %2628 = zext i1 %2627 to i8
  store i8 %2628, i8* %17, align 1
  %.v182 = select i1 %2620, i64 47, i64 72
  %2629 = add i64 %2565, %.v182
  store i64 %2629, i64* %3, align 8
  br i1 %2620, label %block_.L_441cb8, label %block_.L_441cd1

block_.L_441cb8:                                  ; preds = %block_441c89, %block_441c19, %block_441c5a, %block_441c2b
  %2630 = phi i64 [ %2629, %block_441c89 ], [ %2565, %block_441c5a ], [ %2501, %block_441c2b ], [ %2438, %block_441c19 ]
  %2631 = load i64, i64* %RBP.i, align 8
  %2632 = add i64 %2631, -12
  %2633 = add i64 %2630, 3
  store i64 %2633, i64* %3, align 8
  %2634 = inttoptr i64 %2632 to i32*
  %2635 = load i32, i32* %2634, align 4
  %2636 = zext i32 %2635 to i64
  store i64 %2636, i64* %RDI.i1782, align 8
  %2637 = add i64 %2631, -8
  %2638 = add i64 %2630, 7
  store i64 %2638, i64* %3, align 8
  %2639 = inttoptr i64 %2637 to i64*
  %2640 = load i64, i64* %2639, align 8
  store i64 %2640, i64* %RAX.i1789, align 8
  %2641 = add i64 %2630, 9
  store i64 %2641, i64* %3, align 8
  %2642 = inttoptr i64 %2640 to i32*
  %2643 = load i32, i32* %2642, align 4
  %2644 = zext i32 %2643 to i64
  store i64 %2644, i64* %RSI.i1729, align 8
  %2645 = add i64 %2630, -239608
  %2646 = add i64 %2630, 14
  %2647 = load i64, i64* %6, align 8
  %2648 = add i64 %2647, -8
  %2649 = inttoptr i64 %2648 to i64*
  store i64 %2646, i64* %2649, align 8
  store i64 %2648, i64* %6, align 8
  store i64 %2645, i64* %3, align 8
  %call2_441cc1 = tail call %struct.Memory* @sub_4074c0.dct_chroma(%struct.State* nonnull %0, i64 %2645, %struct.Memory* %207)
  %2650 = load i64, i64* %RBP.i, align 8
  %2651 = add i64 %2650, -8
  %2652 = load i64, i64* %3, align 8
  %2653 = add i64 %2652, 4
  store i64 %2653, i64* %3, align 8
  %2654 = inttoptr i64 %2651 to i64*
  %2655 = load i64, i64* %2654, align 8
  store i64 %2655, i64* %RCX.i1734.pre-phi, align 8
  %2656 = load i32, i32* %EAX.i1788, align 4
  %2657 = add i64 %2652, 6
  store i64 %2657, i64* %3, align 8
  %2658 = inttoptr i64 %2655 to i32*
  store i32 %2656, i32* %2658, align 4
  %2659 = load i64, i64* %3, align 8
  %2660 = add i64 %2659, 25
  store i64 %2660, i64* %3, align 8
  br label %block_.L_441ce5

block_.L_441cd1:                                  ; preds = %block_441c89
  %2661 = load i64, i64* %RBP.i, align 8
  %2662 = add i64 %2661, -12
  %2663 = add i64 %2629, 3
  store i64 %2663, i64* %3, align 8
  %2664 = inttoptr i64 %2662 to i32*
  %2665 = load i32, i32* %2664, align 4
  %2666 = zext i32 %2665 to i64
  store i64 %2666, i64* %RDI.i1782, align 8
  %2667 = add i64 %2661, -8
  %2668 = add i64 %2629, 7
  store i64 %2668, i64* %3, align 8
  %2669 = inttoptr i64 %2667 to i64*
  %2670 = load i64, i64* %2669, align 8
  store i64 %2670, i64* %RAX.i1789, align 8
  %2671 = add i64 %2629, 9
  store i64 %2671, i64* %3, align 8
  %2672 = inttoptr i64 %2670 to i32*
  %2673 = load i32, i32* %2672, align 4
  %2674 = zext i32 %2673 to i64
  store i64 %2674, i64* %RSI.i1729, align 8
  %2675 = add i64 %2629, -215585
  %2676 = add i64 %2629, 14
  %2677 = load i64, i64* %6, align 8
  %2678 = add i64 %2677, -8
  %2679 = inttoptr i64 %2678 to i64*
  store i64 %2676, i64* %2679, align 8
  store i64 %2678, i64* %6, align 8
  store i64 %2675, i64* %3, align 8
  %call2_441cda = tail call %struct.Memory* @sub_40d2b0.dct_chroma_sp(%struct.State* nonnull %0, i64 %2675, %struct.Memory* %207)
  %2680 = load i64, i64* %RBP.i, align 8
  %2681 = add i64 %2680, -8
  %2682 = load i64, i64* %3, align 8
  %2683 = add i64 %2682, 4
  store i64 %2683, i64* %3, align 8
  %2684 = inttoptr i64 %2681 to i64*
  %2685 = load i64, i64* %2684, align 8
  store i64 %2685, i64* %RCX.i1734.pre-phi, align 8
  %2686 = load i32, i32* %EAX.i1788, align 4
  %2687 = add i64 %2682, 6
  store i64 %2687, i64* %3, align 8
  %2688 = inttoptr i64 %2685 to i32*
  store i32 %2686, i32* %2688, align 4
  %.pre143 = load i64, i64* %3, align 8
  br label %block_.L_441ce5

block_.L_441ce5:                                  ; preds = %block_.L_441cd1, %block_.L_441cb8
  %2689 = phi i64 [ %.pre143, %block_.L_441cd1 ], [ %2660, %block_.L_441cb8 ]
  %2690 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*), align 8
  store i64 %2690, i64* %RAX.i1789, align 8
  %2691 = add i64 %2690, 72724
  %2692 = add i64 %2689, 15
  store i64 %2692, i64* %3, align 8
  %2693 = inttoptr i64 %2691 to i32*
  %2694 = load i32, i32* %2693, align 4
  store i8 0, i8* %12, align 1
  %2695 = and i32 %2694, 255
  %2696 = tail call i32 @llvm.ctpop.i32(i32 %2695)
  %2697 = trunc i32 %2696 to i8
  %2698 = and i8 %2697, 1
  %2699 = xor i8 %2698, 1
  store i8 %2699, i8* %13, align 1
  store i8 0, i8* %14, align 1
  %2700 = icmp eq i32 %2694, 0
  %2701 = zext i1 %2700 to i8
  store i8 %2701, i8* %15, align 1
  %2702 = lshr i32 %2694, 31
  %2703 = trunc i32 %2702 to i8
  store i8 %2703, i8* %16, align 1
  store i8 0, i8* %17, align 1
  %.v177 = select i1 %2700, i64 261, i64 21
  %2704 = add i64 %2689, %.v177
  store i64 %2704, i64* %3, align 8
  br i1 %2700, label %block_.L_441dea, label %block_441cfa

block_441cfa:                                     ; preds = %block_.L_441ce5
  %2705 = load i64, i64* %RBP.i, align 8
  %2706 = add i64 %2705, -28
  %2707 = add i64 %2704, 7
  store i64 %2707, i64* %3, align 8
  %2708 = inttoptr i64 %2706 to i32*
  store i32 0, i32* %2708, align 4
  %.pre144 = load i64, i64* %3, align 8
  br label %block_.L_441d01

block_.L_441d01:                                  ; preds = %block_.L_441dd2, %block_441cfa
  %2709 = phi i64 [ %3084, %block_.L_441dd2 ], [ %.pre144, %block_441cfa ]
  %2710 = load i64, i64* %RBP.i, align 8
  %2711 = add i64 %2710, -28
  %2712 = add i64 %2709, 3
  store i64 %2712, i64* %3, align 8
  %2713 = inttoptr i64 %2711 to i32*
  %2714 = load i32, i32* %2713, align 4
  %2715 = zext i32 %2714 to i64
  store i64 %2715, i64* %RAX.i1789, align 8
  %2716 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*), align 8
  store i64 %2716, i64* %RCX.i1734.pre-phi, align 8
  %2717 = add i64 %2716, 72712
  %2718 = add i64 %2709, 17
  store i64 %2718, i64* %3, align 8
  %2719 = inttoptr i64 %2717 to i32*
  %2720 = load i32, i32* %2719, align 4
  %2721 = sub i32 %2714, %2720
  %2722 = icmp ult i32 %2714, %2720
  %2723 = zext i1 %2722 to i8
  store i8 %2723, i8* %12, align 1
  %2724 = and i32 %2721, 255
  %2725 = tail call i32 @llvm.ctpop.i32(i32 %2724)
  %2726 = trunc i32 %2725 to i8
  %2727 = and i8 %2726, 1
  %2728 = xor i8 %2727, 1
  store i8 %2728, i8* %13, align 1
  %2729 = xor i32 %2720, %2714
  %2730 = xor i32 %2729, %2721
  %2731 = lshr i32 %2730, 4
  %2732 = trunc i32 %2731 to i8
  %2733 = and i8 %2732, 1
  store i8 %2733, i8* %14, align 1
  %2734 = icmp eq i32 %2721, 0
  %2735 = zext i1 %2734 to i8
  store i8 %2735, i8* %15, align 1
  %2736 = lshr i32 %2721, 31
  %2737 = trunc i32 %2736 to i8
  store i8 %2737, i8* %16, align 1
  %2738 = lshr i32 %2714, 31
  %2739 = lshr i32 %2720, 31
  %2740 = xor i32 %2739, %2738
  %2741 = xor i32 %2736, %2738
  %2742 = add nuw nsw i32 %2741, %2740
  %2743 = icmp eq i32 %2742, 2
  %2744 = zext i1 %2743 to i8
  store i8 %2744, i8* %17, align 1
  %2745 = icmp ne i8 %2737, 0
  %2746 = xor i1 %2745, %2743
  %.v178 = select i1 %2746, i64 23, i64 228
  %2747 = add i64 %2709, %.v178
  store i64 %2747, i64* %3, align 8
  br i1 %2746, label %block_441d18, label %block_.L_441de5

block_441d18:                                     ; preds = %block_.L_441d01
  %2748 = add i64 %2710, -32
  %2749 = add i64 %2747, 7
  store i64 %2749, i64* %3, align 8
  %2750 = inttoptr i64 %2748 to i32*
  store i32 0, i32* %2750, align 4
  %.pre145 = load i64, i64* %3, align 8
  br label %block_.L_441d1f

block_.L_441d1f:                                  ; preds = %block_.L_441dbf, %block_441d18
  %2751 = phi i64 [ %3054, %block_.L_441dbf ], [ %.pre145, %block_441d18 ]
  %2752 = load i64, i64* %RBP.i, align 8
  %2753 = add i64 %2752, -32
  %2754 = add i64 %2751, 3
  store i64 %2754, i64* %3, align 8
  %2755 = inttoptr i64 %2753 to i32*
  %2756 = load i32, i32* %2755, align 4
  %2757 = zext i32 %2756 to i64
  store i64 %2757, i64* %RAX.i1789, align 8
  %2758 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*), align 8
  store i64 %2758, i64* %RCX.i1734.pre-phi, align 8
  %2759 = add i64 %2758, 72708
  %2760 = add i64 %2751, 17
  store i64 %2760, i64* %3, align 8
  %2761 = inttoptr i64 %2759 to i32*
  %2762 = load i32, i32* %2761, align 4
  %2763 = sub i32 %2756, %2762
  %2764 = icmp ult i32 %2756, %2762
  %2765 = zext i1 %2764 to i8
  store i8 %2765, i8* %12, align 1
  %2766 = and i32 %2763, 255
  %2767 = tail call i32 @llvm.ctpop.i32(i32 %2766)
  %2768 = trunc i32 %2767 to i8
  %2769 = and i8 %2768, 1
  %2770 = xor i8 %2769, 1
  store i8 %2770, i8* %13, align 1
  %2771 = xor i32 %2762, %2756
  %2772 = xor i32 %2771, %2763
  %2773 = lshr i32 %2772, 4
  %2774 = trunc i32 %2773 to i8
  %2775 = and i8 %2774, 1
  store i8 %2775, i8* %14, align 1
  %2776 = icmp eq i32 %2763, 0
  %2777 = zext i1 %2776 to i8
  store i8 %2777, i8* %15, align 1
  %2778 = lshr i32 %2763, 31
  %2779 = trunc i32 %2778 to i8
  store i8 %2779, i8* %16, align 1
  %2780 = lshr i32 %2756, 31
  %2781 = lshr i32 %2762, 31
  %2782 = xor i32 %2781, %2780
  %2783 = xor i32 %2778, %2780
  %2784 = add nuw nsw i32 %2783, %2782
  %2785 = icmp eq i32 %2784, 2
  %2786 = zext i1 %2785 to i8
  store i8 %2786, i8* %17, align 1
  %2787 = icmp ne i8 %2779, 0
  %2788 = xor i1 %2787, %2785
  %.v151 = select i1 %2788, i64 23, i64 179
  %2789 = add i64 %2751, %.v151
  store i64 %2789, i64* %3, align 8
  br i1 %2788, label %block_441d36, label %block_.L_441dd2

block_441d36:                                     ; preds = %block_.L_441d1f
  %2790 = add i64 %2752, -12
  %2791 = add i64 %2789, 4
  store i64 %2791, i64* %3, align 8
  %2792 = inttoptr i64 %2790 to i32*
  %2793 = load i32, i32* %2792, align 4
  store i8 0, i8* %12, align 1
  %2794 = and i32 %2793, 255
  %2795 = tail call i32 @llvm.ctpop.i32(i32 %2794)
  %2796 = trunc i32 %2795 to i8
  %2797 = and i8 %2796, 1
  %2798 = xor i8 %2797, 1
  store i8 %2798, i8* %13, align 1
  store i8 0, i8* %14, align 1
  %2799 = icmp eq i32 %2793, 0
  %2800 = zext i1 %2799 to i8
  store i8 %2800, i8* %15, align 1
  %2801 = lshr i32 %2793, 31
  %2802 = trunc i32 %2801 to i8
  store i8 %2802, i8* %16, align 1
  store i8 0, i8* %17, align 1
  %.v179 = select i1 %2799, i64 10, i64 76
  %2803 = add i64 %2789, %.v179
  %2804 = add i64 %2803, 10
  store i64 %2804, i64* %3, align 8
  br i1 %2799, label %block_441d40, label %block_.L_441d82

block_441d40:                                     ; preds = %block_441d36
  store i64 ptrtoint (%G__0x6f8f20_type* @G__0x6f8f20 to i64), i64* %RAX.i1789, align 8
  %2805 = add i64 %2758, 13112
  store i64 %2805, i64* %RCX.i1734.pre-phi, align 8
  %2806 = icmp ugt i64 %2758, -13113
  %2807 = zext i1 %2806 to i8
  store i8 %2807, i8* %12, align 1
  %2808 = trunc i64 %2805 to i32
  %2809 = and i32 %2808, 255
  %2810 = tail call i32 @llvm.ctpop.i32(i32 %2809)
  %2811 = trunc i32 %2810 to i8
  %2812 = and i8 %2811, 1
  %2813 = xor i8 %2812, 1
  store i8 %2813, i8* %13, align 1
  %2814 = xor i64 %2758, 16
  %2815 = xor i64 %2814, %2805
  %2816 = lshr i64 %2815, 4
  %2817 = trunc i64 %2816 to i8
  %2818 = and i8 %2817, 1
  store i8 %2818, i8* %14, align 1
  %2819 = icmp eq i64 %2805, 0
  %2820 = zext i1 %2819 to i8
  store i8 %2820, i8* %15, align 1
  %2821 = lshr i64 %2805, 63
  %2822 = trunc i64 %2821 to i8
  store i8 %2822, i8* %16, align 1
  %2823 = lshr i64 %2758, 63
  %2824 = xor i64 %2821, %2823
  %2825 = add nuw nsw i64 %2824, %2821
  %2826 = icmp eq i64 %2825, 2
  %2827 = zext i1 %2826 to i8
  store i8 %2827, i8* %17, align 1
  %2828 = add i64 %2803, 29
  store i64 %2828, i64* %3, align 8
  %2829 = load i32, i32* %2755, align 4
  %2830 = sext i32 %2829 to i64
  %2831 = shl nsw i64 %2830, 6
  store i64 %2831, i64* %RDX.i1776, align 8
  %2832 = add i64 %2831, %2805
  store i64 %2832, i64* %RCX.i1734.pre-phi, align 8
  %2833 = icmp ult i64 %2832, %2805
  %2834 = icmp ult i64 %2832, %2831
  %2835 = or i1 %2833, %2834
  %2836 = zext i1 %2835 to i8
  store i8 %2836, i8* %12, align 1
  %2837 = trunc i64 %2832 to i32
  %2838 = and i32 %2837, 255
  %2839 = tail call i32 @llvm.ctpop.i32(i32 %2838)
  %2840 = trunc i32 %2839 to i8
  %2841 = and i8 %2840, 1
  %2842 = xor i8 %2841, 1
  store i8 %2842, i8* %13, align 1
  %2843 = xor i64 %2805, %2832
  %2844 = lshr i64 %2843, 4
  %2845 = trunc i64 %2844 to i8
  %2846 = and i8 %2845, 1
  store i8 %2846, i8* %14, align 1
  %2847 = icmp eq i64 %2832, 0
  %2848 = zext i1 %2847 to i8
  store i8 %2848, i8* %15, align 1
  %2849 = lshr i64 %2832, 63
  %2850 = trunc i64 %2849 to i8
  store i8 %2850, i8* %16, align 1
  %2851 = lshr i64 %2830, 57
  %2852 = and i64 %2851, 1
  %2853 = xor i64 %2849, %2821
  %2854 = xor i64 %2849, %2852
  %2855 = add nuw nsw i64 %2853, %2854
  %2856 = icmp eq i64 %2855, 2
  %2857 = zext i1 %2856 to i8
  store i8 %2857, i8* %17, align 1
  %2858 = add i64 %2752, -28
  %2859 = add i64 %2803, 40
  store i64 %2859, i64* %3, align 8
  %2860 = inttoptr i64 %2858 to i32*
  %2861 = load i32, i32* %2860, align 4
  %2862 = sext i32 %2861 to i64
  store i64 %2862, i64* %RDX.i1776, align 8
  %2863 = shl nsw i64 %2862, 2
  %2864 = add i64 %2863, %2832
  %2865 = add i64 %2803, 43
  store i64 %2865, i64* %3, align 8
  %2866 = inttoptr i64 %2864 to i32*
  %2867 = load i32, i32* %2866, align 4
  %2868 = zext i32 %2867 to i64
  store i64 %2868, i64* %RSI.i1729, align 8
  %2869 = load i64, i64* %RBP.i, align 8
  %2870 = add i64 %2869, -32
  %2871 = add i64 %2803, 47
  store i64 %2871, i64* %3, align 8
  %2872 = inttoptr i64 %2870 to i32*
  %2873 = load i32, i32* %2872, align 4
  %2874 = sext i32 %2873 to i64
  %2875 = shl nsw i64 %2874, 6
  store i64 %2875, i64* %RCX.i1734.pre-phi, align 8
  %2876 = load i64, i64* %RAX.i1789, align 8
  %2877 = add i64 %2875, %2876
  store i64 %2877, i64* %RAX.i1789, align 8
  %2878 = icmp ult i64 %2877, %2876
  %2879 = icmp ult i64 %2877, %2875
  %2880 = or i1 %2878, %2879
  %2881 = zext i1 %2880 to i8
  store i8 %2881, i8* %12, align 1
  %2882 = trunc i64 %2877 to i32
  %2883 = and i32 %2882, 255
  %2884 = tail call i32 @llvm.ctpop.i32(i32 %2883)
  %2885 = trunc i32 %2884 to i8
  %2886 = and i8 %2885, 1
  %2887 = xor i8 %2886, 1
  store i8 %2887, i8* %13, align 1
  %2888 = xor i64 %2876, %2877
  %2889 = lshr i64 %2888, 4
  %2890 = trunc i64 %2889 to i8
  %2891 = and i8 %2890, 1
  store i8 %2891, i8* %14, align 1
  %2892 = icmp eq i64 %2877, 0
  %2893 = zext i1 %2892 to i8
  store i8 %2893, i8* %15, align 1
  %2894 = lshr i64 %2877, 63
  %2895 = trunc i64 %2894 to i8
  store i8 %2895, i8* %16, align 1
  %2896 = lshr i64 %2876, 63
  %2897 = lshr i64 %2874, 57
  %2898 = and i64 %2897, 1
  %2899 = xor i64 %2894, %2896
  %2900 = xor i64 %2894, %2898
  %2901 = add nuw nsw i64 %2899, %2900
  %2902 = icmp eq i64 %2901, 2
  %2903 = zext i1 %2902 to i8
  store i8 %2903, i8* %17, align 1
  %2904 = add i64 %2869, -28
  %2905 = add i64 %2803, 58
  store i64 %2905, i64* %3, align 8
  %2906 = inttoptr i64 %2904 to i32*
  %2907 = load i32, i32* %2906, align 4
  %2908 = sext i32 %2907 to i64
  store i64 %2908, i64* %RCX.i1734.pre-phi, align 8
  %2909 = shl nsw i64 %2908, 2
  %2910 = add i64 %2909, %2877
  %2911 = add i64 %2803, 61
  store i64 %2911, i64* %3, align 8
  %2912 = inttoptr i64 %2910 to i32*
  store i32 %2867, i32* %2912, align 4
  %2913 = load i64, i64* %3, align 8
  %2914 = add i64 %2913, 66
  store i64 %2914, i64* %3, align 8
  br label %block_.L_441dbf

block_.L_441d82:                                  ; preds = %block_441d36
  store i64 ptrtoint (%G__0x6d2ec0_type* @G__0x6d2ec0 to i64), i64* %RAX.i1789, align 8
  %2915 = add i64 %2758, 13112
  store i64 %2915, i64* %RCX.i1734.pre-phi, align 8
  %2916 = icmp ugt i64 %2758, -13113
  %2917 = zext i1 %2916 to i8
  store i8 %2917, i8* %12, align 1
  %2918 = trunc i64 %2915 to i32
  %2919 = and i32 %2918, 255
  %2920 = tail call i32 @llvm.ctpop.i32(i32 %2919)
  %2921 = trunc i32 %2920 to i8
  %2922 = and i8 %2921, 1
  %2923 = xor i8 %2922, 1
  store i8 %2923, i8* %13, align 1
  %2924 = xor i64 %2758, 16
  %2925 = xor i64 %2924, %2915
  %2926 = lshr i64 %2925, 4
  %2927 = trunc i64 %2926 to i8
  %2928 = and i8 %2927, 1
  store i8 %2928, i8* %14, align 1
  %2929 = icmp eq i64 %2915, 0
  %2930 = zext i1 %2929 to i8
  store i8 %2930, i8* %15, align 1
  %2931 = lshr i64 %2915, 63
  %2932 = trunc i64 %2931 to i8
  store i8 %2932, i8* %16, align 1
  %2933 = lshr i64 %2758, 63
  %2934 = xor i64 %2931, %2933
  %2935 = add nuw nsw i64 %2934, %2931
  %2936 = icmp eq i64 %2935, 2
  %2937 = zext i1 %2936 to i8
  store i8 %2937, i8* %17, align 1
  %2938 = add i64 %2803, 29
  store i64 %2938, i64* %3, align 8
  %2939 = load i32, i32* %2755, align 4
  %2940 = sext i32 %2939 to i64
  %2941 = shl nsw i64 %2940, 6
  store i64 %2941, i64* %RDX.i1776, align 8
  %2942 = add i64 %2941, %2915
  store i64 %2942, i64* %RCX.i1734.pre-phi, align 8
  %2943 = icmp ult i64 %2942, %2915
  %2944 = icmp ult i64 %2942, %2941
  %2945 = or i1 %2943, %2944
  %2946 = zext i1 %2945 to i8
  store i8 %2946, i8* %12, align 1
  %2947 = trunc i64 %2942 to i32
  %2948 = and i32 %2947, 255
  %2949 = tail call i32 @llvm.ctpop.i32(i32 %2948)
  %2950 = trunc i32 %2949 to i8
  %2951 = and i8 %2950, 1
  %2952 = xor i8 %2951, 1
  store i8 %2952, i8* %13, align 1
  %2953 = xor i64 %2915, %2942
  %2954 = lshr i64 %2953, 4
  %2955 = trunc i64 %2954 to i8
  %2956 = and i8 %2955, 1
  store i8 %2956, i8* %14, align 1
  %2957 = icmp eq i64 %2942, 0
  %2958 = zext i1 %2957 to i8
  store i8 %2958, i8* %15, align 1
  %2959 = lshr i64 %2942, 63
  %2960 = trunc i64 %2959 to i8
  store i8 %2960, i8* %16, align 1
  %2961 = lshr i64 %2940, 57
  %2962 = and i64 %2961, 1
  %2963 = xor i64 %2959, %2931
  %2964 = xor i64 %2959, %2962
  %2965 = add nuw nsw i64 %2963, %2964
  %2966 = icmp eq i64 %2965, 2
  %2967 = zext i1 %2966 to i8
  store i8 %2967, i8* %17, align 1
  %2968 = add i64 %2752, -28
  %2969 = add i64 %2803, 40
  store i64 %2969, i64* %3, align 8
  %2970 = inttoptr i64 %2968 to i32*
  %2971 = load i32, i32* %2970, align 4
  %2972 = sext i32 %2971 to i64
  store i64 %2972, i64* %RDX.i1776, align 8
  %2973 = shl nsw i64 %2972, 2
  %2974 = add i64 %2973, %2942
  %2975 = add i64 %2803, 43
  store i64 %2975, i64* %3, align 8
  %2976 = inttoptr i64 %2974 to i32*
  %2977 = load i32, i32* %2976, align 4
  %2978 = zext i32 %2977 to i64
  store i64 %2978, i64* %RSI.i1729, align 8
  %2979 = load i64, i64* %RBP.i, align 8
  %2980 = add i64 %2979, -32
  %2981 = add i64 %2803, 47
  store i64 %2981, i64* %3, align 8
  %2982 = inttoptr i64 %2980 to i32*
  %2983 = load i32, i32* %2982, align 4
  %2984 = sext i32 %2983 to i64
  %2985 = shl nsw i64 %2984, 6
  store i64 %2985, i64* %RCX.i1734.pre-phi, align 8
  %2986 = load i64, i64* %RAX.i1789, align 8
  %2987 = add i64 %2985, %2986
  store i64 %2987, i64* %RAX.i1789, align 8
  %2988 = icmp ult i64 %2987, %2986
  %2989 = icmp ult i64 %2987, %2985
  %2990 = or i1 %2988, %2989
  %2991 = zext i1 %2990 to i8
  store i8 %2991, i8* %12, align 1
  %2992 = trunc i64 %2987 to i32
  %2993 = and i32 %2992, 255
  %2994 = tail call i32 @llvm.ctpop.i32(i32 %2993)
  %2995 = trunc i32 %2994 to i8
  %2996 = and i8 %2995, 1
  %2997 = xor i8 %2996, 1
  store i8 %2997, i8* %13, align 1
  %2998 = xor i64 %2986, %2987
  %2999 = lshr i64 %2998, 4
  %3000 = trunc i64 %2999 to i8
  %3001 = and i8 %3000, 1
  store i8 %3001, i8* %14, align 1
  %3002 = icmp eq i64 %2987, 0
  %3003 = zext i1 %3002 to i8
  store i8 %3003, i8* %15, align 1
  %3004 = lshr i64 %2987, 63
  %3005 = trunc i64 %3004 to i8
  store i8 %3005, i8* %16, align 1
  %3006 = lshr i64 %2986, 63
  %3007 = lshr i64 %2984, 57
  %3008 = and i64 %3007, 1
  %3009 = xor i64 %3004, %3006
  %3010 = xor i64 %3004, %3008
  %3011 = add nuw nsw i64 %3009, %3010
  %3012 = icmp eq i64 %3011, 2
  %3013 = zext i1 %3012 to i8
  store i8 %3013, i8* %17, align 1
  %3014 = add i64 %2979, -28
  %3015 = add i64 %2803, 58
  store i64 %3015, i64* %3, align 8
  %3016 = inttoptr i64 %3014 to i32*
  %3017 = load i32, i32* %3016, align 4
  %3018 = sext i32 %3017 to i64
  store i64 %3018, i64* %RCX.i1734.pre-phi, align 8
  %3019 = shl nsw i64 %3018, 2
  %3020 = add i64 %3019, %2987
  %3021 = add i64 %2803, 61
  store i64 %3021, i64* %3, align 8
  %3022 = inttoptr i64 %3020 to i32*
  store i32 %2977, i32* %3022, align 4
  %.pre146 = load i64, i64* %3, align 8
  br label %block_.L_441dbf

block_.L_441dbf:                                  ; preds = %block_.L_441d82, %block_441d40
  %3023 = phi i64 [ %.pre146, %block_.L_441d82 ], [ %2914, %block_441d40 ]
  %3024 = load i64, i64* %RBP.i, align 8
  %3025 = add i64 %3024, -32
  %3026 = add i64 %3023, 8
  store i64 %3026, i64* %3, align 8
  %3027 = inttoptr i64 %3025 to i32*
  %3028 = load i32, i32* %3027, align 4
  %3029 = add i32 %3028, 1
  %3030 = zext i32 %3029 to i64
  store i64 %3030, i64* %RAX.i1789, align 8
  %3031 = icmp eq i32 %3028, -1
  %3032 = icmp eq i32 %3029, 0
  %3033 = or i1 %3031, %3032
  %3034 = zext i1 %3033 to i8
  store i8 %3034, i8* %12, align 1
  %3035 = and i32 %3029, 255
  %3036 = tail call i32 @llvm.ctpop.i32(i32 %3035)
  %3037 = trunc i32 %3036 to i8
  %3038 = and i8 %3037, 1
  %3039 = xor i8 %3038, 1
  store i8 %3039, i8* %13, align 1
  %3040 = xor i32 %3029, %3028
  %3041 = lshr i32 %3040, 4
  %3042 = trunc i32 %3041 to i8
  %3043 = and i8 %3042, 1
  store i8 %3043, i8* %14, align 1
  %3044 = zext i1 %3032 to i8
  store i8 %3044, i8* %15, align 1
  %3045 = lshr i32 %3029, 31
  %3046 = trunc i32 %3045 to i8
  store i8 %3046, i8* %16, align 1
  %3047 = lshr i32 %3028, 31
  %3048 = xor i32 %3045, %3047
  %3049 = add nuw nsw i32 %3048, %3045
  %3050 = icmp eq i32 %3049, 2
  %3051 = zext i1 %3050 to i8
  store i8 %3051, i8* %17, align 1
  %3052 = add i64 %3023, 14
  store i64 %3052, i64* %3, align 8
  store i32 %3029, i32* %3027, align 4
  %3053 = load i64, i64* %3, align 8
  %3054 = add i64 %3053, -174
  store i64 %3054, i64* %3, align 8
  br label %block_.L_441d1f

block_.L_441dd2:                                  ; preds = %block_.L_441d1f
  %3055 = add i64 %2752, -28
  %3056 = add i64 %2789, 8
  store i64 %3056, i64* %3, align 8
  %3057 = inttoptr i64 %3055 to i32*
  %3058 = load i32, i32* %3057, align 4
  %3059 = add i32 %3058, 1
  %3060 = zext i32 %3059 to i64
  store i64 %3060, i64* %RAX.i1789, align 8
  %3061 = icmp eq i32 %3058, -1
  %3062 = icmp eq i32 %3059, 0
  %3063 = or i1 %3061, %3062
  %3064 = zext i1 %3063 to i8
  store i8 %3064, i8* %12, align 1
  %3065 = and i32 %3059, 255
  %3066 = tail call i32 @llvm.ctpop.i32(i32 %3065)
  %3067 = trunc i32 %3066 to i8
  %3068 = and i8 %3067, 1
  %3069 = xor i8 %3068, 1
  store i8 %3069, i8* %13, align 1
  %3070 = xor i32 %3059, %3058
  %3071 = lshr i32 %3070, 4
  %3072 = trunc i32 %3071 to i8
  %3073 = and i8 %3072, 1
  store i8 %3073, i8* %14, align 1
  %3074 = zext i1 %3062 to i8
  store i8 %3074, i8* %15, align 1
  %3075 = lshr i32 %3059, 31
  %3076 = trunc i32 %3075 to i8
  store i8 %3076, i8* %16, align 1
  %3077 = lshr i32 %3058, 31
  %3078 = xor i32 %3075, %3077
  %3079 = add nuw nsw i32 %3078, %3075
  %3080 = icmp eq i32 %3079, 2
  %3081 = zext i1 %3080 to i8
  store i8 %3081, i8* %17, align 1
  %3082 = add i64 %2789, 14
  store i64 %3082, i64* %3, align 8
  store i32 %3059, i32* %3057, align 4
  %3083 = load i64, i64* %3, align 8
  %3084 = add i64 %3083, -223
  store i64 %3084, i64* %3, align 8
  br label %block_.L_441d01

block_.L_441de5:                                  ; preds = %block_.L_441d01
  %3085 = add i64 %2747, 5
  store i64 %3085, i64* %3, align 8
  br label %block_.L_441dea

block_.L_441dea:                                  ; preds = %block_.L_441de5, %block_.L_441ce5
  %3086 = phi i64 [ %3085, %block_.L_441de5 ], [ %2704, %block_.L_441ce5 ]
  %3087 = add i64 %3086, 5
  store i64 %3087, i64* %3, align 8
  br label %block_.L_441def

block_.L_441def:                                  ; preds = %block_441c0f, %block_.L_441bfa, %block_.L_441dea
  %3088 = phi i64 [ %3087, %block_.L_441dea ], [ %2412, %block_441c0f ], [ %2400, %block_.L_441bfa ]
  %3089 = add i64 %3088, 5
  store i64 %3089, i64* %3, align 8
  br label %block_.L_441df4

block_.L_441df4:                                  ; preds = %block_.L_441def, %block_441be1
  %storemerge52 = phi i64 [ %2385, %block_441be1 ], [ %3089, %block_.L_441def ]
  %3090 = load i64, i64* %RBP.i, align 8
  %3091 = add i64 %3090, -12
  %3092 = add i64 %storemerge52, 8
  store i64 %3092, i64* %3, align 8
  %3093 = inttoptr i64 %3091 to i32*
  %3094 = load i32, i32* %3093, align 4
  %3095 = add i32 %3094, 1
  %3096 = zext i32 %3095 to i64
  store i64 %3096, i64* %RAX.i1789, align 8
  %3097 = icmp eq i32 %3094, -1
  %3098 = icmp eq i32 %3095, 0
  %3099 = or i1 %3097, %3098
  %3100 = zext i1 %3099 to i8
  store i8 %3100, i8* %12, align 1
  %3101 = and i32 %3095, 255
  %3102 = tail call i32 @llvm.ctpop.i32(i32 %3101)
  %3103 = trunc i32 %3102 to i8
  %3104 = and i8 %3103, 1
  %3105 = xor i8 %3104, 1
  store i8 %3105, i8* %13, align 1
  %3106 = xor i32 %3095, %3094
  %3107 = lshr i32 %3106, 4
  %3108 = trunc i32 %3107 to i8
  %3109 = and i8 %3108, 1
  store i8 %3109, i8* %14, align 1
  %3110 = zext i1 %3098 to i8
  store i8 %3110, i8* %15, align 1
  %3111 = lshr i32 %3095, 31
  %3112 = trunc i32 %3111 to i8
  store i8 %3112, i8* %16, align 1
  %3113 = lshr i32 %3094, 31
  %3114 = xor i32 %3111, %3113
  %3115 = add nuw nsw i32 %3114, %3111
  %3116 = icmp eq i32 %3115, 2
  %3117 = zext i1 %3116 to i8
  store i8 %3117, i8* %17, align 1
  %3118 = add i64 %storemerge52, 14
  store i64 %3118, i64* %3, align 8
  store i32 %3095, i32* %3093, align 4
  %3119 = load i64, i64* %3, align 8
  %3120 = add i64 %3119, -2026
  store i64 %3120, i64* %3, align 8
  br label %block_.L_441618

block_.L_441e07:                                  ; preds = %block_.L_441618
  %3121 = add i64 %225, -8
  %3122 = add i64 %253, 4
  store i64 %3122, i64* %3, align 8
  %3123 = inttoptr i64 %3121 to i64*
  %3124 = load i64, i64* %3123, align 8
  store i64 %3124, i64* %RAX.i1789, align 8
  %3125 = add i64 %253, 6
  store i64 %3125, i64* %3, align 8
  %3126 = inttoptr i64 %3124 to i32*
  %3127 = load i32, i32* %3126, align 4
  %3128 = shl i32 %3127, 4
  %3129 = zext i32 %3128 to i64
  store i64 %3129, i64* %RCX.i1734.pre-phi, align 8
  %3130 = lshr i32 %3127, 28
  %3131 = trunc i32 %3130 to i8
  %3132 = and i8 %3131, 1
  store i8 %3132, i8* %12, align 1
  %3133 = and i32 %3128, 240
  %3134 = tail call i32 @llvm.ctpop.i32(i32 %3133)
  %3135 = trunc i32 %3134 to i8
  %3136 = and i8 %3135, 1
  %3137 = xor i8 %3136, 1
  store i8 %3137, i8* %13, align 1
  store i8 0, i8* %14, align 1
  %3138 = icmp eq i32 %3128, 0
  %3139 = zext i1 %3138 to i8
  store i8 %3139, i8* %15, align 1
  %3140 = lshr i32 %3127, 27
  %3141 = trunc i32 %3140 to i8
  %3142 = and i8 %3141, 1
  store i8 %3142, i8* %16, align 1
  store i8 0, i8* %17, align 1
  %3143 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*), align 8
  store i64 %3143, i64* %RAX.i1789, align 8
  %3144 = add i64 %3143, 14168
  %3145 = add i64 %253, 24
  store i64 %3145, i64* %3, align 8
  %3146 = inttoptr i64 %3144 to i64*
  %3147 = load i64, i64* %3146, align 8
  store i64 %3147, i64* %RAX.i1789, align 8
  store i64 %3143, i64* %RDX.i1776, align 8
  %3148 = add i64 %3143, 12
  %3149 = add i64 %253, 36
  store i64 %3149, i64* %3, align 8
  %3150 = inttoptr i64 %3148 to i32*
  %3151 = load i32, i32* %3150, align 4
  %3152 = sext i32 %3151 to i64
  %3153 = mul nsw i64 %3152, 632
  store i64 %3153, i64* %RDX.i1776, align 8
  %3154 = lshr i64 %3153, 63
  %3155 = add i64 %3153, %3147
  store i64 %3155, i64* %RAX.i1789, align 8
  %3156 = icmp ult i64 %3155, %3147
  %3157 = icmp ult i64 %3155, %3153
  %3158 = or i1 %3156, %3157
  %3159 = zext i1 %3158 to i8
  store i8 %3159, i8* %12, align 1
  %3160 = trunc i64 %3155 to i32
  %3161 = and i32 %3160, 255
  %3162 = tail call i32 @llvm.ctpop.i32(i32 %3161)
  %3163 = trunc i32 %3162 to i8
  %3164 = and i8 %3163, 1
  %3165 = xor i8 %3164, 1
  store i8 %3165, i8* %13, align 1
  %3166 = xor i64 %3153, %3147
  %3167 = xor i64 %3166, %3155
  %3168 = lshr i64 %3167, 4
  %3169 = trunc i64 %3168 to i8
  %3170 = and i8 %3169, 1
  store i8 %3170, i8* %14, align 1
  %3171 = icmp eq i64 %3155, 0
  %3172 = zext i1 %3171 to i8
  store i8 %3172, i8* %15, align 1
  %3173 = lshr i64 %3155, 63
  %3174 = trunc i64 %3173 to i8
  store i8 %3174, i8* %16, align 1
  %3175 = lshr i64 %3147, 63
  %3176 = xor i64 %3173, %3175
  %3177 = xor i64 %3173, %3154
  %3178 = add nuw nsw i64 %3176, %3177
  %3179 = icmp eq i64 %3178, 2
  %3180 = zext i1 %3179 to i8
  store i8 %3180, i8* %17, align 1
  %3181 = load i64, i64* %RCX.i1734.pre-phi, align 8
  %3182 = add i64 %3155, 460
  %3183 = add i64 %253, 52
  store i64 %3183, i64* %3, align 8
  %3184 = trunc i64 %3181 to i32
  %3185 = inttoptr i64 %3182 to i32*
  %3186 = load i32, i32* %3185, align 4
  %3187 = add i32 %3186, %3184
  %3188 = zext i32 %3187 to i64
  store i64 %3188, i64* %RCX.i1734.pre-phi, align 8
  %3189 = icmp ult i32 %3187, %3184
  %3190 = icmp ult i32 %3187, %3186
  %3191 = or i1 %3189, %3190
  %3192 = zext i1 %3191 to i8
  store i8 %3192, i8* %12, align 1
  %3193 = and i32 %3187, 255
  %3194 = tail call i32 @llvm.ctpop.i32(i32 %3193)
  %3195 = trunc i32 %3194 to i8
  %3196 = and i8 %3195, 1
  %3197 = xor i8 %3196, 1
  store i8 %3197, i8* %13, align 1
  %3198 = xor i32 %3186, %3184
  %3199 = xor i32 %3198, %3187
  %3200 = lshr i32 %3199, 4
  %3201 = trunc i32 %3200 to i8
  %3202 = and i8 %3201, 1
  store i8 %3202, i8* %14, align 1
  %3203 = icmp eq i32 %3187, 0
  %3204 = zext i1 %3203 to i8
  store i8 %3204, i8* %15, align 1
  %3205 = lshr i32 %3187, 31
  %3206 = trunc i32 %3205 to i8
  store i8 %3206, i8* %16, align 1
  %3207 = lshr i32 %3184, 31
  %3208 = lshr i32 %3186, 31
  %3209 = xor i32 %3205, %3207
  %3210 = xor i32 %3205, %3208
  %3211 = add nuw nsw i32 %3209, %3210
  %3212 = icmp eq i32 %3211, 2
  %3213 = zext i1 %3212 to i8
  store i8 %3213, i8* %17, align 1
  %ECX.i723 = bitcast %union.anon* %19 to i32*
  %3214 = add i64 %253, 58
  store i64 %3214, i64* %3, align 8
  store i32 %3187, i32* %3185, align 4
  %3215 = load i64, i64* %3, align 8
  %3216 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*), align 8
  store i64 %3216, i64* %RAX.i1789, align 8
  %3217 = add i64 %3216, 72724
  %3218 = add i64 %3215, 15
  store i64 %3218, i64* %3, align 8
  %3219 = inttoptr i64 %3217 to i32*
  %3220 = load i32, i32* %3219, align 4
  store i8 0, i8* %12, align 1
  %3221 = and i32 %3220, 255
  %3222 = tail call i32 @llvm.ctpop.i32(i32 %3221)
  %3223 = trunc i32 %3222 to i8
  %3224 = and i8 %3223, 1
  %3225 = xor i8 %3224, 1
  store i8 %3225, i8* %13, align 1
  store i8 0, i8* %14, align 1
  %3226 = icmp eq i32 %3220, 0
  %3227 = zext i1 %3226 to i8
  store i8 %3227, i8* %15, align 1
  %3228 = lshr i32 %3220, 31
  %3229 = trunc i32 %3228 to i8
  store i8 %3229, i8* %16, align 1
  store i8 0, i8* %17, align 1
  %.v161 = select i1 %3226, i64 1392, i64 21
  %3230 = add i64 %3215, %.v161
  store i64 %3230, i64* %3, align 8
  br i1 %3226, label %block_.L_4423b1, label %block_441e56

block_441e56:                                     ; preds = %block_.L_441e07
  %3231 = load i64, i64* %RBP.i, align 8
  %3232 = add i64 %3231, -28
  %3233 = add i64 %3230, 7
  store i64 %3233, i64* %3, align 8
  %3234 = inttoptr i64 %3232 to i32*
  store i32 0, i32* %3234, align 4
  %3235 = tail call i32 @llvm.ctpop.i32(i32 and (i32 trunc (i64 add (i64 ptrtoint (%G__0x725610_type* @G__0x725610 to i64), i64 1024) to i32), i32 255))
  %3236 = trunc i32 %3235 to i8
  %3237 = and i8 %3236, 1
  %3238 = xor i8 %3237, 1
  %3239 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 19, i32 0
  %R9D.i680 = bitcast %union.anon* %3239 to i32*
  %3240 = getelementptr inbounds %union.anon, %union.anon* %3239, i64 0, i32 0
  %SI.i426 = bitcast %union.anon* %155 to i16*
  %3241 = tail call i32 @llvm.ctpop.i32(i32 and (i32 trunc (i64 add (i64 ptrtoint (%G__0x725610_type* @G__0x725610 to i64), i64 2048) to i32), i32 255))
  %3242 = trunc i32 %3241 to i8
  %3243 = and i8 %3242, 1
  %3244 = xor i8 %3243, 1
  %CX.i56 = bitcast %union.anon* %19 to i16*
  %.pre121 = load i64, i64* %3, align 8
  br label %block_.L_441e5d

block_.L_441e5d:                                  ; preds = %block_.L_442399, %block_441e56
  %3245 = phi i64 [ %5263, %block_.L_442399 ], [ %.pre121, %block_441e56 ]
  %3246 = load i64, i64* %RBP.i, align 8
  %3247 = add i64 %3246, -28
  %3248 = add i64 %3245, 4
  store i64 %3248, i64* %3, align 8
  %3249 = inttoptr i64 %3247 to i32*
  %3250 = load i32, i32* %3249, align 4
  %3251 = add i32 %3250, -16
  %3252 = icmp ult i32 %3250, 16
  %3253 = zext i1 %3252 to i8
  store i8 %3253, i8* %12, align 1
  %3254 = and i32 %3251, 255
  %3255 = tail call i32 @llvm.ctpop.i32(i32 %3254)
  %3256 = trunc i32 %3255 to i8
  %3257 = and i8 %3256, 1
  %3258 = xor i8 %3257, 1
  store i8 %3258, i8* %13, align 1
  %3259 = xor i32 %3250, 16
  %3260 = xor i32 %3259, %3251
  %3261 = lshr i32 %3260, 4
  %3262 = trunc i32 %3261 to i8
  %3263 = and i8 %3262, 1
  store i8 %3263, i8* %14, align 1
  %3264 = icmp eq i32 %3251, 0
  %3265 = zext i1 %3264 to i8
  store i8 %3265, i8* %15, align 1
  %3266 = lshr i32 %3251, 31
  %3267 = trunc i32 %3266 to i8
  store i8 %3267, i8* %16, align 1
  %3268 = lshr i32 %3250, 31
  %3269 = xor i32 %3266, %3268
  %3270 = add nuw nsw i32 %3269, %3268
  %3271 = icmp eq i32 %3270, 2
  %3272 = zext i1 %3271 to i8
  store i8 %3272, i8* %17, align 1
  %3273 = icmp ne i8 %3267, 0
  %3274 = xor i1 %3273, %3271
  %.v162 = select i1 %3274, i64 10, i64 1359
  %3275 = add i64 %3245, %.v162
  store i64 %3275, i64* %3, align 8
  br i1 %3274, label %block_441e67, label %block_.L_4423ac

block_441e67:                                     ; preds = %block_.L_441e5d
  %3276 = add i64 %3246, -32
  %3277 = add i64 %3275, 7
  store i64 %3277, i64* %3, align 8
  %3278 = inttoptr i64 %3276 to i32*
  store i32 0, i32* %3278, align 4
  %.pre122 = load i64, i64* %3, align 8
  br label %block_.L_441e6e

block_.L_441e6e:                                  ; preds = %block_.L_44233f, %block_441e67
  %3279 = phi i64 [ %5233, %block_.L_44233f ], [ %.pre122, %block_441e67 ]
  %3280 = load i64, i64* %RBP.i, align 8
  %3281 = add i64 %3280, -32
  %3282 = add i64 %3279, 4
  store i64 %3282, i64* %3, align 8
  %3283 = inttoptr i64 %3281 to i32*
  %3284 = load i32, i32* %3283, align 4
  %3285 = add i32 %3284, -16
  %3286 = icmp ult i32 %3284, 16
  %3287 = zext i1 %3286 to i8
  store i8 %3287, i8* %12, align 1
  %3288 = and i32 %3285, 255
  %3289 = tail call i32 @llvm.ctpop.i32(i32 %3288)
  %3290 = trunc i32 %3289 to i8
  %3291 = and i8 %3290, 1
  %3292 = xor i8 %3291, 1
  store i8 %3292, i8* %13, align 1
  %3293 = xor i32 %3284, 16
  %3294 = xor i32 %3293, %3285
  %3295 = lshr i32 %3294, 4
  %3296 = trunc i32 %3295 to i8
  %3297 = and i8 %3296, 1
  store i8 %3297, i8* %14, align 1
  %3298 = icmp eq i32 %3285, 0
  %3299 = zext i1 %3298 to i8
  store i8 %3299, i8* %15, align 1
  %3300 = lshr i32 %3285, 31
  %3301 = trunc i32 %3300 to i8
  store i8 %3301, i8* %16, align 1
  %3302 = lshr i32 %3284, 31
  %3303 = xor i32 %3300, %3302
  %3304 = add nuw nsw i32 %3303, %3302
  %3305 = icmp eq i32 %3304, 2
  %3306 = zext i1 %3305 to i8
  store i8 %3306, i8* %17, align 1
  %3307 = icmp ne i8 %3301, 0
  %3308 = xor i1 %3307, %3305
  %.v = select i1 %3308, i64 10, i64 1323
  %3309 = add i64 %3279, %.v
  store i64 %3309, i64* %3, align 8
  br i1 %3308, label %block_441e78, label %block_.L_442399

block_441e78:                                     ; preds = %block_.L_441e6e
  store i64 0, i64* %RAX.i1789, align 8
  store i64 add (i64 ptrtoint (%G__0x725610_type* @G__0x725610 to i64), i64 1024), i64* %RCX.i1734.pre-phi, align 8
  store i8 zext (i1 or (i1 icmp ult (i64 add (i64 ptrtoint (%G__0x725610_type* @G__0x725610 to i64), i64 1024), i64 ptrtoint (%G__0x725610_type* @G__0x725610 to i64)), i1 icmp ult (i64 add (i64 ptrtoint (%G__0x725610_type* @G__0x725610 to i64), i64 1024), i64 1024)) to i8), i8* %12, align 1
  store i8 %3238, i8* %13, align 1
  store i8 and (i8 trunc (i64 lshr (i64 xor (i64 xor (i64 ptrtoint (%G__0x725610_type* @G__0x725610 to i64), i64 1024), i64 add (i64 ptrtoint (%G__0x725610_type* @G__0x725610 to i64), i64 1024)), i64 4) to i8), i8 1), i8* %14, align 1
  store i8 zext (i1 icmp eq (i64 add (i64 ptrtoint (%G__0x725610_type* @G__0x725610 to i64), i64 1024), i64 0) to i8), i8* %15, align 1
  store i8 trunc (i64 lshr (i64 add (i64 ptrtoint (%G__0x725610_type* @G__0x725610 to i64), i64 1024), i64 63) to i8), i8* %16, align 1
  store i8 zext (i1 icmp eq (i64 add (i64 xor (i64 lshr (i64 add (i64 ptrtoint (%G__0x725610_type* @G__0x725610 to i64), i64 1024), i64 63), i64 lshr (i64 ptrtoint (%G__0x725610_type* @G__0x725610 to i64), i64 63)), i64 lshr (i64 add (i64 ptrtoint (%G__0x725610_type* @G__0x725610 to i64), i64 1024), i64 63)), i64 2) to i8), i8* %17, align 1
  store i64 ptrtoint (%G__0x6f8f20_type* @G__0x6f8f20 to i64), i64* %RDX.i1776, align 8
  store i64 ptrtoint (%G__0x6d2ec0_type* @G__0x6d2ec0 to i64), i64* %RSI.i1729, align 8
  store i64 ptrtoint (%G__0x722ff0_type* @G__0x722ff0 to i64), i64* %RDI.i1782, align 8
  %3310 = add i64 %3309, 53
  store i64 %3310, i64* %3, align 8
  %3311 = load i32, i32* %3283, align 4
  %3312 = sext i32 %3311 to i64
  %3313 = shl nsw i64 %3312, 6
  store i64 %3313, i64* %R8.i1720, align 8
  %3314 = add i64 %3313, ptrtoint (%G__0x722ff0_type* @G__0x722ff0 to i64)
  store i64 %3314, i64* %RDI.i1782, align 8
  %3315 = icmp ult i64 %3314, ptrtoint (%G__0x722ff0_type* @G__0x722ff0 to i64)
  %3316 = icmp ult i64 %3314, %3313
  %3317 = or i1 %3315, %3316
  %3318 = zext i1 %3317 to i8
  store i8 %3318, i8* %12, align 1
  %3319 = trunc i64 %3314 to i32
  %3320 = and i32 %3319, 248
  %3321 = tail call i32 @llvm.ctpop.i32(i32 %3320)
  %3322 = trunc i32 %3321 to i8
  %3323 = and i8 %3322, 1
  %3324 = xor i8 %3323, 1
  store i8 %3324, i8* %13, align 1
  %3325 = xor i64 %3314, ptrtoint (%G__0x722ff0_type* @G__0x722ff0 to i64)
  %3326 = lshr i64 %3325, 4
  %3327 = trunc i64 %3326 to i8
  %3328 = and i8 %3327, 1
  store i8 %3328, i8* %14, align 1
  %3329 = icmp eq i64 %3314, 0
  %3330 = zext i1 %3329 to i8
  store i8 %3330, i8* %15, align 1
  %3331 = lshr i64 %3314, 63
  %3332 = trunc i64 %3331 to i8
  store i8 %3332, i8* %16, align 1
  %3333 = lshr i64 %3312, 57
  %3334 = and i64 %3333, 1
  %3335 = xor i64 %3331, lshr (i64 ptrtoint (%G__0x722ff0_type* @G__0x722ff0 to i64), i64 63)
  %3336 = xor i64 %3331, %3334
  %3337 = add nuw nsw i64 %3335, %3336
  %3338 = icmp eq i64 %3337, 2
  %3339 = zext i1 %3338 to i8
  store i8 %3339, i8* %17, align 1
  %3340 = load i64, i64* %RBP.i, align 8
  %3341 = add i64 %3340, -28
  %3342 = add i64 %3309, 64
  store i64 %3342, i64* %3, align 8
  %3343 = inttoptr i64 %3341 to i32*
  %3344 = load i32, i32* %3343, align 4
  %3345 = sext i32 %3344 to i64
  store i64 %3345, i64* %R8.i1720, align 8
  %3346 = shl nsw i64 %3345, 2
  %3347 = add i64 %3346, %3314
  %3348 = add i64 %3309, 68
  store i64 %3348, i64* %3, align 8
  %3349 = inttoptr i64 %3347 to i32*
  %3350 = load i32, i32* %3349, align 4
  %3351 = zext i32 %3350 to i64
  store i64 %3351, i64* %3240, align 8
  %3352 = add i64 %3340, -32
  %3353 = add i64 %3309, 72
  store i64 %3353, i64* %3, align 8
  %3354 = inttoptr i64 %3352 to i32*
  %3355 = load i32, i32* %3354, align 4
  %3356 = sext i32 %3355 to i64
  %3357 = shl nsw i64 %3356, 6
  store i64 %3357, i64* %RDI.i1782, align 8
  %3358 = load i64, i64* %RSI.i1729, align 8
  %3359 = add i64 %3357, %3358
  store i64 %3359, i64* %R8.i1720, align 8
  %3360 = icmp ult i64 %3359, %3358
  %3361 = icmp ult i64 %3359, %3357
  %3362 = or i1 %3360, %3361
  %3363 = zext i1 %3362 to i8
  store i8 %3363, i8* %12, align 1
  %3364 = trunc i64 %3359 to i32
  %3365 = and i32 %3364, 255
  %3366 = tail call i32 @llvm.ctpop.i32(i32 %3365)
  %3367 = trunc i32 %3366 to i8
  %3368 = and i8 %3367, 1
  %3369 = xor i8 %3368, 1
  store i8 %3369, i8* %13, align 1
  %3370 = xor i64 %3358, %3359
  %3371 = lshr i64 %3370, 4
  %3372 = trunc i64 %3371 to i8
  %3373 = and i8 %3372, 1
  store i8 %3373, i8* %14, align 1
  %3374 = icmp eq i64 %3359, 0
  %3375 = zext i1 %3374 to i8
  store i8 %3375, i8* %15, align 1
  %3376 = lshr i64 %3359, 63
  %3377 = trunc i64 %3376 to i8
  store i8 %3377, i8* %16, align 1
  %3378 = lshr i64 %3358, 63
  %3379 = lshr i64 %3356, 57
  %3380 = and i64 %3379, 1
  %3381 = xor i64 %3376, %3378
  %3382 = xor i64 %3376, %3380
  %3383 = add nuw nsw i64 %3381, %3382
  %3384 = icmp eq i64 %3383, 2
  %3385 = zext i1 %3384 to i8
  store i8 %3385, i8* %17, align 1
  %3386 = add i64 %3309, 86
  store i64 %3386, i64* %3, align 8
  %3387 = load i32, i32* %3343, align 4
  %3388 = sext i32 %3387 to i64
  store i64 %3388, i64* %RDI.i1782, align 8
  %3389 = shl nsw i64 %3388, 2
  %3390 = add i64 %3389, %3359
  %3391 = add i64 %3309, 90
  store i64 %3391, i64* %3, align 8
  %3392 = inttoptr i64 %3390 to i32*
  %3393 = load i32, i32* %3392, align 4
  %3394 = zext i32 %3393 to i64
  %3395 = shl nuw i64 %3394, 32
  %3396 = ashr i64 %3395, 33
  %3397 = and i64 %3396, 4294967295
  store i64 %3397, i64* %221, align 8
  %3398 = load i32, i32* %R9D.i680, align 4
  %3399 = trunc i64 %3396 to i32
  %3400 = sub i32 %3398, %3399
  %3401 = zext i32 %3400 to i64
  store i64 %3401, i64* %3240, align 8
  %3402 = icmp ult i32 %3398, %3399
  %3403 = zext i1 %3402 to i8
  store i8 %3403, i8* %12, align 1
  %3404 = and i32 %3400, 255
  %3405 = tail call i32 @llvm.ctpop.i32(i32 %3404)
  %3406 = trunc i32 %3405 to i8
  %3407 = and i8 %3406, 1
  %3408 = xor i8 %3407, 1
  store i8 %3408, i8* %13, align 1
  %3409 = xor i32 %3399, %3398
  %3410 = xor i32 %3409, %3400
  %3411 = lshr i32 %3410, 4
  %3412 = trunc i32 %3411 to i8
  %3413 = and i8 %3412, 1
  store i8 %3413, i8* %14, align 1
  %3414 = icmp eq i32 %3400, 0
  %3415 = zext i1 %3414 to i8
  store i8 %3415, i8* %15, align 1
  %3416 = lshr i32 %3400, 31
  %3417 = trunc i32 %3416 to i8
  store i8 %3417, i8* %16, align 1
  %3418 = lshr i32 %3398, 31
  %3419 = lshr i64 %3396, 31
  %3420 = trunc i64 %3419 to i32
  %3421 = and i32 %3420, 1
  %3422 = xor i32 %3421, %3418
  %3423 = xor i32 %3416, %3418
  %3424 = add nuw nsw i32 %3423, %3422
  %3425 = icmp eq i32 %3424, 2
  %3426 = zext i1 %3425 to i8
  store i8 %3426, i8* %17, align 1
  %3427 = load i64, i64* %RBP.i, align 8
  %3428 = add i64 %3427, -272
  %3429 = add i64 %3309, 103
  store i64 %3429, i64* %3, align 8
  %3430 = inttoptr i64 %3428 to i32*
  store i32 %3400, i32* %3430, align 4
  %3431 = load i64, i64* %RBP.i, align 8
  %3432 = add i64 %3431, -32
  %3433 = load i64, i64* %3, align 8
  %3434 = add i64 %3433, 4
  store i64 %3434, i64* %3, align 8
  %3435 = inttoptr i64 %3432 to i32*
  %3436 = load i32, i32* %3435, align 4
  %3437 = sext i32 %3436 to i64
  %3438 = shl nsw i64 %3437, 6
  store i64 %3438, i64* %RDI.i1782, align 8
  %3439 = load i64, i64* %RSI.i1729, align 8
  %3440 = add i64 %3438, %3439
  store i64 %3440, i64* %RSI.i1729, align 8
  %3441 = icmp ult i64 %3440, %3439
  %3442 = icmp ult i64 %3440, %3438
  %3443 = or i1 %3441, %3442
  %3444 = zext i1 %3443 to i8
  store i8 %3444, i8* %12, align 1
  %3445 = trunc i64 %3440 to i32
  %3446 = and i32 %3445, 255
  %3447 = tail call i32 @llvm.ctpop.i32(i32 %3446)
  %3448 = trunc i32 %3447 to i8
  %3449 = and i8 %3448, 1
  %3450 = xor i8 %3449, 1
  store i8 %3450, i8* %13, align 1
  %3451 = xor i64 %3439, %3440
  %3452 = lshr i64 %3451, 4
  %3453 = trunc i64 %3452 to i8
  %3454 = and i8 %3453, 1
  store i8 %3454, i8* %14, align 1
  %3455 = icmp eq i64 %3440, 0
  %3456 = zext i1 %3455 to i8
  store i8 %3456, i8* %15, align 1
  %3457 = lshr i64 %3440, 63
  %3458 = trunc i64 %3457 to i8
  store i8 %3458, i8* %16, align 1
  %3459 = lshr i64 %3439, 63
  %3460 = lshr i64 %3437, 57
  %3461 = and i64 %3460, 1
  %3462 = xor i64 %3457, %3459
  %3463 = xor i64 %3457, %3461
  %3464 = add nuw nsw i64 %3462, %3463
  %3465 = icmp eq i64 %3464, 2
  %3466 = zext i1 %3465 to i8
  store i8 %3466, i8* %17, align 1
  %3467 = add i64 %3431, -28
  %3468 = add i64 %3433, 15
  store i64 %3468, i64* %3, align 8
  %3469 = inttoptr i64 %3467 to i32*
  %3470 = load i32, i32* %3469, align 4
  %3471 = sext i32 %3470 to i64
  store i64 %3471, i64* %RDI.i1782, align 8
  %3472 = shl nsw i64 %3471, 2
  %3473 = add i64 %3472, %3440
  %3474 = add i64 %3433, 19
  store i64 %3474, i64* %3, align 8
  %3475 = inttoptr i64 %3473 to i32*
  %3476 = load i32, i32* %3475, align 4
  %3477 = zext i32 %3476 to i64
  store i64 %3477, i64* %3240, align 8
  %3478 = add i64 %3431, -272
  %3479 = add i64 %3433, 26
  store i64 %3479, i64* %3, align 8
  %3480 = inttoptr i64 %3478 to i32*
  %3481 = load i32, i32* %3480, align 4
  %3482 = add i32 %3481, %3476
  %3483 = zext i32 %3482 to i64
  store i64 %3483, i64* %3240, align 8
  %3484 = icmp ult i32 %3482, %3476
  %3485 = icmp ult i32 %3482, %3481
  %3486 = or i1 %3484, %3485
  %3487 = zext i1 %3486 to i8
  store i8 %3487, i8* %12, align 1
  %3488 = and i32 %3482, 255
  %3489 = tail call i32 @llvm.ctpop.i32(i32 %3488)
  %3490 = trunc i32 %3489 to i8
  %3491 = and i8 %3490, 1
  %3492 = xor i8 %3491, 1
  store i8 %3492, i8* %13, align 1
  %3493 = xor i32 %3481, %3476
  %3494 = xor i32 %3493, %3482
  %3495 = lshr i32 %3494, 4
  %3496 = trunc i32 %3495 to i8
  %3497 = and i8 %3496, 1
  store i8 %3497, i8* %14, align 1
  %3498 = icmp eq i32 %3482, 0
  %3499 = zext i1 %3498 to i8
  store i8 %3499, i8* %15, align 1
  %3500 = lshr i32 %3482, 31
  %3501 = trunc i32 %3500 to i8
  store i8 %3501, i8* %16, align 1
  %3502 = lshr i32 %3476, 31
  %3503 = lshr i32 %3481, 31
  %3504 = xor i32 %3500, %3502
  %3505 = xor i32 %3500, %3503
  %3506 = add nuw nsw i32 %3504, %3505
  %3507 = icmp eq i32 %3506, 2
  %3508 = zext i1 %3507 to i8
  store i8 %3508, i8* %17, align 1
  %3509 = load i64, i64* %RBP.i, align 8
  %3510 = add i64 %3509, -264
  %3511 = add i64 %3433, 33
  store i64 %3511, i64* %3, align 8
  %3512 = inttoptr i64 %3510 to i32*
  store i32 %3482, i32* %3512, align 4
  %3513 = load i64, i64* %RBP.i, align 8
  %3514 = add i64 %3513, -272
  %3515 = load i64, i64* %3, align 8
  %3516 = add i64 %3515, 7
  store i64 %3516, i64* %3, align 8
  %3517 = inttoptr i64 %3514 to i32*
  %3518 = load i32, i32* %3517, align 4
  %3519 = zext i32 %3518 to i64
  store i64 %3519, i64* %3240, align 8
  %3520 = add i64 %3513, -32
  %3521 = add i64 %3515, 11
  store i64 %3521, i64* %3, align 8
  %3522 = inttoptr i64 %3520 to i32*
  %3523 = load i32, i32* %3522, align 4
  %3524 = sext i32 %3523 to i64
  %3525 = shl nsw i64 %3524, 6
  store i64 %3525, i64* %RSI.i1729, align 8
  %3526 = load i64, i64* %RDX.i1776, align 8
  %3527 = add i64 %3525, %3526
  store i64 %3527, i64* %RDI.i1782, align 8
  %3528 = icmp ult i64 %3527, %3526
  %3529 = icmp ult i64 %3527, %3525
  %3530 = or i1 %3528, %3529
  %3531 = zext i1 %3530 to i8
  store i8 %3531, i8* %12, align 1
  %3532 = trunc i64 %3527 to i32
  %3533 = and i32 %3532, 255
  %3534 = tail call i32 @llvm.ctpop.i32(i32 %3533)
  %3535 = trunc i32 %3534 to i8
  %3536 = and i8 %3535, 1
  %3537 = xor i8 %3536, 1
  store i8 %3537, i8* %13, align 1
  %3538 = xor i64 %3526, %3527
  %3539 = lshr i64 %3538, 4
  %3540 = trunc i64 %3539 to i8
  %3541 = and i8 %3540, 1
  store i8 %3541, i8* %14, align 1
  %3542 = icmp eq i64 %3527, 0
  %3543 = zext i1 %3542 to i8
  store i8 %3543, i8* %15, align 1
  %3544 = lshr i64 %3527, 63
  %3545 = trunc i64 %3544 to i8
  store i8 %3545, i8* %16, align 1
  %3546 = lshr i64 %3526, 63
  %3547 = lshr i64 %3524, 57
  %3548 = and i64 %3547, 1
  %3549 = xor i64 %3544, %3546
  %3550 = xor i64 %3544, %3548
  %3551 = add nuw nsw i64 %3549, %3550
  %3552 = icmp eq i64 %3551, 2
  %3553 = zext i1 %3552 to i8
  store i8 %3553, i8* %17, align 1
  %3554 = add i64 %3513, -28
  %3555 = add i64 %3515, 25
  store i64 %3555, i64* %3, align 8
  %3556 = inttoptr i64 %3554 to i32*
  %3557 = load i32, i32* %3556, align 4
  %3558 = sext i32 %3557 to i64
  store i64 %3558, i64* %RSI.i1729, align 8
  %3559 = shl nsw i64 %3558, 2
  %3560 = add i64 %3559, %3527
  %3561 = add i64 %3515, 29
  store i64 %3561, i64* %3, align 8
  %3562 = inttoptr i64 %3560 to i32*
  %3563 = load i32, i32* %3562, align 4
  %3564 = zext i32 %3563 to i64
  %3565 = shl nuw i64 %3564, 32
  %3566 = ashr i64 %3565, 33
  %3567 = and i64 %3566, 4294967295
  store i64 %3567, i64* %221, align 8
  %3568 = load i32, i32* %R9D.i680, align 4
  %3569 = trunc i64 %3566 to i32
  %3570 = sub i32 %3568, %3569
  %3571 = zext i32 %3570 to i64
  store i64 %3571, i64* %3240, align 8
  %3572 = icmp ult i32 %3568, %3569
  %3573 = zext i1 %3572 to i8
  store i8 %3573, i8* %12, align 1
  %3574 = and i32 %3570, 255
  %3575 = tail call i32 @llvm.ctpop.i32(i32 %3574)
  %3576 = trunc i32 %3575 to i8
  %3577 = and i8 %3576, 1
  %3578 = xor i8 %3577, 1
  store i8 %3578, i8* %13, align 1
  %3579 = xor i32 %3569, %3568
  %3580 = xor i32 %3579, %3570
  %3581 = lshr i32 %3580, 4
  %3582 = trunc i32 %3581 to i8
  %3583 = and i8 %3582, 1
  store i8 %3583, i8* %14, align 1
  %3584 = icmp eq i32 %3570, 0
  %3585 = zext i1 %3584 to i8
  store i8 %3585, i8* %15, align 1
  %3586 = lshr i32 %3570, 31
  %3587 = trunc i32 %3586 to i8
  store i8 %3587, i8* %16, align 1
  %3588 = lshr i32 %3568, 31
  %3589 = lshr i64 %3566, 31
  %3590 = trunc i64 %3589 to i32
  %3591 = and i32 %3590, 1
  %3592 = xor i32 %3591, %3588
  %3593 = xor i32 %3586, %3588
  %3594 = add nuw nsw i32 %3593, %3592
  %3595 = icmp eq i32 %3594, 2
  %3596 = zext i1 %3595 to i8
  store i8 %3596, i8* %17, align 1
  %3597 = load i64, i64* %RBP.i, align 8
  %3598 = add i64 %3597, -268
  %3599 = add i64 %3515, 42
  store i64 %3599, i64* %3, align 8
  %3600 = inttoptr i64 %3598 to i32*
  store i32 %3570, i32* %3600, align 4
  %3601 = load i64, i64* %RBP.i, align 8
  %3602 = add i64 %3601, -268
  %3603 = load i64, i64* %3, align 8
  %3604 = add i64 %3603, 7
  store i64 %3604, i64* %3, align 8
  %3605 = inttoptr i64 %3602 to i32*
  %3606 = load i32, i32* %3605, align 4
  %3607 = zext i32 %3606 to i64
  store i64 %3607, i64* %3240, align 8
  %3608 = add i64 %3601, -32
  %3609 = add i64 %3603, 11
  store i64 %3609, i64* %3, align 8
  %3610 = inttoptr i64 %3608 to i32*
  %3611 = load i32, i32* %3610, align 4
  %3612 = sext i32 %3611 to i64
  %3613 = shl nsw i64 %3612, 6
  store i64 %3613, i64* %RSI.i1729, align 8
  %3614 = load i64, i64* %RDX.i1776, align 8
  %3615 = add i64 %3613, %3614
  store i64 %3615, i64* %RDX.i1776, align 8
  %3616 = icmp ult i64 %3615, %3614
  %3617 = icmp ult i64 %3615, %3613
  %3618 = or i1 %3616, %3617
  %3619 = zext i1 %3618 to i8
  store i8 %3619, i8* %12, align 1
  %3620 = trunc i64 %3615 to i32
  %3621 = and i32 %3620, 255
  %3622 = tail call i32 @llvm.ctpop.i32(i32 %3621)
  %3623 = trunc i32 %3622 to i8
  %3624 = and i8 %3623, 1
  %3625 = xor i8 %3624, 1
  store i8 %3625, i8* %13, align 1
  %3626 = xor i64 %3614, %3615
  %3627 = lshr i64 %3626, 4
  %3628 = trunc i64 %3627 to i8
  %3629 = and i8 %3628, 1
  store i8 %3629, i8* %14, align 1
  %3630 = icmp eq i64 %3615, 0
  %3631 = zext i1 %3630 to i8
  store i8 %3631, i8* %15, align 1
  %3632 = lshr i64 %3615, 63
  %3633 = trunc i64 %3632 to i8
  store i8 %3633, i8* %16, align 1
  %3634 = lshr i64 %3614, 63
  %3635 = lshr i64 %3612, 57
  %3636 = and i64 %3635, 1
  %3637 = xor i64 %3632, %3634
  %3638 = xor i64 %3632, %3636
  %3639 = add nuw nsw i64 %3637, %3638
  %3640 = icmp eq i64 %3639, 2
  %3641 = zext i1 %3640 to i8
  store i8 %3641, i8* %17, align 1
  %3642 = add i64 %3601, -28
  %3643 = add i64 %3603, 22
  store i64 %3643, i64* %3, align 8
  %3644 = inttoptr i64 %3642 to i32*
  %3645 = load i32, i32* %3644, align 4
  %3646 = sext i32 %3645 to i64
  store i64 %3646, i64* %RSI.i1729, align 8
  %3647 = shl nsw i64 %3646, 2
  %3648 = add i64 %3615, %3647
  %3649 = add i64 %3603, 26
  store i64 %3649, i64* %3, align 8
  %3650 = inttoptr i64 %3648 to i32*
  %3651 = load i32, i32* %3650, align 4
  %3652 = add i32 %3651, %3606
  %3653 = zext i32 %3652 to i64
  store i64 %3653, i64* %3240, align 8
  %3654 = icmp ult i32 %3652, %3606
  %3655 = icmp ult i32 %3652, %3651
  %3656 = or i1 %3654, %3655
  %3657 = zext i1 %3656 to i8
  store i8 %3657, i8* %12, align 1
  %3658 = and i32 %3652, 255
  %3659 = tail call i32 @llvm.ctpop.i32(i32 %3658)
  %3660 = trunc i32 %3659 to i8
  %3661 = and i8 %3660, 1
  %3662 = xor i8 %3661, 1
  store i8 %3662, i8* %13, align 1
  %3663 = xor i32 %3651, %3606
  %3664 = xor i32 %3663, %3652
  %3665 = lshr i32 %3664, 4
  %3666 = trunc i32 %3665 to i8
  %3667 = and i8 %3666, 1
  store i8 %3667, i8* %14, align 1
  %3668 = icmp eq i32 %3652, 0
  %3669 = zext i1 %3668 to i8
  store i8 %3669, i8* %15, align 1
  %3670 = lshr i32 %3652, 31
  %3671 = trunc i32 %3670 to i8
  store i8 %3671, i8* %16, align 1
  %3672 = lshr i32 %3606, 31
  %3673 = lshr i32 %3651, 31
  %3674 = xor i32 %3670, %3672
  %3675 = xor i32 %3670, %3673
  %3676 = add nuw nsw i32 %3674, %3675
  %3677 = icmp eq i32 %3676, 2
  %3678 = zext i1 %3677 to i8
  store i8 %3678, i8* %17, align 1
  %3679 = load i64, i64* %RBP.i, align 8
  %3680 = add i64 %3679, -260
  %3681 = add i64 %3603, 33
  store i64 %3681, i64* %3, align 8
  %3682 = inttoptr i64 %3680 to i32*
  store i32 %3652, i32* %3682, align 4
  %3683 = load i64, i64* %3, align 8
  %3684 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*), align 8
  store i64 %3684, i64* %RDX.i1776, align 8
  %3685 = add i64 %3684, 72688
  %3686 = add i64 %3683, 15
  store i64 %3686, i64* %3, align 8
  %3687 = inttoptr i64 %3685 to i32*
  %3688 = load i32, i32* %3687, align 4
  %3689 = zext i32 %3688 to i64
  store i64 %3689, i64* %3240, align 8
  %3690 = load i64, i64* %RBP.i, align 8
  %3691 = add i64 %3690, -268
  %3692 = add i64 %3683, 22
  store i64 %3692, i64* %3, align 8
  %3693 = inttoptr i64 %3691 to i32*
  %3694 = load i32, i32* %3693, align 4
  %3695 = zext i32 %3694 to i64
  store i64 %3695, i64* %221, align 8
  %3696 = add i64 %3690, -32
  %3697 = add i64 %3683, 26
  store i64 %3697, i64* %3, align 8
  %3698 = inttoptr i64 %3696 to i32*
  %3699 = load i32, i32* %3698, align 4
  %3700 = sext i32 %3699 to i64
  %3701 = shl nsw i64 %3700, 6
  store i64 %3701, i64* %RDX.i1776, align 8
  %3702 = load i64, i64* %RCX.i1734.pre-phi, align 8
  %3703 = add i64 %3701, %3702
  store i64 %3703, i64* %RCX.i1734.pre-phi, align 8
  %3704 = icmp ult i64 %3703, %3702
  %3705 = icmp ult i64 %3703, %3701
  %3706 = or i1 %3704, %3705
  %3707 = zext i1 %3706 to i8
  store i8 %3707, i8* %12, align 1
  %3708 = trunc i64 %3703 to i32
  %3709 = and i32 %3708, 255
  %3710 = tail call i32 @llvm.ctpop.i32(i32 %3709)
  %3711 = trunc i32 %3710 to i8
  %3712 = and i8 %3711, 1
  %3713 = xor i8 %3712, 1
  store i8 %3713, i8* %13, align 1
  %3714 = xor i64 %3702, %3703
  %3715 = lshr i64 %3714, 4
  %3716 = trunc i64 %3715 to i8
  %3717 = and i8 %3716, 1
  store i8 %3717, i8* %14, align 1
  %3718 = icmp eq i64 %3703, 0
  %3719 = zext i1 %3718 to i8
  store i8 %3719, i8* %15, align 1
  %3720 = lshr i64 %3703, 63
  %3721 = trunc i64 %3720 to i8
  store i8 %3721, i8* %16, align 1
  %3722 = lshr i64 %3702, 63
  %3723 = lshr i64 %3700, 57
  %3724 = and i64 %3723, 1
  %3725 = xor i64 %3720, %3722
  %3726 = xor i64 %3720, %3724
  %3727 = add nuw nsw i64 %3725, %3726
  %3728 = icmp eq i64 %3727, 2
  %3729 = zext i1 %3728 to i8
  store i8 %3729, i8* %17, align 1
  %3730 = add i64 %3690, -28
  %3731 = add i64 %3683, 37
  store i64 %3731, i64* %3, align 8
  %3732 = inttoptr i64 %3730 to i32*
  %3733 = load i32, i32* %3732, align 4
  %3734 = sext i32 %3733 to i64
  store i64 %3734, i64* %RDX.i1776, align 8
  %3735 = shl nsw i64 %3734, 2
  %3736 = add i64 %3703, %3735
  %3737 = add i64 %3683, 41
  store i64 %3737, i64* %3, align 8
  %3738 = inttoptr i64 %3736 to i32*
  %3739 = load i32, i32* %3738, align 4
  %3740 = add i32 %3739, %3694
  %3741 = zext i32 %3740 to i64
  store i64 %3741, i64* %221, align 8
  %3742 = lshr i32 %3740, 31
  %3743 = load i32, i32* %EAX.i1788, align 4
  %3744 = sub i32 %3743, %3740
  %3745 = icmp ult i32 %3743, %3740
  %3746 = zext i1 %3745 to i8
  store i8 %3746, i8* %12, align 1
  %3747 = and i32 %3744, 255
  %3748 = tail call i32 @llvm.ctpop.i32(i32 %3747)
  %3749 = trunc i32 %3748 to i8
  %3750 = and i8 %3749, 1
  %3751 = xor i8 %3750, 1
  store i8 %3751, i8* %13, align 1
  %3752 = xor i32 %3740, %3743
  %3753 = xor i32 %3752, %3744
  %3754 = lshr i32 %3753, 4
  %3755 = trunc i32 %3754 to i8
  %3756 = and i8 %3755, 1
  store i8 %3756, i8* %14, align 1
  %3757 = icmp eq i32 %3744, 0
  %3758 = zext i1 %3757 to i8
  store i8 %3758, i8* %15, align 1
  %3759 = lshr i32 %3744, 31
  %3760 = trunc i32 %3759 to i8
  store i8 %3760, i8* %16, align 1
  %3761 = lshr i32 %3743, 31
  %3762 = xor i32 %3742, %3761
  %3763 = xor i32 %3759, %3761
  %3764 = add nuw nsw i32 %3763, %3762
  %3765 = icmp eq i32 %3764, 2
  %3766 = zext i1 %3765 to i8
  store i8 %3766, i8* %17, align 1
  %3767 = load i64, i64* %RBP.i, align 8
  %3768 = add i64 %3767, -280
  %3769 = load i32, i32* %R9D.i680, align 4
  %3770 = add i64 %3683, 51
  store i64 %3770, i64* %3, align 8
  %3771 = inttoptr i64 %3768 to i32*
  store i32 %3769, i32* %3771, align 4
  %3772 = load i64, i64* %3, align 8
  %3773 = load i8, i8* %15, align 1
  %3774 = icmp ne i8 %3773, 0
  %3775 = load i8, i8* %16, align 1
  %3776 = icmp ne i8 %3775, 0
  %3777 = load i8, i8* %17, align 1
  %3778 = icmp ne i8 %3777, 0
  %3779 = xor i1 %3776, %3778
  %3780 = or i1 %3774, %3779
  %.v223 = select i1 %3780, i64 19, i64 6
  %3781 = add i64 %3772, %.v223
  store i64 %3781, i64* %3, align 8
  br i1 %3780, label %block_.L_441f93, label %block_441f86

block_441f86:                                     ; preds = %block_441e78
  store i64 0, i64* %RAX.i1789, align 8
  store i8 0, i8* %12, align 1
  store i8 1, i8* %13, align 1
  store i8 1, i8* %15, align 1
  store i8 0, i8* %16, align 1
  store i8 0, i8* %17, align 1
  store i8 0, i8* %14, align 1
  %3782 = load i64, i64* %RBP.i, align 8
  %3783 = add i64 %3782, -284
  %3784 = add i64 %3781, 8
  store i64 %3784, i64* %3, align 8
  %3785 = inttoptr i64 %3783 to i32*
  store i32 0, i32* %3785, align 4
  %3786 = load i64, i64* %3, align 8
  %3787 = add i64 %3786, 51
  store i64 %3787, i64* %3, align 8
  br label %block_.L_441fc1

block_.L_441f93:                                  ; preds = %block_441e78
  store i64 add (i64 ptrtoint (%G__0x725610_type* @G__0x725610 to i64), i64 1024), i64* %RAX.i1789, align 8
  store i8 zext (i1 or (i1 icmp ult (i64 add (i64 ptrtoint (%G__0x725610_type* @G__0x725610 to i64), i64 1024), i64 ptrtoint (%G__0x725610_type* @G__0x725610 to i64)), i1 icmp ult (i64 add (i64 ptrtoint (%G__0x725610_type* @G__0x725610 to i64), i64 1024), i64 1024)) to i8), i8* %12, align 1
  store i8 %3238, i8* %13, align 1
  store i8 and (i8 trunc (i64 lshr (i64 xor (i64 xor (i64 ptrtoint (%G__0x725610_type* @G__0x725610 to i64), i64 1024), i64 add (i64 ptrtoint (%G__0x725610_type* @G__0x725610 to i64), i64 1024)), i64 4) to i8), i8 1), i8* %14, align 1
  store i8 zext (i1 icmp eq (i64 add (i64 ptrtoint (%G__0x725610_type* @G__0x725610 to i64), i64 1024), i64 0) to i8), i8* %15, align 1
  store i8 trunc (i64 lshr (i64 add (i64 ptrtoint (%G__0x725610_type* @G__0x725610 to i64), i64 1024), i64 63) to i8), i8* %16, align 1
  store i8 zext (i1 icmp eq (i64 add (i64 xor (i64 lshr (i64 add (i64 ptrtoint (%G__0x725610_type* @G__0x725610 to i64), i64 1024), i64 63), i64 lshr (i64 ptrtoint (%G__0x725610_type* @G__0x725610 to i64), i64 63)), i64 lshr (i64 add (i64 ptrtoint (%G__0x725610_type* @G__0x725610 to i64), i64 1024), i64 63)), i64 2) to i8), i8* %17, align 1
  %3788 = load i64, i64* %RBP.i, align 8
  %3789 = add i64 %3788, -268
  %3790 = add i64 %3781, 22
  store i64 %3790, i64* %3, align 8
  %3791 = inttoptr i64 %3789 to i32*
  %3792 = load i32, i32* %3791, align 4
  %3793 = zext i32 %3792 to i64
  store i64 %3793, i64* %RCX.i1734.pre-phi, align 8
  %3794 = add i64 %3788, -32
  %3795 = add i64 %3781, 26
  store i64 %3795, i64* %3, align 8
  %3796 = inttoptr i64 %3794 to i32*
  %3797 = load i32, i32* %3796, align 4
  %3798 = sext i32 %3797 to i64
  %3799 = shl nsw i64 %3798, 6
  store i64 %3799, i64* %RDX.i1776, align 8
  %3800 = add i64 %3799, add (i64 ptrtoint (%G__0x725610_type* @G__0x725610 to i64), i64 1024)
  store i64 %3800, i64* %RAX.i1789, align 8
  %3801 = icmp ult i64 %3800, add (i64 ptrtoint (%G__0x725610_type* @G__0x725610 to i64), i64 1024)
  %3802 = icmp ult i64 %3800, %3799
  %3803 = or i1 %3801, %3802
  %3804 = zext i1 %3803 to i8
  store i8 %3804, i8* %12, align 1
  %3805 = trunc i64 %3800 to i32
  %3806 = and i32 %3805, 248
  %3807 = tail call i32 @llvm.ctpop.i32(i32 %3806)
  %3808 = trunc i32 %3807 to i8
  %3809 = and i8 %3808, 1
  %3810 = xor i8 %3809, 1
  store i8 %3810, i8* %13, align 1
  %3811 = xor i64 %3800, add (i64 ptrtoint (%G__0x725610_type* @G__0x725610 to i64), i64 1024)
  %3812 = lshr i64 %3811, 4
  %3813 = trunc i64 %3812 to i8
  %3814 = and i8 %3813, 1
  store i8 %3814, i8* %14, align 1
  %3815 = icmp eq i64 %3800, 0
  %3816 = zext i1 %3815 to i8
  store i8 %3816, i8* %15, align 1
  %3817 = lshr i64 %3800, 63
  %3818 = trunc i64 %3817 to i8
  store i8 %3818, i8* %16, align 1
  %3819 = lshr i64 %3798, 57
  %3820 = and i64 %3819, 1
  %3821 = xor i64 %3817, lshr (i64 add (i64 ptrtoint (%G__0x725610_type* @G__0x725610 to i64), i64 1024), i64 63)
  %3822 = xor i64 %3817, %3820
  %3823 = add nuw nsw i64 %3821, %3822
  %3824 = icmp eq i64 %3823, 2
  %3825 = zext i1 %3824 to i8
  store i8 %3825, i8* %17, align 1
  %3826 = add i64 %3788, -28
  %3827 = add i64 %3781, 37
  store i64 %3827, i64* %3, align 8
  %3828 = inttoptr i64 %3826 to i32*
  %3829 = load i32, i32* %3828, align 4
  %3830 = sext i32 %3829 to i64
  store i64 %3830, i64* %RDX.i1776, align 8
  %3831 = shl nsw i64 %3830, 2
  %3832 = add i64 %3800, %3831
  %3833 = add i64 %3781, 40
  store i64 %3833, i64* %3, align 8
  %3834 = inttoptr i64 %3832 to i32*
  %3835 = load i32, i32* %3834, align 4
  %3836 = add i32 %3835, %3792
  %3837 = zext i32 %3836 to i64
  store i64 %3837, i64* %RCX.i1734.pre-phi, align 8
  %3838 = icmp ult i32 %3836, %3792
  %3839 = icmp ult i32 %3836, %3835
  %3840 = or i1 %3838, %3839
  %3841 = zext i1 %3840 to i8
  store i8 %3841, i8* %12, align 1
  %3842 = and i32 %3836, 255
  %3843 = tail call i32 @llvm.ctpop.i32(i32 %3842)
  %3844 = trunc i32 %3843 to i8
  %3845 = and i8 %3844, 1
  %3846 = xor i8 %3845, 1
  store i8 %3846, i8* %13, align 1
  %3847 = xor i32 %3835, %3792
  %3848 = xor i32 %3847, %3836
  %3849 = lshr i32 %3848, 4
  %3850 = trunc i32 %3849 to i8
  %3851 = and i8 %3850, 1
  store i8 %3851, i8* %14, align 1
  %3852 = icmp eq i32 %3836, 0
  %3853 = zext i1 %3852 to i8
  store i8 %3853, i8* %15, align 1
  %3854 = lshr i32 %3836, 31
  %3855 = trunc i32 %3854 to i8
  store i8 %3855, i8* %16, align 1
  %3856 = lshr i32 %3792, 31
  %3857 = lshr i32 %3835, 31
  %3858 = xor i32 %3854, %3856
  %3859 = xor i32 %3854, %3857
  %3860 = add nuw nsw i32 %3858, %3859
  %3861 = icmp eq i32 %3860, 2
  %3862 = zext i1 %3861 to i8
  store i8 %3862, i8* %17, align 1
  %3863 = load i64, i64* %RBP.i, align 8
  %3864 = add i64 %3863, -284
  %3865 = add i64 %3781, 46
  store i64 %3865, i64* %3, align 8
  %3866 = inttoptr i64 %3864 to i32*
  store i32 %3836, i32* %3866, align 4
  %.pre123 = load i64, i64* %3, align 8
  br label %block_.L_441fc1

block_.L_441fc1:                                  ; preds = %block_.L_441f93, %block_441f86
  %3867 = phi i64 [ %.pre123, %block_.L_441f93 ], [ %3787, %block_441f86 ]
  %3868 = load i64, i64* %RBP.i, align 8
  %3869 = add i64 %3868, -284
  %3870 = add i64 %3867, 6
  store i64 %3870, i64* %3, align 8
  %3871 = inttoptr i64 %3869 to i32*
  %3872 = load i32, i32* %3871, align 4
  %3873 = zext i32 %3872 to i64
  store i64 %3873, i64* %RAX.i1789, align 8
  %3874 = add i64 %3868, -280
  %3875 = add i64 %3867, 12
  store i64 %3875, i64* %3, align 8
  %3876 = inttoptr i64 %3874 to i32*
  %3877 = load i32, i32* %3876, align 4
  %3878 = zext i32 %3877 to i64
  store i64 %3878, i64* %RCX.i1734.pre-phi, align 8
  %3879 = sub i32 %3877, %3872
  %3880 = icmp ult i32 %3877, %3872
  %3881 = zext i1 %3880 to i8
  store i8 %3881, i8* %12, align 1
  %3882 = and i32 %3879, 255
  %3883 = tail call i32 @llvm.ctpop.i32(i32 %3882)
  %3884 = trunc i32 %3883 to i8
  %3885 = and i8 %3884, 1
  %3886 = xor i8 %3885, 1
  store i8 %3886, i8* %13, align 1
  %3887 = xor i32 %3872, %3877
  %3888 = xor i32 %3887, %3879
  %3889 = lshr i32 %3888, 4
  %3890 = trunc i32 %3889 to i8
  %3891 = and i8 %3890, 1
  store i8 %3891, i8* %14, align 1
  %3892 = icmp eq i32 %3879, 0
  %3893 = zext i1 %3892 to i8
  store i8 %3893, i8* %15, align 1
  %3894 = lshr i32 %3879, 31
  %3895 = trunc i32 %3894 to i8
  store i8 %3895, i8* %16, align 1
  %3896 = lshr i32 %3877, 31
  %3897 = lshr i32 %3872, 31
  %3898 = xor i32 %3897, %3896
  %3899 = xor i32 %3894, %3896
  %3900 = add nuw nsw i32 %3899, %3898
  %3901 = icmp eq i32 %3900, 2
  %3902 = zext i1 %3901 to i8
  store i8 %3902, i8* %17, align 1
  %3903 = icmp ne i8 %3895, 0
  %3904 = xor i1 %3903, %3901
  %.v163 = select i1 %3904, i64 20, i64 45
  %3905 = add i64 %3867, %.v163
  store i64 %3905, i64* %3, align 8
  br i1 %3904, label %block_441fd5, label %block_.L_441fee

block_441fd5:                                     ; preds = %block_.L_441fc1
  %3906 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*), align 8
  store i64 %3906, i64* %RAX.i1789, align 8
  %3907 = add i64 %3906, 72688
  %3908 = add i64 %3905, 14
  store i64 %3908, i64* %3, align 8
  %3909 = inttoptr i64 %3907 to i32*
  %3910 = load i32, i32* %3909, align 4
  %3911 = zext i32 %3910 to i64
  store i64 %3911, i64* %RCX.i1734.pre-phi, align 8
  %3912 = add i64 %3868, -288
  %3913 = add i64 %3905, 20
  store i64 %3913, i64* %3, align 8
  %3914 = inttoptr i64 %3912 to i32*
  store i32 %3910, i32* %3914, align 4
  %3915 = load i64, i64* %3, align 8
  %3916 = add i64 %3915, 127
  store i64 %3916, i64* %3, align 8
  br label %block_.L_442068

block_.L_441fee:                                  ; preds = %block_.L_441fc1
  store i64 0, i64* %RAX.i1789, align 8
  store i64 add (i64 ptrtoint (%G__0x725610_type* @G__0x725610 to i64), i64 1024), i64* %RCX.i1734.pre-phi, align 8
  store i8 zext (i1 or (i1 icmp ult (i64 add (i64 ptrtoint (%G__0x725610_type* @G__0x725610 to i64), i64 1024), i64 ptrtoint (%G__0x725610_type* @G__0x725610 to i64)), i1 icmp ult (i64 add (i64 ptrtoint (%G__0x725610_type* @G__0x725610 to i64), i64 1024), i64 1024)) to i8), i8* %12, align 1
  store i8 %3238, i8* %13, align 1
  store i8 and (i8 trunc (i64 lshr (i64 xor (i64 xor (i64 ptrtoint (%G__0x725610_type* @G__0x725610 to i64), i64 1024), i64 add (i64 ptrtoint (%G__0x725610_type* @G__0x725610 to i64), i64 1024)), i64 4) to i8), i8 1), i8* %14, align 1
  store i8 zext (i1 icmp eq (i64 add (i64 ptrtoint (%G__0x725610_type* @G__0x725610 to i64), i64 1024), i64 0) to i8), i8* %15, align 1
  store i8 trunc (i64 lshr (i64 add (i64 ptrtoint (%G__0x725610_type* @G__0x725610 to i64), i64 1024), i64 63) to i8), i8* %16, align 1
  store i8 zext (i1 icmp eq (i64 add (i64 xor (i64 lshr (i64 add (i64 ptrtoint (%G__0x725610_type* @G__0x725610 to i64), i64 1024), i64 63), i64 lshr (i64 ptrtoint (%G__0x725610_type* @G__0x725610 to i64), i64 63)), i64 lshr (i64 add (i64 ptrtoint (%G__0x725610_type* @G__0x725610 to i64), i64 1024), i64 63)), i64 2) to i8), i8* %17, align 1
  %3917 = add i64 %3868, -268
  %3918 = add i64 %3905, 25
  store i64 %3918, i64* %3, align 8
  %3919 = inttoptr i64 %3917 to i32*
  %3920 = load i32, i32* %3919, align 4
  %3921 = zext i32 %3920 to i64
  store i64 %3921, i64* %RDX.i1776, align 8
  %3922 = add i64 %3868, -32
  %3923 = add i64 %3905, 29
  store i64 %3923, i64* %3, align 8
  %3924 = inttoptr i64 %3922 to i32*
  %3925 = load i32, i32* %3924, align 4
  %3926 = sext i32 %3925 to i64
  %3927 = shl nsw i64 %3926, 6
  store i64 %3927, i64* %RSI.i1729, align 8
  %3928 = add i64 %3927, add (i64 ptrtoint (%G__0x725610_type* @G__0x725610 to i64), i64 1024)
  store i64 %3928, i64* %RCX.i1734.pre-phi, align 8
  %3929 = icmp ult i64 %3928, add (i64 ptrtoint (%G__0x725610_type* @G__0x725610 to i64), i64 1024)
  %3930 = icmp ult i64 %3928, %3927
  %3931 = or i1 %3929, %3930
  %3932 = zext i1 %3931 to i8
  store i8 %3932, i8* %12, align 1
  %3933 = trunc i64 %3928 to i32
  %3934 = and i32 %3933, 248
  %3935 = tail call i32 @llvm.ctpop.i32(i32 %3934)
  %3936 = trunc i32 %3935 to i8
  %3937 = and i8 %3936, 1
  %3938 = xor i8 %3937, 1
  store i8 %3938, i8* %13, align 1
  %3939 = xor i64 %3928, add (i64 ptrtoint (%G__0x725610_type* @G__0x725610 to i64), i64 1024)
  %3940 = lshr i64 %3939, 4
  %3941 = trunc i64 %3940 to i8
  %3942 = and i8 %3941, 1
  store i8 %3942, i8* %14, align 1
  %3943 = icmp eq i64 %3928, 0
  %3944 = zext i1 %3943 to i8
  store i8 %3944, i8* %15, align 1
  %3945 = lshr i64 %3928, 63
  %3946 = trunc i64 %3945 to i8
  store i8 %3946, i8* %16, align 1
  %3947 = lshr i64 %3926, 57
  %3948 = and i64 %3947, 1
  %3949 = xor i64 %3945, lshr (i64 add (i64 ptrtoint (%G__0x725610_type* @G__0x725610 to i64), i64 1024), i64 63)
  %3950 = xor i64 %3945, %3948
  %3951 = add nuw nsw i64 %3949, %3950
  %3952 = icmp eq i64 %3951, 2
  %3953 = zext i1 %3952 to i8
  store i8 %3953, i8* %17, align 1
  %3954 = load i64, i64* %RBP.i, align 8
  %3955 = add i64 %3954, -28
  %3956 = add i64 %3905, 40
  store i64 %3956, i64* %3, align 8
  %3957 = inttoptr i64 %3955 to i32*
  %3958 = load i32, i32* %3957, align 4
  %3959 = sext i32 %3958 to i64
  store i64 %3959, i64* %RSI.i1729, align 8
  %3960 = shl nsw i64 %3959, 2
  %3961 = add i64 %3928, %3960
  %3962 = add i64 %3905, 43
  store i64 %3962, i64* %3, align 8
  %3963 = inttoptr i64 %3961 to i32*
  %3964 = load i32, i32* %3963, align 4
  %3965 = add i32 %3964, %3920
  %3966 = zext i32 %3965 to i64
  store i64 %3966, i64* %RDX.i1776, align 8
  %3967 = lshr i32 %3965, 31
  %3968 = load i32, i32* %EAX.i1788, align 4
  %3969 = sub i32 %3968, %3965
  %3970 = icmp ult i32 %3968, %3965
  %3971 = zext i1 %3970 to i8
  store i8 %3971, i8* %12, align 1
  %3972 = and i32 %3969, 255
  %3973 = tail call i32 @llvm.ctpop.i32(i32 %3972)
  %3974 = trunc i32 %3973 to i8
  %3975 = and i8 %3974, 1
  %3976 = xor i8 %3975, 1
  store i8 %3976, i8* %13, align 1
  %3977 = xor i32 %3965, %3968
  %3978 = xor i32 %3977, %3969
  %3979 = lshr i32 %3978, 4
  %3980 = trunc i32 %3979 to i8
  %3981 = and i8 %3980, 1
  store i8 %3981, i8* %14, align 1
  %3982 = icmp eq i32 %3969, 0
  %3983 = zext i1 %3982 to i8
  store i8 %3983, i8* %15, align 1
  %3984 = lshr i32 %3969, 31
  %3985 = trunc i32 %3984 to i8
  store i8 %3985, i8* %16, align 1
  %3986 = lshr i32 %3968, 31
  %3987 = xor i32 %3967, %3986
  %3988 = xor i32 %3984, %3986
  %3989 = add nuw nsw i32 %3988, %3987
  %3990 = icmp eq i32 %3989, 2
  %3991 = zext i1 %3990 to i8
  store i8 %3991, i8* %17, align 1
  %3992 = icmp ne i8 %3985, 0
  %3993 = xor i1 %3992, %3990
  %3994 = or i1 %3982, %3993
  %.v164 = select i1 %3994, i64 64, i64 51
  %3995 = add i64 %3905, %.v164
  store i64 %3995, i64* %3, align 8
  br i1 %3994, label %block_.L_44202e, label %block_442021

block_442021:                                     ; preds = %block_.L_441fee
  store i64 0, i64* %RAX.i1789, align 8
  store i8 0, i8* %12, align 1
  store i8 1, i8* %13, align 1
  store i8 1, i8* %15, align 1
  store i8 0, i8* %16, align 1
  store i8 0, i8* %17, align 1
  store i8 0, i8* %14, align 1
  %3996 = add i64 %3954, -292
  %3997 = add i64 %3995, 8
  store i64 %3997, i64* %3, align 8
  %3998 = inttoptr i64 %3996 to i32*
  store i32 0, i32* %3998, align 4
  %3999 = load i64, i64* %3, align 8
  %4000 = add i64 %3999, 51
  store i64 %4000, i64* %3, align 8
  br label %block_.L_44205c

block_.L_44202e:                                  ; preds = %block_.L_441fee
  store i64 add (i64 ptrtoint (%G__0x725610_type* @G__0x725610 to i64), i64 1024), i64* %RAX.i1789, align 8
  store i8 zext (i1 or (i1 icmp ult (i64 add (i64 ptrtoint (%G__0x725610_type* @G__0x725610 to i64), i64 1024), i64 ptrtoint (%G__0x725610_type* @G__0x725610 to i64)), i1 icmp ult (i64 add (i64 ptrtoint (%G__0x725610_type* @G__0x725610 to i64), i64 1024), i64 1024)) to i8), i8* %12, align 1
  store i8 %3238, i8* %13, align 1
  store i8 and (i8 trunc (i64 lshr (i64 xor (i64 xor (i64 ptrtoint (%G__0x725610_type* @G__0x725610 to i64), i64 1024), i64 add (i64 ptrtoint (%G__0x725610_type* @G__0x725610 to i64), i64 1024)), i64 4) to i8), i8 1), i8* %14, align 1
  store i8 zext (i1 icmp eq (i64 add (i64 ptrtoint (%G__0x725610_type* @G__0x725610 to i64), i64 1024), i64 0) to i8), i8* %15, align 1
  store i8 trunc (i64 lshr (i64 add (i64 ptrtoint (%G__0x725610_type* @G__0x725610 to i64), i64 1024), i64 63) to i8), i8* %16, align 1
  store i8 zext (i1 icmp eq (i64 add (i64 xor (i64 lshr (i64 add (i64 ptrtoint (%G__0x725610_type* @G__0x725610 to i64), i64 1024), i64 63), i64 lshr (i64 ptrtoint (%G__0x725610_type* @G__0x725610 to i64), i64 63)), i64 lshr (i64 add (i64 ptrtoint (%G__0x725610_type* @G__0x725610 to i64), i64 1024), i64 63)), i64 2) to i8), i8* %17, align 1
  %4001 = add i64 %3954, -268
  %4002 = add i64 %3995, 22
  store i64 %4002, i64* %3, align 8
  %4003 = inttoptr i64 %4001 to i32*
  %4004 = load i32, i32* %4003, align 4
  %4005 = zext i32 %4004 to i64
  store i64 %4005, i64* %RCX.i1734.pre-phi, align 8
  %4006 = add i64 %3954, -32
  %4007 = add i64 %3995, 26
  store i64 %4007, i64* %3, align 8
  %4008 = inttoptr i64 %4006 to i32*
  %4009 = load i32, i32* %4008, align 4
  %4010 = sext i32 %4009 to i64
  %4011 = shl nsw i64 %4010, 6
  store i64 %4011, i64* %RDX.i1776, align 8
  %4012 = add i64 %4011, add (i64 ptrtoint (%G__0x725610_type* @G__0x725610 to i64), i64 1024)
  store i64 %4012, i64* %RAX.i1789, align 8
  %4013 = icmp ult i64 %4012, add (i64 ptrtoint (%G__0x725610_type* @G__0x725610 to i64), i64 1024)
  %4014 = icmp ult i64 %4012, %4011
  %4015 = or i1 %4013, %4014
  %4016 = zext i1 %4015 to i8
  store i8 %4016, i8* %12, align 1
  %4017 = trunc i64 %4012 to i32
  %4018 = and i32 %4017, 248
  %4019 = tail call i32 @llvm.ctpop.i32(i32 %4018)
  %4020 = trunc i32 %4019 to i8
  %4021 = and i8 %4020, 1
  %4022 = xor i8 %4021, 1
  store i8 %4022, i8* %13, align 1
  %4023 = xor i64 %4012, add (i64 ptrtoint (%G__0x725610_type* @G__0x725610 to i64), i64 1024)
  %4024 = lshr i64 %4023, 4
  %4025 = trunc i64 %4024 to i8
  %4026 = and i8 %4025, 1
  store i8 %4026, i8* %14, align 1
  %4027 = icmp eq i64 %4012, 0
  %4028 = zext i1 %4027 to i8
  store i8 %4028, i8* %15, align 1
  %4029 = lshr i64 %4012, 63
  %4030 = trunc i64 %4029 to i8
  store i8 %4030, i8* %16, align 1
  %4031 = lshr i64 %4010, 57
  %4032 = and i64 %4031, 1
  %4033 = xor i64 %4029, lshr (i64 add (i64 ptrtoint (%G__0x725610_type* @G__0x725610 to i64), i64 1024), i64 63)
  %4034 = xor i64 %4029, %4032
  %4035 = add nuw nsw i64 %4033, %4034
  %4036 = icmp eq i64 %4035, 2
  %4037 = zext i1 %4036 to i8
  store i8 %4037, i8* %17, align 1
  %4038 = add i64 %3995, 37
  store i64 %4038, i64* %3, align 8
  %4039 = load i32, i32* %3957, align 4
  %4040 = sext i32 %4039 to i64
  store i64 %4040, i64* %RDX.i1776, align 8
  %4041 = shl nsw i64 %4040, 2
  %4042 = add i64 %4012, %4041
  %4043 = add i64 %3995, 40
  store i64 %4043, i64* %3, align 8
  %4044 = inttoptr i64 %4042 to i32*
  %4045 = load i32, i32* %4044, align 4
  %4046 = add i32 %4045, %4004
  %4047 = zext i32 %4046 to i64
  store i64 %4047, i64* %RCX.i1734.pre-phi, align 8
  %4048 = icmp ult i32 %4046, %4004
  %4049 = icmp ult i32 %4046, %4045
  %4050 = or i1 %4048, %4049
  %4051 = zext i1 %4050 to i8
  store i8 %4051, i8* %12, align 1
  %4052 = and i32 %4046, 255
  %4053 = tail call i32 @llvm.ctpop.i32(i32 %4052)
  %4054 = trunc i32 %4053 to i8
  %4055 = and i8 %4054, 1
  %4056 = xor i8 %4055, 1
  store i8 %4056, i8* %13, align 1
  %4057 = xor i32 %4045, %4004
  %4058 = xor i32 %4057, %4046
  %4059 = lshr i32 %4058, 4
  %4060 = trunc i32 %4059 to i8
  %4061 = and i8 %4060, 1
  store i8 %4061, i8* %14, align 1
  %4062 = icmp eq i32 %4046, 0
  %4063 = zext i1 %4062 to i8
  store i8 %4063, i8* %15, align 1
  %4064 = lshr i32 %4046, 31
  %4065 = trunc i32 %4064 to i8
  store i8 %4065, i8* %16, align 1
  %4066 = lshr i32 %4004, 31
  %4067 = lshr i32 %4045, 31
  %4068 = xor i32 %4064, %4066
  %4069 = xor i32 %4064, %4067
  %4070 = add nuw nsw i32 %4068, %4069
  %4071 = icmp eq i32 %4070, 2
  %4072 = zext i1 %4071 to i8
  store i8 %4072, i8* %17, align 1
  %4073 = load i64, i64* %RBP.i, align 8
  %4074 = add i64 %4073, -292
  %4075 = add i64 %3995, 46
  store i64 %4075, i64* %3, align 8
  %4076 = inttoptr i64 %4074 to i32*
  store i32 %4046, i32* %4076, align 4
  %.pre124 = load i64, i64* %3, align 8
  br label %block_.L_44205c

block_.L_44205c:                                  ; preds = %block_.L_44202e, %block_442021
  %4077 = phi i64 [ %.pre124, %block_.L_44202e ], [ %4000, %block_442021 ]
  %4078 = load i64, i64* %RBP.i, align 8
  %4079 = add i64 %4078, -292
  %4080 = add i64 %4077, 6
  store i64 %4080, i64* %3, align 8
  %4081 = inttoptr i64 %4079 to i32*
  %4082 = load i32, i32* %4081, align 4
  %4083 = zext i32 %4082 to i64
  store i64 %4083, i64* %RAX.i1789, align 8
  %4084 = add i64 %4078, -288
  %4085 = add i64 %4077, 12
  store i64 %4085, i64* %3, align 8
  %4086 = inttoptr i64 %4084 to i32*
  store i32 %4082, i32* %4086, align 4
  %.pre125 = load i64, i64* %3, align 8
  br label %block_.L_442068

block_.L_442068:                                  ; preds = %block_.L_44205c, %block_441fd5
  %4087 = phi i64 [ %.pre125, %block_.L_44205c ], [ %3916, %block_441fd5 ]
  %4088 = load i64, i64* %RBP.i, align 8
  %4089 = add i64 %4088, -288
  %4090 = add i64 %4087, 6
  store i64 %4090, i64* %3, align 8
  %4091 = inttoptr i64 %4089 to i32*
  %4092 = load i32, i32* %4091, align 4
  %4093 = zext i32 %4092 to i64
  store i64 %4093, i64* %RAX.i1789, align 8
  store i64 0, i64* %RCX.i1734.pre-phi, align 8
  store i8 0, i8* %12, align 1
  store i8 1, i8* %13, align 1
  store i8 1, i8* %15, align 1
  store i8 0, i8* %16, align 1
  store i8 0, i8* %17, align 1
  store i8 0, i8* %14, align 1
  store i64 ptrtoint (%G__0x725610_type* @G__0x725610 to i64), i64* %RDX.i1776, align 8
  %4094 = trunc i32 %4092 to i16
  store i16 %4094, i16* %SI.i426, align 2
  %4095 = load i64, i64* bitcast (%G_0x70fcf0_type* @G_0x70fcf0 to i64*), align 8
  store i64 %4095, i64* %RDI.i1782, align 8
  %4096 = add i64 %4095, 6464
  %4097 = add i64 %4087, 36
  store i64 %4097, i64* %3, align 8
  %4098 = inttoptr i64 %4096 to i64*
  %4099 = load i64, i64* %4098, align 8
  store i64 %4099, i64* %RDI.i1782, align 8
  %4100 = add i64 %4087, 39
  store i64 %4100, i64* %3, align 8
  %4101 = inttoptr i64 %4099 to i64*
  %4102 = load i64, i64* %4101, align 8
  store i64 %4102, i64* %RDI.i1782, align 8
  %4103 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*), align 8
  store i64 %4103, i64* %R8.i1720, align 8
  %4104 = add i64 %4103, 156
  %4105 = add i64 %4087, 54
  store i64 %4105, i64* %3, align 8
  %4106 = inttoptr i64 %4104 to i32*
  %4107 = load i32, i32* %4106, align 4
  %4108 = zext i32 %4107 to i64
  store i64 %4108, i64* %RAX.i1789, align 8
  %4109 = add i64 %4088, -28
  %4110 = add i64 %4087, 57
  store i64 %4110, i64* %3, align 8
  %4111 = inttoptr i64 %4109 to i32*
  %4112 = load i32, i32* %4111, align 4
  %4113 = add i32 %4112, %4107
  %4114 = zext i32 %4113 to i64
  store i64 %4114, i64* %RAX.i1789, align 8
  %4115 = icmp ult i32 %4113, %4107
  %4116 = icmp ult i32 %4113, %4112
  %4117 = or i1 %4115, %4116
  %4118 = zext i1 %4117 to i8
  store i8 %4118, i8* %12, align 1
  %4119 = and i32 %4113, 255
  %4120 = tail call i32 @llvm.ctpop.i32(i32 %4119)
  %4121 = trunc i32 %4120 to i8
  %4122 = and i8 %4121, 1
  %4123 = xor i8 %4122, 1
  store i8 %4123, i8* %13, align 1
  %4124 = xor i32 %4112, %4107
  %4125 = xor i32 %4124, %4113
  %4126 = lshr i32 %4125, 4
  %4127 = trunc i32 %4126 to i8
  %4128 = and i8 %4127, 1
  store i8 %4128, i8* %14, align 1
  %4129 = icmp eq i32 %4113, 0
  %4130 = zext i1 %4129 to i8
  store i8 %4130, i8* %15, align 1
  %4131 = lshr i32 %4113, 31
  %4132 = trunc i32 %4131 to i8
  store i8 %4132, i8* %16, align 1
  %4133 = lshr i32 %4107, 31
  %4134 = lshr i32 %4112, 31
  %4135 = xor i32 %4131, %4133
  %4136 = xor i32 %4131, %4134
  %4137 = add nuw nsw i32 %4135, %4136
  %4138 = icmp eq i32 %4137, 2
  %4139 = zext i1 %4138 to i8
  store i8 %4139, i8* %17, align 1
  %4140 = sext i32 %4113 to i64
  store i64 %4140, i64* %R8.i1720, align 8
  %4141 = shl nsw i64 %4140, 3
  %4142 = add i64 %4102, %4141
  %4143 = add i64 %4087, 64
  store i64 %4143, i64* %3, align 8
  %4144 = inttoptr i64 %4142 to i64*
  %4145 = load i64, i64* %4144, align 8
  store i64 %4145, i64* %RDI.i1782, align 8
  store i64 %4103, i64* %R8.i1720, align 8
  %4146 = add i64 %4103, 152
  %4147 = add i64 %4087, 79
  store i64 %4147, i64* %3, align 8
  %4148 = inttoptr i64 %4146 to i32*
  %4149 = load i32, i32* %4148, align 4
  %4150 = zext i32 %4149 to i64
  store i64 %4150, i64* %RAX.i1789, align 8
  %4151 = load i64, i64* %RBP.i, align 8
  %4152 = add i64 %4151, -32
  %4153 = add i64 %4087, 82
  store i64 %4153, i64* %3, align 8
  %4154 = inttoptr i64 %4152 to i32*
  %4155 = load i32, i32* %4154, align 4
  %4156 = add i32 %4155, %4149
  %4157 = zext i32 %4156 to i64
  store i64 %4157, i64* %RAX.i1789, align 8
  %4158 = icmp ult i32 %4156, %4149
  %4159 = icmp ult i32 %4156, %4155
  %4160 = or i1 %4158, %4159
  %4161 = zext i1 %4160 to i8
  store i8 %4161, i8* %12, align 1
  %4162 = and i32 %4156, 255
  %4163 = tail call i32 @llvm.ctpop.i32(i32 %4162)
  %4164 = trunc i32 %4163 to i8
  %4165 = and i8 %4164, 1
  %4166 = xor i8 %4165, 1
  store i8 %4166, i8* %13, align 1
  %4167 = xor i32 %4155, %4149
  %4168 = xor i32 %4167, %4156
  %4169 = lshr i32 %4168, 4
  %4170 = trunc i32 %4169 to i8
  %4171 = and i8 %4170, 1
  store i8 %4171, i8* %14, align 1
  %4172 = icmp eq i32 %4156, 0
  %4173 = zext i1 %4172 to i8
  store i8 %4173, i8* %15, align 1
  %4174 = lshr i32 %4156, 31
  %4175 = trunc i32 %4174 to i8
  store i8 %4175, i8* %16, align 1
  %4176 = lshr i32 %4149, 31
  %4177 = lshr i32 %4155, 31
  %4178 = xor i32 %4174, %4176
  %4179 = xor i32 %4174, %4177
  %4180 = add nuw nsw i32 %4178, %4179
  %4181 = icmp eq i32 %4180, 2
  %4182 = zext i1 %4181 to i8
  store i8 %4182, i8* %17, align 1
  %4183 = sext i32 %4156 to i64
  store i64 %4183, i64* %R8.i1720, align 8
  %4184 = shl nsw i64 %4183, 1
  %4185 = add i64 %4145, %4184
  %4186 = load i16, i16* %SI.i426, align 2
  %4187 = add i64 %4087, 90
  store i64 %4187, i64* %3, align 8
  %4188 = inttoptr i64 %4185 to i16*
  store i16 %4186, i16* %4188, align 2
  %4189 = load i64, i64* %3, align 8
  %4190 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*), align 8
  store i64 %4190, i64* %RDI.i1782, align 8
  %4191 = add i64 %4190, 72684
  %4192 = add i64 %4189, 14
  store i64 %4192, i64* %3, align 8
  %4193 = inttoptr i64 %4191 to i32*
  %4194 = load i32, i32* %4193, align 4
  %4195 = zext i32 %4194 to i64
  store i64 %4195, i64* %RAX.i1789, align 8
  %4196 = load i64, i64* %RBP.i, align 8
  %4197 = add i64 %4196, -264
  %4198 = add i64 %4189, 21
  store i64 %4198, i64* %3, align 8
  %4199 = inttoptr i64 %4197 to i32*
  %4200 = load i32, i32* %4199, align 4
  %4201 = zext i32 %4200 to i64
  store i64 %4201, i64* %3240, align 8
  %4202 = add i64 %4196, -32
  %4203 = add i64 %4189, 25
  store i64 %4203, i64* %3, align 8
  %4204 = inttoptr i64 %4202 to i32*
  %4205 = load i32, i32* %4204, align 4
  %4206 = sext i32 %4205 to i64
  %4207 = shl nsw i64 %4206, 6
  store i64 %4207, i64* %RDI.i1782, align 8
  %4208 = load i64, i64* %RDX.i1776, align 8
  %4209 = add i64 %4207, %4208
  store i64 %4209, i64* %RDX.i1776, align 8
  %4210 = icmp ult i64 %4209, %4208
  %4211 = icmp ult i64 %4209, %4207
  %4212 = or i1 %4210, %4211
  %4213 = zext i1 %4212 to i8
  store i8 %4213, i8* %12, align 1
  %4214 = trunc i64 %4209 to i32
  %4215 = and i32 %4214, 255
  %4216 = tail call i32 @llvm.ctpop.i32(i32 %4215)
  %4217 = trunc i32 %4216 to i8
  %4218 = and i8 %4217, 1
  %4219 = xor i8 %4218, 1
  store i8 %4219, i8* %13, align 1
  %4220 = xor i64 %4208, %4209
  %4221 = lshr i64 %4220, 4
  %4222 = trunc i64 %4221 to i8
  %4223 = and i8 %4222, 1
  store i8 %4223, i8* %14, align 1
  %4224 = icmp eq i64 %4209, 0
  %4225 = zext i1 %4224 to i8
  store i8 %4225, i8* %15, align 1
  %4226 = lshr i64 %4209, 63
  %4227 = trunc i64 %4226 to i8
  store i8 %4227, i8* %16, align 1
  %4228 = lshr i64 %4208, 63
  %4229 = lshr i64 %4206, 57
  %4230 = and i64 %4229, 1
  %4231 = xor i64 %4226, %4228
  %4232 = xor i64 %4226, %4230
  %4233 = add nuw nsw i64 %4231, %4232
  %4234 = icmp eq i64 %4233, 2
  %4235 = zext i1 %4234 to i8
  store i8 %4235, i8* %17, align 1
  %4236 = add i64 %4196, -28
  %4237 = add i64 %4189, 36
  store i64 %4237, i64* %3, align 8
  %4238 = inttoptr i64 %4236 to i32*
  %4239 = load i32, i32* %4238, align 4
  %4240 = sext i32 %4239 to i64
  store i64 %4240, i64* %RDI.i1782, align 8
  %4241 = shl nsw i64 %4240, 2
  %4242 = add i64 %4209, %4241
  %4243 = add i64 %4189, 40
  store i64 %4243, i64* %3, align 8
  %4244 = inttoptr i64 %4242 to i32*
  %4245 = load i32, i32* %4244, align 4
  %4246 = add i32 %4245, %4200
  %4247 = zext i32 %4246 to i64
  store i64 %4247, i64* %3240, align 8
  %4248 = lshr i32 %4246, 31
  %4249 = load i32, i32* %ECX.i723, align 4
  %4250 = sub i32 %4249, %4246
  %4251 = icmp ult i32 %4249, %4246
  %4252 = zext i1 %4251 to i8
  store i8 %4252, i8* %12, align 1
  %4253 = and i32 %4250, 255
  %4254 = tail call i32 @llvm.ctpop.i32(i32 %4253)
  %4255 = trunc i32 %4254 to i8
  %4256 = and i8 %4255, 1
  %4257 = xor i8 %4256, 1
  store i8 %4257, i8* %13, align 1
  %4258 = xor i32 %4246, %4249
  %4259 = xor i32 %4258, %4250
  %4260 = lshr i32 %4259, 4
  %4261 = trunc i32 %4260 to i8
  %4262 = and i8 %4261, 1
  store i8 %4262, i8* %14, align 1
  %4263 = icmp eq i32 %4250, 0
  %4264 = zext i1 %4263 to i8
  store i8 %4264, i8* %15, align 1
  %4265 = lshr i32 %4250, 31
  %4266 = trunc i32 %4265 to i8
  store i8 %4266, i8* %16, align 1
  %4267 = lshr i32 %4249, 31
  %4268 = xor i32 %4248, %4267
  %4269 = xor i32 %4265, %4267
  %4270 = add nuw nsw i32 %4269, %4268
  %4271 = icmp eq i32 %4270, 2
  %4272 = zext i1 %4271 to i8
  store i8 %4272, i8* %17, align 1
  %4273 = load i64, i64* %RBP.i, align 8
  %4274 = add i64 %4273, -296
  %4275 = load i32, i32* %EAX.i1788, align 4
  %4276 = add i64 %4189, 49
  store i64 %4276, i64* %3, align 8
  %4277 = inttoptr i64 %4274 to i32*
  store i32 %4275, i32* %4277, align 4
  %4278 = load i64, i64* %3, align 8
  %4279 = load i8, i8* %15, align 1
  %4280 = icmp ne i8 %4279, 0
  %4281 = load i8, i8* %16, align 1
  %4282 = icmp ne i8 %4281, 0
  %4283 = load i8, i8* %17, align 1
  %4284 = icmp ne i8 %4283, 0
  %4285 = xor i1 %4282, %4284
  %4286 = or i1 %4280, %4285
  %.v224 = select i1 %4286, i64 19, i64 6
  %4287 = add i64 %4278, %.v224
  store i64 %4287, i64* %3, align 8
  br i1 %4286, label %block_.L_442106, label %block_4420f9

block_4420f9:                                     ; preds = %block_.L_442068
  store i64 0, i64* %RAX.i1789, align 8
  store i8 0, i8* %12, align 1
  store i8 1, i8* %13, align 1
  store i8 1, i8* %15, align 1
  store i8 0, i8* %16, align 1
  store i8 0, i8* %17, align 1
  store i8 0, i8* %14, align 1
  %4288 = load i64, i64* %RBP.i, align 8
  %4289 = add i64 %4288, -300
  %4290 = add i64 %4287, 8
  store i64 %4290, i64* %3, align 8
  %4291 = inttoptr i64 %4289 to i32*
  store i32 0, i32* %4291, align 4
  %4292 = load i64, i64* %3, align 8
  %4293 = add i64 %4292, 45
  store i64 %4293, i64* %3, align 8
  br label %block_.L_44212e

block_.L_442106:                                  ; preds = %block_.L_442068
  store i64 ptrtoint (%G__0x725610_type* @G__0x725610 to i64), i64* %RAX.i1789, align 8
  %4294 = load i64, i64* %RBP.i, align 8
  %4295 = add i64 %4294, -264
  %4296 = add i64 %4287, 16
  store i64 %4296, i64* %3, align 8
  %4297 = inttoptr i64 %4295 to i32*
  %4298 = load i32, i32* %4297, align 4
  %4299 = zext i32 %4298 to i64
  store i64 %4299, i64* %RCX.i1734.pre-phi, align 8
  %4300 = add i64 %4294, -32
  %4301 = add i64 %4287, 20
  store i64 %4301, i64* %3, align 8
  %4302 = inttoptr i64 %4300 to i32*
  %4303 = load i32, i32* %4302, align 4
  %4304 = sext i32 %4303 to i64
  %4305 = shl nsw i64 %4304, 6
  store i64 %4305, i64* %RDX.i1776, align 8
  %4306 = add i64 %4305, ptrtoint (%G__0x725610_type* @G__0x725610 to i64)
  store i64 %4306, i64* %RAX.i1789, align 8
  %4307 = icmp ult i64 %4306, ptrtoint (%G__0x725610_type* @G__0x725610 to i64)
  %4308 = icmp ult i64 %4306, %4305
  %4309 = or i1 %4307, %4308
  %4310 = zext i1 %4309 to i8
  store i8 %4310, i8* %12, align 1
  %4311 = trunc i64 %4306 to i32
  %4312 = and i32 %4311, 248
  %4313 = tail call i32 @llvm.ctpop.i32(i32 %4312)
  %4314 = trunc i32 %4313 to i8
  %4315 = and i8 %4314, 1
  %4316 = xor i8 %4315, 1
  store i8 %4316, i8* %13, align 1
  %4317 = xor i64 %4306, ptrtoint (%G__0x725610_type* @G__0x725610 to i64)
  %4318 = lshr i64 %4317, 4
  %4319 = trunc i64 %4318 to i8
  %4320 = and i8 %4319, 1
  store i8 %4320, i8* %14, align 1
  %4321 = icmp eq i64 %4306, 0
  %4322 = zext i1 %4321 to i8
  store i8 %4322, i8* %15, align 1
  %4323 = lshr i64 %4306, 63
  %4324 = trunc i64 %4323 to i8
  store i8 %4324, i8* %16, align 1
  %4325 = lshr i64 %4304, 57
  %4326 = and i64 %4325, 1
  %4327 = xor i64 %4323, lshr (i64 ptrtoint (%G__0x725610_type* @G__0x725610 to i64), i64 63)
  %4328 = xor i64 %4323, %4326
  %4329 = add nuw nsw i64 %4327, %4328
  %4330 = icmp eq i64 %4329, 2
  %4331 = zext i1 %4330 to i8
  store i8 %4331, i8* %17, align 1
  %4332 = add i64 %4294, -28
  %4333 = add i64 %4287, 31
  store i64 %4333, i64* %3, align 8
  %4334 = inttoptr i64 %4332 to i32*
  %4335 = load i32, i32* %4334, align 4
  %4336 = sext i32 %4335 to i64
  store i64 %4336, i64* %RDX.i1776, align 8
  %4337 = shl nsw i64 %4336, 2
  %4338 = add i64 %4306, %4337
  %4339 = add i64 %4287, 34
  store i64 %4339, i64* %3, align 8
  %4340 = inttoptr i64 %4338 to i32*
  %4341 = load i32, i32* %4340, align 4
  %4342 = add i32 %4341, %4298
  %4343 = zext i32 %4342 to i64
  store i64 %4343, i64* %RCX.i1734.pre-phi, align 8
  %4344 = icmp ult i32 %4342, %4298
  %4345 = icmp ult i32 %4342, %4341
  %4346 = or i1 %4344, %4345
  %4347 = zext i1 %4346 to i8
  store i8 %4347, i8* %12, align 1
  %4348 = and i32 %4342, 255
  %4349 = tail call i32 @llvm.ctpop.i32(i32 %4348)
  %4350 = trunc i32 %4349 to i8
  %4351 = and i8 %4350, 1
  %4352 = xor i8 %4351, 1
  store i8 %4352, i8* %13, align 1
  %4353 = xor i32 %4341, %4298
  %4354 = xor i32 %4353, %4342
  %4355 = lshr i32 %4354, 4
  %4356 = trunc i32 %4355 to i8
  %4357 = and i8 %4356, 1
  store i8 %4357, i8* %14, align 1
  %4358 = icmp eq i32 %4342, 0
  %4359 = zext i1 %4358 to i8
  store i8 %4359, i8* %15, align 1
  %4360 = lshr i32 %4342, 31
  %4361 = trunc i32 %4360 to i8
  store i8 %4361, i8* %16, align 1
  %4362 = lshr i32 %4298, 31
  %4363 = lshr i32 %4341, 31
  %4364 = xor i32 %4360, %4362
  %4365 = xor i32 %4360, %4363
  %4366 = add nuw nsw i32 %4364, %4365
  %4367 = icmp eq i32 %4366, 2
  %4368 = zext i1 %4367 to i8
  store i8 %4368, i8* %17, align 1
  %4369 = load i64, i64* %RBP.i, align 8
  %4370 = add i64 %4369, -300
  %4371 = add i64 %4287, 40
  store i64 %4371, i64* %3, align 8
  %4372 = inttoptr i64 %4370 to i32*
  store i32 %4342, i32* %4372, align 4
  %.pre126 = load i64, i64* %3, align 8
  br label %block_.L_44212e

block_.L_44212e:                                  ; preds = %block_.L_442106, %block_4420f9
  %4373 = phi i64 [ %.pre126, %block_.L_442106 ], [ %4293, %block_4420f9 ]
  %4374 = load i64, i64* %RBP.i, align 8
  %4375 = add i64 %4374, -300
  %4376 = add i64 %4373, 6
  store i64 %4376, i64* %3, align 8
  %4377 = inttoptr i64 %4375 to i32*
  %4378 = load i32, i32* %4377, align 4
  %4379 = zext i32 %4378 to i64
  store i64 %4379, i64* %RAX.i1789, align 8
  %4380 = add i64 %4374, -296
  %4381 = add i64 %4373, 12
  store i64 %4381, i64* %3, align 8
  %4382 = inttoptr i64 %4380 to i32*
  %4383 = load i32, i32* %4382, align 4
  %4384 = zext i32 %4383 to i64
  store i64 %4384, i64* %RCX.i1734.pre-phi, align 8
  %4385 = sub i32 %4383, %4378
  %4386 = icmp ult i32 %4383, %4378
  %4387 = zext i1 %4386 to i8
  store i8 %4387, i8* %12, align 1
  %4388 = and i32 %4385, 255
  %4389 = tail call i32 @llvm.ctpop.i32(i32 %4388)
  %4390 = trunc i32 %4389 to i8
  %4391 = and i8 %4390, 1
  %4392 = xor i8 %4391, 1
  store i8 %4392, i8* %13, align 1
  %4393 = xor i32 %4378, %4383
  %4394 = xor i32 %4393, %4385
  %4395 = lshr i32 %4394, 4
  %4396 = trunc i32 %4395 to i8
  %4397 = and i8 %4396, 1
  store i8 %4397, i8* %14, align 1
  %4398 = icmp eq i32 %4385, 0
  %4399 = zext i1 %4398 to i8
  store i8 %4399, i8* %15, align 1
  %4400 = lshr i32 %4385, 31
  %4401 = trunc i32 %4400 to i8
  store i8 %4401, i8* %16, align 1
  %4402 = lshr i32 %4383, 31
  %4403 = lshr i32 %4378, 31
  %4404 = xor i32 %4403, %4402
  %4405 = xor i32 %4400, %4402
  %4406 = add nuw nsw i32 %4405, %4404
  %4407 = icmp eq i32 %4406, 2
  %4408 = zext i1 %4407 to i8
  store i8 %4408, i8* %17, align 1
  %4409 = icmp ne i8 %4401, 0
  %4410 = xor i1 %4409, %4407
  %.v165 = select i1 %4410, i64 20, i64 45
  %4411 = add i64 %4373, %.v165
  store i64 %4411, i64* %3, align 8
  br i1 %4410, label %block_442142, label %block_.L_44215b

block_442142:                                     ; preds = %block_.L_44212e
  %4412 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*), align 8
  store i64 %4412, i64* %RAX.i1789, align 8
  %4413 = add i64 %4412, 72684
  %4414 = add i64 %4411, 14
  store i64 %4414, i64* %3, align 8
  %4415 = inttoptr i64 %4413 to i32*
  %4416 = load i32, i32* %4415, align 4
  %4417 = zext i32 %4416 to i64
  store i64 %4417, i64* %RCX.i1734.pre-phi, align 8
  %4418 = add i64 %4374, -304
  %4419 = add i64 %4411, 20
  store i64 %4419, i64* %3, align 8
  %4420 = inttoptr i64 %4418 to i32*
  store i32 %4416, i32* %4420, align 4
  %4421 = load i64, i64* %3, align 8
  %4422 = add i64 %4421, 114
  store i64 %4422, i64* %3, align 8
  br label %block_.L_4421c8

block_.L_44215b:                                  ; preds = %block_.L_44212e
  store i64 0, i64* %RAX.i1789, align 8
  store i8 0, i8* %12, align 1
  store i8 1, i8* %13, align 1
  store i8 1, i8* %15, align 1
  store i8 0, i8* %16, align 1
  store i8 0, i8* %17, align 1
  store i8 0, i8* %14, align 1
  store i64 ptrtoint (%G__0x725610_type* @G__0x725610 to i64), i64* %RCX.i1734.pre-phi, align 8
  %4423 = add i64 %4374, -264
  %4424 = add i64 %4411, 18
  store i64 %4424, i64* %3, align 8
  %4425 = inttoptr i64 %4423 to i32*
  %4426 = load i32, i32* %4425, align 4
  %4427 = zext i32 %4426 to i64
  store i64 %4427, i64* %RDX.i1776, align 8
  %4428 = add i64 %4374, -32
  %4429 = add i64 %4411, 22
  store i64 %4429, i64* %3, align 8
  %4430 = inttoptr i64 %4428 to i32*
  %4431 = load i32, i32* %4430, align 4
  %4432 = sext i32 %4431 to i64
  %4433 = shl nsw i64 %4432, 6
  store i64 %4433, i64* %RSI.i1729, align 8
  %4434 = add i64 %4433, ptrtoint (%G__0x725610_type* @G__0x725610 to i64)
  store i64 %4434, i64* %RCX.i1734.pre-phi, align 8
  %4435 = icmp ult i64 %4434, ptrtoint (%G__0x725610_type* @G__0x725610 to i64)
  %4436 = icmp ult i64 %4434, %4433
  %4437 = or i1 %4435, %4436
  %4438 = zext i1 %4437 to i8
  store i8 %4438, i8* %12, align 1
  %4439 = trunc i64 %4434 to i32
  %4440 = and i32 %4439, 248
  %4441 = tail call i32 @llvm.ctpop.i32(i32 %4440)
  %4442 = trunc i32 %4441 to i8
  %4443 = and i8 %4442, 1
  %4444 = xor i8 %4443, 1
  store i8 %4444, i8* %13, align 1
  %4445 = xor i64 %4434, ptrtoint (%G__0x725610_type* @G__0x725610 to i64)
  %4446 = lshr i64 %4445, 4
  %4447 = trunc i64 %4446 to i8
  %4448 = and i8 %4447, 1
  store i8 %4448, i8* %14, align 1
  %4449 = icmp eq i64 %4434, 0
  %4450 = zext i1 %4449 to i8
  store i8 %4450, i8* %15, align 1
  %4451 = lshr i64 %4434, 63
  %4452 = trunc i64 %4451 to i8
  store i8 %4452, i8* %16, align 1
  %4453 = lshr i64 %4432, 57
  %4454 = and i64 %4453, 1
  %4455 = xor i64 %4451, lshr (i64 ptrtoint (%G__0x725610_type* @G__0x725610 to i64), i64 63)
  %4456 = xor i64 %4451, %4454
  %4457 = add nuw nsw i64 %4455, %4456
  %4458 = icmp eq i64 %4457, 2
  %4459 = zext i1 %4458 to i8
  store i8 %4459, i8* %17, align 1
  %4460 = add i64 %4374, -28
  %4461 = add i64 %4411, 33
  store i64 %4461, i64* %3, align 8
  %4462 = inttoptr i64 %4460 to i32*
  %4463 = load i32, i32* %4462, align 4
  %4464 = sext i32 %4463 to i64
  store i64 %4464, i64* %RSI.i1729, align 8
  %4465 = shl nsw i64 %4464, 2
  %4466 = add i64 %4434, %4465
  %4467 = add i64 %4411, 36
  store i64 %4467, i64* %3, align 8
  %4468 = inttoptr i64 %4466 to i32*
  %4469 = load i32, i32* %4468, align 4
  %4470 = add i32 %4469, %4426
  %4471 = zext i32 %4470 to i64
  store i64 %4471, i64* %RDX.i1776, align 8
  %4472 = lshr i32 %4470, 31
  %4473 = load i32, i32* %EAX.i1788, align 4
  %4474 = sub i32 %4473, %4470
  %4475 = icmp ult i32 %4473, %4470
  %4476 = zext i1 %4475 to i8
  store i8 %4476, i8* %12, align 1
  %4477 = and i32 %4474, 255
  %4478 = tail call i32 @llvm.ctpop.i32(i32 %4477)
  %4479 = trunc i32 %4478 to i8
  %4480 = and i8 %4479, 1
  %4481 = xor i8 %4480, 1
  store i8 %4481, i8* %13, align 1
  %4482 = xor i32 %4470, %4473
  %4483 = xor i32 %4482, %4474
  %4484 = lshr i32 %4483, 4
  %4485 = trunc i32 %4484 to i8
  %4486 = and i8 %4485, 1
  store i8 %4486, i8* %14, align 1
  %4487 = icmp eq i32 %4474, 0
  %4488 = zext i1 %4487 to i8
  store i8 %4488, i8* %15, align 1
  %4489 = lshr i32 %4474, 31
  %4490 = trunc i32 %4489 to i8
  store i8 %4490, i8* %16, align 1
  %4491 = lshr i32 %4473, 31
  %4492 = xor i32 %4472, %4491
  %4493 = xor i32 %4489, %4491
  %4494 = add nuw nsw i32 %4493, %4492
  %4495 = icmp eq i32 %4494, 2
  %4496 = zext i1 %4495 to i8
  store i8 %4496, i8* %17, align 1
  %4497 = icmp ne i8 %4490, 0
  %4498 = xor i1 %4497, %4495
  %4499 = or i1 %4487, %4498
  %.v166 = select i1 %4499, i64 57, i64 44
  %4500 = add i64 %4411, %.v166
  store i64 %4500, i64* %3, align 8
  br i1 %4499, label %block_.L_442194, label %block_442187

block_442187:                                     ; preds = %block_.L_44215b
  store i64 0, i64* %RAX.i1789, align 8
  store i8 0, i8* %12, align 1
  store i8 1, i8* %13, align 1
  store i8 1, i8* %15, align 1
  store i8 0, i8* %16, align 1
  store i8 0, i8* %17, align 1
  store i8 0, i8* %14, align 1
  %4501 = load i64, i64* %RBP.i, align 8
  %4502 = add i64 %4501, -308
  %4503 = add i64 %4500, 8
  store i64 %4503, i64* %3, align 8
  %4504 = inttoptr i64 %4502 to i32*
  store i32 0, i32* %4504, align 4
  %4505 = load i64, i64* %3, align 8
  %4506 = add i64 %4505, 45
  store i64 %4506, i64* %3, align 8
  br label %block_.L_4421bc

block_.L_442194:                                  ; preds = %block_.L_44215b
  store i64 ptrtoint (%G__0x725610_type* @G__0x725610 to i64), i64* %RAX.i1789, align 8
  %4507 = load i64, i64* %RBP.i, align 8
  %4508 = add i64 %4507, -264
  %4509 = add i64 %4500, 16
  store i64 %4509, i64* %3, align 8
  %4510 = inttoptr i64 %4508 to i32*
  %4511 = load i32, i32* %4510, align 4
  %4512 = zext i32 %4511 to i64
  store i64 %4512, i64* %RCX.i1734.pre-phi, align 8
  %4513 = add i64 %4507, -32
  %4514 = add i64 %4500, 20
  store i64 %4514, i64* %3, align 8
  %4515 = inttoptr i64 %4513 to i32*
  %4516 = load i32, i32* %4515, align 4
  %4517 = sext i32 %4516 to i64
  %4518 = shl nsw i64 %4517, 6
  store i64 %4518, i64* %RDX.i1776, align 8
  %4519 = add i64 %4518, ptrtoint (%G__0x725610_type* @G__0x725610 to i64)
  store i64 %4519, i64* %RAX.i1789, align 8
  %4520 = icmp ult i64 %4519, ptrtoint (%G__0x725610_type* @G__0x725610 to i64)
  %4521 = icmp ult i64 %4519, %4518
  %4522 = or i1 %4520, %4521
  %4523 = zext i1 %4522 to i8
  store i8 %4523, i8* %12, align 1
  %4524 = trunc i64 %4519 to i32
  %4525 = and i32 %4524, 248
  %4526 = tail call i32 @llvm.ctpop.i32(i32 %4525)
  %4527 = trunc i32 %4526 to i8
  %4528 = and i8 %4527, 1
  %4529 = xor i8 %4528, 1
  store i8 %4529, i8* %13, align 1
  %4530 = xor i64 %4519, ptrtoint (%G__0x725610_type* @G__0x725610 to i64)
  %4531 = lshr i64 %4530, 4
  %4532 = trunc i64 %4531 to i8
  %4533 = and i8 %4532, 1
  store i8 %4533, i8* %14, align 1
  %4534 = icmp eq i64 %4519, 0
  %4535 = zext i1 %4534 to i8
  store i8 %4535, i8* %15, align 1
  %4536 = lshr i64 %4519, 63
  %4537 = trunc i64 %4536 to i8
  store i8 %4537, i8* %16, align 1
  %4538 = lshr i64 %4517, 57
  %4539 = and i64 %4538, 1
  %4540 = xor i64 %4536, lshr (i64 ptrtoint (%G__0x725610_type* @G__0x725610 to i64), i64 63)
  %4541 = xor i64 %4536, %4539
  %4542 = add nuw nsw i64 %4540, %4541
  %4543 = icmp eq i64 %4542, 2
  %4544 = zext i1 %4543 to i8
  store i8 %4544, i8* %17, align 1
  %4545 = add i64 %4507, -28
  %4546 = add i64 %4500, 31
  store i64 %4546, i64* %3, align 8
  %4547 = inttoptr i64 %4545 to i32*
  %4548 = load i32, i32* %4547, align 4
  %4549 = sext i32 %4548 to i64
  store i64 %4549, i64* %RDX.i1776, align 8
  %4550 = shl nsw i64 %4549, 2
  %4551 = add i64 %4519, %4550
  %4552 = add i64 %4500, 34
  store i64 %4552, i64* %3, align 8
  %4553 = inttoptr i64 %4551 to i32*
  %4554 = load i32, i32* %4553, align 4
  %4555 = add i32 %4554, %4511
  %4556 = zext i32 %4555 to i64
  store i64 %4556, i64* %RCX.i1734.pre-phi, align 8
  %4557 = icmp ult i32 %4555, %4511
  %4558 = icmp ult i32 %4555, %4554
  %4559 = or i1 %4557, %4558
  %4560 = zext i1 %4559 to i8
  store i8 %4560, i8* %12, align 1
  %4561 = and i32 %4555, 255
  %4562 = tail call i32 @llvm.ctpop.i32(i32 %4561)
  %4563 = trunc i32 %4562 to i8
  %4564 = and i8 %4563, 1
  %4565 = xor i8 %4564, 1
  store i8 %4565, i8* %13, align 1
  %4566 = xor i32 %4554, %4511
  %4567 = xor i32 %4566, %4555
  %4568 = lshr i32 %4567, 4
  %4569 = trunc i32 %4568 to i8
  %4570 = and i8 %4569, 1
  store i8 %4570, i8* %14, align 1
  %4571 = icmp eq i32 %4555, 0
  %4572 = zext i1 %4571 to i8
  store i8 %4572, i8* %15, align 1
  %4573 = lshr i32 %4555, 31
  %4574 = trunc i32 %4573 to i8
  store i8 %4574, i8* %16, align 1
  %4575 = lshr i32 %4511, 31
  %4576 = lshr i32 %4554, 31
  %4577 = xor i32 %4573, %4575
  %4578 = xor i32 %4573, %4576
  %4579 = add nuw nsw i32 %4577, %4578
  %4580 = icmp eq i32 %4579, 2
  %4581 = zext i1 %4580 to i8
  store i8 %4581, i8* %17, align 1
  %4582 = load i64, i64* %RBP.i, align 8
  %4583 = add i64 %4582, -308
  %4584 = add i64 %4500, 40
  store i64 %4584, i64* %3, align 8
  %4585 = inttoptr i64 %4583 to i32*
  store i32 %4555, i32* %4585, align 4
  %.pre127 = load i64, i64* %3, align 8
  br label %block_.L_4421bc

block_.L_4421bc:                                  ; preds = %block_.L_442194, %block_442187
  %4586 = phi i64 [ %.pre127, %block_.L_442194 ], [ %4506, %block_442187 ]
  %4587 = load i64, i64* %RBP.i, align 8
  %4588 = add i64 %4587, -308
  %4589 = add i64 %4586, 6
  store i64 %4589, i64* %3, align 8
  %4590 = inttoptr i64 %4588 to i32*
  %4591 = load i32, i32* %4590, align 4
  %4592 = zext i32 %4591 to i64
  store i64 %4592, i64* %RAX.i1789, align 8
  %4593 = add i64 %4587, -304
  %4594 = add i64 %4586, 12
  store i64 %4594, i64* %3, align 8
  %4595 = inttoptr i64 %4593 to i32*
  store i32 %4591, i32* %4595, align 4
  %.pre128 = load i64, i64* %3, align 8
  br label %block_.L_4421c8

block_.L_4421c8:                                  ; preds = %block_.L_4421bc, %block_442142
  %4596 = phi i64 [ %.pre128, %block_.L_4421bc ], [ %4422, %block_442142 ]
  %4597 = load i64, i64* %RBP.i, align 8
  %4598 = add i64 %4597, -304
  %4599 = add i64 %4596, 6
  store i64 %4599, i64* %3, align 8
  %4600 = inttoptr i64 %4598 to i32*
  %4601 = load i32, i32* %4600, align 4
  %4602 = zext i32 %4601 to i64
  store i64 %4602, i64* %RAX.i1789, align 8
  store i64 0, i64* %RCX.i1734.pre-phi, align 8
  store i64 add (i64 ptrtoint (%G__0x725610_type* @G__0x725610 to i64), i64 2048), i64* %RDX.i1776, align 8
  store i8 zext (i1 or (i1 icmp ult (i64 add (i64 ptrtoint (%G__0x725610_type* @G__0x725610 to i64), i64 2048), i64 ptrtoint (%G__0x725610_type* @G__0x725610 to i64)), i1 icmp ult (i64 add (i64 ptrtoint (%G__0x725610_type* @G__0x725610 to i64), i64 2048), i64 2048)) to i8), i8* %12, align 1
  store i8 %3244, i8* %13, align 1
  store i8 and (i8 trunc (i64 lshr (i64 xor (i64 xor (i64 ptrtoint (%G__0x725610_type* @G__0x725610 to i64), i64 2048), i64 add (i64 ptrtoint (%G__0x725610_type* @G__0x725610 to i64), i64 2048)), i64 4) to i8), i8 1), i8* %14, align 1
  store i8 zext (i1 icmp eq (i64 add (i64 ptrtoint (%G__0x725610_type* @G__0x725610 to i64), i64 2048), i64 0) to i8), i8* %15, align 1
  store i8 trunc (i64 lshr (i64 add (i64 ptrtoint (%G__0x725610_type* @G__0x725610 to i64), i64 2048), i64 63) to i8), i8* %16, align 1
  store i8 zext (i1 icmp eq (i64 add (i64 xor (i64 lshr (i64 add (i64 ptrtoint (%G__0x725610_type* @G__0x725610 to i64), i64 2048), i64 63), i64 lshr (i64 ptrtoint (%G__0x725610_type* @G__0x725610 to i64), i64 63)), i64 lshr (i64 add (i64 ptrtoint (%G__0x725610_type* @G__0x725610 to i64), i64 2048), i64 63)), i64 2) to i8), i8* %17, align 1
  %4603 = trunc i32 %4601 to i16
  store i16 %4603, i16* %SI.i426, align 2
  %4604 = load i64, i64* bitcast (%G_0x70fcf0_type* @G_0x70fcf0 to i64*), align 8
  store i64 %4604, i64* %RDI.i1782, align 8
  %4605 = add i64 %4604, 6424
  %4606 = add i64 %4596, 43
  store i64 %4606, i64* %3, align 8
  %4607 = inttoptr i64 %4605 to i64*
  %4608 = load i64, i64* %4607, align 8
  store i64 %4608, i64* %RDI.i1782, align 8
  %4609 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*), align 8
  store i64 %4609, i64* %R8.i1720, align 8
  %4610 = add i64 %4609, 156
  %4611 = add i64 %4596, 58
  store i64 %4611, i64* %3, align 8
  %4612 = inttoptr i64 %4610 to i32*
  %4613 = load i32, i32* %4612, align 4
  %4614 = zext i32 %4613 to i64
  store i64 %4614, i64* %RAX.i1789, align 8
  %4615 = add i64 %4597, -28
  %4616 = add i64 %4596, 61
  store i64 %4616, i64* %3, align 8
  %4617 = inttoptr i64 %4615 to i32*
  %4618 = load i32, i32* %4617, align 4
  %4619 = add i32 %4618, %4613
  %4620 = zext i32 %4619 to i64
  store i64 %4620, i64* %RAX.i1789, align 8
  %4621 = icmp ult i32 %4619, %4613
  %4622 = icmp ult i32 %4619, %4618
  %4623 = or i1 %4621, %4622
  %4624 = zext i1 %4623 to i8
  store i8 %4624, i8* %12, align 1
  %4625 = and i32 %4619, 255
  %4626 = tail call i32 @llvm.ctpop.i32(i32 %4625)
  %4627 = trunc i32 %4626 to i8
  %4628 = and i8 %4627, 1
  %4629 = xor i8 %4628, 1
  store i8 %4629, i8* %13, align 1
  %4630 = xor i32 %4618, %4613
  %4631 = xor i32 %4630, %4619
  %4632 = lshr i32 %4631, 4
  %4633 = trunc i32 %4632 to i8
  %4634 = and i8 %4633, 1
  store i8 %4634, i8* %14, align 1
  %4635 = icmp eq i32 %4619, 0
  %4636 = zext i1 %4635 to i8
  store i8 %4636, i8* %15, align 1
  %4637 = lshr i32 %4619, 31
  %4638 = trunc i32 %4637 to i8
  store i8 %4638, i8* %16, align 1
  %4639 = lshr i32 %4613, 31
  %4640 = lshr i32 %4618, 31
  %4641 = xor i32 %4637, %4639
  %4642 = xor i32 %4637, %4640
  %4643 = add nuw nsw i32 %4641, %4642
  %4644 = icmp eq i32 %4643, 2
  %4645 = zext i1 %4644 to i8
  store i8 %4645, i8* %17, align 1
  %4646 = sext i32 %4619 to i64
  store i64 %4646, i64* %R8.i1720, align 8
  %4647 = shl nsw i64 %4646, 3
  %4648 = add i64 %4608, %4647
  %4649 = add i64 %4596, 68
  store i64 %4649, i64* %3, align 8
  %4650 = inttoptr i64 %4648 to i64*
  %4651 = load i64, i64* %4650, align 8
  store i64 %4651, i64* %RDI.i1782, align 8
  store i64 %4609, i64* %R8.i1720, align 8
  %4652 = add i64 %4609, 152
  %4653 = add i64 %4596, 83
  store i64 %4653, i64* %3, align 8
  %4654 = inttoptr i64 %4652 to i32*
  %4655 = load i32, i32* %4654, align 4
  %4656 = zext i32 %4655 to i64
  store i64 %4656, i64* %RAX.i1789, align 8
  %4657 = load i64, i64* %RBP.i, align 8
  %4658 = add i64 %4657, -32
  %4659 = add i64 %4596, 86
  store i64 %4659, i64* %3, align 8
  %4660 = inttoptr i64 %4658 to i32*
  %4661 = load i32, i32* %4660, align 4
  %4662 = add i32 %4661, %4655
  %4663 = zext i32 %4662 to i64
  store i64 %4663, i64* %RAX.i1789, align 8
  %4664 = icmp ult i32 %4662, %4655
  %4665 = icmp ult i32 %4662, %4661
  %4666 = or i1 %4664, %4665
  %4667 = zext i1 %4666 to i8
  store i8 %4667, i8* %12, align 1
  %4668 = and i32 %4662, 255
  %4669 = tail call i32 @llvm.ctpop.i32(i32 %4668)
  %4670 = trunc i32 %4669 to i8
  %4671 = and i8 %4670, 1
  %4672 = xor i8 %4671, 1
  store i8 %4672, i8* %13, align 1
  %4673 = xor i32 %4661, %4655
  %4674 = xor i32 %4673, %4662
  %4675 = lshr i32 %4674, 4
  %4676 = trunc i32 %4675 to i8
  %4677 = and i8 %4676, 1
  store i8 %4677, i8* %14, align 1
  %4678 = icmp eq i32 %4662, 0
  %4679 = zext i1 %4678 to i8
  store i8 %4679, i8* %15, align 1
  %4680 = lshr i32 %4662, 31
  %4681 = trunc i32 %4680 to i8
  store i8 %4681, i8* %16, align 1
  %4682 = lshr i32 %4655, 31
  %4683 = lshr i32 %4661, 31
  %4684 = xor i32 %4680, %4682
  %4685 = xor i32 %4680, %4683
  %4686 = add nuw nsw i32 %4684, %4685
  %4687 = icmp eq i32 %4686, 2
  %4688 = zext i1 %4687 to i8
  store i8 %4688, i8* %17, align 1
  %4689 = sext i32 %4662 to i64
  store i64 %4689, i64* %R8.i1720, align 8
  %4690 = shl nsw i64 %4689, 1
  %4691 = add i64 %4651, %4690
  %4692 = load i16, i16* %SI.i426, align 2
  %4693 = add i64 %4596, 94
  store i64 %4693, i64* %3, align 8
  %4694 = inttoptr i64 %4691 to i16*
  store i16 %4692, i16* %4694, align 2
  %4695 = load i64, i64* %3, align 8
  %4696 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*), align 8
  store i64 %4696, i64* %RDI.i1782, align 8
  %4697 = add i64 %4696, 72688
  %4698 = add i64 %4695, 14
  store i64 %4698, i64* %3, align 8
  %4699 = inttoptr i64 %4697 to i32*
  %4700 = load i32, i32* %4699, align 4
  %4701 = zext i32 %4700 to i64
  store i64 %4701, i64* %RAX.i1789, align 8
  %4702 = load i64, i64* %RBP.i, align 8
  %4703 = add i64 %4702, -260
  %4704 = add i64 %4695, 21
  store i64 %4704, i64* %3, align 8
  %4705 = inttoptr i64 %4703 to i32*
  %4706 = load i32, i32* %4705, align 4
  %4707 = zext i32 %4706 to i64
  store i64 %4707, i64* %3240, align 8
  %4708 = add i64 %4702, -32
  %4709 = add i64 %4695, 25
  store i64 %4709, i64* %3, align 8
  %4710 = inttoptr i64 %4708 to i32*
  %4711 = load i32, i32* %4710, align 4
  %4712 = sext i32 %4711 to i64
  %4713 = shl nsw i64 %4712, 6
  store i64 %4713, i64* %RDI.i1782, align 8
  %4714 = load i64, i64* %RDX.i1776, align 8
  %4715 = add i64 %4713, %4714
  store i64 %4715, i64* %RDX.i1776, align 8
  %4716 = icmp ult i64 %4715, %4714
  %4717 = icmp ult i64 %4715, %4713
  %4718 = or i1 %4716, %4717
  %4719 = zext i1 %4718 to i8
  store i8 %4719, i8* %12, align 1
  %4720 = trunc i64 %4715 to i32
  %4721 = and i32 %4720, 255
  %4722 = tail call i32 @llvm.ctpop.i32(i32 %4721)
  %4723 = trunc i32 %4722 to i8
  %4724 = and i8 %4723, 1
  %4725 = xor i8 %4724, 1
  store i8 %4725, i8* %13, align 1
  %4726 = xor i64 %4714, %4715
  %4727 = lshr i64 %4726, 4
  %4728 = trunc i64 %4727 to i8
  %4729 = and i8 %4728, 1
  store i8 %4729, i8* %14, align 1
  %4730 = icmp eq i64 %4715, 0
  %4731 = zext i1 %4730 to i8
  store i8 %4731, i8* %15, align 1
  %4732 = lshr i64 %4715, 63
  %4733 = trunc i64 %4732 to i8
  store i8 %4733, i8* %16, align 1
  %4734 = lshr i64 %4714, 63
  %4735 = lshr i64 %4712, 57
  %4736 = and i64 %4735, 1
  %4737 = xor i64 %4732, %4734
  %4738 = xor i64 %4732, %4736
  %4739 = add nuw nsw i64 %4737, %4738
  %4740 = icmp eq i64 %4739, 2
  %4741 = zext i1 %4740 to i8
  store i8 %4741, i8* %17, align 1
  %4742 = add i64 %4702, -28
  %4743 = add i64 %4695, 36
  store i64 %4743, i64* %3, align 8
  %4744 = inttoptr i64 %4742 to i32*
  %4745 = load i32, i32* %4744, align 4
  %4746 = sext i32 %4745 to i64
  store i64 %4746, i64* %RDI.i1782, align 8
  %4747 = shl nsw i64 %4746, 2
  %4748 = add i64 %4715, %4747
  %4749 = add i64 %4695, 40
  store i64 %4749, i64* %3, align 8
  %4750 = inttoptr i64 %4748 to i32*
  %4751 = load i32, i32* %4750, align 4
  %4752 = add i32 %4751, %4706
  %4753 = zext i32 %4752 to i64
  store i64 %4753, i64* %3240, align 8
  %4754 = lshr i32 %4752, 31
  %4755 = load i32, i32* %ECX.i723, align 4
  %4756 = sub i32 %4755, %4752
  %4757 = icmp ult i32 %4755, %4752
  %4758 = zext i1 %4757 to i8
  store i8 %4758, i8* %12, align 1
  %4759 = and i32 %4756, 255
  %4760 = tail call i32 @llvm.ctpop.i32(i32 %4759)
  %4761 = trunc i32 %4760 to i8
  %4762 = and i8 %4761, 1
  %4763 = xor i8 %4762, 1
  store i8 %4763, i8* %13, align 1
  %4764 = xor i32 %4752, %4755
  %4765 = xor i32 %4764, %4756
  %4766 = lshr i32 %4765, 4
  %4767 = trunc i32 %4766 to i8
  %4768 = and i8 %4767, 1
  store i8 %4768, i8* %14, align 1
  %4769 = icmp eq i32 %4756, 0
  %4770 = zext i1 %4769 to i8
  store i8 %4770, i8* %15, align 1
  %4771 = lshr i32 %4756, 31
  %4772 = trunc i32 %4771 to i8
  store i8 %4772, i8* %16, align 1
  %4773 = lshr i32 %4755, 31
  %4774 = xor i32 %4754, %4773
  %4775 = xor i32 %4771, %4773
  %4776 = add nuw nsw i32 %4775, %4774
  %4777 = icmp eq i32 %4776, 2
  %4778 = zext i1 %4777 to i8
  store i8 %4778, i8* %17, align 1
  %4779 = load i64, i64* %RBP.i, align 8
  %4780 = add i64 %4779, -312
  %4781 = load i32, i32* %EAX.i1788, align 4
  %4782 = add i64 %4695, 49
  store i64 %4782, i64* %3, align 8
  %4783 = inttoptr i64 %4780 to i32*
  store i32 %4781, i32* %4783, align 4
  %4784 = load i64, i64* %3, align 8
  %4785 = load i8, i8* %15, align 1
  %4786 = icmp ne i8 %4785, 0
  %4787 = load i8, i8* %16, align 1
  %4788 = icmp ne i8 %4787, 0
  %4789 = load i8, i8* %17, align 1
  %4790 = icmp ne i8 %4789, 0
  %4791 = xor i1 %4788, %4790
  %4792 = or i1 %4786, %4791
  %.v225 = select i1 %4792, i64 19, i64 6
  %4793 = add i64 %4784, %.v225
  store i64 %4793, i64* %3, align 8
  br i1 %4792, label %block_.L_44226a, label %block_44225d

block_44225d:                                     ; preds = %block_.L_4421c8
  store i64 0, i64* %RAX.i1789, align 8
  store i8 0, i8* %12, align 1
  store i8 1, i8* %13, align 1
  store i8 1, i8* %15, align 1
  store i8 0, i8* %16, align 1
  store i8 0, i8* %17, align 1
  store i8 0, i8* %14, align 1
  %4794 = load i64, i64* %RBP.i, align 8
  %4795 = add i64 %4794, -316
  %4796 = add i64 %4793, 8
  store i64 %4796, i64* %3, align 8
  %4797 = inttoptr i64 %4795 to i32*
  store i32 0, i32* %4797, align 4
  %4798 = load i64, i64* %3, align 8
  %4799 = add i64 %4798, 51
  store i64 %4799, i64* %3, align 8
  br label %block_.L_442298

block_.L_44226a:                                  ; preds = %block_.L_4421c8
  store i64 add (i64 ptrtoint (%G__0x725610_type* @G__0x725610 to i64), i64 2048), i64* %RAX.i1789, align 8
  store i8 zext (i1 or (i1 icmp ult (i64 add (i64 ptrtoint (%G__0x725610_type* @G__0x725610 to i64), i64 2048), i64 ptrtoint (%G__0x725610_type* @G__0x725610 to i64)), i1 icmp ult (i64 add (i64 ptrtoint (%G__0x725610_type* @G__0x725610 to i64), i64 2048), i64 2048)) to i8), i8* %12, align 1
  store i8 %3244, i8* %13, align 1
  store i8 and (i8 trunc (i64 lshr (i64 xor (i64 xor (i64 ptrtoint (%G__0x725610_type* @G__0x725610 to i64), i64 2048), i64 add (i64 ptrtoint (%G__0x725610_type* @G__0x725610 to i64), i64 2048)), i64 4) to i8), i8 1), i8* %14, align 1
  store i8 zext (i1 icmp eq (i64 add (i64 ptrtoint (%G__0x725610_type* @G__0x725610 to i64), i64 2048), i64 0) to i8), i8* %15, align 1
  store i8 trunc (i64 lshr (i64 add (i64 ptrtoint (%G__0x725610_type* @G__0x725610 to i64), i64 2048), i64 63) to i8), i8* %16, align 1
  store i8 zext (i1 icmp eq (i64 add (i64 xor (i64 lshr (i64 add (i64 ptrtoint (%G__0x725610_type* @G__0x725610 to i64), i64 2048), i64 63), i64 lshr (i64 ptrtoint (%G__0x725610_type* @G__0x725610 to i64), i64 63)), i64 lshr (i64 add (i64 ptrtoint (%G__0x725610_type* @G__0x725610 to i64), i64 2048), i64 63)), i64 2) to i8), i8* %17, align 1
  %4800 = load i64, i64* %RBP.i, align 8
  %4801 = add i64 %4800, -260
  %4802 = add i64 %4793, 22
  store i64 %4802, i64* %3, align 8
  %4803 = inttoptr i64 %4801 to i32*
  %4804 = load i32, i32* %4803, align 4
  %4805 = zext i32 %4804 to i64
  store i64 %4805, i64* %RCX.i1734.pre-phi, align 8
  %4806 = add i64 %4800, -32
  %4807 = add i64 %4793, 26
  store i64 %4807, i64* %3, align 8
  %4808 = inttoptr i64 %4806 to i32*
  %4809 = load i32, i32* %4808, align 4
  %4810 = sext i32 %4809 to i64
  %4811 = shl nsw i64 %4810, 6
  store i64 %4811, i64* %RDX.i1776, align 8
  %4812 = add i64 %4811, add (i64 ptrtoint (%G__0x725610_type* @G__0x725610 to i64), i64 2048)
  store i64 %4812, i64* %RAX.i1789, align 8
  %4813 = icmp ult i64 %4812, add (i64 ptrtoint (%G__0x725610_type* @G__0x725610 to i64), i64 2048)
  %4814 = icmp ult i64 %4812, %4811
  %4815 = or i1 %4813, %4814
  %4816 = zext i1 %4815 to i8
  store i8 %4816, i8* %12, align 1
  %4817 = trunc i64 %4812 to i32
  %4818 = and i32 %4817, 248
  %4819 = tail call i32 @llvm.ctpop.i32(i32 %4818)
  %4820 = trunc i32 %4819 to i8
  %4821 = and i8 %4820, 1
  %4822 = xor i8 %4821, 1
  store i8 %4822, i8* %13, align 1
  %4823 = xor i64 %4812, add (i64 ptrtoint (%G__0x725610_type* @G__0x725610 to i64), i64 2048)
  %4824 = lshr i64 %4823, 4
  %4825 = trunc i64 %4824 to i8
  %4826 = and i8 %4825, 1
  store i8 %4826, i8* %14, align 1
  %4827 = icmp eq i64 %4812, 0
  %4828 = zext i1 %4827 to i8
  store i8 %4828, i8* %15, align 1
  %4829 = lshr i64 %4812, 63
  %4830 = trunc i64 %4829 to i8
  store i8 %4830, i8* %16, align 1
  %4831 = lshr i64 %4810, 57
  %4832 = and i64 %4831, 1
  %4833 = xor i64 %4829, lshr (i64 add (i64 ptrtoint (%G__0x725610_type* @G__0x725610 to i64), i64 2048), i64 63)
  %4834 = xor i64 %4829, %4832
  %4835 = add nuw nsw i64 %4833, %4834
  %4836 = icmp eq i64 %4835, 2
  %4837 = zext i1 %4836 to i8
  store i8 %4837, i8* %17, align 1
  %4838 = add i64 %4800, -28
  %4839 = add i64 %4793, 37
  store i64 %4839, i64* %3, align 8
  %4840 = inttoptr i64 %4838 to i32*
  %4841 = load i32, i32* %4840, align 4
  %4842 = sext i32 %4841 to i64
  store i64 %4842, i64* %RDX.i1776, align 8
  %4843 = shl nsw i64 %4842, 2
  %4844 = add i64 %4812, %4843
  %4845 = add i64 %4793, 40
  store i64 %4845, i64* %3, align 8
  %4846 = inttoptr i64 %4844 to i32*
  %4847 = load i32, i32* %4846, align 4
  %4848 = add i32 %4847, %4804
  %4849 = zext i32 %4848 to i64
  store i64 %4849, i64* %RCX.i1734.pre-phi, align 8
  %4850 = icmp ult i32 %4848, %4804
  %4851 = icmp ult i32 %4848, %4847
  %4852 = or i1 %4850, %4851
  %4853 = zext i1 %4852 to i8
  store i8 %4853, i8* %12, align 1
  %4854 = and i32 %4848, 255
  %4855 = tail call i32 @llvm.ctpop.i32(i32 %4854)
  %4856 = trunc i32 %4855 to i8
  %4857 = and i8 %4856, 1
  %4858 = xor i8 %4857, 1
  store i8 %4858, i8* %13, align 1
  %4859 = xor i32 %4847, %4804
  %4860 = xor i32 %4859, %4848
  %4861 = lshr i32 %4860, 4
  %4862 = trunc i32 %4861 to i8
  %4863 = and i8 %4862, 1
  store i8 %4863, i8* %14, align 1
  %4864 = icmp eq i32 %4848, 0
  %4865 = zext i1 %4864 to i8
  store i8 %4865, i8* %15, align 1
  %4866 = lshr i32 %4848, 31
  %4867 = trunc i32 %4866 to i8
  store i8 %4867, i8* %16, align 1
  %4868 = lshr i32 %4804, 31
  %4869 = lshr i32 %4847, 31
  %4870 = xor i32 %4866, %4868
  %4871 = xor i32 %4866, %4869
  %4872 = add nuw nsw i32 %4870, %4871
  %4873 = icmp eq i32 %4872, 2
  %4874 = zext i1 %4873 to i8
  store i8 %4874, i8* %17, align 1
  %4875 = load i64, i64* %RBP.i, align 8
  %4876 = add i64 %4875, -316
  %4877 = add i64 %4793, 46
  store i64 %4877, i64* %3, align 8
  %4878 = inttoptr i64 %4876 to i32*
  store i32 %4848, i32* %4878, align 4
  %.pre129 = load i64, i64* %3, align 8
  br label %block_.L_442298

block_.L_442298:                                  ; preds = %block_.L_44226a, %block_44225d
  %4879 = phi i64 [ %.pre129, %block_.L_44226a ], [ %4799, %block_44225d ]
  %4880 = load i64, i64* %RBP.i, align 8
  %4881 = add i64 %4880, -316
  %4882 = add i64 %4879, 6
  store i64 %4882, i64* %3, align 8
  %4883 = inttoptr i64 %4881 to i32*
  %4884 = load i32, i32* %4883, align 4
  %4885 = zext i32 %4884 to i64
  store i64 %4885, i64* %RAX.i1789, align 8
  %4886 = add i64 %4880, -312
  %4887 = add i64 %4879, 12
  store i64 %4887, i64* %3, align 8
  %4888 = inttoptr i64 %4886 to i32*
  %4889 = load i32, i32* %4888, align 4
  %4890 = zext i32 %4889 to i64
  store i64 %4890, i64* %RCX.i1734.pre-phi, align 8
  %4891 = sub i32 %4889, %4884
  %4892 = icmp ult i32 %4889, %4884
  %4893 = zext i1 %4892 to i8
  store i8 %4893, i8* %12, align 1
  %4894 = and i32 %4891, 255
  %4895 = tail call i32 @llvm.ctpop.i32(i32 %4894)
  %4896 = trunc i32 %4895 to i8
  %4897 = and i8 %4896, 1
  %4898 = xor i8 %4897, 1
  store i8 %4898, i8* %13, align 1
  %4899 = xor i32 %4884, %4889
  %4900 = xor i32 %4899, %4891
  %4901 = lshr i32 %4900, 4
  %4902 = trunc i32 %4901 to i8
  %4903 = and i8 %4902, 1
  store i8 %4903, i8* %14, align 1
  %4904 = icmp eq i32 %4891, 0
  %4905 = zext i1 %4904 to i8
  store i8 %4905, i8* %15, align 1
  %4906 = lshr i32 %4891, 31
  %4907 = trunc i32 %4906 to i8
  store i8 %4907, i8* %16, align 1
  %4908 = lshr i32 %4889, 31
  %4909 = lshr i32 %4884, 31
  %4910 = xor i32 %4909, %4908
  %4911 = xor i32 %4906, %4908
  %4912 = add nuw nsw i32 %4911, %4910
  %4913 = icmp eq i32 %4912, 2
  %4914 = zext i1 %4913 to i8
  store i8 %4914, i8* %17, align 1
  %4915 = icmp ne i8 %4907, 0
  %4916 = xor i1 %4915, %4913
  %.v167 = select i1 %4916, i64 20, i64 45
  %4917 = add i64 %4879, %.v167
  store i64 %4917, i64* %3, align 8
  br i1 %4916, label %block_4422ac, label %block_.L_4422c5

block_4422ac:                                     ; preds = %block_.L_442298
  %4918 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*), align 8
  store i64 %4918, i64* %RAX.i1789, align 8
  %4919 = add i64 %4918, 72688
  %4920 = add i64 %4917, 14
  store i64 %4920, i64* %3, align 8
  %4921 = inttoptr i64 %4919 to i32*
  %4922 = load i32, i32* %4921, align 4
  %4923 = zext i32 %4922 to i64
  store i64 %4923, i64* %RCX.i1734.pre-phi, align 8
  %4924 = add i64 %4880, -320
  %4925 = add i64 %4917, 20
  store i64 %4925, i64* %3, align 8
  %4926 = inttoptr i64 %4924 to i32*
  store i32 %4922, i32* %4926, align 4
  %4927 = load i64, i64* %3, align 8
  %4928 = add i64 %4927, 127
  store i64 %4928, i64* %3, align 8
  br label %block_.L_44233f

block_.L_4422c5:                                  ; preds = %block_.L_442298
  store i64 0, i64* %RAX.i1789, align 8
  store i64 add (i64 ptrtoint (%G__0x725610_type* @G__0x725610 to i64), i64 2048), i64* %RCX.i1734.pre-phi, align 8
  store i8 zext (i1 or (i1 icmp ult (i64 add (i64 ptrtoint (%G__0x725610_type* @G__0x725610 to i64), i64 2048), i64 ptrtoint (%G__0x725610_type* @G__0x725610 to i64)), i1 icmp ult (i64 add (i64 ptrtoint (%G__0x725610_type* @G__0x725610 to i64), i64 2048), i64 2048)) to i8), i8* %12, align 1
  store i8 %3244, i8* %13, align 1
  store i8 and (i8 trunc (i64 lshr (i64 xor (i64 xor (i64 ptrtoint (%G__0x725610_type* @G__0x725610 to i64), i64 2048), i64 add (i64 ptrtoint (%G__0x725610_type* @G__0x725610 to i64), i64 2048)), i64 4) to i8), i8 1), i8* %14, align 1
  store i8 zext (i1 icmp eq (i64 add (i64 ptrtoint (%G__0x725610_type* @G__0x725610 to i64), i64 2048), i64 0) to i8), i8* %15, align 1
  store i8 trunc (i64 lshr (i64 add (i64 ptrtoint (%G__0x725610_type* @G__0x725610 to i64), i64 2048), i64 63) to i8), i8* %16, align 1
  store i8 zext (i1 icmp eq (i64 add (i64 xor (i64 lshr (i64 add (i64 ptrtoint (%G__0x725610_type* @G__0x725610 to i64), i64 2048), i64 63), i64 lshr (i64 ptrtoint (%G__0x725610_type* @G__0x725610 to i64), i64 63)), i64 lshr (i64 add (i64 ptrtoint (%G__0x725610_type* @G__0x725610 to i64), i64 2048), i64 63)), i64 2) to i8), i8* %17, align 1
  %4929 = add i64 %4880, -260
  %4930 = add i64 %4917, 25
  store i64 %4930, i64* %3, align 8
  %4931 = inttoptr i64 %4929 to i32*
  %4932 = load i32, i32* %4931, align 4
  %4933 = zext i32 %4932 to i64
  store i64 %4933, i64* %RDX.i1776, align 8
  %4934 = add i64 %4880, -32
  %4935 = add i64 %4917, 29
  store i64 %4935, i64* %3, align 8
  %4936 = inttoptr i64 %4934 to i32*
  %4937 = load i32, i32* %4936, align 4
  %4938 = sext i32 %4937 to i64
  %4939 = shl nsw i64 %4938, 6
  store i64 %4939, i64* %RSI.i1729, align 8
  %4940 = add i64 %4939, add (i64 ptrtoint (%G__0x725610_type* @G__0x725610 to i64), i64 2048)
  store i64 %4940, i64* %RCX.i1734.pre-phi, align 8
  %4941 = icmp ult i64 %4940, add (i64 ptrtoint (%G__0x725610_type* @G__0x725610 to i64), i64 2048)
  %4942 = icmp ult i64 %4940, %4939
  %4943 = or i1 %4941, %4942
  %4944 = zext i1 %4943 to i8
  store i8 %4944, i8* %12, align 1
  %4945 = trunc i64 %4940 to i32
  %4946 = and i32 %4945, 248
  %4947 = tail call i32 @llvm.ctpop.i32(i32 %4946)
  %4948 = trunc i32 %4947 to i8
  %4949 = and i8 %4948, 1
  %4950 = xor i8 %4949, 1
  store i8 %4950, i8* %13, align 1
  %4951 = xor i64 %4940, add (i64 ptrtoint (%G__0x725610_type* @G__0x725610 to i64), i64 2048)
  %4952 = lshr i64 %4951, 4
  %4953 = trunc i64 %4952 to i8
  %4954 = and i8 %4953, 1
  store i8 %4954, i8* %14, align 1
  %4955 = icmp eq i64 %4940, 0
  %4956 = zext i1 %4955 to i8
  store i8 %4956, i8* %15, align 1
  %4957 = lshr i64 %4940, 63
  %4958 = trunc i64 %4957 to i8
  store i8 %4958, i8* %16, align 1
  %4959 = lshr i64 %4938, 57
  %4960 = and i64 %4959, 1
  %4961 = xor i64 %4957, lshr (i64 add (i64 ptrtoint (%G__0x725610_type* @G__0x725610 to i64), i64 2048), i64 63)
  %4962 = xor i64 %4957, %4960
  %4963 = add nuw nsw i64 %4961, %4962
  %4964 = icmp eq i64 %4963, 2
  %4965 = zext i1 %4964 to i8
  store i8 %4965, i8* %17, align 1
  %4966 = load i64, i64* %RBP.i, align 8
  %4967 = add i64 %4966, -28
  %4968 = add i64 %4917, 40
  store i64 %4968, i64* %3, align 8
  %4969 = inttoptr i64 %4967 to i32*
  %4970 = load i32, i32* %4969, align 4
  %4971 = sext i32 %4970 to i64
  store i64 %4971, i64* %RSI.i1729, align 8
  %4972 = shl nsw i64 %4971, 2
  %4973 = add i64 %4940, %4972
  %4974 = add i64 %4917, 43
  store i64 %4974, i64* %3, align 8
  %4975 = inttoptr i64 %4973 to i32*
  %4976 = load i32, i32* %4975, align 4
  %4977 = add i32 %4976, %4932
  %4978 = zext i32 %4977 to i64
  store i64 %4978, i64* %RDX.i1776, align 8
  %4979 = lshr i32 %4977, 31
  %4980 = load i32, i32* %EAX.i1788, align 4
  %4981 = sub i32 %4980, %4977
  %4982 = icmp ult i32 %4980, %4977
  %4983 = zext i1 %4982 to i8
  store i8 %4983, i8* %12, align 1
  %4984 = and i32 %4981, 255
  %4985 = tail call i32 @llvm.ctpop.i32(i32 %4984)
  %4986 = trunc i32 %4985 to i8
  %4987 = and i8 %4986, 1
  %4988 = xor i8 %4987, 1
  store i8 %4988, i8* %13, align 1
  %4989 = xor i32 %4977, %4980
  %4990 = xor i32 %4989, %4981
  %4991 = lshr i32 %4990, 4
  %4992 = trunc i32 %4991 to i8
  %4993 = and i8 %4992, 1
  store i8 %4993, i8* %14, align 1
  %4994 = icmp eq i32 %4981, 0
  %4995 = zext i1 %4994 to i8
  store i8 %4995, i8* %15, align 1
  %4996 = lshr i32 %4981, 31
  %4997 = trunc i32 %4996 to i8
  store i8 %4997, i8* %16, align 1
  %4998 = lshr i32 %4980, 31
  %4999 = xor i32 %4979, %4998
  %5000 = xor i32 %4996, %4998
  %5001 = add nuw nsw i32 %5000, %4999
  %5002 = icmp eq i32 %5001, 2
  %5003 = zext i1 %5002 to i8
  store i8 %5003, i8* %17, align 1
  %5004 = icmp ne i8 %4997, 0
  %5005 = xor i1 %5004, %5002
  %5006 = or i1 %4994, %5005
  %.v168 = select i1 %5006, i64 64, i64 51
  %5007 = add i64 %4917, %.v168
  store i64 %5007, i64* %3, align 8
  br i1 %5006, label %block_.L_442305, label %block_4422f8

block_4422f8:                                     ; preds = %block_.L_4422c5
  store i64 0, i64* %RAX.i1789, align 8
  store i8 0, i8* %12, align 1
  store i8 1, i8* %13, align 1
  store i8 1, i8* %15, align 1
  store i8 0, i8* %16, align 1
  store i8 0, i8* %17, align 1
  store i8 0, i8* %14, align 1
  %5008 = add i64 %4966, -324
  %5009 = add i64 %5007, 8
  store i64 %5009, i64* %3, align 8
  %5010 = inttoptr i64 %5008 to i32*
  store i32 0, i32* %5010, align 4
  %5011 = load i64, i64* %3, align 8
  %5012 = add i64 %5011, 51
  store i64 %5012, i64* %3, align 8
  br label %block_.L_442333

block_.L_442305:                                  ; preds = %block_.L_4422c5
  store i64 add (i64 ptrtoint (%G__0x725610_type* @G__0x725610 to i64), i64 2048), i64* %RAX.i1789, align 8
  store i8 zext (i1 or (i1 icmp ult (i64 add (i64 ptrtoint (%G__0x725610_type* @G__0x725610 to i64), i64 2048), i64 ptrtoint (%G__0x725610_type* @G__0x725610 to i64)), i1 icmp ult (i64 add (i64 ptrtoint (%G__0x725610_type* @G__0x725610 to i64), i64 2048), i64 2048)) to i8), i8* %12, align 1
  store i8 %3244, i8* %13, align 1
  store i8 and (i8 trunc (i64 lshr (i64 xor (i64 xor (i64 ptrtoint (%G__0x725610_type* @G__0x725610 to i64), i64 2048), i64 add (i64 ptrtoint (%G__0x725610_type* @G__0x725610 to i64), i64 2048)), i64 4) to i8), i8 1), i8* %14, align 1
  store i8 zext (i1 icmp eq (i64 add (i64 ptrtoint (%G__0x725610_type* @G__0x725610 to i64), i64 2048), i64 0) to i8), i8* %15, align 1
  store i8 trunc (i64 lshr (i64 add (i64 ptrtoint (%G__0x725610_type* @G__0x725610 to i64), i64 2048), i64 63) to i8), i8* %16, align 1
  store i8 zext (i1 icmp eq (i64 add (i64 xor (i64 lshr (i64 add (i64 ptrtoint (%G__0x725610_type* @G__0x725610 to i64), i64 2048), i64 63), i64 lshr (i64 ptrtoint (%G__0x725610_type* @G__0x725610 to i64), i64 63)), i64 lshr (i64 add (i64 ptrtoint (%G__0x725610_type* @G__0x725610 to i64), i64 2048), i64 63)), i64 2) to i8), i8* %17, align 1
  %5013 = add i64 %4966, -260
  %5014 = add i64 %5007, 22
  store i64 %5014, i64* %3, align 8
  %5015 = inttoptr i64 %5013 to i32*
  %5016 = load i32, i32* %5015, align 4
  %5017 = zext i32 %5016 to i64
  store i64 %5017, i64* %RCX.i1734.pre-phi, align 8
  %5018 = add i64 %4966, -32
  %5019 = add i64 %5007, 26
  store i64 %5019, i64* %3, align 8
  %5020 = inttoptr i64 %5018 to i32*
  %5021 = load i32, i32* %5020, align 4
  %5022 = sext i32 %5021 to i64
  %5023 = shl nsw i64 %5022, 6
  store i64 %5023, i64* %RDX.i1776, align 8
  %5024 = add i64 %5023, add (i64 ptrtoint (%G__0x725610_type* @G__0x725610 to i64), i64 2048)
  store i64 %5024, i64* %RAX.i1789, align 8
  %5025 = icmp ult i64 %5024, add (i64 ptrtoint (%G__0x725610_type* @G__0x725610 to i64), i64 2048)
  %5026 = icmp ult i64 %5024, %5023
  %5027 = or i1 %5025, %5026
  %5028 = zext i1 %5027 to i8
  store i8 %5028, i8* %12, align 1
  %5029 = trunc i64 %5024 to i32
  %5030 = and i32 %5029, 248
  %5031 = tail call i32 @llvm.ctpop.i32(i32 %5030)
  %5032 = trunc i32 %5031 to i8
  %5033 = and i8 %5032, 1
  %5034 = xor i8 %5033, 1
  store i8 %5034, i8* %13, align 1
  %5035 = xor i64 %5024, add (i64 ptrtoint (%G__0x725610_type* @G__0x725610 to i64), i64 2048)
  %5036 = lshr i64 %5035, 4
  %5037 = trunc i64 %5036 to i8
  %5038 = and i8 %5037, 1
  store i8 %5038, i8* %14, align 1
  %5039 = icmp eq i64 %5024, 0
  %5040 = zext i1 %5039 to i8
  store i8 %5040, i8* %15, align 1
  %5041 = lshr i64 %5024, 63
  %5042 = trunc i64 %5041 to i8
  store i8 %5042, i8* %16, align 1
  %5043 = lshr i64 %5022, 57
  %5044 = and i64 %5043, 1
  %5045 = xor i64 %5041, lshr (i64 add (i64 ptrtoint (%G__0x725610_type* @G__0x725610 to i64), i64 2048), i64 63)
  %5046 = xor i64 %5041, %5044
  %5047 = add nuw nsw i64 %5045, %5046
  %5048 = icmp eq i64 %5047, 2
  %5049 = zext i1 %5048 to i8
  store i8 %5049, i8* %17, align 1
  %5050 = add i64 %5007, 37
  store i64 %5050, i64* %3, align 8
  %5051 = load i32, i32* %4969, align 4
  %5052 = sext i32 %5051 to i64
  store i64 %5052, i64* %RDX.i1776, align 8
  %5053 = shl nsw i64 %5052, 2
  %5054 = add i64 %5024, %5053
  %5055 = add i64 %5007, 40
  store i64 %5055, i64* %3, align 8
  %5056 = inttoptr i64 %5054 to i32*
  %5057 = load i32, i32* %5056, align 4
  %5058 = add i32 %5057, %5016
  %5059 = zext i32 %5058 to i64
  store i64 %5059, i64* %RCX.i1734.pre-phi, align 8
  %5060 = icmp ult i32 %5058, %5016
  %5061 = icmp ult i32 %5058, %5057
  %5062 = or i1 %5060, %5061
  %5063 = zext i1 %5062 to i8
  store i8 %5063, i8* %12, align 1
  %5064 = and i32 %5058, 255
  %5065 = tail call i32 @llvm.ctpop.i32(i32 %5064)
  %5066 = trunc i32 %5065 to i8
  %5067 = and i8 %5066, 1
  %5068 = xor i8 %5067, 1
  store i8 %5068, i8* %13, align 1
  %5069 = xor i32 %5057, %5016
  %5070 = xor i32 %5069, %5058
  %5071 = lshr i32 %5070, 4
  %5072 = trunc i32 %5071 to i8
  %5073 = and i8 %5072, 1
  store i8 %5073, i8* %14, align 1
  %5074 = icmp eq i32 %5058, 0
  %5075 = zext i1 %5074 to i8
  store i8 %5075, i8* %15, align 1
  %5076 = lshr i32 %5058, 31
  %5077 = trunc i32 %5076 to i8
  store i8 %5077, i8* %16, align 1
  %5078 = lshr i32 %5016, 31
  %5079 = lshr i32 %5057, 31
  %5080 = xor i32 %5076, %5078
  %5081 = xor i32 %5076, %5079
  %5082 = add nuw nsw i32 %5080, %5081
  %5083 = icmp eq i32 %5082, 2
  %5084 = zext i1 %5083 to i8
  store i8 %5084, i8* %17, align 1
  %5085 = load i64, i64* %RBP.i, align 8
  %5086 = add i64 %5085, -324
  %5087 = add i64 %5007, 46
  store i64 %5087, i64* %3, align 8
  %5088 = inttoptr i64 %5086 to i32*
  store i32 %5058, i32* %5088, align 4
  %.pre130 = load i64, i64* %3, align 8
  br label %block_.L_442333

block_.L_442333:                                  ; preds = %block_.L_442305, %block_4422f8
  %5089 = phi i64 [ %.pre130, %block_.L_442305 ], [ %5012, %block_4422f8 ]
  %5090 = load i64, i64* %RBP.i, align 8
  %5091 = add i64 %5090, -324
  %5092 = add i64 %5089, 6
  store i64 %5092, i64* %3, align 8
  %5093 = inttoptr i64 %5091 to i32*
  %5094 = load i32, i32* %5093, align 4
  %5095 = zext i32 %5094 to i64
  store i64 %5095, i64* %RAX.i1789, align 8
  %5096 = add i64 %5090, -320
  %5097 = add i64 %5089, 12
  store i64 %5097, i64* %3, align 8
  %5098 = inttoptr i64 %5096 to i32*
  store i32 %5094, i32* %5098, align 4
  %.pre131 = load i64, i64* %3, align 8
  br label %block_.L_44233f

block_.L_44233f:                                  ; preds = %block_.L_442333, %block_4422ac
  %5099 = phi i64 [ %.pre131, %block_.L_442333 ], [ %4928, %block_4422ac ]
  %5100 = load i64, i64* %RBP.i, align 8
  %5101 = add i64 %5100, -320
  %5102 = add i64 %5099, 6
  store i64 %5102, i64* %3, align 8
  %5103 = inttoptr i64 %5101 to i32*
  %5104 = load i32, i32* %5103, align 4
  %5105 = zext i32 %5104 to i64
  store i64 %5105, i64* %RAX.i1789, align 8
  %5106 = trunc i32 %5104 to i16
  store i16 %5106, i16* %CX.i56, align 2
  %5107 = load i64, i64* bitcast (%G_0x70fcf0_type* @G_0x70fcf0 to i64*), align 8
  store i64 %5107, i64* %RDX.i1776, align 8
  %5108 = add i64 %5107, 6464
  %5109 = add i64 %5099, 24
  store i64 %5109, i64* %3, align 8
  %5110 = inttoptr i64 %5108 to i64*
  %5111 = load i64, i64* %5110, align 8
  store i64 %5111, i64* %RDX.i1776, align 8
  %5112 = add i64 %5111, 8
  %5113 = add i64 %5099, 28
  store i64 %5113, i64* %3, align 8
  %5114 = inttoptr i64 %5112 to i64*
  %5115 = load i64, i64* %5114, align 8
  store i64 %5115, i64* %RDX.i1776, align 8
  %5116 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*), align 8
  store i64 %5116, i64* %RSI.i1729, align 8
  %5117 = add i64 %5116, 156
  %5118 = add i64 %5099, 42
  store i64 %5118, i64* %3, align 8
  %5119 = inttoptr i64 %5117 to i32*
  %5120 = load i32, i32* %5119, align 4
  %5121 = zext i32 %5120 to i64
  store i64 %5121, i64* %RAX.i1789, align 8
  %5122 = add i64 %5100, -28
  %5123 = add i64 %5099, 45
  store i64 %5123, i64* %3, align 8
  %5124 = inttoptr i64 %5122 to i32*
  %5125 = load i32, i32* %5124, align 4
  %5126 = add i32 %5125, %5120
  %5127 = zext i32 %5126 to i64
  store i64 %5127, i64* %RAX.i1789, align 8
  %5128 = icmp ult i32 %5126, %5120
  %5129 = icmp ult i32 %5126, %5125
  %5130 = or i1 %5128, %5129
  %5131 = zext i1 %5130 to i8
  store i8 %5131, i8* %12, align 1
  %5132 = and i32 %5126, 255
  %5133 = tail call i32 @llvm.ctpop.i32(i32 %5132)
  %5134 = trunc i32 %5133 to i8
  %5135 = and i8 %5134, 1
  %5136 = xor i8 %5135, 1
  store i8 %5136, i8* %13, align 1
  %5137 = xor i32 %5125, %5120
  %5138 = xor i32 %5137, %5126
  %5139 = lshr i32 %5138, 4
  %5140 = trunc i32 %5139 to i8
  %5141 = and i8 %5140, 1
  store i8 %5141, i8* %14, align 1
  %5142 = icmp eq i32 %5126, 0
  %5143 = zext i1 %5142 to i8
  store i8 %5143, i8* %15, align 1
  %5144 = lshr i32 %5126, 31
  %5145 = trunc i32 %5144 to i8
  store i8 %5145, i8* %16, align 1
  %5146 = lshr i32 %5120, 31
  %5147 = lshr i32 %5125, 31
  %5148 = xor i32 %5144, %5146
  %5149 = xor i32 %5144, %5147
  %5150 = add nuw nsw i32 %5148, %5149
  %5151 = icmp eq i32 %5150, 2
  %5152 = zext i1 %5151 to i8
  store i8 %5152, i8* %17, align 1
  %5153 = sext i32 %5126 to i64
  store i64 %5153, i64* %RSI.i1729, align 8
  %5154 = shl nsw i64 %5153, 3
  %5155 = add i64 %5115, %5154
  %5156 = add i64 %5099, 52
  store i64 %5156, i64* %3, align 8
  %5157 = inttoptr i64 %5155 to i64*
  %5158 = load i64, i64* %5157, align 8
  store i64 %5158, i64* %RDX.i1776, align 8
  store i64 %5116, i64* %RSI.i1729, align 8
  %5159 = add i64 %5116, 152
  %5160 = add i64 %5099, 66
  store i64 %5160, i64* %3, align 8
  %5161 = inttoptr i64 %5159 to i32*
  %5162 = load i32, i32* %5161, align 4
  %5163 = zext i32 %5162 to i64
  store i64 %5163, i64* %RAX.i1789, align 8
  %5164 = load i64, i64* %RBP.i, align 8
  %5165 = add i64 %5164, -32
  %5166 = add i64 %5099, 69
  store i64 %5166, i64* %3, align 8
  %5167 = inttoptr i64 %5165 to i32*
  %5168 = load i32, i32* %5167, align 4
  %5169 = add i32 %5168, %5162
  %5170 = zext i32 %5169 to i64
  store i64 %5170, i64* %RAX.i1789, align 8
  %5171 = icmp ult i32 %5169, %5162
  %5172 = icmp ult i32 %5169, %5168
  %5173 = or i1 %5171, %5172
  %5174 = zext i1 %5173 to i8
  store i8 %5174, i8* %12, align 1
  %5175 = and i32 %5169, 255
  %5176 = tail call i32 @llvm.ctpop.i32(i32 %5175)
  %5177 = trunc i32 %5176 to i8
  %5178 = and i8 %5177, 1
  %5179 = xor i8 %5178, 1
  store i8 %5179, i8* %13, align 1
  %5180 = xor i32 %5168, %5162
  %5181 = xor i32 %5180, %5169
  %5182 = lshr i32 %5181, 4
  %5183 = trunc i32 %5182 to i8
  %5184 = and i8 %5183, 1
  store i8 %5184, i8* %14, align 1
  %5185 = icmp eq i32 %5169, 0
  %5186 = zext i1 %5185 to i8
  store i8 %5186, i8* %15, align 1
  %5187 = lshr i32 %5169, 31
  %5188 = trunc i32 %5187 to i8
  store i8 %5188, i8* %16, align 1
  %5189 = lshr i32 %5162, 31
  %5190 = lshr i32 %5168, 31
  %5191 = xor i32 %5187, %5189
  %5192 = xor i32 %5187, %5190
  %5193 = add nuw nsw i32 %5191, %5192
  %5194 = icmp eq i32 %5193, 2
  %5195 = zext i1 %5194 to i8
  store i8 %5195, i8* %17, align 1
  %5196 = sext i32 %5169 to i64
  store i64 %5196, i64* %RSI.i1729, align 8
  %5197 = shl nsw i64 %5196, 1
  %5198 = add i64 %5158, %5197
  %5199 = load i16, i16* %CX.i56, align 2
  %5200 = add i64 %5099, 76
  store i64 %5200, i64* %3, align 8
  %5201 = inttoptr i64 %5198 to i16*
  store i16 %5199, i16* %5201, align 2
  %5202 = load i64, i64* %RBP.i, align 8
  %5203 = add i64 %5202, -32
  %5204 = load i64, i64* %3, align 8
  %5205 = add i64 %5204, 3
  store i64 %5205, i64* %3, align 8
  %5206 = inttoptr i64 %5203 to i32*
  %5207 = load i32, i32* %5206, align 4
  %5208 = add i32 %5207, 1
  %5209 = zext i32 %5208 to i64
  store i64 %5209, i64* %RAX.i1789, align 8
  %5210 = icmp eq i32 %5207, -1
  %5211 = icmp eq i32 %5208, 0
  %5212 = or i1 %5210, %5211
  %5213 = zext i1 %5212 to i8
  store i8 %5213, i8* %12, align 1
  %5214 = and i32 %5208, 255
  %5215 = tail call i32 @llvm.ctpop.i32(i32 %5214)
  %5216 = trunc i32 %5215 to i8
  %5217 = and i8 %5216, 1
  %5218 = xor i8 %5217, 1
  store i8 %5218, i8* %13, align 1
  %5219 = xor i32 %5208, %5207
  %5220 = lshr i32 %5219, 4
  %5221 = trunc i32 %5220 to i8
  %5222 = and i8 %5221, 1
  store i8 %5222, i8* %14, align 1
  %5223 = zext i1 %5211 to i8
  store i8 %5223, i8* %15, align 1
  %5224 = lshr i32 %5208, 31
  %5225 = trunc i32 %5224 to i8
  store i8 %5225, i8* %16, align 1
  %5226 = lshr i32 %5207, 31
  %5227 = xor i32 %5224, %5226
  %5228 = add nuw nsw i32 %5227, %5224
  %5229 = icmp eq i32 %5228, 2
  %5230 = zext i1 %5229 to i8
  store i8 %5230, i8* %17, align 1
  %5231 = add i64 %5204, 9
  store i64 %5231, i64* %3, align 8
  store i32 %5208, i32* %5206, align 4
  %5232 = load i64, i64* %3, align 8
  %5233 = add i64 %5232, -1318
  store i64 %5233, i64* %3, align 8
  br label %block_.L_441e6e

block_.L_442399:                                  ; preds = %block_.L_441e6e
  %5234 = add i64 %3280, -28
  %5235 = add i64 %3309, 8
  store i64 %5235, i64* %3, align 8
  %5236 = inttoptr i64 %5234 to i32*
  %5237 = load i32, i32* %5236, align 4
  %5238 = add i32 %5237, 1
  %5239 = zext i32 %5238 to i64
  store i64 %5239, i64* %RAX.i1789, align 8
  %5240 = icmp eq i32 %5237, -1
  %5241 = icmp eq i32 %5238, 0
  %5242 = or i1 %5240, %5241
  %5243 = zext i1 %5242 to i8
  store i8 %5243, i8* %12, align 1
  %5244 = and i32 %5238, 255
  %5245 = tail call i32 @llvm.ctpop.i32(i32 %5244)
  %5246 = trunc i32 %5245 to i8
  %5247 = and i8 %5246, 1
  %5248 = xor i8 %5247, 1
  store i8 %5248, i8* %13, align 1
  %5249 = xor i32 %5238, %5237
  %5250 = lshr i32 %5249, 4
  %5251 = trunc i32 %5250 to i8
  %5252 = and i8 %5251, 1
  store i8 %5252, i8* %14, align 1
  %5253 = zext i1 %5241 to i8
  store i8 %5253, i8* %15, align 1
  %5254 = lshr i32 %5238, 31
  %5255 = trunc i32 %5254 to i8
  store i8 %5255, i8* %16, align 1
  %5256 = lshr i32 %5237, 31
  %5257 = xor i32 %5254, %5256
  %5258 = add nuw nsw i32 %5257, %5254
  %5259 = icmp eq i32 %5258, 2
  %5260 = zext i1 %5259 to i8
  store i8 %5260, i8* %17, align 1
  %5261 = add i64 %3309, 14
  store i64 %5261, i64* %3, align 8
  store i32 %5238, i32* %5236, align 4
  %5262 = load i64, i64* %3, align 8
  %5263 = add i64 %5262, -1354
  store i64 %5263, i64* %3, align 8
  br label %block_.L_441e5d

block_.L_4423ac:                                  ; preds = %block_.L_441e5d
  %5264 = add i64 %3275, 5
  store i64 %5264, i64* %3, align 8
  br label %block_.L_4423b1

block_.L_4423b1:                                  ; preds = %block_.L_4423ac, %block_.L_441e07
  %5265 = phi i64 [ %5264, %block_.L_4423ac ], [ %3230, %block_.L_441e07 ]
  %5266 = load i64, i64* %6, align 8
  %5267 = add i64 %5266, 352
  store i64 %5267, i64* %6, align 8
  %5268 = icmp ugt i64 %5266, -353
  %5269 = zext i1 %5268 to i8
  store i8 %5269, i8* %12, align 1
  %5270 = trunc i64 %5267 to i32
  %5271 = and i32 %5270, 255
  %5272 = tail call i32 @llvm.ctpop.i32(i32 %5271)
  %5273 = trunc i32 %5272 to i8
  %5274 = and i8 %5273, 1
  %5275 = xor i8 %5274, 1
  store i8 %5275, i8* %13, align 1
  %5276 = xor i64 %5267, %5266
  %5277 = lshr i64 %5276, 4
  %5278 = trunc i64 %5277 to i8
  %5279 = and i8 %5278, 1
  store i8 %5279, i8* %14, align 1
  %5280 = icmp eq i64 %5267, 0
  %5281 = zext i1 %5280 to i8
  store i8 %5281, i8* %15, align 1
  %5282 = lshr i64 %5267, 63
  %5283 = trunc i64 %5282 to i8
  store i8 %5283, i8* %16, align 1
  %5284 = lshr i64 %5266, 63
  %5285 = xor i64 %5282, %5284
  %5286 = add nuw nsw i64 %5285, %5282
  %5287 = icmp eq i64 %5286, 2
  %5288 = zext i1 %5287 to i8
  store i8 %5288, i8* %17, align 1
  %5289 = add i64 %5265, 8
  store i64 %5289, i64* %3, align 8
  %5290 = add i64 %5266, 360
  %5291 = inttoptr i64 %5267 to i64*
  %5292 = load i64, i64* %5291, align 8
  store i64 %5292, i64* %RBP.i, align 8
  store i64 %5290, i64* %6, align 8
  %5293 = add i64 %5265, 9
  store i64 %5293, i64* %3, align 8
  %5294 = inttoptr i64 %5290 to i64*
  %5295 = load i64, i64* %5294, align 8
  store i64 %5295, i64* %3, align 8
  %5296 = add i64 %5266, 368
  store i64 %5296, i64* %6, align 8
  ret %struct.Memory* %207
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
define %struct.Memory* @routine_subq__0x160___rsp(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %3 = load i64, i64* %RSP, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 7
  store i64 %5, i64* %PC, align 8
  %6 = add i64 %3, -352
  store i64 %6, i64* %RSP, align 8
  %7 = icmp ult i64 %3, 352
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
define %struct.Memory* @routine_movq_0x3758__rdi____rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %RDI, align 8
  %4 = add i64 %3, 14168
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RDI, align 8
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
define %struct.Memory* @routine_movslq_0xc__rdx____rdx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %RDX, align 8
  %4 = add i64 %3, 12
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
define %struct.Memory* @routine_addq__rdx___rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %RDI, align 8
  %4 = load i64, i64* %RDX, align 8
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

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__0x0__0x48__rdi_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %RDI, align 8
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
define %struct.Memory* @routine_movb__cl__MINUS0x111__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %CL = bitcast %union.anon* %3 to i8*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -273
  %6 = load i8, i8* %CL, align 1
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i8*
  store i8 %6, i8* %9, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jne_.L_4415c3(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_cmpl__0x0__0x18__rcx_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
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
define %struct.Memory* @routine_movb__al__MINUS0x112__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %AL = bitcast %union.anon* %3 to i8*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -274
  %6 = load i8, i8* %AL, align 1
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i8*
  store i8 %6, i8* %9, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_je_.L_4415b7(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_cmpl__0x3__0x18__rax_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
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
define %struct.Memory* @routine_movb__cl__MINUS0x112__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %CL = bitcast %union.anon* %3 to i8*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -274
  %6 = load i8, i8* %CL, align 1
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i8*
  store i8 %6, i8* %9, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movb_MINUS0x112__rbp____al(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %AL = bitcast %union.anon* %3 to i8*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -274
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 6
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %5 to i8*
  %9 = load i8, i8* %8, align 1
  store i8 %9, i8* %AL, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movb__al__MINUS0x111__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %AL = bitcast %union.anon* %3 to i8*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -273
  %6 = load i8, i8* %AL, align 1
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i8*
  store i8 %6, i8* %9, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movb_MINUS0x111__rbp____al(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %AL = bitcast %union.anon* %3 to i8*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -273
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 6
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %5 to i8*
  %9 = load i8, i8* %8, align 1
  store i8 %9, i8* %AL, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__0x4b8e40___rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x4b8e40_type* @G__0x4b8e40 to i64), i64* %RCX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0xc0___edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 5
  store i64 %4, i64* %PC, align 8
  store i64 192, i64* %RDX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_leaq_MINUS0x100__rbp____rsi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -256
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  store i64 %4, i64* %RSI, align 8
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
define %struct.Memory* @routine_movzbl__al___edi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %AL = bitcast %union.anon* %3 to i8*
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %4 = load i8, i8* %AL, align 1
  %5 = zext i8 %4 to i64
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 3
  store i64 %7, i64* %PC, align 8
  store i64 %5, i64* %RDI, align 8
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
define %struct.Memory* @routine_movq_0x6cb900___r8(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %R8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 8
  store i64 %4, i64* %PC, align 8
  %5 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*), align 8
  store i64 %5, i64* %R8, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_0x11bfc__r8____edi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %R8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0, i32 0
  %3 = load i64, i64* %R8, align 8
  %4 = add i64 %3, 72700
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = zext i32 %8 to i64
  store i64 %9, i64* %RDI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_subl__0x1___edi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %RDI, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 3
  store i64 %5, i64* %PC, align 8
  %6 = trunc i64 %3 to i32
  %7 = add i32 %6, -1
  %8 = zext i32 %7 to i64
  store i64 %8, i64* %RDI, align 8
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
define %struct.Memory* @routine_movq__rsi___rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %RSI, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 3
  store i64 %5, i64* %PC, align 8
  store i64 %3, i64* %RDI, align 8
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_callq_.memcpy_plt(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl__0x0____rcx_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = bitcast i64* %RCX to i32**
  %4 = load i32*, i32** %3, align 8
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 6
  store i64 %6, i64* %PC, align 8
  store i32 0, i32* %4, align 4
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

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__0x2__MINUS0xc__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
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
define %struct.Memory* @routine_jge_.L_441e07(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jge_.L_44170a(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_cmpl_0x11c04__rcx____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %4 = load i32, i32* %EAX, align 4
  %5 = load i64, i64* %RCX, align 8
  %6 = add i64 %5, 72708
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
define %struct.Memory* @routine_jge_.L_4416f7(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_leaq_MINUS0x2a__rbp____rsi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -42
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  store i64 %4, i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_leaq_MINUS0x24__rbp____rdx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -36
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  store i64 %4, i64* %RDX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_leaq_MINUS0x28__rbp____rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -40
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  store i64 %4, i64* %RCX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_leaq_MINUS0x2c__rbp____r8(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %R8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -44
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  store i64 %4, i64* %R8, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_leaq_MINUS0x2e__rbp____r9(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %R9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 19, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -46
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  store i64 %4, i64* %R9, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_leaq_MINUS0x100__rbp____rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -256
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  store i64 %4, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movslq_MINUS0x38__rbp____rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -56
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

; Function Attrs: nounwind
define %struct.Memory* @routine_addq__rdi___rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %RDI, align 8
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
define %struct.Memory* @routine_movl_MINUS0x14__rbp____r10d(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 21, i32 0, i32 0
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

; Function Attrs: nounwind
define %struct.Memory* @routine_sarl__0x2___r10d(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 21, i32 0
  %R10D = bitcast %union.anon* %3 to i32*
  %4 = getelementptr inbounds %union.anon, %union.anon* %3, i64 0, i32 0
  %5 = load i32, i32* %R10D, align 4
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 4
  store i64 %7, i64* %PC, align 8
  %8 = sext i32 %5 to i64
  %9 = ashr i64 %8, 1
  %10 = lshr i64 %9, 1
  %11 = trunc i64 %9 to i8
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
  %27 = lshr i64 %9, 32
  %28 = trunc i64 %27 to i8
  %29 = and i8 %28, 1
  store i8 %29, i8* %26, align 1
  %30 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %30, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movslq__r10d___rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 21, i32 0
  %R10D = bitcast %union.anon* %3 to i32*
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %4 = load i32, i32* %R10D, align 4
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 3
  store i64 %6, i64* %PC, align 8
  %7 = sext i32 %4 to i64
  store i64 %7, i64* %RDI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_shlq__0x4___rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %RDI, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 4
  store i64 %5, i64* %PC, align 8
  %6 = shl i64 %3, 4
  store i64 %6, i64* %RDI, align 8
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
define %struct.Memory* @routine_movl_MINUS0x18__rbp____r10d(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 21, i32 0, i32 0
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
define %struct.Memory* @routine_movl___rax__rdi_4____r10d(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 21, i32 0, i32 0
  %4 = load i64, i64* %RAX, align 8
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
define %struct.Memory* @routine_movl__r10d__MINUS0x10__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 21, i32 0
  %R10D = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -16
  %6 = load i32, i32* %R10D, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 4
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x10__rbp____edi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -16
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
define %struct.Memory* @routine_callq_.SetModesAndRefframe(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl_MINUS0xc__rbp____edi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -12
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
define %struct.Memory* @routine_movl_MINUS0x18__rbp____esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -24
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
define %struct.Memory* @routine_movl_MINUS0x14__rbp____edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -20
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
define %struct.Memory* @routine_movswl_MINUS0x2a__rbp____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -42
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i16*
  %8 = load i16, i16* %7, align 2
  %9 = sext i16 %8 to i64
  %10 = and i64 %9, 4294967295
  store i64 %10, i64* %RCX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x24__rbp____r8d(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -36
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
define %struct.Memory* @routine_movl_MINUS0x28__rbp____r9d(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 19, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -40
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
define %struct.Memory* @routine_movw_MINUS0x2c__rbp____r11w(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 23, i32 0
  %R11W = bitcast %union.anon* %3 to i16*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -44
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 5
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %5 to i16*
  %9 = load i16, i16* %8, align 2
  store i16 %9, i16* %R11W, align 2
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movswl__r11w___r10d(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 23, i32 0
  %R11W = bitcast %union.anon* %3 to i16*
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 21, i32 0, i32 0
  %5 = load i16, i16* %R11W, align 2
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 4
  store i64 %7, i64* %PC, align 8
  %8 = sext i16 %5 to i64
  %9 = and i64 %8, 4294967295
  store i64 %9, i64* %4, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__r10d____rsp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 21, i32 0
  %R10D = bitcast %union.anon* %3 to i32*
  %RSP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %4 = bitcast i64* %RSP to i32**
  %5 = load i32*, i32** %4, align 8
  %6 = load i32, i32* %R10D, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 4
  store i64 %8, i64* %PC, align 8
  store i32 %6, i32* %5, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movswl_MINUS0x2e__rbp____r10d(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 21, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -46
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 5
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %5 to i16*
  %9 = load i16, i16* %8, align 2
  %10 = sext i16 %9 to i64
  %11 = and i64 %10, 4294967295
  store i64 %11, i64* %3, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__r10d__0x8__rsp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 21, i32 0
  %R10D = bitcast %union.anon* %3 to i32*
  %RSP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %4 = load i64, i64* %RSP, align 8
  %5 = add i64 %4, 8
  %6 = load i32, i32* %R10D, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 5
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_callq_.ChromaPrediction4x4(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jmpq_.L_44164e(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_4416fc(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
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
define %struct.Memory* @routine_jmpq_.L_441630(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__0x0__0x11ac8__rax_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = add i64 %3, 72392
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
define %struct.Memory* @routine_je_.L_44185c(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl__0x0__MINUS0x1c__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -28
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  store i32 0, i32* %7, align 4
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
define %struct.Memory* @routine_jge_.L_441857(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl__0x0__MINUS0x20__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -32
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  store i32 0, i32* %7, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x20__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -32
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
define %struct.Memory* @routine_jge_.L_441844(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jne_.L_4417dd(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_addq__0x3138___rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 6
  store i64 %5, i64* %PC, align 8
  %6 = add i64 %3, 12600
  store i64 %6, i64* %RAX, align 8
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
define %struct.Memory* @routine_movslq_MINUS0x20__rbp____rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -32
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
define %struct.Memory* @routine_movslq_MINUS0x1c__rbp____rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -28
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
define %struct.Memory* @routine_movw___rax__rcx_2____dx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %DX = bitcast %union.anon* %3 to i16*
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %4 = load i64, i64* %RAX, align 8
  %5 = load i64, i64* %RCX, align 8
  %6 = shl i64 %5, 1
  %7 = add i64 %6, %4
  %8 = load i64, i64* %PC, align 8
  %9 = add i64 %8, 4
  store i64 %9, i64* %PC, align 8
  %10 = inttoptr i64 %7 to i16*
  %11 = load i16, i16* %10, align 2
  store i16 %11, i16* %DX, align 2
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
define %struct.Memory* @routine_movq_0x1940__rax____rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = add i64 %3, 6464
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
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
define %struct.Memory* @routine_movl_0xa4__rcx____esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = add i64 %3, 164
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
define %struct.Memory* @routine_addl_MINUS0x1c__rbp____esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RSI, align 8
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -28
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
define %struct.Memory* @routine_movl_0xa0__rcx____esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = add i64 %3, 160
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
define %struct.Memory* @routine_addl_MINUS0x20__rbp____esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RSI, align 8
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -32
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
define %struct.Memory* @routine_movw__dx____rax__rcx_2_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %DX = bitcast %union.anon* %3 to i16*
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %4 = load i64, i64* %RAX, align 8
  %5 = load i64, i64* %RCX, align 8
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
define %struct.Memory* @routine_jmpq_.L_441831(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__0x0__MINUS0xc__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
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
define %struct.Memory* @routine_jne_.L_44180c(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movq__0x6f8f20___rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x6f8f20_type* @G__0x6f8f20 to i64), i64* %RAX, align 8
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
define %struct.Memory* @routine_jmpq_.L_44182c(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_441836(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jmpq_.L_441744(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_441849(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__eax__MINUS0x1c__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -28
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_441726(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_441bc5(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__0x0__MINUS0x34__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -52
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
define %struct.Memory* @routine_je_.L_4418e4(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jne_.L_4418e4(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_cmpl__0x8__MINUS0x1c__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
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
define %struct.Memory* @routine_jge_.L_4418df(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_cmpl__0x8__MINUS0x20__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -32
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
define %struct.Memory* @routine_jge_.L_4418cc(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jmpq_.L_441890(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_4418d1(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_44187f(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_441bc0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_je_.L_441a2b(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jge_.L_441a26(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jge_.L_441a13(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jne_.L_4419ac(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jmpq_.L_441a00(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jne_.L_4419db(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jmpq_.L_4419fb(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_441a05(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_441913(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_441a18(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_4418f5(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_441bbb(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jge_.L_441bb6(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jge_.L_441ba3(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jne_.L_441b04(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movq_0x6f6f90___rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 8
  store i64 %4, i64* %PC, align 8
  %5 = load i64, i64* bitcast (%G_0x6f6f90_type* @G_0x6f6f90 to i64*), align 8
  store i64 %5, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_0xb4__rcx____edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = add i64 %3, 180
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
define %struct.Memory* @routine_addl_MINUS0x1c__rbp____edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RDX, align 8
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -28
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
define %struct.Memory* @routine_addl_MINUS0x20__rbp____edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RDX, align 8
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -32
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
define %struct.Memory* @routine_movzwl___rax__rcx_2____edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
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
  %11 = zext i16 %10 to i64
  store i64 %11, i64* %RDX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movzwl___rax__rcx_2____esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %RCX, align 8
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
define %struct.Memory* @routine_movl__edx____rax__rcx_4_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %EDX = bitcast %union.anon* %3 to i32*
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %4 = load i64, i64* %RAX, align 8
  %5 = load i64, i64* %RCX, align 8
  %6 = shl i64 %5, 2
  %7 = add i64 %6, %4
  %8 = load i32, i32* %EDX, align 4
  %9 = load i64, i64* %PC, align 8
  %10 = add i64 %9, 3
  store i64 %10, i64* %PC, align 8
  %11 = inttoptr i64 %7 to i32*
  store i32 %8, i32* %11, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_441b90(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jne_.L_441b4f(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jmpq_.L_441b8b(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
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
define %struct.Memory* @routine_jmpq_.L_441b95(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_441a50(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_441ba8(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_441a32(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_je_.L_441bfa(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jne_.L_441bfa(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl___rax____esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = bitcast i64* %RAX to i32**
  %4 = load i32*, i32** %3, align 8
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 2
  store i64 %6, i64* %PC, align 8
  %7 = load i32, i32* %4, align 4
  %8 = zext i32 %7 to i64
  store i64 %8, i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_callq_.dct_chroma_sp(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jmpq_.L_441df4(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jne_.L_441def(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jne_.L_441cb8(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_je_.L_441cb8(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jne_.L_441cd1(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jmpq_.L_441ce5(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_je_.L_441dea(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jge_.L_441de5(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jge_.L_441dd2(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jne_.L_441d82(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movslq_MINUS0x1c__rbp____rdx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -28
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
define %struct.Memory* @routine_jmpq_.L_441dbf(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_441dc4(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_441d1f(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_441dd7(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_441d01(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_441dea(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_441def(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_441df9(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jmpq_.L_441618(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
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
define %struct.Memory* @routine_shll__0x4___ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 3
  store i64 %5, i64* %PC, align 8
  %.tr = trunc i64 %3 to i32
  %6 = shl i32 %.tr, 4
  %7 = zext i32 %6 to i64
  store i64 %7, i64* %RCX, align 8
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
define %struct.Memory* @routine_addl_0x1cc__rax____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = load i64, i64* %RAX, align 8
  %5 = add i64 %4, 460
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
define %struct.Memory* @routine_movl__ecx__0x1cc__rax_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %ECX = bitcast %union.anon* %3 to i32*
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %4 = load i64, i64* %RAX, align 8
  %5 = add i64 %4, 460
  %6 = load i32, i32* %ECX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_je_.L_4423b1(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_cmpl__0x10__MINUS0x1c__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
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
define %struct.Memory* @routine_jge_.L_4423ac(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_cmpl__0x10__MINUS0x20__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -32
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
define %struct.Memory* @routine_jge_.L_442399(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movq__0x725610___rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x725610_type* @G__0x725610 to i64), i64* %RCX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_addq__0x400___rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 7
  store i64 %5, i64* %PC, align 8
  %6 = add i64 %3, 1024
  store i64 %6, i64* %RCX, align 8
  %7 = icmp ugt i64 %3, -1025
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
define %struct.Memory* @routine_movq__0x6f8f20___rdx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x6f8f20_type* @G__0x6f8f20 to i64), i64* %RDX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__0x6d2ec0___rsi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x6d2ec0_type* @G__0x6d2ec0 to i64), i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__0x722ff0___rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x722ff0_type* @G__0x722ff0 to i64), i64* %RDI, align 8
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

; Function Attrs: nounwind
define %struct.Memory* @routine_shlq__0x6___r8(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %R8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0, i32 0
  %3 = load i64, i64* %R8, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 4
  store i64 %5, i64* %PC, align 8
  %6 = shl i64 %3, 6
  store i64 %6, i64* %R8, align 8
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
define %struct.Memory* @routine_addq__r8___rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %R8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0, i32 0
  %3 = load i64, i64* %RDI, align 8
  %4 = load i64, i64* %R8, align 8
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
define %struct.Memory* @routine_movslq_MINUS0x1c__rbp____r8(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %R8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -28
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
define %struct.Memory* @routine_movl___rdi__r8_4____r9d(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %R8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 19, i32 0, i32 0
  %4 = load i64, i64* %RDI, align 8
  %5 = load i64, i64* %R8, align 8
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
define %struct.Memory* @routine_movq__rsi___r8(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %R8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0, i32 0
  %3 = load i64, i64* %RSI, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 3
  store i64 %5, i64* %PC, align 8
  store i64 %3, i64* %R8, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_addq__rdi___r8(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %R8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0, i32 0
  %3 = load i64, i64* %R8, align 8
  %4 = load i64, i64* %RDI, align 8
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
define %struct.Memory* @routine_movslq_MINUS0x1c__rbp____rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -28
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
define %struct.Memory* @routine_movl___r8__rdi_4____r10d(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %R8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 21, i32 0, i32 0
  %4 = load i64, i64* %R8, align 8
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

; Function Attrs: nounwind
define %struct.Memory* @routine_sarl__0x1___r10d(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 21, i32 0
  %R10D = bitcast %union.anon* %3 to i32*
  %4 = getelementptr inbounds %union.anon, %union.anon* %3, i64 0, i32 0
  %5 = load i32, i32* %R10D, align 4
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
define %struct.Memory* @routine_subl__r10d___r9d(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
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
define %struct.Memory* @routine_movl__r9d__MINUS0x110__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 19, i32 0
  %R9D = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -272
  %6 = load i32, i32* %R9D, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 7
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
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
define %struct.Memory* @routine_movl___rsi__rdi_4____r9d(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 19, i32 0, i32 0
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

; Function Attrs: nounwind
define %struct.Memory* @routine_addl_MINUS0x110__rbp____r9d(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 19, i32 0
  %R9D = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = getelementptr inbounds %union.anon, %union.anon* %3, i64 0, i32 0
  %5 = load i32, i32* %R9D, align 4
  %6 = load i64, i64* %RBP, align 8
  %7 = add i64 %6, -272
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
define %struct.Memory* @routine_movl__r9d__MINUS0x108__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 19, i32 0
  %R9D = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -264
  %6 = load i32, i32* %R9D, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 7
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x110__rbp____r9d(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 19, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -272
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
define %struct.Memory* @routine_movslq_MINUS0x1c__rbp____rsi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -28
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
define %struct.Memory* @routine_movl___rdi__rsi_4____r10d(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 21, i32 0, i32 0
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__r9d__MINUS0x10c__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 19, i32 0
  %R9D = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -268
  %6 = load i32, i32* %R9D, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 7
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x10c__rbp____r9d(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 19, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -268
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

; Function Attrs: nounwind
define %struct.Memory* @routine_addl___rdx__rsi_4____r9d(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 19, i32 0
  %R9D = bitcast %union.anon* %3 to i32*
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %4 = getelementptr inbounds %union.anon, %union.anon* %3, i64 0, i32 0
  %5 = load i32, i32* %R9D, align 4
  %6 = load i64, i64* %RDX, align 8
  %7 = load i64, i64* %RSI, align 8
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
define %struct.Memory* @routine_movl__r9d__MINUS0x104__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 19, i32 0
  %R9D = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -260
  %6 = load i32, i32* %R9D, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 7
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_0x11bf0__rdx____r9d(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 19, i32 0, i32 0
  %4 = load i64, i64* %RDX, align 8
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
define %struct.Memory* @routine_movl_MINUS0x10c__rbp____r10d(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 21, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -268
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
define %struct.Memory* @routine_addl___rcx__rdx_4____r10d(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 21, i32 0
  %R10D = bitcast %union.anon* %3 to i32*
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %4 = getelementptr inbounds %union.anon, %union.anon* %3, i64 0, i32 0
  %5 = load i32, i32* %R10D, align 4
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

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__r10d___eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 21, i32 0
  %R10D = bitcast %union.anon* %4 to i32*
  %5 = load i32, i32* %EAX, align 4
  %6 = load i32, i32* %R10D, align 4
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
define %struct.Memory* @routine_movl__r9d__MINUS0x118__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 19, i32 0
  %R9D = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -280
  %6 = load i32, i32* %R9D, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 7
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jle_.L_441f93(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_441fc1(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__0x725610___rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x725610_type* @G__0x725610 to i64), i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_addq__0x400___rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 6
  store i64 %5, i64* %PC, align 8
  %6 = add i64 %3, 1024
  store i64 %6, i64* %RAX, align 8
  %7 = icmp ugt i64 %3, -1025
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
define %struct.Memory* @routine_movl_MINUS0x10c__rbp____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -268
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
define %struct.Memory* @routine_addl___rax__rdx_4____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = load i64, i64* %RAX, align 8
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
  store i64 %14, i64* %RCX, align 8
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
define %struct.Memory* @routine_movl__ecx__MINUS0x11c__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %ECX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -284
  %6 = load i32, i32* %ECX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x11c__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -284
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
define %struct.Memory* @routine_movl_MINUS0x118__rbp____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -280
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
define %struct.Memory* @routine_jge_.L_441fee(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl__ecx__MINUS0x120__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %ECX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -288
  %6 = load i32, i32* %ECX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_442068(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x10c__rbp____edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -268
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

; Function Attrs: nounwind
define %struct.Memory* @routine_addl___rcx__rsi_4____edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %RDX, align 8
  %4 = load i64, i64* %RCX, align 8
  %5 = load i64, i64* %RSI, align 8
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
  store i64 %14, i64* %RDX, align 8
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
define %struct.Memory* @routine_jle_.L_44202e(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl__eax__MINUS0x124__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -292
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_44205c(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__ecx__MINUS0x124__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %ECX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -292
  %6 = load i32, i32* %ECX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x124__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -292
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
define %struct.Memory* @routine_movl__eax__MINUS0x120__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -288
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x120__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -288
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
define %struct.Memory* @routine_movq__0x725610___rdx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x725610_type* @G__0x725610 to i64), i64* %RDX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movw__ax___si(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %AX = bitcast %union.anon* %3 to i16*
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0
  %SI = bitcast %union.anon* %4 to i16*
  %5 = load i16, i16* %AX, align 2
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 3
  store i64 %7, i64* %PC, align 8
  store i16 %5, i16* %SI, align 2
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_0x70fcf0___rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 8
  store i64 %4, i64* %PC, align 8
  %5 = load i64, i64* bitcast (%G_0x70fcf0_type* @G_0x70fcf0 to i64*), align 8
  store i64 %5, i64* %RDI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_0x1940__rdi____rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %RDI, align 8
  %4 = add i64 %3, 6464
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RDI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq___rdi____rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = bitcast i64* %RDI to i64**
  %4 = load i64*, i64** %3, align 8
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 3
  store i64 %6, i64* %PC, align 8
  %7 = load i64, i64* %4, align 8
  store i64 %7, i64* %RDI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_0x9c__r8____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %R8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0, i32 0
  %3 = load i64, i64* %R8, align 8
  %4 = add i64 %3, 156
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = zext i32 %8 to i64
  store i64 %9, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_addl_MINUS0x1c__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -28
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
define %struct.Memory* @routine_movslq__eax___r8(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %R8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0, i32 0
  %4 = load i32, i32* %EAX, align 4
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 3
  store i64 %6, i64* %PC, align 8
  %7 = sext i32 %4 to i64
  store i64 %7, i64* %R8, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq___rdi__r8_8____rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %R8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0, i32 0
  %3 = load i64, i64* %RDI, align 8
  %4 = load i64, i64* %R8, align 8
  %5 = shl i64 %4, 3
  %6 = add i64 %5, %3
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 4
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %6 to i64*
  %10 = load i64, i64* %9, align 8
  store i64 %10, i64* %RDI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_0x98__r8____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %R8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0, i32 0
  %3 = load i64, i64* %R8, align 8
  %4 = add i64 %3, 152
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = zext i32 %8 to i64
  store i64 %9, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_addl_MINUS0x20__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -32
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
define %struct.Memory* @routine_movw__si____rdi__r8_2_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0
  %SI = bitcast %union.anon* %3 to i16*
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %R8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0, i32 0
  %4 = load i64, i64* %RDI, align 8
  %5 = load i64, i64* %R8, align 8
  %6 = shl i64 %5, 1
  %7 = add i64 %6, %4
  %8 = load i16, i16* %SI, align 2
  %9 = load i64, i64* %PC, align 8
  %10 = add i64 %9, 5
  store i64 %10, i64* %PC, align 8
  %11 = inttoptr i64 %7 to i16*
  store i16 %8, i16* %11, align 2
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_0x11bec__rdi____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %RDI, align 8
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
define %struct.Memory* @routine_movl_MINUS0x108__rbp____r9d(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 19, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -264
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

; Function Attrs: nounwind
define %struct.Memory* @routine_addl___rdx__rdi_4____r9d(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 19, i32 0
  %R9D = bitcast %union.anon* %3 to i32*
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %4 = getelementptr inbounds %union.anon, %union.anon* %3, i64 0, i32 0
  %5 = load i32, i32* %R9D, align 4
  %6 = load i64, i64* %RDX, align 8
  %7 = load i64, i64* %RDI, align 8
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

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__r9d___ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %ECX = bitcast %union.anon* %3 to i32*
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 19, i32 0
  %R9D = bitcast %union.anon* %4 to i32*
  %5 = load i32, i32* %ECX, align 4
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
define %struct.Memory* @routine_jle_.L_442106(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jmpq_.L_44212e(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x108__rbp____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -264
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
define %struct.Memory* @routine_movl__ecx__MINUS0x12c__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %ECX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -300
  %6 = load i32, i32* %ECX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x12c__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -300
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
define %struct.Memory* @routine_movl_MINUS0x128__rbp____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -296
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
define %struct.Memory* @routine_jge_.L_44215b(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl__ecx__MINUS0x130__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %ECX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -304
  %6 = load i32, i32* %ECX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_4421c8(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x108__rbp____edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -264
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
define %struct.Memory* @routine_jle_.L_442194(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jmpq_.L_4421bc(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__ecx__MINUS0x134__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %ECX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -308
  %6 = load i32, i32* %ECX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x134__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -308
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
define %struct.Memory* @routine_movl__eax__MINUS0x130__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -304
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x130__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -304
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
define %struct.Memory* @routine_movq_0x1918__rdi____rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %RDI, align 8
  %4 = add i64 %3, 6424
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RDI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_0x11bf0__rdi____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %RDI, align 8
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
define %struct.Memory* @routine_movl_MINUS0x104__rbp____r9d(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 19, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -260
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
define %struct.Memory* @routine_movl__eax__MINUS0x138__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -312
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jle_.L_44226a(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl__eax__MINUS0x13c__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -316
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_442298(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_addq__0x800___rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 6
  store i64 %5, i64* %PC, align 8
  %6 = add i64 %3, 2048
  store i64 %6, i64* %RAX, align 8
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
define %struct.Memory* @routine_movl_MINUS0x104__rbp____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -260
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
define %struct.Memory* @routine_movl__ecx__MINUS0x13c__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %ECX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -316
  %6 = load i32, i32* %ECX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x13c__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -316
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
define %struct.Memory* @routine_movl_MINUS0x138__rbp____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -312
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
define %struct.Memory* @routine_jge_.L_4422c5(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl__ecx__MINUS0x140__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %ECX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -320
  %6 = load i32, i32* %ECX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_44233f(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
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
define %struct.Memory* @routine_movl_MINUS0x104__rbp____edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -260
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
define %struct.Memory* @routine_jle_.L_442305(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jmpq_.L_442333(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__ecx__MINUS0x144__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %ECX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -324
  %6 = load i32, i32* %ECX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x144__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -324
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
define %struct.Memory* @routine_movl__eax__MINUS0x140__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -320
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x140__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -320
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
define %struct.Memory* @routine_jmpq_.L_441e6e(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_44239e(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_441e5d(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_4423b1(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_addq__0x160___rsp(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %3 = load i64, i64* %RSP, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 7
  store i64 %5, i64* %PC, align 8
  %6 = add i64 %3, 352
  store i64 %6, i64* %RSP, align 8
  %7 = icmp ugt i64 %3, -353
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
