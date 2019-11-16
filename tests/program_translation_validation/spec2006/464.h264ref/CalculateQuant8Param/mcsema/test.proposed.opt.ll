; ModuleID = 'mcsema/test.proposed.inline.ll'
source_filename = "llvm-link"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu-elf"

%__bss_start_type = type <{ [8 x i8] }>
%G_0x6d1f9c_type = type <{ [2 x i8] }>
%G_0x6d1f9e_type = type <{ [2 x i8] }>
%G_0x6d4690_type = type <{ [8 x i8] }>
%G_0x722cb0_type = type <{ [8 x i8] }>
%G__0x4b9750_type = type <{ [8 x i8] }>
%G__0x4b9d50_type = type <{ [8 x i8] }>
%G__0x6cfc70_type = type <{ [8 x i8] }>
%G__0x6d0bc0_type = type <{ [8 x i8] }>
%G__0x6d12c0_type = type <{ [8 x i8] }>
%G__0x70f6e0_type = type <{ [8 x i8] }>
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
@G_0x6d1f9c = local_unnamed_addr global %G_0x6d1f9c_type zeroinitializer
@G_0x6d1f9e = local_unnamed_addr global %G_0x6d1f9e_type zeroinitializer
@G_0x6d4690 = local_unnamed_addr global %G_0x6d4690_type zeroinitializer
@G_0x722cb0 = local_unnamed_addr global %G_0x722cb0_type zeroinitializer
@G__0x4b9750 = global %G__0x4b9750_type zeroinitializer
@G__0x4b9d50 = global %G__0x4b9d50_type zeroinitializer
@G__0x6cfc70 = global %G__0x6cfc70_type zeroinitializer
@G__0x6d0bc0 = global %G__0x6d0bc0_type zeroinitializer
@G__0x6d12c0 = global %G__0x6d12c0_type zeroinitializer
@G__0x70f6e0 = global %G__0x70f6e0_type zeroinitializer

declare %struct.Memory* @__remill_error(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr

; Function Attrs: nounwind readnone
declare i32 @llvm.ctpop.i32(i32) #0

declare extern_weak x86_64_sysvcc i64 @memset(i64, i64, i64)

declare %struct.Memory* @__remill_function_call(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr

; Function Attrs: alwaysinline
define %struct.Memory* @CalculateQuant8Param(%struct.State* noalias, i64, %struct.Memory* noalias) local_unnamed_addr #1 {
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
  %11 = add i64 %7, -104
  store i64 %11, i64* %6, align 8
  %12 = icmp ult i64 %8, 96
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
  %39 = add i64 %7, -36
  %40 = add i64 %10, 14
  store i64 %40, i64* %3, align 8
  %41 = inttoptr i64 %39 to i32*
  store i32 0, i32* %41, align 4
  %42 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %RAX.i540 = getelementptr inbounds %union.anon, %union.anon* %42, i64 0, i32 0
  %43 = load i64, i64* %3, align 8
  %44 = load i64, i64* bitcast (%G_0x722cb0_type* @G_0x722cb0 to i64*), align 8
  store i64 %44, i64* %RAX.i540, align 8
  %45 = add i64 %44, 36
  %46 = add i64 %43, 12
  store i64 %46, i64* %3, align 8
  %47 = inttoptr i64 %45 to i32*
  %48 = load i32, i32* %47, align 4
  store i8 0, i8* %14, align 1
  %49 = and i32 %48, 255
  %50 = tail call i32 @llvm.ctpop.i32(i32 %49)
  %51 = trunc i32 %50 to i8
  %52 = and i8 %51, 1
  %53 = xor i8 %52, 1
  store i8 %53, i8* %21, align 1
  store i8 0, i8* %26, align 1
  %54 = icmp eq i32 %48, 0
  %55 = zext i1 %54 to i8
  store i8 %55, i8* %29, align 1
  %56 = lshr i32 %48, 31
  %57 = trunc i32 %56 to i8
  store i8 %57, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %.v103 = select i1 %54, i64 18, i64 48
  %58 = add i64 %43, %.v103
  store i64 %58, i64* %3, align 8
  br i1 %54, label %block_47a9c1, label %block_.L_47a9df

block_47a9c1:                                     ; preds = %entry
  %59 = load i64, i64* bitcast (%G_0x6d4690_type* @G_0x6d4690 to i64*), align 8
  store i64 %59, i64* %RAX.i540, align 8
  %60 = add i64 %59, 20
  %61 = add i64 %58, 12
  store i64 %61, i64* %3, align 8
  %62 = inttoptr i64 %60 to i32*
  %63 = load i32, i32* %62, align 4
  store i8 0, i8* %14, align 1
  %64 = and i32 %63, 255
  %65 = tail call i32 @llvm.ctpop.i32(i32 %64)
  %66 = trunc i32 %65 to i8
  %67 = and i8 %66, 1
  %68 = xor i8 %67, 1
  store i8 %68, i8* %21, align 1
  store i8 0, i8* %26, align 1
  %69 = icmp eq i32 %63, 0
  %70 = zext i1 %69 to i8
  store i8 %70, i8* %29, align 1
  %71 = lshr i32 %63, 31
  %72 = trunc i32 %71 to i8
  store i8 %72, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %.v114 = select i1 %69, i64 18, i64 30
  %73 = add i64 %58, %.v114
  store i64 %73, i64* %3, align 8
  br i1 %69, label %block_47a9d3, label %block_.L_47a9df

block_47a9d3:                                     ; preds = %block_47a9c1
  %74 = load i64, i64* %RBP.i, align 8
  %75 = add i64 %74, -28
  %76 = add i64 %73, 7
  store i64 %76, i64* %3, align 8
  %77 = inttoptr i64 %75 to i32*
  store i32 1, i32* %77, align 4
  %78 = load i64, i64* %3, align 8
  %79 = add i64 %78, 201
  br label %block_.L_47aaa3

block_.L_47a9df:                                  ; preds = %block_47a9c1, %entry
  %80 = phi i64 [ %73, %block_47a9c1 ], [ %58, %entry ]
  %RSI.i975 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  store i64 0, i64* %RSI.i975, align 8
  store i8 0, i8* %14, align 1
  store i8 1, i8* %21, align 1
  store i8 1, i8* %29, align 1
  store i8 0, i8* %32, align 1
  store i8 0, i8* %38, align 1
  store i8 0, i8* %26, align 1
  store i64 8, i64* %RAX.i540, align 8
  %RDX.i971 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  store i64 8, i64* %RDX.i971, align 8
  %RCX.i967 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %81 = load i64, i64* %RBP.i, align 8
  %82 = add i64 %81, -24
  store i64 %82, i64* %RCX.i967, align 8
  %RDI.i965 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  store i64 %82, i64* %RDI.i965, align 8
  %83 = add i64 %80, -498031
  %84 = add i64 %80, 21
  %85 = load i64, i64* %6, align 8
  %86 = add i64 %85, -8
  %87 = inttoptr i64 %86 to i64*
  store i64 %84, i64* %87, align 8
  store i64 %86, i64* %6, align 8
  store i64 %83, i64* %3, align 8
  %88 = tail call %struct.Memory* @__remill_function_call(%struct.State* nonnull %0, i64 ptrtoint (i64 (i64, i64, i64)* @memset to i64), %struct.Memory* %2)
  %89 = load i64, i64* %3, align 8
  %90 = load i64, i64* bitcast (%G_0x722cb0_type* @G_0x722cb0 to i64*), align 8
  store i64 %90, i64* %RCX.i967, align 8
  %91 = add i64 %90, 36
  %92 = add i64 %89, 12
  store i64 %92, i64* %3, align 8
  %93 = inttoptr i64 %91 to i32*
  %94 = load i32, i32* %93, align 4
  store i8 0, i8* %14, align 1
  %95 = and i32 %94, 255
  %96 = tail call i32 @llvm.ctpop.i32(i32 %95)
  %97 = trunc i32 %96 to i8
  %98 = and i8 %97, 1
  %99 = xor i8 %98, 1
  store i8 %99, i8* %21, align 1
  store i8 0, i8* %26, align 1
  %100 = icmp eq i32 %94, 0
  %101 = zext i1 %100 to i8
  store i8 %101, i8* %29, align 1
  %102 = lshr i32 %94, 31
  %103 = trunc i32 %102 to i8
  store i8 %103, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %.v104 = select i1 %100, i64 83, i64 18
  %104 = add i64 %89, %.v104
  store i64 %104, i64* %3, align 8
  br i1 %100, label %block_.L_47aa47, label %block_47aa06

block_47aa06:                                     ; preds = %block_.L_47a9df
  %105 = load i64, i64* %RBP.i, align 8
  %106 = add i64 %105, -4
  %107 = add i64 %104, 7
  store i64 %107, i64* %3, align 8
  %108 = inttoptr i64 %106 to i32*
  store i32 0, i32* %108, align 4
  %.pre = load i64, i64* %3, align 8
  br label %block_.L_47aa0d

block_.L_47aa0d:                                  ; preds = %block_47aa17, %block_47aa06
  %109 = phi i64 [ %211, %block_47aa17 ], [ %.pre, %block_47aa06 ]
  %110 = load i64, i64* %RBP.i, align 8
  %111 = add i64 %110, -4
  %112 = add i64 %109, 4
  store i64 %112, i64* %3, align 8
  %113 = inttoptr i64 %111 to i32*
  %114 = load i32, i32* %113, align 4
  %115 = add i32 %114, -2
  %116 = icmp ult i32 %114, 2
  %117 = zext i1 %116 to i8
  store i8 %117, i8* %14, align 1
  %118 = and i32 %115, 255
  %119 = tail call i32 @llvm.ctpop.i32(i32 %118)
  %120 = trunc i32 %119 to i8
  %121 = and i8 %120, 1
  %122 = xor i8 %121, 1
  store i8 %122, i8* %21, align 1
  %123 = xor i32 %115, %114
  %124 = lshr i32 %123, 4
  %125 = trunc i32 %124 to i8
  %126 = and i8 %125, 1
  store i8 %126, i8* %26, align 1
  %127 = icmp eq i32 %115, 0
  %128 = zext i1 %127 to i8
  store i8 %128, i8* %29, align 1
  %129 = lshr i32 %115, 31
  %130 = trunc i32 %129 to i8
  store i8 %130, i8* %32, align 1
  %131 = lshr i32 %114, 31
  %132 = xor i32 %129, %131
  %133 = add nuw nsw i32 %132, %131
  %134 = icmp eq i32 %133, 2
  %135 = zext i1 %134 to i8
  store i8 %135, i8* %38, align 1
  %136 = icmp ne i8 %130, 0
  %137 = xor i1 %136, %134
  %.v105 = select i1 %137, i64 10, i64 53
  %138 = add i64 %109, %.v105
  store i64 %138, i64* %3, align 8
  br i1 %137, label %block_47aa17, label %block_.L_47aa42

block_47aa17:                                     ; preds = %block_.L_47aa0d
  %139 = load i64, i64* bitcast (%G_0x722cb0_type* @G_0x722cb0 to i64*), align 8
  store i64 %139, i64* %RAX.i540, align 8
  %140 = add i64 %138, 11
  store i64 %140, i64* %3, align 8
  %141 = load i32, i32* %113, align 4
  %142 = add i32 %141, 6
  %143 = zext i32 %142 to i64
  store i64 %143, i64* %RCX.i967, align 8
  %144 = icmp ugt i32 %141, -7
  %145 = zext i1 %144 to i8
  store i8 %145, i8* %14, align 1
  %146 = and i32 %142, 255
  %147 = tail call i32 @llvm.ctpop.i32(i32 %146)
  %148 = trunc i32 %147 to i8
  %149 = and i8 %148, 1
  %150 = xor i8 %149, 1
  store i8 %150, i8* %21, align 1
  %151 = xor i32 %142, %141
  %152 = lshr i32 %151, 4
  %153 = trunc i32 %152 to i8
  %154 = and i8 %153, 1
  store i8 %154, i8* %26, align 1
  %155 = icmp eq i32 %142, 0
  %156 = zext i1 %155 to i8
  store i8 %156, i8* %29, align 1
  %157 = lshr i32 %142, 31
  %158 = trunc i32 %157 to i8
  store i8 %158, i8* %32, align 1
  %159 = lshr i32 %141, 31
  %160 = xor i32 %157, %159
  %161 = add nuw nsw i32 %160, %157
  %162 = icmp eq i32 %161, 2
  %163 = zext i1 %162 to i8
  store i8 %163, i8* %38, align 1
  %164 = sext i32 %142 to i64
  store i64 %164, i64* %RDX.i971, align 8
  %165 = shl nsw i64 %164, 2
  %166 = add nsw i64 %165, 40
  %167 = add i64 %166, %139
  %168 = add i64 %138, 21
  store i64 %168, i64* %3, align 8
  %169 = inttoptr i64 %167 to i32*
  %170 = load i32, i32* %169, align 4
  %171 = zext i32 %170 to i64
  store i64 %171, i64* %RCX.i967, align 8
  %172 = add i64 %138, 25
  store i64 %172, i64* %3, align 8
  %173 = load i32, i32* %113, align 4
  %174 = sext i32 %173 to i64
  store i64 %174, i64* %RAX.i540, align 8
  %175 = shl nsw i64 %174, 2
  %176 = add i64 %110, -24
  %177 = add i64 %176, %175
  %178 = add i64 %138, 29
  store i64 %178, i64* %3, align 8
  %179 = inttoptr i64 %177 to i32*
  store i32 %170, i32* %179, align 4
  %180 = load i64, i64* %RBP.i, align 8
  %181 = add i64 %180, -4
  %182 = load i64, i64* %3, align 8
  %183 = add i64 %182, 3
  store i64 %183, i64* %3, align 8
  %184 = inttoptr i64 %181 to i32*
  %185 = load i32, i32* %184, align 4
  %186 = add i32 %185, 1
  %187 = zext i32 %186 to i64
  store i64 %187, i64* %RAX.i540, align 8
  %188 = icmp eq i32 %185, -1
  %189 = icmp eq i32 %186, 0
  %190 = or i1 %188, %189
  %191 = zext i1 %190 to i8
  store i8 %191, i8* %14, align 1
  %192 = and i32 %186, 255
  %193 = tail call i32 @llvm.ctpop.i32(i32 %192)
  %194 = trunc i32 %193 to i8
  %195 = and i8 %194, 1
  %196 = xor i8 %195, 1
  store i8 %196, i8* %21, align 1
  %197 = xor i32 %186, %185
  %198 = lshr i32 %197, 4
  %199 = trunc i32 %198 to i8
  %200 = and i8 %199, 1
  store i8 %200, i8* %26, align 1
  %201 = zext i1 %189 to i8
  store i8 %201, i8* %29, align 1
  %202 = lshr i32 %186, 31
  %203 = trunc i32 %202 to i8
  store i8 %203, i8* %32, align 1
  %204 = lshr i32 %185, 31
  %205 = xor i32 %202, %204
  %206 = add nuw nsw i32 %205, %202
  %207 = icmp eq i32 %206, 2
  %208 = zext i1 %207 to i8
  store i8 %208, i8* %38, align 1
  %209 = add i64 %182, 9
  store i64 %209, i64* %3, align 8
  store i32 %186, i32* %184, align 4
  %210 = load i64, i64* %3, align 8
  %211 = add i64 %210, -48
  store i64 %211, i64* %3, align 8
  br label %block_.L_47aa0d

block_.L_47aa42:                                  ; preds = %block_.L_47aa0d
  %212 = add i64 %138, 5
  store i64 %212, i64* %3, align 8
  br label %block_.L_47aa47

block_.L_47aa47:                                  ; preds = %block_.L_47aa42, %block_.L_47a9df
  %213 = phi i64 [ %212, %block_.L_47aa42 ], [ %104, %block_.L_47a9df ]
  %214 = load i64, i64* bitcast (%G_0x6d4690_type* @G_0x6d4690 to i64*), align 8
  store i64 %214, i64* %RAX.i540, align 8
  %215 = add i64 %214, 20
  %216 = add i64 %213, 12
  store i64 %216, i64* %3, align 8
  %217 = inttoptr i64 %215 to i32*
  %218 = load i32, i32* %217, align 4
  store i8 0, i8* %14, align 1
  %219 = and i32 %218, 255
  %220 = tail call i32 @llvm.ctpop.i32(i32 %219)
  %221 = trunc i32 %220 to i8
  %222 = and i8 %221, 1
  %223 = xor i8 %222, 1
  store i8 %223, i8* %21, align 1
  store i8 0, i8* %26, align 1
  %224 = icmp eq i32 %218, 0
  %225 = zext i1 %224 to i8
  store i8 %225, i8* %29, align 1
  %226 = lshr i32 %218, 31
  %227 = trunc i32 %226 to i8
  store i8 %227, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %.v106 = select i1 %224, i64 87, i64 18
  %228 = add i64 %213, %.v106
  store i64 %228, i64* %3, align 8
  br i1 %224, label %block_.L_47aa9e, label %block_47aa59

block_47aa59:                                     ; preds = %block_.L_47aa47
  %229 = load i64, i64* %RBP.i, align 8
  %230 = add i64 %229, -4
  %231 = add i64 %228, 7
  store i64 %231, i64* %3, align 8
  %232 = inttoptr i64 %230 to i32*
  store i32 0, i32* %232, align 4
  %.pre86 = load i64, i64* %3, align 8
  br label %block_.L_47aa60

block_.L_47aa60:                                  ; preds = %block_47aa6a, %block_47aa59
  %233 = phi i64 [ %351, %block_47aa6a ], [ %.pre86, %block_47aa59 ]
  %234 = load i64, i64* %RBP.i, align 8
  %235 = add i64 %234, -4
  %236 = add i64 %233, 4
  store i64 %236, i64* %3, align 8
  %237 = inttoptr i64 %235 to i32*
  %238 = load i32, i32* %237, align 4
  %239 = add i32 %238, -2
  %240 = icmp ult i32 %238, 2
  %241 = zext i1 %240 to i8
  store i8 %241, i8* %14, align 1
  %242 = and i32 %239, 255
  %243 = tail call i32 @llvm.ctpop.i32(i32 %242)
  %244 = trunc i32 %243 to i8
  %245 = and i8 %244, 1
  %246 = xor i8 %245, 1
  store i8 %246, i8* %21, align 1
  %247 = xor i32 %239, %238
  %248 = lshr i32 %247, 4
  %249 = trunc i32 %248 to i8
  %250 = and i8 %249, 1
  store i8 %250, i8* %26, align 1
  %251 = icmp eq i32 %239, 0
  %252 = zext i1 %251 to i8
  store i8 %252, i8* %29, align 1
  %253 = lshr i32 %239, 31
  %254 = trunc i32 %253 to i8
  store i8 %254, i8* %32, align 1
  %255 = lshr i32 %238, 31
  %256 = xor i32 %253, %255
  %257 = add nuw nsw i32 %256, %255
  %258 = icmp eq i32 %257, 2
  %259 = zext i1 %258 to i8
  store i8 %259, i8* %38, align 1
  %260 = icmp ne i8 %254, 0
  %261 = xor i1 %260, %258
  %.v107 = select i1 %261, i64 10, i64 57
  %262 = add i64 %233, %.v107
  store i64 %262, i64* %3, align 8
  br i1 %261, label %block_47aa6a, label %block_.L_47aa99

block_47aa6a:                                     ; preds = %block_.L_47aa60
  %263 = load i64, i64* bitcast (%G_0x6d4690_type* @G_0x6d4690 to i64*), align 8
  store i64 %263, i64* %RAX.i540, align 8
  %264 = add i64 %262, 11
  store i64 %264, i64* %3, align 8
  %265 = load i32, i32* %237, align 4
  %266 = add i32 %265, 6
  %267 = zext i32 %266 to i64
  store i64 %267, i64* %RCX.i967, align 8
  %268 = icmp ugt i32 %265, -7
  %269 = zext i1 %268 to i8
  store i8 %269, i8* %14, align 1
  %270 = and i32 %266, 255
  %271 = tail call i32 @llvm.ctpop.i32(i32 %270)
  %272 = trunc i32 %271 to i8
  %273 = and i8 %272, 1
  %274 = xor i8 %273, 1
  store i8 %274, i8* %21, align 1
  %275 = xor i32 %266, %265
  %276 = lshr i32 %275, 4
  %277 = trunc i32 %276 to i8
  %278 = and i8 %277, 1
  store i8 %278, i8* %26, align 1
  %279 = icmp eq i32 %266, 0
  %280 = zext i1 %279 to i8
  store i8 %280, i8* %29, align 1
  %281 = lshr i32 %266, 31
  %282 = trunc i32 %281 to i8
  store i8 %282, i8* %32, align 1
  %283 = lshr i32 %265, 31
  %284 = xor i32 %281, %283
  %285 = add nuw nsw i32 %284, %281
  %286 = icmp eq i32 %285, 2
  %287 = zext i1 %286 to i8
  store i8 %287, i8* %38, align 1
  %288 = sext i32 %266 to i64
  store i64 %288, i64* %RDX.i971, align 8
  %289 = shl nsw i64 %288, 2
  %290 = add nsw i64 %289, 24
  %291 = add i64 %290, %263
  %292 = add i64 %262, 21
  store i64 %292, i64* %3, align 8
  %293 = inttoptr i64 %291 to i32*
  %294 = load i32, i32* %293, align 4
  %295 = zext i32 %294 to i64
  store i64 %295, i64* %RCX.i967, align 8
  %296 = add i64 %262, 25
  store i64 %296, i64* %3, align 8
  %297 = load i32, i32* %237, align 4
  %298 = sext i32 %297 to i64
  store i64 %298, i64* %RAX.i540, align 8
  %299 = shl nsw i64 %298, 2
  %300 = add nsw i64 %299, -24
  %301 = add i64 %300, %234
  %302 = add i64 %262, 29
  store i64 %302, i64* %3, align 8
  %303 = inttoptr i64 %301 to i32*
  %304 = load i32, i32* %303, align 4
  %305 = or i32 %304, %294
  %306 = zext i32 %305 to i64
  store i64 %306, i64* %RCX.i967, align 8
  store i8 0, i8* %14, align 1
  %307 = and i32 %305, 255
  %308 = tail call i32 @llvm.ctpop.i32(i32 %307)
  %309 = trunc i32 %308 to i8
  %310 = and i8 %309, 1
  %311 = xor i8 %310, 1
  store i8 %311, i8* %21, align 1
  %312 = icmp eq i32 %305, 0
  %313 = zext i1 %312 to i8
  store i8 %313, i8* %29, align 1
  %314 = lshr i32 %305, 31
  %315 = trunc i32 %314 to i8
  store i8 %315, i8* %32, align 1
  store i8 0, i8* %38, align 1
  store i8 0, i8* %26, align 1
  %316 = add i64 %234, -24
  %317 = add i64 %316, %299
  %318 = add i64 %262, 33
  store i64 %318, i64* %3, align 8
  %319 = inttoptr i64 %317 to i32*
  store i32 %305, i32* %319, align 4
  %320 = load i64, i64* %RBP.i, align 8
  %321 = add i64 %320, -4
  %322 = load i64, i64* %3, align 8
  %323 = add i64 %322, 3
  store i64 %323, i64* %3, align 8
  %324 = inttoptr i64 %321 to i32*
  %325 = load i32, i32* %324, align 4
  %326 = add i32 %325, 1
  %327 = zext i32 %326 to i64
  store i64 %327, i64* %RAX.i540, align 8
  %328 = icmp eq i32 %325, -1
  %329 = icmp eq i32 %326, 0
  %330 = or i1 %328, %329
  %331 = zext i1 %330 to i8
  store i8 %331, i8* %14, align 1
  %332 = and i32 %326, 255
  %333 = tail call i32 @llvm.ctpop.i32(i32 %332)
  %334 = trunc i32 %333 to i8
  %335 = and i8 %334, 1
  %336 = xor i8 %335, 1
  store i8 %336, i8* %21, align 1
  %337 = xor i32 %326, %325
  %338 = lshr i32 %337, 4
  %339 = trunc i32 %338 to i8
  %340 = and i8 %339, 1
  store i8 %340, i8* %26, align 1
  %341 = zext i1 %329 to i8
  store i8 %341, i8* %29, align 1
  %342 = lshr i32 %326, 31
  %343 = trunc i32 %342 to i8
  store i8 %343, i8* %32, align 1
  %344 = lshr i32 %325, 31
  %345 = xor i32 %342, %344
  %346 = add nuw nsw i32 %345, %342
  %347 = icmp eq i32 %346, 2
  %348 = zext i1 %347 to i8
  store i8 %348, i8* %38, align 1
  %349 = add i64 %322, 9
  store i64 %349, i64* %3, align 8
  store i32 %326, i32* %324, align 4
  %350 = load i64, i64* %3, align 8
  %351 = add i64 %350, -52
  store i64 %351, i64* %3, align 8
  br label %block_.L_47aa60

block_.L_47aa99:                                  ; preds = %block_.L_47aa60
  %352 = add i64 %262, 5
  store i64 %352, i64* %3, align 8
  br label %block_.L_47aa9e

block_.L_47aa9e:                                  ; preds = %block_.L_47aa99, %block_.L_47aa47
  %353 = phi i64 [ %352, %block_.L_47aa99 ], [ %228, %block_.L_47aa47 ]
  %354 = add i64 %353, 5
  store i64 %354, i64* %3, align 8
  br label %block_.L_47aaa3

block_.L_47aaa3:                                  ; preds = %block_.L_47aa9e, %block_47a9d3
  %storemerge = phi i64 [ %79, %block_47a9d3 ], [ %354, %block_.L_47aa9e ]
  %MEMORY.5 = phi %struct.Memory* [ %2, %block_47a9d3 ], [ %88, %block_.L_47aa9e ]
  %355 = load i64, i64* %RBP.i, align 8
  %356 = add i64 %355, -28
  %357 = add i64 %storemerge, 4
  store i64 %357, i64* %3, align 8
  %358 = inttoptr i64 %356 to i32*
  %359 = load i32, i32* %358, align 4
  %360 = add i32 %359, -1
  %361 = icmp eq i32 %359, 0
  %362 = zext i1 %361 to i8
  store i8 %362, i8* %14, align 1
  %363 = and i32 %360, 255
  %364 = tail call i32 @llvm.ctpop.i32(i32 %363)
  %365 = trunc i32 %364 to i8
  %366 = and i8 %365, 1
  %367 = xor i8 %366, 1
  store i8 %367, i8* %21, align 1
  %368 = xor i32 %360, %359
  %369 = lshr i32 %368, 4
  %370 = trunc i32 %369 to i8
  %371 = and i8 %370, 1
  store i8 %371, i8* %26, align 1
  %372 = icmp eq i32 %360, 0
  %373 = zext i1 %372 to i8
  store i8 %373, i8* %29, align 1
  %374 = lshr i32 %360, 31
  %375 = trunc i32 %374 to i8
  store i8 %375, i8* %32, align 1
  %376 = lshr i32 %359, 31
  %377 = xor i32 %374, %376
  %378 = add nuw nsw i32 %377, %376
  %379 = icmp eq i32 %378, 2
  %380 = zext i1 %379 to i8
  store i8 %380, i8* %38, align 1
  %.v = select i1 %372, i64 10, i64 432
  %381 = add i64 %storemerge, %.v
  %382 = add i64 %355, -12
  %383 = add i64 %381, 7
  store i64 %383, i64* %3, align 8
  %384 = inttoptr i64 %382 to i32*
  store i32 0, i32* %384, align 4
  br i1 %372, label %block_.L_47aab4.preheader, label %block_.L_47ac5a.preheader

block_.L_47aab4.preheader:                        ; preds = %block_.L_47aaa3
  %RCX.i853 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RDX.i851 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RSI.i849 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %RDI.i847 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %R8.i845 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0, i32 0
  %R9.i843 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 19, i32 0, i32 0
  %R10.i838 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 21, i32 0, i32 0
  %385 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 23, i32 0
  %R11D.i820 = bitcast %union.anon* %385 to i32*
  %386 = getelementptr inbounds %union.anon, %union.anon* %385, i64 0, i32 0
  %.pre87 = load i64, i64* %3, align 8
  br label %block_.L_47aab4

block_.L_47ac5a.preheader:                        ; preds = %block_.L_47aaa3
  %EAX.i599 = bitcast %union.anon* %42 to i32*
  %RCX.i587 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RDX.i585 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RSI.i583 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %RDI.i580 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %387 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0
  %R8D.i560 = bitcast %union.anon* %387 to i32*
  %388 = getelementptr inbounds %union.anon, %union.anon* %387, i64 0, i32 0
  %389 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 19, i32 0
  %R9D.i552 = bitcast %union.anon* %389 to i32*
  %390 = getelementptr inbounds %union.anon, %union.anon* %389, i64 0, i32 0
  %391 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %.pre90 = load i64, i64* %3, align 8
  br label %block_.L_47ac5a

block_.L_47aab4:                                  ; preds = %block_.L_47aab4.preheader, %block_.L_47ac3b
  %392 = phi i64 [ %.pre87, %block_.L_47aab4.preheader ], [ %1231, %block_.L_47ac3b ]
  %393 = load i64, i64* %RBP.i, align 8
  %394 = add i64 %393, -12
  %395 = add i64 %392, 4
  store i64 %395, i64* %3, align 8
  %396 = inttoptr i64 %394 to i32*
  %397 = load i32, i32* %396, align 4
  %398 = add i32 %397, -6
  %399 = icmp ult i32 %397, 6
  %400 = zext i1 %399 to i8
  store i8 %400, i8* %14, align 1
  %401 = and i32 %398, 255
  %402 = tail call i32 @llvm.ctpop.i32(i32 %401)
  %403 = trunc i32 %402 to i8
  %404 = and i8 %403, 1
  %405 = xor i8 %404, 1
  store i8 %405, i8* %21, align 1
  %406 = xor i32 %398, %397
  %407 = lshr i32 %406, 4
  %408 = trunc i32 %407 to i8
  %409 = and i8 %408, 1
  store i8 %409, i8* %26, align 1
  %410 = icmp eq i32 %398, 0
  %411 = zext i1 %410 to i8
  store i8 %411, i8* %29, align 1
  %412 = lshr i32 %398, 31
  %413 = trunc i32 %412 to i8
  store i8 %413, i8* %32, align 1
  %414 = lshr i32 %397, 31
  %415 = xor i32 %412, %414
  %416 = add nuw nsw i32 %415, %414
  %417 = icmp eq i32 %416, 2
  %418 = zext i1 %417 to i8
  store i8 %418, i8* %38, align 1
  %419 = icmp ne i8 %413, 0
  %420 = xor i1 %419, %417
  %.v113 = select i1 %420, i64 10, i64 410
  %421 = add i64 %392, %.v113
  store i64 %421, i64* %3, align 8
  br i1 %420, label %block_47aabe, label %block_.L_47ac4e

block_47aabe:                                     ; preds = %block_.L_47aab4
  %422 = add i64 %393, -8
  %423 = add i64 %421, 7
  store i64 %423, i64* %3, align 8
  %424 = inttoptr i64 %422 to i32*
  store i32 0, i32* %424, align 4
  %.pre88 = load i64, i64* %3, align 8
  br label %block_.L_47aac5

block_.L_47aac5:                                  ; preds = %block_.L_47ac28, %block_47aabe
  %425 = phi i64 [ %1201, %block_.L_47ac28 ], [ %.pre88, %block_47aabe ]
  %426 = load i64, i64* %RBP.i, align 8
  %427 = add i64 %426, -8
  %428 = add i64 %425, 4
  store i64 %428, i64* %3, align 8
  %429 = inttoptr i64 %427 to i32*
  %430 = load i32, i32* %429, align 4
  %431 = add i32 %430, -8
  %432 = icmp ult i32 %430, 8
  %433 = zext i1 %432 to i8
  store i8 %433, i8* %14, align 1
  %434 = and i32 %431, 255
  %435 = tail call i32 @llvm.ctpop.i32(i32 %434)
  %436 = trunc i32 %435 to i8
  %437 = and i8 %436, 1
  %438 = xor i8 %437, 1
  store i8 %438, i8* %21, align 1
  %439 = xor i32 %431, %430
  %440 = lshr i32 %439, 4
  %441 = trunc i32 %440 to i8
  %442 = and i8 %441, 1
  store i8 %442, i8* %26, align 1
  %443 = icmp eq i32 %431, 0
  %444 = zext i1 %443 to i8
  store i8 %444, i8* %29, align 1
  %445 = lshr i32 %431, 31
  %446 = trunc i32 %445 to i8
  store i8 %446, i8* %32, align 1
  %447 = lshr i32 %430, 31
  %448 = xor i32 %445, %447
  %449 = add nuw nsw i32 %448, %447
  %450 = icmp eq i32 %449, 2
  %451 = zext i1 %450 to i8
  store i8 %451, i8* %38, align 1
  %452 = icmp ne i8 %446, 0
  %453 = xor i1 %452, %450
  %.v99 = select i1 %453, i64 10, i64 374
  %454 = add i64 %425, %.v99
  store i64 %454, i64* %3, align 8
  br i1 %453, label %block_47aacf, label %block_.L_47ac3b

block_47aacf:                                     ; preds = %block_.L_47aac5
  %455 = add i64 %426, -4
  %456 = add i64 %454, 7
  store i64 %456, i64* %3, align 8
  %457 = inttoptr i64 %455 to i32*
  store i32 0, i32* %457, align 4
  %.pre89 = load i64, i64* %3, align 8
  br label %block_.L_47aad6

block_.L_47aad6:                                  ; preds = %block_47aae0, %block_47aacf
  %458 = phi i64 [ %1171, %block_47aae0 ], [ %.pre89, %block_47aacf ]
  %459 = load i64, i64* %RBP.i, align 8
  %460 = add i64 %459, -4
  %461 = add i64 %458, 4
  store i64 %461, i64* %3, align 8
  %462 = inttoptr i64 %460 to i32*
  %463 = load i32, i32* %462, align 4
  %464 = add i32 %463, -8
  %465 = icmp ult i32 %463, 8
  %466 = zext i1 %465 to i8
  store i8 %466, i8* %14, align 1
  %467 = and i32 %464, 255
  %468 = tail call i32 @llvm.ctpop.i32(i32 %467)
  %469 = trunc i32 %468 to i8
  %470 = and i8 %469, 1
  %471 = xor i8 %470, 1
  store i8 %471, i8* %21, align 1
  %472 = xor i32 %464, %463
  %473 = lshr i32 %472, 4
  %474 = trunc i32 %473 to i8
  %475 = and i8 %474, 1
  store i8 %475, i8* %26, align 1
  %476 = icmp eq i32 %464, 0
  %477 = zext i1 %476 to i8
  store i8 %477, i8* %29, align 1
  %478 = lshr i32 %464, 31
  %479 = trunc i32 %478 to i8
  store i8 %479, i8* %32, align 1
  %480 = lshr i32 %463, 31
  %481 = xor i32 %478, %480
  %482 = add nuw nsw i32 %481, %480
  %483 = icmp eq i32 %482, 2
  %484 = zext i1 %483 to i8
  store i8 %484, i8* %38, align 1
  %485 = icmp ne i8 %479, 0
  %486 = xor i1 %485, %483
  %.v100 = select i1 %486, i64 10, i64 338
  %487 = add i64 %458, %.v100
  store i64 %487, i64* %3, align 8
  br i1 %486, label %block_47aae0, label %block_.L_47ac28

block_47aae0:                                     ; preds = %block_.L_47aad6
  store i64 ptrtoint (%G__0x6d12c0_type* @G__0x6d12c0 to i64), i64* %RAX.i540, align 8
  store i64 ptrtoint (%G__0x4b9d50_type* @G__0x4b9d50 to i64), i64* %RCX.i853, align 8
  store i64 ptrtoint (%G__0x70f6e0_type* @G__0x70f6e0 to i64), i64* %RDX.i851, align 8
  store i64 ptrtoint (%G__0x4b9750_type* @G__0x4b9750 to i64), i64* %RSI.i849, align 8
  store i64 ptrtoint (%G__0x6cfc70_type* @G__0x6cfc70 to i64), i64* %RDI.i847, align 8
  store i64 ptrtoint (%G__0x6d0bc0_type* @G__0x6d0bc0 to i64), i64* %R8.i845, align 8
  %488 = add i64 %459, -12
  %489 = add i64 %487, 64
  store i64 %489, i64* %3, align 8
  %490 = inttoptr i64 %488 to i32*
  %491 = load i32, i32* %490, align 4
  %492 = sext i32 %491 to i64
  %493 = shl nsw i64 %492, 8
  store i64 %493, i64* %R9.i843, align 8
  %494 = add i64 %493, ptrtoint (%G__0x4b9750_type* @G__0x4b9750 to i64)
  store i64 %494, i64* %R10.i838, align 8
  %495 = icmp ult i64 %494, ptrtoint (%G__0x4b9750_type* @G__0x4b9750 to i64)
  %496 = icmp ult i64 %494, %493
  %497 = or i1 %495, %496
  %498 = zext i1 %497 to i8
  store i8 %498, i8* %14, align 1
  %499 = trunc i64 %494 to i32
  %500 = and i32 %499, 248
  %501 = tail call i32 @llvm.ctpop.i32(i32 %500)
  %502 = trunc i32 %501 to i8
  %503 = and i8 %502, 1
  %504 = xor i8 %503, 1
  store i8 %504, i8* %21, align 1
  %505 = xor i64 %494, ptrtoint (%G__0x4b9750_type* @G__0x4b9750 to i64)
  %506 = lshr i64 %505, 4
  %507 = trunc i64 %506 to i8
  %508 = and i8 %507, 1
  store i8 %508, i8* %26, align 1
  %509 = icmp eq i64 %494, 0
  %510 = zext i1 %509 to i8
  store i8 %510, i8* %29, align 1
  %511 = lshr i64 %494, 63
  %512 = trunc i64 %511 to i8
  store i8 %512, i8* %32, align 1
  %513 = lshr i64 %492, 55
  %514 = and i64 %513, 1
  %515 = xor i64 %511, lshr (i64 ptrtoint (%G__0x4b9750_type* @G__0x4b9750 to i64), i64 63)
  %516 = xor i64 %511, %514
  %517 = add nuw nsw i64 %515, %516
  %518 = icmp eq i64 %517, 2
  %519 = zext i1 %518 to i8
  store i8 %519, i8* %38, align 1
  %520 = add i64 %459, -8
  %521 = add i64 %487, 78
  store i64 %521, i64* %3, align 8
  %522 = inttoptr i64 %520 to i32*
  %523 = load i32, i32* %522, align 4
  %524 = sext i32 %523 to i64
  %525 = shl nsw i64 %524, 5
  store i64 %525, i64* %R9.i843, align 8
  %526 = add i64 %525, %494
  store i64 %526, i64* %R10.i838, align 8
  %527 = icmp ult i64 %526, %494
  %528 = icmp ult i64 %526, %525
  %529 = or i1 %527, %528
  %530 = zext i1 %529 to i8
  store i8 %530, i8* %14, align 1
  %531 = trunc i64 %526 to i32
  %532 = and i32 %531, 248
  %533 = tail call i32 @llvm.ctpop.i32(i32 %532)
  %534 = trunc i32 %533 to i8
  %535 = and i8 %534, 1
  %536 = xor i8 %535, 1
  store i8 %536, i8* %21, align 1
  %537 = xor i64 %494, %526
  %538 = lshr i64 %537, 4
  %539 = trunc i64 %538 to i8
  %540 = and i8 %539, 1
  store i8 %540, i8* %26, align 1
  %541 = icmp eq i64 %526, 0
  %542 = zext i1 %541 to i8
  store i8 %542, i8* %29, align 1
  %543 = lshr i64 %526, 63
  %544 = trunc i64 %543 to i8
  store i8 %544, i8* %32, align 1
  %545 = lshr i64 %524, 58
  %546 = and i64 %545, 1
  %547 = xor i64 %543, %511
  %548 = xor i64 %543, %546
  %549 = add nuw nsw i64 %547, %548
  %550 = icmp eq i64 %549, 2
  %551 = zext i1 %550 to i8
  store i8 %551, i8* %38, align 1
  %552 = load i64, i64* %RBP.i, align 8
  %553 = add i64 %552, -4
  %554 = add i64 %487, 89
  store i64 %554, i64* %3, align 8
  %555 = inttoptr i64 %553 to i32*
  %556 = load i32, i32* %555, align 4
  %557 = sext i32 %556 to i64
  store i64 %557, i64* %R9.i843, align 8
  %558 = shl nsw i64 %557, 2
  %559 = add i64 %558, %526
  %560 = add i64 %487, 93
  store i64 %560, i64* %3, align 8
  %561 = inttoptr i64 %559 to i32*
  %562 = load i32, i32* %561, align 4
  %563 = zext i32 %562 to i64
  store i64 %563, i64* %386, align 8
  %564 = add i64 %552, -12
  %565 = add i64 %487, 97
  store i64 %565, i64* %3, align 8
  %566 = inttoptr i64 %564 to i32*
  %567 = load i32, i32* %566, align 4
  %568 = sext i32 %567 to i64
  %569 = shl nsw i64 %568, 8
  store i64 %569, i64* %R9.i843, align 8
  %570 = load i64, i64* %R8.i845, align 8
  %571 = add i64 %569, %570
  store i64 %571, i64* %R8.i845, align 8
  %572 = icmp ult i64 %571, %570
  %573 = icmp ult i64 %571, %569
  %574 = or i1 %572, %573
  %575 = zext i1 %574 to i8
  store i8 %575, i8* %14, align 1
  %576 = trunc i64 %571 to i32
  %577 = and i32 %576, 255
  %578 = tail call i32 @llvm.ctpop.i32(i32 %577)
  %579 = trunc i32 %578 to i8
  %580 = and i8 %579, 1
  %581 = xor i8 %580, 1
  store i8 %581, i8* %21, align 1
  %582 = xor i64 %570, %571
  %583 = lshr i64 %582, 4
  %584 = trunc i64 %583 to i8
  %585 = and i8 %584, 1
  store i8 %585, i8* %26, align 1
  %586 = icmp eq i64 %571, 0
  %587 = zext i1 %586 to i8
  store i8 %587, i8* %29, align 1
  %588 = lshr i64 %571, 63
  %589 = trunc i64 %588 to i8
  store i8 %589, i8* %32, align 1
  %590 = lshr i64 %570, 63
  %591 = lshr i64 %568, 55
  %592 = and i64 %591, 1
  %593 = xor i64 %588, %590
  %594 = xor i64 %588, %592
  %595 = add nuw nsw i64 %593, %594
  %596 = icmp eq i64 %595, 2
  %597 = zext i1 %596 to i8
  store i8 %597, i8* %38, align 1
  %598 = add i64 %552, -8
  %599 = add i64 %487, 108
  store i64 %599, i64* %3, align 8
  %600 = inttoptr i64 %598 to i32*
  %601 = load i32, i32* %600, align 4
  %602 = sext i32 %601 to i64
  %603 = shl nsw i64 %602, 5
  store i64 %603, i64* %R9.i843, align 8
  %604 = add i64 %603, %571
  store i64 %604, i64* %R8.i845, align 8
  %605 = icmp ult i64 %604, %571
  %606 = icmp ult i64 %604, %603
  %607 = or i1 %605, %606
  %608 = zext i1 %607 to i8
  store i8 %608, i8* %14, align 1
  %609 = trunc i64 %604 to i32
  %610 = and i32 %609, 255
  %611 = tail call i32 @llvm.ctpop.i32(i32 %610)
  %612 = trunc i32 %611 to i8
  %613 = and i8 %612, 1
  %614 = xor i8 %613, 1
  store i8 %614, i8* %21, align 1
  %615 = xor i64 %571, %604
  %616 = lshr i64 %615, 4
  %617 = trunc i64 %616 to i8
  %618 = and i8 %617, 1
  store i8 %618, i8* %26, align 1
  %619 = icmp eq i64 %604, 0
  %620 = zext i1 %619 to i8
  store i8 %620, i8* %29, align 1
  %621 = lshr i64 %604, 63
  %622 = trunc i64 %621 to i8
  store i8 %622, i8* %32, align 1
  %623 = lshr i64 %602, 58
  %624 = and i64 %623, 1
  %625 = xor i64 %621, %588
  %626 = xor i64 %621, %624
  %627 = add nuw nsw i64 %625, %626
  %628 = icmp eq i64 %627, 2
  %629 = zext i1 %628 to i8
  store i8 %629, i8* %38, align 1
  %630 = load i64, i64* %RBP.i, align 8
  %631 = add i64 %630, -4
  %632 = add i64 %487, 119
  store i64 %632, i64* %3, align 8
  %633 = inttoptr i64 %631 to i32*
  %634 = load i32, i32* %633, align 4
  %635 = sext i32 %634 to i64
  store i64 %635, i64* %R9.i843, align 8
  %636 = shl nsw i64 %635, 2
  %637 = add i64 %636, %604
  %638 = load i32, i32* %R11D.i820, align 4
  %639 = add i64 %487, 123
  store i64 %639, i64* %3, align 8
  %640 = inttoptr i64 %637 to i32*
  store i32 %638, i32* %640, align 4
  %641 = load i64, i64* %RBP.i, align 8
  %642 = add i64 %641, -12
  %643 = load i64, i64* %3, align 8
  %644 = add i64 %643, 4
  store i64 %644, i64* %3, align 8
  %645 = inttoptr i64 %642 to i32*
  %646 = load i32, i32* %645, align 4
  %647 = sext i32 %646 to i64
  %648 = shl nsw i64 %647, 8
  store i64 %648, i64* %R8.i845, align 8
  %649 = load i64, i64* %RCX.i853, align 8
  %650 = add i64 %648, %649
  store i64 %650, i64* %R9.i843, align 8
  %651 = icmp ult i64 %650, %649
  %652 = icmp ult i64 %650, %648
  %653 = or i1 %651, %652
  %654 = zext i1 %653 to i8
  store i8 %654, i8* %14, align 1
  %655 = trunc i64 %650 to i32
  %656 = and i32 %655, 255
  %657 = tail call i32 @llvm.ctpop.i32(i32 %656)
  %658 = trunc i32 %657 to i8
  %659 = and i8 %658, 1
  %660 = xor i8 %659, 1
  store i8 %660, i8* %21, align 1
  %661 = xor i64 %649, %650
  %662 = lshr i64 %661, 4
  %663 = trunc i64 %662 to i8
  %664 = and i8 %663, 1
  store i8 %664, i8* %26, align 1
  %665 = icmp eq i64 %650, 0
  %666 = zext i1 %665 to i8
  store i8 %666, i8* %29, align 1
  %667 = lshr i64 %650, 63
  %668 = trunc i64 %667 to i8
  store i8 %668, i8* %32, align 1
  %669 = lshr i64 %649, 63
  %670 = lshr i64 %647, 55
  %671 = and i64 %670, 1
  %672 = xor i64 %667, %669
  %673 = xor i64 %667, %671
  %674 = add nuw nsw i64 %672, %673
  %675 = icmp eq i64 %674, 2
  %676 = zext i1 %675 to i8
  store i8 %676, i8* %38, align 1
  %677 = add i64 %641, -8
  %678 = add i64 %643, 18
  store i64 %678, i64* %3, align 8
  %679 = inttoptr i64 %677 to i32*
  %680 = load i32, i32* %679, align 4
  %681 = sext i32 %680 to i64
  %682 = shl nsw i64 %681, 5
  store i64 %682, i64* %R8.i845, align 8
  %683 = add i64 %682, %650
  store i64 %683, i64* %R9.i843, align 8
  %684 = icmp ult i64 %683, %650
  %685 = icmp ult i64 %683, %682
  %686 = or i1 %684, %685
  %687 = zext i1 %686 to i8
  store i8 %687, i8* %14, align 1
  %688 = trunc i64 %683 to i32
  %689 = and i32 %688, 255
  %690 = tail call i32 @llvm.ctpop.i32(i32 %689)
  %691 = trunc i32 %690 to i8
  %692 = and i8 %691, 1
  %693 = xor i8 %692, 1
  store i8 %693, i8* %21, align 1
  %694 = xor i64 %650, %683
  %695 = lshr i64 %694, 4
  %696 = trunc i64 %695 to i8
  %697 = and i8 %696, 1
  store i8 %697, i8* %26, align 1
  %698 = icmp eq i64 %683, 0
  %699 = zext i1 %698 to i8
  store i8 %699, i8* %29, align 1
  %700 = lshr i64 %683, 63
  %701 = trunc i64 %700 to i8
  store i8 %701, i8* %32, align 1
  %702 = lshr i64 %681, 58
  %703 = and i64 %702, 1
  %704 = xor i64 %700, %667
  %705 = xor i64 %700, %703
  %706 = add nuw nsw i64 %704, %705
  %707 = icmp eq i64 %706, 2
  %708 = zext i1 %707 to i8
  store i8 %708, i8* %38, align 1
  %709 = load i64, i64* %RBP.i, align 8
  %710 = add i64 %709, -4
  %711 = add i64 %643, 29
  store i64 %711, i64* %3, align 8
  %712 = inttoptr i64 %710 to i32*
  %713 = load i32, i32* %712, align 4
  %714 = sext i32 %713 to i64
  store i64 %714, i64* %R8.i845, align 8
  %715 = shl nsw i64 %714, 2
  %716 = add i64 %715, %683
  %717 = add i64 %643, 33
  store i64 %717, i64* %3, align 8
  %718 = inttoptr i64 %716 to i32*
  %719 = load i32, i32* %718, align 4
  %720 = shl i32 %719, 4
  %721 = zext i32 %720 to i64
  store i64 %721, i64* %386, align 8
  %722 = lshr i32 %719, 28
  %723 = trunc i32 %722 to i8
  %724 = and i8 %723, 1
  store i8 %724, i8* %14, align 1
  %725 = and i32 %720, 240
  %726 = tail call i32 @llvm.ctpop.i32(i32 %725)
  %727 = trunc i32 %726 to i8
  %728 = and i8 %727, 1
  %729 = xor i8 %728, 1
  store i8 %729, i8* %21, align 1
  store i8 0, i8* %26, align 1
  %730 = icmp eq i32 %720, 0
  %731 = zext i1 %730 to i8
  store i8 %731, i8* %29, align 1
  %732 = lshr i32 %719, 27
  %733 = trunc i32 %732 to i8
  %734 = and i8 %733, 1
  store i8 %734, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %735 = add i64 %709, -12
  %736 = add i64 %643, 41
  store i64 %736, i64* %3, align 8
  %737 = inttoptr i64 %735 to i32*
  %738 = load i32, i32* %737, align 4
  %739 = sext i32 %738 to i64
  %740 = shl nsw i64 %739, 8
  store i64 %740, i64* %R8.i845, align 8
  %741 = load i64, i64* %RDI.i847, align 8
  %742 = add i64 %740, %741
  store i64 %742, i64* %RDI.i847, align 8
  %743 = icmp ult i64 %742, %741
  %744 = icmp ult i64 %742, %740
  %745 = or i1 %743, %744
  %746 = zext i1 %745 to i8
  store i8 %746, i8* %14, align 1
  %747 = trunc i64 %742 to i32
  %748 = and i32 %747, 255
  %749 = tail call i32 @llvm.ctpop.i32(i32 %748)
  %750 = trunc i32 %749 to i8
  %751 = and i8 %750, 1
  %752 = xor i8 %751, 1
  store i8 %752, i8* %21, align 1
  %753 = xor i64 %741, %742
  %754 = lshr i64 %753, 4
  %755 = trunc i64 %754 to i8
  %756 = and i8 %755, 1
  store i8 %756, i8* %26, align 1
  %757 = icmp eq i64 %742, 0
  %758 = zext i1 %757 to i8
  store i8 %758, i8* %29, align 1
  %759 = lshr i64 %742, 63
  %760 = trunc i64 %759 to i8
  store i8 %760, i8* %32, align 1
  %761 = lshr i64 %741, 63
  %762 = lshr i64 %739, 55
  %763 = and i64 %762, 1
  %764 = xor i64 %759, %761
  %765 = xor i64 %759, %763
  %766 = add nuw nsw i64 %764, %765
  %767 = icmp eq i64 %766, 2
  %768 = zext i1 %767 to i8
  store i8 %768, i8* %38, align 1
  %769 = load i64, i64* %RBP.i, align 8
  %770 = add i64 %769, -8
  %771 = add i64 %643, 52
  store i64 %771, i64* %3, align 8
  %772 = inttoptr i64 %770 to i32*
  %773 = load i32, i32* %772, align 4
  %774 = sext i32 %773 to i64
  %775 = shl nsw i64 %774, 5
  store i64 %775, i64* %R8.i845, align 8
  %776 = add i64 %775, %742
  store i64 %776, i64* %RDI.i847, align 8
  %777 = icmp ult i64 %776, %742
  %778 = icmp ult i64 %776, %775
  %779 = or i1 %777, %778
  %780 = zext i1 %779 to i8
  store i8 %780, i8* %14, align 1
  %781 = trunc i64 %776 to i32
  %782 = and i32 %781, 255
  %783 = tail call i32 @llvm.ctpop.i32(i32 %782)
  %784 = trunc i32 %783 to i8
  %785 = and i8 %784, 1
  %786 = xor i8 %785, 1
  store i8 %786, i8* %21, align 1
  %787 = xor i64 %742, %776
  %788 = lshr i64 %787, 4
  %789 = trunc i64 %788 to i8
  %790 = and i8 %789, 1
  store i8 %790, i8* %26, align 1
  %791 = icmp eq i64 %776, 0
  %792 = zext i1 %791 to i8
  store i8 %792, i8* %29, align 1
  %793 = lshr i64 %776, 63
  %794 = trunc i64 %793 to i8
  store i8 %794, i8* %32, align 1
  %795 = lshr i64 %774, 58
  %796 = and i64 %795, 1
  %797 = xor i64 %793, %759
  %798 = xor i64 %793, %796
  %799 = add nuw nsw i64 %797, %798
  %800 = icmp eq i64 %799, 2
  %801 = zext i1 %800 to i8
  store i8 %801, i8* %38, align 1
  %802 = add i64 %769, -4
  %803 = add i64 %643, 63
  store i64 %803, i64* %3, align 8
  %804 = inttoptr i64 %802 to i32*
  %805 = load i32, i32* %804, align 4
  %806 = sext i32 %805 to i64
  store i64 %806, i64* %R8.i845, align 8
  %807 = shl nsw i64 %806, 2
  %808 = add i64 %807, %776
  %809 = load i32, i32* %R11D.i820, align 4
  %810 = add i64 %643, 67
  store i64 %810, i64* %3, align 8
  %811 = inttoptr i64 %808 to i32*
  store i32 %809, i32* %811, align 4
  %812 = load i64, i64* %RBP.i, align 8
  %813 = add i64 %812, -12
  %814 = load i64, i64* %3, align 8
  %815 = add i64 %814, 4
  store i64 %815, i64* %3, align 8
  %816 = inttoptr i64 %813 to i32*
  %817 = load i32, i32* %816, align 4
  %818 = sext i32 %817 to i64
  %819 = shl nsw i64 %818, 8
  store i64 %819, i64* %RDI.i847, align 8
  %820 = load i64, i64* %RSI.i849, align 8
  %821 = add i64 %819, %820
  store i64 %821, i64* %RSI.i849, align 8
  %822 = icmp ult i64 %821, %820
  %823 = icmp ult i64 %821, %819
  %824 = or i1 %822, %823
  %825 = zext i1 %824 to i8
  store i8 %825, i8* %14, align 1
  %826 = trunc i64 %821 to i32
  %827 = and i32 %826, 255
  %828 = tail call i32 @llvm.ctpop.i32(i32 %827)
  %829 = trunc i32 %828 to i8
  %830 = and i8 %829, 1
  %831 = xor i8 %830, 1
  store i8 %831, i8* %21, align 1
  %832 = xor i64 %820, %821
  %833 = lshr i64 %832, 4
  %834 = trunc i64 %833 to i8
  %835 = and i8 %834, 1
  store i8 %835, i8* %26, align 1
  %836 = icmp eq i64 %821, 0
  %837 = zext i1 %836 to i8
  store i8 %837, i8* %29, align 1
  %838 = lshr i64 %821, 63
  %839 = trunc i64 %838 to i8
  store i8 %839, i8* %32, align 1
  %840 = lshr i64 %820, 63
  %841 = lshr i64 %818, 55
  %842 = and i64 %841, 1
  %843 = xor i64 %838, %840
  %844 = xor i64 %838, %842
  %845 = add nuw nsw i64 %843, %844
  %846 = icmp eq i64 %845, 2
  %847 = zext i1 %846 to i8
  store i8 %847, i8* %38, align 1
  %848 = add i64 %812, -8
  %849 = add i64 %814, 15
  store i64 %849, i64* %3, align 8
  %850 = inttoptr i64 %848 to i32*
  %851 = load i32, i32* %850, align 4
  %852 = sext i32 %851 to i64
  %853 = shl nsw i64 %852, 5
  store i64 %853, i64* %RDI.i847, align 8
  %854 = add i64 %853, %821
  store i64 %854, i64* %RSI.i849, align 8
  %855 = icmp ult i64 %854, %821
  %856 = icmp ult i64 %854, %853
  %857 = or i1 %855, %856
  %858 = zext i1 %857 to i8
  store i8 %858, i8* %14, align 1
  %859 = trunc i64 %854 to i32
  %860 = and i32 %859, 255
  %861 = tail call i32 @llvm.ctpop.i32(i32 %860)
  %862 = trunc i32 %861 to i8
  %863 = and i8 %862, 1
  %864 = xor i8 %863, 1
  store i8 %864, i8* %21, align 1
  %865 = xor i64 %821, %854
  %866 = lshr i64 %865, 4
  %867 = trunc i64 %866 to i8
  %868 = and i8 %867, 1
  store i8 %868, i8* %26, align 1
  %869 = icmp eq i64 %854, 0
  %870 = zext i1 %869 to i8
  store i8 %870, i8* %29, align 1
  %871 = lshr i64 %854, 63
  %872 = trunc i64 %871 to i8
  store i8 %872, i8* %32, align 1
  %873 = lshr i64 %852, 58
  %874 = and i64 %873, 1
  %875 = xor i64 %871, %838
  %876 = xor i64 %871, %874
  %877 = add nuw nsw i64 %875, %876
  %878 = icmp eq i64 %877, 2
  %879 = zext i1 %878 to i8
  store i8 %879, i8* %38, align 1
  %880 = load i64, i64* %RBP.i, align 8
  %881 = add i64 %880, -4
  %882 = add i64 %814, 26
  store i64 %882, i64* %3, align 8
  %883 = inttoptr i64 %881 to i32*
  %884 = load i32, i32* %883, align 4
  %885 = sext i32 %884 to i64
  store i64 %885, i64* %RDI.i847, align 8
  %886 = shl nsw i64 %885, 2
  %887 = add i64 %886, %854
  %888 = add i64 %814, 30
  store i64 %888, i64* %3, align 8
  %889 = inttoptr i64 %887 to i32*
  %890 = load i32, i32* %889, align 4
  %891 = zext i32 %890 to i64
  store i64 %891, i64* %386, align 8
  %892 = add i64 %880, -12
  %893 = add i64 %814, 34
  store i64 %893, i64* %3, align 8
  %894 = inttoptr i64 %892 to i32*
  %895 = load i32, i32* %894, align 4
  %896 = sext i32 %895 to i64
  %897 = shl nsw i64 %896, 8
  store i64 %897, i64* %RSI.i849, align 8
  %898 = load i64, i64* %RDX.i851, align 8
  %899 = add i64 %897, %898
  store i64 %899, i64* %RDX.i851, align 8
  %900 = icmp ult i64 %899, %898
  %901 = icmp ult i64 %899, %897
  %902 = or i1 %900, %901
  %903 = zext i1 %902 to i8
  store i8 %903, i8* %14, align 1
  %904 = trunc i64 %899 to i32
  %905 = and i32 %904, 255
  %906 = tail call i32 @llvm.ctpop.i32(i32 %905)
  %907 = trunc i32 %906 to i8
  %908 = and i8 %907, 1
  %909 = xor i8 %908, 1
  store i8 %909, i8* %21, align 1
  %910 = xor i64 %898, %899
  %911 = lshr i64 %910, 4
  %912 = trunc i64 %911 to i8
  %913 = and i8 %912, 1
  store i8 %913, i8* %26, align 1
  %914 = icmp eq i64 %899, 0
  %915 = zext i1 %914 to i8
  store i8 %915, i8* %29, align 1
  %916 = lshr i64 %899, 63
  %917 = trunc i64 %916 to i8
  store i8 %917, i8* %32, align 1
  %918 = lshr i64 %898, 63
  %919 = lshr i64 %896, 55
  %920 = and i64 %919, 1
  %921 = xor i64 %916, %918
  %922 = xor i64 %916, %920
  %923 = add nuw nsw i64 %921, %922
  %924 = icmp eq i64 %923, 2
  %925 = zext i1 %924 to i8
  store i8 %925, i8* %38, align 1
  %926 = add i64 %880, -8
  %927 = add i64 %814, 45
  store i64 %927, i64* %3, align 8
  %928 = inttoptr i64 %926 to i32*
  %929 = load i32, i32* %928, align 4
  %930 = sext i32 %929 to i64
  %931 = shl nsw i64 %930, 5
  store i64 %931, i64* %RSI.i849, align 8
  %932 = add i64 %931, %899
  store i64 %932, i64* %RDX.i851, align 8
  %933 = icmp ult i64 %932, %899
  %934 = icmp ult i64 %932, %931
  %935 = or i1 %933, %934
  %936 = zext i1 %935 to i8
  store i8 %936, i8* %14, align 1
  %937 = trunc i64 %932 to i32
  %938 = and i32 %937, 255
  %939 = tail call i32 @llvm.ctpop.i32(i32 %938)
  %940 = trunc i32 %939 to i8
  %941 = and i8 %940, 1
  %942 = xor i8 %941, 1
  store i8 %942, i8* %21, align 1
  %943 = xor i64 %899, %932
  %944 = lshr i64 %943, 4
  %945 = trunc i64 %944 to i8
  %946 = and i8 %945, 1
  store i8 %946, i8* %26, align 1
  %947 = icmp eq i64 %932, 0
  %948 = zext i1 %947 to i8
  store i8 %948, i8* %29, align 1
  %949 = lshr i64 %932, 63
  %950 = trunc i64 %949 to i8
  store i8 %950, i8* %32, align 1
  %951 = lshr i64 %930, 58
  %952 = and i64 %951, 1
  %953 = xor i64 %949, %916
  %954 = xor i64 %949, %952
  %955 = add nuw nsw i64 %953, %954
  %956 = icmp eq i64 %955, 2
  %957 = zext i1 %956 to i8
  store i8 %957, i8* %38, align 1
  %958 = load i64, i64* %RBP.i, align 8
  %959 = add i64 %958, -4
  %960 = add i64 %814, 56
  store i64 %960, i64* %3, align 8
  %961 = inttoptr i64 %959 to i32*
  %962 = load i32, i32* %961, align 4
  %963 = sext i32 %962 to i64
  store i64 %963, i64* %RSI.i849, align 8
  %964 = shl nsw i64 %963, 2
  %965 = add i64 %964, %932
  %966 = load i32, i32* %R11D.i820, align 4
  %967 = add i64 %814, 60
  store i64 %967, i64* %3, align 8
  %968 = inttoptr i64 %965 to i32*
  store i32 %966, i32* %968, align 4
  %969 = load i64, i64* %RBP.i, align 8
  %970 = add i64 %969, -12
  %971 = load i64, i64* %3, align 8
  %972 = add i64 %971, 4
  store i64 %972, i64* %3, align 8
  %973 = inttoptr i64 %970 to i32*
  %974 = load i32, i32* %973, align 4
  %975 = sext i32 %974 to i64
  %976 = shl nsw i64 %975, 8
  store i64 %976, i64* %RDX.i851, align 8
  %977 = load i64, i64* %RCX.i853, align 8
  %978 = add i64 %976, %977
  store i64 %978, i64* %RCX.i853, align 8
  %979 = icmp ult i64 %978, %977
  %980 = icmp ult i64 %978, %976
  %981 = or i1 %979, %980
  %982 = zext i1 %981 to i8
  store i8 %982, i8* %14, align 1
  %983 = trunc i64 %978 to i32
  %984 = and i32 %983, 255
  %985 = tail call i32 @llvm.ctpop.i32(i32 %984)
  %986 = trunc i32 %985 to i8
  %987 = and i8 %986, 1
  %988 = xor i8 %987, 1
  store i8 %988, i8* %21, align 1
  %989 = xor i64 %977, %978
  %990 = lshr i64 %989, 4
  %991 = trunc i64 %990 to i8
  %992 = and i8 %991, 1
  store i8 %992, i8* %26, align 1
  %993 = icmp eq i64 %978, 0
  %994 = zext i1 %993 to i8
  store i8 %994, i8* %29, align 1
  %995 = lshr i64 %978, 63
  %996 = trunc i64 %995 to i8
  store i8 %996, i8* %32, align 1
  %997 = lshr i64 %977, 63
  %998 = lshr i64 %975, 55
  %999 = and i64 %998, 1
  %1000 = xor i64 %995, %997
  %1001 = xor i64 %995, %999
  %1002 = add nuw nsw i64 %1000, %1001
  %1003 = icmp eq i64 %1002, 2
  %1004 = zext i1 %1003 to i8
  store i8 %1004, i8* %38, align 1
  %1005 = add i64 %969, -8
  %1006 = add i64 %971, 15
  store i64 %1006, i64* %3, align 8
  %1007 = inttoptr i64 %1005 to i32*
  %1008 = load i32, i32* %1007, align 4
  %1009 = sext i32 %1008 to i64
  %1010 = shl nsw i64 %1009, 5
  store i64 %1010, i64* %RDX.i851, align 8
  %1011 = add i64 %1010, %978
  store i64 %1011, i64* %RCX.i853, align 8
  %1012 = icmp ult i64 %1011, %978
  %1013 = icmp ult i64 %1011, %1010
  %1014 = or i1 %1012, %1013
  %1015 = zext i1 %1014 to i8
  store i8 %1015, i8* %14, align 1
  %1016 = trunc i64 %1011 to i32
  %1017 = and i32 %1016, 255
  %1018 = tail call i32 @llvm.ctpop.i32(i32 %1017)
  %1019 = trunc i32 %1018 to i8
  %1020 = and i8 %1019, 1
  %1021 = xor i8 %1020, 1
  store i8 %1021, i8* %21, align 1
  %1022 = xor i64 %978, %1011
  %1023 = lshr i64 %1022, 4
  %1024 = trunc i64 %1023 to i8
  %1025 = and i8 %1024, 1
  store i8 %1025, i8* %26, align 1
  %1026 = icmp eq i64 %1011, 0
  %1027 = zext i1 %1026 to i8
  store i8 %1027, i8* %29, align 1
  %1028 = lshr i64 %1011, 63
  %1029 = trunc i64 %1028 to i8
  store i8 %1029, i8* %32, align 1
  %1030 = lshr i64 %1009, 58
  %1031 = and i64 %1030, 1
  %1032 = xor i64 %1028, %995
  %1033 = xor i64 %1028, %1031
  %1034 = add nuw nsw i64 %1032, %1033
  %1035 = icmp eq i64 %1034, 2
  %1036 = zext i1 %1035 to i8
  store i8 %1036, i8* %38, align 1
  %1037 = load i64, i64* %RBP.i, align 8
  %1038 = add i64 %1037, -4
  %1039 = add i64 %971, 26
  store i64 %1039, i64* %3, align 8
  %1040 = inttoptr i64 %1038 to i32*
  %1041 = load i32, i32* %1040, align 4
  %1042 = sext i32 %1041 to i64
  store i64 %1042, i64* %RDX.i851, align 8
  %1043 = shl nsw i64 %1042, 2
  %1044 = add i64 %1043, %1011
  %1045 = add i64 %971, 30
  store i64 %1045, i64* %3, align 8
  %1046 = inttoptr i64 %1044 to i32*
  %1047 = load i32, i32* %1046, align 4
  %1048 = shl i32 %1047, 4
  %1049 = zext i32 %1048 to i64
  store i64 %1049, i64* %386, align 8
  %1050 = lshr i32 %1047, 28
  %1051 = trunc i32 %1050 to i8
  %1052 = and i8 %1051, 1
  store i8 %1052, i8* %14, align 1
  %1053 = and i32 %1048, 240
  %1054 = tail call i32 @llvm.ctpop.i32(i32 %1053)
  %1055 = trunc i32 %1054 to i8
  %1056 = and i8 %1055, 1
  %1057 = xor i8 %1056, 1
  store i8 %1057, i8* %21, align 1
  store i8 0, i8* %26, align 1
  %1058 = icmp eq i32 %1048, 0
  %1059 = zext i1 %1058 to i8
  store i8 %1059, i8* %29, align 1
  %1060 = lshr i32 %1047, 27
  %1061 = trunc i32 %1060 to i8
  %1062 = and i8 %1061, 1
  store i8 %1062, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %1063 = add i64 %1037, -12
  %1064 = add i64 %971, 38
  store i64 %1064, i64* %3, align 8
  %1065 = inttoptr i64 %1063 to i32*
  %1066 = load i32, i32* %1065, align 4
  %1067 = sext i32 %1066 to i64
  %1068 = shl nsw i64 %1067, 8
  store i64 %1068, i64* %RCX.i853, align 8
  %1069 = load i64, i64* %RAX.i540, align 8
  %1070 = add i64 %1068, %1069
  store i64 %1070, i64* %RAX.i540, align 8
  %1071 = icmp ult i64 %1070, %1069
  %1072 = icmp ult i64 %1070, %1068
  %1073 = or i1 %1071, %1072
  %1074 = zext i1 %1073 to i8
  store i8 %1074, i8* %14, align 1
  %1075 = trunc i64 %1070 to i32
  %1076 = and i32 %1075, 255
  %1077 = tail call i32 @llvm.ctpop.i32(i32 %1076)
  %1078 = trunc i32 %1077 to i8
  %1079 = and i8 %1078, 1
  %1080 = xor i8 %1079, 1
  store i8 %1080, i8* %21, align 1
  %1081 = xor i64 %1069, %1070
  %1082 = lshr i64 %1081, 4
  %1083 = trunc i64 %1082 to i8
  %1084 = and i8 %1083, 1
  store i8 %1084, i8* %26, align 1
  %1085 = icmp eq i64 %1070, 0
  %1086 = zext i1 %1085 to i8
  store i8 %1086, i8* %29, align 1
  %1087 = lshr i64 %1070, 63
  %1088 = trunc i64 %1087 to i8
  store i8 %1088, i8* %32, align 1
  %1089 = lshr i64 %1069, 63
  %1090 = lshr i64 %1067, 55
  %1091 = and i64 %1090, 1
  %1092 = xor i64 %1087, %1089
  %1093 = xor i64 %1087, %1091
  %1094 = add nuw nsw i64 %1092, %1093
  %1095 = icmp eq i64 %1094, 2
  %1096 = zext i1 %1095 to i8
  store i8 %1096, i8* %38, align 1
  %1097 = load i64, i64* %RBP.i, align 8
  %1098 = add i64 %1097, -8
  %1099 = add i64 %971, 49
  store i64 %1099, i64* %3, align 8
  %1100 = inttoptr i64 %1098 to i32*
  %1101 = load i32, i32* %1100, align 4
  %1102 = sext i32 %1101 to i64
  %1103 = shl nsw i64 %1102, 5
  store i64 %1103, i64* %RCX.i853, align 8
  %1104 = add i64 %1103, %1070
  store i64 %1104, i64* %RAX.i540, align 8
  %1105 = icmp ult i64 %1104, %1070
  %1106 = icmp ult i64 %1104, %1103
  %1107 = or i1 %1105, %1106
  %1108 = zext i1 %1107 to i8
  store i8 %1108, i8* %14, align 1
  %1109 = trunc i64 %1104 to i32
  %1110 = and i32 %1109, 255
  %1111 = tail call i32 @llvm.ctpop.i32(i32 %1110)
  %1112 = trunc i32 %1111 to i8
  %1113 = and i8 %1112, 1
  %1114 = xor i8 %1113, 1
  store i8 %1114, i8* %21, align 1
  %1115 = xor i64 %1070, %1104
  %1116 = lshr i64 %1115, 4
  %1117 = trunc i64 %1116 to i8
  %1118 = and i8 %1117, 1
  store i8 %1118, i8* %26, align 1
  %1119 = icmp eq i64 %1104, 0
  %1120 = zext i1 %1119 to i8
  store i8 %1120, i8* %29, align 1
  %1121 = lshr i64 %1104, 63
  %1122 = trunc i64 %1121 to i8
  store i8 %1122, i8* %32, align 1
  %1123 = lshr i64 %1102, 58
  %1124 = and i64 %1123, 1
  %1125 = xor i64 %1121, %1087
  %1126 = xor i64 %1121, %1124
  %1127 = add nuw nsw i64 %1125, %1126
  %1128 = icmp eq i64 %1127, 2
  %1129 = zext i1 %1128 to i8
  store i8 %1129, i8* %38, align 1
  %1130 = add i64 %1097, -4
  %1131 = add i64 %971, 60
  store i64 %1131, i64* %3, align 8
  %1132 = inttoptr i64 %1130 to i32*
  %1133 = load i32, i32* %1132, align 4
  %1134 = sext i32 %1133 to i64
  store i64 %1134, i64* %RCX.i853, align 8
  %1135 = shl nsw i64 %1134, 2
  %1136 = add i64 %1135, %1104
  %1137 = load i32, i32* %R11D.i820, align 4
  %1138 = add i64 %971, 64
  store i64 %1138, i64* %3, align 8
  %1139 = inttoptr i64 %1136 to i32*
  store i32 %1137, i32* %1139, align 4
  %1140 = load i64, i64* %RBP.i, align 8
  %1141 = add i64 %1140, -4
  %1142 = load i64, i64* %3, align 8
  %1143 = add i64 %1142, 3
  store i64 %1143, i64* %3, align 8
  %1144 = inttoptr i64 %1141 to i32*
  %1145 = load i32, i32* %1144, align 4
  %1146 = add i32 %1145, 1
  %1147 = zext i32 %1146 to i64
  store i64 %1147, i64* %RAX.i540, align 8
  %1148 = icmp eq i32 %1145, -1
  %1149 = icmp eq i32 %1146, 0
  %1150 = or i1 %1148, %1149
  %1151 = zext i1 %1150 to i8
  store i8 %1151, i8* %14, align 1
  %1152 = and i32 %1146, 255
  %1153 = tail call i32 @llvm.ctpop.i32(i32 %1152)
  %1154 = trunc i32 %1153 to i8
  %1155 = and i8 %1154, 1
  %1156 = xor i8 %1155, 1
  store i8 %1156, i8* %21, align 1
  %1157 = xor i32 %1146, %1145
  %1158 = lshr i32 %1157, 4
  %1159 = trunc i32 %1158 to i8
  %1160 = and i8 %1159, 1
  store i8 %1160, i8* %26, align 1
  %1161 = zext i1 %1149 to i8
  store i8 %1161, i8* %29, align 1
  %1162 = lshr i32 %1146, 31
  %1163 = trunc i32 %1162 to i8
  store i8 %1163, i8* %32, align 1
  %1164 = lshr i32 %1145, 31
  %1165 = xor i32 %1162, %1164
  %1166 = add nuw nsw i32 %1165, %1162
  %1167 = icmp eq i32 %1166, 2
  %1168 = zext i1 %1167 to i8
  store i8 %1168, i8* %38, align 1
  %1169 = add i64 %1142, 9
  store i64 %1169, i64* %3, align 8
  store i32 %1146, i32* %1144, align 4
  %1170 = load i64, i64* %3, align 8
  %1171 = add i64 %1170, -333
  store i64 %1171, i64* %3, align 8
  br label %block_.L_47aad6

block_.L_47ac28:                                  ; preds = %block_.L_47aad6
  %1172 = add i64 %459, -8
  %1173 = add i64 %487, 8
  store i64 %1173, i64* %3, align 8
  %1174 = inttoptr i64 %1172 to i32*
  %1175 = load i32, i32* %1174, align 4
  %1176 = add i32 %1175, 1
  %1177 = zext i32 %1176 to i64
  store i64 %1177, i64* %RAX.i540, align 8
  %1178 = icmp eq i32 %1175, -1
  %1179 = icmp eq i32 %1176, 0
  %1180 = or i1 %1178, %1179
  %1181 = zext i1 %1180 to i8
  store i8 %1181, i8* %14, align 1
  %1182 = and i32 %1176, 255
  %1183 = tail call i32 @llvm.ctpop.i32(i32 %1182)
  %1184 = trunc i32 %1183 to i8
  %1185 = and i8 %1184, 1
  %1186 = xor i8 %1185, 1
  store i8 %1186, i8* %21, align 1
  %1187 = xor i32 %1176, %1175
  %1188 = lshr i32 %1187, 4
  %1189 = trunc i32 %1188 to i8
  %1190 = and i8 %1189, 1
  store i8 %1190, i8* %26, align 1
  %1191 = zext i1 %1179 to i8
  store i8 %1191, i8* %29, align 1
  %1192 = lshr i32 %1176, 31
  %1193 = trunc i32 %1192 to i8
  store i8 %1193, i8* %32, align 1
  %1194 = lshr i32 %1175, 31
  %1195 = xor i32 %1192, %1194
  %1196 = add nuw nsw i32 %1195, %1192
  %1197 = icmp eq i32 %1196, 2
  %1198 = zext i1 %1197 to i8
  store i8 %1198, i8* %38, align 1
  %1199 = add i64 %487, 14
  store i64 %1199, i64* %3, align 8
  store i32 %1176, i32* %1174, align 4
  %1200 = load i64, i64* %3, align 8
  %1201 = add i64 %1200, -369
  store i64 %1201, i64* %3, align 8
  br label %block_.L_47aac5

block_.L_47ac3b:                                  ; preds = %block_.L_47aac5
  %1202 = add i64 %426, -12
  %1203 = add i64 %454, 8
  store i64 %1203, i64* %3, align 8
  %1204 = inttoptr i64 %1202 to i32*
  %1205 = load i32, i32* %1204, align 4
  %1206 = add i32 %1205, 1
  %1207 = zext i32 %1206 to i64
  store i64 %1207, i64* %RAX.i540, align 8
  %1208 = icmp eq i32 %1205, -1
  %1209 = icmp eq i32 %1206, 0
  %1210 = or i1 %1208, %1209
  %1211 = zext i1 %1210 to i8
  store i8 %1211, i8* %14, align 1
  %1212 = and i32 %1206, 255
  %1213 = tail call i32 @llvm.ctpop.i32(i32 %1212)
  %1214 = trunc i32 %1213 to i8
  %1215 = and i8 %1214, 1
  %1216 = xor i8 %1215, 1
  store i8 %1216, i8* %21, align 1
  %1217 = xor i32 %1206, %1205
  %1218 = lshr i32 %1217, 4
  %1219 = trunc i32 %1218 to i8
  %1220 = and i8 %1219, 1
  store i8 %1220, i8* %26, align 1
  %1221 = zext i1 %1209 to i8
  store i8 %1221, i8* %29, align 1
  %1222 = lshr i32 %1206, 31
  %1223 = trunc i32 %1222 to i8
  store i8 %1223, i8* %32, align 1
  %1224 = lshr i32 %1205, 31
  %1225 = xor i32 %1222, %1224
  %1226 = add nuw nsw i32 %1225, %1222
  %1227 = icmp eq i32 %1226, 2
  %1228 = zext i1 %1227 to i8
  store i8 %1228, i8* %38, align 1
  %1229 = add i64 %454, 14
  store i64 %1229, i64* %3, align 8
  store i32 %1206, i32* %1204, align 4
  %1230 = load i64, i64* %3, align 8
  %1231 = add i64 %1230, -405
  store i64 %1231, i64* %3, align 8
  br label %block_.L_47aab4

block_.L_47ac4e:                                  ; preds = %block_.L_47aab4
  %1232 = add i64 %421, 1050
  br label %block_.L_47b068

block_.L_47ac5a:                                  ; preds = %block_.L_47ac5a.preheader, %block_.L_47b050
  %1233 = phi i64 [ %3206, %block_.L_47b050 ], [ %.pre90, %block_.L_47ac5a.preheader ]
  %MEMORY.9 = phi %struct.Memory* [ %MEMORY.10, %block_.L_47b050 ], [ %MEMORY.5, %block_.L_47ac5a.preheader ]
  %1234 = load i64, i64* %RBP.i, align 8
  %1235 = add i64 %1234, -12
  %1236 = add i64 %1233, 4
  store i64 %1236, i64* %3, align 8
  %1237 = inttoptr i64 %1235 to i32*
  %1238 = load i32, i32* %1237, align 4
  %1239 = add i32 %1238, -6
  %1240 = icmp ult i32 %1238, 6
  %1241 = zext i1 %1240 to i8
  store i8 %1241, i8* %14, align 1
  %1242 = and i32 %1239, 255
  %1243 = tail call i32 @llvm.ctpop.i32(i32 %1242)
  %1244 = trunc i32 %1243 to i8
  %1245 = and i8 %1244, 1
  %1246 = xor i8 %1245, 1
  store i8 %1246, i8* %21, align 1
  %1247 = xor i32 %1239, %1238
  %1248 = lshr i32 %1247, 4
  %1249 = trunc i32 %1248 to i8
  %1250 = and i8 %1249, 1
  store i8 %1250, i8* %26, align 1
  %1251 = icmp eq i32 %1239, 0
  %1252 = zext i1 %1251 to i8
  store i8 %1252, i8* %29, align 1
  %1253 = lshr i32 %1239, 31
  %1254 = trunc i32 %1253 to i8
  store i8 %1254, i8* %32, align 1
  %1255 = lshr i32 %1238, 31
  %1256 = xor i32 %1253, %1255
  %1257 = add nuw nsw i32 %1256, %1255
  %1258 = icmp eq i32 %1257, 2
  %1259 = zext i1 %1258 to i8
  store i8 %1259, i8* %38, align 1
  %1260 = icmp ne i8 %1254, 0
  %1261 = xor i1 %1260, %1258
  %.v108 = select i1 %1261, i64 10, i64 1033
  %1262 = add i64 %1233, %.v108
  store i64 %1262, i64* %3, align 8
  br i1 %1261, label %block_47ac64, label %block_.L_47b063

block_47ac64:                                     ; preds = %block_.L_47ac5a
  %1263 = add i64 %1234, -8
  %1264 = add i64 %1262, 7
  store i64 %1264, i64* %3, align 8
  %1265 = inttoptr i64 %1263 to i32*
  store i32 0, i32* %1265, align 4
  %.pre91 = load i64, i64* %3, align 8
  br label %block_.L_47ac6b

block_.L_47ac6b:                                  ; preds = %block_.L_47b03d, %block_47ac64
  %1266 = phi i64 [ %.pre91, %block_47ac64 ], [ %3176, %block_.L_47b03d ]
  %MEMORY.10 = phi %struct.Memory* [ %MEMORY.9, %block_47ac64 ], [ %MEMORY.11, %block_.L_47b03d ]
  %1267 = load i64, i64* %RBP.i, align 8
  %1268 = add i64 %1267, -8
  %1269 = add i64 %1266, 4
  store i64 %1269, i64* %3, align 8
  %1270 = inttoptr i64 %1268 to i32*
  %1271 = load i32, i32* %1270, align 4
  %1272 = add i32 %1271, -8
  %1273 = icmp ult i32 %1271, 8
  %1274 = zext i1 %1273 to i8
  store i8 %1274, i8* %14, align 1
  %1275 = and i32 %1272, 255
  %1276 = tail call i32 @llvm.ctpop.i32(i32 %1275)
  %1277 = trunc i32 %1276 to i8
  %1278 = and i8 %1277, 1
  %1279 = xor i8 %1278, 1
  store i8 %1279, i8* %21, align 1
  %1280 = xor i32 %1272, %1271
  %1281 = lshr i32 %1280, 4
  %1282 = trunc i32 %1281 to i8
  %1283 = and i8 %1282, 1
  store i8 %1283, i8* %26, align 1
  %1284 = icmp eq i32 %1272, 0
  %1285 = zext i1 %1284 to i8
  store i8 %1285, i8* %29, align 1
  %1286 = lshr i32 %1272, 31
  %1287 = trunc i32 %1286 to i8
  store i8 %1287, i8* %32, align 1
  %1288 = lshr i32 %1271, 31
  %1289 = xor i32 %1286, %1288
  %1290 = add nuw nsw i32 %1289, %1288
  %1291 = icmp eq i32 %1290, 2
  %1292 = zext i1 %1291 to i8
  store i8 %1292, i8* %38, align 1
  %1293 = icmp ne i8 %1287, 0
  %1294 = xor i1 %1293, %1291
  %.v101 = select i1 %1294, i64 10, i64 997
  %1295 = add i64 %1266, %.v101
  store i64 %1295, i64* %3, align 8
  br i1 %1294, label %block_47ac75, label %block_.L_47b050

block_47ac75:                                     ; preds = %block_.L_47ac6b
  %1296 = add i64 %1267, -4
  %1297 = add i64 %1295, 7
  store i64 %1297, i64* %3, align 8
  %1298 = inttoptr i64 %1296 to i32*
  store i32 0, i32* %1298, align 4
  %.pre92 = load i64, i64* %3, align 8
  br label %block_.L_47ac7c

block_.L_47ac7c:                                  ; preds = %block_.L_47b02a, %block_47ac75
  %1299 = phi i64 [ %.pre92, %block_47ac75 ], [ %3146, %block_.L_47b02a ]
  %MEMORY.11 = phi %struct.Memory* [ %MEMORY.10, %block_47ac75 ], [ %MEMORY.15, %block_.L_47b02a ]
  %1300 = load i64, i64* %RBP.i, align 8
  %1301 = add i64 %1300, -4
  %1302 = add i64 %1299, 4
  store i64 %1302, i64* %3, align 8
  %1303 = inttoptr i64 %1301 to i32*
  %1304 = load i32, i32* %1303, align 4
  %1305 = add i32 %1304, -8
  %1306 = icmp ult i32 %1304, 8
  %1307 = zext i1 %1306 to i8
  store i8 %1307, i8* %14, align 1
  %1308 = and i32 %1305, 255
  %1309 = tail call i32 @llvm.ctpop.i32(i32 %1308)
  %1310 = trunc i32 %1309 to i8
  %1311 = and i8 %1310, 1
  %1312 = xor i8 %1311, 1
  store i8 %1312, i8* %21, align 1
  %1313 = xor i32 %1305, %1304
  %1314 = lshr i32 %1313, 4
  %1315 = trunc i32 %1314 to i8
  %1316 = and i8 %1315, 1
  store i8 %1316, i8* %26, align 1
  %1317 = icmp eq i32 %1305, 0
  %1318 = zext i1 %1317 to i8
  store i8 %1318, i8* %29, align 1
  %1319 = lshr i32 %1305, 31
  %1320 = trunc i32 %1319 to i8
  store i8 %1320, i8* %32, align 1
  %1321 = lshr i32 %1304, 31
  %1322 = xor i32 %1319, %1321
  %1323 = add nuw nsw i32 %1322, %1321
  %1324 = icmp eq i32 %1323, 2
  %1325 = zext i1 %1324 to i8
  store i8 %1325, i8* %38, align 1
  %1326 = icmp ne i8 %1320, 0
  %1327 = xor i1 %1326, %1324
  %.v102 = select i1 %1327, i64 10, i64 961
  %1328 = add i64 %1299, %.v102
  store i64 %1328, i64* %3, align 8
  br i1 %1327, label %block_47ac86, label %block_.L_47b03d

block_47ac86:                                     ; preds = %block_.L_47ac7c
  %1329 = add i64 %1328, 3
  store i64 %1329, i64* %3, align 8
  %1330 = load i32, i32* %1303, align 4
  %1331 = shl i32 %1330, 3
  %1332 = zext i32 %1331 to i64
  store i64 %1332, i64* %RAX.i540, align 8
  %1333 = lshr i32 %1330, 29
  %1334 = trunc i32 %1333 to i8
  %1335 = and i8 %1334, 1
  store i8 %1335, i8* %14, align 1
  %1336 = and i32 %1331, 248
  %1337 = tail call i32 @llvm.ctpop.i32(i32 %1336)
  %1338 = trunc i32 %1337 to i8
  %1339 = and i8 %1338, 1
  %1340 = xor i8 %1339, 1
  store i8 %1340, i8* %21, align 1
  store i8 0, i8* %26, align 1
  %1341 = icmp eq i32 %1331, 0
  %1342 = zext i1 %1341 to i8
  store i8 %1342, i8* %29, align 1
  %1343 = lshr i32 %1330, 28
  %1344 = trunc i32 %1343 to i8
  %1345 = and i8 %1344, 1
  store i8 %1345, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %1346 = add i64 %1300, -8
  %1347 = add i64 %1328, 9
  store i64 %1347, i64* %3, align 8
  %1348 = inttoptr i64 %1346 to i32*
  %1349 = load i32, i32* %1348, align 4
  %1350 = add i32 %1349, %1331
  %1351 = zext i32 %1350 to i64
  store i64 %1351, i64* %RAX.i540, align 8
  %1352 = icmp ult i32 %1350, %1331
  %1353 = icmp ult i32 %1350, %1349
  %1354 = or i1 %1352, %1353
  %1355 = zext i1 %1354 to i8
  store i8 %1355, i8* %14, align 1
  %1356 = and i32 %1350, 255
  %1357 = tail call i32 @llvm.ctpop.i32(i32 %1356)
  %1358 = trunc i32 %1357 to i8
  %1359 = and i8 %1358, 1
  %1360 = xor i8 %1359, 1
  store i8 %1360, i8* %21, align 1
  %1361 = xor i32 %1349, %1331
  %1362 = xor i32 %1361, %1350
  %1363 = lshr i32 %1362, 4
  %1364 = trunc i32 %1363 to i8
  %1365 = and i8 %1364, 1
  store i8 %1365, i8* %26, align 1
  %1366 = icmp eq i32 %1350, 0
  %1367 = zext i1 %1366 to i8
  store i8 %1367, i8* %29, align 1
  %1368 = lshr i32 %1350, 31
  %1369 = trunc i32 %1368 to i8
  store i8 %1369, i8* %32, align 1
  %1370 = lshr i32 %1330, 28
  %1371 = and i32 %1370, 1
  %1372 = lshr i32 %1349, 31
  %1373 = xor i32 %1368, %1371
  %1374 = xor i32 %1368, %1372
  %1375 = add nuw nsw i32 %1373, %1374
  %1376 = icmp eq i32 %1375, 2
  %1377 = zext i1 %1376 to i8
  store i8 %1377, i8* %38, align 1
  %1378 = add i64 %1300, -16
  %1379 = add i64 %1328, 12
  store i64 %1379, i64* %3, align 8
  %1380 = inttoptr i64 %1378 to i32*
  store i32 %1350, i32* %1380, align 4
  %1381 = load i64, i64* %RBP.i, align 8
  %1382 = add i64 %1381, -24
  %1383 = load i64, i64* %3, align 8
  %1384 = add i64 %1383, 4
  store i64 %1384, i64* %3, align 8
  %1385 = inttoptr i64 %1382 to i32*
  %1386 = load i32, i32* %1385, align 4
  store i8 0, i8* %14, align 1
  %1387 = and i32 %1386, 255
  %1388 = tail call i32 @llvm.ctpop.i32(i32 %1387)
  %1389 = trunc i32 %1388 to i8
  %1390 = and i8 %1389, 1
  %1391 = xor i8 %1390, 1
  store i8 %1391, i8* %21, align 1
  store i8 0, i8* %26, align 1
  %1392 = icmp eq i32 %1386, 0
  %1393 = zext i1 %1392 to i8
  store i8 %1393, i8* %29, align 1
  %1394 = lshr i32 %1386, 31
  %1395 = trunc i32 %1394 to i8
  store i8 %1395, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %.v109 = select i1 %1392, i64 27, i64 10
  %1396 = add i64 %1383, %.v109
  store i64 %1396, i64* %3, align 8
  br i1 %1392, label %block_.L_47acad, label %block_47ac9c

block_47ac9c:                                     ; preds = %block_47ac86
  %1397 = load i16, i16* bitcast (%G_0x6d1f9c_type* @G_0x6d1f9c to i16*), align 8
  %1398 = sext i16 %1397 to i64
  %1399 = and i64 %1398, 4294967295
  store i64 %1399, i64* %RAX.i540, align 8
  %1400 = sext i16 %1397 to i32
  store i8 0, i8* %14, align 1
  %1401 = and i32 %1400, 255
  %1402 = tail call i32 @llvm.ctpop.i32(i32 %1401)
  %1403 = trunc i32 %1402 to i8
  %1404 = and i8 %1403, 1
  %1405 = xor i8 %1404, 1
  store i8 %1405, i8* %21, align 1
  store i8 0, i8* %26, align 1
  %1406 = icmp eq i16 %1397, 0
  %1407 = zext i1 %1406 to i8
  store i8 %1407, i8* %29, align 1
  %1408 = lshr i32 %1400, 31
  %1409 = trunc i32 %1408 to i8
  store i8 %1409, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %.v110 = select i1 %1406, i64 236, i64 17
  %1410 = add i64 %1396, %.v110
  store i64 %1410, i64* %3, align 8
  br i1 %1406, label %block_.L_47ad88, label %block_.L_47acad

block_.L_47acad:                                  ; preds = %block_47ac9c, %block_47ac86
  %1411 = phi i64 [ %1410, %block_47ac9c ], [ %1396, %block_47ac86 ]
  store i64 ptrtoint (%G__0x6cfc70_type* @G__0x6cfc70 to i64), i64* %RAX.i540, align 8
  store i64 ptrtoint (%G__0x4b9d50_type* @G__0x4b9d50 to i64), i64* %RCX.i587, align 8
  store i64 ptrtoint (%G__0x6d0bc0_type* @G__0x6d0bc0 to i64), i64* %RDX.i585, align 8
  store i64 ptrtoint (%G__0x4b9750_type* @G__0x4b9750 to i64), i64* %RSI.i583, align 8
  %1412 = add i64 %1381, -12
  %1413 = add i64 %1411, 44
  store i64 %1413, i64* %3, align 8
  %1414 = inttoptr i64 %1412 to i32*
  %1415 = load i32, i32* %1414, align 4
  %1416 = sext i32 %1415 to i64
  %1417 = shl nsw i64 %1416, 8
  store i64 %1417, i64* %RDI.i580, align 8
  %1418 = add i64 %1417, ptrtoint (%G__0x4b9750_type* @G__0x4b9750 to i64)
  store i64 %1418, i64* %RSI.i583, align 8
  %1419 = icmp ult i64 %1418, ptrtoint (%G__0x4b9750_type* @G__0x4b9750 to i64)
  %1420 = icmp ult i64 %1418, %1417
  %1421 = or i1 %1419, %1420
  %1422 = zext i1 %1421 to i8
  store i8 %1422, i8* %14, align 1
  %1423 = trunc i64 %1418 to i32
  %1424 = and i32 %1423, 248
  %1425 = tail call i32 @llvm.ctpop.i32(i32 %1424)
  %1426 = trunc i32 %1425 to i8
  %1427 = and i8 %1426, 1
  %1428 = xor i8 %1427, 1
  store i8 %1428, i8* %21, align 1
  %1429 = xor i64 %1418, ptrtoint (%G__0x4b9750_type* @G__0x4b9750 to i64)
  %1430 = lshr i64 %1429, 4
  %1431 = trunc i64 %1430 to i8
  %1432 = and i8 %1431, 1
  store i8 %1432, i8* %26, align 1
  %1433 = icmp eq i64 %1418, 0
  %1434 = zext i1 %1433 to i8
  store i8 %1434, i8* %29, align 1
  %1435 = lshr i64 %1418, 63
  %1436 = trunc i64 %1435 to i8
  store i8 %1436, i8* %32, align 1
  %1437 = lshr i64 %1416, 55
  %1438 = and i64 %1437, 1
  %1439 = xor i64 %1435, lshr (i64 ptrtoint (%G__0x4b9750_type* @G__0x4b9750 to i64), i64 63)
  %1440 = xor i64 %1435, %1438
  %1441 = add nuw nsw i64 %1439, %1440
  %1442 = icmp eq i64 %1441, 2
  %1443 = zext i1 %1442 to i8
  store i8 %1443, i8* %38, align 1
  %1444 = add i64 %1381, -8
  %1445 = add i64 %1411, 55
  store i64 %1445, i64* %3, align 8
  %1446 = inttoptr i64 %1444 to i32*
  %1447 = load i32, i32* %1446, align 4
  %1448 = sext i32 %1447 to i64
  %1449 = shl nsw i64 %1448, 5
  store i64 %1449, i64* %RDI.i580, align 8
  %1450 = add i64 %1449, %1418
  store i64 %1450, i64* %RSI.i583, align 8
  %1451 = icmp ult i64 %1450, %1418
  %1452 = icmp ult i64 %1450, %1449
  %1453 = or i1 %1451, %1452
  %1454 = zext i1 %1453 to i8
  store i8 %1454, i8* %14, align 1
  %1455 = trunc i64 %1450 to i32
  %1456 = and i32 %1455, 248
  %1457 = tail call i32 @llvm.ctpop.i32(i32 %1456)
  %1458 = trunc i32 %1457 to i8
  %1459 = and i8 %1458, 1
  %1460 = xor i8 %1459, 1
  store i8 %1460, i8* %21, align 1
  %1461 = xor i64 %1418, %1450
  %1462 = lshr i64 %1461, 4
  %1463 = trunc i64 %1462 to i8
  %1464 = and i8 %1463, 1
  store i8 %1464, i8* %26, align 1
  %1465 = icmp eq i64 %1450, 0
  %1466 = zext i1 %1465 to i8
  store i8 %1466, i8* %29, align 1
  %1467 = lshr i64 %1450, 63
  %1468 = trunc i64 %1467 to i8
  store i8 %1468, i8* %32, align 1
  %1469 = lshr i64 %1448, 58
  %1470 = and i64 %1469, 1
  %1471 = xor i64 %1467, %1435
  %1472 = xor i64 %1467, %1470
  %1473 = add nuw nsw i64 %1471, %1472
  %1474 = icmp eq i64 %1473, 2
  %1475 = zext i1 %1474 to i8
  store i8 %1475, i8* %38, align 1
  %1476 = load i64, i64* %RBP.i, align 8
  %1477 = add i64 %1476, -4
  %1478 = add i64 %1411, 66
  store i64 %1478, i64* %3, align 8
  %1479 = inttoptr i64 %1477 to i32*
  %1480 = load i32, i32* %1479, align 4
  %1481 = sext i32 %1480 to i64
  store i64 %1481, i64* %RDI.i580, align 8
  %1482 = shl nsw i64 %1481, 2
  %1483 = add i64 %1482, %1450
  %1484 = add i64 %1411, 70
  store i64 %1484, i64* %3, align 8
  %1485 = inttoptr i64 %1483 to i32*
  %1486 = load i32, i32* %1485, align 4
  %1487 = shl i32 %1486, 4
  %1488 = zext i32 %1487 to i64
  store i64 %1488, i64* %388, align 8
  %1489 = lshr i32 %1486, 28
  %1490 = trunc i32 %1489 to i8
  %1491 = and i8 %1490, 1
  store i8 %1491, i8* %14, align 1
  %1492 = and i32 %1487, 240
  %1493 = tail call i32 @llvm.ctpop.i32(i32 %1492)
  %1494 = trunc i32 %1493 to i8
  %1495 = and i8 %1494, 1
  %1496 = xor i8 %1495, 1
  store i8 %1496, i8* %21, align 1
  store i8 0, i8* %26, align 1
  %1497 = icmp eq i32 %1487, 0
  %1498 = zext i1 %1497 to i8
  store i8 %1498, i8* %29, align 1
  %1499 = lshr i32 %1486, 27
  %1500 = trunc i32 %1499 to i8
  %1501 = and i8 %1500, 1
  store i8 %1501, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %1502 = add i64 %1476, -16
  %1503 = add i64 %1411, 78
  store i64 %1503, i64* %3, align 8
  %1504 = inttoptr i64 %1502 to i32*
  %1505 = load i32, i32* %1504, align 4
  %1506 = sext i32 %1505 to i64
  store i64 %1506, i64* %RSI.i583, align 8
  %1507 = shl nsw i64 %1506, 1
  %1508 = add nsw i64 %1507, 4952832
  %1509 = add i64 %1411, 87
  store i64 %1509, i64* %3, align 8
  %1510 = inttoptr i64 %1508 to i16*
  %1511 = load i16, i16* %1510, align 2
  %1512 = sext i16 %1511 to i64
  %1513 = and i64 %1512, 4294967295
  store i64 %1513, i64* %390, align 8
  %1514 = add i64 %1476, -40
  %1515 = load i64, i64* %RAX.i540, align 8
  %1516 = add i64 %1411, 91
  store i64 %1516, i64* %3, align 8
  %1517 = inttoptr i64 %1514 to i64*
  store i64 %1515, i64* %1517, align 8
  %1518 = load i32, i32* %R8D.i560, align 4
  %1519 = zext i32 %1518 to i64
  %1520 = load i64, i64* %3, align 8
  store i64 %1519, i64* %RAX.i540, align 8
  %1521 = load i64, i64* %RBP.i, align 8
  %1522 = add i64 %1521, -48
  %1523 = load i64, i64* %RDX.i585, align 8
  %1524 = add i64 %1520, 7
  store i64 %1524, i64* %3, align 8
  %1525 = inttoptr i64 %1522 to i64*
  store i64 %1523, i64* %1525, align 8
  %1526 = load i64, i64* %3, align 8
  %1527 = load i32, i32* %EAX.i599, align 8
  %1528 = sext i32 %1527 to i64
  %1529 = lshr i64 %1528, 32
  store i64 %1529, i64* %RDX.i585, align 8
  %1530 = load i32, i32* %R9D.i552, align 4
  %1531 = add i64 %1526, 4
  store i64 %1531, i64* %3, align 8
  %1532 = zext i32 %1527 to i64
  %1533 = sext i32 %1530 to i64
  %1534 = shl nuw i64 %1529, 32
  %1535 = or i64 %1534, %1532
  %1536 = sdiv i64 %1535, %1533
  %1537 = shl i64 %1536, 32
  %1538 = ashr exact i64 %1537, 32
  %1539 = icmp eq i64 %1536, %1538
  br i1 %1539, label %1542, label %1540

; <label>:1540:                                   ; preds = %block_.L_47acad
  %1541 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %1531, %struct.Memory* %MEMORY.11)
  %.pre94 = load i64, i64* %3, align 8
  br label %routine_idivl__r9d.exit538

; <label>:1542:                                   ; preds = %block_.L_47acad
  %1543 = srem i64 %1535, %1533
  %1544 = and i64 %1536, 4294967295
  store i64 %1544, i64* %RAX.i540, align 8
  %1545 = and i64 %1543, 4294967295
  store i64 %1545, i64* %391, align 8
  store i8 0, i8* %14, align 1
  store i8 0, i8* %21, align 1
  store i8 0, i8* %26, align 1
  store i8 0, i8* %29, align 1
  store i8 0, i8* %32, align 1
  store i8 0, i8* %38, align 1
  br label %routine_idivl__r9d.exit538

routine_idivl__r9d.exit538:                       ; preds = %1542, %1540
  %1546 = phi i64 [ %.pre94, %1540 ], [ %1531, %1542 ]
  %1547 = phi %struct.Memory* [ %1541, %1540 ], [ %MEMORY.11, %1542 ]
  %1548 = load i64, i64* %RBP.i, align 8
  %1549 = add i64 %1548, -12
  %1550 = add i64 %1546, 4
  store i64 %1550, i64* %3, align 8
  %1551 = inttoptr i64 %1549 to i32*
  %1552 = load i32, i32* %1551, align 4
  %1553 = sext i32 %1552 to i64
  %1554 = shl nsw i64 %1553, 8
  store i64 %1554, i64* %RSI.i583, align 8
  %.lobit39 = lshr i32 %1552, 31
  %1555 = trunc i32 %.lobit39 to i8
  store i8 %1555, i8* %14, align 1
  store i8 1, i8* %21, align 1
  store i8 0, i8* %26, align 1
  %1556 = icmp eq i32 %1552, 0
  %1557 = zext i1 %1556 to i8
  store i8 %1557, i8* %29, align 1
  %1558 = lshr i64 %1553, 55
  %1559 = trunc i64 %1558 to i8
  %1560 = and i8 %1559, 1
  store i8 %1560, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %1561 = add i64 %1548, -48
  %1562 = add i64 %1546, 12
  store i64 %1562, i64* %3, align 8
  %1563 = inttoptr i64 %1561 to i64*
  %1564 = load i64, i64* %1563, align 8
  %1565 = add i64 %1554, %1564
  store i64 %1565, i64* %RDI.i580, align 8
  %1566 = icmp ult i64 %1565, %1564
  %1567 = icmp ult i64 %1565, %1554
  %1568 = or i1 %1566, %1567
  %1569 = zext i1 %1568 to i8
  store i8 %1569, i8* %14, align 1
  %1570 = trunc i64 %1565 to i32
  %1571 = and i32 %1570, 255
  %1572 = tail call i32 @llvm.ctpop.i32(i32 %1571)
  %1573 = trunc i32 %1572 to i8
  %1574 = and i8 %1573, 1
  %1575 = xor i8 %1574, 1
  store i8 %1575, i8* %21, align 1
  %1576 = xor i64 %1564, %1565
  %1577 = lshr i64 %1576, 4
  %1578 = trunc i64 %1577 to i8
  %1579 = and i8 %1578, 1
  store i8 %1579, i8* %26, align 1
  %1580 = icmp eq i64 %1565, 0
  %1581 = zext i1 %1580 to i8
  store i8 %1581, i8* %29, align 1
  %1582 = lshr i64 %1565, 63
  %1583 = trunc i64 %1582 to i8
  store i8 %1583, i8* %32, align 1
  %1584 = lshr i64 %1564, 63
  %1585 = lshr i64 %1553, 55
  %1586 = and i64 %1585, 1
  %1587 = xor i64 %1582, %1584
  %1588 = xor i64 %1582, %1586
  %1589 = add nuw nsw i64 %1587, %1588
  %1590 = icmp eq i64 %1589, 2
  %1591 = zext i1 %1590 to i8
  store i8 %1591, i8* %38, align 1
  %1592 = add i64 %1548, -8
  %1593 = add i64 %1546, 19
  store i64 %1593, i64* %3, align 8
  %1594 = inttoptr i64 %1592 to i32*
  %1595 = load i32, i32* %1594, align 4
  %1596 = sext i32 %1595 to i64
  %1597 = shl nsw i64 %1596, 5
  store i64 %1597, i64* %RSI.i583, align 8
  %1598 = add i64 %1597, %1565
  store i64 %1598, i64* %RDI.i580, align 8
  %1599 = icmp ult i64 %1598, %1565
  %1600 = icmp ult i64 %1598, %1597
  %1601 = or i1 %1599, %1600
  %1602 = zext i1 %1601 to i8
  store i8 %1602, i8* %14, align 1
  %1603 = trunc i64 %1598 to i32
  %1604 = and i32 %1603, 255
  %1605 = tail call i32 @llvm.ctpop.i32(i32 %1604)
  %1606 = trunc i32 %1605 to i8
  %1607 = and i8 %1606, 1
  %1608 = xor i8 %1607, 1
  store i8 %1608, i8* %21, align 1
  %1609 = xor i64 %1565, %1598
  %1610 = lshr i64 %1609, 4
  %1611 = trunc i64 %1610 to i8
  %1612 = and i8 %1611, 1
  store i8 %1612, i8* %26, align 1
  %1613 = icmp eq i64 %1598, 0
  %1614 = zext i1 %1613 to i8
  store i8 %1614, i8* %29, align 1
  %1615 = lshr i64 %1598, 63
  %1616 = trunc i64 %1615 to i8
  store i8 %1616, i8* %32, align 1
  %1617 = lshr i64 %1596, 58
  %1618 = and i64 %1617, 1
  %1619 = xor i64 %1615, %1582
  %1620 = xor i64 %1615, %1618
  %1621 = add nuw nsw i64 %1619, %1620
  %1622 = icmp eq i64 %1621, 2
  %1623 = zext i1 %1622 to i8
  store i8 %1623, i8* %38, align 1
  %1624 = load i64, i64* %RBP.i, align 8
  %1625 = add i64 %1624, -4
  %1626 = add i64 %1546, 30
  store i64 %1626, i64* %3, align 8
  %1627 = inttoptr i64 %1625 to i32*
  %1628 = load i32, i32* %1627, align 4
  %1629 = sext i32 %1628 to i64
  store i64 %1629, i64* %RSI.i583, align 8
  %1630 = shl nsw i64 %1629, 2
  %1631 = add i64 %1630, %1598
  %1632 = load i32, i32* %EAX.i599, align 4
  %1633 = add i64 %1546, 33
  store i64 %1633, i64* %3, align 8
  %1634 = inttoptr i64 %1631 to i32*
  store i32 %1632, i32* %1634, align 4
  %1635 = load i64, i64* %RBP.i, align 8
  %1636 = add i64 %1635, -12
  %1637 = load i64, i64* %3, align 8
  %1638 = add i64 %1637, 4
  store i64 %1638, i64* %3, align 8
  %1639 = inttoptr i64 %1636 to i32*
  %1640 = load i32, i32* %1639, align 4
  %1641 = sext i32 %1640 to i64
  %1642 = shl nsw i64 %1641, 8
  store i64 %1642, i64* %RSI.i583, align 8
  %1643 = load i64, i64* %RCX.i587, align 8
  %1644 = add i64 %1642, %1643
  store i64 %1644, i64* %RCX.i587, align 8
  %1645 = icmp ult i64 %1644, %1643
  %1646 = icmp ult i64 %1644, %1642
  %1647 = or i1 %1645, %1646
  %1648 = zext i1 %1647 to i8
  store i8 %1648, i8* %14, align 1
  %1649 = trunc i64 %1644 to i32
  %1650 = and i32 %1649, 255
  %1651 = tail call i32 @llvm.ctpop.i32(i32 %1650)
  %1652 = trunc i32 %1651 to i8
  %1653 = and i8 %1652, 1
  %1654 = xor i8 %1653, 1
  store i8 %1654, i8* %21, align 1
  %1655 = xor i64 %1643, %1644
  %1656 = lshr i64 %1655, 4
  %1657 = trunc i64 %1656 to i8
  %1658 = and i8 %1657, 1
  store i8 %1658, i8* %26, align 1
  %1659 = icmp eq i64 %1644, 0
  %1660 = zext i1 %1659 to i8
  store i8 %1660, i8* %29, align 1
  %1661 = lshr i64 %1644, 63
  %1662 = trunc i64 %1661 to i8
  store i8 %1662, i8* %32, align 1
  %1663 = lshr i64 %1643, 63
  %1664 = lshr i64 %1641, 55
  %1665 = and i64 %1664, 1
  %1666 = xor i64 %1661, %1663
  %1667 = xor i64 %1661, %1665
  %1668 = add nuw nsw i64 %1666, %1667
  %1669 = icmp eq i64 %1668, 2
  %1670 = zext i1 %1669 to i8
  store i8 %1670, i8* %38, align 1
  %1671 = add i64 %1635, -8
  %1672 = add i64 %1637, 15
  store i64 %1672, i64* %3, align 8
  %1673 = inttoptr i64 %1671 to i32*
  %1674 = load i32, i32* %1673, align 4
  %1675 = sext i32 %1674 to i64
  %1676 = shl nsw i64 %1675, 5
  store i64 %1676, i64* %RSI.i583, align 8
  %1677 = add i64 %1676, %1644
  store i64 %1677, i64* %RCX.i587, align 8
  %1678 = icmp ult i64 %1677, %1644
  %1679 = icmp ult i64 %1677, %1676
  %1680 = or i1 %1678, %1679
  %1681 = zext i1 %1680 to i8
  store i8 %1681, i8* %14, align 1
  %1682 = trunc i64 %1677 to i32
  %1683 = and i32 %1682, 255
  %1684 = tail call i32 @llvm.ctpop.i32(i32 %1683)
  %1685 = trunc i32 %1684 to i8
  %1686 = and i8 %1685, 1
  %1687 = xor i8 %1686, 1
  store i8 %1687, i8* %21, align 1
  %1688 = xor i64 %1644, %1677
  %1689 = lshr i64 %1688, 4
  %1690 = trunc i64 %1689 to i8
  %1691 = and i8 %1690, 1
  store i8 %1691, i8* %26, align 1
  %1692 = icmp eq i64 %1677, 0
  %1693 = zext i1 %1692 to i8
  store i8 %1693, i8* %29, align 1
  %1694 = lshr i64 %1677, 63
  %1695 = trunc i64 %1694 to i8
  store i8 %1695, i8* %32, align 1
  %1696 = lshr i64 %1675, 58
  %1697 = and i64 %1696, 1
  %1698 = xor i64 %1694, %1661
  %1699 = xor i64 %1694, %1697
  %1700 = add nuw nsw i64 %1698, %1699
  %1701 = icmp eq i64 %1700, 2
  %1702 = zext i1 %1701 to i8
  store i8 %1702, i8* %38, align 1
  %1703 = load i64, i64* %RBP.i, align 8
  %1704 = add i64 %1703, -4
  %1705 = add i64 %1637, 26
  store i64 %1705, i64* %3, align 8
  %1706 = inttoptr i64 %1704 to i32*
  %1707 = load i32, i32* %1706, align 4
  %1708 = sext i32 %1707 to i64
  store i64 %1708, i64* %RSI.i583, align 8
  %1709 = shl nsw i64 %1708, 2
  %1710 = add i64 %1709, %1677
  %1711 = add i64 %1637, 29
  store i64 %1711, i64* %3, align 8
  %1712 = inttoptr i64 %1710 to i32*
  %1713 = load i32, i32* %1712, align 4
  %1714 = zext i32 %1713 to i64
  store i64 %1714, i64* %RAX.i540, align 8
  %1715 = add i64 %1703, -16
  %1716 = add i64 %1637, 33
  store i64 %1716, i64* %3, align 8
  %1717 = inttoptr i64 %1715 to i32*
  %1718 = load i32, i32* %1717, align 4
  %1719 = sext i32 %1718 to i64
  store i64 %1719, i64* %RCX.i587, align 8
  %1720 = shl nsw i64 %1719, 1
  %1721 = add nsw i64 %1720, 4952832
  %1722 = add i64 %1637, 42
  store i64 %1722, i64* %3, align 8
  %1723 = inttoptr i64 %1721 to i16*
  %1724 = load i16, i16* %1723, align 2
  %1725 = sext i16 %1724 to i64
  %1726 = and i64 %1725, 4294967295
  store i64 %1726, i64* %388, align 8
  %1727 = sext i32 %1713 to i64
  %1728 = sext i16 %1724 to i64
  %1729 = mul nsw i64 %1728, %1727
  %1730 = trunc i64 %1729 to i32
  %1731 = and i64 %1729, 4294967295
  store i64 %1731, i64* %RAX.i540, align 8
  %1732 = shl i64 %1729, 32
  %1733 = ashr exact i64 %1732, 32
  %1734 = icmp ne i64 %1733, %1729
  %1735 = zext i1 %1734 to i8
  store i8 %1735, i8* %14, align 1
  %1736 = and i32 %1730, 255
  %1737 = tail call i32 @llvm.ctpop.i32(i32 %1736)
  %1738 = trunc i32 %1737 to i8
  %1739 = and i8 %1738, 1
  %1740 = xor i8 %1739, 1
  store i8 %1740, i8* %21, align 1
  store i8 0, i8* %26, align 1
  store i8 0, i8* %29, align 1
  %1741 = lshr i32 %1730, 31
  %1742 = trunc i32 %1741 to i8
  store i8 %1742, i8* %32, align 1
  store i8 %1735, i8* %38, align 1
  %1743 = add i64 %1703, -12
  %1744 = add i64 %1637, 50
  store i64 %1744, i64* %3, align 8
  %1745 = inttoptr i64 %1743 to i32*
  %1746 = load i32, i32* %1745, align 4
  %1747 = sext i32 %1746 to i64
  %1748 = shl nsw i64 %1747, 8
  store i64 %1748, i64* %RCX.i587, align 8
  %.lobit43 = lshr i32 %1746, 31
  %1749 = trunc i32 %.lobit43 to i8
  store i8 %1749, i8* %14, align 1
  store i8 1, i8* %21, align 1
  store i8 0, i8* %26, align 1
  %1750 = icmp eq i32 %1746, 0
  %1751 = zext i1 %1750 to i8
  store i8 %1751, i8* %29, align 1
  %1752 = lshr i64 %1747, 55
  %1753 = trunc i64 %1752 to i8
  %1754 = and i8 %1753, 1
  store i8 %1754, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %1755 = add i64 %1703, -40
  %1756 = add i64 %1637, 58
  store i64 %1756, i64* %3, align 8
  %1757 = inttoptr i64 %1755 to i64*
  %1758 = load i64, i64* %1757, align 8
  %1759 = add i64 %1748, %1758
  store i64 %1759, i64* %RSI.i583, align 8
  %1760 = icmp ult i64 %1759, %1758
  %1761 = icmp ult i64 %1759, %1748
  %1762 = or i1 %1760, %1761
  %1763 = zext i1 %1762 to i8
  store i8 %1763, i8* %14, align 1
  %1764 = trunc i64 %1759 to i32
  %1765 = and i32 %1764, 255
  %1766 = tail call i32 @llvm.ctpop.i32(i32 %1765)
  %1767 = trunc i32 %1766 to i8
  %1768 = and i8 %1767, 1
  %1769 = xor i8 %1768, 1
  store i8 %1769, i8* %21, align 1
  %1770 = xor i64 %1758, %1759
  %1771 = lshr i64 %1770, 4
  %1772 = trunc i64 %1771 to i8
  %1773 = and i8 %1772, 1
  store i8 %1773, i8* %26, align 1
  %1774 = icmp eq i64 %1759, 0
  %1775 = zext i1 %1774 to i8
  store i8 %1775, i8* %29, align 1
  %1776 = lshr i64 %1759, 63
  %1777 = trunc i64 %1776 to i8
  store i8 %1777, i8* %32, align 1
  %1778 = lshr i64 %1758, 63
  %1779 = lshr i64 %1747, 55
  %1780 = and i64 %1779, 1
  %1781 = xor i64 %1776, %1778
  %1782 = xor i64 %1776, %1780
  %1783 = add nuw nsw i64 %1781, %1782
  %1784 = icmp eq i64 %1783, 2
  %1785 = zext i1 %1784 to i8
  store i8 %1785, i8* %38, align 1
  %1786 = load i64, i64* %RBP.i, align 8
  %1787 = add i64 %1786, -8
  %1788 = add i64 %1637, 65
  store i64 %1788, i64* %3, align 8
  %1789 = inttoptr i64 %1787 to i32*
  %1790 = load i32, i32* %1789, align 4
  %1791 = sext i32 %1790 to i64
  %1792 = shl nsw i64 %1791, 5
  store i64 %1792, i64* %RCX.i587, align 8
  %1793 = add i64 %1792, %1759
  store i64 %1793, i64* %RSI.i583, align 8
  %1794 = icmp ult i64 %1793, %1759
  %1795 = icmp ult i64 %1793, %1792
  %1796 = or i1 %1794, %1795
  %1797 = zext i1 %1796 to i8
  store i8 %1797, i8* %14, align 1
  %1798 = trunc i64 %1793 to i32
  %1799 = and i32 %1798, 255
  %1800 = tail call i32 @llvm.ctpop.i32(i32 %1799)
  %1801 = trunc i32 %1800 to i8
  %1802 = and i8 %1801, 1
  %1803 = xor i8 %1802, 1
  store i8 %1803, i8* %21, align 1
  %1804 = xor i64 %1759, %1793
  %1805 = lshr i64 %1804, 4
  %1806 = trunc i64 %1805 to i8
  %1807 = and i8 %1806, 1
  store i8 %1807, i8* %26, align 1
  %1808 = icmp eq i64 %1793, 0
  %1809 = zext i1 %1808 to i8
  store i8 %1809, i8* %29, align 1
  %1810 = lshr i64 %1793, 63
  %1811 = trunc i64 %1810 to i8
  store i8 %1811, i8* %32, align 1
  %1812 = lshr i64 %1791, 58
  %1813 = and i64 %1812, 1
  %1814 = xor i64 %1810, %1776
  %1815 = xor i64 %1810, %1813
  %1816 = add nuw nsw i64 %1814, %1815
  %1817 = icmp eq i64 %1816, 2
  %1818 = zext i1 %1817 to i8
  store i8 %1818, i8* %38, align 1
  %1819 = add i64 %1786, -4
  %1820 = add i64 %1637, 76
  store i64 %1820, i64* %3, align 8
  %1821 = inttoptr i64 %1819 to i32*
  %1822 = load i32, i32* %1821, align 4
  %1823 = sext i32 %1822 to i64
  store i64 %1823, i64* %RCX.i587, align 8
  %1824 = shl nsw i64 %1823, 2
  %1825 = add i64 %1824, %1793
  %1826 = load i32, i32* %EAX.i599, align 4
  %1827 = add i64 %1637, 79
  store i64 %1827, i64* %3, align 8
  %1828 = inttoptr i64 %1825 to i32*
  store i32 %1826, i32* %1828, align 4
  %1829 = load i64, i64* %3, align 8
  %1830 = add i64 %1829, 219
  store i64 %1830, i64* %3, align 8
  br label %block_.L_47ae5e

block_.L_47ad88:                                  ; preds = %block_47ac9c
  store i64 ptrtoint (%G__0x6cfc70_type* @G__0x6cfc70 to i64), i64* %RAX.i540, align 8
  store i64 ptrtoint (%G__0x4b9d50_type* @G__0x4b9d50 to i64), i64* %RCX.i587, align 8
  store i64 ptrtoint (%G__0x6d0bc0_type* @G__0x6d0bc0 to i64), i64* %RDX.i585, align 8
  store i64 ptrtoint (%G__0x4b9750_type* @G__0x4b9750 to i64), i64* %RSI.i583, align 8
  %1831 = add i64 %1381, -12
  %1832 = add i64 %1410, 44
  store i64 %1832, i64* %3, align 8
  %1833 = inttoptr i64 %1831 to i32*
  %1834 = load i32, i32* %1833, align 4
  %1835 = sext i32 %1834 to i64
  %1836 = shl nsw i64 %1835, 8
  store i64 %1836, i64* %RDI.i580, align 8
  %1837 = add i64 %1836, ptrtoint (%G__0x4b9750_type* @G__0x4b9750 to i64)
  store i64 %1837, i64* %RSI.i583, align 8
  %1838 = icmp ult i64 %1837, ptrtoint (%G__0x4b9750_type* @G__0x4b9750 to i64)
  %1839 = icmp ult i64 %1837, %1836
  %1840 = or i1 %1838, %1839
  %1841 = zext i1 %1840 to i8
  store i8 %1841, i8* %14, align 1
  %1842 = trunc i64 %1837 to i32
  %1843 = and i32 %1842, 248
  %1844 = tail call i32 @llvm.ctpop.i32(i32 %1843)
  %1845 = trunc i32 %1844 to i8
  %1846 = and i8 %1845, 1
  %1847 = xor i8 %1846, 1
  store i8 %1847, i8* %21, align 1
  %1848 = xor i64 %1837, ptrtoint (%G__0x4b9750_type* @G__0x4b9750 to i64)
  %1849 = lshr i64 %1848, 4
  %1850 = trunc i64 %1849 to i8
  %1851 = and i8 %1850, 1
  store i8 %1851, i8* %26, align 1
  %1852 = icmp eq i64 %1837, 0
  %1853 = zext i1 %1852 to i8
  store i8 %1853, i8* %29, align 1
  %1854 = lshr i64 %1837, 63
  %1855 = trunc i64 %1854 to i8
  store i8 %1855, i8* %32, align 1
  %1856 = lshr i64 %1835, 55
  %1857 = and i64 %1856, 1
  %1858 = xor i64 %1854, lshr (i64 ptrtoint (%G__0x4b9750_type* @G__0x4b9750 to i64), i64 63)
  %1859 = xor i64 %1854, %1857
  %1860 = add nuw nsw i64 %1858, %1859
  %1861 = icmp eq i64 %1860, 2
  %1862 = zext i1 %1861 to i8
  store i8 %1862, i8* %38, align 1
  %1863 = add i64 %1381, -8
  %1864 = add i64 %1410, 55
  store i64 %1864, i64* %3, align 8
  %1865 = inttoptr i64 %1863 to i32*
  %1866 = load i32, i32* %1865, align 4
  %1867 = sext i32 %1866 to i64
  %1868 = shl nsw i64 %1867, 5
  store i64 %1868, i64* %RDI.i580, align 8
  %1869 = add i64 %1868, %1837
  store i64 %1869, i64* %RSI.i583, align 8
  %1870 = icmp ult i64 %1869, %1837
  %1871 = icmp ult i64 %1869, %1868
  %1872 = or i1 %1870, %1871
  %1873 = zext i1 %1872 to i8
  store i8 %1873, i8* %14, align 1
  %1874 = trunc i64 %1869 to i32
  %1875 = and i32 %1874, 248
  %1876 = tail call i32 @llvm.ctpop.i32(i32 %1875)
  %1877 = trunc i32 %1876 to i8
  %1878 = and i8 %1877, 1
  %1879 = xor i8 %1878, 1
  store i8 %1879, i8* %21, align 1
  %1880 = xor i64 %1837, %1869
  %1881 = lshr i64 %1880, 4
  %1882 = trunc i64 %1881 to i8
  %1883 = and i8 %1882, 1
  store i8 %1883, i8* %26, align 1
  %1884 = icmp eq i64 %1869, 0
  %1885 = zext i1 %1884 to i8
  store i8 %1885, i8* %29, align 1
  %1886 = lshr i64 %1869, 63
  %1887 = trunc i64 %1886 to i8
  store i8 %1887, i8* %32, align 1
  %1888 = lshr i64 %1867, 58
  %1889 = and i64 %1888, 1
  %1890 = xor i64 %1886, %1854
  %1891 = xor i64 %1886, %1889
  %1892 = add nuw nsw i64 %1890, %1891
  %1893 = icmp eq i64 %1892, 2
  %1894 = zext i1 %1893 to i8
  store i8 %1894, i8* %38, align 1
  %1895 = load i64, i64* %RBP.i, align 8
  %1896 = add i64 %1895, -4
  %1897 = add i64 %1410, 66
  store i64 %1897, i64* %3, align 8
  %1898 = inttoptr i64 %1896 to i32*
  %1899 = load i32, i32* %1898, align 4
  %1900 = sext i32 %1899 to i64
  store i64 %1900, i64* %RDI.i580, align 8
  %1901 = shl nsw i64 %1900, 2
  %1902 = add i64 %1901, %1869
  %1903 = add i64 %1410, 70
  store i64 %1903, i64* %3, align 8
  %1904 = inttoptr i64 %1902 to i32*
  %1905 = load i32, i32* %1904, align 4
  %1906 = shl i32 %1905, 4
  %1907 = zext i32 %1906 to i64
  store i64 %1907, i64* %388, align 8
  %1908 = lshr i32 %1905, 28
  %1909 = trunc i32 %1908 to i8
  %1910 = and i8 %1909, 1
  store i8 %1910, i8* %14, align 1
  %1911 = and i32 %1906, 240
  %1912 = tail call i32 @llvm.ctpop.i32(i32 %1911)
  %1913 = trunc i32 %1912 to i8
  %1914 = and i8 %1913, 1
  %1915 = xor i8 %1914, 1
  store i8 %1915, i8* %21, align 1
  store i8 0, i8* %26, align 1
  %1916 = icmp eq i32 %1906, 0
  %1917 = zext i1 %1916 to i8
  store i8 %1917, i8* %29, align 1
  %1918 = lshr i32 %1905, 27
  %1919 = trunc i32 %1918 to i8
  %1920 = and i8 %1919, 1
  store i8 %1920, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %1921 = add i64 %1895, -16
  %1922 = add i64 %1410, 78
  store i64 %1922, i64* %3, align 8
  %1923 = inttoptr i64 %1921 to i32*
  %1924 = load i32, i32* %1923, align 4
  %1925 = sext i32 %1924 to i64
  store i64 %1925, i64* %RSI.i583, align 8
  %1926 = shl nsw i64 %1925, 1
  %1927 = add nsw i64 %1926, 7302688
  %1928 = add i64 %1410, 87
  store i64 %1928, i64* %3, align 8
  %1929 = inttoptr i64 %1927 to i16*
  %1930 = load i16, i16* %1929, align 2
  %1931 = sext i16 %1930 to i64
  %1932 = and i64 %1931, 4294967295
  store i64 %1932, i64* %390, align 8
  %1933 = add i64 %1895, -56
  %1934 = load i64, i64* %RAX.i540, align 8
  %1935 = add i64 %1410, 91
  store i64 %1935, i64* %3, align 8
  %1936 = inttoptr i64 %1933 to i64*
  store i64 %1934, i64* %1936, align 8
  %1937 = load i32, i32* %R8D.i560, align 4
  %1938 = zext i32 %1937 to i64
  %1939 = load i64, i64* %3, align 8
  store i64 %1938, i64* %RAX.i540, align 8
  %1940 = load i64, i64* %RBP.i, align 8
  %1941 = add i64 %1940, -64
  %1942 = load i64, i64* %RDX.i585, align 8
  %1943 = add i64 %1939, 7
  store i64 %1943, i64* %3, align 8
  %1944 = inttoptr i64 %1941 to i64*
  store i64 %1942, i64* %1944, align 8
  %1945 = load i64, i64* %3, align 8
  %1946 = load i32, i32* %EAX.i599, align 8
  %1947 = sext i32 %1946 to i64
  %1948 = lshr i64 %1947, 32
  store i64 %1948, i64* %RDX.i585, align 8
  %1949 = load i32, i32* %R9D.i552, align 4
  %1950 = add i64 %1945, 4
  store i64 %1950, i64* %3, align 8
  %1951 = zext i32 %1946 to i64
  %1952 = sext i32 %1949 to i64
  %1953 = shl nuw i64 %1948, 32
  %1954 = or i64 %1953, %1951
  %1955 = sdiv i64 %1954, %1952
  %1956 = shl i64 %1955, 32
  %1957 = ashr exact i64 %1956, 32
  %1958 = icmp eq i64 %1955, %1957
  br i1 %1958, label %1961, label %1959

; <label>:1959:                                   ; preds = %block_.L_47ad88
  %1960 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %1950, %struct.Memory* %MEMORY.11)
  %.pre93 = load i64, i64* %3, align 8
  br label %routine_idivl__r9d.exit399

; <label>:1961:                                   ; preds = %block_.L_47ad88
  %1962 = srem i64 %1954, %1952
  %1963 = and i64 %1955, 4294967295
  store i64 %1963, i64* %RAX.i540, align 8
  %1964 = and i64 %1962, 4294967295
  store i64 %1964, i64* %391, align 8
  store i8 0, i8* %14, align 1
  store i8 0, i8* %21, align 1
  store i8 0, i8* %26, align 1
  store i8 0, i8* %29, align 1
  store i8 0, i8* %32, align 1
  store i8 0, i8* %38, align 1
  br label %routine_idivl__r9d.exit399

routine_idivl__r9d.exit399:                       ; preds = %1961, %1959
  %1965 = phi i64 [ %.pre93, %1959 ], [ %1950, %1961 ]
  %1966 = phi %struct.Memory* [ %1960, %1959 ], [ %MEMORY.11, %1961 ]
  %1967 = load i64, i64* %RBP.i, align 8
  %1968 = add i64 %1967, -12
  %1969 = add i64 %1965, 4
  store i64 %1969, i64* %3, align 8
  %1970 = inttoptr i64 %1968 to i32*
  %1971 = load i32, i32* %1970, align 4
  %1972 = sext i32 %1971 to i64
  %1973 = shl nsw i64 %1972, 8
  store i64 %1973, i64* %RSI.i583, align 8
  %.lobit66 = lshr i32 %1971, 31
  %1974 = trunc i32 %.lobit66 to i8
  store i8 %1974, i8* %14, align 1
  store i8 1, i8* %21, align 1
  store i8 0, i8* %26, align 1
  %1975 = icmp eq i32 %1971, 0
  %1976 = zext i1 %1975 to i8
  store i8 %1976, i8* %29, align 1
  %1977 = lshr i64 %1972, 55
  %1978 = trunc i64 %1977 to i8
  %1979 = and i8 %1978, 1
  store i8 %1979, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %1980 = add i64 %1967, -64
  %1981 = add i64 %1965, 12
  store i64 %1981, i64* %3, align 8
  %1982 = inttoptr i64 %1980 to i64*
  %1983 = load i64, i64* %1982, align 8
  %1984 = add i64 %1973, %1983
  store i64 %1984, i64* %RDI.i580, align 8
  %1985 = icmp ult i64 %1984, %1983
  %1986 = icmp ult i64 %1984, %1973
  %1987 = or i1 %1985, %1986
  %1988 = zext i1 %1987 to i8
  store i8 %1988, i8* %14, align 1
  %1989 = trunc i64 %1984 to i32
  %1990 = and i32 %1989, 255
  %1991 = tail call i32 @llvm.ctpop.i32(i32 %1990)
  %1992 = trunc i32 %1991 to i8
  %1993 = and i8 %1992, 1
  %1994 = xor i8 %1993, 1
  store i8 %1994, i8* %21, align 1
  %1995 = xor i64 %1983, %1984
  %1996 = lshr i64 %1995, 4
  %1997 = trunc i64 %1996 to i8
  %1998 = and i8 %1997, 1
  store i8 %1998, i8* %26, align 1
  %1999 = icmp eq i64 %1984, 0
  %2000 = zext i1 %1999 to i8
  store i8 %2000, i8* %29, align 1
  %2001 = lshr i64 %1984, 63
  %2002 = trunc i64 %2001 to i8
  store i8 %2002, i8* %32, align 1
  %2003 = lshr i64 %1983, 63
  %2004 = lshr i64 %1972, 55
  %2005 = and i64 %2004, 1
  %2006 = xor i64 %2001, %2003
  %2007 = xor i64 %2001, %2005
  %2008 = add nuw nsw i64 %2006, %2007
  %2009 = icmp eq i64 %2008, 2
  %2010 = zext i1 %2009 to i8
  store i8 %2010, i8* %38, align 1
  %2011 = add i64 %1967, -8
  %2012 = add i64 %1965, 19
  store i64 %2012, i64* %3, align 8
  %2013 = inttoptr i64 %2011 to i32*
  %2014 = load i32, i32* %2013, align 4
  %2015 = sext i32 %2014 to i64
  %2016 = shl nsw i64 %2015, 5
  store i64 %2016, i64* %RSI.i583, align 8
  %2017 = add i64 %2016, %1984
  store i64 %2017, i64* %RDI.i580, align 8
  %2018 = icmp ult i64 %2017, %1984
  %2019 = icmp ult i64 %2017, %2016
  %2020 = or i1 %2018, %2019
  %2021 = zext i1 %2020 to i8
  store i8 %2021, i8* %14, align 1
  %2022 = trunc i64 %2017 to i32
  %2023 = and i32 %2022, 255
  %2024 = tail call i32 @llvm.ctpop.i32(i32 %2023)
  %2025 = trunc i32 %2024 to i8
  %2026 = and i8 %2025, 1
  %2027 = xor i8 %2026, 1
  store i8 %2027, i8* %21, align 1
  %2028 = xor i64 %1984, %2017
  %2029 = lshr i64 %2028, 4
  %2030 = trunc i64 %2029 to i8
  %2031 = and i8 %2030, 1
  store i8 %2031, i8* %26, align 1
  %2032 = icmp eq i64 %2017, 0
  %2033 = zext i1 %2032 to i8
  store i8 %2033, i8* %29, align 1
  %2034 = lshr i64 %2017, 63
  %2035 = trunc i64 %2034 to i8
  store i8 %2035, i8* %32, align 1
  %2036 = lshr i64 %2015, 58
  %2037 = and i64 %2036, 1
  %2038 = xor i64 %2034, %2001
  %2039 = xor i64 %2034, %2037
  %2040 = add nuw nsw i64 %2038, %2039
  %2041 = icmp eq i64 %2040, 2
  %2042 = zext i1 %2041 to i8
  store i8 %2042, i8* %38, align 1
  %2043 = load i64, i64* %RBP.i, align 8
  %2044 = add i64 %2043, -4
  %2045 = add i64 %1965, 30
  store i64 %2045, i64* %3, align 8
  %2046 = inttoptr i64 %2044 to i32*
  %2047 = load i32, i32* %2046, align 4
  %2048 = sext i32 %2047 to i64
  store i64 %2048, i64* %RSI.i583, align 8
  %2049 = shl nsw i64 %2048, 2
  %2050 = add i64 %2049, %2017
  %2051 = load i32, i32* %EAX.i599, align 4
  %2052 = add i64 %1965, 33
  store i64 %2052, i64* %3, align 8
  %2053 = inttoptr i64 %2050 to i32*
  store i32 %2051, i32* %2053, align 4
  %2054 = load i64, i64* %RBP.i, align 8
  %2055 = add i64 %2054, -12
  %2056 = load i64, i64* %3, align 8
  %2057 = add i64 %2056, 4
  store i64 %2057, i64* %3, align 8
  %2058 = inttoptr i64 %2055 to i32*
  %2059 = load i32, i32* %2058, align 4
  %2060 = sext i32 %2059 to i64
  %2061 = shl nsw i64 %2060, 8
  store i64 %2061, i64* %RSI.i583, align 8
  %2062 = load i64, i64* %RCX.i587, align 8
  %2063 = add i64 %2061, %2062
  store i64 %2063, i64* %RCX.i587, align 8
  %2064 = icmp ult i64 %2063, %2062
  %2065 = icmp ult i64 %2063, %2061
  %2066 = or i1 %2064, %2065
  %2067 = zext i1 %2066 to i8
  store i8 %2067, i8* %14, align 1
  %2068 = trunc i64 %2063 to i32
  %2069 = and i32 %2068, 255
  %2070 = tail call i32 @llvm.ctpop.i32(i32 %2069)
  %2071 = trunc i32 %2070 to i8
  %2072 = and i8 %2071, 1
  %2073 = xor i8 %2072, 1
  store i8 %2073, i8* %21, align 1
  %2074 = xor i64 %2062, %2063
  %2075 = lshr i64 %2074, 4
  %2076 = trunc i64 %2075 to i8
  %2077 = and i8 %2076, 1
  store i8 %2077, i8* %26, align 1
  %2078 = icmp eq i64 %2063, 0
  %2079 = zext i1 %2078 to i8
  store i8 %2079, i8* %29, align 1
  %2080 = lshr i64 %2063, 63
  %2081 = trunc i64 %2080 to i8
  store i8 %2081, i8* %32, align 1
  %2082 = lshr i64 %2062, 63
  %2083 = lshr i64 %2060, 55
  %2084 = and i64 %2083, 1
  %2085 = xor i64 %2080, %2082
  %2086 = xor i64 %2080, %2084
  %2087 = add nuw nsw i64 %2085, %2086
  %2088 = icmp eq i64 %2087, 2
  %2089 = zext i1 %2088 to i8
  store i8 %2089, i8* %38, align 1
  %2090 = add i64 %2054, -8
  %2091 = add i64 %2056, 15
  store i64 %2091, i64* %3, align 8
  %2092 = inttoptr i64 %2090 to i32*
  %2093 = load i32, i32* %2092, align 4
  %2094 = sext i32 %2093 to i64
  %2095 = shl nsw i64 %2094, 5
  store i64 %2095, i64* %RSI.i583, align 8
  %2096 = add i64 %2095, %2063
  store i64 %2096, i64* %RCX.i587, align 8
  %2097 = icmp ult i64 %2096, %2063
  %2098 = icmp ult i64 %2096, %2095
  %2099 = or i1 %2097, %2098
  %2100 = zext i1 %2099 to i8
  store i8 %2100, i8* %14, align 1
  %2101 = trunc i64 %2096 to i32
  %2102 = and i32 %2101, 255
  %2103 = tail call i32 @llvm.ctpop.i32(i32 %2102)
  %2104 = trunc i32 %2103 to i8
  %2105 = and i8 %2104, 1
  %2106 = xor i8 %2105, 1
  store i8 %2106, i8* %21, align 1
  %2107 = xor i64 %2063, %2096
  %2108 = lshr i64 %2107, 4
  %2109 = trunc i64 %2108 to i8
  %2110 = and i8 %2109, 1
  store i8 %2110, i8* %26, align 1
  %2111 = icmp eq i64 %2096, 0
  %2112 = zext i1 %2111 to i8
  store i8 %2112, i8* %29, align 1
  %2113 = lshr i64 %2096, 63
  %2114 = trunc i64 %2113 to i8
  store i8 %2114, i8* %32, align 1
  %2115 = lshr i64 %2094, 58
  %2116 = and i64 %2115, 1
  %2117 = xor i64 %2113, %2080
  %2118 = xor i64 %2113, %2116
  %2119 = add nuw nsw i64 %2117, %2118
  %2120 = icmp eq i64 %2119, 2
  %2121 = zext i1 %2120 to i8
  store i8 %2121, i8* %38, align 1
  %2122 = load i64, i64* %RBP.i, align 8
  %2123 = add i64 %2122, -4
  %2124 = add i64 %2056, 26
  store i64 %2124, i64* %3, align 8
  %2125 = inttoptr i64 %2123 to i32*
  %2126 = load i32, i32* %2125, align 4
  %2127 = sext i32 %2126 to i64
  store i64 %2127, i64* %RSI.i583, align 8
  %2128 = shl nsw i64 %2127, 2
  %2129 = add i64 %2128, %2096
  %2130 = add i64 %2056, 29
  store i64 %2130, i64* %3, align 8
  %2131 = inttoptr i64 %2129 to i32*
  %2132 = load i32, i32* %2131, align 4
  %2133 = zext i32 %2132 to i64
  store i64 %2133, i64* %RAX.i540, align 8
  %2134 = add i64 %2122, -16
  %2135 = add i64 %2056, 33
  store i64 %2135, i64* %3, align 8
  %2136 = inttoptr i64 %2134 to i32*
  %2137 = load i32, i32* %2136, align 4
  %2138 = sext i32 %2137 to i64
  store i64 %2138, i64* %RCX.i587, align 8
  %2139 = shl nsw i64 %2138, 1
  %2140 = add nsw i64 %2139, 7302688
  %2141 = add i64 %2056, 42
  store i64 %2141, i64* %3, align 8
  %2142 = inttoptr i64 %2140 to i16*
  %2143 = load i16, i16* %2142, align 2
  %2144 = sext i16 %2143 to i64
  %2145 = and i64 %2144, 4294967295
  store i64 %2145, i64* %388, align 8
  %2146 = sext i32 %2132 to i64
  %2147 = sext i16 %2143 to i64
  %2148 = mul nsw i64 %2147, %2146
  %2149 = trunc i64 %2148 to i32
  %2150 = and i64 %2148, 4294967295
  store i64 %2150, i64* %RAX.i540, align 8
  %2151 = shl i64 %2148, 32
  %2152 = ashr exact i64 %2151, 32
  %2153 = icmp ne i64 %2152, %2148
  %2154 = zext i1 %2153 to i8
  store i8 %2154, i8* %14, align 1
  %2155 = and i32 %2149, 255
  %2156 = tail call i32 @llvm.ctpop.i32(i32 %2155)
  %2157 = trunc i32 %2156 to i8
  %2158 = and i8 %2157, 1
  %2159 = xor i8 %2158, 1
  store i8 %2159, i8* %21, align 1
  store i8 0, i8* %26, align 1
  store i8 0, i8* %29, align 1
  %2160 = lshr i32 %2149, 31
  %2161 = trunc i32 %2160 to i8
  store i8 %2161, i8* %32, align 1
  store i8 %2154, i8* %38, align 1
  %2162 = add i64 %2122, -12
  %2163 = add i64 %2056, 50
  store i64 %2163, i64* %3, align 8
  %2164 = inttoptr i64 %2162 to i32*
  %2165 = load i32, i32* %2164, align 4
  %2166 = sext i32 %2165 to i64
  %2167 = shl nsw i64 %2166, 8
  store i64 %2167, i64* %RCX.i587, align 8
  %.lobit70 = lshr i32 %2165, 31
  %2168 = trunc i32 %.lobit70 to i8
  store i8 %2168, i8* %14, align 1
  store i8 1, i8* %21, align 1
  store i8 0, i8* %26, align 1
  %2169 = icmp eq i32 %2165, 0
  %2170 = zext i1 %2169 to i8
  store i8 %2170, i8* %29, align 1
  %2171 = lshr i64 %2166, 55
  %2172 = trunc i64 %2171 to i8
  %2173 = and i8 %2172, 1
  store i8 %2173, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %2174 = add i64 %2122, -56
  %2175 = add i64 %2056, 58
  store i64 %2175, i64* %3, align 8
  %2176 = inttoptr i64 %2174 to i64*
  %2177 = load i64, i64* %2176, align 8
  %2178 = add i64 %2167, %2177
  store i64 %2178, i64* %RSI.i583, align 8
  %2179 = icmp ult i64 %2178, %2177
  %2180 = icmp ult i64 %2178, %2167
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
  %2189 = xor i64 %2177, %2178
  %2190 = lshr i64 %2189, 4
  %2191 = trunc i64 %2190 to i8
  %2192 = and i8 %2191, 1
  store i8 %2192, i8* %26, align 1
  %2193 = icmp eq i64 %2178, 0
  %2194 = zext i1 %2193 to i8
  store i8 %2194, i8* %29, align 1
  %2195 = lshr i64 %2178, 63
  %2196 = trunc i64 %2195 to i8
  store i8 %2196, i8* %32, align 1
  %2197 = lshr i64 %2177, 63
  %2198 = lshr i64 %2166, 55
  %2199 = and i64 %2198, 1
  %2200 = xor i64 %2195, %2197
  %2201 = xor i64 %2195, %2199
  %2202 = add nuw nsw i64 %2200, %2201
  %2203 = icmp eq i64 %2202, 2
  %2204 = zext i1 %2203 to i8
  store i8 %2204, i8* %38, align 1
  %2205 = load i64, i64* %RBP.i, align 8
  %2206 = add i64 %2205, -8
  %2207 = add i64 %2056, 65
  store i64 %2207, i64* %3, align 8
  %2208 = inttoptr i64 %2206 to i32*
  %2209 = load i32, i32* %2208, align 4
  %2210 = sext i32 %2209 to i64
  %2211 = shl nsw i64 %2210, 5
  store i64 %2211, i64* %RCX.i587, align 8
  %2212 = add i64 %2211, %2178
  store i64 %2212, i64* %RSI.i583, align 8
  %2213 = icmp ult i64 %2212, %2178
  %2214 = icmp ult i64 %2212, %2211
  %2215 = or i1 %2213, %2214
  %2216 = zext i1 %2215 to i8
  store i8 %2216, i8* %14, align 1
  %2217 = trunc i64 %2212 to i32
  %2218 = and i32 %2217, 255
  %2219 = tail call i32 @llvm.ctpop.i32(i32 %2218)
  %2220 = trunc i32 %2219 to i8
  %2221 = and i8 %2220, 1
  %2222 = xor i8 %2221, 1
  store i8 %2222, i8* %21, align 1
  %2223 = xor i64 %2178, %2212
  %2224 = lshr i64 %2223, 4
  %2225 = trunc i64 %2224 to i8
  %2226 = and i8 %2225, 1
  store i8 %2226, i8* %26, align 1
  %2227 = icmp eq i64 %2212, 0
  %2228 = zext i1 %2227 to i8
  store i8 %2228, i8* %29, align 1
  %2229 = lshr i64 %2212, 63
  %2230 = trunc i64 %2229 to i8
  store i8 %2230, i8* %32, align 1
  %2231 = lshr i64 %2210, 58
  %2232 = and i64 %2231, 1
  %2233 = xor i64 %2229, %2195
  %2234 = xor i64 %2229, %2232
  %2235 = add nuw nsw i64 %2233, %2234
  %2236 = icmp eq i64 %2235, 2
  %2237 = zext i1 %2236 to i8
  store i8 %2237, i8* %38, align 1
  %2238 = add i64 %2205, -4
  %2239 = add i64 %2056, 76
  store i64 %2239, i64* %3, align 8
  %2240 = inttoptr i64 %2238 to i32*
  %2241 = load i32, i32* %2240, align 4
  %2242 = sext i32 %2241 to i64
  store i64 %2242, i64* %RCX.i587, align 8
  %2243 = shl nsw i64 %2242, 2
  %2244 = add i64 %2243, %2212
  %2245 = load i32, i32* %EAX.i599, align 4
  %2246 = add i64 %2056, 79
  store i64 %2246, i64* %3, align 8
  %2247 = inttoptr i64 %2244 to i32*
  store i32 %2245, i32* %2247, align 4
  %.pre95 = load i64, i64* %3, align 8
  br label %block_.L_47ae5e

block_.L_47ae5e:                                  ; preds = %routine_idivl__r9d.exit399, %routine_idivl__r9d.exit538
  %2248 = phi i64 [ %1830, %routine_idivl__r9d.exit538 ], [ %.pre95, %routine_idivl__r9d.exit399 ]
  %MEMORY.13 = phi %struct.Memory* [ %1547, %routine_idivl__r9d.exit538 ], [ %1966, %routine_idivl__r9d.exit399 ]
  %2249 = load i64, i64* %RBP.i, align 8
  %2250 = add i64 %2249, -20
  %2251 = add i64 %2248, 4
  store i64 %2251, i64* %3, align 8
  %2252 = inttoptr i64 %2250 to i32*
  %2253 = load i32, i32* %2252, align 4
  store i8 0, i8* %14, align 1
  %2254 = and i32 %2253, 255
  %2255 = tail call i32 @llvm.ctpop.i32(i32 %2254)
  %2256 = trunc i32 %2255 to i8
  %2257 = and i8 %2256, 1
  %2258 = xor i8 %2257, 1
  store i8 %2258, i8* %21, align 1
  store i8 0, i8* %26, align 1
  %2259 = icmp eq i32 %2253, 0
  %2260 = zext i1 %2259 to i8
  store i8 %2260, i8* %29, align 1
  %2261 = lshr i32 %2253, 31
  %2262 = trunc i32 %2261 to i8
  store i8 %2262, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %.v111 = select i1 %2259, i64 27, i64 10
  %2263 = add i64 %2248, %.v111
  store i64 %2263, i64* %3, align 8
  br i1 %2259, label %block_.L_47ae79, label %block_47ae68

block_47ae68:                                     ; preds = %block_.L_47ae5e
  %2264 = load i16, i16* bitcast (%G_0x6d1f9e_type* @G_0x6d1f9e to i16*), align 8
  %2265 = sext i16 %2264 to i64
  %2266 = and i64 %2265, 4294967295
  store i64 %2266, i64* %RAX.i540, align 8
  %2267 = sext i16 %2264 to i32
  store i8 0, i8* %14, align 1
  %2268 = and i32 %2267, 255
  %2269 = tail call i32 @llvm.ctpop.i32(i32 %2268)
  %2270 = trunc i32 %2269 to i8
  %2271 = and i8 %2270, 1
  %2272 = xor i8 %2271, 1
  store i8 %2272, i8* %21, align 1
  store i8 0, i8* %26, align 1
  %2273 = icmp eq i16 %2264, 0
  %2274 = zext i1 %2273 to i8
  store i8 %2274, i8* %29, align 1
  %2275 = lshr i32 %2267, 31
  %2276 = trunc i32 %2275 to i8
  store i8 %2276, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %.v112 = select i1 %2273, i64 236, i64 17
  %2277 = add i64 %2263, %.v112
  store i64 %2277, i64* %3, align 8
  br i1 %2273, label %block_.L_47af54, label %block_.L_47ae79

block_.L_47ae79:                                  ; preds = %block_47ae68, %block_.L_47ae5e
  %2278 = phi i64 [ %2277, %block_47ae68 ], [ %2263, %block_.L_47ae5e ]
  store i64 ptrtoint (%G__0x6d12c0_type* @G__0x6d12c0 to i64), i64* %RAX.i540, align 8
  store i64 ptrtoint (%G__0x4b9d50_type* @G__0x4b9d50 to i64), i64* %RCX.i587, align 8
  store i64 ptrtoint (%G__0x70f6e0_type* @G__0x70f6e0 to i64), i64* %RDX.i585, align 8
  store i64 ptrtoint (%G__0x4b9750_type* @G__0x4b9750 to i64), i64* %RSI.i583, align 8
  %2279 = add i64 %2249, -12
  %2280 = add i64 %2278, 44
  store i64 %2280, i64* %3, align 8
  %2281 = inttoptr i64 %2279 to i32*
  %2282 = load i32, i32* %2281, align 4
  %2283 = sext i32 %2282 to i64
  %2284 = shl nsw i64 %2283, 8
  store i64 %2284, i64* %RDI.i580, align 8
  %2285 = add i64 %2284, ptrtoint (%G__0x4b9750_type* @G__0x4b9750 to i64)
  store i64 %2285, i64* %RSI.i583, align 8
  %2286 = icmp ult i64 %2285, ptrtoint (%G__0x4b9750_type* @G__0x4b9750 to i64)
  %2287 = icmp ult i64 %2285, %2284
  %2288 = or i1 %2286, %2287
  %2289 = zext i1 %2288 to i8
  store i8 %2289, i8* %14, align 1
  %2290 = trunc i64 %2285 to i32
  %2291 = and i32 %2290, 248
  %2292 = tail call i32 @llvm.ctpop.i32(i32 %2291)
  %2293 = trunc i32 %2292 to i8
  %2294 = and i8 %2293, 1
  %2295 = xor i8 %2294, 1
  store i8 %2295, i8* %21, align 1
  %2296 = xor i64 %2285, ptrtoint (%G__0x4b9750_type* @G__0x4b9750 to i64)
  %2297 = lshr i64 %2296, 4
  %2298 = trunc i64 %2297 to i8
  %2299 = and i8 %2298, 1
  store i8 %2299, i8* %26, align 1
  %2300 = icmp eq i64 %2285, 0
  %2301 = zext i1 %2300 to i8
  store i8 %2301, i8* %29, align 1
  %2302 = lshr i64 %2285, 63
  %2303 = trunc i64 %2302 to i8
  store i8 %2303, i8* %32, align 1
  %2304 = lshr i64 %2283, 55
  %2305 = and i64 %2304, 1
  %2306 = xor i64 %2302, lshr (i64 ptrtoint (%G__0x4b9750_type* @G__0x4b9750 to i64), i64 63)
  %2307 = xor i64 %2302, %2305
  %2308 = add nuw nsw i64 %2306, %2307
  %2309 = icmp eq i64 %2308, 2
  %2310 = zext i1 %2309 to i8
  store i8 %2310, i8* %38, align 1
  %2311 = add i64 %2249, -8
  %2312 = add i64 %2278, 55
  store i64 %2312, i64* %3, align 8
  %2313 = inttoptr i64 %2311 to i32*
  %2314 = load i32, i32* %2313, align 4
  %2315 = sext i32 %2314 to i64
  %2316 = shl nsw i64 %2315, 5
  store i64 %2316, i64* %RDI.i580, align 8
  %2317 = add i64 %2316, %2285
  store i64 %2317, i64* %RSI.i583, align 8
  %2318 = icmp ult i64 %2317, %2285
  %2319 = icmp ult i64 %2317, %2316
  %2320 = or i1 %2318, %2319
  %2321 = zext i1 %2320 to i8
  store i8 %2321, i8* %14, align 1
  %2322 = trunc i64 %2317 to i32
  %2323 = and i32 %2322, 248
  %2324 = tail call i32 @llvm.ctpop.i32(i32 %2323)
  %2325 = trunc i32 %2324 to i8
  %2326 = and i8 %2325, 1
  %2327 = xor i8 %2326, 1
  store i8 %2327, i8* %21, align 1
  %2328 = xor i64 %2285, %2317
  %2329 = lshr i64 %2328, 4
  %2330 = trunc i64 %2329 to i8
  %2331 = and i8 %2330, 1
  store i8 %2331, i8* %26, align 1
  %2332 = icmp eq i64 %2317, 0
  %2333 = zext i1 %2332 to i8
  store i8 %2333, i8* %29, align 1
  %2334 = lshr i64 %2317, 63
  %2335 = trunc i64 %2334 to i8
  store i8 %2335, i8* %32, align 1
  %2336 = lshr i64 %2315, 58
  %2337 = and i64 %2336, 1
  %2338 = xor i64 %2334, %2302
  %2339 = xor i64 %2334, %2337
  %2340 = add nuw nsw i64 %2338, %2339
  %2341 = icmp eq i64 %2340, 2
  %2342 = zext i1 %2341 to i8
  store i8 %2342, i8* %38, align 1
  %2343 = load i64, i64* %RBP.i, align 8
  %2344 = add i64 %2343, -4
  %2345 = add i64 %2278, 66
  store i64 %2345, i64* %3, align 8
  %2346 = inttoptr i64 %2344 to i32*
  %2347 = load i32, i32* %2346, align 4
  %2348 = sext i32 %2347 to i64
  store i64 %2348, i64* %RDI.i580, align 8
  %2349 = shl nsw i64 %2348, 2
  %2350 = add i64 %2349, %2317
  %2351 = add i64 %2278, 70
  store i64 %2351, i64* %3, align 8
  %2352 = inttoptr i64 %2350 to i32*
  %2353 = load i32, i32* %2352, align 4
  %2354 = shl i32 %2353, 4
  %2355 = zext i32 %2354 to i64
  store i64 %2355, i64* %388, align 8
  %2356 = lshr i32 %2353, 28
  %2357 = trunc i32 %2356 to i8
  %2358 = and i8 %2357, 1
  store i8 %2358, i8* %14, align 1
  %2359 = and i32 %2354, 240
  %2360 = tail call i32 @llvm.ctpop.i32(i32 %2359)
  %2361 = trunc i32 %2360 to i8
  %2362 = and i8 %2361, 1
  %2363 = xor i8 %2362, 1
  store i8 %2363, i8* %21, align 1
  store i8 0, i8* %26, align 1
  %2364 = icmp eq i32 %2354, 0
  %2365 = zext i1 %2364 to i8
  store i8 %2365, i8* %29, align 1
  %2366 = lshr i32 %2353, 27
  %2367 = trunc i32 %2366 to i8
  %2368 = and i8 %2367, 1
  store i8 %2368, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %2369 = add i64 %2343, -16
  %2370 = add i64 %2278, 78
  store i64 %2370, i64* %3, align 8
  %2371 = inttoptr i64 %2369 to i32*
  %2372 = load i32, i32* %2371, align 4
  %2373 = sext i32 %2372 to i64
  store i64 %2373, i64* %RSI.i583, align 8
  %2374 = shl nsw i64 %2373, 1
  %2375 = add nsw i64 %2374, 4952704
  %2376 = add i64 %2278, 87
  store i64 %2376, i64* %3, align 8
  %2377 = inttoptr i64 %2375 to i16*
  %2378 = load i16, i16* %2377, align 2
  %2379 = sext i16 %2378 to i64
  %2380 = and i64 %2379, 4294967295
  store i64 %2380, i64* %390, align 8
  %2381 = add i64 %2343, -72
  %2382 = load i64, i64* %RAX.i540, align 8
  %2383 = add i64 %2278, 91
  store i64 %2383, i64* %3, align 8
  %2384 = inttoptr i64 %2381 to i64*
  store i64 %2382, i64* %2384, align 8
  %2385 = load i32, i32* %R8D.i560, align 4
  %2386 = zext i32 %2385 to i64
  %2387 = load i64, i64* %3, align 8
  store i64 %2386, i64* %RAX.i540, align 8
  %2388 = load i64, i64* %RBP.i, align 8
  %2389 = add i64 %2388, -80
  %2390 = load i64, i64* %RDX.i585, align 8
  %2391 = add i64 %2387, 7
  store i64 %2391, i64* %3, align 8
  %2392 = inttoptr i64 %2389 to i64*
  store i64 %2390, i64* %2392, align 8
  %2393 = load i64, i64* %3, align 8
  %2394 = load i32, i32* %EAX.i599, align 8
  %2395 = sext i32 %2394 to i64
  %2396 = lshr i64 %2395, 32
  store i64 %2396, i64* %RDX.i585, align 8
  %2397 = load i32, i32* %R9D.i552, align 4
  %2398 = add i64 %2393, 4
  store i64 %2398, i64* %3, align 8
  %2399 = zext i32 %2394 to i64
  %2400 = sext i32 %2397 to i64
  %2401 = shl nuw i64 %2396, 32
  %2402 = or i64 %2401, %2399
  %2403 = sdiv i64 %2402, %2400
  %2404 = shl i64 %2403, 32
  %2405 = ashr exact i64 %2404, 32
  %2406 = icmp eq i64 %2403, %2405
  br i1 %2406, label %2409, label %2407

; <label>:2407:                                   ; preds = %block_.L_47ae79
  %2408 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %2398, %struct.Memory* %MEMORY.13)
  %.pre97 = load i64, i64* %3, align 8
  br label %routine_idivl__r9d.exit253

; <label>:2409:                                   ; preds = %block_.L_47ae79
  %2410 = srem i64 %2402, %2400
  %2411 = and i64 %2403, 4294967295
  store i64 %2411, i64* %RAX.i540, align 8
  %2412 = and i64 %2410, 4294967295
  store i64 %2412, i64* %391, align 8
  store i8 0, i8* %14, align 1
  store i8 0, i8* %21, align 1
  store i8 0, i8* %26, align 1
  store i8 0, i8* %29, align 1
  store i8 0, i8* %32, align 1
  store i8 0, i8* %38, align 1
  br label %routine_idivl__r9d.exit253

routine_idivl__r9d.exit253:                       ; preds = %2409, %2407
  %2413 = phi i64 [ %.pre97, %2407 ], [ %2398, %2409 ]
  %2414 = phi %struct.Memory* [ %2408, %2407 ], [ %MEMORY.13, %2409 ]
  %2415 = load i64, i64* %RBP.i, align 8
  %2416 = add i64 %2415, -12
  %2417 = add i64 %2413, 4
  store i64 %2417, i64* %3, align 8
  %2418 = inttoptr i64 %2416 to i32*
  %2419 = load i32, i32* %2418, align 4
  %2420 = sext i32 %2419 to i64
  %2421 = shl nsw i64 %2420, 8
  store i64 %2421, i64* %RSI.i583, align 8
  %.lobit48 = lshr i32 %2419, 31
  %2422 = trunc i32 %.lobit48 to i8
  store i8 %2422, i8* %14, align 1
  store i8 1, i8* %21, align 1
  store i8 0, i8* %26, align 1
  %2423 = icmp eq i32 %2419, 0
  %2424 = zext i1 %2423 to i8
  store i8 %2424, i8* %29, align 1
  %2425 = lshr i64 %2420, 55
  %2426 = trunc i64 %2425 to i8
  %2427 = and i8 %2426, 1
  store i8 %2427, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %2428 = add i64 %2415, -80
  %2429 = add i64 %2413, 12
  store i64 %2429, i64* %3, align 8
  %2430 = inttoptr i64 %2428 to i64*
  %2431 = load i64, i64* %2430, align 8
  %2432 = add i64 %2421, %2431
  store i64 %2432, i64* %RDI.i580, align 8
  %2433 = icmp ult i64 %2432, %2431
  %2434 = icmp ult i64 %2432, %2421
  %2435 = or i1 %2433, %2434
  %2436 = zext i1 %2435 to i8
  store i8 %2436, i8* %14, align 1
  %2437 = trunc i64 %2432 to i32
  %2438 = and i32 %2437, 255
  %2439 = tail call i32 @llvm.ctpop.i32(i32 %2438)
  %2440 = trunc i32 %2439 to i8
  %2441 = and i8 %2440, 1
  %2442 = xor i8 %2441, 1
  store i8 %2442, i8* %21, align 1
  %2443 = xor i64 %2431, %2432
  %2444 = lshr i64 %2443, 4
  %2445 = trunc i64 %2444 to i8
  %2446 = and i8 %2445, 1
  store i8 %2446, i8* %26, align 1
  %2447 = icmp eq i64 %2432, 0
  %2448 = zext i1 %2447 to i8
  store i8 %2448, i8* %29, align 1
  %2449 = lshr i64 %2432, 63
  %2450 = trunc i64 %2449 to i8
  store i8 %2450, i8* %32, align 1
  %2451 = lshr i64 %2431, 63
  %2452 = lshr i64 %2420, 55
  %2453 = and i64 %2452, 1
  %2454 = xor i64 %2449, %2451
  %2455 = xor i64 %2449, %2453
  %2456 = add nuw nsw i64 %2454, %2455
  %2457 = icmp eq i64 %2456, 2
  %2458 = zext i1 %2457 to i8
  store i8 %2458, i8* %38, align 1
  %2459 = add i64 %2415, -8
  %2460 = add i64 %2413, 19
  store i64 %2460, i64* %3, align 8
  %2461 = inttoptr i64 %2459 to i32*
  %2462 = load i32, i32* %2461, align 4
  %2463 = sext i32 %2462 to i64
  %2464 = shl nsw i64 %2463, 5
  store i64 %2464, i64* %RSI.i583, align 8
  %2465 = add i64 %2464, %2432
  store i64 %2465, i64* %RDI.i580, align 8
  %2466 = icmp ult i64 %2465, %2432
  %2467 = icmp ult i64 %2465, %2464
  %2468 = or i1 %2466, %2467
  %2469 = zext i1 %2468 to i8
  store i8 %2469, i8* %14, align 1
  %2470 = trunc i64 %2465 to i32
  %2471 = and i32 %2470, 255
  %2472 = tail call i32 @llvm.ctpop.i32(i32 %2471)
  %2473 = trunc i32 %2472 to i8
  %2474 = and i8 %2473, 1
  %2475 = xor i8 %2474, 1
  store i8 %2475, i8* %21, align 1
  %2476 = xor i64 %2432, %2465
  %2477 = lshr i64 %2476, 4
  %2478 = trunc i64 %2477 to i8
  %2479 = and i8 %2478, 1
  store i8 %2479, i8* %26, align 1
  %2480 = icmp eq i64 %2465, 0
  %2481 = zext i1 %2480 to i8
  store i8 %2481, i8* %29, align 1
  %2482 = lshr i64 %2465, 63
  %2483 = trunc i64 %2482 to i8
  store i8 %2483, i8* %32, align 1
  %2484 = lshr i64 %2463, 58
  %2485 = and i64 %2484, 1
  %2486 = xor i64 %2482, %2449
  %2487 = xor i64 %2482, %2485
  %2488 = add nuw nsw i64 %2486, %2487
  %2489 = icmp eq i64 %2488, 2
  %2490 = zext i1 %2489 to i8
  store i8 %2490, i8* %38, align 1
  %2491 = load i64, i64* %RBP.i, align 8
  %2492 = add i64 %2491, -4
  %2493 = add i64 %2413, 30
  store i64 %2493, i64* %3, align 8
  %2494 = inttoptr i64 %2492 to i32*
  %2495 = load i32, i32* %2494, align 4
  %2496 = sext i32 %2495 to i64
  store i64 %2496, i64* %RSI.i583, align 8
  %2497 = shl nsw i64 %2496, 2
  %2498 = add i64 %2497, %2465
  %2499 = load i32, i32* %EAX.i599, align 4
  %2500 = add i64 %2413, 33
  store i64 %2500, i64* %3, align 8
  %2501 = inttoptr i64 %2498 to i32*
  store i32 %2499, i32* %2501, align 4
  %2502 = load i64, i64* %RBP.i, align 8
  %2503 = add i64 %2502, -12
  %2504 = load i64, i64* %3, align 8
  %2505 = add i64 %2504, 4
  store i64 %2505, i64* %3, align 8
  %2506 = inttoptr i64 %2503 to i32*
  %2507 = load i32, i32* %2506, align 4
  %2508 = sext i32 %2507 to i64
  %2509 = shl nsw i64 %2508, 8
  store i64 %2509, i64* %RSI.i583, align 8
  %2510 = load i64, i64* %RCX.i587, align 8
  %2511 = add i64 %2509, %2510
  store i64 %2511, i64* %RCX.i587, align 8
  %2512 = icmp ult i64 %2511, %2510
  %2513 = icmp ult i64 %2511, %2509
  %2514 = or i1 %2512, %2513
  %2515 = zext i1 %2514 to i8
  store i8 %2515, i8* %14, align 1
  %2516 = trunc i64 %2511 to i32
  %2517 = and i32 %2516, 255
  %2518 = tail call i32 @llvm.ctpop.i32(i32 %2517)
  %2519 = trunc i32 %2518 to i8
  %2520 = and i8 %2519, 1
  %2521 = xor i8 %2520, 1
  store i8 %2521, i8* %21, align 1
  %2522 = xor i64 %2510, %2511
  %2523 = lshr i64 %2522, 4
  %2524 = trunc i64 %2523 to i8
  %2525 = and i8 %2524, 1
  store i8 %2525, i8* %26, align 1
  %2526 = icmp eq i64 %2511, 0
  %2527 = zext i1 %2526 to i8
  store i8 %2527, i8* %29, align 1
  %2528 = lshr i64 %2511, 63
  %2529 = trunc i64 %2528 to i8
  store i8 %2529, i8* %32, align 1
  %2530 = lshr i64 %2510, 63
  %2531 = lshr i64 %2508, 55
  %2532 = and i64 %2531, 1
  %2533 = xor i64 %2528, %2530
  %2534 = xor i64 %2528, %2532
  %2535 = add nuw nsw i64 %2533, %2534
  %2536 = icmp eq i64 %2535, 2
  %2537 = zext i1 %2536 to i8
  store i8 %2537, i8* %38, align 1
  %2538 = add i64 %2502, -8
  %2539 = add i64 %2504, 15
  store i64 %2539, i64* %3, align 8
  %2540 = inttoptr i64 %2538 to i32*
  %2541 = load i32, i32* %2540, align 4
  %2542 = sext i32 %2541 to i64
  %2543 = shl nsw i64 %2542, 5
  store i64 %2543, i64* %RSI.i583, align 8
  %2544 = add i64 %2543, %2511
  store i64 %2544, i64* %RCX.i587, align 8
  %2545 = icmp ult i64 %2544, %2511
  %2546 = icmp ult i64 %2544, %2543
  %2547 = or i1 %2545, %2546
  %2548 = zext i1 %2547 to i8
  store i8 %2548, i8* %14, align 1
  %2549 = trunc i64 %2544 to i32
  %2550 = and i32 %2549, 255
  %2551 = tail call i32 @llvm.ctpop.i32(i32 %2550)
  %2552 = trunc i32 %2551 to i8
  %2553 = and i8 %2552, 1
  %2554 = xor i8 %2553, 1
  store i8 %2554, i8* %21, align 1
  %2555 = xor i64 %2511, %2544
  %2556 = lshr i64 %2555, 4
  %2557 = trunc i64 %2556 to i8
  %2558 = and i8 %2557, 1
  store i8 %2558, i8* %26, align 1
  %2559 = icmp eq i64 %2544, 0
  %2560 = zext i1 %2559 to i8
  store i8 %2560, i8* %29, align 1
  %2561 = lshr i64 %2544, 63
  %2562 = trunc i64 %2561 to i8
  store i8 %2562, i8* %32, align 1
  %2563 = lshr i64 %2542, 58
  %2564 = and i64 %2563, 1
  %2565 = xor i64 %2561, %2528
  %2566 = xor i64 %2561, %2564
  %2567 = add nuw nsw i64 %2565, %2566
  %2568 = icmp eq i64 %2567, 2
  %2569 = zext i1 %2568 to i8
  store i8 %2569, i8* %38, align 1
  %2570 = load i64, i64* %RBP.i, align 8
  %2571 = add i64 %2570, -4
  %2572 = add i64 %2504, 26
  store i64 %2572, i64* %3, align 8
  %2573 = inttoptr i64 %2571 to i32*
  %2574 = load i32, i32* %2573, align 4
  %2575 = sext i32 %2574 to i64
  store i64 %2575, i64* %RSI.i583, align 8
  %2576 = shl nsw i64 %2575, 2
  %2577 = add i64 %2576, %2544
  %2578 = add i64 %2504, 29
  store i64 %2578, i64* %3, align 8
  %2579 = inttoptr i64 %2577 to i32*
  %2580 = load i32, i32* %2579, align 4
  %2581 = zext i32 %2580 to i64
  store i64 %2581, i64* %RAX.i540, align 8
  %2582 = add i64 %2570, -16
  %2583 = add i64 %2504, 33
  store i64 %2583, i64* %3, align 8
  %2584 = inttoptr i64 %2582 to i32*
  %2585 = load i32, i32* %2584, align 4
  %2586 = sext i32 %2585 to i64
  store i64 %2586, i64* %RCX.i587, align 8
  %2587 = shl nsw i64 %2586, 1
  %2588 = add nsw i64 %2587, 4952704
  %2589 = add i64 %2504, 42
  store i64 %2589, i64* %3, align 8
  %2590 = inttoptr i64 %2588 to i16*
  %2591 = load i16, i16* %2590, align 2
  %2592 = sext i16 %2591 to i64
  %2593 = and i64 %2592, 4294967295
  store i64 %2593, i64* %388, align 8
  %2594 = sext i32 %2580 to i64
  %2595 = sext i16 %2591 to i64
  %2596 = mul nsw i64 %2595, %2594
  %2597 = trunc i64 %2596 to i32
  %2598 = and i64 %2596, 4294967295
  store i64 %2598, i64* %RAX.i540, align 8
  %2599 = shl i64 %2596, 32
  %2600 = ashr exact i64 %2599, 32
  %2601 = icmp ne i64 %2600, %2596
  %2602 = zext i1 %2601 to i8
  store i8 %2602, i8* %14, align 1
  %2603 = and i32 %2597, 255
  %2604 = tail call i32 @llvm.ctpop.i32(i32 %2603)
  %2605 = trunc i32 %2604 to i8
  %2606 = and i8 %2605, 1
  %2607 = xor i8 %2606, 1
  store i8 %2607, i8* %21, align 1
  store i8 0, i8* %26, align 1
  store i8 0, i8* %29, align 1
  %2608 = lshr i32 %2597, 31
  %2609 = trunc i32 %2608 to i8
  store i8 %2609, i8* %32, align 1
  store i8 %2602, i8* %38, align 1
  %2610 = add i64 %2570, -12
  %2611 = add i64 %2504, 50
  store i64 %2611, i64* %3, align 8
  %2612 = inttoptr i64 %2610 to i32*
  %2613 = load i32, i32* %2612, align 4
  %2614 = sext i32 %2613 to i64
  %2615 = shl nsw i64 %2614, 8
  store i64 %2615, i64* %RCX.i587, align 8
  %.lobit52 = lshr i32 %2613, 31
  %2616 = trunc i32 %.lobit52 to i8
  store i8 %2616, i8* %14, align 1
  store i8 1, i8* %21, align 1
  store i8 0, i8* %26, align 1
  %2617 = icmp eq i32 %2613, 0
  %2618 = zext i1 %2617 to i8
  store i8 %2618, i8* %29, align 1
  %2619 = lshr i64 %2614, 55
  %2620 = trunc i64 %2619 to i8
  %2621 = and i8 %2620, 1
  store i8 %2621, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %2622 = add i64 %2570, -72
  %2623 = add i64 %2504, 58
  store i64 %2623, i64* %3, align 8
  %2624 = inttoptr i64 %2622 to i64*
  %2625 = load i64, i64* %2624, align 8
  %2626 = add i64 %2615, %2625
  store i64 %2626, i64* %RSI.i583, align 8
  %2627 = icmp ult i64 %2626, %2625
  %2628 = icmp ult i64 %2626, %2615
  %2629 = or i1 %2627, %2628
  %2630 = zext i1 %2629 to i8
  store i8 %2630, i8* %14, align 1
  %2631 = trunc i64 %2626 to i32
  %2632 = and i32 %2631, 255
  %2633 = tail call i32 @llvm.ctpop.i32(i32 %2632)
  %2634 = trunc i32 %2633 to i8
  %2635 = and i8 %2634, 1
  %2636 = xor i8 %2635, 1
  store i8 %2636, i8* %21, align 1
  %2637 = xor i64 %2625, %2626
  %2638 = lshr i64 %2637, 4
  %2639 = trunc i64 %2638 to i8
  %2640 = and i8 %2639, 1
  store i8 %2640, i8* %26, align 1
  %2641 = icmp eq i64 %2626, 0
  %2642 = zext i1 %2641 to i8
  store i8 %2642, i8* %29, align 1
  %2643 = lshr i64 %2626, 63
  %2644 = trunc i64 %2643 to i8
  store i8 %2644, i8* %32, align 1
  %2645 = lshr i64 %2625, 63
  %2646 = lshr i64 %2614, 55
  %2647 = and i64 %2646, 1
  %2648 = xor i64 %2643, %2645
  %2649 = xor i64 %2643, %2647
  %2650 = add nuw nsw i64 %2648, %2649
  %2651 = icmp eq i64 %2650, 2
  %2652 = zext i1 %2651 to i8
  store i8 %2652, i8* %38, align 1
  %2653 = load i64, i64* %RBP.i, align 8
  %2654 = add i64 %2653, -8
  %2655 = add i64 %2504, 65
  store i64 %2655, i64* %3, align 8
  %2656 = inttoptr i64 %2654 to i32*
  %2657 = load i32, i32* %2656, align 4
  %2658 = sext i32 %2657 to i64
  %2659 = shl nsw i64 %2658, 5
  store i64 %2659, i64* %RCX.i587, align 8
  %2660 = add i64 %2659, %2626
  store i64 %2660, i64* %RSI.i583, align 8
  %2661 = icmp ult i64 %2660, %2626
  %2662 = icmp ult i64 %2660, %2659
  %2663 = or i1 %2661, %2662
  %2664 = zext i1 %2663 to i8
  store i8 %2664, i8* %14, align 1
  %2665 = trunc i64 %2660 to i32
  %2666 = and i32 %2665, 255
  %2667 = tail call i32 @llvm.ctpop.i32(i32 %2666)
  %2668 = trunc i32 %2667 to i8
  %2669 = and i8 %2668, 1
  %2670 = xor i8 %2669, 1
  store i8 %2670, i8* %21, align 1
  %2671 = xor i64 %2626, %2660
  %2672 = lshr i64 %2671, 4
  %2673 = trunc i64 %2672 to i8
  %2674 = and i8 %2673, 1
  store i8 %2674, i8* %26, align 1
  %2675 = icmp eq i64 %2660, 0
  %2676 = zext i1 %2675 to i8
  store i8 %2676, i8* %29, align 1
  %2677 = lshr i64 %2660, 63
  %2678 = trunc i64 %2677 to i8
  store i8 %2678, i8* %32, align 1
  %2679 = lshr i64 %2658, 58
  %2680 = and i64 %2679, 1
  %2681 = xor i64 %2677, %2643
  %2682 = xor i64 %2677, %2680
  %2683 = add nuw nsw i64 %2681, %2682
  %2684 = icmp eq i64 %2683, 2
  %2685 = zext i1 %2684 to i8
  store i8 %2685, i8* %38, align 1
  %2686 = add i64 %2653, -4
  %2687 = add i64 %2504, 76
  store i64 %2687, i64* %3, align 8
  %2688 = inttoptr i64 %2686 to i32*
  %2689 = load i32, i32* %2688, align 4
  %2690 = sext i32 %2689 to i64
  store i64 %2690, i64* %RCX.i587, align 8
  %2691 = shl nsw i64 %2690, 2
  %2692 = add i64 %2691, %2660
  %2693 = load i32, i32* %EAX.i599, align 4
  %2694 = add i64 %2504, 79
  store i64 %2694, i64* %3, align 8
  %2695 = inttoptr i64 %2692 to i32*
  store i32 %2693, i32* %2695, align 4
  %2696 = load i64, i64* %3, align 8
  %2697 = add i64 %2696, 219
  store i64 %2697, i64* %3, align 8
  br label %block_.L_47b02a

block_.L_47af54:                                  ; preds = %block_47ae68
  store i64 ptrtoint (%G__0x6d12c0_type* @G__0x6d12c0 to i64), i64* %RAX.i540, align 8
  store i64 ptrtoint (%G__0x4b9d50_type* @G__0x4b9d50 to i64), i64* %RCX.i587, align 8
  store i64 ptrtoint (%G__0x70f6e0_type* @G__0x70f6e0 to i64), i64* %RDX.i585, align 8
  store i64 ptrtoint (%G__0x4b9750_type* @G__0x4b9750 to i64), i64* %RSI.i583, align 8
  %2698 = add i64 %2249, -12
  %2699 = add i64 %2277, 44
  store i64 %2699, i64* %3, align 8
  %2700 = inttoptr i64 %2698 to i32*
  %2701 = load i32, i32* %2700, align 4
  %2702 = sext i32 %2701 to i64
  %2703 = shl nsw i64 %2702, 8
  store i64 %2703, i64* %RDI.i580, align 8
  %2704 = add i64 %2703, ptrtoint (%G__0x4b9750_type* @G__0x4b9750 to i64)
  store i64 %2704, i64* %RSI.i583, align 8
  %2705 = icmp ult i64 %2704, ptrtoint (%G__0x4b9750_type* @G__0x4b9750 to i64)
  %2706 = icmp ult i64 %2704, %2703
  %2707 = or i1 %2705, %2706
  %2708 = zext i1 %2707 to i8
  store i8 %2708, i8* %14, align 1
  %2709 = trunc i64 %2704 to i32
  %2710 = and i32 %2709, 248
  %2711 = tail call i32 @llvm.ctpop.i32(i32 %2710)
  %2712 = trunc i32 %2711 to i8
  %2713 = and i8 %2712, 1
  %2714 = xor i8 %2713, 1
  store i8 %2714, i8* %21, align 1
  %2715 = xor i64 %2704, ptrtoint (%G__0x4b9750_type* @G__0x4b9750 to i64)
  %2716 = lshr i64 %2715, 4
  %2717 = trunc i64 %2716 to i8
  %2718 = and i8 %2717, 1
  store i8 %2718, i8* %26, align 1
  %2719 = icmp eq i64 %2704, 0
  %2720 = zext i1 %2719 to i8
  store i8 %2720, i8* %29, align 1
  %2721 = lshr i64 %2704, 63
  %2722 = trunc i64 %2721 to i8
  store i8 %2722, i8* %32, align 1
  %2723 = lshr i64 %2702, 55
  %2724 = and i64 %2723, 1
  %2725 = xor i64 %2721, lshr (i64 ptrtoint (%G__0x4b9750_type* @G__0x4b9750 to i64), i64 63)
  %2726 = xor i64 %2721, %2724
  %2727 = add nuw nsw i64 %2725, %2726
  %2728 = icmp eq i64 %2727, 2
  %2729 = zext i1 %2728 to i8
  store i8 %2729, i8* %38, align 1
  %2730 = add i64 %2249, -8
  %2731 = add i64 %2277, 55
  store i64 %2731, i64* %3, align 8
  %2732 = inttoptr i64 %2730 to i32*
  %2733 = load i32, i32* %2732, align 4
  %2734 = sext i32 %2733 to i64
  %2735 = shl nsw i64 %2734, 5
  store i64 %2735, i64* %RDI.i580, align 8
  %2736 = add i64 %2735, %2704
  store i64 %2736, i64* %RSI.i583, align 8
  %2737 = icmp ult i64 %2736, %2704
  %2738 = icmp ult i64 %2736, %2735
  %2739 = or i1 %2737, %2738
  %2740 = zext i1 %2739 to i8
  store i8 %2740, i8* %14, align 1
  %2741 = trunc i64 %2736 to i32
  %2742 = and i32 %2741, 248
  %2743 = tail call i32 @llvm.ctpop.i32(i32 %2742)
  %2744 = trunc i32 %2743 to i8
  %2745 = and i8 %2744, 1
  %2746 = xor i8 %2745, 1
  store i8 %2746, i8* %21, align 1
  %2747 = xor i64 %2704, %2736
  %2748 = lshr i64 %2747, 4
  %2749 = trunc i64 %2748 to i8
  %2750 = and i8 %2749, 1
  store i8 %2750, i8* %26, align 1
  %2751 = icmp eq i64 %2736, 0
  %2752 = zext i1 %2751 to i8
  store i8 %2752, i8* %29, align 1
  %2753 = lshr i64 %2736, 63
  %2754 = trunc i64 %2753 to i8
  store i8 %2754, i8* %32, align 1
  %2755 = lshr i64 %2734, 58
  %2756 = and i64 %2755, 1
  %2757 = xor i64 %2753, %2721
  %2758 = xor i64 %2753, %2756
  %2759 = add nuw nsw i64 %2757, %2758
  %2760 = icmp eq i64 %2759, 2
  %2761 = zext i1 %2760 to i8
  store i8 %2761, i8* %38, align 1
  %2762 = load i64, i64* %RBP.i, align 8
  %2763 = add i64 %2762, -4
  %2764 = add i64 %2277, 66
  store i64 %2764, i64* %3, align 8
  %2765 = inttoptr i64 %2763 to i32*
  %2766 = load i32, i32* %2765, align 4
  %2767 = sext i32 %2766 to i64
  store i64 %2767, i64* %RDI.i580, align 8
  %2768 = shl nsw i64 %2767, 2
  %2769 = add i64 %2768, %2736
  %2770 = add i64 %2277, 70
  store i64 %2770, i64* %3, align 8
  %2771 = inttoptr i64 %2769 to i32*
  %2772 = load i32, i32* %2771, align 4
  %2773 = shl i32 %2772, 4
  %2774 = zext i32 %2773 to i64
  store i64 %2774, i64* %388, align 8
  %2775 = lshr i32 %2772, 28
  %2776 = trunc i32 %2775 to i8
  %2777 = and i8 %2776, 1
  store i8 %2777, i8* %14, align 1
  %2778 = and i32 %2773, 240
  %2779 = tail call i32 @llvm.ctpop.i32(i32 %2778)
  %2780 = trunc i32 %2779 to i8
  %2781 = and i8 %2780, 1
  %2782 = xor i8 %2781, 1
  store i8 %2782, i8* %21, align 1
  store i8 0, i8* %26, align 1
  %2783 = icmp eq i32 %2773, 0
  %2784 = zext i1 %2783 to i8
  store i8 %2784, i8* %29, align 1
  %2785 = lshr i32 %2772, 27
  %2786 = trunc i32 %2785 to i8
  %2787 = and i8 %2786, 1
  store i8 %2787, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %2788 = add i64 %2762, -16
  %2789 = add i64 %2277, 78
  store i64 %2789, i64* %3, align 8
  %2790 = inttoptr i64 %2788 to i32*
  %2791 = load i32, i32* %2790, align 4
  %2792 = sext i32 %2791 to i64
  store i64 %2792, i64* %RSI.i583, align 8
  %2793 = shl nsw i64 %2792, 1
  %2794 = add nsw i64 %2793, 7302816
  %2795 = add i64 %2277, 87
  store i64 %2795, i64* %3, align 8
  %2796 = inttoptr i64 %2794 to i16*
  %2797 = load i16, i16* %2796, align 2
  %2798 = sext i16 %2797 to i64
  %2799 = and i64 %2798, 4294967295
  store i64 %2799, i64* %390, align 8
  %2800 = add i64 %2762, -88
  %2801 = load i64, i64* %RAX.i540, align 8
  %2802 = add i64 %2277, 91
  store i64 %2802, i64* %3, align 8
  %2803 = inttoptr i64 %2800 to i64*
  store i64 %2801, i64* %2803, align 8
  %2804 = load i32, i32* %R8D.i560, align 4
  %2805 = zext i32 %2804 to i64
  %2806 = load i64, i64* %3, align 8
  store i64 %2805, i64* %RAX.i540, align 8
  %2807 = load i64, i64* %RBP.i, align 8
  %2808 = add i64 %2807, -96
  %2809 = load i64, i64* %RDX.i585, align 8
  %2810 = add i64 %2806, 7
  store i64 %2810, i64* %3, align 8
  %2811 = inttoptr i64 %2808 to i64*
  store i64 %2809, i64* %2811, align 8
  %2812 = load i64, i64* %3, align 8
  %2813 = load i32, i32* %EAX.i599, align 8
  %2814 = sext i32 %2813 to i64
  %2815 = lshr i64 %2814, 32
  store i64 %2815, i64* %RDX.i585, align 8
  %2816 = load i32, i32* %R9D.i552, align 4
  %2817 = add i64 %2812, 4
  store i64 %2817, i64* %3, align 8
  %2818 = zext i32 %2813 to i64
  %2819 = sext i32 %2816 to i64
  %2820 = shl nuw i64 %2815, 32
  %2821 = or i64 %2820, %2818
  %2822 = sdiv i64 %2821, %2819
  %2823 = shl i64 %2822, 32
  %2824 = ashr exact i64 %2823, 32
  %2825 = icmp eq i64 %2822, %2824
  br i1 %2825, label %2828, label %2826

; <label>:2826:                                   ; preds = %block_.L_47af54
  %2827 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %2817, %struct.Memory* %MEMORY.13)
  %.pre96 = load i64, i64* %3, align 8
  br label %routine_idivl__r9d.exit

; <label>:2828:                                   ; preds = %block_.L_47af54
  %2829 = srem i64 %2821, %2819
  %2830 = and i64 %2822, 4294967295
  store i64 %2830, i64* %RAX.i540, align 8
  %2831 = and i64 %2829, 4294967295
  store i64 %2831, i64* %391, align 8
  store i8 0, i8* %14, align 1
  store i8 0, i8* %21, align 1
  store i8 0, i8* %26, align 1
  store i8 0, i8* %29, align 1
  store i8 0, i8* %32, align 1
  store i8 0, i8* %38, align 1
  br label %routine_idivl__r9d.exit

routine_idivl__r9d.exit:                          ; preds = %2828, %2826
  %2832 = phi i64 [ %.pre96, %2826 ], [ %2817, %2828 ]
  %2833 = phi %struct.Memory* [ %2827, %2826 ], [ %MEMORY.13, %2828 ]
  %2834 = load i64, i64* %RBP.i, align 8
  %2835 = add i64 %2834, -12
  %2836 = add i64 %2832, 4
  store i64 %2836, i64* %3, align 8
  %2837 = inttoptr i64 %2835 to i32*
  %2838 = load i32, i32* %2837, align 4
  %2839 = sext i32 %2838 to i64
  %2840 = shl nsw i64 %2839, 8
  store i64 %2840, i64* %RSI.i583, align 8
  %.lobit57 = lshr i32 %2838, 31
  %2841 = trunc i32 %.lobit57 to i8
  store i8 %2841, i8* %14, align 1
  store i8 1, i8* %21, align 1
  store i8 0, i8* %26, align 1
  %2842 = icmp eq i32 %2838, 0
  %2843 = zext i1 %2842 to i8
  store i8 %2843, i8* %29, align 1
  %2844 = lshr i64 %2839, 55
  %2845 = trunc i64 %2844 to i8
  %2846 = and i8 %2845, 1
  store i8 %2846, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %2847 = add i64 %2834, -96
  %2848 = add i64 %2832, 12
  store i64 %2848, i64* %3, align 8
  %2849 = inttoptr i64 %2847 to i64*
  %2850 = load i64, i64* %2849, align 8
  %2851 = add i64 %2840, %2850
  store i64 %2851, i64* %RDI.i580, align 8
  %2852 = icmp ult i64 %2851, %2850
  %2853 = icmp ult i64 %2851, %2840
  %2854 = or i1 %2852, %2853
  %2855 = zext i1 %2854 to i8
  store i8 %2855, i8* %14, align 1
  %2856 = trunc i64 %2851 to i32
  %2857 = and i32 %2856, 255
  %2858 = tail call i32 @llvm.ctpop.i32(i32 %2857)
  %2859 = trunc i32 %2858 to i8
  %2860 = and i8 %2859, 1
  %2861 = xor i8 %2860, 1
  store i8 %2861, i8* %21, align 1
  %2862 = xor i64 %2850, %2851
  %2863 = lshr i64 %2862, 4
  %2864 = trunc i64 %2863 to i8
  %2865 = and i8 %2864, 1
  store i8 %2865, i8* %26, align 1
  %2866 = icmp eq i64 %2851, 0
  %2867 = zext i1 %2866 to i8
  store i8 %2867, i8* %29, align 1
  %2868 = lshr i64 %2851, 63
  %2869 = trunc i64 %2868 to i8
  store i8 %2869, i8* %32, align 1
  %2870 = lshr i64 %2850, 63
  %2871 = lshr i64 %2839, 55
  %2872 = and i64 %2871, 1
  %2873 = xor i64 %2868, %2870
  %2874 = xor i64 %2868, %2872
  %2875 = add nuw nsw i64 %2873, %2874
  %2876 = icmp eq i64 %2875, 2
  %2877 = zext i1 %2876 to i8
  store i8 %2877, i8* %38, align 1
  %2878 = add i64 %2834, -8
  %2879 = add i64 %2832, 19
  store i64 %2879, i64* %3, align 8
  %2880 = inttoptr i64 %2878 to i32*
  %2881 = load i32, i32* %2880, align 4
  %2882 = sext i32 %2881 to i64
  %2883 = shl nsw i64 %2882, 5
  store i64 %2883, i64* %RSI.i583, align 8
  %2884 = add i64 %2883, %2851
  store i64 %2884, i64* %RDI.i580, align 8
  %2885 = icmp ult i64 %2884, %2851
  %2886 = icmp ult i64 %2884, %2883
  %2887 = or i1 %2885, %2886
  %2888 = zext i1 %2887 to i8
  store i8 %2888, i8* %14, align 1
  %2889 = trunc i64 %2884 to i32
  %2890 = and i32 %2889, 255
  %2891 = tail call i32 @llvm.ctpop.i32(i32 %2890)
  %2892 = trunc i32 %2891 to i8
  %2893 = and i8 %2892, 1
  %2894 = xor i8 %2893, 1
  store i8 %2894, i8* %21, align 1
  %2895 = xor i64 %2851, %2884
  %2896 = lshr i64 %2895, 4
  %2897 = trunc i64 %2896 to i8
  %2898 = and i8 %2897, 1
  store i8 %2898, i8* %26, align 1
  %2899 = icmp eq i64 %2884, 0
  %2900 = zext i1 %2899 to i8
  store i8 %2900, i8* %29, align 1
  %2901 = lshr i64 %2884, 63
  %2902 = trunc i64 %2901 to i8
  store i8 %2902, i8* %32, align 1
  %2903 = lshr i64 %2882, 58
  %2904 = and i64 %2903, 1
  %2905 = xor i64 %2901, %2868
  %2906 = xor i64 %2901, %2904
  %2907 = add nuw nsw i64 %2905, %2906
  %2908 = icmp eq i64 %2907, 2
  %2909 = zext i1 %2908 to i8
  store i8 %2909, i8* %38, align 1
  %2910 = load i64, i64* %RBP.i, align 8
  %2911 = add i64 %2910, -4
  %2912 = add i64 %2832, 30
  store i64 %2912, i64* %3, align 8
  %2913 = inttoptr i64 %2911 to i32*
  %2914 = load i32, i32* %2913, align 4
  %2915 = sext i32 %2914 to i64
  store i64 %2915, i64* %RSI.i583, align 8
  %2916 = shl nsw i64 %2915, 2
  %2917 = add i64 %2916, %2884
  %2918 = load i32, i32* %EAX.i599, align 4
  %2919 = add i64 %2832, 33
  store i64 %2919, i64* %3, align 8
  %2920 = inttoptr i64 %2917 to i32*
  store i32 %2918, i32* %2920, align 4
  %2921 = load i64, i64* %RBP.i, align 8
  %2922 = add i64 %2921, -12
  %2923 = load i64, i64* %3, align 8
  %2924 = add i64 %2923, 4
  store i64 %2924, i64* %3, align 8
  %2925 = inttoptr i64 %2922 to i32*
  %2926 = load i32, i32* %2925, align 4
  %2927 = sext i32 %2926 to i64
  %2928 = shl nsw i64 %2927, 8
  store i64 %2928, i64* %RSI.i583, align 8
  %2929 = load i64, i64* %RCX.i587, align 8
  %2930 = add i64 %2928, %2929
  store i64 %2930, i64* %RCX.i587, align 8
  %2931 = icmp ult i64 %2930, %2929
  %2932 = icmp ult i64 %2930, %2928
  %2933 = or i1 %2931, %2932
  %2934 = zext i1 %2933 to i8
  store i8 %2934, i8* %14, align 1
  %2935 = trunc i64 %2930 to i32
  %2936 = and i32 %2935, 255
  %2937 = tail call i32 @llvm.ctpop.i32(i32 %2936)
  %2938 = trunc i32 %2937 to i8
  %2939 = and i8 %2938, 1
  %2940 = xor i8 %2939, 1
  store i8 %2940, i8* %21, align 1
  %2941 = xor i64 %2929, %2930
  %2942 = lshr i64 %2941, 4
  %2943 = trunc i64 %2942 to i8
  %2944 = and i8 %2943, 1
  store i8 %2944, i8* %26, align 1
  %2945 = icmp eq i64 %2930, 0
  %2946 = zext i1 %2945 to i8
  store i8 %2946, i8* %29, align 1
  %2947 = lshr i64 %2930, 63
  %2948 = trunc i64 %2947 to i8
  store i8 %2948, i8* %32, align 1
  %2949 = lshr i64 %2929, 63
  %2950 = lshr i64 %2927, 55
  %2951 = and i64 %2950, 1
  %2952 = xor i64 %2947, %2949
  %2953 = xor i64 %2947, %2951
  %2954 = add nuw nsw i64 %2952, %2953
  %2955 = icmp eq i64 %2954, 2
  %2956 = zext i1 %2955 to i8
  store i8 %2956, i8* %38, align 1
  %2957 = add i64 %2921, -8
  %2958 = add i64 %2923, 15
  store i64 %2958, i64* %3, align 8
  %2959 = inttoptr i64 %2957 to i32*
  %2960 = load i32, i32* %2959, align 4
  %2961 = sext i32 %2960 to i64
  %2962 = shl nsw i64 %2961, 5
  store i64 %2962, i64* %RSI.i583, align 8
  %2963 = add i64 %2962, %2930
  store i64 %2963, i64* %RCX.i587, align 8
  %2964 = icmp ult i64 %2963, %2930
  %2965 = icmp ult i64 %2963, %2962
  %2966 = or i1 %2964, %2965
  %2967 = zext i1 %2966 to i8
  store i8 %2967, i8* %14, align 1
  %2968 = trunc i64 %2963 to i32
  %2969 = and i32 %2968, 255
  %2970 = tail call i32 @llvm.ctpop.i32(i32 %2969)
  %2971 = trunc i32 %2970 to i8
  %2972 = and i8 %2971, 1
  %2973 = xor i8 %2972, 1
  store i8 %2973, i8* %21, align 1
  %2974 = xor i64 %2930, %2963
  %2975 = lshr i64 %2974, 4
  %2976 = trunc i64 %2975 to i8
  %2977 = and i8 %2976, 1
  store i8 %2977, i8* %26, align 1
  %2978 = icmp eq i64 %2963, 0
  %2979 = zext i1 %2978 to i8
  store i8 %2979, i8* %29, align 1
  %2980 = lshr i64 %2963, 63
  %2981 = trunc i64 %2980 to i8
  store i8 %2981, i8* %32, align 1
  %2982 = lshr i64 %2961, 58
  %2983 = and i64 %2982, 1
  %2984 = xor i64 %2980, %2947
  %2985 = xor i64 %2980, %2983
  %2986 = add nuw nsw i64 %2984, %2985
  %2987 = icmp eq i64 %2986, 2
  %2988 = zext i1 %2987 to i8
  store i8 %2988, i8* %38, align 1
  %2989 = load i64, i64* %RBP.i, align 8
  %2990 = add i64 %2989, -4
  %2991 = add i64 %2923, 26
  store i64 %2991, i64* %3, align 8
  %2992 = inttoptr i64 %2990 to i32*
  %2993 = load i32, i32* %2992, align 4
  %2994 = sext i32 %2993 to i64
  store i64 %2994, i64* %RSI.i583, align 8
  %2995 = shl nsw i64 %2994, 2
  %2996 = add i64 %2995, %2963
  %2997 = add i64 %2923, 29
  store i64 %2997, i64* %3, align 8
  %2998 = inttoptr i64 %2996 to i32*
  %2999 = load i32, i32* %2998, align 4
  %3000 = zext i32 %2999 to i64
  store i64 %3000, i64* %RAX.i540, align 8
  %3001 = add i64 %2989, -16
  %3002 = add i64 %2923, 33
  store i64 %3002, i64* %3, align 8
  %3003 = inttoptr i64 %3001 to i32*
  %3004 = load i32, i32* %3003, align 4
  %3005 = sext i32 %3004 to i64
  store i64 %3005, i64* %RCX.i587, align 8
  %3006 = shl nsw i64 %3005, 1
  %3007 = add nsw i64 %3006, 7302816
  %3008 = add i64 %2923, 42
  store i64 %3008, i64* %3, align 8
  %3009 = inttoptr i64 %3007 to i16*
  %3010 = load i16, i16* %3009, align 2
  %3011 = sext i16 %3010 to i64
  %3012 = and i64 %3011, 4294967295
  store i64 %3012, i64* %388, align 8
  %3013 = sext i32 %2999 to i64
  %3014 = sext i16 %3010 to i64
  %3015 = mul nsw i64 %3014, %3013
  %3016 = trunc i64 %3015 to i32
  %3017 = and i64 %3015, 4294967295
  store i64 %3017, i64* %RAX.i540, align 8
  %3018 = shl i64 %3015, 32
  %3019 = ashr exact i64 %3018, 32
  %3020 = icmp ne i64 %3019, %3015
  %3021 = zext i1 %3020 to i8
  store i8 %3021, i8* %14, align 1
  %3022 = and i32 %3016, 255
  %3023 = tail call i32 @llvm.ctpop.i32(i32 %3022)
  %3024 = trunc i32 %3023 to i8
  %3025 = and i8 %3024, 1
  %3026 = xor i8 %3025, 1
  store i8 %3026, i8* %21, align 1
  store i8 0, i8* %26, align 1
  store i8 0, i8* %29, align 1
  %3027 = lshr i32 %3016, 31
  %3028 = trunc i32 %3027 to i8
  store i8 %3028, i8* %32, align 1
  store i8 %3021, i8* %38, align 1
  %3029 = add i64 %2989, -12
  %3030 = add i64 %2923, 50
  store i64 %3030, i64* %3, align 8
  %3031 = inttoptr i64 %3029 to i32*
  %3032 = load i32, i32* %3031, align 4
  %3033 = sext i32 %3032 to i64
  %3034 = shl nsw i64 %3033, 8
  store i64 %3034, i64* %RCX.i587, align 8
  %.lobit61 = lshr i32 %3032, 31
  %3035 = trunc i32 %.lobit61 to i8
  store i8 %3035, i8* %14, align 1
  store i8 1, i8* %21, align 1
  store i8 0, i8* %26, align 1
  %3036 = icmp eq i32 %3032, 0
  %3037 = zext i1 %3036 to i8
  store i8 %3037, i8* %29, align 1
  %3038 = lshr i64 %3033, 55
  %3039 = trunc i64 %3038 to i8
  %3040 = and i8 %3039, 1
  store i8 %3040, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %3041 = add i64 %2989, -88
  %3042 = add i64 %2923, 58
  store i64 %3042, i64* %3, align 8
  %3043 = inttoptr i64 %3041 to i64*
  %3044 = load i64, i64* %3043, align 8
  %3045 = add i64 %3034, %3044
  store i64 %3045, i64* %RSI.i583, align 8
  %3046 = icmp ult i64 %3045, %3044
  %3047 = icmp ult i64 %3045, %3034
  %3048 = or i1 %3046, %3047
  %3049 = zext i1 %3048 to i8
  store i8 %3049, i8* %14, align 1
  %3050 = trunc i64 %3045 to i32
  %3051 = and i32 %3050, 255
  %3052 = tail call i32 @llvm.ctpop.i32(i32 %3051)
  %3053 = trunc i32 %3052 to i8
  %3054 = and i8 %3053, 1
  %3055 = xor i8 %3054, 1
  store i8 %3055, i8* %21, align 1
  %3056 = xor i64 %3044, %3045
  %3057 = lshr i64 %3056, 4
  %3058 = trunc i64 %3057 to i8
  %3059 = and i8 %3058, 1
  store i8 %3059, i8* %26, align 1
  %3060 = icmp eq i64 %3045, 0
  %3061 = zext i1 %3060 to i8
  store i8 %3061, i8* %29, align 1
  %3062 = lshr i64 %3045, 63
  %3063 = trunc i64 %3062 to i8
  store i8 %3063, i8* %32, align 1
  %3064 = lshr i64 %3044, 63
  %3065 = lshr i64 %3033, 55
  %3066 = and i64 %3065, 1
  %3067 = xor i64 %3062, %3064
  %3068 = xor i64 %3062, %3066
  %3069 = add nuw nsw i64 %3067, %3068
  %3070 = icmp eq i64 %3069, 2
  %3071 = zext i1 %3070 to i8
  store i8 %3071, i8* %38, align 1
  %3072 = load i64, i64* %RBP.i, align 8
  %3073 = add i64 %3072, -8
  %3074 = add i64 %2923, 65
  store i64 %3074, i64* %3, align 8
  %3075 = inttoptr i64 %3073 to i32*
  %3076 = load i32, i32* %3075, align 4
  %3077 = sext i32 %3076 to i64
  %3078 = shl nsw i64 %3077, 5
  store i64 %3078, i64* %RCX.i587, align 8
  %3079 = add i64 %3078, %3045
  store i64 %3079, i64* %RSI.i583, align 8
  %3080 = icmp ult i64 %3079, %3045
  %3081 = icmp ult i64 %3079, %3078
  %3082 = or i1 %3080, %3081
  %3083 = zext i1 %3082 to i8
  store i8 %3083, i8* %14, align 1
  %3084 = trunc i64 %3079 to i32
  %3085 = and i32 %3084, 255
  %3086 = tail call i32 @llvm.ctpop.i32(i32 %3085)
  %3087 = trunc i32 %3086 to i8
  %3088 = and i8 %3087, 1
  %3089 = xor i8 %3088, 1
  store i8 %3089, i8* %21, align 1
  %3090 = xor i64 %3045, %3079
  %3091 = lshr i64 %3090, 4
  %3092 = trunc i64 %3091 to i8
  %3093 = and i8 %3092, 1
  store i8 %3093, i8* %26, align 1
  %3094 = icmp eq i64 %3079, 0
  %3095 = zext i1 %3094 to i8
  store i8 %3095, i8* %29, align 1
  %3096 = lshr i64 %3079, 63
  %3097 = trunc i64 %3096 to i8
  store i8 %3097, i8* %32, align 1
  %3098 = lshr i64 %3077, 58
  %3099 = and i64 %3098, 1
  %3100 = xor i64 %3096, %3062
  %3101 = xor i64 %3096, %3099
  %3102 = add nuw nsw i64 %3100, %3101
  %3103 = icmp eq i64 %3102, 2
  %3104 = zext i1 %3103 to i8
  store i8 %3104, i8* %38, align 1
  %3105 = add i64 %3072, -4
  %3106 = add i64 %2923, 76
  store i64 %3106, i64* %3, align 8
  %3107 = inttoptr i64 %3105 to i32*
  %3108 = load i32, i32* %3107, align 4
  %3109 = sext i32 %3108 to i64
  store i64 %3109, i64* %RCX.i587, align 8
  %3110 = shl nsw i64 %3109, 2
  %3111 = add i64 %3110, %3079
  %3112 = load i32, i32* %EAX.i599, align 4
  %3113 = add i64 %2923, 79
  store i64 %3113, i64* %3, align 8
  %3114 = inttoptr i64 %3111 to i32*
  store i32 %3112, i32* %3114, align 4
  %.pre98 = load i64, i64* %3, align 8
  br label %block_.L_47b02a

block_.L_47b02a:                                  ; preds = %routine_idivl__r9d.exit, %routine_idivl__r9d.exit253
  %3115 = phi i64 [ %2697, %routine_idivl__r9d.exit253 ], [ %.pre98, %routine_idivl__r9d.exit ]
  %MEMORY.15 = phi %struct.Memory* [ %2414, %routine_idivl__r9d.exit253 ], [ %2833, %routine_idivl__r9d.exit ]
  %3116 = load i64, i64* %RBP.i, align 8
  %3117 = add i64 %3116, -4
  %3118 = add i64 %3115, 8
  store i64 %3118, i64* %3, align 8
  %3119 = inttoptr i64 %3117 to i32*
  %3120 = load i32, i32* %3119, align 4
  %3121 = add i32 %3120, 1
  %3122 = zext i32 %3121 to i64
  store i64 %3122, i64* %RAX.i540, align 8
  %3123 = icmp eq i32 %3120, -1
  %3124 = icmp eq i32 %3121, 0
  %3125 = or i1 %3123, %3124
  %3126 = zext i1 %3125 to i8
  store i8 %3126, i8* %14, align 1
  %3127 = and i32 %3121, 255
  %3128 = tail call i32 @llvm.ctpop.i32(i32 %3127)
  %3129 = trunc i32 %3128 to i8
  %3130 = and i8 %3129, 1
  %3131 = xor i8 %3130, 1
  store i8 %3131, i8* %21, align 1
  %3132 = xor i32 %3121, %3120
  %3133 = lshr i32 %3132, 4
  %3134 = trunc i32 %3133 to i8
  %3135 = and i8 %3134, 1
  store i8 %3135, i8* %26, align 1
  %3136 = zext i1 %3124 to i8
  store i8 %3136, i8* %29, align 1
  %3137 = lshr i32 %3121, 31
  %3138 = trunc i32 %3137 to i8
  store i8 %3138, i8* %32, align 1
  %3139 = lshr i32 %3120, 31
  %3140 = xor i32 %3137, %3139
  %3141 = add nuw nsw i32 %3140, %3137
  %3142 = icmp eq i32 %3141, 2
  %3143 = zext i1 %3142 to i8
  store i8 %3143, i8* %38, align 1
  %3144 = add i64 %3115, 14
  store i64 %3144, i64* %3, align 8
  store i32 %3121, i32* %3119, align 4
  %3145 = load i64, i64* %3, align 8
  %3146 = add i64 %3145, -956
  store i64 %3146, i64* %3, align 8
  br label %block_.L_47ac7c

block_.L_47b03d:                                  ; preds = %block_.L_47ac7c
  %3147 = add i64 %1300, -8
  %3148 = add i64 %1328, 8
  store i64 %3148, i64* %3, align 8
  %3149 = inttoptr i64 %3147 to i32*
  %3150 = load i32, i32* %3149, align 4
  %3151 = add i32 %3150, 1
  %3152 = zext i32 %3151 to i64
  store i64 %3152, i64* %RAX.i540, align 8
  %3153 = icmp eq i32 %3150, -1
  %3154 = icmp eq i32 %3151, 0
  %3155 = or i1 %3153, %3154
  %3156 = zext i1 %3155 to i8
  store i8 %3156, i8* %14, align 1
  %3157 = and i32 %3151, 255
  %3158 = tail call i32 @llvm.ctpop.i32(i32 %3157)
  %3159 = trunc i32 %3158 to i8
  %3160 = and i8 %3159, 1
  %3161 = xor i8 %3160, 1
  store i8 %3161, i8* %21, align 1
  %3162 = xor i32 %3151, %3150
  %3163 = lshr i32 %3162, 4
  %3164 = trunc i32 %3163 to i8
  %3165 = and i8 %3164, 1
  store i8 %3165, i8* %26, align 1
  %3166 = zext i1 %3154 to i8
  store i8 %3166, i8* %29, align 1
  %3167 = lshr i32 %3151, 31
  %3168 = trunc i32 %3167 to i8
  store i8 %3168, i8* %32, align 1
  %3169 = lshr i32 %3150, 31
  %3170 = xor i32 %3167, %3169
  %3171 = add nuw nsw i32 %3170, %3167
  %3172 = icmp eq i32 %3171, 2
  %3173 = zext i1 %3172 to i8
  store i8 %3173, i8* %38, align 1
  %3174 = add i64 %1328, 14
  store i64 %3174, i64* %3, align 8
  store i32 %3151, i32* %3149, align 4
  %3175 = load i64, i64* %3, align 8
  %3176 = add i64 %3175, -992
  store i64 %3176, i64* %3, align 8
  br label %block_.L_47ac6b

block_.L_47b050:                                  ; preds = %block_.L_47ac6b
  %3177 = add i64 %1267, -12
  %3178 = add i64 %1295, 8
  store i64 %3178, i64* %3, align 8
  %3179 = inttoptr i64 %3177 to i32*
  %3180 = load i32, i32* %3179, align 4
  %3181 = add i32 %3180, 1
  %3182 = zext i32 %3181 to i64
  store i64 %3182, i64* %RAX.i540, align 8
  %3183 = icmp eq i32 %3180, -1
  %3184 = icmp eq i32 %3181, 0
  %3185 = or i1 %3183, %3184
  %3186 = zext i1 %3185 to i8
  store i8 %3186, i8* %14, align 1
  %3187 = and i32 %3181, 255
  %3188 = tail call i32 @llvm.ctpop.i32(i32 %3187)
  %3189 = trunc i32 %3188 to i8
  %3190 = and i8 %3189, 1
  %3191 = xor i8 %3190, 1
  store i8 %3191, i8* %21, align 1
  %3192 = xor i32 %3181, %3180
  %3193 = lshr i32 %3192, 4
  %3194 = trunc i32 %3193 to i8
  %3195 = and i8 %3194, 1
  store i8 %3195, i8* %26, align 1
  %3196 = zext i1 %3184 to i8
  store i8 %3196, i8* %29, align 1
  %3197 = lshr i32 %3181, 31
  %3198 = trunc i32 %3197 to i8
  store i8 %3198, i8* %32, align 1
  %3199 = lshr i32 %3180, 31
  %3200 = xor i32 %3197, %3199
  %3201 = add nuw nsw i32 %3200, %3197
  %3202 = icmp eq i32 %3201, 2
  %3203 = zext i1 %3202 to i8
  store i8 %3203, i8* %38, align 1
  %3204 = add i64 %1295, 14
  store i64 %3204, i64* %3, align 8
  store i32 %3181, i32* %3179, align 4
  %3205 = load i64, i64* %3, align 8
  %3206 = add i64 %3205, -1028
  store i64 %3206, i64* %3, align 8
  br label %block_.L_47ac5a

block_.L_47b063:                                  ; preds = %block_.L_47ac5a
  %3207 = add i64 %1262, 5
  store i64 %3207, i64* %3, align 8
  br label %block_.L_47b068

block_.L_47b068:                                  ; preds = %block_.L_47b063, %block_.L_47ac4e
  %storemerge34 = phi i64 [ %1232, %block_.L_47ac4e ], [ %3207, %block_.L_47b063 ]
  %MEMORY.16 = phi %struct.Memory* [ %MEMORY.5, %block_.L_47ac4e ], [ %MEMORY.9, %block_.L_47b063 ]
  %3208 = load i64, i64* %6, align 8
  %3209 = add i64 %3208, 96
  store i64 %3209, i64* %6, align 8
  %3210 = icmp ugt i64 %3208, -97
  %3211 = zext i1 %3210 to i8
  store i8 %3211, i8* %14, align 1
  %3212 = trunc i64 %3209 to i32
  %3213 = and i32 %3212, 255
  %3214 = tail call i32 @llvm.ctpop.i32(i32 %3213)
  %3215 = trunc i32 %3214 to i8
  %3216 = and i8 %3215, 1
  %3217 = xor i8 %3216, 1
  store i8 %3217, i8* %21, align 1
  %3218 = xor i64 %3209, %3208
  %3219 = lshr i64 %3218, 4
  %3220 = trunc i64 %3219 to i8
  %3221 = and i8 %3220, 1
  store i8 %3221, i8* %26, align 1
  %3222 = icmp eq i64 %3209, 0
  %3223 = zext i1 %3222 to i8
  store i8 %3223, i8* %29, align 1
  %3224 = lshr i64 %3209, 63
  %3225 = trunc i64 %3224 to i8
  store i8 %3225, i8* %32, align 1
  %3226 = lshr i64 %3208, 63
  %3227 = xor i64 %3224, %3226
  %3228 = add nuw nsw i64 %3227, %3224
  %3229 = icmp eq i64 %3228, 2
  %3230 = zext i1 %3229 to i8
  store i8 %3230, i8* %38, align 1
  %3231 = add i64 %storemerge34, 5
  store i64 %3231, i64* %3, align 8
  %3232 = add i64 %3208, 104
  %3233 = inttoptr i64 %3209 to i64*
  %3234 = load i64, i64* %3233, align 8
  store i64 %3234, i64* %RBP.i, align 8
  store i64 %3232, i64* %6, align 8
  %3235 = add i64 %storemerge34, 6
  store i64 %3235, i64* %3, align 8
  %3236 = inttoptr i64 %3232 to i64*
  %3237 = load i64, i64* %3236, align 8
  store i64 %3237, i64* %3, align 8
  %3238 = add i64 %3208, 112
  store i64 %3238, i64* %6, align 8
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
define %struct.Memory* @routine_subq__0x60___rsp(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %3 = load i64, i64* %RSP, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 4
  store i64 %5, i64* %PC, align 8
  %6 = add i64 %3, -96
  store i64 %6, i64* %RSP, align 8
  %7 = icmp ult i64 %3, 96
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
define %struct.Memory* @routine_cmpl__0x0__0x24__rax_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = add i64 %3, 36
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
define %struct.Memory* @routine_jne_.L_47a9df(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_cmpl__0x0__0x14__rax_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = add i64 %3, 20
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
define %struct.Memory* @routine_movl__0x1__MINUS0x1c__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -28
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  store i32 1, i32* %7, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_47aaa3(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl__0x8___eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 5
  store i64 %4, i64* %PC, align 8
  store i64 8, i64* %RAX, align 8
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_leaq_MINUS0x18__rbp____rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -24
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  store i64 %4, i64* %RCX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__rcx___rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 3
  store i64 %5, i64* %PC, align 8
  store i64 %3, i64* %RDI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_callq_.memset_plt(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movq_0x722cb0___rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 8
  store i64 %4, i64* %PC, align 8
  %5 = load i64, i64* bitcast (%G_0x722cb0_type* @G_0x722cb0 to i64*), align 8
  store i64 %5, i64* %RCX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__0x0__0x24__rcx_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = add i64 %3, 36
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
define %struct.Memory* @routine_je_.L_47aa47(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__0x2__MINUS0x4__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -4
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
define %struct.Memory* @routine_jge_.L_47aa42(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_addl__0x6___ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 3
  store i64 %5, i64* %PC, align 8
  %6 = trunc i64 %3 to i32
  %7 = add i32 %6, 6
  %8 = zext i32 %7 to i64
  store i64 %8, i64* %RCX, align 8
  %9 = icmp ugt i32 %6, -7
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
define %struct.Memory* @routine_movl_0x28__rax__rdx_4____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %RDX, align 8
  %5 = shl i64 %4, 2
  %6 = add i64 %3, 40
  %7 = add i64 %6, %5
  %8 = load i64, i64* %PC, align 8
  %9 = add i64 %8, 4
  store i64 %9, i64* %PC, align 8
  %10 = inttoptr i64 %7 to i32*
  %11 = load i32, i32* %10, align 4
  %12 = zext i32 %11 to i64
  store i64 %12, i64* %RCX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movslq_MINUS0x4__rbp____rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -4
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
define %struct.Memory* @routine_movl__ecx__MINUS0x18__rbp__rax_4_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %ECX = bitcast %union.anon* %3 to i32*
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = load i64, i64* %RAX, align 8
  %6 = shl i64 %5, 2
  %7 = add i64 %4, -24
  %8 = add i64 %7, %6
  %9 = load i32, i32* %ECX, align 4
  %10 = load i64, i64* %PC, align 8
  %11 = add i64 %10, 4
  store i64 %11, i64* %PC, align 8
  %12 = inttoptr i64 %8 to i32*
  store i32 %9, i32* %12, align 4
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
define %struct.Memory* @routine_jmpq_.L_47aa0d(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_47aa47(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_je_.L_47aa9e(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jge_.L_47aa99(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl_0x18__rax__rdx_4____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %RDX, align 8
  %5 = shl i64 %4, 2
  %6 = add i64 %3, 24
  %7 = add i64 %6, %5
  %8 = load i64, i64* %PC, align 8
  %9 = add i64 %8, 4
  store i64 %9, i64* %PC, align 8
  %10 = inttoptr i64 %7 to i32*
  %11 = load i32, i32* %10, align 4
  %12 = zext i32 %11 to i64
  store i64 %12, i64* %RCX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_orl_MINUS0x18__rbp__rax_4____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = load i64, i64* %RBP, align 8
  %5 = load i64, i64* %RAX, align 8
  %6 = shl i64 %5, 2
  %7 = add i64 %4, -24
  %8 = add i64 %7, %6
  %9 = load i64, i64* %PC, align 8
  %10 = add i64 %9, 4
  store i64 %10, i64* %PC, align 8
  %11 = trunc i64 %3 to i32
  %12 = inttoptr i64 %8 to i32*
  %13 = load i32, i32* %12, align 4
  %14 = or i32 %13, %11
  %15 = zext i32 %14 to i64
  store i64 %15, i64* %RCX, align 8
  %16 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %16, align 1
  %17 = and i32 %14, 255
  %18 = tail call i32 @llvm.ctpop.i32(i32 %17)
  %19 = trunc i32 %18 to i8
  %20 = and i8 %19, 1
  %21 = xor i8 %20, 1
  %22 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %21, i8* %22, align 1
  %23 = icmp eq i32 %14, 0
  %24 = zext i1 %23 to i8
  %25 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %24, i8* %25, align 1
  %26 = lshr i32 %14, 31
  %27 = trunc i32 %26 to i8
  %28 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %27, i8* %28, align 1
  %29 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %29, align 1
  %30 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %30, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_47aa60(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_47aa9e(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__0x1__MINUS0x1c__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
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
define %struct.Memory* @routine_jne_.L_47ac53(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__0x6__MINUS0xc__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
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
define %struct.Memory* @routine_jge_.L_47ac4e(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__0x8__MINUS0x8__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
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
define %struct.Memory* @routine_jge_.L_47ac3b(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_cmpl__0x8__MINUS0x4__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -4
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
define %struct.Memory* @routine_jge_.L_47ac28(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movq__0x6d12c0___rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x6d12c0_type* @G__0x6d12c0 to i64), i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__0x4b9d50___rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x4b9d50_type* @G__0x4b9d50 to i64), i64* %RCX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__0x70f6e0___rdx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x70f6e0_type* @G__0x70f6e0 to i64), i64* %RDX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__0x4b9750___rsi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x4b9750_type* @G__0x4b9750 to i64), i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__0x6cfc70___rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x6cfc70_type* @G__0x6cfc70 to i64), i64* %RDI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__0x6d0bc0___r8(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %R8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x6d0bc0_type* @G__0x6d0bc0 to i64), i64* %R8, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movslq_MINUS0xc__rbp____r9(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %R9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 19, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -12
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = sext i32 %8 to i64
  store i64 %9, i64* %R9, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_shlq__0x8___r9(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %R9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 19, i32 0, i32 0
  %3 = load i64, i64* %R9, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 4
  store i64 %5, i64* %PC, align 8
  %6 = shl i64 %3, 8
  store i64 %6, i64* %R9, align 8
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__rsi___r10(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %R10 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 21, i32 0, i32 0
  %3 = load i64, i64* %RSI, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 3
  store i64 %5, i64* %PC, align 8
  store i64 %3, i64* %R10, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_addq__r9___r10(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %R9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 19, i32 0, i32 0
  %R10 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 21, i32 0, i32 0
  %3 = load i64, i64* %R10, align 8
  %4 = load i64, i64* %R9, align 8
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
define %struct.Memory* @routine_movslq_MINUS0x8__rbp____r9(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %R9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 19, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -8
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = sext i32 %8 to i64
  store i64 %9, i64* %R9, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_shlq__0x5___r9(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %R9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 19, i32 0, i32 0
  %3 = load i64, i64* %R9, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 4
  store i64 %5, i64* %PC, align 8
  %6 = shl i64 %3, 5
  store i64 %6, i64* %R9, align 8
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
define %struct.Memory* @routine_movslq_MINUS0x4__rbp____r9(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %R9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 19, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -4
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = sext i32 %8 to i64
  store i64 %9, i64* %R9, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl___r10__r9_4____r11d(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %R9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 19, i32 0, i32 0
  %R10 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 21, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 23, i32 0, i32 0
  %4 = load i64, i64* %R10, align 8
  %5 = load i64, i64* %R9, align 8
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
define %struct.Memory* @routine_addq__r9___r8(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %R8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0, i32 0
  %R9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 19, i32 0, i32 0
  %3 = load i64, i64* %R8, align 8
  %4 = load i64, i64* %R9, align 8
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
define %struct.Memory* @routine_movl__r11d____r8__r9_4_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 23, i32 0
  %R11D = bitcast %union.anon* %3 to i32*
  %R8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0, i32 0
  %R9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 19, i32 0, i32 0
  %4 = load i64, i64* %R8, align 8
  %5 = load i64, i64* %R9, align 8
  %6 = shl i64 %5, 2
  %7 = add i64 %6, %4
  %8 = load i32, i32* %R11D, align 4
  %9 = load i64, i64* %PC, align 8
  %10 = add i64 %9, 4
  store i64 %10, i64* %PC, align 8
  %11 = inttoptr i64 %7 to i32*
  store i32 %8, i32* %11, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movslq_MINUS0xc__rbp____r8(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %R8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -12
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
define %struct.Memory* @routine_shlq__0x8___r8(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %R8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0, i32 0
  %3 = load i64, i64* %R8, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 4
  store i64 %5, i64* %PC, align 8
  %6 = shl i64 %3, 8
  store i64 %6, i64* %R8, align 8
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__rcx___r9(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %R9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 19, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 3
  store i64 %5, i64* %PC, align 8
  store i64 %3, i64* %R9, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_addq__r8___r9(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %R8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0, i32 0
  %R9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 19, i32 0, i32 0
  %3 = load i64, i64* %R9, align 8
  %4 = load i64, i64* %R8, align 8
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 3
  store i64 %6, i64* %PC, align 8
  %7 = add i64 %4, %3
  store i64 %7, i64* %R9, align 8
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
define %struct.Memory* @routine_movl___r9__r8_4____r11d(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %R8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0, i32 0
  %R9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 19, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 23, i32 0, i32 0
  %4 = load i64, i64* %R9, align 8
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

; Function Attrs: nounwind
define %struct.Memory* @routine_shll__0x4___r11d(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 23, i32 0
  %R11D = bitcast %union.anon* %3 to i32*
  %4 = getelementptr inbounds %union.anon, %union.anon* %3, i64 0, i32 0
  %5 = load i32, i32* %R11D, align 4
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 4
  store i64 %7, i64* %PC, align 8
  %8 = shl i32 %5, 4
  %9 = zext i32 %8 to i64
  store i64 %9, i64* %4, align 8
  %10 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %11 = lshr i32 %5, 28
  %12 = trunc i32 %11 to i8
  %13 = and i8 %12, 1
  store i8 %13, i8* %10, align 1
  %14 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %15 = and i32 %8, 240
  %16 = tail call i32 @llvm.ctpop.i32(i32 %15)
  %17 = trunc i32 %16 to i8
  %18 = and i8 %17, 1
  %19 = xor i8 %18, 1
  store i8 %19, i8* %14, align 1
  %20 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %20, align 1
  %21 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %22 = icmp eq i32 %8, 0
  %23 = zext i1 %22 to i8
  store i8 %23, i8* %21, align 1
  %24 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %25 = lshr i32 %5, 27
  %26 = trunc i32 %25 to i8
  %27 = and i8 %26, 1
  store i8 %27, i8* %24, align 1
  %28 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %28, align 1
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
define %struct.Memory* @routine_movl__r11d____rdi__r8_4_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 23, i32 0
  %R11D = bitcast %union.anon* %3 to i32*
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %R8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0, i32 0
  %4 = load i64, i64* %RDI, align 8
  %5 = load i64, i64* %R8, align 8
  %6 = shl i64 %5, 2
  %7 = add i64 %6, %4
  %8 = load i32, i32* %R11D, align 4
  %9 = load i64, i64* %PC, align 8
  %10 = add i64 %9, 4
  store i64 %10, i64* %PC, align 8
  %11 = inttoptr i64 %7 to i32*
  store i32 %8, i32* %11, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movslq_MINUS0xc__rbp____rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -12
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
define %struct.Memory* @routine_shlq__0x8___rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %RDI, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 4
  store i64 %5, i64* %PC, align 8
  %6 = shl i64 %3, 8
  store i64 %6, i64* %RDI, align 8
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
define %struct.Memory* @routine_movslq_MINUS0x8__rbp____rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -8
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl___rsi__rdi_4____r11d(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 23, i32 0, i32 0
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
define %struct.Memory* @routine_movslq_MINUS0xc__rbp____rsi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -12
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
define %struct.Memory* @routine_movslq_MINUS0x8__rbp____rsi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -8
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
define %struct.Memory* @routine_movl__r11d____rdx__rsi_4_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 23, i32 0
  %R11D = bitcast %union.anon* %3 to i32*
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %4 = load i64, i64* %RDX, align 8
  %5 = load i64, i64* %RSI, align 8
  %6 = shl i64 %5, 2
  %7 = add i64 %6, %4
  %8 = load i32, i32* %R11D, align 4
  %9 = load i64, i64* %PC, align 8
  %10 = add i64 %9, 4
  store i64 %10, i64* %PC, align 8
  %11 = inttoptr i64 %7 to i32*
  store i32 %8, i32* %11, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movslq_MINUS0xc__rbp____rdx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -12
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
define %struct.Memory* @routine_shlq__0x8___rdx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %RDX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 4
  store i64 %5, i64* %PC, align 8
  %6 = shl i64 %3, 8
  store i64 %6, i64* %RDX, align 8
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
define %struct.Memory* @routine_movl___rcx__rdx_4____r11d(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 23, i32 0, i32 0
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movslq_MINUS0x4__rbp____rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -4
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
define %struct.Memory* @routine_movl__r11d____rax__rcx_4_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 23, i32 0
  %R11D = bitcast %union.anon* %3 to i32*
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %4 = load i64, i64* %RAX, align 8
  %5 = load i64, i64* %RCX, align 8
  %6 = shl i64 %5, 2
  %7 = add i64 %6, %4
  %8 = load i32, i32* %R11D, align 4
  %9 = load i64, i64* %PC, align 8
  %10 = add i64 %9, 4
  store i64 %10, i64* %PC, align 8
  %11 = inttoptr i64 %7 to i32*
  store i32 %8, i32* %11, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_47aad6(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_47ac2d(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jmpq_.L_47aac5(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_47ac40(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jmpq_.L_47aab4(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_47b068(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jge_.L_47b063(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jge_.L_47b050(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jge_.L_47b03d(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_shll__0x3___eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 3
  store i64 %5, i64* %PC, align 8
  %.tr = trunc i64 %3 to i32
  %6 = shl i32 %.tr, 3
  %7 = zext i32 %6 to i64
  store i64 %7, i64* %RAX, align 8
  %8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %9 = lshr i64 %3, 29
  %10 = trunc i64 %9 to i8
  %11 = and i8 %10, 1
  store i8 %11, i8* %8, align 1
  %12 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %13 = and i32 %6, 248
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
  %23 = lshr i32 %.tr, 28
  %24 = trunc i32 %23 to i8
  %25 = and i8 %24, 1
  store i8 %25, i8* %22, align 1
  %26 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %26, align 1
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_addl_MINUS0x8__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -8
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

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__0x0__MINUS0x18__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
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
define %struct.Memory* @routine_je_.L_47acad(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movswl_0x6d1f9c___eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 8
  store i64 %4, i64* %PC, align 8
  %5 = load i16, i16* bitcast (%G_0x6d1f9c_type* @G_0x6d1f9c to i16*), align 8
  %6 = sext i16 %5 to i64
  %7 = and i64 %6, 4294967295
  store i64 %7, i64* %RAX, align 8
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
define %struct.Memory* @routine_je_.L_47ad88(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movq__0x6cfc70___rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x6cfc70_type* @G__0x6cfc70 to i64), i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__0x6d0bc0___rdx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x6d0bc0_type* @G__0x6d0bc0 to i64), i64* %RDX, align 8
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

; Function Attrs: nounwind
define %struct.Memory* @routine_shll__0x4___r8d(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0
  %R8D = bitcast %union.anon* %3 to i32*
  %4 = getelementptr inbounds %union.anon, %union.anon* %3, i64 0, i32 0
  %5 = load i32, i32* %R8D, align 4
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 4
  store i64 %7, i64* %PC, align 8
  %8 = shl i32 %5, 4
  %9 = zext i32 %8 to i64
  store i64 %9, i64* %4, align 8
  %10 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %11 = lshr i32 %5, 28
  %12 = trunc i32 %11 to i8
  %13 = and i8 %12, 1
  store i8 %13, i8* %10, align 1
  %14 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %15 = and i32 %8, 240
  %16 = tail call i32 @llvm.ctpop.i32(i32 %15)
  %17 = trunc i32 %16 to i8
  %18 = and i8 %17, 1
  %19 = xor i8 %18, 1
  store i8 %19, i8* %14, align 1
  %20 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %20, align 1
  %21 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %22 = icmp eq i32 %8, 0
  %23 = zext i1 %22 to i8
  store i8 %23, i8* %21, align 1
  %24 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %25 = lshr i32 %5, 27
  %26 = trunc i32 %25 to i8
  %27 = and i8 %26, 1
  store i8 %27, i8* %24, align 1
  %28 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %28, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movslq_MINUS0x10__rbp____rsi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -16
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
define %struct.Memory* @routine_movswl_0x4b9300___rsi_2____r9d(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 19, i32 0, i32 0
  %4 = load i64, i64* %RSI, align 8
  %5 = shl i64 %4, 1
  %6 = add i64 %5, 4952832
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 9
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %6 to i16*
  %10 = load i16, i16* %9, align 2
  %11 = sext i16 %10 to i64
  %12 = and i64 %11, 4294967295
  store i64 %12, i64* %3, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__rax__MINUS0x28__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -40
  %5 = load i64, i64* %RAX, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 4
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %4 to i64*
  store i64 %5, i64* %8, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__r8d___eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0
  %R8D = bitcast %union.anon* %3 to i32*
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %4 = load i32, i32* %R8D, align 4
  %5 = zext i32 %4 to i64
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 3
  store i64 %7, i64* %PC, align 8
  store i64 %5, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__rdx__MINUS0x30__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -48
  %5 = load i64, i64* %RDX, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 4
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %4 to i64*
  store i64 %5, i64* %8, align 8
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
define %struct.Memory* @routine_movq_MINUS0x30__rbp____rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -48
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RDI, align 8
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
define %struct.Memory* @routine_movl__eax____rdi__rsi_4_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %4 = load i64, i64* %RDI, align 8
  %5 = load i64, i64* %RSI, align 8
  %6 = shl i64 %5, 2
  %7 = add i64 %6, %4
  %8 = load i32, i32* %EAX, align 4
  %9 = load i64, i64* %PC, align 8
  %10 = add i64 %9, 3
  store i64 %10, i64* %PC, align 8
  %11 = inttoptr i64 %7 to i32*
  store i32 %8, i32* %11, align 4
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
define %struct.Memory* @routine_movl___rcx__rsi_4____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = load i64, i64* %RSI, align 8
  %5 = shl i64 %4, 2
  %6 = add i64 %5, %3
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %6 to i32*
  %10 = load i32, i32* %9, align 4
  %11 = zext i32 %10 to i64
  store i64 %11, i64* %RAX, align 8
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movswl_0x4b9300___rcx_2____r8d(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0, i32 0
  %4 = load i64, i64* %RCX, align 8
  %5 = shl i64 %4, 1
  %6 = add i64 %5, 4952832
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 9
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %6 to i16*
  %10 = load i16, i16* %9, align 2
  %11 = sext i16 %10 to i64
  %12 = and i64 %11, 4294967295
  store i64 %12, i64* %3, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_imull__r8d___eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0
  %R8D = bitcast %union.anon* %3 to i32*
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %4 = load i64, i64* %RAX, align 8
  %5 = load i32, i32* %R8D, align 4
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 4
  store i64 %7, i64* %PC, align 8
  %8 = shl i64 %4, 32
  %9 = ashr exact i64 %8, 32
  %10 = sext i32 %5 to i64
  %11 = mul nsw i64 %10, %9
  %12 = trunc i64 %11 to i32
  %13 = and i64 %11, 4294967295
  store i64 %13, i64* %RAX, align 8
  %14 = shl i64 %11, 32
  %15 = ashr exact i64 %14, 32
  %16 = icmp ne i64 %15, %11
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
  %25 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %25, align 1
  %26 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %26, align 1
  %27 = lshr i32 %12, 31
  %28 = trunc i32 %27 to i8
  %29 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %28, i8* %29, align 1
  %30 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %17, i8* %30, align 1
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

; Function Attrs: nounwind
define %struct.Memory* @routine_addq__rcx___rsi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %RSI, align 8
  %4 = load i64, i64* %RCX, align 8
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
define %struct.Memory* @routine_movl__eax____rsi__rcx_4_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %4 = load i64, i64* %RSI, align 8
  %5 = load i64, i64* %RCX, align 8
  %6 = shl i64 %5, 2
  %7 = add i64 %6, %4
  %8 = load i32, i32* %EAX, align 4
  %9 = load i64, i64* %PC, align 8
  %10 = add i64 %9, 3
  store i64 %10, i64* %PC, align 8
  %11 = inttoptr i64 %7 to i32*
  store i32 %8, i32* %11, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_47ae5e(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movswl_0x6f6e20___rsi_2____r9d(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 19, i32 0, i32 0
  %4 = load i64, i64* %RSI, align 8
  %5 = shl i64 %4, 1
  %6 = add i64 %5, 7302688
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 9
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %6 to i16*
  %10 = load i16, i16* %9, align 2
  %11 = sext i16 %10 to i64
  %12 = and i64 %11, 4294967295
  store i64 %12, i64* %3, align 8
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
define %struct.Memory* @routine_movq__rdx__MINUS0x40__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -64
  %5 = load i64, i64* %RDX, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 4
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %4 to i64*
  store i64 %5, i64* %8, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_MINUS0x40__rbp____rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -64
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RDI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movswl_0x6f6e20___rcx_2____r8d(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0, i32 0
  %4 = load i64, i64* %RCX, align 8
  %5 = shl i64 %4, 1
  %6 = add i64 %5, 7302688
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 9
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %6 to i16*
  %10 = load i16, i16* %9, align 2
  %11 = sext i16 %10 to i64
  %12 = and i64 %11, 4294967295
  store i64 %12, i64* %3, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_MINUS0x38__rbp____rsi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -56
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RSI, align 8
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
define %struct.Memory* @routine_je_.L_47ae79(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movswl_0x6d1f9e___eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 8
  store i64 %4, i64* %PC, align 8
  %5 = load i16, i16* bitcast (%G_0x6d1f9e_type* @G_0x6d1f9e to i16*), align 8
  %6 = sext i16 %5 to i64
  %7 = and i64 %6, 4294967295
  store i64 %7, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_je_.L_47af54(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movswl_0x4b9280___rsi_2____r9d(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 19, i32 0, i32 0
  %4 = load i64, i64* %RSI, align 8
  %5 = shl i64 %4, 1
  %6 = add i64 %5, 4952704
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 9
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %6 to i16*
  %10 = load i16, i16* %9, align 2
  %11 = sext i16 %10 to i64
  %12 = and i64 %11, 4294967295
  store i64 %12, i64* %3, align 8
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
define %struct.Memory* @routine_movq__rdx__MINUS0x50__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -80
  %5 = load i64, i64* %RDX, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 4
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %4 to i64*
  store i64 %5, i64* %8, align 8
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
define %struct.Memory* @routine_movswl_0x4b9280___rcx_2____r8d(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0, i32 0
  %4 = load i64, i64* %RCX, align 8
  %5 = shl i64 %4, 1
  %6 = add i64 %5, 4952704
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 9
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %6 to i16*
  %10 = load i16, i16* %9, align 2
  %11 = sext i16 %10 to i64
  %12 = and i64 %11, 4294967295
  store i64 %12, i64* %3, align 8
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
define %struct.Memory* @routine_jmpq_.L_47b02a(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movswl_0x6f6ea0___rsi_2____r9d(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 19, i32 0, i32 0
  %4 = load i64, i64* %RSI, align 8
  %5 = shl i64 %4, 1
  %6 = add i64 %5, 7302816
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 9
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %6 to i16*
  %10 = load i16, i16* %9, align 2
  %11 = sext i16 %10 to i64
  %12 = and i64 %11, 4294967295
  store i64 %12, i64* %3, align 8
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__rdx__MINUS0x60__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -96
  %5 = load i64, i64* %RDX, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 4
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %4 to i64*
  store i64 %5, i64* %8, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_MINUS0x60__rbp____rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -96
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RDI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movswl_0x6f6ea0___rcx_2____r8d(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0, i32 0
  %4 = load i64, i64* %RCX, align 8
  %5 = shl i64 %4, 1
  %6 = add i64 %5, 7302816
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 9
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %6 to i16*
  %10 = load i16, i16* %9, align 2
  %11 = sext i16 %10 to i64
  %12 = and i64 %11, 4294967295
  store i64 %12, i64* %3, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_MINUS0x58__rbp____rsi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -88
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_47b02f(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_47ac7c(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_47b042(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_47ac6b(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_47b055(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_47ac5a(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_addq__0x60___rsp(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %3 = load i64, i64* %RSP, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 4
  store i64 %5, i64* %PC, align 8
  %6 = add i64 %3, 96
  store i64 %6, i64* %RSP, align 8
  %7 = icmp ugt i64 %3, -97
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
