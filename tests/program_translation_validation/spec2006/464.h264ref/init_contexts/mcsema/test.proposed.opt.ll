; ModuleID = 'mcsema/test.proposed.inline.ll'
source_filename = "llvm-link"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu-elf"

%__bss_start_type = type <{ [8 x i8] }>
%G_0x6cb900_type = type <{ [8 x i8] }>
%G__0x4b3290_type = type <{ [8 x i8] }>
%G__0x4b33a0_type = type <{ [8 x i8] }>
%G__0x4b36c0_type = type <{ [8 x i8] }>
%G__0x4b3750_type = type <{ [8 x i8] }>
%G__0x4b3900_type = type <{ [8 x i8] }>
%G__0x4b39a0_type = type <{ [8 x i8] }>
%G__0x4b3b80_type = type <{ [8 x i8] }>
%G__0x4b3be0_type = type <{ [8 x i8] }>
%G__0x4b3d00_type = type <{ [8 x i8] }>
%G__0x4b3d20_type = type <{ [8 x i8] }>
%G__0x4b3d80_type = type <{ [8 x i8] }>
%G__0x4b3da0_type = type <{ [8 x i8] }>
%G__0x4b3e00_type = type <{ [8 x i8] }>
%G__0x4b3e20_type = type <{ [8 x i8] }>
%G__0x4b3e70_type = type <{ [8 x i8] }>
%G__0x4b3e80_type = type <{ [8 x i8] }>
%G__0x4b3eb0_type = type <{ [8 x i8] }>
%G__0x4b3ed0_type = type <{ [8 x i8] }>
%G__0x4b3f30_type = type <{ [8 x i8] }>
%G__0x4b3f90_type = type <{ [8 x i8] }>
%G__0x4b40b0_type = type <{ [8 x i8] }>
%G__0x4b41b0_type = type <{ [8 x i8] }>
%G__0x4b44b0_type = type <{ [8 x i8] }>
%G__0x4b4870_type = type <{ [8 x i8] }>
%G__0x4b53b0_type = type <{ [8 x i8] }>
%G__0x4b5770_type = type <{ [8 x i8] }>
%G__0x4b62b0_type = type <{ [8 x i8] }>
%G__0x4b63f0_type = type <{ [8 x i8] }>
%G__0x4b67b0_type = type <{ [8 x i8] }>
%G__0x4b68f0_type = type <{ [8 x i8] }>
%G__0x4b6cb0_type = type <{ [8 x i8] }>
%G__0x4b7070_type = type <{ [8 x i8] }>
%G__0x4b7bb0_type = type <{ [8 x i8] }>
%G__0x4b7f70_type = type <{ [8 x i8] }>
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
@G__0x4b3290 = global %G__0x4b3290_type zeroinitializer
@G__0x4b33a0 = global %G__0x4b33a0_type zeroinitializer
@G__0x4b36c0 = global %G__0x4b36c0_type zeroinitializer
@G__0x4b3750 = global %G__0x4b3750_type zeroinitializer
@G__0x4b3900 = global %G__0x4b3900_type zeroinitializer
@G__0x4b39a0 = global %G__0x4b39a0_type zeroinitializer
@G__0x4b3b80 = global %G__0x4b3b80_type zeroinitializer
@G__0x4b3be0 = global %G__0x4b3be0_type zeroinitializer
@G__0x4b3d00 = global %G__0x4b3d00_type zeroinitializer
@G__0x4b3d20 = global %G__0x4b3d20_type zeroinitializer
@G__0x4b3d80 = global %G__0x4b3d80_type zeroinitializer
@G__0x4b3da0 = global %G__0x4b3da0_type zeroinitializer
@G__0x4b3e00 = global %G__0x4b3e00_type zeroinitializer
@G__0x4b3e20 = global %G__0x4b3e20_type zeroinitializer
@G__0x4b3e70 = global %G__0x4b3e70_type zeroinitializer
@G__0x4b3e80 = global %G__0x4b3e80_type zeroinitializer
@G__0x4b3eb0 = global %G__0x4b3eb0_type zeroinitializer
@G__0x4b3ed0 = global %G__0x4b3ed0_type zeroinitializer
@G__0x4b3f30 = global %G__0x4b3f30_type zeroinitializer
@G__0x4b3f90 = global %G__0x4b3f90_type zeroinitializer
@G__0x4b40b0 = global %G__0x4b40b0_type zeroinitializer
@G__0x4b41b0 = global %G__0x4b41b0_type zeroinitializer
@G__0x4b44b0 = global %G__0x4b44b0_type zeroinitializer
@G__0x4b4870 = global %G__0x4b4870_type zeroinitializer
@G__0x4b53b0 = global %G__0x4b53b0_type zeroinitializer
@G__0x4b5770 = global %G__0x4b5770_type zeroinitializer
@G__0x4b62b0 = global %G__0x4b62b0_type zeroinitializer
@G__0x4b63f0 = global %G__0x4b63f0_type zeroinitializer
@G__0x4b67b0 = global %G__0x4b67b0_type zeroinitializer
@G__0x4b68f0 = global %G__0x4b68f0_type zeroinitializer
@G__0x4b6cb0 = global %G__0x4b6cb0_type zeroinitializer
@G__0x4b7070 = global %G__0x4b7070_type zeroinitializer
@G__0x4b7bb0 = global %G__0x4b7bb0_type zeroinitializer
@G__0x4b7f70 = global %G__0x4b7f70_type zeroinitializer

; Function Attrs: nounwind readnone
declare i32 @llvm.ctpop.i32(i32) #0

declare %struct.Memory* @sub_402490.biari_init_context(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

; Function Attrs: alwaysinline
define %struct.Memory* @init_contexts(%struct.State* noalias, i64, %struct.Memory* noalias readnone) local_unnamed_addr #1 {
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
  %11 = add i64 %7, -40
  store i64 %11, i64* %6, align 8
  %12 = icmp ult i64 %8, 32
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
  %RAX.i2255 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %39 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*), align 8
  store i64 %39, i64* %RAX.i2255, align 8
  %40 = add i64 %39, 14160
  %41 = add i64 %10, 22
  store i64 %41, i64* %3, align 8
  %42 = inttoptr i64 %40 to i64*
  %43 = load i64, i64* %42, align 8
  store i64 %43, i64* %RAX.i2255, align 8
  %44 = add i64 %43, 32
  %45 = add i64 %10, 26
  store i64 %45, i64* %3, align 8
  %46 = inttoptr i64 %44 to i64*
  %47 = load i64, i64* %46, align 8
  %48 = add i64 %7, -16
  %49 = add i64 %10, 30
  store i64 %49, i64* %3, align 8
  %50 = inttoptr i64 %48 to i64*
  store i64 %47, i64* %50, align 8
  %51 = load i64, i64* %3, align 8
  %52 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*), align 8
  store i64 %52, i64* %RAX.i2255, align 8
  %53 = add i64 %52, 14160
  %54 = add i64 %51, 15
  store i64 %54, i64* %3, align 8
  %55 = inttoptr i64 %53 to i64*
  %56 = load i64, i64* %55, align 8
  store i64 %56, i64* %RAX.i2255, align 8
  %57 = add i64 %56, 40
  %58 = add i64 %51, 19
  store i64 %58, i64* %3, align 8
  %59 = inttoptr i64 %57 to i64*
  %60 = load i64, i64* %59, align 8
  store i64 %60, i64* %RAX.i2255, align 8
  %61 = load i64, i64* %RBP.i, align 8
  %62 = add i64 %61, -16
  %63 = add i64 %51, 23
  store i64 %63, i64* %3, align 8
  %64 = inttoptr i64 %62 to i64*
  store i64 %60, i64* %64, align 8
  %65 = load i64, i64* %RBP.i, align 8
  %66 = add i64 %65, -20
  %67 = load i64, i64* %3, align 8
  %68 = add i64 %67, 7
  store i64 %68, i64* %3, align 8
  %69 = inttoptr i64 %66 to i32*
  store i32 0, i32* %69, align 4
  %RCX.i2165 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RDX.i2162 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RDI.i2122 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %RSI.i2119 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %.pre = load i64, i64* %3, align 8
  br label %block_.L_417d7d

block_.L_417d7d:                                  ; preds = %block_.L_417e84, %entry
  %70 = phi i64 [ %.pre, %entry ], [ %574, %block_.L_417e84 ]
  %71 = load i64, i64* %RBP.i, align 8
  %72 = add i64 %71, -20
  %73 = add i64 %70, 4
  store i64 %73, i64* %3, align 8
  %74 = inttoptr i64 %72 to i32*
  %75 = load i32, i32* %74, align 4
  %76 = add i32 %75, -3
  %77 = icmp ult i32 %75, 3
  %78 = zext i1 %77 to i8
  store i8 %78, i8* %14, align 1
  %79 = and i32 %76, 255
  %80 = tail call i32 @llvm.ctpop.i32(i32 %79)
  %81 = trunc i32 %80 to i8
  %82 = and i8 %81, 1
  %83 = xor i8 %82, 1
  store i8 %83, i8* %21, align 1
  %84 = xor i32 %76, %75
  %85 = lshr i32 %84, 4
  %86 = trunc i32 %85 to i8
  %87 = and i8 %86, 1
  store i8 %87, i8* %26, align 1
  %88 = icmp eq i32 %76, 0
  %89 = zext i1 %88 to i8
  store i8 %89, i8* %29, align 1
  %90 = lshr i32 %76, 31
  %91 = trunc i32 %90 to i8
  store i8 %91, i8* %32, align 1
  %92 = lshr i32 %75, 31
  %93 = xor i32 %90, %92
  %94 = add nuw nsw i32 %93, %92
  %95 = icmp eq i32 %94, 2
  %96 = zext i1 %95 to i8
  store i8 %96, i8* %38, align 1
  %97 = icmp ne i8 %91, 0
  %98 = xor i1 %97, %95
  %.v262 = select i1 %98, i64 10, i64 282
  %99 = add i64 %70, %.v262
  store i64 %99, i64* %3, align 8
  br i1 %98, label %block_417d87, label %block_.L_417e97

block_417d87:                                     ; preds = %block_.L_417d7d
  %100 = add i64 %71, -24
  %101 = add i64 %99, 7
  store i64 %101, i64* %3, align 8
  %102 = inttoptr i64 %100 to i32*
  store i32 0, i32* %102, align 4
  %.pre248 = load i64, i64* %3, align 8
  br label %block_.L_417d8e

block_.L_417d8e:                                  ; preds = %block_.L_417e71, %block_417d87
  %103 = phi i64 [ %.pre248, %block_417d87 ], [ %544, %block_.L_417e71 ]
  %104 = load i64, i64* %RBP.i, align 8
  %105 = add i64 %104, -24
  %106 = add i64 %103, 4
  store i64 %106, i64* %3, align 8
  %107 = inttoptr i64 %105 to i32*
  %108 = load i32, i32* %107, align 4
  %109 = add i32 %108, -11
  %110 = icmp ult i32 %108, 11
  %111 = zext i1 %110 to i8
  store i8 %111, i8* %14, align 1
  %112 = and i32 %109, 255
  %113 = tail call i32 @llvm.ctpop.i32(i32 %112)
  %114 = trunc i32 %113 to i8
  %115 = and i8 %114, 1
  %116 = xor i8 %115, 1
  store i8 %116, i8* %21, align 1
  %117 = xor i32 %109, %108
  %118 = lshr i32 %117, 4
  %119 = trunc i32 %118 to i8
  %120 = and i8 %119, 1
  store i8 %120, i8* %26, align 1
  %121 = icmp eq i32 %109, 0
  %122 = zext i1 %121 to i8
  store i8 %122, i8* %29, align 1
  %123 = lshr i32 %109, 31
  %124 = trunc i32 %123 to i8
  store i8 %124, i8* %32, align 1
  %125 = lshr i32 %108, 31
  %126 = xor i32 %123, %125
  %127 = add nuw nsw i32 %126, %125
  %128 = icmp eq i32 %127, 2
  %129 = zext i1 %128 to i8
  store i8 %129, i8* %38, align 1
  %130 = icmp ne i8 %124, 0
  %131 = xor i1 %130, %128
  %.v261 = select i1 %131, i64 10, i64 246
  %132 = add i64 %103, %.v261
  store i64 %132, i64* %3, align 8
  br i1 %131, label %block_417d98, label %block_.L_417e84

block_417d98:                                     ; preds = %block_.L_417d8e
  %133 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*), align 8
  store i64 %133, i64* %RAX.i2255, align 8
  %134 = add i64 %133, 24
  %135 = add i64 %132, 12
  store i64 %135, i64* %3, align 8
  %136 = inttoptr i64 %134 to i32*
  %137 = load i32, i32* %136, align 4
  %138 = add i32 %137, -2
  %139 = icmp ult i32 %137, 2
  %140 = zext i1 %139 to i8
  store i8 %140, i8* %14, align 1
  %141 = and i32 %138, 255
  %142 = tail call i32 @llvm.ctpop.i32(i32 %141)
  %143 = trunc i32 %142 to i8
  %144 = and i8 %143, 1
  %145 = xor i8 %144, 1
  store i8 %145, i8* %21, align 1
  %146 = xor i32 %138, %137
  %147 = lshr i32 %146, 4
  %148 = trunc i32 %147 to i8
  %149 = and i8 %148, 1
  store i8 %149, i8* %26, align 1
  %150 = icmp eq i32 %138, 0
  %151 = zext i1 %150 to i8
  store i8 %151, i8* %29, align 1
  %152 = lshr i32 %138, 31
  %153 = trunc i32 %152 to i8
  store i8 %153, i8* %32, align 1
  %154 = lshr i32 %137, 31
  %155 = xor i32 %152, %154
  %156 = add nuw nsw i32 %155, %154
  %157 = icmp eq i32 %156, 2
  %158 = zext i1 %157 to i8
  store i8 %158, i8* %38, align 1
  %.v294 = select i1 %150, i64 18, i64 120
  %159 = add i64 %132, %.v294
  %160 = add i64 %159, 10
  store i64 %160, i64* %3, align 8
  br i1 %150, label %block_417daa, label %block_.L_417e10

block_417daa:                                     ; preds = %block_417d98
  store i64 ptrtoint (%G__0x4b3290_type* @G__0x4b3290 to i64), i64* %RAX.i2255, align 8
  %161 = add i64 %104, -8
  %162 = add i64 %159, 14
  store i64 %162, i64* %3, align 8
  %163 = inttoptr i64 %161 to i64*
  %164 = load i64, i64* %163, align 8
  store i64 %164, i64* %RCX.i2165, align 8
  %165 = add i64 %104, -20
  %166 = add i64 %159, 18
  store i64 %166, i64* %3, align 8
  %167 = inttoptr i64 %165 to i32*
  %168 = load i32, i32* %167, align 4
  %169 = sext i32 %168 to i64
  %170 = mul nsw i64 %169, 176
  store i64 %170, i64* %RDX.i2162, align 8
  %171 = lshr i64 %170, 63
  %172 = add i64 %170, %164
  store i64 %172, i64* %RCX.i2165, align 8
  %173 = icmp ult i64 %172, %164
  %174 = icmp ult i64 %172, %170
  %175 = or i1 %173, %174
  %176 = zext i1 %175 to i8
  store i8 %176, i8* %14, align 1
  %177 = trunc i64 %172 to i32
  %178 = and i32 %177, 255
  %179 = tail call i32 @llvm.ctpop.i32(i32 %178)
  %180 = trunc i32 %179 to i8
  %181 = and i8 %180, 1
  %182 = xor i8 %181, 1
  store i8 %182, i8* %21, align 1
  %183 = xor i64 %170, %164
  %184 = xor i64 %183, %172
  %185 = lshr i64 %184, 4
  %186 = trunc i64 %185 to i8
  %187 = and i8 %186, 1
  store i8 %187, i8* %26, align 1
  %188 = icmp eq i64 %172, 0
  %189 = zext i1 %188 to i8
  store i8 %189, i8* %29, align 1
  %190 = lshr i64 %172, 63
  %191 = trunc i64 %190 to i8
  store i8 %191, i8* %32, align 1
  %192 = lshr i64 %164, 63
  %193 = xor i64 %190, %192
  %194 = xor i64 %190, %171
  %195 = add nuw nsw i64 %193, %194
  %196 = icmp eq i64 %195, 2
  %197 = zext i1 %196 to i8
  store i8 %197, i8* %38, align 1
  %198 = add i64 %159, 32
  store i64 %198, i64* %3, align 8
  %199 = load i32, i32* %107, align 4
  %200 = sext i32 %199 to i64
  %201 = shl nsw i64 %200, 4
  %202 = add i64 %201, %172
  store i64 %202, i64* %RCX.i2165, align 8
  %203 = icmp ult i64 %202, %172
  %204 = icmp ult i64 %202, %201
  %205 = or i1 %203, %204
  %206 = zext i1 %205 to i8
  store i8 %206, i8* %14, align 1
  %207 = trunc i64 %202 to i32
  %208 = and i32 %207, 255
  %209 = tail call i32 @llvm.ctpop.i32(i32 %208)
  %210 = trunc i32 %209 to i8
  %211 = and i8 %210, 1
  %212 = xor i8 %211, 1
  store i8 %212, i8* %21, align 1
  %213 = xor i64 %201, %172
  %214 = xor i64 %213, %202
  %215 = lshr i64 %214, 4
  %216 = trunc i64 %215 to i8
  %217 = and i8 %216, 1
  store i8 %217, i8* %26, align 1
  %218 = icmp eq i64 %202, 0
  %219 = zext i1 %218 to i8
  store i8 %219, i8* %29, align 1
  %220 = lshr i64 %202, 63
  %221 = trunc i64 %220 to i8
  store i8 %221, i8* %32, align 1
  %222 = lshr i64 %200, 59
  %223 = and i64 %222, 1
  %224 = xor i64 %220, %190
  %225 = xor i64 %220, %223
  %226 = add nuw nsw i64 %224, %225
  %227 = icmp eq i64 %226, 2
  %228 = zext i1 %227 to i8
  store i8 %228, i8* %38, align 1
  %229 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*), align 8
  store i64 %229, i64* %RDX.i2162, align 8
  %230 = add i64 %229, 72520
  %231 = add i64 %159, 54
  store i64 %231, i64* %3, align 8
  %232 = inttoptr i64 %230 to i32*
  %233 = load i32, i32* %232, align 4
  %234 = sext i32 %233 to i64
  %235 = mul nsw i64 %234, 264
  store i64 %235, i64* %RDX.i2162, align 8
  %236 = lshr i64 %235, 63
  %237 = load i64, i64* %RAX.i2255, align 8
  %238 = add i64 %235, %237
  store i64 %238, i64* %RAX.i2255, align 8
  %239 = icmp ult i64 %238, %237
  %240 = icmp ult i64 %238, %235
  %241 = or i1 %239, %240
  %242 = zext i1 %241 to i8
  store i8 %242, i8* %14, align 1
  %243 = trunc i64 %238 to i32
  %244 = and i32 %243, 255
  %245 = tail call i32 @llvm.ctpop.i32(i32 %244)
  %246 = trunc i32 %245 to i8
  %247 = and i8 %246, 1
  %248 = xor i8 %247, 1
  store i8 %248, i8* %21, align 1
  %249 = xor i64 %235, %237
  %250 = xor i64 %249, %238
  %251 = lshr i64 %250, 4
  %252 = trunc i64 %251 to i8
  %253 = and i8 %252, 1
  store i8 %253, i8* %26, align 1
  %254 = icmp eq i64 %238, 0
  %255 = zext i1 %254 to i8
  store i8 %255, i8* %29, align 1
  %256 = lshr i64 %238, 63
  %257 = trunc i64 %256 to i8
  store i8 %257, i8* %32, align 1
  %258 = lshr i64 %237, 63
  %259 = xor i64 %256, %258
  %260 = xor i64 %256, %236
  %261 = add nuw nsw i64 %259, %260
  %262 = icmp eq i64 %261, 2
  %263 = zext i1 %262 to i8
  store i8 %263, i8* %38, align 1
  %264 = load i64, i64* %RBP.i, align 8
  %265 = add i64 %264, -20
  %266 = add i64 %159, 68
  store i64 %266, i64* %3, align 8
  %267 = inttoptr i64 %265 to i32*
  %268 = load i32, i32* %267, align 4
  %269 = sext i32 %268 to i64
  %270 = mul nsw i64 %269, 88
  store i64 %270, i64* %RDX.i2162, align 8
  %271 = lshr i64 %270, 63
  %272 = add i64 %270, %238
  store i64 %272, i64* %RAX.i2255, align 8
  %273 = icmp ult i64 %272, %238
  %274 = icmp ult i64 %272, %270
  %275 = or i1 %273, %274
  %276 = zext i1 %275 to i8
  store i8 %276, i8* %14, align 1
  %277 = trunc i64 %272 to i32
  %278 = and i32 %277, 255
  %279 = tail call i32 @llvm.ctpop.i32(i32 %278)
  %280 = trunc i32 %279 to i8
  %281 = and i8 %280, 1
  %282 = xor i8 %281, 1
  store i8 %282, i8* %21, align 1
  %283 = xor i64 %270, %238
  %284 = xor i64 %283, %272
  %285 = lshr i64 %284, 4
  %286 = trunc i64 %285 to i8
  %287 = and i8 %286, 1
  store i8 %287, i8* %26, align 1
  %288 = icmp eq i64 %272, 0
  %289 = zext i1 %288 to i8
  store i8 %289, i8* %29, align 1
  %290 = lshr i64 %272, 63
  %291 = trunc i64 %290 to i8
  store i8 %291, i8* %32, align 1
  %292 = xor i64 %290, %256
  %293 = xor i64 %290, %271
  %294 = add nuw nsw i64 %292, %293
  %295 = icmp eq i64 %294, 2
  %296 = zext i1 %295 to i8
  store i8 %296, i8* %38, align 1
  %297 = add i64 %264, -24
  %298 = add i64 %159, 79
  store i64 %298, i64* %3, align 8
  %299 = inttoptr i64 %297 to i32*
  %300 = load i32, i32* %299, align 4
  %301 = sext i32 %300 to i64
  %302 = shl nsw i64 %301, 3
  store i64 %302, i64* %RDX.i2162, align 8
  %303 = add i64 %302, %272
  store i64 %303, i64* %RAX.i2255, align 8
  %304 = icmp ult i64 %303, %272
  %305 = icmp ult i64 %303, %302
  %306 = or i1 %304, %305
  %307 = zext i1 %306 to i8
  store i8 %307, i8* %14, align 1
  %308 = trunc i64 %303 to i32
  %309 = and i32 %308, 255
  %310 = tail call i32 @llvm.ctpop.i32(i32 %309)
  %311 = trunc i32 %310 to i8
  %312 = and i8 %311, 1
  %313 = xor i8 %312, 1
  store i8 %313, i8* %21, align 1
  %314 = xor i64 %302, %272
  %315 = xor i64 %314, %303
  %316 = lshr i64 %315, 4
  %317 = trunc i64 %316 to i8
  %318 = and i8 %317, 1
  store i8 %318, i8* %26, align 1
  %319 = icmp eq i64 %303, 0
  %320 = zext i1 %319 to i8
  store i8 %320, i8* %29, align 1
  %321 = lshr i64 %303, 63
  %322 = trunc i64 %321 to i8
  store i8 %322, i8* %32, align 1
  %323 = lshr i64 %301, 60
  %324 = and i64 %323, 1
  %325 = xor i64 %321, %290
  %326 = xor i64 %321, %324
  %327 = add nuw nsw i64 %325, %326
  %328 = icmp eq i64 %327, 2
  %329 = zext i1 %328 to i8
  store i8 %329, i8* %38, align 1
  %330 = load i64, i64* %RCX.i2165, align 8
  store i64 %330, i64* %RDI.i2122, align 8
  store i64 %303, i64* %RSI.i2119, align 8
  %331 = add i64 %159, -88346
  %332 = add i64 %159, 97
  %333 = load i64, i64* %6, align 8
  %334 = add i64 %333, -8
  %335 = inttoptr i64 %334 to i64*
  store i64 %332, i64* %335, align 8
  store i64 %334, i64* %6, align 8
  store i64 %331, i64* %3, align 8
  %call2_417e06 = tail call %struct.Memory* @sub_402490.biari_init_context(%struct.State* nonnull %0, i64 %331, %struct.Memory* %2)
  %336 = load i64, i64* %3, align 8
  %337 = add i64 %336, 102
  store i64 %337, i64* %3, align 8
  br label %block_.L_417e71

block_.L_417e10:                                  ; preds = %block_417d98
  store i64 ptrtoint (%G__0x4b33a0_type* @G__0x4b33a0 to i64), i64* %RAX.i2255, align 8
  %338 = add i64 %104, -8
  %339 = add i64 %159, 14
  store i64 %339, i64* %3, align 8
  %340 = inttoptr i64 %338 to i64*
  %341 = load i64, i64* %340, align 8
  store i64 %341, i64* %RCX.i2165, align 8
  %342 = add i64 %104, -20
  %343 = add i64 %159, 18
  store i64 %343, i64* %3, align 8
  %344 = inttoptr i64 %342 to i32*
  %345 = load i32, i32* %344, align 4
  %346 = sext i32 %345 to i64
  %347 = mul nsw i64 %346, 176
  store i64 %347, i64* %RDX.i2162, align 8
  %348 = lshr i64 %347, 63
  %349 = add i64 %347, %341
  store i64 %349, i64* %RCX.i2165, align 8
  %350 = icmp ult i64 %349, %341
  %351 = icmp ult i64 %349, %347
  %352 = or i1 %350, %351
  %353 = zext i1 %352 to i8
  store i8 %353, i8* %14, align 1
  %354 = trunc i64 %349 to i32
  %355 = and i32 %354, 255
  %356 = tail call i32 @llvm.ctpop.i32(i32 %355)
  %357 = trunc i32 %356 to i8
  %358 = and i8 %357, 1
  %359 = xor i8 %358, 1
  store i8 %359, i8* %21, align 1
  %360 = xor i64 %347, %341
  %361 = xor i64 %360, %349
  %362 = lshr i64 %361, 4
  %363 = trunc i64 %362 to i8
  %364 = and i8 %363, 1
  store i8 %364, i8* %26, align 1
  %365 = icmp eq i64 %349, 0
  %366 = zext i1 %365 to i8
  store i8 %366, i8* %29, align 1
  %367 = lshr i64 %349, 63
  %368 = trunc i64 %367 to i8
  store i8 %368, i8* %32, align 1
  %369 = lshr i64 %341, 63
  %370 = xor i64 %367, %369
  %371 = xor i64 %367, %348
  %372 = add nuw nsw i64 %370, %371
  %373 = icmp eq i64 %372, 2
  %374 = zext i1 %373 to i8
  store i8 %374, i8* %38, align 1
  %375 = add i64 %159, 32
  store i64 %375, i64* %3, align 8
  %376 = load i32, i32* %107, align 4
  %377 = sext i32 %376 to i64
  %378 = shl nsw i64 %377, 4
  %379 = add i64 %378, %349
  store i64 %379, i64* %RCX.i2165, align 8
  %380 = icmp ult i64 %379, %349
  %381 = icmp ult i64 %379, %378
  %382 = or i1 %380, %381
  %383 = zext i1 %382 to i8
  store i8 %383, i8* %14, align 1
  %384 = trunc i64 %379 to i32
  %385 = and i32 %384, 255
  %386 = tail call i32 @llvm.ctpop.i32(i32 %385)
  %387 = trunc i32 %386 to i8
  %388 = and i8 %387, 1
  %389 = xor i8 %388, 1
  store i8 %389, i8* %21, align 1
  %390 = xor i64 %378, %349
  %391 = xor i64 %390, %379
  %392 = lshr i64 %391, 4
  %393 = trunc i64 %392 to i8
  %394 = and i8 %393, 1
  store i8 %394, i8* %26, align 1
  %395 = icmp eq i64 %379, 0
  %396 = zext i1 %395 to i8
  store i8 %396, i8* %29, align 1
  %397 = lshr i64 %379, 63
  %398 = trunc i64 %397 to i8
  store i8 %398, i8* %32, align 1
  %399 = lshr i64 %377, 59
  %400 = and i64 %399, 1
  %401 = xor i64 %397, %367
  %402 = xor i64 %397, %400
  %403 = add nuw nsw i64 %401, %402
  %404 = icmp eq i64 %403, 2
  %405 = zext i1 %404 to i8
  store i8 %405, i8* %38, align 1
  %406 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*), align 8
  store i64 %406, i64* %RDX.i2162, align 8
  %407 = add i64 %406, 72520
  %408 = add i64 %159, 54
  store i64 %408, i64* %3, align 8
  %409 = inttoptr i64 %407 to i32*
  %410 = load i32, i32* %409, align 4
  %411 = sext i32 %410 to i64
  %412 = mul nsw i64 %411, 264
  store i64 %412, i64* %RDX.i2162, align 8
  %413 = lshr i64 %412, 63
  %414 = load i64, i64* %RAX.i2255, align 8
  %415 = add i64 %412, %414
  store i64 %415, i64* %RAX.i2255, align 8
  %416 = icmp ult i64 %415, %414
  %417 = icmp ult i64 %415, %412
  %418 = or i1 %416, %417
  %419 = zext i1 %418 to i8
  store i8 %419, i8* %14, align 1
  %420 = trunc i64 %415 to i32
  %421 = and i32 %420, 255
  %422 = tail call i32 @llvm.ctpop.i32(i32 %421)
  %423 = trunc i32 %422 to i8
  %424 = and i8 %423, 1
  %425 = xor i8 %424, 1
  store i8 %425, i8* %21, align 1
  %426 = xor i64 %412, %414
  %427 = xor i64 %426, %415
  %428 = lshr i64 %427, 4
  %429 = trunc i64 %428 to i8
  %430 = and i8 %429, 1
  store i8 %430, i8* %26, align 1
  %431 = icmp eq i64 %415, 0
  %432 = zext i1 %431 to i8
  store i8 %432, i8* %29, align 1
  %433 = lshr i64 %415, 63
  %434 = trunc i64 %433 to i8
  store i8 %434, i8* %32, align 1
  %435 = lshr i64 %414, 63
  %436 = xor i64 %433, %435
  %437 = xor i64 %433, %413
  %438 = add nuw nsw i64 %436, %437
  %439 = icmp eq i64 %438, 2
  %440 = zext i1 %439 to i8
  store i8 %440, i8* %38, align 1
  %441 = load i64, i64* %RBP.i, align 8
  %442 = add i64 %441, -20
  %443 = add i64 %159, 68
  store i64 %443, i64* %3, align 8
  %444 = inttoptr i64 %442 to i32*
  %445 = load i32, i32* %444, align 4
  %446 = sext i32 %445 to i64
  %447 = mul nsw i64 %446, 88
  store i64 %447, i64* %RDX.i2162, align 8
  %448 = lshr i64 %447, 63
  %449 = add i64 %447, %415
  store i64 %449, i64* %RAX.i2255, align 8
  %450 = icmp ult i64 %449, %415
  %451 = icmp ult i64 %449, %447
  %452 = or i1 %450, %451
  %453 = zext i1 %452 to i8
  store i8 %453, i8* %14, align 1
  %454 = trunc i64 %449 to i32
  %455 = and i32 %454, 255
  %456 = tail call i32 @llvm.ctpop.i32(i32 %455)
  %457 = trunc i32 %456 to i8
  %458 = and i8 %457, 1
  %459 = xor i8 %458, 1
  store i8 %459, i8* %21, align 1
  %460 = xor i64 %447, %415
  %461 = xor i64 %460, %449
  %462 = lshr i64 %461, 4
  %463 = trunc i64 %462 to i8
  %464 = and i8 %463, 1
  store i8 %464, i8* %26, align 1
  %465 = icmp eq i64 %449, 0
  %466 = zext i1 %465 to i8
  store i8 %466, i8* %29, align 1
  %467 = lshr i64 %449, 63
  %468 = trunc i64 %467 to i8
  store i8 %468, i8* %32, align 1
  %469 = xor i64 %467, %433
  %470 = xor i64 %467, %448
  %471 = add nuw nsw i64 %469, %470
  %472 = icmp eq i64 %471, 2
  %473 = zext i1 %472 to i8
  store i8 %473, i8* %38, align 1
  %474 = add i64 %441, -24
  %475 = add i64 %159, 79
  store i64 %475, i64* %3, align 8
  %476 = inttoptr i64 %474 to i32*
  %477 = load i32, i32* %476, align 4
  %478 = sext i32 %477 to i64
  %479 = shl nsw i64 %478, 3
  store i64 %479, i64* %RDX.i2162, align 8
  %480 = add i64 %479, %449
  store i64 %480, i64* %RAX.i2255, align 8
  %481 = icmp ult i64 %480, %449
  %482 = icmp ult i64 %480, %479
  %483 = or i1 %481, %482
  %484 = zext i1 %483 to i8
  store i8 %484, i8* %14, align 1
  %485 = trunc i64 %480 to i32
  %486 = and i32 %485, 255
  %487 = tail call i32 @llvm.ctpop.i32(i32 %486)
  %488 = trunc i32 %487 to i8
  %489 = and i8 %488, 1
  %490 = xor i8 %489, 1
  store i8 %490, i8* %21, align 1
  %491 = xor i64 %479, %449
  %492 = xor i64 %491, %480
  %493 = lshr i64 %492, 4
  %494 = trunc i64 %493 to i8
  %495 = and i8 %494, 1
  store i8 %495, i8* %26, align 1
  %496 = icmp eq i64 %480, 0
  %497 = zext i1 %496 to i8
  store i8 %497, i8* %29, align 1
  %498 = lshr i64 %480, 63
  %499 = trunc i64 %498 to i8
  store i8 %499, i8* %32, align 1
  %500 = lshr i64 %478, 60
  %501 = and i64 %500, 1
  %502 = xor i64 %498, %467
  %503 = xor i64 %498, %501
  %504 = add nuw nsw i64 %502, %503
  %505 = icmp eq i64 %504, 2
  %506 = zext i1 %505 to i8
  store i8 %506, i8* %38, align 1
  %507 = load i64, i64* %RCX.i2165, align 8
  store i64 %507, i64* %RDI.i2122, align 8
  store i64 %480, i64* %RSI.i2119, align 8
  %508 = add i64 %159, -88448
  %509 = add i64 %159, 97
  %510 = load i64, i64* %6, align 8
  %511 = add i64 %510, -8
  %512 = inttoptr i64 %511 to i64*
  store i64 %509, i64* %512, align 8
  store i64 %511, i64* %6, align 8
  store i64 %508, i64* %3, align 8
  %call2_417e6c = tail call %struct.Memory* @sub_402490.biari_init_context(%struct.State* nonnull %0, i64 %508, %struct.Memory* %2)
  %.pre249 = load i64, i64* %3, align 8
  br label %block_.L_417e71

block_.L_417e71:                                  ; preds = %block_.L_417e10, %block_417daa
  %513 = phi i64 [ %.pre249, %block_.L_417e10 ], [ %337, %block_417daa ]
  %514 = load i64, i64* %RBP.i, align 8
  %515 = add i64 %514, -24
  %516 = add i64 %513, 8
  store i64 %516, i64* %3, align 8
  %517 = inttoptr i64 %515 to i32*
  %518 = load i32, i32* %517, align 4
  %519 = add i32 %518, 1
  %520 = zext i32 %519 to i64
  store i64 %520, i64* %RAX.i2255, align 8
  %521 = icmp eq i32 %518, -1
  %522 = icmp eq i32 %519, 0
  %523 = or i1 %521, %522
  %524 = zext i1 %523 to i8
  store i8 %524, i8* %14, align 1
  %525 = and i32 %519, 255
  %526 = tail call i32 @llvm.ctpop.i32(i32 %525)
  %527 = trunc i32 %526 to i8
  %528 = and i8 %527, 1
  %529 = xor i8 %528, 1
  store i8 %529, i8* %21, align 1
  %530 = xor i32 %519, %518
  %531 = lshr i32 %530, 4
  %532 = trunc i32 %531 to i8
  %533 = and i8 %532, 1
  store i8 %533, i8* %26, align 1
  %534 = zext i1 %522 to i8
  store i8 %534, i8* %29, align 1
  %535 = lshr i32 %519, 31
  %536 = trunc i32 %535 to i8
  store i8 %536, i8* %32, align 1
  %537 = lshr i32 %518, 31
  %538 = xor i32 %535, %537
  %539 = add nuw nsw i32 %538, %535
  %540 = icmp eq i32 %539, 2
  %541 = zext i1 %540 to i8
  store i8 %541, i8* %38, align 1
  %542 = add i64 %513, 14
  store i64 %542, i64* %3, align 8
  store i32 %519, i32* %517, align 4
  %543 = load i64, i64* %3, align 8
  %544 = add i64 %543, -241
  store i64 %544, i64* %3, align 8
  br label %block_.L_417d8e

block_.L_417e84:                                  ; preds = %block_.L_417d8e
  %545 = add i64 %104, -20
  %546 = add i64 %132, 8
  store i64 %546, i64* %3, align 8
  %547 = inttoptr i64 %545 to i32*
  %548 = load i32, i32* %547, align 4
  %549 = add i32 %548, 1
  %550 = zext i32 %549 to i64
  store i64 %550, i64* %RAX.i2255, align 8
  %551 = icmp eq i32 %548, -1
  %552 = icmp eq i32 %549, 0
  %553 = or i1 %551, %552
  %554 = zext i1 %553 to i8
  store i8 %554, i8* %14, align 1
  %555 = and i32 %549, 255
  %556 = tail call i32 @llvm.ctpop.i32(i32 %555)
  %557 = trunc i32 %556 to i8
  %558 = and i8 %557, 1
  %559 = xor i8 %558, 1
  store i8 %559, i8* %21, align 1
  %560 = xor i32 %549, %548
  %561 = lshr i32 %560, 4
  %562 = trunc i32 %561 to i8
  %563 = and i8 %562, 1
  store i8 %563, i8* %26, align 1
  %564 = zext i1 %552 to i8
  store i8 %564, i8* %29, align 1
  %565 = lshr i32 %549, 31
  %566 = trunc i32 %565 to i8
  store i8 %566, i8* %32, align 1
  %567 = lshr i32 %548, 31
  %568 = xor i32 %565, %567
  %569 = add nuw nsw i32 %568, %565
  %570 = icmp eq i32 %569, 2
  %571 = zext i1 %570 to i8
  store i8 %571, i8* %38, align 1
  %572 = add i64 %132, 14
  store i64 %572, i64* %3, align 8
  store i32 %549, i32* %547, align 4
  %573 = load i64, i64* %3, align 8
  %574 = add i64 %573, -277
  store i64 %574, i64* %3, align 8
  br label %block_.L_417d7d

block_.L_417e97:                                  ; preds = %block_.L_417d7d
  %575 = add i64 %99, 7
  store i64 %575, i64* %3, align 8
  store i32 0, i32* %74, align 4
  %.pre205 = load i64, i64* %3, align 8
  br label %block_.L_417e9e

block_.L_417e9e:                                  ; preds = %block_.L_417fb3, %block_.L_417e97
  %576 = phi i64 [ %.pre205, %block_.L_417e97 ], [ %1130, %block_.L_417fb3 ]
  %577 = load i64, i64* %RBP.i, align 8
  %578 = add i64 %577, -20
  %579 = add i64 %576, 4
  store i64 %579, i64* %3, align 8
  %580 = inttoptr i64 %578 to i32*
  %581 = load i32, i32* %580, align 4
  %582 = add i32 %581, -2
  %583 = icmp ult i32 %581, 2
  %584 = zext i1 %583 to i8
  store i8 %584, i8* %14, align 1
  %585 = and i32 %582, 255
  %586 = tail call i32 @llvm.ctpop.i32(i32 %585)
  %587 = trunc i32 %586 to i8
  %588 = and i8 %587, 1
  %589 = xor i8 %588, 1
  store i8 %589, i8* %21, align 1
  %590 = xor i32 %582, %581
  %591 = lshr i32 %590, 4
  %592 = trunc i32 %591 to i8
  %593 = and i8 %592, 1
  store i8 %593, i8* %26, align 1
  %594 = icmp eq i32 %582, 0
  %595 = zext i1 %594 to i8
  store i8 %595, i8* %29, align 1
  %596 = lshr i32 %582, 31
  %597 = trunc i32 %596 to i8
  store i8 %597, i8* %32, align 1
  %598 = lshr i32 %581, 31
  %599 = xor i32 %596, %598
  %600 = add nuw nsw i32 %599, %598
  %601 = icmp eq i32 %600, 2
  %602 = zext i1 %601 to i8
  store i8 %602, i8* %38, align 1
  %603 = icmp ne i8 %597, 0
  %604 = xor i1 %603, %601
  %.v263 = select i1 %604, i64 10, i64 296
  %605 = add i64 %576, %.v263
  store i64 %605, i64* %3, align 8
  br i1 %604, label %block_417ea8, label %block_.L_417fc6

block_417ea8:                                     ; preds = %block_.L_417e9e
  %606 = add i64 %577, -24
  %607 = add i64 %605, 7
  store i64 %607, i64* %3, align 8
  %608 = inttoptr i64 %606 to i32*
  store i32 0, i32* %608, align 4
  %.pre246 = load i64, i64* %3, align 8
  br label %block_.L_417eaf

block_.L_417eaf:                                  ; preds = %block_.L_417fa0, %block_417ea8
  %609 = phi i64 [ %.pre246, %block_417ea8 ], [ %1100, %block_.L_417fa0 ]
  %610 = load i64, i64* %RBP.i, align 8
  %611 = add i64 %610, -24
  %612 = add i64 %609, 4
  store i64 %612, i64* %3, align 8
  %613 = inttoptr i64 %611 to i32*
  %614 = load i32, i32* %613, align 4
  %615 = add i32 %614, -9
  %616 = icmp ult i32 %614, 9
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
  %636 = icmp ne i8 %630, 0
  %637 = xor i1 %636, %634
  %.v260 = select i1 %637, i64 10, i64 260
  %638 = add i64 %609, %.v260
  store i64 %638, i64* %3, align 8
  br i1 %637, label %block_417eb9, label %block_.L_417fb3

block_417eb9:                                     ; preds = %block_.L_417eaf
  %639 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*), align 8
  store i64 %639, i64* %RAX.i2255, align 8
  %640 = add i64 %639, 24
  %641 = add i64 %638, 12
  store i64 %641, i64* %3, align 8
  %642 = inttoptr i64 %640 to i32*
  %643 = load i32, i32* %642, align 4
  %644 = add i32 %643, -2
  %645 = icmp ult i32 %643, 2
  %646 = zext i1 %645 to i8
  store i8 %646, i8* %14, align 1
  %647 = and i32 %644, 255
  %648 = tail call i32 @llvm.ctpop.i32(i32 %647)
  %649 = trunc i32 %648 to i8
  %650 = and i8 %649, 1
  %651 = xor i8 %650, 1
  store i8 %651, i8* %21, align 1
  %652 = xor i32 %644, %643
  %653 = lshr i32 %652, 4
  %654 = trunc i32 %653 to i8
  %655 = and i8 %654, 1
  store i8 %655, i8* %26, align 1
  %656 = icmp eq i32 %644, 0
  %657 = zext i1 %656 to i8
  store i8 %657, i8* %29, align 1
  %658 = lshr i32 %644, 31
  %659 = trunc i32 %658 to i8
  store i8 %659, i8* %32, align 1
  %660 = lshr i32 %643, 31
  %661 = xor i32 %658, %660
  %662 = add nuw nsw i32 %661, %660
  %663 = icmp eq i32 %662, 2
  %664 = zext i1 %663 to i8
  store i8 %664, i8* %38, align 1
  %.v293 = select i1 %656, i64 18, i64 127
  %665 = add i64 %638, %.v293
  %666 = add i64 %665, 10
  store i64 %666, i64* %3, align 8
  br i1 %656, label %block_417ecb, label %block_.L_417f38

block_417ecb:                                     ; preds = %block_417eb9
  store i64 ptrtoint (%G__0x4b36c0_type* @G__0x4b36c0 to i64), i64* %RAX.i2255, align 8
  %667 = add i64 %610, -8
  %668 = add i64 %665, 14
  store i64 %668, i64* %3, align 8
  %669 = inttoptr i64 %667 to i64*
  %670 = load i64, i64* %669, align 8
  %671 = add i64 %670, 528
  store i64 %671, i64* %RCX.i2165, align 8
  %672 = icmp ugt i64 %670, -529
  %673 = zext i1 %672 to i8
  store i8 %673, i8* %14, align 1
  %674 = trunc i64 %671 to i32
  %675 = and i32 %674, 255
  %676 = tail call i32 @llvm.ctpop.i32(i32 %675)
  %677 = trunc i32 %676 to i8
  %678 = and i8 %677, 1
  %679 = xor i8 %678, 1
  store i8 %679, i8* %21, align 1
  %680 = xor i64 %670, 16
  %681 = xor i64 %680, %671
  %682 = lshr i64 %681, 4
  %683 = trunc i64 %682 to i8
  %684 = and i8 %683, 1
  store i8 %684, i8* %26, align 1
  %685 = icmp eq i64 %671, 0
  %686 = zext i1 %685 to i8
  store i8 %686, i8* %29, align 1
  %687 = lshr i64 %671, 63
  %688 = trunc i64 %687 to i8
  store i8 %688, i8* %32, align 1
  %689 = lshr i64 %670, 63
  %690 = xor i64 %687, %689
  %691 = add nuw nsw i64 %690, %687
  %692 = icmp eq i64 %691, 2
  %693 = zext i1 %692 to i8
  store i8 %693, i8* %38, align 1
  %694 = add i64 %610, -20
  %695 = add i64 %665, 25
  store i64 %695, i64* %3, align 8
  %696 = inttoptr i64 %694 to i32*
  %697 = load i32, i32* %696, align 4
  %698 = sext i32 %697 to i64
  %699 = mul nsw i64 %698, 144
  store i64 %699, i64* %RDX.i2162, align 8
  %700 = lshr i64 %699, 63
  %701 = add i64 %699, %671
  store i64 %701, i64* %RCX.i2165, align 8
  %702 = icmp ult i64 %701, %671
  %703 = icmp ult i64 %701, %699
  %704 = or i1 %702, %703
  %705 = zext i1 %704 to i8
  store i8 %705, i8* %14, align 1
  %706 = trunc i64 %701 to i32
  %707 = and i32 %706, 255
  %708 = tail call i32 @llvm.ctpop.i32(i32 %707)
  %709 = trunc i32 %708 to i8
  %710 = and i8 %709, 1
  %711 = xor i8 %710, 1
  store i8 %711, i8* %21, align 1
  %712 = xor i64 %699, %671
  %713 = xor i64 %712, %701
  %714 = lshr i64 %713, 4
  %715 = trunc i64 %714 to i8
  %716 = and i8 %715, 1
  store i8 %716, i8* %26, align 1
  %717 = icmp eq i64 %701, 0
  %718 = zext i1 %717 to i8
  store i8 %718, i8* %29, align 1
  %719 = lshr i64 %701, 63
  %720 = trunc i64 %719 to i8
  store i8 %720, i8* %32, align 1
  %721 = xor i64 %719, %687
  %722 = xor i64 %719, %700
  %723 = add nuw nsw i64 %721, %722
  %724 = icmp eq i64 %723, 2
  %725 = zext i1 %724 to i8
  store i8 %725, i8* %38, align 1
  %726 = load i64, i64* %RBP.i, align 8
  %727 = add i64 %726, -24
  %728 = add i64 %665, 39
  store i64 %728, i64* %3, align 8
  %729 = inttoptr i64 %727 to i32*
  %730 = load i32, i32* %729, align 4
  %731 = sext i32 %730 to i64
  %732 = shl nsw i64 %731, 4
  %733 = add i64 %732, %701
  store i64 %733, i64* %RCX.i2165, align 8
  %734 = icmp ult i64 %733, %701
  %735 = icmp ult i64 %733, %732
  %736 = or i1 %734, %735
  %737 = zext i1 %736 to i8
  store i8 %737, i8* %14, align 1
  %738 = trunc i64 %733 to i32
  %739 = and i32 %738, 255
  %740 = tail call i32 @llvm.ctpop.i32(i32 %739)
  %741 = trunc i32 %740 to i8
  %742 = and i8 %741, 1
  %743 = xor i8 %742, 1
  store i8 %743, i8* %21, align 1
  %744 = xor i64 %732, %701
  %745 = xor i64 %744, %733
  %746 = lshr i64 %745, 4
  %747 = trunc i64 %746 to i8
  %748 = and i8 %747, 1
  store i8 %748, i8* %26, align 1
  %749 = icmp eq i64 %733, 0
  %750 = zext i1 %749 to i8
  store i8 %750, i8* %29, align 1
  %751 = lshr i64 %733, 63
  %752 = trunc i64 %751 to i8
  store i8 %752, i8* %32, align 1
  %753 = lshr i64 %731, 59
  %754 = and i64 %753, 1
  %755 = xor i64 %751, %719
  %756 = xor i64 %751, %754
  %757 = add nuw nsw i64 %755, %756
  %758 = icmp eq i64 %757, 2
  %759 = zext i1 %758 to i8
  store i8 %759, i8* %38, align 1
  %760 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*), align 8
  store i64 %760, i64* %RDX.i2162, align 8
  %761 = add i64 %760, 72520
  %762 = add i64 %665, 61
  store i64 %762, i64* %3, align 8
  %763 = inttoptr i64 %761 to i32*
  %764 = load i32, i32* %763, align 4
  %765 = sext i32 %764 to i64
  %766 = mul nsw i64 %765, 144
  store i64 %766, i64* %RDX.i2162, align 8
  %767 = lshr i64 %766, 63
  %768 = load i64, i64* %RAX.i2255, align 8
  %769 = add i64 %766, %768
  store i64 %769, i64* %RAX.i2255, align 8
  %770 = icmp ult i64 %769, %768
  %771 = icmp ult i64 %769, %766
  %772 = or i1 %770, %771
  %773 = zext i1 %772 to i8
  store i8 %773, i8* %14, align 1
  %774 = trunc i64 %769 to i32
  %775 = and i32 %774, 255
  %776 = tail call i32 @llvm.ctpop.i32(i32 %775)
  %777 = trunc i32 %776 to i8
  %778 = and i8 %777, 1
  %779 = xor i8 %778, 1
  store i8 %779, i8* %21, align 1
  %780 = xor i64 %766, %768
  %781 = xor i64 %780, %769
  %782 = lshr i64 %781, 4
  %783 = trunc i64 %782 to i8
  %784 = and i8 %783, 1
  store i8 %784, i8* %26, align 1
  %785 = icmp eq i64 %769, 0
  %786 = zext i1 %785 to i8
  store i8 %786, i8* %29, align 1
  %787 = lshr i64 %769, 63
  %788 = trunc i64 %787 to i8
  store i8 %788, i8* %32, align 1
  %789 = lshr i64 %768, 63
  %790 = xor i64 %787, %789
  %791 = xor i64 %787, %767
  %792 = add nuw nsw i64 %790, %791
  %793 = icmp eq i64 %792, 2
  %794 = zext i1 %793 to i8
  store i8 %794, i8* %38, align 1
  %795 = load i64, i64* %RBP.i, align 8
  %796 = add i64 %795, -20
  %797 = add i64 %665, 75
  store i64 %797, i64* %3, align 8
  %798 = inttoptr i64 %796 to i32*
  %799 = load i32, i32* %798, align 4
  %800 = sext i32 %799 to i64
  %801 = mul nsw i64 %800, 72
  store i64 %801, i64* %RDX.i2162, align 8
  %802 = lshr i64 %801, 63
  %803 = add i64 %801, %769
  store i64 %803, i64* %RAX.i2255, align 8
  %804 = icmp ult i64 %803, %769
  %805 = icmp ult i64 %803, %801
  %806 = or i1 %804, %805
  %807 = zext i1 %806 to i8
  store i8 %807, i8* %14, align 1
  %808 = trunc i64 %803 to i32
  %809 = and i32 %808, 255
  %810 = tail call i32 @llvm.ctpop.i32(i32 %809)
  %811 = trunc i32 %810 to i8
  %812 = and i8 %811, 1
  %813 = xor i8 %812, 1
  store i8 %813, i8* %21, align 1
  %814 = xor i64 %801, %769
  %815 = xor i64 %814, %803
  %816 = lshr i64 %815, 4
  %817 = trunc i64 %816 to i8
  %818 = and i8 %817, 1
  store i8 %818, i8* %26, align 1
  %819 = icmp eq i64 %803, 0
  %820 = zext i1 %819 to i8
  store i8 %820, i8* %29, align 1
  %821 = lshr i64 %803, 63
  %822 = trunc i64 %821 to i8
  store i8 %822, i8* %32, align 1
  %823 = xor i64 %821, %787
  %824 = xor i64 %821, %802
  %825 = add nuw nsw i64 %823, %824
  %826 = icmp eq i64 %825, 2
  %827 = zext i1 %826 to i8
  store i8 %827, i8* %38, align 1
  %828 = add i64 %795, -24
  %829 = add i64 %665, 86
  store i64 %829, i64* %3, align 8
  %830 = inttoptr i64 %828 to i32*
  %831 = load i32, i32* %830, align 4
  %832 = sext i32 %831 to i64
  %833 = shl nsw i64 %832, 3
  store i64 %833, i64* %RDX.i2162, align 8
  %834 = add i64 %833, %803
  store i64 %834, i64* %RAX.i2255, align 8
  %835 = icmp ult i64 %834, %803
  %836 = icmp ult i64 %834, %833
  %837 = or i1 %835, %836
  %838 = zext i1 %837 to i8
  store i8 %838, i8* %14, align 1
  %839 = trunc i64 %834 to i32
  %840 = and i32 %839, 255
  %841 = tail call i32 @llvm.ctpop.i32(i32 %840)
  %842 = trunc i32 %841 to i8
  %843 = and i8 %842, 1
  %844 = xor i8 %843, 1
  store i8 %844, i8* %21, align 1
  %845 = xor i64 %833, %803
  %846 = xor i64 %845, %834
  %847 = lshr i64 %846, 4
  %848 = trunc i64 %847 to i8
  %849 = and i8 %848, 1
  store i8 %849, i8* %26, align 1
  %850 = icmp eq i64 %834, 0
  %851 = zext i1 %850 to i8
  store i8 %851, i8* %29, align 1
  %852 = lshr i64 %834, 63
  %853 = trunc i64 %852 to i8
  store i8 %853, i8* %32, align 1
  %854 = lshr i64 %832, 60
  %855 = and i64 %854, 1
  %856 = xor i64 %852, %821
  %857 = xor i64 %852, %855
  %858 = add nuw nsw i64 %856, %857
  %859 = icmp eq i64 %858, 2
  %860 = zext i1 %859 to i8
  store i8 %860, i8* %38, align 1
  %861 = load i64, i64* %RCX.i2165, align 8
  store i64 %861, i64* %RDI.i2122, align 8
  store i64 %834, i64* %RSI.i2119, align 8
  %862 = add i64 %665, -88635
  %863 = add i64 %665, 104
  %864 = load i64, i64* %6, align 8
  %865 = add i64 %864, -8
  %866 = inttoptr i64 %865 to i64*
  store i64 %863, i64* %866, align 8
  store i64 %865, i64* %6, align 8
  store i64 %862, i64* %3, align 8
  %call2_417f2e = tail call %struct.Memory* @sub_402490.biari_init_context(%struct.State* nonnull %0, i64 %862, %struct.Memory* %2)
  %867 = load i64, i64* %3, align 8
  %868 = add i64 %867, 109
  store i64 %868, i64* %3, align 8
  br label %block_.L_417fa0

block_.L_417f38:                                  ; preds = %block_417eb9
  store i64 ptrtoint (%G__0x4b3750_type* @G__0x4b3750 to i64), i64* %RAX.i2255, align 8
  %869 = add i64 %610, -8
  %870 = add i64 %665, 14
  store i64 %870, i64* %3, align 8
  %871 = inttoptr i64 %869 to i64*
  %872 = load i64, i64* %871, align 8
  %873 = add i64 %872, 528
  store i64 %873, i64* %RCX.i2165, align 8
  %874 = icmp ugt i64 %872, -529
  %875 = zext i1 %874 to i8
  store i8 %875, i8* %14, align 1
  %876 = trunc i64 %873 to i32
  %877 = and i32 %876, 255
  %878 = tail call i32 @llvm.ctpop.i32(i32 %877)
  %879 = trunc i32 %878 to i8
  %880 = and i8 %879, 1
  %881 = xor i8 %880, 1
  store i8 %881, i8* %21, align 1
  %882 = xor i64 %872, 16
  %883 = xor i64 %882, %873
  %884 = lshr i64 %883, 4
  %885 = trunc i64 %884 to i8
  %886 = and i8 %885, 1
  store i8 %886, i8* %26, align 1
  %887 = icmp eq i64 %873, 0
  %888 = zext i1 %887 to i8
  store i8 %888, i8* %29, align 1
  %889 = lshr i64 %873, 63
  %890 = trunc i64 %889 to i8
  store i8 %890, i8* %32, align 1
  %891 = lshr i64 %872, 63
  %892 = xor i64 %889, %891
  %893 = add nuw nsw i64 %892, %889
  %894 = icmp eq i64 %893, 2
  %895 = zext i1 %894 to i8
  store i8 %895, i8* %38, align 1
  %896 = add i64 %610, -20
  %897 = add i64 %665, 25
  store i64 %897, i64* %3, align 8
  %898 = inttoptr i64 %896 to i32*
  %899 = load i32, i32* %898, align 4
  %900 = sext i32 %899 to i64
  %901 = mul nsw i64 %900, 144
  store i64 %901, i64* %RDX.i2162, align 8
  %902 = lshr i64 %901, 63
  %903 = add i64 %901, %873
  store i64 %903, i64* %RCX.i2165, align 8
  %904 = icmp ult i64 %903, %873
  %905 = icmp ult i64 %903, %901
  %906 = or i1 %904, %905
  %907 = zext i1 %906 to i8
  store i8 %907, i8* %14, align 1
  %908 = trunc i64 %903 to i32
  %909 = and i32 %908, 255
  %910 = tail call i32 @llvm.ctpop.i32(i32 %909)
  %911 = trunc i32 %910 to i8
  %912 = and i8 %911, 1
  %913 = xor i8 %912, 1
  store i8 %913, i8* %21, align 1
  %914 = xor i64 %901, %873
  %915 = xor i64 %914, %903
  %916 = lshr i64 %915, 4
  %917 = trunc i64 %916 to i8
  %918 = and i8 %917, 1
  store i8 %918, i8* %26, align 1
  %919 = icmp eq i64 %903, 0
  %920 = zext i1 %919 to i8
  store i8 %920, i8* %29, align 1
  %921 = lshr i64 %903, 63
  %922 = trunc i64 %921 to i8
  store i8 %922, i8* %32, align 1
  %923 = xor i64 %921, %889
  %924 = xor i64 %921, %902
  %925 = add nuw nsw i64 %923, %924
  %926 = icmp eq i64 %925, 2
  %927 = zext i1 %926 to i8
  store i8 %927, i8* %38, align 1
  %928 = load i64, i64* %RBP.i, align 8
  %929 = add i64 %928, -24
  %930 = add i64 %665, 39
  store i64 %930, i64* %3, align 8
  %931 = inttoptr i64 %929 to i32*
  %932 = load i32, i32* %931, align 4
  %933 = sext i32 %932 to i64
  %934 = shl nsw i64 %933, 4
  %935 = add i64 %934, %903
  store i64 %935, i64* %RCX.i2165, align 8
  %936 = icmp ult i64 %935, %903
  %937 = icmp ult i64 %935, %934
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
  %946 = xor i64 %934, %903
  %947 = xor i64 %946, %935
  %948 = lshr i64 %947, 4
  %949 = trunc i64 %948 to i8
  %950 = and i8 %949, 1
  store i8 %950, i8* %26, align 1
  %951 = icmp eq i64 %935, 0
  %952 = zext i1 %951 to i8
  store i8 %952, i8* %29, align 1
  %953 = lshr i64 %935, 63
  %954 = trunc i64 %953 to i8
  store i8 %954, i8* %32, align 1
  %955 = lshr i64 %933, 59
  %956 = and i64 %955, 1
  %957 = xor i64 %953, %921
  %958 = xor i64 %953, %956
  %959 = add nuw nsw i64 %957, %958
  %960 = icmp eq i64 %959, 2
  %961 = zext i1 %960 to i8
  store i8 %961, i8* %38, align 1
  %962 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*), align 8
  store i64 %962, i64* %RDX.i2162, align 8
  %963 = add i64 %962, 72520
  %964 = add i64 %665, 61
  store i64 %964, i64* %3, align 8
  %965 = inttoptr i64 %963 to i32*
  %966 = load i32, i32* %965, align 4
  %967 = sext i32 %966 to i64
  %968 = mul nsw i64 %967, 144
  store i64 %968, i64* %RDX.i2162, align 8
  %969 = lshr i64 %968, 63
  %970 = load i64, i64* %RAX.i2255, align 8
  %971 = add i64 %968, %970
  store i64 %971, i64* %RAX.i2255, align 8
  %972 = icmp ult i64 %971, %970
  %973 = icmp ult i64 %971, %968
  %974 = or i1 %972, %973
  %975 = zext i1 %974 to i8
  store i8 %975, i8* %14, align 1
  %976 = trunc i64 %971 to i32
  %977 = and i32 %976, 255
  %978 = tail call i32 @llvm.ctpop.i32(i32 %977)
  %979 = trunc i32 %978 to i8
  %980 = and i8 %979, 1
  %981 = xor i8 %980, 1
  store i8 %981, i8* %21, align 1
  %982 = xor i64 %968, %970
  %983 = xor i64 %982, %971
  %984 = lshr i64 %983, 4
  %985 = trunc i64 %984 to i8
  %986 = and i8 %985, 1
  store i8 %986, i8* %26, align 1
  %987 = icmp eq i64 %971, 0
  %988 = zext i1 %987 to i8
  store i8 %988, i8* %29, align 1
  %989 = lshr i64 %971, 63
  %990 = trunc i64 %989 to i8
  store i8 %990, i8* %32, align 1
  %991 = lshr i64 %970, 63
  %992 = xor i64 %989, %991
  %993 = xor i64 %989, %969
  %994 = add nuw nsw i64 %992, %993
  %995 = icmp eq i64 %994, 2
  %996 = zext i1 %995 to i8
  store i8 %996, i8* %38, align 1
  %997 = load i64, i64* %RBP.i, align 8
  %998 = add i64 %997, -20
  %999 = add i64 %665, 75
  store i64 %999, i64* %3, align 8
  %1000 = inttoptr i64 %998 to i32*
  %1001 = load i32, i32* %1000, align 4
  %1002 = sext i32 %1001 to i64
  %1003 = mul nsw i64 %1002, 72
  store i64 %1003, i64* %RDX.i2162, align 8
  %1004 = lshr i64 %1003, 63
  %1005 = add i64 %1003, %971
  store i64 %1005, i64* %RAX.i2255, align 8
  %1006 = icmp ult i64 %1005, %971
  %1007 = icmp ult i64 %1005, %1003
  %1008 = or i1 %1006, %1007
  %1009 = zext i1 %1008 to i8
  store i8 %1009, i8* %14, align 1
  %1010 = trunc i64 %1005 to i32
  %1011 = and i32 %1010, 255
  %1012 = tail call i32 @llvm.ctpop.i32(i32 %1011)
  %1013 = trunc i32 %1012 to i8
  %1014 = and i8 %1013, 1
  %1015 = xor i8 %1014, 1
  store i8 %1015, i8* %21, align 1
  %1016 = xor i64 %1003, %971
  %1017 = xor i64 %1016, %1005
  %1018 = lshr i64 %1017, 4
  %1019 = trunc i64 %1018 to i8
  %1020 = and i8 %1019, 1
  store i8 %1020, i8* %26, align 1
  %1021 = icmp eq i64 %1005, 0
  %1022 = zext i1 %1021 to i8
  store i8 %1022, i8* %29, align 1
  %1023 = lshr i64 %1005, 63
  %1024 = trunc i64 %1023 to i8
  store i8 %1024, i8* %32, align 1
  %1025 = xor i64 %1023, %989
  %1026 = xor i64 %1023, %1004
  %1027 = add nuw nsw i64 %1025, %1026
  %1028 = icmp eq i64 %1027, 2
  %1029 = zext i1 %1028 to i8
  store i8 %1029, i8* %38, align 1
  %1030 = add i64 %997, -24
  %1031 = add i64 %665, 86
  store i64 %1031, i64* %3, align 8
  %1032 = inttoptr i64 %1030 to i32*
  %1033 = load i32, i32* %1032, align 4
  %1034 = sext i32 %1033 to i64
  %1035 = shl nsw i64 %1034, 3
  store i64 %1035, i64* %RDX.i2162, align 8
  %1036 = add i64 %1035, %1005
  store i64 %1036, i64* %RAX.i2255, align 8
  %1037 = icmp ult i64 %1036, %1005
  %1038 = icmp ult i64 %1036, %1035
  %1039 = or i1 %1037, %1038
  %1040 = zext i1 %1039 to i8
  store i8 %1040, i8* %14, align 1
  %1041 = trunc i64 %1036 to i32
  %1042 = and i32 %1041, 255
  %1043 = tail call i32 @llvm.ctpop.i32(i32 %1042)
  %1044 = trunc i32 %1043 to i8
  %1045 = and i8 %1044, 1
  %1046 = xor i8 %1045, 1
  store i8 %1046, i8* %21, align 1
  %1047 = xor i64 %1035, %1005
  %1048 = xor i64 %1047, %1036
  %1049 = lshr i64 %1048, 4
  %1050 = trunc i64 %1049 to i8
  %1051 = and i8 %1050, 1
  store i8 %1051, i8* %26, align 1
  %1052 = icmp eq i64 %1036, 0
  %1053 = zext i1 %1052 to i8
  store i8 %1053, i8* %29, align 1
  %1054 = lshr i64 %1036, 63
  %1055 = trunc i64 %1054 to i8
  store i8 %1055, i8* %32, align 1
  %1056 = lshr i64 %1034, 60
  %1057 = and i64 %1056, 1
  %1058 = xor i64 %1054, %1023
  %1059 = xor i64 %1054, %1057
  %1060 = add nuw nsw i64 %1058, %1059
  %1061 = icmp eq i64 %1060, 2
  %1062 = zext i1 %1061 to i8
  store i8 %1062, i8* %38, align 1
  %1063 = load i64, i64* %RCX.i2165, align 8
  store i64 %1063, i64* %RDI.i2122, align 8
  store i64 %1036, i64* %RSI.i2119, align 8
  %1064 = add i64 %665, -88744
  %1065 = add i64 %665, 104
  %1066 = load i64, i64* %6, align 8
  %1067 = add i64 %1066, -8
  %1068 = inttoptr i64 %1067 to i64*
  store i64 %1065, i64* %1068, align 8
  store i64 %1067, i64* %6, align 8
  store i64 %1064, i64* %3, align 8
  %call2_417f9b = tail call %struct.Memory* @sub_402490.biari_init_context(%struct.State* nonnull %0, i64 %1064, %struct.Memory* %2)
  %.pre247 = load i64, i64* %3, align 8
  br label %block_.L_417fa0

block_.L_417fa0:                                  ; preds = %block_.L_417f38, %block_417ecb
  %1069 = phi i64 [ %.pre247, %block_.L_417f38 ], [ %868, %block_417ecb ]
  %1070 = load i64, i64* %RBP.i, align 8
  %1071 = add i64 %1070, -24
  %1072 = add i64 %1069, 8
  store i64 %1072, i64* %3, align 8
  %1073 = inttoptr i64 %1071 to i32*
  %1074 = load i32, i32* %1073, align 4
  %1075 = add i32 %1074, 1
  %1076 = zext i32 %1075 to i64
  store i64 %1076, i64* %RAX.i2255, align 8
  %1077 = icmp eq i32 %1074, -1
  %1078 = icmp eq i32 %1075, 0
  %1079 = or i1 %1077, %1078
  %1080 = zext i1 %1079 to i8
  store i8 %1080, i8* %14, align 1
  %1081 = and i32 %1075, 255
  %1082 = tail call i32 @llvm.ctpop.i32(i32 %1081)
  %1083 = trunc i32 %1082 to i8
  %1084 = and i8 %1083, 1
  %1085 = xor i8 %1084, 1
  store i8 %1085, i8* %21, align 1
  %1086 = xor i32 %1075, %1074
  %1087 = lshr i32 %1086, 4
  %1088 = trunc i32 %1087 to i8
  %1089 = and i8 %1088, 1
  store i8 %1089, i8* %26, align 1
  %1090 = zext i1 %1078 to i8
  store i8 %1090, i8* %29, align 1
  %1091 = lshr i32 %1075, 31
  %1092 = trunc i32 %1091 to i8
  store i8 %1092, i8* %32, align 1
  %1093 = lshr i32 %1074, 31
  %1094 = xor i32 %1091, %1093
  %1095 = add nuw nsw i32 %1094, %1091
  %1096 = icmp eq i32 %1095, 2
  %1097 = zext i1 %1096 to i8
  store i8 %1097, i8* %38, align 1
  %1098 = add i64 %1069, 14
  store i64 %1098, i64* %3, align 8
  store i32 %1075, i32* %1073, align 4
  %1099 = load i64, i64* %3, align 8
  %1100 = add i64 %1099, -255
  store i64 %1100, i64* %3, align 8
  br label %block_.L_417eaf

block_.L_417fb3:                                  ; preds = %block_.L_417eaf
  %1101 = add i64 %610, -20
  %1102 = add i64 %638, 8
  store i64 %1102, i64* %3, align 8
  %1103 = inttoptr i64 %1101 to i32*
  %1104 = load i32, i32* %1103, align 4
  %1105 = add i32 %1104, 1
  %1106 = zext i32 %1105 to i64
  store i64 %1106, i64* %RAX.i2255, align 8
  %1107 = icmp eq i32 %1104, -1
  %1108 = icmp eq i32 %1105, 0
  %1109 = or i1 %1107, %1108
  %1110 = zext i1 %1109 to i8
  store i8 %1110, i8* %14, align 1
  %1111 = and i32 %1105, 255
  %1112 = tail call i32 @llvm.ctpop.i32(i32 %1111)
  %1113 = trunc i32 %1112 to i8
  %1114 = and i8 %1113, 1
  %1115 = xor i8 %1114, 1
  store i8 %1115, i8* %21, align 1
  %1116 = xor i32 %1105, %1104
  %1117 = lshr i32 %1116, 4
  %1118 = trunc i32 %1117 to i8
  %1119 = and i8 %1118, 1
  store i8 %1119, i8* %26, align 1
  %1120 = zext i1 %1108 to i8
  store i8 %1120, i8* %29, align 1
  %1121 = lshr i32 %1105, 31
  %1122 = trunc i32 %1121 to i8
  store i8 %1122, i8* %32, align 1
  %1123 = lshr i32 %1104, 31
  %1124 = xor i32 %1121, %1123
  %1125 = add nuw nsw i32 %1124, %1121
  %1126 = icmp eq i32 %1125, 2
  %1127 = zext i1 %1126 to i8
  store i8 %1127, i8* %38, align 1
  %1128 = add i64 %638, 14
  store i64 %1128, i64* %3, align 8
  store i32 %1105, i32* %1103, align 4
  %1129 = load i64, i64* %3, align 8
  %1130 = add i64 %1129, -291
  store i64 %1130, i64* %3, align 8
  br label %block_.L_417e9e

block_.L_417fc6:                                  ; preds = %block_.L_417e9e
  %1131 = add i64 %605, 7
  store i64 %1131, i64* %3, align 8
  store i32 0, i32* %580, align 4
  %.pre206 = load i64, i64* %3, align 8
  br label %block_.L_417fcd

block_.L_417fcd:                                  ; preds = %block_.L_4180e2, %block_.L_417fc6
  %1132 = phi i64 [ %.pre206, %block_.L_417fc6 ], [ %1682, %block_.L_4180e2 ]
  %1133 = load i64, i64* %RBP.i, align 8
  %1134 = add i64 %1133, -20
  %1135 = add i64 %1132, 4
  store i64 %1135, i64* %3, align 8
  %1136 = inttoptr i64 %1134 to i32*
  %1137 = load i32, i32* %1136, align 4
  %1138 = add i32 %1137, -2
  %1139 = icmp ult i32 %1137, 2
  %1140 = zext i1 %1139 to i8
  store i8 %1140, i8* %14, align 1
  %1141 = and i32 %1138, 255
  %1142 = tail call i32 @llvm.ctpop.i32(i32 %1141)
  %1143 = trunc i32 %1142 to i8
  %1144 = and i8 %1143, 1
  %1145 = xor i8 %1144, 1
  store i8 %1145, i8* %21, align 1
  %1146 = xor i32 %1138, %1137
  %1147 = lshr i32 %1146, 4
  %1148 = trunc i32 %1147 to i8
  %1149 = and i8 %1148, 1
  store i8 %1149, i8* %26, align 1
  %1150 = icmp eq i32 %1138, 0
  %1151 = zext i1 %1150 to i8
  store i8 %1151, i8* %29, align 1
  %1152 = lshr i32 %1138, 31
  %1153 = trunc i32 %1152 to i8
  store i8 %1153, i8* %32, align 1
  %1154 = lshr i32 %1137, 31
  %1155 = xor i32 %1152, %1154
  %1156 = add nuw nsw i32 %1155, %1154
  %1157 = icmp eq i32 %1156, 2
  %1158 = zext i1 %1157 to i8
  store i8 %1158, i8* %38, align 1
  %1159 = icmp ne i8 %1153, 0
  %1160 = xor i1 %1159, %1157
  %.v264 = select i1 %1160, i64 10, i64 296
  %1161 = add i64 %1132, %.v264
  store i64 %1161, i64* %3, align 8
  br i1 %1160, label %block_417fd7, label %block_.L_4180f5

block_417fd7:                                     ; preds = %block_.L_417fcd
  %1162 = add i64 %1133, -24
  %1163 = add i64 %1161, 7
  store i64 %1163, i64* %3, align 8
  %1164 = inttoptr i64 %1162 to i32*
  store i32 0, i32* %1164, align 4
  %.pre244 = load i64, i64* %3, align 8
  br label %block_.L_417fde

block_.L_417fde:                                  ; preds = %block_.L_4180cf, %block_417fd7
  %1165 = phi i64 [ %.pre244, %block_417fd7 ], [ %1652, %block_.L_4180cf ]
  %1166 = load i64, i64* %RBP.i, align 8
  %1167 = add i64 %1166, -24
  %1168 = add i64 %1165, 4
  store i64 %1168, i64* %3, align 8
  %1169 = inttoptr i64 %1167 to i32*
  %1170 = load i32, i32* %1169, align 4
  %1171 = add i32 %1170, -10
  %1172 = icmp ult i32 %1170, 10
  %1173 = zext i1 %1172 to i8
  store i8 %1173, i8* %14, align 1
  %1174 = and i32 %1171, 255
  %1175 = tail call i32 @llvm.ctpop.i32(i32 %1174)
  %1176 = trunc i32 %1175 to i8
  %1177 = and i8 %1176, 1
  %1178 = xor i8 %1177, 1
  store i8 %1178, i8* %21, align 1
  %1179 = xor i32 %1171, %1170
  %1180 = lshr i32 %1179, 4
  %1181 = trunc i32 %1180 to i8
  %1182 = and i8 %1181, 1
  store i8 %1182, i8* %26, align 1
  %1183 = icmp eq i32 %1171, 0
  %1184 = zext i1 %1183 to i8
  store i8 %1184, i8* %29, align 1
  %1185 = lshr i32 %1171, 31
  %1186 = trunc i32 %1185 to i8
  store i8 %1186, i8* %32, align 1
  %1187 = lshr i32 %1170, 31
  %1188 = xor i32 %1185, %1187
  %1189 = add nuw nsw i32 %1188, %1187
  %1190 = icmp eq i32 %1189, 2
  %1191 = zext i1 %1190 to i8
  store i8 %1191, i8* %38, align 1
  %1192 = icmp ne i8 %1186, 0
  %1193 = xor i1 %1192, %1190
  %.v259 = select i1 %1193, i64 10, i64 260
  %1194 = add i64 %1165, %.v259
  store i64 %1194, i64* %3, align 8
  br i1 %1193, label %block_417fe8, label %block_.L_4180e2

block_417fe8:                                     ; preds = %block_.L_417fde
  %1195 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*), align 8
  store i64 %1195, i64* %RAX.i2255, align 8
  %1196 = add i64 %1195, 24
  %1197 = add i64 %1194, 12
  store i64 %1197, i64* %3, align 8
  %1198 = inttoptr i64 %1196 to i32*
  %1199 = load i32, i32* %1198, align 4
  %1200 = add i32 %1199, -2
  %1201 = icmp ult i32 %1199, 2
  %1202 = zext i1 %1201 to i8
  store i8 %1202, i8* %14, align 1
  %1203 = and i32 %1200, 255
  %1204 = tail call i32 @llvm.ctpop.i32(i32 %1203)
  %1205 = trunc i32 %1204 to i8
  %1206 = and i8 %1205, 1
  %1207 = xor i8 %1206, 1
  store i8 %1207, i8* %21, align 1
  %1208 = xor i32 %1200, %1199
  %1209 = lshr i32 %1208, 4
  %1210 = trunc i32 %1209 to i8
  %1211 = and i8 %1210, 1
  store i8 %1211, i8* %26, align 1
  %1212 = icmp eq i32 %1200, 0
  %1213 = zext i1 %1212 to i8
  store i8 %1213, i8* %29, align 1
  %1214 = lshr i32 %1200, 31
  %1215 = trunc i32 %1214 to i8
  store i8 %1215, i8* %32, align 1
  %1216 = lshr i32 %1199, 31
  %1217 = xor i32 %1214, %1216
  %1218 = add nuw nsw i32 %1217, %1216
  %1219 = icmp eq i32 %1218, 2
  %1220 = zext i1 %1219 to i8
  store i8 %1220, i8* %38, align 1
  %.v292 = select i1 %1212, i64 18, i64 127
  %1221 = add i64 %1194, %.v292
  %1222 = add i64 %1221, 10
  store i64 %1222, i64* %3, align 8
  br i1 %1212, label %block_417ffa, label %block_.L_418067

block_417ffa:                                     ; preds = %block_417fe8
  store i64 ptrtoint (%G__0x4b3900_type* @G__0x4b3900 to i64), i64* %RAX.i2255, align 8
  %1223 = add i64 %1166, -8
  %1224 = add i64 %1221, 14
  store i64 %1224, i64* %3, align 8
  %1225 = inttoptr i64 %1223 to i64*
  %1226 = load i64, i64* %1225, align 8
  %1227 = add i64 %1226, 816
  store i64 %1227, i64* %RCX.i2165, align 8
  %1228 = icmp ugt i64 %1226, -817
  %1229 = zext i1 %1228 to i8
  store i8 %1229, i8* %14, align 1
  %1230 = trunc i64 %1227 to i32
  %1231 = and i32 %1230, 255
  %1232 = tail call i32 @llvm.ctpop.i32(i32 %1231)
  %1233 = trunc i32 %1232 to i8
  %1234 = and i8 %1233, 1
  %1235 = xor i8 %1234, 1
  store i8 %1235, i8* %21, align 1
  %1236 = xor i64 %1226, 16
  %1237 = xor i64 %1236, %1227
  %1238 = lshr i64 %1237, 4
  %1239 = trunc i64 %1238 to i8
  %1240 = and i8 %1239, 1
  store i8 %1240, i8* %26, align 1
  %1241 = icmp eq i64 %1227, 0
  %1242 = zext i1 %1241 to i8
  store i8 %1242, i8* %29, align 1
  %1243 = lshr i64 %1227, 63
  %1244 = trunc i64 %1243 to i8
  store i8 %1244, i8* %32, align 1
  %1245 = lshr i64 %1226, 63
  %1246 = xor i64 %1243, %1245
  %1247 = add nuw nsw i64 %1246, %1243
  %1248 = icmp eq i64 %1247, 2
  %1249 = zext i1 %1248 to i8
  store i8 %1249, i8* %38, align 1
  %1250 = add i64 %1166, -20
  %1251 = add i64 %1221, 25
  store i64 %1251, i64* %3, align 8
  %1252 = inttoptr i64 %1250 to i32*
  %1253 = load i32, i32* %1252, align 4
  %1254 = sext i32 %1253 to i64
  %1255 = mul nsw i64 %1254, 160
  store i64 %1255, i64* %RDX.i2162, align 8
  %1256 = lshr i64 %1255, 63
  %1257 = add i64 %1255, %1227
  store i64 %1257, i64* %RCX.i2165, align 8
  %1258 = icmp ult i64 %1257, %1227
  %1259 = icmp ult i64 %1257, %1255
  %1260 = or i1 %1258, %1259
  %1261 = zext i1 %1260 to i8
  store i8 %1261, i8* %14, align 1
  %1262 = trunc i64 %1257 to i32
  %1263 = and i32 %1262, 255
  %1264 = tail call i32 @llvm.ctpop.i32(i32 %1263)
  %1265 = trunc i32 %1264 to i8
  %1266 = and i8 %1265, 1
  %1267 = xor i8 %1266, 1
  store i8 %1267, i8* %21, align 1
  %1268 = xor i64 %1227, %1257
  %1269 = lshr i64 %1268, 4
  %1270 = trunc i64 %1269 to i8
  %1271 = and i8 %1270, 1
  store i8 %1271, i8* %26, align 1
  %1272 = icmp eq i64 %1257, 0
  %1273 = zext i1 %1272 to i8
  store i8 %1273, i8* %29, align 1
  %1274 = lshr i64 %1257, 63
  %1275 = trunc i64 %1274 to i8
  store i8 %1275, i8* %32, align 1
  %1276 = xor i64 %1274, %1243
  %1277 = xor i64 %1274, %1256
  %1278 = add nuw nsw i64 %1276, %1277
  %1279 = icmp eq i64 %1278, 2
  %1280 = zext i1 %1279 to i8
  store i8 %1280, i8* %38, align 1
  %1281 = load i64, i64* %RBP.i, align 8
  %1282 = add i64 %1281, -24
  %1283 = add i64 %1221, 39
  store i64 %1283, i64* %3, align 8
  %1284 = inttoptr i64 %1282 to i32*
  %1285 = load i32, i32* %1284, align 4
  %1286 = sext i32 %1285 to i64
  %1287 = shl nsw i64 %1286, 4
  %1288 = add i64 %1287, %1257
  store i64 %1288, i64* %RCX.i2165, align 8
  %1289 = icmp ult i64 %1288, %1257
  %1290 = icmp ult i64 %1288, %1287
  %1291 = or i1 %1289, %1290
  %1292 = zext i1 %1291 to i8
  store i8 %1292, i8* %14, align 1
  %1293 = trunc i64 %1288 to i32
  %1294 = and i32 %1293, 255
  %1295 = tail call i32 @llvm.ctpop.i32(i32 %1294)
  %1296 = trunc i32 %1295 to i8
  %1297 = and i8 %1296, 1
  %1298 = xor i8 %1297, 1
  store i8 %1298, i8* %21, align 1
  %1299 = xor i64 %1287, %1257
  %1300 = xor i64 %1299, %1288
  %1301 = lshr i64 %1300, 4
  %1302 = trunc i64 %1301 to i8
  %1303 = and i8 %1302, 1
  store i8 %1303, i8* %26, align 1
  %1304 = icmp eq i64 %1288, 0
  %1305 = zext i1 %1304 to i8
  store i8 %1305, i8* %29, align 1
  %1306 = lshr i64 %1288, 63
  %1307 = trunc i64 %1306 to i8
  store i8 %1307, i8* %32, align 1
  %1308 = lshr i64 %1286, 59
  %1309 = and i64 %1308, 1
  %1310 = xor i64 %1306, %1274
  %1311 = xor i64 %1306, %1309
  %1312 = add nuw nsw i64 %1310, %1311
  %1313 = icmp eq i64 %1312, 2
  %1314 = zext i1 %1313 to i8
  store i8 %1314, i8* %38, align 1
  %1315 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*), align 8
  store i64 %1315, i64* %RDX.i2162, align 8
  %1316 = add i64 %1315, 72520
  %1317 = add i64 %1221, 61
  store i64 %1317, i64* %3, align 8
  %1318 = inttoptr i64 %1316 to i32*
  %1319 = load i32, i32* %1318, align 4
  %1320 = sext i32 %1319 to i64
  %1321 = mul nsw i64 %1320, 160
  store i64 %1321, i64* %RDX.i2162, align 8
  %1322 = lshr i64 %1321, 63
  %1323 = load i64, i64* %RAX.i2255, align 8
  %1324 = add i64 %1321, %1323
  store i64 %1324, i64* %RAX.i2255, align 8
  %1325 = icmp ult i64 %1324, %1323
  %1326 = icmp ult i64 %1324, %1321
  %1327 = or i1 %1325, %1326
  %1328 = zext i1 %1327 to i8
  store i8 %1328, i8* %14, align 1
  %1329 = trunc i64 %1324 to i32
  %1330 = and i32 %1329, 255
  %1331 = tail call i32 @llvm.ctpop.i32(i32 %1330)
  %1332 = trunc i32 %1331 to i8
  %1333 = and i8 %1332, 1
  %1334 = xor i8 %1333, 1
  store i8 %1334, i8* %21, align 1
  %1335 = xor i64 %1323, %1324
  %1336 = lshr i64 %1335, 4
  %1337 = trunc i64 %1336 to i8
  %1338 = and i8 %1337, 1
  store i8 %1338, i8* %26, align 1
  %1339 = icmp eq i64 %1324, 0
  %1340 = zext i1 %1339 to i8
  store i8 %1340, i8* %29, align 1
  %1341 = lshr i64 %1324, 63
  %1342 = trunc i64 %1341 to i8
  store i8 %1342, i8* %32, align 1
  %1343 = lshr i64 %1323, 63
  %1344 = xor i64 %1341, %1343
  %1345 = xor i64 %1341, %1322
  %1346 = add nuw nsw i64 %1344, %1345
  %1347 = icmp eq i64 %1346, 2
  %1348 = zext i1 %1347 to i8
  store i8 %1348, i8* %38, align 1
  %1349 = load i64, i64* %RBP.i, align 8
  %1350 = add i64 %1349, -20
  %1351 = add i64 %1221, 75
  store i64 %1351, i64* %3, align 8
  %1352 = inttoptr i64 %1350 to i32*
  %1353 = load i32, i32* %1352, align 4
  %1354 = sext i32 %1353 to i64
  %1355 = mul nsw i64 %1354, 80
  store i64 %1355, i64* %RDX.i2162, align 8
  %1356 = lshr i64 %1355, 63
  %1357 = add i64 %1355, %1324
  store i64 %1357, i64* %RAX.i2255, align 8
  %1358 = icmp ult i64 %1357, %1324
  %1359 = icmp ult i64 %1357, %1355
  %1360 = or i1 %1358, %1359
  %1361 = zext i1 %1360 to i8
  store i8 %1361, i8* %14, align 1
  %1362 = trunc i64 %1357 to i32
  %1363 = and i32 %1362, 255
  %1364 = tail call i32 @llvm.ctpop.i32(i32 %1363)
  %1365 = trunc i32 %1364 to i8
  %1366 = and i8 %1365, 1
  %1367 = xor i8 %1366, 1
  store i8 %1367, i8* %21, align 1
  %1368 = xor i64 %1355, %1324
  %1369 = xor i64 %1368, %1357
  %1370 = lshr i64 %1369, 4
  %1371 = trunc i64 %1370 to i8
  %1372 = and i8 %1371, 1
  store i8 %1372, i8* %26, align 1
  %1373 = icmp eq i64 %1357, 0
  %1374 = zext i1 %1373 to i8
  store i8 %1374, i8* %29, align 1
  %1375 = lshr i64 %1357, 63
  %1376 = trunc i64 %1375 to i8
  store i8 %1376, i8* %32, align 1
  %1377 = xor i64 %1375, %1341
  %1378 = xor i64 %1375, %1356
  %1379 = add nuw nsw i64 %1377, %1378
  %1380 = icmp eq i64 %1379, 2
  %1381 = zext i1 %1380 to i8
  store i8 %1381, i8* %38, align 1
  %1382 = add i64 %1349, -24
  %1383 = add i64 %1221, 86
  store i64 %1383, i64* %3, align 8
  %1384 = inttoptr i64 %1382 to i32*
  %1385 = load i32, i32* %1384, align 4
  %1386 = sext i32 %1385 to i64
  %1387 = shl nsw i64 %1386, 3
  store i64 %1387, i64* %RDX.i2162, align 8
  %1388 = add i64 %1387, %1357
  store i64 %1388, i64* %RAX.i2255, align 8
  %1389 = icmp ult i64 %1388, %1357
  %1390 = icmp ult i64 %1388, %1387
  %1391 = or i1 %1389, %1390
  %1392 = zext i1 %1391 to i8
  store i8 %1392, i8* %14, align 1
  %1393 = trunc i64 %1388 to i32
  %1394 = and i32 %1393, 255
  %1395 = tail call i32 @llvm.ctpop.i32(i32 %1394)
  %1396 = trunc i32 %1395 to i8
  %1397 = and i8 %1396, 1
  %1398 = xor i8 %1397, 1
  store i8 %1398, i8* %21, align 1
  %1399 = xor i64 %1387, %1357
  %1400 = xor i64 %1399, %1388
  %1401 = lshr i64 %1400, 4
  %1402 = trunc i64 %1401 to i8
  %1403 = and i8 %1402, 1
  store i8 %1403, i8* %26, align 1
  %1404 = icmp eq i64 %1388, 0
  %1405 = zext i1 %1404 to i8
  store i8 %1405, i8* %29, align 1
  %1406 = lshr i64 %1388, 63
  %1407 = trunc i64 %1406 to i8
  store i8 %1407, i8* %32, align 1
  %1408 = lshr i64 %1386, 60
  %1409 = and i64 %1408, 1
  %1410 = xor i64 %1406, %1375
  %1411 = xor i64 %1406, %1409
  %1412 = add nuw nsw i64 %1410, %1411
  %1413 = icmp eq i64 %1412, 2
  %1414 = zext i1 %1413 to i8
  store i8 %1414, i8* %38, align 1
  %1415 = load i64, i64* %RCX.i2165, align 8
  store i64 %1415, i64* %RDI.i2122, align 8
  store i64 %1388, i64* %RSI.i2119, align 8
  %1416 = add i64 %1221, -88938
  %1417 = add i64 %1221, 104
  %1418 = load i64, i64* %6, align 8
  %1419 = add i64 %1418, -8
  %1420 = inttoptr i64 %1419 to i64*
  store i64 %1417, i64* %1420, align 8
  store i64 %1419, i64* %6, align 8
  store i64 %1416, i64* %3, align 8
  %call2_41805d = tail call %struct.Memory* @sub_402490.biari_init_context(%struct.State* nonnull %0, i64 %1416, %struct.Memory* %2)
  %1421 = load i64, i64* %3, align 8
  %1422 = add i64 %1421, 109
  store i64 %1422, i64* %3, align 8
  br label %block_.L_4180cf

block_.L_418067:                                  ; preds = %block_417fe8
  store i64 ptrtoint (%G__0x4b39a0_type* @G__0x4b39a0 to i64), i64* %RAX.i2255, align 8
  %1423 = add i64 %1166, -8
  %1424 = add i64 %1221, 14
  store i64 %1424, i64* %3, align 8
  %1425 = inttoptr i64 %1423 to i64*
  %1426 = load i64, i64* %1425, align 8
  %1427 = add i64 %1426, 816
  store i64 %1427, i64* %RCX.i2165, align 8
  %1428 = icmp ugt i64 %1426, -817
  %1429 = zext i1 %1428 to i8
  store i8 %1429, i8* %14, align 1
  %1430 = trunc i64 %1427 to i32
  %1431 = and i32 %1430, 255
  %1432 = tail call i32 @llvm.ctpop.i32(i32 %1431)
  %1433 = trunc i32 %1432 to i8
  %1434 = and i8 %1433, 1
  %1435 = xor i8 %1434, 1
  store i8 %1435, i8* %21, align 1
  %1436 = xor i64 %1426, 16
  %1437 = xor i64 %1436, %1427
  %1438 = lshr i64 %1437, 4
  %1439 = trunc i64 %1438 to i8
  %1440 = and i8 %1439, 1
  store i8 %1440, i8* %26, align 1
  %1441 = icmp eq i64 %1427, 0
  %1442 = zext i1 %1441 to i8
  store i8 %1442, i8* %29, align 1
  %1443 = lshr i64 %1427, 63
  %1444 = trunc i64 %1443 to i8
  store i8 %1444, i8* %32, align 1
  %1445 = lshr i64 %1426, 63
  %1446 = xor i64 %1443, %1445
  %1447 = add nuw nsw i64 %1446, %1443
  %1448 = icmp eq i64 %1447, 2
  %1449 = zext i1 %1448 to i8
  store i8 %1449, i8* %38, align 1
  %1450 = add i64 %1166, -20
  %1451 = add i64 %1221, 25
  store i64 %1451, i64* %3, align 8
  %1452 = inttoptr i64 %1450 to i32*
  %1453 = load i32, i32* %1452, align 4
  %1454 = sext i32 %1453 to i64
  %1455 = mul nsw i64 %1454, 160
  store i64 %1455, i64* %RDX.i2162, align 8
  %1456 = lshr i64 %1455, 63
  %1457 = add i64 %1455, %1427
  store i64 %1457, i64* %RCX.i2165, align 8
  %1458 = icmp ult i64 %1457, %1427
  %1459 = icmp ult i64 %1457, %1455
  %1460 = or i1 %1458, %1459
  %1461 = zext i1 %1460 to i8
  store i8 %1461, i8* %14, align 1
  %1462 = trunc i64 %1457 to i32
  %1463 = and i32 %1462, 255
  %1464 = tail call i32 @llvm.ctpop.i32(i32 %1463)
  %1465 = trunc i32 %1464 to i8
  %1466 = and i8 %1465, 1
  %1467 = xor i8 %1466, 1
  store i8 %1467, i8* %21, align 1
  %1468 = xor i64 %1427, %1457
  %1469 = lshr i64 %1468, 4
  %1470 = trunc i64 %1469 to i8
  %1471 = and i8 %1470, 1
  store i8 %1471, i8* %26, align 1
  %1472 = icmp eq i64 %1457, 0
  %1473 = zext i1 %1472 to i8
  store i8 %1473, i8* %29, align 1
  %1474 = lshr i64 %1457, 63
  %1475 = trunc i64 %1474 to i8
  store i8 %1475, i8* %32, align 1
  %1476 = xor i64 %1474, %1443
  %1477 = xor i64 %1474, %1456
  %1478 = add nuw nsw i64 %1476, %1477
  %1479 = icmp eq i64 %1478, 2
  %1480 = zext i1 %1479 to i8
  store i8 %1480, i8* %38, align 1
  %1481 = load i64, i64* %RBP.i, align 8
  %1482 = add i64 %1481, -24
  %1483 = add i64 %1221, 39
  store i64 %1483, i64* %3, align 8
  %1484 = inttoptr i64 %1482 to i32*
  %1485 = load i32, i32* %1484, align 4
  %1486 = sext i32 %1485 to i64
  %1487 = shl nsw i64 %1486, 4
  %1488 = add i64 %1487, %1457
  store i64 %1488, i64* %RCX.i2165, align 8
  %1489 = icmp ult i64 %1488, %1457
  %1490 = icmp ult i64 %1488, %1487
  %1491 = or i1 %1489, %1490
  %1492 = zext i1 %1491 to i8
  store i8 %1492, i8* %14, align 1
  %1493 = trunc i64 %1488 to i32
  %1494 = and i32 %1493, 255
  %1495 = tail call i32 @llvm.ctpop.i32(i32 %1494)
  %1496 = trunc i32 %1495 to i8
  %1497 = and i8 %1496, 1
  %1498 = xor i8 %1497, 1
  store i8 %1498, i8* %21, align 1
  %1499 = xor i64 %1487, %1457
  %1500 = xor i64 %1499, %1488
  %1501 = lshr i64 %1500, 4
  %1502 = trunc i64 %1501 to i8
  %1503 = and i8 %1502, 1
  store i8 %1503, i8* %26, align 1
  %1504 = icmp eq i64 %1488, 0
  %1505 = zext i1 %1504 to i8
  store i8 %1505, i8* %29, align 1
  %1506 = lshr i64 %1488, 63
  %1507 = trunc i64 %1506 to i8
  store i8 %1507, i8* %32, align 1
  %1508 = lshr i64 %1486, 59
  %1509 = and i64 %1508, 1
  %1510 = xor i64 %1506, %1474
  %1511 = xor i64 %1506, %1509
  %1512 = add nuw nsw i64 %1510, %1511
  %1513 = icmp eq i64 %1512, 2
  %1514 = zext i1 %1513 to i8
  store i8 %1514, i8* %38, align 1
  %1515 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*), align 8
  store i64 %1515, i64* %RDX.i2162, align 8
  %1516 = add i64 %1515, 72520
  %1517 = add i64 %1221, 61
  store i64 %1517, i64* %3, align 8
  %1518 = inttoptr i64 %1516 to i32*
  %1519 = load i32, i32* %1518, align 4
  %1520 = sext i32 %1519 to i64
  %1521 = mul nsw i64 %1520, 160
  store i64 %1521, i64* %RDX.i2162, align 8
  %1522 = lshr i64 %1521, 63
  %1523 = load i64, i64* %RAX.i2255, align 8
  %1524 = add i64 %1521, %1523
  store i64 %1524, i64* %RAX.i2255, align 8
  %1525 = icmp ult i64 %1524, %1523
  %1526 = icmp ult i64 %1524, %1521
  %1527 = or i1 %1525, %1526
  %1528 = zext i1 %1527 to i8
  store i8 %1528, i8* %14, align 1
  %1529 = trunc i64 %1524 to i32
  %1530 = and i32 %1529, 255
  %1531 = tail call i32 @llvm.ctpop.i32(i32 %1530)
  %1532 = trunc i32 %1531 to i8
  %1533 = and i8 %1532, 1
  %1534 = xor i8 %1533, 1
  store i8 %1534, i8* %21, align 1
  %1535 = xor i64 %1523, %1524
  %1536 = lshr i64 %1535, 4
  %1537 = trunc i64 %1536 to i8
  %1538 = and i8 %1537, 1
  store i8 %1538, i8* %26, align 1
  %1539 = icmp eq i64 %1524, 0
  %1540 = zext i1 %1539 to i8
  store i8 %1540, i8* %29, align 1
  %1541 = lshr i64 %1524, 63
  %1542 = trunc i64 %1541 to i8
  store i8 %1542, i8* %32, align 1
  %1543 = lshr i64 %1523, 63
  %1544 = xor i64 %1541, %1543
  %1545 = xor i64 %1541, %1522
  %1546 = add nuw nsw i64 %1544, %1545
  %1547 = icmp eq i64 %1546, 2
  %1548 = zext i1 %1547 to i8
  store i8 %1548, i8* %38, align 1
  %1549 = load i64, i64* %RBP.i, align 8
  %1550 = add i64 %1549, -20
  %1551 = add i64 %1221, 75
  store i64 %1551, i64* %3, align 8
  %1552 = inttoptr i64 %1550 to i32*
  %1553 = load i32, i32* %1552, align 4
  %1554 = sext i32 %1553 to i64
  %1555 = mul nsw i64 %1554, 80
  store i64 %1555, i64* %RDX.i2162, align 8
  %1556 = lshr i64 %1555, 63
  %1557 = add i64 %1555, %1524
  store i64 %1557, i64* %RAX.i2255, align 8
  %1558 = icmp ult i64 %1557, %1524
  %1559 = icmp ult i64 %1557, %1555
  %1560 = or i1 %1558, %1559
  %1561 = zext i1 %1560 to i8
  store i8 %1561, i8* %14, align 1
  %1562 = trunc i64 %1557 to i32
  %1563 = and i32 %1562, 255
  %1564 = tail call i32 @llvm.ctpop.i32(i32 %1563)
  %1565 = trunc i32 %1564 to i8
  %1566 = and i8 %1565, 1
  %1567 = xor i8 %1566, 1
  store i8 %1567, i8* %21, align 1
  %1568 = xor i64 %1555, %1524
  %1569 = xor i64 %1568, %1557
  %1570 = lshr i64 %1569, 4
  %1571 = trunc i64 %1570 to i8
  %1572 = and i8 %1571, 1
  store i8 %1572, i8* %26, align 1
  %1573 = icmp eq i64 %1557, 0
  %1574 = zext i1 %1573 to i8
  store i8 %1574, i8* %29, align 1
  %1575 = lshr i64 %1557, 63
  %1576 = trunc i64 %1575 to i8
  store i8 %1576, i8* %32, align 1
  %1577 = xor i64 %1575, %1541
  %1578 = xor i64 %1575, %1556
  %1579 = add nuw nsw i64 %1577, %1578
  %1580 = icmp eq i64 %1579, 2
  %1581 = zext i1 %1580 to i8
  store i8 %1581, i8* %38, align 1
  %1582 = add i64 %1549, -24
  %1583 = add i64 %1221, 86
  store i64 %1583, i64* %3, align 8
  %1584 = inttoptr i64 %1582 to i32*
  %1585 = load i32, i32* %1584, align 4
  %1586 = sext i32 %1585 to i64
  %1587 = shl nsw i64 %1586, 3
  store i64 %1587, i64* %RDX.i2162, align 8
  %1588 = add i64 %1587, %1557
  store i64 %1588, i64* %RAX.i2255, align 8
  %1589 = icmp ult i64 %1588, %1557
  %1590 = icmp ult i64 %1588, %1587
  %1591 = or i1 %1589, %1590
  %1592 = zext i1 %1591 to i8
  store i8 %1592, i8* %14, align 1
  %1593 = trunc i64 %1588 to i32
  %1594 = and i32 %1593, 255
  %1595 = tail call i32 @llvm.ctpop.i32(i32 %1594)
  %1596 = trunc i32 %1595 to i8
  %1597 = and i8 %1596, 1
  %1598 = xor i8 %1597, 1
  store i8 %1598, i8* %21, align 1
  %1599 = xor i64 %1587, %1557
  %1600 = xor i64 %1599, %1588
  %1601 = lshr i64 %1600, 4
  %1602 = trunc i64 %1601 to i8
  %1603 = and i8 %1602, 1
  store i8 %1603, i8* %26, align 1
  %1604 = icmp eq i64 %1588, 0
  %1605 = zext i1 %1604 to i8
  store i8 %1605, i8* %29, align 1
  %1606 = lshr i64 %1588, 63
  %1607 = trunc i64 %1606 to i8
  store i8 %1607, i8* %32, align 1
  %1608 = lshr i64 %1586, 60
  %1609 = and i64 %1608, 1
  %1610 = xor i64 %1606, %1575
  %1611 = xor i64 %1606, %1609
  %1612 = add nuw nsw i64 %1610, %1611
  %1613 = icmp eq i64 %1612, 2
  %1614 = zext i1 %1613 to i8
  store i8 %1614, i8* %38, align 1
  %1615 = load i64, i64* %RCX.i2165, align 8
  store i64 %1615, i64* %RDI.i2122, align 8
  store i64 %1588, i64* %RSI.i2119, align 8
  %1616 = add i64 %1221, -89047
  %1617 = add i64 %1221, 104
  %1618 = load i64, i64* %6, align 8
  %1619 = add i64 %1618, -8
  %1620 = inttoptr i64 %1619 to i64*
  store i64 %1617, i64* %1620, align 8
  store i64 %1619, i64* %6, align 8
  store i64 %1616, i64* %3, align 8
  %call2_4180ca = tail call %struct.Memory* @sub_402490.biari_init_context(%struct.State* nonnull %0, i64 %1616, %struct.Memory* %2)
  %.pre245 = load i64, i64* %3, align 8
  br label %block_.L_4180cf

block_.L_4180cf:                                  ; preds = %block_.L_418067, %block_417ffa
  %1621 = phi i64 [ %.pre245, %block_.L_418067 ], [ %1422, %block_417ffa ]
  %1622 = load i64, i64* %RBP.i, align 8
  %1623 = add i64 %1622, -24
  %1624 = add i64 %1621, 8
  store i64 %1624, i64* %3, align 8
  %1625 = inttoptr i64 %1623 to i32*
  %1626 = load i32, i32* %1625, align 4
  %1627 = add i32 %1626, 1
  %1628 = zext i32 %1627 to i64
  store i64 %1628, i64* %RAX.i2255, align 8
  %1629 = icmp eq i32 %1626, -1
  %1630 = icmp eq i32 %1627, 0
  %1631 = or i1 %1629, %1630
  %1632 = zext i1 %1631 to i8
  store i8 %1632, i8* %14, align 1
  %1633 = and i32 %1627, 255
  %1634 = tail call i32 @llvm.ctpop.i32(i32 %1633)
  %1635 = trunc i32 %1634 to i8
  %1636 = and i8 %1635, 1
  %1637 = xor i8 %1636, 1
  store i8 %1637, i8* %21, align 1
  %1638 = xor i32 %1627, %1626
  %1639 = lshr i32 %1638, 4
  %1640 = trunc i32 %1639 to i8
  %1641 = and i8 %1640, 1
  store i8 %1641, i8* %26, align 1
  %1642 = zext i1 %1630 to i8
  store i8 %1642, i8* %29, align 1
  %1643 = lshr i32 %1627, 31
  %1644 = trunc i32 %1643 to i8
  store i8 %1644, i8* %32, align 1
  %1645 = lshr i32 %1626, 31
  %1646 = xor i32 %1643, %1645
  %1647 = add nuw nsw i32 %1646, %1643
  %1648 = icmp eq i32 %1647, 2
  %1649 = zext i1 %1648 to i8
  store i8 %1649, i8* %38, align 1
  %1650 = add i64 %1621, 14
  store i64 %1650, i64* %3, align 8
  store i32 %1627, i32* %1625, align 4
  %1651 = load i64, i64* %3, align 8
  %1652 = add i64 %1651, -255
  store i64 %1652, i64* %3, align 8
  br label %block_.L_417fde

block_.L_4180e2:                                  ; preds = %block_.L_417fde
  %1653 = add i64 %1166, -20
  %1654 = add i64 %1194, 8
  store i64 %1654, i64* %3, align 8
  %1655 = inttoptr i64 %1653 to i32*
  %1656 = load i32, i32* %1655, align 4
  %1657 = add i32 %1656, 1
  %1658 = zext i32 %1657 to i64
  store i64 %1658, i64* %RAX.i2255, align 8
  %1659 = icmp eq i32 %1656, -1
  %1660 = icmp eq i32 %1657, 0
  %1661 = or i1 %1659, %1660
  %1662 = zext i1 %1661 to i8
  store i8 %1662, i8* %14, align 1
  %1663 = and i32 %1657, 255
  %1664 = tail call i32 @llvm.ctpop.i32(i32 %1663)
  %1665 = trunc i32 %1664 to i8
  %1666 = and i8 %1665, 1
  %1667 = xor i8 %1666, 1
  store i8 %1667, i8* %21, align 1
  %1668 = xor i32 %1657, %1656
  %1669 = lshr i32 %1668, 4
  %1670 = trunc i32 %1669 to i8
  %1671 = and i8 %1670, 1
  store i8 %1671, i8* %26, align 1
  %1672 = zext i1 %1660 to i8
  store i8 %1672, i8* %29, align 1
  %1673 = lshr i32 %1657, 31
  %1674 = trunc i32 %1673 to i8
  store i8 %1674, i8* %32, align 1
  %1675 = lshr i32 %1656, 31
  %1676 = xor i32 %1673, %1675
  %1677 = add nuw nsw i32 %1676, %1673
  %1678 = icmp eq i32 %1677, 2
  %1679 = zext i1 %1678 to i8
  store i8 %1679, i8* %38, align 1
  %1680 = add i64 %1194, 14
  store i64 %1680, i64* %3, align 8
  store i32 %1657, i32* %1655, align 4
  %1681 = load i64, i64* %3, align 8
  %1682 = add i64 %1681, -291
  store i64 %1682, i64* %3, align 8
  br label %block_.L_417fcd

block_.L_4180f5:                                  ; preds = %block_.L_417fcd
  %1683 = add i64 %1161, 7
  store i64 %1683, i64* %3, align 8
  store i32 0, i32* %1136, align 4
  %.pre207 = load i64, i64* %3, align 8
  br label %block_.L_4180fc

block_.L_4180fc:                                  ; preds = %block_.L_418205, %block_.L_4180f5
  %1684 = phi i64 [ %.pre207, %block_.L_4180f5 ], [ %2234, %block_.L_418205 ]
  %1685 = load i64, i64* %RBP.i, align 8
  %1686 = add i64 %1685, -20
  %1687 = add i64 %1684, 4
  store i64 %1687, i64* %3, align 8
  %1688 = inttoptr i64 %1686 to i32*
  %1689 = load i32, i32* %1688, align 4
  %1690 = add i32 %1689, -2
  %1691 = icmp ult i32 %1689, 2
  %1692 = zext i1 %1691 to i8
  store i8 %1692, i8* %14, align 1
  %1693 = and i32 %1690, 255
  %1694 = tail call i32 @llvm.ctpop.i32(i32 %1693)
  %1695 = trunc i32 %1694 to i8
  %1696 = and i8 %1695, 1
  %1697 = xor i8 %1696, 1
  store i8 %1697, i8* %21, align 1
  %1698 = xor i32 %1690, %1689
  %1699 = lshr i32 %1698, 4
  %1700 = trunc i32 %1699 to i8
  %1701 = and i8 %1700, 1
  store i8 %1701, i8* %26, align 1
  %1702 = icmp eq i32 %1690, 0
  %1703 = zext i1 %1702 to i8
  store i8 %1703, i8* %29, align 1
  %1704 = lshr i32 %1690, 31
  %1705 = trunc i32 %1704 to i8
  store i8 %1705, i8* %32, align 1
  %1706 = lshr i32 %1689, 31
  %1707 = xor i32 %1704, %1706
  %1708 = add nuw nsw i32 %1707, %1706
  %1709 = icmp eq i32 %1708, 2
  %1710 = zext i1 %1709 to i8
  store i8 %1710, i8* %38, align 1
  %1711 = icmp ne i8 %1705, 0
  %1712 = xor i1 %1711, %1709
  %.v = select i1 %1712, i64 10, i64 284
  %1713 = add i64 %1684, %.v
  %1714 = add i64 %1685, -24
  %1715 = add i64 %1713, 7
  store i64 %1715, i64* %3, align 8
  %1716 = inttoptr i64 %1714 to i32*
  store i32 0, i32* %1716, align 4
  %.pre242 = load i64, i64* %3, align 8
  br i1 %1712, label %block_.L_41810d.preheader, label %block_.L_41821f.preheader

block_.L_41810d.preheader:                        ; preds = %block_.L_4180fc
  br label %block_.L_41810d

block_.L_41821f.preheader:                        ; preds = %block_.L_4180fc
  br label %block_.L_41821f

block_.L_41810d:                                  ; preds = %block_.L_41810d.preheader, %block_.L_4181f2
  %1717 = phi i64 [ %2204, %block_.L_4181f2 ], [ %.pre242, %block_.L_41810d.preheader ]
  %1718 = load i64, i64* %RBP.i, align 8
  %1719 = add i64 %1718, -24
  %1720 = add i64 %1717, 4
  store i64 %1720, i64* %3, align 8
  %1721 = inttoptr i64 %1719 to i32*
  %1722 = load i32, i32* %1721, align 4
  %1723 = add i32 %1722, -6
  %1724 = icmp ult i32 %1722, 6
  %1725 = zext i1 %1724 to i8
  store i8 %1725, i8* %14, align 1
  %1726 = and i32 %1723, 255
  %1727 = tail call i32 @llvm.ctpop.i32(i32 %1726)
  %1728 = trunc i32 %1727 to i8
  %1729 = and i8 %1728, 1
  %1730 = xor i8 %1729, 1
  store i8 %1730, i8* %21, align 1
  %1731 = xor i32 %1723, %1722
  %1732 = lshr i32 %1731, 4
  %1733 = trunc i32 %1732 to i8
  %1734 = and i8 %1733, 1
  store i8 %1734, i8* %26, align 1
  %1735 = icmp eq i32 %1723, 0
  %1736 = zext i1 %1735 to i8
  store i8 %1736, i8* %29, align 1
  %1737 = lshr i32 %1723, 31
  %1738 = trunc i32 %1737 to i8
  store i8 %1738, i8* %32, align 1
  %1739 = lshr i32 %1722, 31
  %1740 = xor i32 %1737, %1739
  %1741 = add nuw nsw i32 %1740, %1739
  %1742 = icmp eq i32 %1741, 2
  %1743 = zext i1 %1742 to i8
  store i8 %1743, i8* %38, align 1
  %1744 = icmp ne i8 %1738, 0
  %1745 = xor i1 %1744, %1742
  %.v258 = select i1 %1745, i64 10, i64 248
  %1746 = add i64 %1717, %.v258
  store i64 %1746, i64* %3, align 8
  br i1 %1745, label %block_418117, label %block_.L_418205

block_418117:                                     ; preds = %block_.L_41810d
  %1747 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*), align 8
  store i64 %1747, i64* %RAX.i2255, align 8
  %1748 = add i64 %1747, 24
  %1749 = add i64 %1746, 12
  store i64 %1749, i64* %3, align 8
  %1750 = inttoptr i64 %1748 to i32*
  %1751 = load i32, i32* %1750, align 4
  %1752 = add i32 %1751, -2
  %1753 = icmp ult i32 %1751, 2
  %1754 = zext i1 %1753 to i8
  store i8 %1754, i8* %14, align 1
  %1755 = and i32 %1752, 255
  %1756 = tail call i32 @llvm.ctpop.i32(i32 %1755)
  %1757 = trunc i32 %1756 to i8
  %1758 = and i8 %1757, 1
  %1759 = xor i8 %1758, 1
  store i8 %1759, i8* %21, align 1
  %1760 = xor i32 %1752, %1751
  %1761 = lshr i32 %1760, 4
  %1762 = trunc i32 %1761 to i8
  %1763 = and i8 %1762, 1
  store i8 %1763, i8* %26, align 1
  %1764 = icmp eq i32 %1752, 0
  %1765 = zext i1 %1764 to i8
  store i8 %1765, i8* %29, align 1
  %1766 = lshr i32 %1752, 31
  %1767 = trunc i32 %1766 to i8
  store i8 %1767, i8* %32, align 1
  %1768 = lshr i32 %1751, 31
  %1769 = xor i32 %1766, %1768
  %1770 = add nuw nsw i32 %1769, %1768
  %1771 = icmp eq i32 %1770, 2
  %1772 = zext i1 %1771 to i8
  store i8 %1772, i8* %38, align 1
  %.v291 = select i1 %1764, i64 18, i64 121
  %1773 = add i64 %1746, %.v291
  %1774 = add i64 %1773, 10
  store i64 %1774, i64* %3, align 8
  br i1 %1764, label %block_418129, label %block_.L_418190

block_418129:                                     ; preds = %block_418117
  store i64 ptrtoint (%G__0x4b3b80_type* @G__0x4b3b80 to i64), i64* %RAX.i2255, align 8
  %1775 = add i64 %1718, -8
  %1776 = add i64 %1773, 14
  store i64 %1776, i64* %3, align 8
  %1777 = inttoptr i64 %1775 to i64*
  %1778 = load i64, i64* %1777, align 8
  %1779 = add i64 %1778, 1136
  store i64 %1779, i64* %RCX.i2165, align 8
  %1780 = icmp ugt i64 %1778, -1137
  %1781 = zext i1 %1780 to i8
  store i8 %1781, i8* %14, align 1
  %1782 = trunc i64 %1779 to i32
  %1783 = and i32 %1782, 255
  %1784 = tail call i32 @llvm.ctpop.i32(i32 %1783)
  %1785 = trunc i32 %1784 to i8
  %1786 = and i8 %1785, 1
  %1787 = xor i8 %1786, 1
  store i8 %1787, i8* %21, align 1
  %1788 = xor i64 %1778, 16
  %1789 = xor i64 %1788, %1779
  %1790 = lshr i64 %1789, 4
  %1791 = trunc i64 %1790 to i8
  %1792 = and i8 %1791, 1
  store i8 %1792, i8* %26, align 1
  %1793 = icmp eq i64 %1779, 0
  %1794 = zext i1 %1793 to i8
  store i8 %1794, i8* %29, align 1
  %1795 = lshr i64 %1779, 63
  %1796 = trunc i64 %1795 to i8
  store i8 %1796, i8* %32, align 1
  %1797 = lshr i64 %1778, 63
  %1798 = xor i64 %1795, %1797
  %1799 = add nuw nsw i64 %1798, %1795
  %1800 = icmp eq i64 %1799, 2
  %1801 = zext i1 %1800 to i8
  store i8 %1801, i8* %38, align 1
  %1802 = add i64 %1718, -20
  %1803 = add i64 %1773, 25
  store i64 %1803, i64* %3, align 8
  %1804 = inttoptr i64 %1802 to i32*
  %1805 = load i32, i32* %1804, align 4
  %1806 = sext i32 %1805 to i64
  %1807 = mul nsw i64 %1806, 96
  store i64 %1807, i64* %RDX.i2162, align 8
  %1808 = lshr i64 %1807, 63
  %1809 = add i64 %1807, %1779
  store i64 %1809, i64* %RCX.i2165, align 8
  %1810 = icmp ult i64 %1809, %1779
  %1811 = icmp ult i64 %1809, %1807
  %1812 = or i1 %1810, %1811
  %1813 = zext i1 %1812 to i8
  store i8 %1813, i8* %14, align 1
  %1814 = trunc i64 %1809 to i32
  %1815 = and i32 %1814, 255
  %1816 = tail call i32 @llvm.ctpop.i32(i32 %1815)
  %1817 = trunc i32 %1816 to i8
  %1818 = and i8 %1817, 1
  %1819 = xor i8 %1818, 1
  store i8 %1819, i8* %21, align 1
  %1820 = xor i64 %1779, %1809
  %1821 = lshr i64 %1820, 4
  %1822 = trunc i64 %1821 to i8
  %1823 = and i8 %1822, 1
  store i8 %1823, i8* %26, align 1
  %1824 = icmp eq i64 %1809, 0
  %1825 = zext i1 %1824 to i8
  store i8 %1825, i8* %29, align 1
  %1826 = lshr i64 %1809, 63
  %1827 = trunc i64 %1826 to i8
  store i8 %1827, i8* %32, align 1
  %1828 = xor i64 %1826, %1795
  %1829 = xor i64 %1826, %1808
  %1830 = add nuw nsw i64 %1828, %1829
  %1831 = icmp eq i64 %1830, 2
  %1832 = zext i1 %1831 to i8
  store i8 %1832, i8* %38, align 1
  %1833 = load i64, i64* %RBP.i, align 8
  %1834 = add i64 %1833, -24
  %1835 = add i64 %1773, 36
  store i64 %1835, i64* %3, align 8
  %1836 = inttoptr i64 %1834 to i32*
  %1837 = load i32, i32* %1836, align 4
  %1838 = sext i32 %1837 to i64
  %1839 = shl nsw i64 %1838, 4
  %1840 = add i64 %1839, %1809
  store i64 %1840, i64* %RCX.i2165, align 8
  %1841 = icmp ult i64 %1840, %1809
  %1842 = icmp ult i64 %1840, %1839
  %1843 = or i1 %1841, %1842
  %1844 = zext i1 %1843 to i8
  store i8 %1844, i8* %14, align 1
  %1845 = trunc i64 %1840 to i32
  %1846 = and i32 %1845, 255
  %1847 = tail call i32 @llvm.ctpop.i32(i32 %1846)
  %1848 = trunc i32 %1847 to i8
  %1849 = and i8 %1848, 1
  %1850 = xor i8 %1849, 1
  store i8 %1850, i8* %21, align 1
  %1851 = xor i64 %1839, %1809
  %1852 = xor i64 %1851, %1840
  %1853 = lshr i64 %1852, 4
  %1854 = trunc i64 %1853 to i8
  %1855 = and i8 %1854, 1
  store i8 %1855, i8* %26, align 1
  %1856 = icmp eq i64 %1840, 0
  %1857 = zext i1 %1856 to i8
  store i8 %1857, i8* %29, align 1
  %1858 = lshr i64 %1840, 63
  %1859 = trunc i64 %1858 to i8
  store i8 %1859, i8* %32, align 1
  %1860 = lshr i64 %1838, 59
  %1861 = and i64 %1860, 1
  %1862 = xor i64 %1858, %1826
  %1863 = xor i64 %1858, %1861
  %1864 = add nuw nsw i64 %1862, %1863
  %1865 = icmp eq i64 %1864, 2
  %1866 = zext i1 %1865 to i8
  store i8 %1866, i8* %38, align 1
  %1867 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*), align 8
  store i64 %1867, i64* %RDX.i2162, align 8
  %1868 = add i64 %1867, 72520
  %1869 = add i64 %1773, 58
  store i64 %1869, i64* %3, align 8
  %1870 = inttoptr i64 %1868 to i32*
  %1871 = load i32, i32* %1870, align 4
  %1872 = sext i32 %1871 to i64
  %1873 = mul nsw i64 %1872, 96
  store i64 %1873, i64* %RDX.i2162, align 8
  %1874 = lshr i64 %1873, 63
  %1875 = load i64, i64* %RAX.i2255, align 8
  %1876 = add i64 %1873, %1875
  store i64 %1876, i64* %RAX.i2255, align 8
  %1877 = icmp ult i64 %1876, %1875
  %1878 = icmp ult i64 %1876, %1873
  %1879 = or i1 %1877, %1878
  %1880 = zext i1 %1879 to i8
  store i8 %1880, i8* %14, align 1
  %1881 = trunc i64 %1876 to i32
  %1882 = and i32 %1881, 255
  %1883 = tail call i32 @llvm.ctpop.i32(i32 %1882)
  %1884 = trunc i32 %1883 to i8
  %1885 = and i8 %1884, 1
  %1886 = xor i8 %1885, 1
  store i8 %1886, i8* %21, align 1
  %1887 = xor i64 %1875, %1876
  %1888 = lshr i64 %1887, 4
  %1889 = trunc i64 %1888 to i8
  %1890 = and i8 %1889, 1
  store i8 %1890, i8* %26, align 1
  %1891 = icmp eq i64 %1876, 0
  %1892 = zext i1 %1891 to i8
  store i8 %1892, i8* %29, align 1
  %1893 = lshr i64 %1876, 63
  %1894 = trunc i64 %1893 to i8
  store i8 %1894, i8* %32, align 1
  %1895 = lshr i64 %1875, 63
  %1896 = xor i64 %1893, %1895
  %1897 = xor i64 %1893, %1874
  %1898 = add nuw nsw i64 %1896, %1897
  %1899 = icmp eq i64 %1898, 2
  %1900 = zext i1 %1899 to i8
  store i8 %1900, i8* %38, align 1
  %1901 = load i64, i64* %RBP.i, align 8
  %1902 = add i64 %1901, -20
  %1903 = add i64 %1773, 69
  store i64 %1903, i64* %3, align 8
  %1904 = inttoptr i64 %1902 to i32*
  %1905 = load i32, i32* %1904, align 4
  %1906 = sext i32 %1905 to i64
  %1907 = mul nsw i64 %1906, 48
  store i64 %1907, i64* %RDX.i2162, align 8
  %1908 = lshr i64 %1907, 63
  %1909 = add i64 %1907, %1876
  store i64 %1909, i64* %RAX.i2255, align 8
  %1910 = icmp ult i64 %1909, %1876
  %1911 = icmp ult i64 %1909, %1907
  %1912 = or i1 %1910, %1911
  %1913 = zext i1 %1912 to i8
  store i8 %1913, i8* %14, align 1
  %1914 = trunc i64 %1909 to i32
  %1915 = and i32 %1914, 255
  %1916 = tail call i32 @llvm.ctpop.i32(i32 %1915)
  %1917 = trunc i32 %1916 to i8
  %1918 = and i8 %1917, 1
  %1919 = xor i8 %1918, 1
  store i8 %1919, i8* %21, align 1
  %1920 = xor i64 %1907, %1876
  %1921 = xor i64 %1920, %1909
  %1922 = lshr i64 %1921, 4
  %1923 = trunc i64 %1922 to i8
  %1924 = and i8 %1923, 1
  store i8 %1924, i8* %26, align 1
  %1925 = icmp eq i64 %1909, 0
  %1926 = zext i1 %1925 to i8
  store i8 %1926, i8* %29, align 1
  %1927 = lshr i64 %1909, 63
  %1928 = trunc i64 %1927 to i8
  store i8 %1928, i8* %32, align 1
  %1929 = xor i64 %1927, %1893
  %1930 = xor i64 %1927, %1908
  %1931 = add nuw nsw i64 %1929, %1930
  %1932 = icmp eq i64 %1931, 2
  %1933 = zext i1 %1932 to i8
  store i8 %1933, i8* %38, align 1
  %1934 = add i64 %1901, -24
  %1935 = add i64 %1773, 80
  store i64 %1935, i64* %3, align 8
  %1936 = inttoptr i64 %1934 to i32*
  %1937 = load i32, i32* %1936, align 4
  %1938 = sext i32 %1937 to i64
  %1939 = shl nsw i64 %1938, 3
  store i64 %1939, i64* %RDX.i2162, align 8
  %1940 = add i64 %1939, %1909
  store i64 %1940, i64* %RAX.i2255, align 8
  %1941 = icmp ult i64 %1940, %1909
  %1942 = icmp ult i64 %1940, %1939
  %1943 = or i1 %1941, %1942
  %1944 = zext i1 %1943 to i8
  store i8 %1944, i8* %14, align 1
  %1945 = trunc i64 %1940 to i32
  %1946 = and i32 %1945, 255
  %1947 = tail call i32 @llvm.ctpop.i32(i32 %1946)
  %1948 = trunc i32 %1947 to i8
  %1949 = and i8 %1948, 1
  %1950 = xor i8 %1949, 1
  store i8 %1950, i8* %21, align 1
  %1951 = xor i64 %1939, %1909
  %1952 = xor i64 %1951, %1940
  %1953 = lshr i64 %1952, 4
  %1954 = trunc i64 %1953 to i8
  %1955 = and i8 %1954, 1
  store i8 %1955, i8* %26, align 1
  %1956 = icmp eq i64 %1940, 0
  %1957 = zext i1 %1956 to i8
  store i8 %1957, i8* %29, align 1
  %1958 = lshr i64 %1940, 63
  %1959 = trunc i64 %1958 to i8
  store i8 %1959, i8* %32, align 1
  %1960 = lshr i64 %1938, 60
  %1961 = and i64 %1960, 1
  %1962 = xor i64 %1958, %1927
  %1963 = xor i64 %1958, %1961
  %1964 = add nuw nsw i64 %1962, %1963
  %1965 = icmp eq i64 %1964, 2
  %1966 = zext i1 %1965 to i8
  store i8 %1966, i8* %38, align 1
  %1967 = load i64, i64* %RCX.i2165, align 8
  store i64 %1967, i64* %RDI.i2122, align 8
  store i64 %1940, i64* %RSI.i2119, align 8
  %1968 = add i64 %1773, -89241
  %1969 = add i64 %1773, 98
  %1970 = load i64, i64* %6, align 8
  %1971 = add i64 %1970, -8
  %1972 = inttoptr i64 %1971 to i64*
  store i64 %1969, i64* %1972, align 8
  store i64 %1971, i64* %6, align 8
  store i64 %1968, i64* %3, align 8
  %call2_418186 = tail call %struct.Memory* @sub_402490.biari_init_context(%struct.State* nonnull %0, i64 %1968, %struct.Memory* %2)
  %1973 = load i64, i64* %3, align 8
  %1974 = add i64 %1973, 103
  store i64 %1974, i64* %3, align 8
  br label %block_.L_4181f2

block_.L_418190:                                  ; preds = %block_418117
  store i64 ptrtoint (%G__0x4b3be0_type* @G__0x4b3be0 to i64), i64* %RAX.i2255, align 8
  %1975 = add i64 %1718, -8
  %1976 = add i64 %1773, 14
  store i64 %1976, i64* %3, align 8
  %1977 = inttoptr i64 %1975 to i64*
  %1978 = load i64, i64* %1977, align 8
  %1979 = add i64 %1978, 1136
  store i64 %1979, i64* %RCX.i2165, align 8
  %1980 = icmp ugt i64 %1978, -1137
  %1981 = zext i1 %1980 to i8
  store i8 %1981, i8* %14, align 1
  %1982 = trunc i64 %1979 to i32
  %1983 = and i32 %1982, 255
  %1984 = tail call i32 @llvm.ctpop.i32(i32 %1983)
  %1985 = trunc i32 %1984 to i8
  %1986 = and i8 %1985, 1
  %1987 = xor i8 %1986, 1
  store i8 %1987, i8* %21, align 1
  %1988 = xor i64 %1978, 16
  %1989 = xor i64 %1988, %1979
  %1990 = lshr i64 %1989, 4
  %1991 = trunc i64 %1990 to i8
  %1992 = and i8 %1991, 1
  store i8 %1992, i8* %26, align 1
  %1993 = icmp eq i64 %1979, 0
  %1994 = zext i1 %1993 to i8
  store i8 %1994, i8* %29, align 1
  %1995 = lshr i64 %1979, 63
  %1996 = trunc i64 %1995 to i8
  store i8 %1996, i8* %32, align 1
  %1997 = lshr i64 %1978, 63
  %1998 = xor i64 %1995, %1997
  %1999 = add nuw nsw i64 %1998, %1995
  %2000 = icmp eq i64 %1999, 2
  %2001 = zext i1 %2000 to i8
  store i8 %2001, i8* %38, align 1
  %2002 = add i64 %1718, -20
  %2003 = add i64 %1773, 25
  store i64 %2003, i64* %3, align 8
  %2004 = inttoptr i64 %2002 to i32*
  %2005 = load i32, i32* %2004, align 4
  %2006 = sext i32 %2005 to i64
  %2007 = mul nsw i64 %2006, 96
  store i64 %2007, i64* %RDX.i2162, align 8
  %2008 = lshr i64 %2007, 63
  %2009 = add i64 %2007, %1979
  store i64 %2009, i64* %RCX.i2165, align 8
  %2010 = icmp ult i64 %2009, %1979
  %2011 = icmp ult i64 %2009, %2007
  %2012 = or i1 %2010, %2011
  %2013 = zext i1 %2012 to i8
  store i8 %2013, i8* %14, align 1
  %2014 = trunc i64 %2009 to i32
  %2015 = and i32 %2014, 255
  %2016 = tail call i32 @llvm.ctpop.i32(i32 %2015)
  %2017 = trunc i32 %2016 to i8
  %2018 = and i8 %2017, 1
  %2019 = xor i8 %2018, 1
  store i8 %2019, i8* %21, align 1
  %2020 = xor i64 %1979, %2009
  %2021 = lshr i64 %2020, 4
  %2022 = trunc i64 %2021 to i8
  %2023 = and i8 %2022, 1
  store i8 %2023, i8* %26, align 1
  %2024 = icmp eq i64 %2009, 0
  %2025 = zext i1 %2024 to i8
  store i8 %2025, i8* %29, align 1
  %2026 = lshr i64 %2009, 63
  %2027 = trunc i64 %2026 to i8
  store i8 %2027, i8* %32, align 1
  %2028 = xor i64 %2026, %1995
  %2029 = xor i64 %2026, %2008
  %2030 = add nuw nsw i64 %2028, %2029
  %2031 = icmp eq i64 %2030, 2
  %2032 = zext i1 %2031 to i8
  store i8 %2032, i8* %38, align 1
  %2033 = load i64, i64* %RBP.i, align 8
  %2034 = add i64 %2033, -24
  %2035 = add i64 %1773, 36
  store i64 %2035, i64* %3, align 8
  %2036 = inttoptr i64 %2034 to i32*
  %2037 = load i32, i32* %2036, align 4
  %2038 = sext i32 %2037 to i64
  %2039 = shl nsw i64 %2038, 4
  %2040 = add i64 %2039, %2009
  store i64 %2040, i64* %RCX.i2165, align 8
  %2041 = icmp ult i64 %2040, %2009
  %2042 = icmp ult i64 %2040, %2039
  %2043 = or i1 %2041, %2042
  %2044 = zext i1 %2043 to i8
  store i8 %2044, i8* %14, align 1
  %2045 = trunc i64 %2040 to i32
  %2046 = and i32 %2045, 255
  %2047 = tail call i32 @llvm.ctpop.i32(i32 %2046)
  %2048 = trunc i32 %2047 to i8
  %2049 = and i8 %2048, 1
  %2050 = xor i8 %2049, 1
  store i8 %2050, i8* %21, align 1
  %2051 = xor i64 %2039, %2009
  %2052 = xor i64 %2051, %2040
  %2053 = lshr i64 %2052, 4
  %2054 = trunc i64 %2053 to i8
  %2055 = and i8 %2054, 1
  store i8 %2055, i8* %26, align 1
  %2056 = icmp eq i64 %2040, 0
  %2057 = zext i1 %2056 to i8
  store i8 %2057, i8* %29, align 1
  %2058 = lshr i64 %2040, 63
  %2059 = trunc i64 %2058 to i8
  store i8 %2059, i8* %32, align 1
  %2060 = lshr i64 %2038, 59
  %2061 = and i64 %2060, 1
  %2062 = xor i64 %2058, %2026
  %2063 = xor i64 %2058, %2061
  %2064 = add nuw nsw i64 %2062, %2063
  %2065 = icmp eq i64 %2064, 2
  %2066 = zext i1 %2065 to i8
  store i8 %2066, i8* %38, align 1
  %2067 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*), align 8
  store i64 %2067, i64* %RDX.i2162, align 8
  %2068 = add i64 %2067, 72520
  %2069 = add i64 %1773, 58
  store i64 %2069, i64* %3, align 8
  %2070 = inttoptr i64 %2068 to i32*
  %2071 = load i32, i32* %2070, align 4
  %2072 = sext i32 %2071 to i64
  %2073 = mul nsw i64 %2072, 96
  store i64 %2073, i64* %RDX.i2162, align 8
  %2074 = lshr i64 %2073, 63
  %2075 = load i64, i64* %RAX.i2255, align 8
  %2076 = add i64 %2073, %2075
  store i64 %2076, i64* %RAX.i2255, align 8
  %2077 = icmp ult i64 %2076, %2075
  %2078 = icmp ult i64 %2076, %2073
  %2079 = or i1 %2077, %2078
  %2080 = zext i1 %2079 to i8
  store i8 %2080, i8* %14, align 1
  %2081 = trunc i64 %2076 to i32
  %2082 = and i32 %2081, 255
  %2083 = tail call i32 @llvm.ctpop.i32(i32 %2082)
  %2084 = trunc i32 %2083 to i8
  %2085 = and i8 %2084, 1
  %2086 = xor i8 %2085, 1
  store i8 %2086, i8* %21, align 1
  %2087 = xor i64 %2075, %2076
  %2088 = lshr i64 %2087, 4
  %2089 = trunc i64 %2088 to i8
  %2090 = and i8 %2089, 1
  store i8 %2090, i8* %26, align 1
  %2091 = icmp eq i64 %2076, 0
  %2092 = zext i1 %2091 to i8
  store i8 %2092, i8* %29, align 1
  %2093 = lshr i64 %2076, 63
  %2094 = trunc i64 %2093 to i8
  store i8 %2094, i8* %32, align 1
  %2095 = lshr i64 %2075, 63
  %2096 = xor i64 %2093, %2095
  %2097 = xor i64 %2093, %2074
  %2098 = add nuw nsw i64 %2096, %2097
  %2099 = icmp eq i64 %2098, 2
  %2100 = zext i1 %2099 to i8
  store i8 %2100, i8* %38, align 1
  %2101 = load i64, i64* %RBP.i, align 8
  %2102 = add i64 %2101, -20
  %2103 = add i64 %1773, 69
  store i64 %2103, i64* %3, align 8
  %2104 = inttoptr i64 %2102 to i32*
  %2105 = load i32, i32* %2104, align 4
  %2106 = sext i32 %2105 to i64
  %2107 = mul nsw i64 %2106, 48
  store i64 %2107, i64* %RDX.i2162, align 8
  %2108 = lshr i64 %2107, 63
  %2109 = add i64 %2107, %2076
  store i64 %2109, i64* %RAX.i2255, align 8
  %2110 = icmp ult i64 %2109, %2076
  %2111 = icmp ult i64 %2109, %2107
  %2112 = or i1 %2110, %2111
  %2113 = zext i1 %2112 to i8
  store i8 %2113, i8* %14, align 1
  %2114 = trunc i64 %2109 to i32
  %2115 = and i32 %2114, 255
  %2116 = tail call i32 @llvm.ctpop.i32(i32 %2115)
  %2117 = trunc i32 %2116 to i8
  %2118 = and i8 %2117, 1
  %2119 = xor i8 %2118, 1
  store i8 %2119, i8* %21, align 1
  %2120 = xor i64 %2107, %2076
  %2121 = xor i64 %2120, %2109
  %2122 = lshr i64 %2121, 4
  %2123 = trunc i64 %2122 to i8
  %2124 = and i8 %2123, 1
  store i8 %2124, i8* %26, align 1
  %2125 = icmp eq i64 %2109, 0
  %2126 = zext i1 %2125 to i8
  store i8 %2126, i8* %29, align 1
  %2127 = lshr i64 %2109, 63
  %2128 = trunc i64 %2127 to i8
  store i8 %2128, i8* %32, align 1
  %2129 = xor i64 %2127, %2093
  %2130 = xor i64 %2127, %2108
  %2131 = add nuw nsw i64 %2129, %2130
  %2132 = icmp eq i64 %2131, 2
  %2133 = zext i1 %2132 to i8
  store i8 %2133, i8* %38, align 1
  %2134 = add i64 %2101, -24
  %2135 = add i64 %1773, 80
  store i64 %2135, i64* %3, align 8
  %2136 = inttoptr i64 %2134 to i32*
  %2137 = load i32, i32* %2136, align 4
  %2138 = sext i32 %2137 to i64
  %2139 = shl nsw i64 %2138, 3
  store i64 %2139, i64* %RDX.i2162, align 8
  %2140 = add i64 %2139, %2109
  store i64 %2140, i64* %RAX.i2255, align 8
  %2141 = icmp ult i64 %2140, %2109
  %2142 = icmp ult i64 %2140, %2139
  %2143 = or i1 %2141, %2142
  %2144 = zext i1 %2143 to i8
  store i8 %2144, i8* %14, align 1
  %2145 = trunc i64 %2140 to i32
  %2146 = and i32 %2145, 255
  %2147 = tail call i32 @llvm.ctpop.i32(i32 %2146)
  %2148 = trunc i32 %2147 to i8
  %2149 = and i8 %2148, 1
  %2150 = xor i8 %2149, 1
  store i8 %2150, i8* %21, align 1
  %2151 = xor i64 %2139, %2109
  %2152 = xor i64 %2151, %2140
  %2153 = lshr i64 %2152, 4
  %2154 = trunc i64 %2153 to i8
  %2155 = and i8 %2154, 1
  store i8 %2155, i8* %26, align 1
  %2156 = icmp eq i64 %2140, 0
  %2157 = zext i1 %2156 to i8
  store i8 %2157, i8* %29, align 1
  %2158 = lshr i64 %2140, 63
  %2159 = trunc i64 %2158 to i8
  store i8 %2159, i8* %32, align 1
  %2160 = lshr i64 %2138, 60
  %2161 = and i64 %2160, 1
  %2162 = xor i64 %2158, %2127
  %2163 = xor i64 %2158, %2161
  %2164 = add nuw nsw i64 %2162, %2163
  %2165 = icmp eq i64 %2164, 2
  %2166 = zext i1 %2165 to i8
  store i8 %2166, i8* %38, align 1
  %2167 = load i64, i64* %RCX.i2165, align 8
  store i64 %2167, i64* %RDI.i2122, align 8
  store i64 %2140, i64* %RSI.i2119, align 8
  %2168 = add i64 %1773, -89344
  %2169 = add i64 %1773, 98
  %2170 = load i64, i64* %6, align 8
  %2171 = add i64 %2170, -8
  %2172 = inttoptr i64 %2171 to i64*
  store i64 %2169, i64* %2172, align 8
  store i64 %2171, i64* %6, align 8
  store i64 %2168, i64* %3, align 8
  %call2_4181ed = tail call %struct.Memory* @sub_402490.biari_init_context(%struct.State* nonnull %0, i64 %2168, %struct.Memory* %2)
  %.pre243 = load i64, i64* %3, align 8
  br label %block_.L_4181f2

block_.L_4181f2:                                  ; preds = %block_.L_418190, %block_418129
  %2173 = phi i64 [ %.pre243, %block_.L_418190 ], [ %1974, %block_418129 ]
  %2174 = load i64, i64* %RBP.i, align 8
  %2175 = add i64 %2174, -24
  %2176 = add i64 %2173, 8
  store i64 %2176, i64* %3, align 8
  %2177 = inttoptr i64 %2175 to i32*
  %2178 = load i32, i32* %2177, align 4
  %2179 = add i32 %2178, 1
  %2180 = zext i32 %2179 to i64
  store i64 %2180, i64* %RAX.i2255, align 8
  %2181 = icmp eq i32 %2178, -1
  %2182 = icmp eq i32 %2179, 0
  %2183 = or i1 %2181, %2182
  %2184 = zext i1 %2183 to i8
  store i8 %2184, i8* %14, align 1
  %2185 = and i32 %2179, 255
  %2186 = tail call i32 @llvm.ctpop.i32(i32 %2185)
  %2187 = trunc i32 %2186 to i8
  %2188 = and i8 %2187, 1
  %2189 = xor i8 %2188, 1
  store i8 %2189, i8* %21, align 1
  %2190 = xor i32 %2179, %2178
  %2191 = lshr i32 %2190, 4
  %2192 = trunc i32 %2191 to i8
  %2193 = and i8 %2192, 1
  store i8 %2193, i8* %26, align 1
  %2194 = zext i1 %2182 to i8
  store i8 %2194, i8* %29, align 1
  %2195 = lshr i32 %2179, 31
  %2196 = trunc i32 %2195 to i8
  store i8 %2196, i8* %32, align 1
  %2197 = lshr i32 %2178, 31
  %2198 = xor i32 %2195, %2197
  %2199 = add nuw nsw i32 %2198, %2195
  %2200 = icmp eq i32 %2199, 2
  %2201 = zext i1 %2200 to i8
  store i8 %2201, i8* %38, align 1
  %2202 = add i64 %2173, 14
  store i64 %2202, i64* %3, align 8
  store i32 %2179, i32* %2177, align 4
  %2203 = load i64, i64* %3, align 8
  %2204 = add i64 %2203, -243
  store i64 %2204, i64* %3, align 8
  br label %block_.L_41810d

block_.L_418205:                                  ; preds = %block_.L_41810d
  %2205 = add i64 %1718, -20
  %2206 = add i64 %1746, 8
  store i64 %2206, i64* %3, align 8
  %2207 = inttoptr i64 %2205 to i32*
  %2208 = load i32, i32* %2207, align 4
  %2209 = add i32 %2208, 1
  %2210 = zext i32 %2209 to i64
  store i64 %2210, i64* %RAX.i2255, align 8
  %2211 = icmp eq i32 %2208, -1
  %2212 = icmp eq i32 %2209, 0
  %2213 = or i1 %2211, %2212
  %2214 = zext i1 %2213 to i8
  store i8 %2214, i8* %14, align 1
  %2215 = and i32 %2209, 255
  %2216 = tail call i32 @llvm.ctpop.i32(i32 %2215)
  %2217 = trunc i32 %2216 to i8
  %2218 = and i8 %2217, 1
  %2219 = xor i8 %2218, 1
  store i8 %2219, i8* %21, align 1
  %2220 = xor i32 %2209, %2208
  %2221 = lshr i32 %2220, 4
  %2222 = trunc i32 %2221 to i8
  %2223 = and i8 %2222, 1
  store i8 %2223, i8* %26, align 1
  %2224 = zext i1 %2212 to i8
  store i8 %2224, i8* %29, align 1
  %2225 = lshr i32 %2209, 31
  %2226 = trunc i32 %2225 to i8
  store i8 %2226, i8* %32, align 1
  %2227 = lshr i32 %2208, 31
  %2228 = xor i32 %2225, %2227
  %2229 = add nuw nsw i32 %2228, %2225
  %2230 = icmp eq i32 %2229, 2
  %2231 = zext i1 %2230 to i8
  store i8 %2231, i8* %38, align 1
  %2232 = add i64 %1746, 14
  store i64 %2232, i64* %3, align 8
  store i32 %2209, i32* %2207, align 4
  %2233 = load i64, i64* %3, align 8
  %2234 = add i64 %2233, -279
  store i64 %2234, i64* %3, align 8
  br label %block_.L_4180fc

block_.L_41821f:                                  ; preds = %block_.L_41821f.preheader, %block_.L_4182d8
  %2235 = phi i64 [ %2592, %block_.L_4182d8 ], [ %.pre242, %block_.L_41821f.preheader ]
  %2236 = load i64, i64* %RBP.i, align 8
  %2237 = add i64 %2236, -24
  %2238 = add i64 %2235, 4
  store i64 %2238, i64* %3, align 8
  %2239 = inttoptr i64 %2237 to i32*
  %2240 = load i32, i32* %2239, align 4
  %2241 = add i32 %2240, -4
  %2242 = icmp ult i32 %2240, 4
  %2243 = zext i1 %2242 to i8
  store i8 %2243, i8* %14, align 1
  %2244 = and i32 %2241, 255
  %2245 = tail call i32 @llvm.ctpop.i32(i32 %2244)
  %2246 = trunc i32 %2245 to i8
  %2247 = and i8 %2246, 1
  %2248 = xor i8 %2247, 1
  store i8 %2248, i8* %21, align 1
  %2249 = xor i32 %2241, %2240
  %2250 = lshr i32 %2249, 4
  %2251 = trunc i32 %2250 to i8
  %2252 = and i8 %2251, 1
  store i8 %2252, i8* %26, align 1
  %2253 = icmp eq i32 %2241, 0
  %2254 = zext i1 %2253 to i8
  store i8 %2254, i8* %29, align 1
  %2255 = lshr i32 %2241, 31
  %2256 = trunc i32 %2255 to i8
  store i8 %2256, i8* %32, align 1
  %2257 = lshr i32 %2240, 31
  %2258 = xor i32 %2255, %2257
  %2259 = add nuw nsw i32 %2258, %2257
  %2260 = icmp eq i32 %2259, 2
  %2261 = zext i1 %2260 to i8
  store i8 %2261, i8* %38, align 1
  %2262 = icmp ne i8 %2256, 0
  %2263 = xor i1 %2262, %2260
  %.v265 = select i1 %2263, i64 10, i64 204
  %2264 = add i64 %2235, %.v265
  store i64 %2264, i64* %3, align 8
  br i1 %2263, label %block_418229, label %block_.L_4182eb

block_418229:                                     ; preds = %block_.L_41821f
  %2265 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*), align 8
  store i64 %2265, i64* %RAX.i2255, align 8
  %2266 = add i64 %2265, 24
  %2267 = add i64 %2264, 12
  store i64 %2267, i64* %3, align 8
  %2268 = inttoptr i64 %2266 to i32*
  %2269 = load i32, i32* %2268, align 4
  %2270 = add i32 %2269, -2
  %2271 = icmp ult i32 %2269, 2
  %2272 = zext i1 %2271 to i8
  store i8 %2272, i8* %14, align 1
  %2273 = and i32 %2270, 255
  %2274 = tail call i32 @llvm.ctpop.i32(i32 %2273)
  %2275 = trunc i32 %2274 to i8
  %2276 = and i8 %2275, 1
  %2277 = xor i8 %2276, 1
  store i8 %2277, i8* %21, align 1
  %2278 = xor i32 %2270, %2269
  %2279 = lshr i32 %2278, 4
  %2280 = trunc i32 %2279 to i8
  %2281 = and i8 %2280, 1
  store i8 %2281, i8* %26, align 1
  %2282 = icmp eq i32 %2270, 0
  %2283 = zext i1 %2282 to i8
  store i8 %2283, i8* %29, align 1
  %2284 = lshr i32 %2270, 31
  %2285 = trunc i32 %2284 to i8
  store i8 %2285, i8* %32, align 1
  %2286 = lshr i32 %2269, 31
  %2287 = xor i32 %2284, %2286
  %2288 = add nuw nsw i32 %2287, %2286
  %2289 = icmp eq i32 %2288, 2
  %2290 = zext i1 %2289 to i8
  store i8 %2290, i8* %38, align 1
  %.v290 = select i1 %2282, i64 18, i64 99
  %2291 = add i64 %2264, %.v290
  %2292 = add i64 %2291, 10
  store i64 %2292, i64* %3, align 8
  br i1 %2282, label %block_41823b, label %block_.L_41828c

block_41823b:                                     ; preds = %block_418229
  store i64 ptrtoint (%G__0x4b3d00_type* @G__0x4b3d00 to i64), i64* %RAX.i2255, align 8
  %2293 = add i64 %2236, -8
  %2294 = add i64 %2291, 14
  store i64 %2294, i64* %3, align 8
  %2295 = inttoptr i64 %2293 to i64*
  %2296 = load i64, i64* %2295, align 8
  %2297 = add i64 %2296, 1328
  store i64 %2297, i64* %RCX.i2165, align 8
  %2298 = icmp ugt i64 %2296, -1329
  %2299 = zext i1 %2298 to i8
  store i8 %2299, i8* %14, align 1
  %2300 = trunc i64 %2297 to i32
  %2301 = and i32 %2300, 255
  %2302 = tail call i32 @llvm.ctpop.i32(i32 %2301)
  %2303 = trunc i32 %2302 to i8
  %2304 = and i8 %2303, 1
  %2305 = xor i8 %2304, 1
  store i8 %2305, i8* %21, align 1
  %2306 = xor i64 %2296, 16
  %2307 = xor i64 %2306, %2297
  %2308 = lshr i64 %2307, 4
  %2309 = trunc i64 %2308 to i8
  %2310 = and i8 %2309, 1
  store i8 %2310, i8* %26, align 1
  %2311 = icmp eq i64 %2297, 0
  %2312 = zext i1 %2311 to i8
  store i8 %2312, i8* %29, align 1
  %2313 = lshr i64 %2297, 63
  %2314 = trunc i64 %2313 to i8
  store i8 %2314, i8* %32, align 1
  %2315 = lshr i64 %2296, 63
  %2316 = xor i64 %2313, %2315
  %2317 = add nuw nsw i64 %2316, %2313
  %2318 = icmp eq i64 %2317, 2
  %2319 = zext i1 %2318 to i8
  store i8 %2319, i8* %38, align 1
  %2320 = add i64 %2291, 25
  store i64 %2320, i64* %3, align 8
  %2321 = load i32, i32* %2239, align 4
  %2322 = sext i32 %2321 to i64
  %2323 = shl nsw i64 %2322, 4
  %2324 = add i64 %2323, %2297
  store i64 %2324, i64* %RCX.i2165, align 8
  %2325 = icmp ult i64 %2324, %2297
  %2326 = icmp ult i64 %2324, %2323
  %2327 = or i1 %2325, %2326
  %2328 = zext i1 %2327 to i8
  store i8 %2328, i8* %14, align 1
  %2329 = trunc i64 %2324 to i32
  %2330 = and i32 %2329, 255
  %2331 = tail call i32 @llvm.ctpop.i32(i32 %2330)
  %2332 = trunc i32 %2331 to i8
  %2333 = and i8 %2332, 1
  %2334 = xor i8 %2333, 1
  store i8 %2334, i8* %21, align 1
  %2335 = xor i64 %2323, %2297
  %2336 = xor i64 %2335, %2324
  %2337 = lshr i64 %2336, 4
  %2338 = trunc i64 %2337 to i8
  %2339 = and i8 %2338, 1
  store i8 %2339, i8* %26, align 1
  %2340 = icmp eq i64 %2324, 0
  %2341 = zext i1 %2340 to i8
  store i8 %2341, i8* %29, align 1
  %2342 = lshr i64 %2324, 63
  %2343 = trunc i64 %2342 to i8
  store i8 %2343, i8* %32, align 1
  %2344 = lshr i64 %2322, 59
  %2345 = and i64 %2344, 1
  %2346 = xor i64 %2342, %2313
  %2347 = xor i64 %2342, %2345
  %2348 = add nuw nsw i64 %2346, %2347
  %2349 = icmp eq i64 %2348, 2
  %2350 = zext i1 %2349 to i8
  store i8 %2350, i8* %38, align 1
  %2351 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*), align 8
  store i64 %2351, i64* %RDX.i2162, align 8
  %2352 = add i64 %2351, 72520
  %2353 = add i64 %2291, 47
  store i64 %2353, i64* %3, align 8
  %2354 = inttoptr i64 %2352 to i32*
  %2355 = load i32, i32* %2354, align 4
  %2356 = sext i32 %2355 to i64
  %2357 = shl nsw i64 %2356, 5
  store i64 %2357, i64* %RDX.i2162, align 8
  %2358 = load i64, i64* %RAX.i2255, align 8
  %2359 = add i64 %2357, %2358
  store i64 %2359, i64* %RAX.i2255, align 8
  %2360 = icmp ult i64 %2359, %2358
  %2361 = icmp ult i64 %2359, %2357
  %2362 = or i1 %2360, %2361
  %2363 = zext i1 %2362 to i8
  store i8 %2363, i8* %14, align 1
  %2364 = trunc i64 %2359 to i32
  %2365 = and i32 %2364, 255
  %2366 = tail call i32 @llvm.ctpop.i32(i32 %2365)
  %2367 = trunc i32 %2366 to i8
  %2368 = and i8 %2367, 1
  %2369 = xor i8 %2368, 1
  store i8 %2369, i8* %21, align 1
  %2370 = xor i64 %2358, %2359
  %2371 = lshr i64 %2370, 4
  %2372 = trunc i64 %2371 to i8
  %2373 = and i8 %2372, 1
  store i8 %2373, i8* %26, align 1
  %2374 = icmp eq i64 %2359, 0
  %2375 = zext i1 %2374 to i8
  store i8 %2375, i8* %29, align 1
  %2376 = lshr i64 %2359, 63
  %2377 = trunc i64 %2376 to i8
  store i8 %2377, i8* %32, align 1
  %2378 = lshr i64 %2358, 63
  %2379 = lshr i64 %2356, 58
  %2380 = and i64 %2379, 1
  %2381 = xor i64 %2376, %2378
  %2382 = xor i64 %2376, %2380
  %2383 = add nuw nsw i64 %2381, %2382
  %2384 = icmp eq i64 %2383, 2
  %2385 = zext i1 %2384 to i8
  store i8 %2385, i8* %38, align 1
  %2386 = load i64, i64* %RBP.i, align 8
  %2387 = add i64 %2386, -24
  %2388 = add i64 %2291, 58
  store i64 %2388, i64* %3, align 8
  %2389 = inttoptr i64 %2387 to i32*
  %2390 = load i32, i32* %2389, align 4
  %2391 = sext i32 %2390 to i64
  %2392 = shl nsw i64 %2391, 3
  store i64 %2392, i64* %RDX.i2162, align 8
  %2393 = add i64 %2392, %2359
  store i64 %2393, i64* %RAX.i2255, align 8
  %2394 = icmp ult i64 %2393, %2359
  %2395 = icmp ult i64 %2393, %2392
  %2396 = or i1 %2394, %2395
  %2397 = zext i1 %2396 to i8
  store i8 %2397, i8* %14, align 1
  %2398 = trunc i64 %2393 to i32
  %2399 = and i32 %2398, 255
  %2400 = tail call i32 @llvm.ctpop.i32(i32 %2399)
  %2401 = trunc i32 %2400 to i8
  %2402 = and i8 %2401, 1
  %2403 = xor i8 %2402, 1
  store i8 %2403, i8* %21, align 1
  %2404 = xor i64 %2392, %2359
  %2405 = xor i64 %2404, %2393
  %2406 = lshr i64 %2405, 4
  %2407 = trunc i64 %2406 to i8
  %2408 = and i8 %2407, 1
  store i8 %2408, i8* %26, align 1
  %2409 = icmp eq i64 %2393, 0
  %2410 = zext i1 %2409 to i8
  store i8 %2410, i8* %29, align 1
  %2411 = lshr i64 %2393, 63
  %2412 = trunc i64 %2411 to i8
  store i8 %2412, i8* %32, align 1
  %2413 = lshr i64 %2391, 60
  %2414 = and i64 %2413, 1
  %2415 = xor i64 %2411, %2376
  %2416 = xor i64 %2411, %2414
  %2417 = add nuw nsw i64 %2415, %2416
  %2418 = icmp eq i64 %2417, 2
  %2419 = zext i1 %2418 to i8
  store i8 %2419, i8* %38, align 1
  %2420 = load i64, i64* %RCX.i2165, align 8
  store i64 %2420, i64* %RDI.i2122, align 8
  store i64 %2393, i64* %RSI.i2119, align 8
  %2421 = add i64 %2291, -89515
  %2422 = add i64 %2291, 76
  %2423 = load i64, i64* %6, align 8
  %2424 = add i64 %2423, -8
  %2425 = inttoptr i64 %2424 to i64*
  store i64 %2422, i64* %2425, align 8
  store i64 %2424, i64* %6, align 8
  store i64 %2421, i64* %3, align 8
  %call2_418282 = tail call %struct.Memory* @sub_402490.biari_init_context(%struct.State* nonnull %0, i64 %2421, %struct.Memory* %2)
  %2426 = load i64, i64* %3, align 8
  %2427 = add i64 %2426, 81
  store i64 %2427, i64* %3, align 8
  br label %block_.L_4182d8

block_.L_41828c:                                  ; preds = %block_418229
  store i64 ptrtoint (%G__0x4b3d20_type* @G__0x4b3d20 to i64), i64* %RAX.i2255, align 8
  %2428 = add i64 %2236, -8
  %2429 = add i64 %2291, 14
  store i64 %2429, i64* %3, align 8
  %2430 = inttoptr i64 %2428 to i64*
  %2431 = load i64, i64* %2430, align 8
  %2432 = add i64 %2431, 1328
  store i64 %2432, i64* %RCX.i2165, align 8
  %2433 = icmp ugt i64 %2431, -1329
  %2434 = zext i1 %2433 to i8
  store i8 %2434, i8* %14, align 1
  %2435 = trunc i64 %2432 to i32
  %2436 = and i32 %2435, 255
  %2437 = tail call i32 @llvm.ctpop.i32(i32 %2436)
  %2438 = trunc i32 %2437 to i8
  %2439 = and i8 %2438, 1
  %2440 = xor i8 %2439, 1
  store i8 %2440, i8* %21, align 1
  %2441 = xor i64 %2431, 16
  %2442 = xor i64 %2441, %2432
  %2443 = lshr i64 %2442, 4
  %2444 = trunc i64 %2443 to i8
  %2445 = and i8 %2444, 1
  store i8 %2445, i8* %26, align 1
  %2446 = icmp eq i64 %2432, 0
  %2447 = zext i1 %2446 to i8
  store i8 %2447, i8* %29, align 1
  %2448 = lshr i64 %2432, 63
  %2449 = trunc i64 %2448 to i8
  store i8 %2449, i8* %32, align 1
  %2450 = lshr i64 %2431, 63
  %2451 = xor i64 %2448, %2450
  %2452 = add nuw nsw i64 %2451, %2448
  %2453 = icmp eq i64 %2452, 2
  %2454 = zext i1 %2453 to i8
  store i8 %2454, i8* %38, align 1
  %2455 = add i64 %2291, 25
  store i64 %2455, i64* %3, align 8
  %2456 = load i32, i32* %2239, align 4
  %2457 = sext i32 %2456 to i64
  %2458 = shl nsw i64 %2457, 4
  %2459 = add i64 %2458, %2432
  store i64 %2459, i64* %RCX.i2165, align 8
  %2460 = icmp ult i64 %2459, %2432
  %2461 = icmp ult i64 %2459, %2458
  %2462 = or i1 %2460, %2461
  %2463 = zext i1 %2462 to i8
  store i8 %2463, i8* %14, align 1
  %2464 = trunc i64 %2459 to i32
  %2465 = and i32 %2464, 255
  %2466 = tail call i32 @llvm.ctpop.i32(i32 %2465)
  %2467 = trunc i32 %2466 to i8
  %2468 = and i8 %2467, 1
  %2469 = xor i8 %2468, 1
  store i8 %2469, i8* %21, align 1
  %2470 = xor i64 %2458, %2432
  %2471 = xor i64 %2470, %2459
  %2472 = lshr i64 %2471, 4
  %2473 = trunc i64 %2472 to i8
  %2474 = and i8 %2473, 1
  store i8 %2474, i8* %26, align 1
  %2475 = icmp eq i64 %2459, 0
  %2476 = zext i1 %2475 to i8
  store i8 %2476, i8* %29, align 1
  %2477 = lshr i64 %2459, 63
  %2478 = trunc i64 %2477 to i8
  store i8 %2478, i8* %32, align 1
  %2479 = lshr i64 %2457, 59
  %2480 = and i64 %2479, 1
  %2481 = xor i64 %2477, %2448
  %2482 = xor i64 %2477, %2480
  %2483 = add nuw nsw i64 %2481, %2482
  %2484 = icmp eq i64 %2483, 2
  %2485 = zext i1 %2484 to i8
  store i8 %2485, i8* %38, align 1
  %2486 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*), align 8
  store i64 %2486, i64* %RDX.i2162, align 8
  %2487 = add i64 %2486, 72520
  %2488 = add i64 %2291, 47
  store i64 %2488, i64* %3, align 8
  %2489 = inttoptr i64 %2487 to i32*
  %2490 = load i32, i32* %2489, align 4
  %2491 = sext i32 %2490 to i64
  %2492 = shl nsw i64 %2491, 5
  store i64 %2492, i64* %RDX.i2162, align 8
  %2493 = load i64, i64* %RAX.i2255, align 8
  %2494 = add i64 %2492, %2493
  store i64 %2494, i64* %RAX.i2255, align 8
  %2495 = icmp ult i64 %2494, %2493
  %2496 = icmp ult i64 %2494, %2492
  %2497 = or i1 %2495, %2496
  %2498 = zext i1 %2497 to i8
  store i8 %2498, i8* %14, align 1
  %2499 = trunc i64 %2494 to i32
  %2500 = and i32 %2499, 255
  %2501 = tail call i32 @llvm.ctpop.i32(i32 %2500)
  %2502 = trunc i32 %2501 to i8
  %2503 = and i8 %2502, 1
  %2504 = xor i8 %2503, 1
  store i8 %2504, i8* %21, align 1
  %2505 = xor i64 %2493, %2494
  %2506 = lshr i64 %2505, 4
  %2507 = trunc i64 %2506 to i8
  %2508 = and i8 %2507, 1
  store i8 %2508, i8* %26, align 1
  %2509 = icmp eq i64 %2494, 0
  %2510 = zext i1 %2509 to i8
  store i8 %2510, i8* %29, align 1
  %2511 = lshr i64 %2494, 63
  %2512 = trunc i64 %2511 to i8
  store i8 %2512, i8* %32, align 1
  %2513 = lshr i64 %2493, 63
  %2514 = lshr i64 %2491, 58
  %2515 = and i64 %2514, 1
  %2516 = xor i64 %2511, %2513
  %2517 = xor i64 %2511, %2515
  %2518 = add nuw nsw i64 %2516, %2517
  %2519 = icmp eq i64 %2518, 2
  %2520 = zext i1 %2519 to i8
  store i8 %2520, i8* %38, align 1
  %2521 = load i64, i64* %RBP.i, align 8
  %2522 = add i64 %2521, -24
  %2523 = add i64 %2291, 58
  store i64 %2523, i64* %3, align 8
  %2524 = inttoptr i64 %2522 to i32*
  %2525 = load i32, i32* %2524, align 4
  %2526 = sext i32 %2525 to i64
  %2527 = shl nsw i64 %2526, 3
  store i64 %2527, i64* %RDX.i2162, align 8
  %2528 = add i64 %2527, %2494
  store i64 %2528, i64* %RAX.i2255, align 8
  %2529 = icmp ult i64 %2528, %2494
  %2530 = icmp ult i64 %2528, %2527
  %2531 = or i1 %2529, %2530
  %2532 = zext i1 %2531 to i8
  store i8 %2532, i8* %14, align 1
  %2533 = trunc i64 %2528 to i32
  %2534 = and i32 %2533, 255
  %2535 = tail call i32 @llvm.ctpop.i32(i32 %2534)
  %2536 = trunc i32 %2535 to i8
  %2537 = and i8 %2536, 1
  %2538 = xor i8 %2537, 1
  store i8 %2538, i8* %21, align 1
  %2539 = xor i64 %2527, %2494
  %2540 = xor i64 %2539, %2528
  %2541 = lshr i64 %2540, 4
  %2542 = trunc i64 %2541 to i8
  %2543 = and i8 %2542, 1
  store i8 %2543, i8* %26, align 1
  %2544 = icmp eq i64 %2528, 0
  %2545 = zext i1 %2544 to i8
  store i8 %2545, i8* %29, align 1
  %2546 = lshr i64 %2528, 63
  %2547 = trunc i64 %2546 to i8
  store i8 %2547, i8* %32, align 1
  %2548 = lshr i64 %2526, 60
  %2549 = and i64 %2548, 1
  %2550 = xor i64 %2546, %2511
  %2551 = xor i64 %2546, %2549
  %2552 = add nuw nsw i64 %2550, %2551
  %2553 = icmp eq i64 %2552, 2
  %2554 = zext i1 %2553 to i8
  store i8 %2554, i8* %38, align 1
  %2555 = load i64, i64* %RCX.i2165, align 8
  store i64 %2555, i64* %RDI.i2122, align 8
  store i64 %2528, i64* %RSI.i2119, align 8
  %2556 = add i64 %2291, -89596
  %2557 = add i64 %2291, 76
  %2558 = load i64, i64* %6, align 8
  %2559 = add i64 %2558, -8
  %2560 = inttoptr i64 %2559 to i64*
  store i64 %2557, i64* %2560, align 8
  store i64 %2559, i64* %6, align 8
  store i64 %2556, i64* %3, align 8
  %call2_4182d3 = tail call %struct.Memory* @sub_402490.biari_init_context(%struct.State* nonnull %0, i64 %2556, %struct.Memory* %2)
  %.pre241 = load i64, i64* %3, align 8
  br label %block_.L_4182d8

block_.L_4182d8:                                  ; preds = %block_.L_41828c, %block_41823b
  %2561 = phi i64 [ %.pre241, %block_.L_41828c ], [ %2427, %block_41823b ]
  %2562 = load i64, i64* %RBP.i, align 8
  %2563 = add i64 %2562, -24
  %2564 = add i64 %2561, 8
  store i64 %2564, i64* %3, align 8
  %2565 = inttoptr i64 %2563 to i32*
  %2566 = load i32, i32* %2565, align 4
  %2567 = add i32 %2566, 1
  %2568 = zext i32 %2567 to i64
  store i64 %2568, i64* %RAX.i2255, align 8
  %2569 = icmp eq i32 %2566, -1
  %2570 = icmp eq i32 %2567, 0
  %2571 = or i1 %2569, %2570
  %2572 = zext i1 %2571 to i8
  store i8 %2572, i8* %14, align 1
  %2573 = and i32 %2567, 255
  %2574 = tail call i32 @llvm.ctpop.i32(i32 %2573)
  %2575 = trunc i32 %2574 to i8
  %2576 = and i8 %2575, 1
  %2577 = xor i8 %2576, 1
  store i8 %2577, i8* %21, align 1
  %2578 = xor i32 %2567, %2566
  %2579 = lshr i32 %2578, 4
  %2580 = trunc i32 %2579 to i8
  %2581 = and i8 %2580, 1
  store i8 %2581, i8* %26, align 1
  %2582 = zext i1 %2570 to i8
  store i8 %2582, i8* %29, align 1
  %2583 = lshr i32 %2567, 31
  %2584 = trunc i32 %2583 to i8
  store i8 %2584, i8* %32, align 1
  %2585 = lshr i32 %2566, 31
  %2586 = xor i32 %2583, %2585
  %2587 = add nuw nsw i32 %2586, %2583
  %2588 = icmp eq i32 %2587, 2
  %2589 = zext i1 %2588 to i8
  store i8 %2589, i8* %38, align 1
  %2590 = add i64 %2561, 14
  store i64 %2590, i64* %3, align 8
  store i32 %2567, i32* %2565, align 4
  %2591 = load i64, i64* %3, align 8
  %2592 = add i64 %2591, -199
  store i64 %2592, i64* %3, align 8
  br label %block_.L_41821f

block_.L_4182eb:                                  ; preds = %block_.L_41821f
  %2593 = add i64 %2264, 7
  store i64 %2593, i64* %3, align 8
  store i32 0, i32* %2239, align 4
  %.pre209 = load i64, i64* %3, align 8
  br label %block_.L_4182f2

block_.L_4182f2:                                  ; preds = %block_.L_4183ab, %block_.L_4182eb
  %2594 = phi i64 [ %.pre209, %block_.L_4182eb ], [ %2951, %block_.L_4183ab ]
  %2595 = load i64, i64* %RBP.i, align 8
  %2596 = add i64 %2595, -24
  %2597 = add i64 %2594, 4
  store i64 %2597, i64* %3, align 8
  %2598 = inttoptr i64 %2596 to i32*
  %2599 = load i32, i32* %2598, align 4
  %2600 = add i32 %2599, -4
  %2601 = icmp ult i32 %2599, 4
  %2602 = zext i1 %2601 to i8
  store i8 %2602, i8* %14, align 1
  %2603 = and i32 %2600, 255
  %2604 = tail call i32 @llvm.ctpop.i32(i32 %2603)
  %2605 = trunc i32 %2604 to i8
  %2606 = and i8 %2605, 1
  %2607 = xor i8 %2606, 1
  store i8 %2607, i8* %21, align 1
  %2608 = xor i32 %2600, %2599
  %2609 = lshr i32 %2608, 4
  %2610 = trunc i32 %2609 to i8
  %2611 = and i8 %2610, 1
  store i8 %2611, i8* %26, align 1
  %2612 = icmp eq i32 %2600, 0
  %2613 = zext i1 %2612 to i8
  store i8 %2613, i8* %29, align 1
  %2614 = lshr i32 %2600, 31
  %2615 = trunc i32 %2614 to i8
  store i8 %2615, i8* %32, align 1
  %2616 = lshr i32 %2599, 31
  %2617 = xor i32 %2614, %2616
  %2618 = add nuw nsw i32 %2617, %2616
  %2619 = icmp eq i32 %2618, 2
  %2620 = zext i1 %2619 to i8
  store i8 %2620, i8* %38, align 1
  %2621 = icmp ne i8 %2615, 0
  %2622 = xor i1 %2621, %2619
  %.v266 = select i1 %2622, i64 10, i64 204
  %2623 = add i64 %2594, %.v266
  store i64 %2623, i64* %3, align 8
  br i1 %2622, label %block_4182fc, label %block_.L_4183be

block_4182fc:                                     ; preds = %block_.L_4182f2
  %2624 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*), align 8
  store i64 %2624, i64* %RAX.i2255, align 8
  %2625 = add i64 %2624, 24
  %2626 = add i64 %2623, 12
  store i64 %2626, i64* %3, align 8
  %2627 = inttoptr i64 %2625 to i32*
  %2628 = load i32, i32* %2627, align 4
  %2629 = add i32 %2628, -2
  %2630 = icmp ult i32 %2628, 2
  %2631 = zext i1 %2630 to i8
  store i8 %2631, i8* %14, align 1
  %2632 = and i32 %2629, 255
  %2633 = tail call i32 @llvm.ctpop.i32(i32 %2632)
  %2634 = trunc i32 %2633 to i8
  %2635 = and i8 %2634, 1
  %2636 = xor i8 %2635, 1
  store i8 %2636, i8* %21, align 1
  %2637 = xor i32 %2629, %2628
  %2638 = lshr i32 %2637, 4
  %2639 = trunc i32 %2638 to i8
  %2640 = and i8 %2639, 1
  store i8 %2640, i8* %26, align 1
  %2641 = icmp eq i32 %2629, 0
  %2642 = zext i1 %2641 to i8
  store i8 %2642, i8* %29, align 1
  %2643 = lshr i32 %2629, 31
  %2644 = trunc i32 %2643 to i8
  store i8 %2644, i8* %32, align 1
  %2645 = lshr i32 %2628, 31
  %2646 = xor i32 %2643, %2645
  %2647 = add nuw nsw i32 %2646, %2645
  %2648 = icmp eq i32 %2647, 2
  %2649 = zext i1 %2648 to i8
  store i8 %2649, i8* %38, align 1
  %.v289 = select i1 %2641, i64 18, i64 99
  %2650 = add i64 %2623, %.v289
  %2651 = add i64 %2650, 10
  store i64 %2651, i64* %3, align 8
  br i1 %2641, label %block_41830e, label %block_.L_41835f

block_41830e:                                     ; preds = %block_4182fc
  store i64 ptrtoint (%G__0x4b3d80_type* @G__0x4b3d80 to i64), i64* %RAX.i2255, align 8
  %2652 = add i64 %2595, -8
  %2653 = add i64 %2650, 14
  store i64 %2653, i64* %3, align 8
  %2654 = inttoptr i64 %2652 to i64*
  %2655 = load i64, i64* %2654, align 8
  %2656 = add i64 %2655, 1392
  store i64 %2656, i64* %RCX.i2165, align 8
  %2657 = icmp ugt i64 %2655, -1393
  %2658 = zext i1 %2657 to i8
  store i8 %2658, i8* %14, align 1
  %2659 = trunc i64 %2656 to i32
  %2660 = and i32 %2659, 255
  %2661 = tail call i32 @llvm.ctpop.i32(i32 %2660)
  %2662 = trunc i32 %2661 to i8
  %2663 = and i8 %2662, 1
  %2664 = xor i8 %2663, 1
  store i8 %2664, i8* %21, align 1
  %2665 = xor i64 %2655, 16
  %2666 = xor i64 %2665, %2656
  %2667 = lshr i64 %2666, 4
  %2668 = trunc i64 %2667 to i8
  %2669 = and i8 %2668, 1
  store i8 %2669, i8* %26, align 1
  %2670 = icmp eq i64 %2656, 0
  %2671 = zext i1 %2670 to i8
  store i8 %2671, i8* %29, align 1
  %2672 = lshr i64 %2656, 63
  %2673 = trunc i64 %2672 to i8
  store i8 %2673, i8* %32, align 1
  %2674 = lshr i64 %2655, 63
  %2675 = xor i64 %2672, %2674
  %2676 = add nuw nsw i64 %2675, %2672
  %2677 = icmp eq i64 %2676, 2
  %2678 = zext i1 %2677 to i8
  store i8 %2678, i8* %38, align 1
  %2679 = add i64 %2650, 25
  store i64 %2679, i64* %3, align 8
  %2680 = load i32, i32* %2598, align 4
  %2681 = sext i32 %2680 to i64
  %2682 = shl nsw i64 %2681, 4
  %2683 = add i64 %2682, %2656
  store i64 %2683, i64* %RCX.i2165, align 8
  %2684 = icmp ult i64 %2683, %2656
  %2685 = icmp ult i64 %2683, %2682
  %2686 = or i1 %2684, %2685
  %2687 = zext i1 %2686 to i8
  store i8 %2687, i8* %14, align 1
  %2688 = trunc i64 %2683 to i32
  %2689 = and i32 %2688, 255
  %2690 = tail call i32 @llvm.ctpop.i32(i32 %2689)
  %2691 = trunc i32 %2690 to i8
  %2692 = and i8 %2691, 1
  %2693 = xor i8 %2692, 1
  store i8 %2693, i8* %21, align 1
  %2694 = xor i64 %2682, %2656
  %2695 = xor i64 %2694, %2683
  %2696 = lshr i64 %2695, 4
  %2697 = trunc i64 %2696 to i8
  %2698 = and i8 %2697, 1
  store i8 %2698, i8* %26, align 1
  %2699 = icmp eq i64 %2683, 0
  %2700 = zext i1 %2699 to i8
  store i8 %2700, i8* %29, align 1
  %2701 = lshr i64 %2683, 63
  %2702 = trunc i64 %2701 to i8
  store i8 %2702, i8* %32, align 1
  %2703 = lshr i64 %2681, 59
  %2704 = and i64 %2703, 1
  %2705 = xor i64 %2701, %2672
  %2706 = xor i64 %2701, %2704
  %2707 = add nuw nsw i64 %2705, %2706
  %2708 = icmp eq i64 %2707, 2
  %2709 = zext i1 %2708 to i8
  store i8 %2709, i8* %38, align 1
  %2710 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*), align 8
  store i64 %2710, i64* %RDX.i2162, align 8
  %2711 = add i64 %2710, 72520
  %2712 = add i64 %2650, 47
  store i64 %2712, i64* %3, align 8
  %2713 = inttoptr i64 %2711 to i32*
  %2714 = load i32, i32* %2713, align 4
  %2715 = sext i32 %2714 to i64
  %2716 = shl nsw i64 %2715, 5
  store i64 %2716, i64* %RDX.i2162, align 8
  %2717 = load i64, i64* %RAX.i2255, align 8
  %2718 = add i64 %2716, %2717
  store i64 %2718, i64* %RAX.i2255, align 8
  %2719 = icmp ult i64 %2718, %2717
  %2720 = icmp ult i64 %2718, %2716
  %2721 = or i1 %2719, %2720
  %2722 = zext i1 %2721 to i8
  store i8 %2722, i8* %14, align 1
  %2723 = trunc i64 %2718 to i32
  %2724 = and i32 %2723, 255
  %2725 = tail call i32 @llvm.ctpop.i32(i32 %2724)
  %2726 = trunc i32 %2725 to i8
  %2727 = and i8 %2726, 1
  %2728 = xor i8 %2727, 1
  store i8 %2728, i8* %21, align 1
  %2729 = xor i64 %2717, %2718
  %2730 = lshr i64 %2729, 4
  %2731 = trunc i64 %2730 to i8
  %2732 = and i8 %2731, 1
  store i8 %2732, i8* %26, align 1
  %2733 = icmp eq i64 %2718, 0
  %2734 = zext i1 %2733 to i8
  store i8 %2734, i8* %29, align 1
  %2735 = lshr i64 %2718, 63
  %2736 = trunc i64 %2735 to i8
  store i8 %2736, i8* %32, align 1
  %2737 = lshr i64 %2717, 63
  %2738 = lshr i64 %2715, 58
  %2739 = and i64 %2738, 1
  %2740 = xor i64 %2735, %2737
  %2741 = xor i64 %2735, %2739
  %2742 = add nuw nsw i64 %2740, %2741
  %2743 = icmp eq i64 %2742, 2
  %2744 = zext i1 %2743 to i8
  store i8 %2744, i8* %38, align 1
  %2745 = load i64, i64* %RBP.i, align 8
  %2746 = add i64 %2745, -24
  %2747 = add i64 %2650, 58
  store i64 %2747, i64* %3, align 8
  %2748 = inttoptr i64 %2746 to i32*
  %2749 = load i32, i32* %2748, align 4
  %2750 = sext i32 %2749 to i64
  %2751 = shl nsw i64 %2750, 3
  store i64 %2751, i64* %RDX.i2162, align 8
  %2752 = add i64 %2751, %2718
  store i64 %2752, i64* %RAX.i2255, align 8
  %2753 = icmp ult i64 %2752, %2718
  %2754 = icmp ult i64 %2752, %2751
  %2755 = or i1 %2753, %2754
  %2756 = zext i1 %2755 to i8
  store i8 %2756, i8* %14, align 1
  %2757 = trunc i64 %2752 to i32
  %2758 = and i32 %2757, 255
  %2759 = tail call i32 @llvm.ctpop.i32(i32 %2758)
  %2760 = trunc i32 %2759 to i8
  %2761 = and i8 %2760, 1
  %2762 = xor i8 %2761, 1
  store i8 %2762, i8* %21, align 1
  %2763 = xor i64 %2751, %2718
  %2764 = xor i64 %2763, %2752
  %2765 = lshr i64 %2764, 4
  %2766 = trunc i64 %2765 to i8
  %2767 = and i8 %2766, 1
  store i8 %2767, i8* %26, align 1
  %2768 = icmp eq i64 %2752, 0
  %2769 = zext i1 %2768 to i8
  store i8 %2769, i8* %29, align 1
  %2770 = lshr i64 %2752, 63
  %2771 = trunc i64 %2770 to i8
  store i8 %2771, i8* %32, align 1
  %2772 = lshr i64 %2750, 60
  %2773 = and i64 %2772, 1
  %2774 = xor i64 %2770, %2735
  %2775 = xor i64 %2770, %2773
  %2776 = add nuw nsw i64 %2774, %2775
  %2777 = icmp eq i64 %2776, 2
  %2778 = zext i1 %2777 to i8
  store i8 %2778, i8* %38, align 1
  %2779 = load i64, i64* %RCX.i2165, align 8
  store i64 %2779, i64* %RDI.i2122, align 8
  store i64 %2752, i64* %RSI.i2119, align 8
  %2780 = add i64 %2650, -89726
  %2781 = add i64 %2650, 76
  %2782 = load i64, i64* %6, align 8
  %2783 = add i64 %2782, -8
  %2784 = inttoptr i64 %2783 to i64*
  store i64 %2781, i64* %2784, align 8
  store i64 %2783, i64* %6, align 8
  store i64 %2780, i64* %3, align 8
  %call2_418355 = tail call %struct.Memory* @sub_402490.biari_init_context(%struct.State* nonnull %0, i64 %2780, %struct.Memory* %2)
  %2785 = load i64, i64* %3, align 8
  %2786 = add i64 %2785, 81
  store i64 %2786, i64* %3, align 8
  br label %block_.L_4183ab

block_.L_41835f:                                  ; preds = %block_4182fc
  store i64 ptrtoint (%G__0x4b3da0_type* @G__0x4b3da0 to i64), i64* %RAX.i2255, align 8
  %2787 = add i64 %2595, -8
  %2788 = add i64 %2650, 14
  store i64 %2788, i64* %3, align 8
  %2789 = inttoptr i64 %2787 to i64*
  %2790 = load i64, i64* %2789, align 8
  %2791 = add i64 %2790, 1392
  store i64 %2791, i64* %RCX.i2165, align 8
  %2792 = icmp ugt i64 %2790, -1393
  %2793 = zext i1 %2792 to i8
  store i8 %2793, i8* %14, align 1
  %2794 = trunc i64 %2791 to i32
  %2795 = and i32 %2794, 255
  %2796 = tail call i32 @llvm.ctpop.i32(i32 %2795)
  %2797 = trunc i32 %2796 to i8
  %2798 = and i8 %2797, 1
  %2799 = xor i8 %2798, 1
  store i8 %2799, i8* %21, align 1
  %2800 = xor i64 %2790, 16
  %2801 = xor i64 %2800, %2791
  %2802 = lshr i64 %2801, 4
  %2803 = trunc i64 %2802 to i8
  %2804 = and i8 %2803, 1
  store i8 %2804, i8* %26, align 1
  %2805 = icmp eq i64 %2791, 0
  %2806 = zext i1 %2805 to i8
  store i8 %2806, i8* %29, align 1
  %2807 = lshr i64 %2791, 63
  %2808 = trunc i64 %2807 to i8
  store i8 %2808, i8* %32, align 1
  %2809 = lshr i64 %2790, 63
  %2810 = xor i64 %2807, %2809
  %2811 = add nuw nsw i64 %2810, %2807
  %2812 = icmp eq i64 %2811, 2
  %2813 = zext i1 %2812 to i8
  store i8 %2813, i8* %38, align 1
  %2814 = add i64 %2650, 25
  store i64 %2814, i64* %3, align 8
  %2815 = load i32, i32* %2598, align 4
  %2816 = sext i32 %2815 to i64
  %2817 = shl nsw i64 %2816, 4
  %2818 = add i64 %2817, %2791
  store i64 %2818, i64* %RCX.i2165, align 8
  %2819 = icmp ult i64 %2818, %2791
  %2820 = icmp ult i64 %2818, %2817
  %2821 = or i1 %2819, %2820
  %2822 = zext i1 %2821 to i8
  store i8 %2822, i8* %14, align 1
  %2823 = trunc i64 %2818 to i32
  %2824 = and i32 %2823, 255
  %2825 = tail call i32 @llvm.ctpop.i32(i32 %2824)
  %2826 = trunc i32 %2825 to i8
  %2827 = and i8 %2826, 1
  %2828 = xor i8 %2827, 1
  store i8 %2828, i8* %21, align 1
  %2829 = xor i64 %2817, %2791
  %2830 = xor i64 %2829, %2818
  %2831 = lshr i64 %2830, 4
  %2832 = trunc i64 %2831 to i8
  %2833 = and i8 %2832, 1
  store i8 %2833, i8* %26, align 1
  %2834 = icmp eq i64 %2818, 0
  %2835 = zext i1 %2834 to i8
  store i8 %2835, i8* %29, align 1
  %2836 = lshr i64 %2818, 63
  %2837 = trunc i64 %2836 to i8
  store i8 %2837, i8* %32, align 1
  %2838 = lshr i64 %2816, 59
  %2839 = and i64 %2838, 1
  %2840 = xor i64 %2836, %2807
  %2841 = xor i64 %2836, %2839
  %2842 = add nuw nsw i64 %2840, %2841
  %2843 = icmp eq i64 %2842, 2
  %2844 = zext i1 %2843 to i8
  store i8 %2844, i8* %38, align 1
  %2845 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*), align 8
  store i64 %2845, i64* %RDX.i2162, align 8
  %2846 = add i64 %2845, 72520
  %2847 = add i64 %2650, 47
  store i64 %2847, i64* %3, align 8
  %2848 = inttoptr i64 %2846 to i32*
  %2849 = load i32, i32* %2848, align 4
  %2850 = sext i32 %2849 to i64
  %2851 = shl nsw i64 %2850, 5
  store i64 %2851, i64* %RDX.i2162, align 8
  %2852 = load i64, i64* %RAX.i2255, align 8
  %2853 = add i64 %2851, %2852
  store i64 %2853, i64* %RAX.i2255, align 8
  %2854 = icmp ult i64 %2853, %2852
  %2855 = icmp ult i64 %2853, %2851
  %2856 = or i1 %2854, %2855
  %2857 = zext i1 %2856 to i8
  store i8 %2857, i8* %14, align 1
  %2858 = trunc i64 %2853 to i32
  %2859 = and i32 %2858, 255
  %2860 = tail call i32 @llvm.ctpop.i32(i32 %2859)
  %2861 = trunc i32 %2860 to i8
  %2862 = and i8 %2861, 1
  %2863 = xor i8 %2862, 1
  store i8 %2863, i8* %21, align 1
  %2864 = xor i64 %2852, %2853
  %2865 = lshr i64 %2864, 4
  %2866 = trunc i64 %2865 to i8
  %2867 = and i8 %2866, 1
  store i8 %2867, i8* %26, align 1
  %2868 = icmp eq i64 %2853, 0
  %2869 = zext i1 %2868 to i8
  store i8 %2869, i8* %29, align 1
  %2870 = lshr i64 %2853, 63
  %2871 = trunc i64 %2870 to i8
  store i8 %2871, i8* %32, align 1
  %2872 = lshr i64 %2852, 63
  %2873 = lshr i64 %2850, 58
  %2874 = and i64 %2873, 1
  %2875 = xor i64 %2870, %2872
  %2876 = xor i64 %2870, %2874
  %2877 = add nuw nsw i64 %2875, %2876
  %2878 = icmp eq i64 %2877, 2
  %2879 = zext i1 %2878 to i8
  store i8 %2879, i8* %38, align 1
  %2880 = load i64, i64* %RBP.i, align 8
  %2881 = add i64 %2880, -24
  %2882 = add i64 %2650, 58
  store i64 %2882, i64* %3, align 8
  %2883 = inttoptr i64 %2881 to i32*
  %2884 = load i32, i32* %2883, align 4
  %2885 = sext i32 %2884 to i64
  %2886 = shl nsw i64 %2885, 3
  store i64 %2886, i64* %RDX.i2162, align 8
  %2887 = add i64 %2886, %2853
  store i64 %2887, i64* %RAX.i2255, align 8
  %2888 = icmp ult i64 %2887, %2853
  %2889 = icmp ult i64 %2887, %2886
  %2890 = or i1 %2888, %2889
  %2891 = zext i1 %2890 to i8
  store i8 %2891, i8* %14, align 1
  %2892 = trunc i64 %2887 to i32
  %2893 = and i32 %2892, 255
  %2894 = tail call i32 @llvm.ctpop.i32(i32 %2893)
  %2895 = trunc i32 %2894 to i8
  %2896 = and i8 %2895, 1
  %2897 = xor i8 %2896, 1
  store i8 %2897, i8* %21, align 1
  %2898 = xor i64 %2886, %2853
  %2899 = xor i64 %2898, %2887
  %2900 = lshr i64 %2899, 4
  %2901 = trunc i64 %2900 to i8
  %2902 = and i8 %2901, 1
  store i8 %2902, i8* %26, align 1
  %2903 = icmp eq i64 %2887, 0
  %2904 = zext i1 %2903 to i8
  store i8 %2904, i8* %29, align 1
  %2905 = lshr i64 %2887, 63
  %2906 = trunc i64 %2905 to i8
  store i8 %2906, i8* %32, align 1
  %2907 = lshr i64 %2885, 60
  %2908 = and i64 %2907, 1
  %2909 = xor i64 %2905, %2870
  %2910 = xor i64 %2905, %2908
  %2911 = add nuw nsw i64 %2909, %2910
  %2912 = icmp eq i64 %2911, 2
  %2913 = zext i1 %2912 to i8
  store i8 %2913, i8* %38, align 1
  %2914 = load i64, i64* %RCX.i2165, align 8
  store i64 %2914, i64* %RDI.i2122, align 8
  store i64 %2887, i64* %RSI.i2119, align 8
  %2915 = add i64 %2650, -89807
  %2916 = add i64 %2650, 76
  %2917 = load i64, i64* %6, align 8
  %2918 = add i64 %2917, -8
  %2919 = inttoptr i64 %2918 to i64*
  store i64 %2916, i64* %2919, align 8
  store i64 %2918, i64* %6, align 8
  store i64 %2915, i64* %3, align 8
  %call2_4183a6 = tail call %struct.Memory* @sub_402490.biari_init_context(%struct.State* nonnull %0, i64 %2915, %struct.Memory* %2)
  %.pre240 = load i64, i64* %3, align 8
  br label %block_.L_4183ab

block_.L_4183ab:                                  ; preds = %block_.L_41835f, %block_41830e
  %2920 = phi i64 [ %.pre240, %block_.L_41835f ], [ %2786, %block_41830e ]
  %2921 = load i64, i64* %RBP.i, align 8
  %2922 = add i64 %2921, -24
  %2923 = add i64 %2920, 8
  store i64 %2923, i64* %3, align 8
  %2924 = inttoptr i64 %2922 to i32*
  %2925 = load i32, i32* %2924, align 4
  %2926 = add i32 %2925, 1
  %2927 = zext i32 %2926 to i64
  store i64 %2927, i64* %RAX.i2255, align 8
  %2928 = icmp eq i32 %2925, -1
  %2929 = icmp eq i32 %2926, 0
  %2930 = or i1 %2928, %2929
  %2931 = zext i1 %2930 to i8
  store i8 %2931, i8* %14, align 1
  %2932 = and i32 %2926, 255
  %2933 = tail call i32 @llvm.ctpop.i32(i32 %2932)
  %2934 = trunc i32 %2933 to i8
  %2935 = and i8 %2934, 1
  %2936 = xor i8 %2935, 1
  store i8 %2936, i8* %21, align 1
  %2937 = xor i32 %2926, %2925
  %2938 = lshr i32 %2937, 4
  %2939 = trunc i32 %2938 to i8
  %2940 = and i8 %2939, 1
  store i8 %2940, i8* %26, align 1
  %2941 = zext i1 %2929 to i8
  store i8 %2941, i8* %29, align 1
  %2942 = lshr i32 %2926, 31
  %2943 = trunc i32 %2942 to i8
  store i8 %2943, i8* %32, align 1
  %2944 = lshr i32 %2925, 31
  %2945 = xor i32 %2942, %2944
  %2946 = add nuw nsw i32 %2945, %2942
  %2947 = icmp eq i32 %2946, 2
  %2948 = zext i1 %2947 to i8
  store i8 %2948, i8* %38, align 1
  %2949 = add i64 %2920, 14
  store i64 %2949, i64* %3, align 8
  store i32 %2926, i32* %2924, align 4
  %2950 = load i64, i64* %3, align 8
  %2951 = add i64 %2950, -199
  store i64 %2951, i64* %3, align 8
  br label %block_.L_4182f2

block_.L_4183be:                                  ; preds = %block_.L_4182f2
  %2952 = add i64 %2623, 7
  store i64 %2952, i64* %3, align 8
  store i32 0, i32* %2598, align 4
  %.pre210 = load i64, i64* %3, align 8
  br label %block_.L_4183c5

block_.L_4183c5:                                  ; preds = %block_.L_41847e, %block_.L_4183be
  %2953 = phi i64 [ %.pre210, %block_.L_4183be ], [ %3310, %block_.L_41847e ]
  %2954 = load i64, i64* %RBP.i, align 8
  %2955 = add i64 %2954, -24
  %2956 = add i64 %2953, 4
  store i64 %2956, i64* %3, align 8
  %2957 = inttoptr i64 %2955 to i32*
  %2958 = load i32, i32* %2957, align 4
  %2959 = add i32 %2958, -3
  %2960 = icmp ult i32 %2958, 3
  %2961 = zext i1 %2960 to i8
  store i8 %2961, i8* %14, align 1
  %2962 = and i32 %2959, 255
  %2963 = tail call i32 @llvm.ctpop.i32(i32 %2962)
  %2964 = trunc i32 %2963 to i8
  %2965 = and i8 %2964, 1
  %2966 = xor i8 %2965, 1
  store i8 %2966, i8* %21, align 1
  %2967 = xor i32 %2959, %2958
  %2968 = lshr i32 %2967, 4
  %2969 = trunc i32 %2968 to i8
  %2970 = and i8 %2969, 1
  store i8 %2970, i8* %26, align 1
  %2971 = icmp eq i32 %2959, 0
  %2972 = zext i1 %2971 to i8
  store i8 %2972, i8* %29, align 1
  %2973 = lshr i32 %2959, 31
  %2974 = trunc i32 %2973 to i8
  store i8 %2974, i8* %32, align 1
  %2975 = lshr i32 %2958, 31
  %2976 = xor i32 %2973, %2975
  %2977 = add nuw nsw i32 %2976, %2975
  %2978 = icmp eq i32 %2977, 2
  %2979 = zext i1 %2978 to i8
  store i8 %2979, i8* %38, align 1
  %2980 = icmp ne i8 %2974, 0
  %2981 = xor i1 %2980, %2978
  %.v267 = select i1 %2981, i64 10, i64 204
  %2982 = add i64 %2953, %.v267
  store i64 %2982, i64* %3, align 8
  br i1 %2981, label %block_4183cf, label %block_.L_418491

block_4183cf:                                     ; preds = %block_.L_4183c5
  %2983 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*), align 8
  store i64 %2983, i64* %RAX.i2255, align 8
  %2984 = add i64 %2983, 24
  %2985 = add i64 %2982, 12
  store i64 %2985, i64* %3, align 8
  %2986 = inttoptr i64 %2984 to i32*
  %2987 = load i32, i32* %2986, align 4
  %2988 = add i32 %2987, -2
  %2989 = icmp ult i32 %2987, 2
  %2990 = zext i1 %2989 to i8
  store i8 %2990, i8* %14, align 1
  %2991 = and i32 %2988, 255
  %2992 = tail call i32 @llvm.ctpop.i32(i32 %2991)
  %2993 = trunc i32 %2992 to i8
  %2994 = and i8 %2993, 1
  %2995 = xor i8 %2994, 1
  store i8 %2995, i8* %21, align 1
  %2996 = xor i32 %2988, %2987
  %2997 = lshr i32 %2996, 4
  %2998 = trunc i32 %2997 to i8
  %2999 = and i8 %2998, 1
  store i8 %2999, i8* %26, align 1
  %3000 = icmp eq i32 %2988, 0
  %3001 = zext i1 %3000 to i8
  store i8 %3001, i8* %29, align 1
  %3002 = lshr i32 %2988, 31
  %3003 = trunc i32 %3002 to i8
  store i8 %3003, i8* %32, align 1
  %3004 = lshr i32 %2987, 31
  %3005 = xor i32 %3002, %3004
  %3006 = add nuw nsw i32 %3005, %3004
  %3007 = icmp eq i32 %3006, 2
  %3008 = zext i1 %3007 to i8
  store i8 %3008, i8* %38, align 1
  %.v288 = select i1 %3000, i64 18, i64 99
  %3009 = add i64 %2982, %.v288
  %3010 = add i64 %3009, 10
  store i64 %3010, i64* %3, align 8
  br i1 %3000, label %block_4183e1, label %block_.L_418432

block_4183e1:                                     ; preds = %block_4183cf
  store i64 ptrtoint (%G__0x4b3e00_type* @G__0x4b3e00 to i64), i64* %RAX.i2255, align 8
  %3011 = add i64 %2954, -8
  %3012 = add i64 %3009, 14
  store i64 %3012, i64* %3, align 8
  %3013 = inttoptr i64 %3011 to i64*
  %3014 = load i64, i64* %3013, align 8
  %3015 = add i64 %3014, 1456
  store i64 %3015, i64* %RCX.i2165, align 8
  %3016 = icmp ugt i64 %3014, -1457
  %3017 = zext i1 %3016 to i8
  store i8 %3017, i8* %14, align 1
  %3018 = trunc i64 %3015 to i32
  %3019 = and i32 %3018, 255
  %3020 = tail call i32 @llvm.ctpop.i32(i32 %3019)
  %3021 = trunc i32 %3020 to i8
  %3022 = and i8 %3021, 1
  %3023 = xor i8 %3022, 1
  store i8 %3023, i8* %21, align 1
  %3024 = xor i64 %3014, 16
  %3025 = xor i64 %3024, %3015
  %3026 = lshr i64 %3025, 4
  %3027 = trunc i64 %3026 to i8
  %3028 = and i8 %3027, 1
  store i8 %3028, i8* %26, align 1
  %3029 = icmp eq i64 %3015, 0
  %3030 = zext i1 %3029 to i8
  store i8 %3030, i8* %29, align 1
  %3031 = lshr i64 %3015, 63
  %3032 = trunc i64 %3031 to i8
  store i8 %3032, i8* %32, align 1
  %3033 = lshr i64 %3014, 63
  %3034 = xor i64 %3031, %3033
  %3035 = add nuw nsw i64 %3034, %3031
  %3036 = icmp eq i64 %3035, 2
  %3037 = zext i1 %3036 to i8
  store i8 %3037, i8* %38, align 1
  %3038 = add i64 %3009, 25
  store i64 %3038, i64* %3, align 8
  %3039 = load i32, i32* %2957, align 4
  %3040 = sext i32 %3039 to i64
  %3041 = shl nsw i64 %3040, 4
  %3042 = add i64 %3041, %3015
  store i64 %3042, i64* %RCX.i2165, align 8
  %3043 = icmp ult i64 %3042, %3015
  %3044 = icmp ult i64 %3042, %3041
  %3045 = or i1 %3043, %3044
  %3046 = zext i1 %3045 to i8
  store i8 %3046, i8* %14, align 1
  %3047 = trunc i64 %3042 to i32
  %3048 = and i32 %3047, 255
  %3049 = tail call i32 @llvm.ctpop.i32(i32 %3048)
  %3050 = trunc i32 %3049 to i8
  %3051 = and i8 %3050, 1
  %3052 = xor i8 %3051, 1
  store i8 %3052, i8* %21, align 1
  %3053 = xor i64 %3041, %3015
  %3054 = xor i64 %3053, %3042
  %3055 = lshr i64 %3054, 4
  %3056 = trunc i64 %3055 to i8
  %3057 = and i8 %3056, 1
  store i8 %3057, i8* %26, align 1
  %3058 = icmp eq i64 %3042, 0
  %3059 = zext i1 %3058 to i8
  store i8 %3059, i8* %29, align 1
  %3060 = lshr i64 %3042, 63
  %3061 = trunc i64 %3060 to i8
  store i8 %3061, i8* %32, align 1
  %3062 = lshr i64 %3040, 59
  %3063 = and i64 %3062, 1
  %3064 = xor i64 %3060, %3031
  %3065 = xor i64 %3060, %3063
  %3066 = add nuw nsw i64 %3064, %3065
  %3067 = icmp eq i64 %3066, 2
  %3068 = zext i1 %3067 to i8
  store i8 %3068, i8* %38, align 1
  %3069 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*), align 8
  store i64 %3069, i64* %RDX.i2162, align 8
  %3070 = add i64 %3069, 72520
  %3071 = add i64 %3009, 47
  store i64 %3071, i64* %3, align 8
  %3072 = inttoptr i64 %3070 to i32*
  %3073 = load i32, i32* %3072, align 4
  %3074 = sext i32 %3073 to i64
  %3075 = mul nsw i64 %3074, 24
  store i64 %3075, i64* %RDX.i2162, align 8
  %3076 = lshr i64 %3075, 63
  %3077 = load i64, i64* %RAX.i2255, align 8
  %3078 = add i64 %3075, %3077
  store i64 %3078, i64* %RAX.i2255, align 8
  %3079 = icmp ult i64 %3078, %3077
  %3080 = icmp ult i64 %3078, %3075
  %3081 = or i1 %3079, %3080
  %3082 = zext i1 %3081 to i8
  store i8 %3082, i8* %14, align 1
  %3083 = trunc i64 %3078 to i32
  %3084 = and i32 %3083, 255
  %3085 = tail call i32 @llvm.ctpop.i32(i32 %3084)
  %3086 = trunc i32 %3085 to i8
  %3087 = and i8 %3086, 1
  %3088 = xor i8 %3087, 1
  store i8 %3088, i8* %21, align 1
  %3089 = xor i64 %3075, %3077
  %3090 = xor i64 %3089, %3078
  %3091 = lshr i64 %3090, 4
  %3092 = trunc i64 %3091 to i8
  %3093 = and i8 %3092, 1
  store i8 %3093, i8* %26, align 1
  %3094 = icmp eq i64 %3078, 0
  %3095 = zext i1 %3094 to i8
  store i8 %3095, i8* %29, align 1
  %3096 = lshr i64 %3078, 63
  %3097 = trunc i64 %3096 to i8
  store i8 %3097, i8* %32, align 1
  %3098 = lshr i64 %3077, 63
  %3099 = xor i64 %3096, %3098
  %3100 = xor i64 %3096, %3076
  %3101 = add nuw nsw i64 %3099, %3100
  %3102 = icmp eq i64 %3101, 2
  %3103 = zext i1 %3102 to i8
  store i8 %3103, i8* %38, align 1
  %3104 = load i64, i64* %RBP.i, align 8
  %3105 = add i64 %3104, -24
  %3106 = add i64 %3009, 58
  store i64 %3106, i64* %3, align 8
  %3107 = inttoptr i64 %3105 to i32*
  %3108 = load i32, i32* %3107, align 4
  %3109 = sext i32 %3108 to i64
  %3110 = shl nsw i64 %3109, 3
  store i64 %3110, i64* %RDX.i2162, align 8
  %3111 = add i64 %3110, %3078
  store i64 %3111, i64* %RAX.i2255, align 8
  %3112 = icmp ult i64 %3111, %3078
  %3113 = icmp ult i64 %3111, %3110
  %3114 = or i1 %3112, %3113
  %3115 = zext i1 %3114 to i8
  store i8 %3115, i8* %14, align 1
  %3116 = trunc i64 %3111 to i32
  %3117 = and i32 %3116, 255
  %3118 = tail call i32 @llvm.ctpop.i32(i32 %3117)
  %3119 = trunc i32 %3118 to i8
  %3120 = and i8 %3119, 1
  %3121 = xor i8 %3120, 1
  store i8 %3121, i8* %21, align 1
  %3122 = xor i64 %3110, %3078
  %3123 = xor i64 %3122, %3111
  %3124 = lshr i64 %3123, 4
  %3125 = trunc i64 %3124 to i8
  %3126 = and i8 %3125, 1
  store i8 %3126, i8* %26, align 1
  %3127 = icmp eq i64 %3111, 0
  %3128 = zext i1 %3127 to i8
  store i8 %3128, i8* %29, align 1
  %3129 = lshr i64 %3111, 63
  %3130 = trunc i64 %3129 to i8
  store i8 %3130, i8* %32, align 1
  %3131 = lshr i64 %3109, 60
  %3132 = and i64 %3131, 1
  %3133 = xor i64 %3129, %3096
  %3134 = xor i64 %3129, %3132
  %3135 = add nuw nsw i64 %3133, %3134
  %3136 = icmp eq i64 %3135, 2
  %3137 = zext i1 %3136 to i8
  store i8 %3137, i8* %38, align 1
  %3138 = load i64, i64* %RCX.i2165, align 8
  store i64 %3138, i64* %RDI.i2122, align 8
  store i64 %3111, i64* %RSI.i2119, align 8
  %3139 = add i64 %3009, -89937
  %3140 = add i64 %3009, 76
  %3141 = load i64, i64* %6, align 8
  %3142 = add i64 %3141, -8
  %3143 = inttoptr i64 %3142 to i64*
  store i64 %3140, i64* %3143, align 8
  store i64 %3142, i64* %6, align 8
  store i64 %3139, i64* %3, align 8
  %call2_418428 = tail call %struct.Memory* @sub_402490.biari_init_context(%struct.State* nonnull %0, i64 %3139, %struct.Memory* %2)
  %3144 = load i64, i64* %3, align 8
  %3145 = add i64 %3144, 81
  store i64 %3145, i64* %3, align 8
  br label %block_.L_41847e

block_.L_418432:                                  ; preds = %block_4183cf
  store i64 ptrtoint (%G__0x4b3e20_type* @G__0x4b3e20 to i64), i64* %RAX.i2255, align 8
  %3146 = add i64 %2954, -8
  %3147 = add i64 %3009, 14
  store i64 %3147, i64* %3, align 8
  %3148 = inttoptr i64 %3146 to i64*
  %3149 = load i64, i64* %3148, align 8
  %3150 = add i64 %3149, 1456
  store i64 %3150, i64* %RCX.i2165, align 8
  %3151 = icmp ugt i64 %3149, -1457
  %3152 = zext i1 %3151 to i8
  store i8 %3152, i8* %14, align 1
  %3153 = trunc i64 %3150 to i32
  %3154 = and i32 %3153, 255
  %3155 = tail call i32 @llvm.ctpop.i32(i32 %3154)
  %3156 = trunc i32 %3155 to i8
  %3157 = and i8 %3156, 1
  %3158 = xor i8 %3157, 1
  store i8 %3158, i8* %21, align 1
  %3159 = xor i64 %3149, 16
  %3160 = xor i64 %3159, %3150
  %3161 = lshr i64 %3160, 4
  %3162 = trunc i64 %3161 to i8
  %3163 = and i8 %3162, 1
  store i8 %3163, i8* %26, align 1
  %3164 = icmp eq i64 %3150, 0
  %3165 = zext i1 %3164 to i8
  store i8 %3165, i8* %29, align 1
  %3166 = lshr i64 %3150, 63
  %3167 = trunc i64 %3166 to i8
  store i8 %3167, i8* %32, align 1
  %3168 = lshr i64 %3149, 63
  %3169 = xor i64 %3166, %3168
  %3170 = add nuw nsw i64 %3169, %3166
  %3171 = icmp eq i64 %3170, 2
  %3172 = zext i1 %3171 to i8
  store i8 %3172, i8* %38, align 1
  %3173 = add i64 %3009, 25
  store i64 %3173, i64* %3, align 8
  %3174 = load i32, i32* %2957, align 4
  %3175 = sext i32 %3174 to i64
  %3176 = shl nsw i64 %3175, 4
  %3177 = add i64 %3176, %3150
  store i64 %3177, i64* %RCX.i2165, align 8
  %3178 = icmp ult i64 %3177, %3150
  %3179 = icmp ult i64 %3177, %3176
  %3180 = or i1 %3178, %3179
  %3181 = zext i1 %3180 to i8
  store i8 %3181, i8* %14, align 1
  %3182 = trunc i64 %3177 to i32
  %3183 = and i32 %3182, 255
  %3184 = tail call i32 @llvm.ctpop.i32(i32 %3183)
  %3185 = trunc i32 %3184 to i8
  %3186 = and i8 %3185, 1
  %3187 = xor i8 %3186, 1
  store i8 %3187, i8* %21, align 1
  %3188 = xor i64 %3176, %3150
  %3189 = xor i64 %3188, %3177
  %3190 = lshr i64 %3189, 4
  %3191 = trunc i64 %3190 to i8
  %3192 = and i8 %3191, 1
  store i8 %3192, i8* %26, align 1
  %3193 = icmp eq i64 %3177, 0
  %3194 = zext i1 %3193 to i8
  store i8 %3194, i8* %29, align 1
  %3195 = lshr i64 %3177, 63
  %3196 = trunc i64 %3195 to i8
  store i8 %3196, i8* %32, align 1
  %3197 = lshr i64 %3175, 59
  %3198 = and i64 %3197, 1
  %3199 = xor i64 %3195, %3166
  %3200 = xor i64 %3195, %3198
  %3201 = add nuw nsw i64 %3199, %3200
  %3202 = icmp eq i64 %3201, 2
  %3203 = zext i1 %3202 to i8
  store i8 %3203, i8* %38, align 1
  %3204 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*), align 8
  store i64 %3204, i64* %RDX.i2162, align 8
  %3205 = add i64 %3204, 72520
  %3206 = add i64 %3009, 47
  store i64 %3206, i64* %3, align 8
  %3207 = inttoptr i64 %3205 to i32*
  %3208 = load i32, i32* %3207, align 4
  %3209 = sext i32 %3208 to i64
  %3210 = mul nsw i64 %3209, 24
  store i64 %3210, i64* %RDX.i2162, align 8
  %3211 = lshr i64 %3210, 63
  %3212 = load i64, i64* %RAX.i2255, align 8
  %3213 = add i64 %3210, %3212
  store i64 %3213, i64* %RAX.i2255, align 8
  %3214 = icmp ult i64 %3213, %3212
  %3215 = icmp ult i64 %3213, %3210
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
  %3224 = xor i64 %3210, %3212
  %3225 = xor i64 %3224, %3213
  %3226 = lshr i64 %3225, 4
  %3227 = trunc i64 %3226 to i8
  %3228 = and i8 %3227, 1
  store i8 %3228, i8* %26, align 1
  %3229 = icmp eq i64 %3213, 0
  %3230 = zext i1 %3229 to i8
  store i8 %3230, i8* %29, align 1
  %3231 = lshr i64 %3213, 63
  %3232 = trunc i64 %3231 to i8
  store i8 %3232, i8* %32, align 1
  %3233 = lshr i64 %3212, 63
  %3234 = xor i64 %3231, %3233
  %3235 = xor i64 %3231, %3211
  %3236 = add nuw nsw i64 %3234, %3235
  %3237 = icmp eq i64 %3236, 2
  %3238 = zext i1 %3237 to i8
  store i8 %3238, i8* %38, align 1
  %3239 = load i64, i64* %RBP.i, align 8
  %3240 = add i64 %3239, -24
  %3241 = add i64 %3009, 58
  store i64 %3241, i64* %3, align 8
  %3242 = inttoptr i64 %3240 to i32*
  %3243 = load i32, i32* %3242, align 4
  %3244 = sext i32 %3243 to i64
  %3245 = shl nsw i64 %3244, 3
  store i64 %3245, i64* %RDX.i2162, align 8
  %3246 = add i64 %3245, %3213
  store i64 %3246, i64* %RAX.i2255, align 8
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
  %3257 = xor i64 %3245, %3213
  %3258 = xor i64 %3257, %3246
  %3259 = lshr i64 %3258, 4
  %3260 = trunc i64 %3259 to i8
  %3261 = and i8 %3260, 1
  store i8 %3261, i8* %26, align 1
  %3262 = icmp eq i64 %3246, 0
  %3263 = zext i1 %3262 to i8
  store i8 %3263, i8* %29, align 1
  %3264 = lshr i64 %3246, 63
  %3265 = trunc i64 %3264 to i8
  store i8 %3265, i8* %32, align 1
  %3266 = lshr i64 %3244, 60
  %3267 = and i64 %3266, 1
  %3268 = xor i64 %3264, %3231
  %3269 = xor i64 %3264, %3267
  %3270 = add nuw nsw i64 %3268, %3269
  %3271 = icmp eq i64 %3270, 2
  %3272 = zext i1 %3271 to i8
  store i8 %3272, i8* %38, align 1
  %3273 = load i64, i64* %RCX.i2165, align 8
  store i64 %3273, i64* %RDI.i2122, align 8
  store i64 %3246, i64* %RSI.i2119, align 8
  %3274 = add i64 %3009, -90018
  %3275 = add i64 %3009, 76
  %3276 = load i64, i64* %6, align 8
  %3277 = add i64 %3276, -8
  %3278 = inttoptr i64 %3277 to i64*
  store i64 %3275, i64* %3278, align 8
  store i64 %3277, i64* %6, align 8
  store i64 %3274, i64* %3, align 8
  %call2_418479 = tail call %struct.Memory* @sub_402490.biari_init_context(%struct.State* nonnull %0, i64 %3274, %struct.Memory* %2)
  %.pre239 = load i64, i64* %3, align 8
  br label %block_.L_41847e

block_.L_41847e:                                  ; preds = %block_.L_418432, %block_4183e1
  %3279 = phi i64 [ %.pre239, %block_.L_418432 ], [ %3145, %block_4183e1 ]
  %3280 = load i64, i64* %RBP.i, align 8
  %3281 = add i64 %3280, -24
  %3282 = add i64 %3279, 8
  store i64 %3282, i64* %3, align 8
  %3283 = inttoptr i64 %3281 to i32*
  %3284 = load i32, i32* %3283, align 4
  %3285 = add i32 %3284, 1
  %3286 = zext i32 %3285 to i64
  store i64 %3286, i64* %RAX.i2255, align 8
  %3287 = icmp eq i32 %3284, -1
  %3288 = icmp eq i32 %3285, 0
  %3289 = or i1 %3287, %3288
  %3290 = zext i1 %3289 to i8
  store i8 %3290, i8* %14, align 1
  %3291 = and i32 %3285, 255
  %3292 = tail call i32 @llvm.ctpop.i32(i32 %3291)
  %3293 = trunc i32 %3292 to i8
  %3294 = and i8 %3293, 1
  %3295 = xor i8 %3294, 1
  store i8 %3295, i8* %21, align 1
  %3296 = xor i32 %3285, %3284
  %3297 = lshr i32 %3296, 4
  %3298 = trunc i32 %3297 to i8
  %3299 = and i8 %3298, 1
  store i8 %3299, i8* %26, align 1
  %3300 = zext i1 %3288 to i8
  store i8 %3300, i8* %29, align 1
  %3301 = lshr i32 %3285, 31
  %3302 = trunc i32 %3301 to i8
  store i8 %3302, i8* %32, align 1
  %3303 = lshr i32 %3284, 31
  %3304 = xor i32 %3301, %3303
  %3305 = add nuw nsw i32 %3304, %3301
  %3306 = icmp eq i32 %3305, 2
  %3307 = zext i1 %3306 to i8
  store i8 %3307, i8* %38, align 1
  %3308 = add i64 %3279, 14
  store i64 %3308, i64* %3, align 8
  store i32 %3285, i32* %3283, align 4
  %3309 = load i64, i64* %3, align 8
  %3310 = add i64 %3309, -199
  store i64 %3310, i64* %3, align 8
  br label %block_.L_4183c5

block_.L_418491:                                  ; preds = %block_.L_4183c5
  %3311 = add i64 %2982, 7
  store i64 %3311, i64* %3, align 8
  store i32 0, i32* %2957, align 4
  %.pre211 = load i64, i64* %3, align 8
  br label %block_.L_418498

block_.L_418498:                                  ; preds = %block_.L_418543, %block_.L_418491
  %3312 = phi i64 [ %.pre211, %block_.L_418491 ], [ %3625, %block_.L_418543 ]
  %3313 = load i64, i64* %RBP.i, align 8
  %3314 = add i64 %3313, -24
  %3315 = add i64 %3312, 4
  store i64 %3315, i64* %3, align 8
  %3316 = inttoptr i64 %3314 to i32*
  %3317 = load i32, i32* %3316, align 4
  %3318 = add i32 %3317, -2
  %3319 = icmp ult i32 %3317, 2
  %3320 = zext i1 %3319 to i8
  store i8 %3320, i8* %14, align 1
  %3321 = and i32 %3318, 255
  %3322 = tail call i32 @llvm.ctpop.i32(i32 %3321)
  %3323 = trunc i32 %3322 to i8
  %3324 = and i8 %3323, 1
  %3325 = xor i8 %3324, 1
  store i8 %3325, i8* %21, align 1
  %3326 = xor i32 %3318, %3317
  %3327 = lshr i32 %3326, 4
  %3328 = trunc i32 %3327 to i8
  %3329 = and i8 %3328, 1
  store i8 %3329, i8* %26, align 1
  %3330 = icmp eq i32 %3318, 0
  %3331 = zext i1 %3330 to i8
  store i8 %3331, i8* %29, align 1
  %3332 = lshr i32 %3318, 31
  %3333 = trunc i32 %3332 to i8
  store i8 %3333, i8* %32, align 1
  %3334 = lshr i32 %3317, 31
  %3335 = xor i32 %3332, %3334
  %3336 = add nuw nsw i32 %3335, %3334
  %3337 = icmp eq i32 %3336, 2
  %3338 = zext i1 %3337 to i8
  store i8 %3338, i8* %38, align 1
  %3339 = icmp ne i8 %3333, 0
  %3340 = xor i1 %3339, %3337
  %.v268 = select i1 %3340, i64 10, i64 190
  %3341 = add i64 %3312, %.v268
  store i64 %3341, i64* %3, align 8
  br i1 %3340, label %block_4184a2, label %block_.L_418556

block_4184a2:                                     ; preds = %block_.L_418498
  %3342 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*), align 8
  store i64 %3342, i64* %RAX.i2255, align 8
  %3343 = add i64 %3342, 24
  %3344 = add i64 %3341, 12
  store i64 %3344, i64* %3, align 8
  %3345 = inttoptr i64 %3343 to i32*
  %3346 = load i32, i32* %3345, align 4
  %3347 = add i32 %3346, -2
  %3348 = icmp ult i32 %3346, 2
  %3349 = zext i1 %3348 to i8
  store i8 %3349, i8* %14, align 1
  %3350 = and i32 %3347, 255
  %3351 = tail call i32 @llvm.ctpop.i32(i32 %3350)
  %3352 = trunc i32 %3351 to i8
  %3353 = and i8 %3352, 1
  %3354 = xor i8 %3353, 1
  store i8 %3354, i8* %21, align 1
  %3355 = xor i32 %3347, %3346
  %3356 = lshr i32 %3355, 4
  %3357 = trunc i32 %3356 to i8
  %3358 = and i8 %3357, 1
  store i8 %3358, i8* %26, align 1
  %3359 = icmp eq i32 %3347, 0
  %3360 = zext i1 %3359 to i8
  store i8 %3360, i8* %29, align 1
  %3361 = lshr i32 %3347, 31
  %3362 = trunc i32 %3361 to i8
  store i8 %3362, i8* %32, align 1
  %3363 = lshr i32 %3346, 31
  %3364 = xor i32 %3361, %3363
  %3365 = add nuw nsw i32 %3364, %3363
  %3366 = icmp eq i32 %3365, 2
  %3367 = zext i1 %3366 to i8
  store i8 %3367, i8* %38, align 1
  %.v287 = select i1 %3359, i64 18, i64 92
  %3368 = add i64 %3341, %.v287
  %3369 = add i64 %3368, 10
  store i64 %3369, i64* %3, align 8
  br i1 %3359, label %block_4184b4, label %block_.L_4184fe

block_4184b4:                                     ; preds = %block_4184a2
  store i64 ptrtoint (%G__0x4b3e70_type* @G__0x4b3e70 to i64), i64* %RAX.i2255, align 8
  %3370 = add i64 %3313, -16
  %3371 = add i64 %3368, 14
  store i64 %3371, i64* %3, align 8
  %3372 = inttoptr i64 %3370 to i64*
  %3373 = load i64, i64* %3372, align 8
  store i64 %3373, i64* %RCX.i2165, align 8
  %3374 = add i64 %3368, 18
  store i64 %3374, i64* %3, align 8
  %3375 = load i32, i32* %3316, align 4
  %3376 = sext i32 %3375 to i64
  %3377 = shl nsw i64 %3376, 4
  %3378 = add i64 %3377, %3373
  store i64 %3378, i64* %RCX.i2165, align 8
  %3379 = icmp ult i64 %3378, %3373
  %3380 = icmp ult i64 %3378, %3377
  %3381 = or i1 %3379, %3380
  %3382 = zext i1 %3381 to i8
  store i8 %3382, i8* %14, align 1
  %3383 = trunc i64 %3378 to i32
  %3384 = and i32 %3383, 255
  %3385 = tail call i32 @llvm.ctpop.i32(i32 %3384)
  %3386 = trunc i32 %3385 to i8
  %3387 = and i8 %3386, 1
  %3388 = xor i8 %3387, 1
  store i8 %3388, i8* %21, align 1
  %3389 = xor i64 %3377, %3373
  %3390 = xor i64 %3389, %3378
  %3391 = lshr i64 %3390, 4
  %3392 = trunc i64 %3391 to i8
  %3393 = and i8 %3392, 1
  store i8 %3393, i8* %26, align 1
  %3394 = icmp eq i64 %3378, 0
  %3395 = zext i1 %3394 to i8
  store i8 %3395, i8* %29, align 1
  %3396 = lshr i64 %3378, 63
  %3397 = trunc i64 %3396 to i8
  store i8 %3397, i8* %32, align 1
  %3398 = lshr i64 %3373, 63
  %3399 = lshr i64 %3376, 59
  %3400 = and i64 %3399, 1
  %3401 = xor i64 %3396, %3398
  %3402 = xor i64 %3396, %3400
  %3403 = add nuw nsw i64 %3401, %3402
  %3404 = icmp eq i64 %3403, 2
  %3405 = zext i1 %3404 to i8
  store i8 %3405, i8* %38, align 1
  store i64 %3342, i64* %RDX.i2162, align 8
  %3406 = add i64 %3342, 72520
  %3407 = add i64 %3368, 40
  store i64 %3407, i64* %3, align 8
  %3408 = inttoptr i64 %3406 to i32*
  %3409 = load i32, i32* %3408, align 4
  %3410 = sext i32 %3409 to i64
  %3411 = shl nsw i64 %3410, 4
  store i64 %3411, i64* %RDX.i2162, align 8
  %3412 = load i64, i64* %RAX.i2255, align 8
  %3413 = add i64 %3411, %3412
  store i64 %3413, i64* %RAX.i2255, align 8
  %3414 = icmp ult i64 %3413, %3412
  %3415 = icmp ult i64 %3413, %3411
  %3416 = or i1 %3414, %3415
  %3417 = zext i1 %3416 to i8
  store i8 %3417, i8* %14, align 1
  %3418 = trunc i64 %3413 to i32
  %3419 = and i32 %3418, 255
  %3420 = tail call i32 @llvm.ctpop.i32(i32 %3419)
  %3421 = trunc i32 %3420 to i8
  %3422 = and i8 %3421, 1
  %3423 = xor i8 %3422, 1
  store i8 %3423, i8* %21, align 1
  %3424 = xor i64 %3411, %3412
  %3425 = xor i64 %3424, %3413
  %3426 = lshr i64 %3425, 4
  %3427 = trunc i64 %3426 to i8
  %3428 = and i8 %3427, 1
  store i8 %3428, i8* %26, align 1
  %3429 = icmp eq i64 %3413, 0
  %3430 = zext i1 %3429 to i8
  store i8 %3430, i8* %29, align 1
  %3431 = lshr i64 %3413, 63
  %3432 = trunc i64 %3431 to i8
  store i8 %3432, i8* %32, align 1
  %3433 = lshr i64 %3412, 63
  %3434 = lshr i64 %3410, 59
  %3435 = and i64 %3434, 1
  %3436 = xor i64 %3431, %3433
  %3437 = xor i64 %3431, %3435
  %3438 = add nuw nsw i64 %3436, %3437
  %3439 = icmp eq i64 %3438, 2
  %3440 = zext i1 %3439 to i8
  store i8 %3440, i8* %38, align 1
  %3441 = load i64, i64* %RBP.i, align 8
  %3442 = add i64 %3441, -24
  %3443 = add i64 %3368, 51
  store i64 %3443, i64* %3, align 8
  %3444 = inttoptr i64 %3442 to i32*
  %3445 = load i32, i32* %3444, align 4
  %3446 = sext i32 %3445 to i64
  %3447 = shl nsw i64 %3446, 3
  store i64 %3447, i64* %RDX.i2162, align 8
  %3448 = add i64 %3447, %3413
  store i64 %3448, i64* %RAX.i2255, align 8
  %3449 = icmp ult i64 %3448, %3413
  %3450 = icmp ult i64 %3448, %3447
  %3451 = or i1 %3449, %3450
  %3452 = zext i1 %3451 to i8
  store i8 %3452, i8* %14, align 1
  %3453 = trunc i64 %3448 to i32
  %3454 = and i32 %3453, 255
  %3455 = tail call i32 @llvm.ctpop.i32(i32 %3454)
  %3456 = trunc i32 %3455 to i8
  %3457 = and i8 %3456, 1
  %3458 = xor i8 %3457, 1
  store i8 %3458, i8* %21, align 1
  %3459 = xor i64 %3447, %3413
  %3460 = xor i64 %3459, %3448
  %3461 = lshr i64 %3460, 4
  %3462 = trunc i64 %3461 to i8
  %3463 = and i8 %3462, 1
  store i8 %3463, i8* %26, align 1
  %3464 = icmp eq i64 %3448, 0
  %3465 = zext i1 %3464 to i8
  store i8 %3465, i8* %29, align 1
  %3466 = lshr i64 %3448, 63
  %3467 = trunc i64 %3466 to i8
  store i8 %3467, i8* %32, align 1
  %3468 = lshr i64 %3446, 60
  %3469 = and i64 %3468, 1
  %3470 = xor i64 %3466, %3431
  %3471 = xor i64 %3466, %3469
  %3472 = add nuw nsw i64 %3470, %3471
  %3473 = icmp eq i64 %3472, 2
  %3474 = zext i1 %3473 to i8
  store i8 %3474, i8* %38, align 1
  %3475 = load i64, i64* %RCX.i2165, align 8
  store i64 %3475, i64* %RDI.i2122, align 8
  store i64 %3448, i64* %RSI.i2119, align 8
  %3476 = add i64 %3368, -90148
  %3477 = add i64 %3368, 69
  %3478 = load i64, i64* %6, align 8
  %3479 = add i64 %3478, -8
  %3480 = inttoptr i64 %3479 to i64*
  store i64 %3477, i64* %3480, align 8
  store i64 %3479, i64* %6, align 8
  store i64 %3476, i64* %3, align 8
  %call2_4184f4 = tail call %struct.Memory* @sub_402490.biari_init_context(%struct.State* nonnull %0, i64 %3476, %struct.Memory* %2)
  %3481 = load i64, i64* %3, align 8
  %3482 = add i64 %3481, 74
  store i64 %3482, i64* %3, align 8
  br label %block_.L_418543

block_.L_4184fe:                                  ; preds = %block_4184a2
  store i64 ptrtoint (%G__0x4b3e80_type* @G__0x4b3e80 to i64), i64* %RAX.i2255, align 8
  %3483 = add i64 %3313, -16
  %3484 = add i64 %3368, 14
  store i64 %3484, i64* %3, align 8
  %3485 = inttoptr i64 %3483 to i64*
  %3486 = load i64, i64* %3485, align 8
  store i64 %3486, i64* %RCX.i2165, align 8
  %3487 = add i64 %3368, 18
  store i64 %3487, i64* %3, align 8
  %3488 = load i32, i32* %3316, align 4
  %3489 = sext i32 %3488 to i64
  %3490 = shl nsw i64 %3489, 4
  %3491 = add i64 %3490, %3486
  store i64 %3491, i64* %RCX.i2165, align 8
  %3492 = icmp ult i64 %3491, %3486
  %3493 = icmp ult i64 %3491, %3490
  %3494 = or i1 %3492, %3493
  %3495 = zext i1 %3494 to i8
  store i8 %3495, i8* %14, align 1
  %3496 = trunc i64 %3491 to i32
  %3497 = and i32 %3496, 255
  %3498 = tail call i32 @llvm.ctpop.i32(i32 %3497)
  %3499 = trunc i32 %3498 to i8
  %3500 = and i8 %3499, 1
  %3501 = xor i8 %3500, 1
  store i8 %3501, i8* %21, align 1
  %3502 = xor i64 %3490, %3486
  %3503 = xor i64 %3502, %3491
  %3504 = lshr i64 %3503, 4
  %3505 = trunc i64 %3504 to i8
  %3506 = and i8 %3505, 1
  store i8 %3506, i8* %26, align 1
  %3507 = icmp eq i64 %3491, 0
  %3508 = zext i1 %3507 to i8
  store i8 %3508, i8* %29, align 1
  %3509 = lshr i64 %3491, 63
  %3510 = trunc i64 %3509 to i8
  store i8 %3510, i8* %32, align 1
  %3511 = lshr i64 %3486, 63
  %3512 = lshr i64 %3489, 59
  %3513 = and i64 %3512, 1
  %3514 = xor i64 %3509, %3511
  %3515 = xor i64 %3509, %3513
  %3516 = add nuw nsw i64 %3514, %3515
  %3517 = icmp eq i64 %3516, 2
  %3518 = zext i1 %3517 to i8
  store i8 %3518, i8* %38, align 1
  store i64 %3342, i64* %RDX.i2162, align 8
  %3519 = add i64 %3342, 72520
  %3520 = add i64 %3368, 40
  store i64 %3520, i64* %3, align 8
  %3521 = inttoptr i64 %3519 to i32*
  %3522 = load i32, i32* %3521, align 4
  %3523 = sext i32 %3522 to i64
  %3524 = shl nsw i64 %3523, 4
  store i64 %3524, i64* %RDX.i2162, align 8
  %3525 = load i64, i64* %RAX.i2255, align 8
  %3526 = add i64 %3524, %3525
  store i64 %3526, i64* %RAX.i2255, align 8
  %3527 = icmp ult i64 %3526, %3525
  %3528 = icmp ult i64 %3526, %3524
  %3529 = or i1 %3527, %3528
  %3530 = zext i1 %3529 to i8
  store i8 %3530, i8* %14, align 1
  %3531 = trunc i64 %3526 to i32
  %3532 = and i32 %3531, 255
  %3533 = tail call i32 @llvm.ctpop.i32(i32 %3532)
  %3534 = trunc i32 %3533 to i8
  %3535 = and i8 %3534, 1
  %3536 = xor i8 %3535, 1
  store i8 %3536, i8* %21, align 1
  %3537 = xor i64 %3524, %3525
  %3538 = xor i64 %3537, %3526
  %3539 = lshr i64 %3538, 4
  %3540 = trunc i64 %3539 to i8
  %3541 = and i8 %3540, 1
  store i8 %3541, i8* %26, align 1
  %3542 = icmp eq i64 %3526, 0
  %3543 = zext i1 %3542 to i8
  store i8 %3543, i8* %29, align 1
  %3544 = lshr i64 %3526, 63
  %3545 = trunc i64 %3544 to i8
  store i8 %3545, i8* %32, align 1
  %3546 = lshr i64 %3525, 63
  %3547 = lshr i64 %3523, 59
  %3548 = and i64 %3547, 1
  %3549 = xor i64 %3544, %3546
  %3550 = xor i64 %3544, %3548
  %3551 = add nuw nsw i64 %3549, %3550
  %3552 = icmp eq i64 %3551, 2
  %3553 = zext i1 %3552 to i8
  store i8 %3553, i8* %38, align 1
  %3554 = load i64, i64* %RBP.i, align 8
  %3555 = add i64 %3554, -24
  %3556 = add i64 %3368, 51
  store i64 %3556, i64* %3, align 8
  %3557 = inttoptr i64 %3555 to i32*
  %3558 = load i32, i32* %3557, align 4
  %3559 = sext i32 %3558 to i64
  %3560 = shl nsw i64 %3559, 3
  store i64 %3560, i64* %RDX.i2162, align 8
  %3561 = add i64 %3560, %3526
  store i64 %3561, i64* %RAX.i2255, align 8
  %3562 = icmp ult i64 %3561, %3526
  %3563 = icmp ult i64 %3561, %3560
  %3564 = or i1 %3562, %3563
  %3565 = zext i1 %3564 to i8
  store i8 %3565, i8* %14, align 1
  %3566 = trunc i64 %3561 to i32
  %3567 = and i32 %3566, 255
  %3568 = tail call i32 @llvm.ctpop.i32(i32 %3567)
  %3569 = trunc i32 %3568 to i8
  %3570 = and i8 %3569, 1
  %3571 = xor i8 %3570, 1
  store i8 %3571, i8* %21, align 1
  %3572 = xor i64 %3560, %3526
  %3573 = xor i64 %3572, %3561
  %3574 = lshr i64 %3573, 4
  %3575 = trunc i64 %3574 to i8
  %3576 = and i8 %3575, 1
  store i8 %3576, i8* %26, align 1
  %3577 = icmp eq i64 %3561, 0
  %3578 = zext i1 %3577 to i8
  store i8 %3578, i8* %29, align 1
  %3579 = lshr i64 %3561, 63
  %3580 = trunc i64 %3579 to i8
  store i8 %3580, i8* %32, align 1
  %3581 = lshr i64 %3559, 60
  %3582 = and i64 %3581, 1
  %3583 = xor i64 %3579, %3544
  %3584 = xor i64 %3579, %3582
  %3585 = add nuw nsw i64 %3583, %3584
  %3586 = icmp eq i64 %3585, 2
  %3587 = zext i1 %3586 to i8
  store i8 %3587, i8* %38, align 1
  %3588 = load i64, i64* %RCX.i2165, align 8
  store i64 %3588, i64* %RDI.i2122, align 8
  store i64 %3561, i64* %RSI.i2119, align 8
  %3589 = add i64 %3368, -90222
  %3590 = add i64 %3368, 69
  %3591 = load i64, i64* %6, align 8
  %3592 = add i64 %3591, -8
  %3593 = inttoptr i64 %3592 to i64*
  store i64 %3590, i64* %3593, align 8
  store i64 %3592, i64* %6, align 8
  store i64 %3589, i64* %3, align 8
  %call2_41853e = tail call %struct.Memory* @sub_402490.biari_init_context(%struct.State* nonnull %0, i64 %3589, %struct.Memory* %2)
  %.pre238 = load i64, i64* %3, align 8
  br label %block_.L_418543

block_.L_418543:                                  ; preds = %block_.L_4184fe, %block_4184b4
  %3594 = phi i64 [ %.pre238, %block_.L_4184fe ], [ %3482, %block_4184b4 ]
  %3595 = load i64, i64* %RBP.i, align 8
  %3596 = add i64 %3595, -24
  %3597 = add i64 %3594, 8
  store i64 %3597, i64* %3, align 8
  %3598 = inttoptr i64 %3596 to i32*
  %3599 = load i32, i32* %3598, align 4
  %3600 = add i32 %3599, 1
  %3601 = zext i32 %3600 to i64
  store i64 %3601, i64* %RAX.i2255, align 8
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
  store i8 %3614, i8* %26, align 1
  %3615 = zext i1 %3603 to i8
  store i8 %3615, i8* %29, align 1
  %3616 = lshr i32 %3600, 31
  %3617 = trunc i32 %3616 to i8
  store i8 %3617, i8* %32, align 1
  %3618 = lshr i32 %3599, 31
  %3619 = xor i32 %3616, %3618
  %3620 = add nuw nsw i32 %3619, %3616
  %3621 = icmp eq i32 %3620, 2
  %3622 = zext i1 %3621 to i8
  store i8 %3622, i8* %38, align 1
  %3623 = add i64 %3594, 14
  store i64 %3623, i64* %3, align 8
  store i32 %3600, i32* %3598, align 4
  %3624 = load i64, i64* %3, align 8
  %3625 = add i64 %3624, -185
  store i64 %3625, i64* %3, align 8
  br label %block_.L_418498

block_.L_418556:                                  ; preds = %block_.L_418498
  %3626 = add i64 %3341, 7
  store i64 %3626, i64* %3, align 8
  store i32 0, i32* %3316, align 4
  %.pre212 = load i64, i64* %3, align 8
  br label %block_.L_41855d

block_.L_41855d:                                  ; preds = %block_.L_418610, %block_.L_418556
  %3627 = phi i64 [ %.pre212, %block_.L_418556 ], [ %3982, %block_.L_418610 ]
  %3628 = load i64, i64* %RBP.i, align 8
  %3629 = add i64 %3628, -24
  %3630 = add i64 %3627, 4
  store i64 %3630, i64* %3, align 8
  %3631 = inttoptr i64 %3629 to i32*
  %3632 = load i32, i32* %3631, align 4
  %3633 = add i32 %3632, -4
  %3634 = icmp ult i32 %3632, 4
  %3635 = zext i1 %3634 to i8
  store i8 %3635, i8* %14, align 1
  %3636 = and i32 %3633, 255
  %3637 = tail call i32 @llvm.ctpop.i32(i32 %3636)
  %3638 = trunc i32 %3637 to i8
  %3639 = and i8 %3638, 1
  %3640 = xor i8 %3639, 1
  store i8 %3640, i8* %21, align 1
  %3641 = xor i32 %3633, %3632
  %3642 = lshr i32 %3641, 4
  %3643 = trunc i32 %3642 to i8
  %3644 = and i8 %3643, 1
  store i8 %3644, i8* %26, align 1
  %3645 = icmp eq i32 %3633, 0
  %3646 = zext i1 %3645 to i8
  store i8 %3646, i8* %29, align 1
  %3647 = lshr i32 %3633, 31
  %3648 = trunc i32 %3647 to i8
  store i8 %3648, i8* %32, align 1
  %3649 = lshr i32 %3632, 31
  %3650 = xor i32 %3647, %3649
  %3651 = add nuw nsw i32 %3650, %3649
  %3652 = icmp eq i32 %3651, 2
  %3653 = zext i1 %3652 to i8
  store i8 %3653, i8* %38, align 1
  %3654 = icmp ne i8 %3648, 0
  %3655 = xor i1 %3654, %3652
  %.v269 = select i1 %3655, i64 10, i64 198
  %3656 = add i64 %3627, %.v269
  store i64 %3656, i64* %3, align 8
  br i1 %3655, label %block_418567, label %block_.L_418623

block_418567:                                     ; preds = %block_.L_41855d
  %3657 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*), align 8
  store i64 %3657, i64* %RAX.i2255, align 8
  %3658 = add i64 %3657, 24
  %3659 = add i64 %3656, 12
  store i64 %3659, i64* %3, align 8
  %3660 = inttoptr i64 %3658 to i32*
  %3661 = load i32, i32* %3660, align 4
  %3662 = add i32 %3661, -2
  %3663 = icmp ult i32 %3661, 2
  %3664 = zext i1 %3663 to i8
  store i8 %3664, i8* %14, align 1
  %3665 = and i32 %3662, 255
  %3666 = tail call i32 @llvm.ctpop.i32(i32 %3665)
  %3667 = trunc i32 %3666 to i8
  %3668 = and i8 %3667, 1
  %3669 = xor i8 %3668, 1
  store i8 %3669, i8* %21, align 1
  %3670 = xor i32 %3662, %3661
  %3671 = lshr i32 %3670, 4
  %3672 = trunc i32 %3671 to i8
  %3673 = and i8 %3672, 1
  store i8 %3673, i8* %26, align 1
  %3674 = icmp eq i32 %3662, 0
  %3675 = zext i1 %3674 to i8
  store i8 %3675, i8* %29, align 1
  %3676 = lshr i32 %3662, 31
  %3677 = trunc i32 %3676 to i8
  store i8 %3677, i8* %32, align 1
  %3678 = lshr i32 %3661, 31
  %3679 = xor i32 %3676, %3678
  %3680 = add nuw nsw i32 %3679, %3678
  %3681 = icmp eq i32 %3680, 2
  %3682 = zext i1 %3681 to i8
  store i8 %3682, i8* %38, align 1
  %.v286 = select i1 %3674, i64 18, i64 96
  %3683 = add i64 %3656, %.v286
  %3684 = add i64 %3683, 10
  store i64 %3684, i64* %3, align 8
  br i1 %3674, label %block_418579, label %block_.L_4185c7

block_418579:                                     ; preds = %block_418567
  store i64 ptrtoint (%G__0x4b3eb0_type* @G__0x4b3eb0 to i64), i64* %RAX.i2255, align 8
  %3685 = add i64 %3628, -16
  %3686 = add i64 %3683, 14
  store i64 %3686, i64* %3, align 8
  %3687 = inttoptr i64 %3685 to i64*
  %3688 = load i64, i64* %3687, align 8
  %3689 = add i64 %3688, 32
  store i64 %3689, i64* %RCX.i2165, align 8
  %3690 = icmp ugt i64 %3688, -33
  %3691 = zext i1 %3690 to i8
  store i8 %3691, i8* %14, align 1
  %3692 = trunc i64 %3689 to i32
  %3693 = and i32 %3692, 255
  %3694 = tail call i32 @llvm.ctpop.i32(i32 %3693)
  %3695 = trunc i32 %3694 to i8
  %3696 = and i8 %3695, 1
  %3697 = xor i8 %3696, 1
  store i8 %3697, i8* %21, align 1
  %3698 = xor i64 %3689, %3688
  %3699 = lshr i64 %3698, 4
  %3700 = trunc i64 %3699 to i8
  %3701 = and i8 %3700, 1
  store i8 %3701, i8* %26, align 1
  %3702 = icmp eq i64 %3689, 0
  %3703 = zext i1 %3702 to i8
  store i8 %3703, i8* %29, align 1
  %3704 = lshr i64 %3689, 63
  %3705 = trunc i64 %3704 to i8
  store i8 %3705, i8* %32, align 1
  %3706 = lshr i64 %3688, 63
  %3707 = xor i64 %3704, %3706
  %3708 = add nuw nsw i64 %3707, %3704
  %3709 = icmp eq i64 %3708, 2
  %3710 = zext i1 %3709 to i8
  store i8 %3710, i8* %38, align 1
  %3711 = add i64 %3683, 22
  store i64 %3711, i64* %3, align 8
  %3712 = load i32, i32* %3631, align 4
  %3713 = sext i32 %3712 to i64
  %3714 = shl nsw i64 %3713, 4
  %3715 = add i64 %3714, %3689
  store i64 %3715, i64* %RCX.i2165, align 8
  %3716 = icmp ult i64 %3715, %3689
  %3717 = icmp ult i64 %3715, %3714
  %3718 = or i1 %3716, %3717
  %3719 = zext i1 %3718 to i8
  store i8 %3719, i8* %14, align 1
  %3720 = trunc i64 %3715 to i32
  %3721 = and i32 %3720, 255
  %3722 = tail call i32 @llvm.ctpop.i32(i32 %3721)
  %3723 = trunc i32 %3722 to i8
  %3724 = and i8 %3723, 1
  %3725 = xor i8 %3724, 1
  store i8 %3725, i8* %21, align 1
  %3726 = xor i64 %3714, %3689
  %3727 = xor i64 %3726, %3715
  %3728 = lshr i64 %3727, 4
  %3729 = trunc i64 %3728 to i8
  %3730 = and i8 %3729, 1
  store i8 %3730, i8* %26, align 1
  %3731 = icmp eq i64 %3715, 0
  %3732 = zext i1 %3731 to i8
  store i8 %3732, i8* %29, align 1
  %3733 = lshr i64 %3715, 63
  %3734 = trunc i64 %3733 to i8
  store i8 %3734, i8* %32, align 1
  %3735 = lshr i64 %3713, 59
  %3736 = and i64 %3735, 1
  %3737 = xor i64 %3733, %3704
  %3738 = xor i64 %3733, %3736
  %3739 = add nuw nsw i64 %3737, %3738
  %3740 = icmp eq i64 %3739, 2
  %3741 = zext i1 %3740 to i8
  store i8 %3741, i8* %38, align 1
  %3742 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*), align 8
  store i64 %3742, i64* %RDX.i2162, align 8
  %3743 = add i64 %3742, 72520
  %3744 = add i64 %3683, 44
  store i64 %3744, i64* %3, align 8
  %3745 = inttoptr i64 %3743 to i32*
  %3746 = load i32, i32* %3745, align 4
  %3747 = sext i32 %3746 to i64
  %3748 = shl nsw i64 %3747, 5
  store i64 %3748, i64* %RDX.i2162, align 8
  %3749 = load i64, i64* %RAX.i2255, align 8
  %3750 = add i64 %3748, %3749
  store i64 %3750, i64* %RAX.i2255, align 8
  %3751 = icmp ult i64 %3750, %3749
  %3752 = icmp ult i64 %3750, %3748
  %3753 = or i1 %3751, %3752
  %3754 = zext i1 %3753 to i8
  store i8 %3754, i8* %14, align 1
  %3755 = trunc i64 %3750 to i32
  %3756 = and i32 %3755, 255
  %3757 = tail call i32 @llvm.ctpop.i32(i32 %3756)
  %3758 = trunc i32 %3757 to i8
  %3759 = and i8 %3758, 1
  %3760 = xor i8 %3759, 1
  store i8 %3760, i8* %21, align 1
  %3761 = xor i64 %3749, %3750
  %3762 = lshr i64 %3761, 4
  %3763 = trunc i64 %3762 to i8
  %3764 = and i8 %3763, 1
  store i8 %3764, i8* %26, align 1
  %3765 = icmp eq i64 %3750, 0
  %3766 = zext i1 %3765 to i8
  store i8 %3766, i8* %29, align 1
  %3767 = lshr i64 %3750, 63
  %3768 = trunc i64 %3767 to i8
  store i8 %3768, i8* %32, align 1
  %3769 = lshr i64 %3749, 63
  %3770 = lshr i64 %3747, 58
  %3771 = and i64 %3770, 1
  %3772 = xor i64 %3767, %3769
  %3773 = xor i64 %3767, %3771
  %3774 = add nuw nsw i64 %3772, %3773
  %3775 = icmp eq i64 %3774, 2
  %3776 = zext i1 %3775 to i8
  store i8 %3776, i8* %38, align 1
  %3777 = load i64, i64* %RBP.i, align 8
  %3778 = add i64 %3777, -24
  %3779 = add i64 %3683, 55
  store i64 %3779, i64* %3, align 8
  %3780 = inttoptr i64 %3778 to i32*
  %3781 = load i32, i32* %3780, align 4
  %3782 = sext i32 %3781 to i64
  %3783 = shl nsw i64 %3782, 3
  store i64 %3783, i64* %RDX.i2162, align 8
  %3784 = add i64 %3783, %3750
  store i64 %3784, i64* %RAX.i2255, align 8
  %3785 = icmp ult i64 %3784, %3750
  %3786 = icmp ult i64 %3784, %3783
  %3787 = or i1 %3785, %3786
  %3788 = zext i1 %3787 to i8
  store i8 %3788, i8* %14, align 1
  %3789 = trunc i64 %3784 to i32
  %3790 = and i32 %3789, 255
  %3791 = tail call i32 @llvm.ctpop.i32(i32 %3790)
  %3792 = trunc i32 %3791 to i8
  %3793 = and i8 %3792, 1
  %3794 = xor i8 %3793, 1
  store i8 %3794, i8* %21, align 1
  %3795 = xor i64 %3783, %3750
  %3796 = xor i64 %3795, %3784
  %3797 = lshr i64 %3796, 4
  %3798 = trunc i64 %3797 to i8
  %3799 = and i8 %3798, 1
  store i8 %3799, i8* %26, align 1
  %3800 = icmp eq i64 %3784, 0
  %3801 = zext i1 %3800 to i8
  store i8 %3801, i8* %29, align 1
  %3802 = lshr i64 %3784, 63
  %3803 = trunc i64 %3802 to i8
  store i8 %3803, i8* %32, align 1
  %3804 = lshr i64 %3782, 60
  %3805 = and i64 %3804, 1
  %3806 = xor i64 %3802, %3767
  %3807 = xor i64 %3802, %3805
  %3808 = add nuw nsw i64 %3806, %3807
  %3809 = icmp eq i64 %3808, 2
  %3810 = zext i1 %3809 to i8
  store i8 %3810, i8* %38, align 1
  %3811 = load i64, i64* %RCX.i2165, align 8
  store i64 %3811, i64* %RDI.i2122, align 8
  store i64 %3784, i64* %RSI.i2119, align 8
  %3812 = add i64 %3683, -90345
  %3813 = add i64 %3683, 73
  %3814 = load i64, i64* %6, align 8
  %3815 = add i64 %3814, -8
  %3816 = inttoptr i64 %3815 to i64*
  store i64 %3813, i64* %3816, align 8
  store i64 %3815, i64* %6, align 8
  store i64 %3812, i64* %3, align 8
  %call2_4185bd = tail call %struct.Memory* @sub_402490.biari_init_context(%struct.State* nonnull %0, i64 %3812, %struct.Memory* %2)
  %3817 = load i64, i64* %3, align 8
  %3818 = add i64 %3817, 78
  store i64 %3818, i64* %3, align 8
  br label %block_.L_418610

block_.L_4185c7:                                  ; preds = %block_418567
  store i64 ptrtoint (%G__0x4b3ed0_type* @G__0x4b3ed0 to i64), i64* %RAX.i2255, align 8
  %3819 = add i64 %3628, -16
  %3820 = add i64 %3683, 14
  store i64 %3820, i64* %3, align 8
  %3821 = inttoptr i64 %3819 to i64*
  %3822 = load i64, i64* %3821, align 8
  %3823 = add i64 %3822, 32
  store i64 %3823, i64* %RCX.i2165, align 8
  %3824 = icmp ugt i64 %3822, -33
  %3825 = zext i1 %3824 to i8
  store i8 %3825, i8* %14, align 1
  %3826 = trunc i64 %3823 to i32
  %3827 = and i32 %3826, 255
  %3828 = tail call i32 @llvm.ctpop.i32(i32 %3827)
  %3829 = trunc i32 %3828 to i8
  %3830 = and i8 %3829, 1
  %3831 = xor i8 %3830, 1
  store i8 %3831, i8* %21, align 1
  %3832 = xor i64 %3823, %3822
  %3833 = lshr i64 %3832, 4
  %3834 = trunc i64 %3833 to i8
  %3835 = and i8 %3834, 1
  store i8 %3835, i8* %26, align 1
  %3836 = icmp eq i64 %3823, 0
  %3837 = zext i1 %3836 to i8
  store i8 %3837, i8* %29, align 1
  %3838 = lshr i64 %3823, 63
  %3839 = trunc i64 %3838 to i8
  store i8 %3839, i8* %32, align 1
  %3840 = lshr i64 %3822, 63
  %3841 = xor i64 %3838, %3840
  %3842 = add nuw nsw i64 %3841, %3838
  %3843 = icmp eq i64 %3842, 2
  %3844 = zext i1 %3843 to i8
  store i8 %3844, i8* %38, align 1
  %3845 = add i64 %3683, 22
  store i64 %3845, i64* %3, align 8
  %3846 = load i32, i32* %3631, align 4
  %3847 = sext i32 %3846 to i64
  %3848 = shl nsw i64 %3847, 4
  %3849 = add i64 %3848, %3823
  store i64 %3849, i64* %RCX.i2165, align 8
  %3850 = icmp ult i64 %3849, %3823
  %3851 = icmp ult i64 %3849, %3848
  %3852 = or i1 %3850, %3851
  %3853 = zext i1 %3852 to i8
  store i8 %3853, i8* %14, align 1
  %3854 = trunc i64 %3849 to i32
  %3855 = and i32 %3854, 255
  %3856 = tail call i32 @llvm.ctpop.i32(i32 %3855)
  %3857 = trunc i32 %3856 to i8
  %3858 = and i8 %3857, 1
  %3859 = xor i8 %3858, 1
  store i8 %3859, i8* %21, align 1
  %3860 = xor i64 %3848, %3823
  %3861 = xor i64 %3860, %3849
  %3862 = lshr i64 %3861, 4
  %3863 = trunc i64 %3862 to i8
  %3864 = and i8 %3863, 1
  store i8 %3864, i8* %26, align 1
  %3865 = icmp eq i64 %3849, 0
  %3866 = zext i1 %3865 to i8
  store i8 %3866, i8* %29, align 1
  %3867 = lshr i64 %3849, 63
  %3868 = trunc i64 %3867 to i8
  store i8 %3868, i8* %32, align 1
  %3869 = lshr i64 %3847, 59
  %3870 = and i64 %3869, 1
  %3871 = xor i64 %3867, %3838
  %3872 = xor i64 %3867, %3870
  %3873 = add nuw nsw i64 %3871, %3872
  %3874 = icmp eq i64 %3873, 2
  %3875 = zext i1 %3874 to i8
  store i8 %3875, i8* %38, align 1
  %3876 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*), align 8
  store i64 %3876, i64* %RDX.i2162, align 8
  %3877 = add i64 %3876, 72520
  %3878 = add i64 %3683, 44
  store i64 %3878, i64* %3, align 8
  %3879 = inttoptr i64 %3877 to i32*
  %3880 = load i32, i32* %3879, align 4
  %3881 = sext i32 %3880 to i64
  %3882 = shl nsw i64 %3881, 5
  store i64 %3882, i64* %RDX.i2162, align 8
  %3883 = load i64, i64* %RAX.i2255, align 8
  %3884 = add i64 %3882, %3883
  store i64 %3884, i64* %RAX.i2255, align 8
  %3885 = icmp ult i64 %3884, %3883
  %3886 = icmp ult i64 %3884, %3882
  %3887 = or i1 %3885, %3886
  %3888 = zext i1 %3887 to i8
  store i8 %3888, i8* %14, align 1
  %3889 = trunc i64 %3884 to i32
  %3890 = and i32 %3889, 255
  %3891 = tail call i32 @llvm.ctpop.i32(i32 %3890)
  %3892 = trunc i32 %3891 to i8
  %3893 = and i8 %3892, 1
  %3894 = xor i8 %3893, 1
  store i8 %3894, i8* %21, align 1
  %3895 = xor i64 %3883, %3884
  %3896 = lshr i64 %3895, 4
  %3897 = trunc i64 %3896 to i8
  %3898 = and i8 %3897, 1
  store i8 %3898, i8* %26, align 1
  %3899 = icmp eq i64 %3884, 0
  %3900 = zext i1 %3899 to i8
  store i8 %3900, i8* %29, align 1
  %3901 = lshr i64 %3884, 63
  %3902 = trunc i64 %3901 to i8
  store i8 %3902, i8* %32, align 1
  %3903 = lshr i64 %3883, 63
  %3904 = lshr i64 %3881, 58
  %3905 = and i64 %3904, 1
  %3906 = xor i64 %3901, %3903
  %3907 = xor i64 %3901, %3905
  %3908 = add nuw nsw i64 %3906, %3907
  %3909 = icmp eq i64 %3908, 2
  %3910 = zext i1 %3909 to i8
  store i8 %3910, i8* %38, align 1
  %3911 = load i64, i64* %RBP.i, align 8
  %3912 = add i64 %3911, -24
  %3913 = add i64 %3683, 55
  store i64 %3913, i64* %3, align 8
  %3914 = inttoptr i64 %3912 to i32*
  %3915 = load i32, i32* %3914, align 4
  %3916 = sext i32 %3915 to i64
  %3917 = shl nsw i64 %3916, 3
  store i64 %3917, i64* %RDX.i2162, align 8
  %3918 = add i64 %3917, %3884
  store i64 %3918, i64* %RAX.i2255, align 8
  %3919 = icmp ult i64 %3918, %3884
  %3920 = icmp ult i64 %3918, %3917
  %3921 = or i1 %3919, %3920
  %3922 = zext i1 %3921 to i8
  store i8 %3922, i8* %14, align 1
  %3923 = trunc i64 %3918 to i32
  %3924 = and i32 %3923, 255
  %3925 = tail call i32 @llvm.ctpop.i32(i32 %3924)
  %3926 = trunc i32 %3925 to i8
  %3927 = and i8 %3926, 1
  %3928 = xor i8 %3927, 1
  store i8 %3928, i8* %21, align 1
  %3929 = xor i64 %3917, %3884
  %3930 = xor i64 %3929, %3918
  %3931 = lshr i64 %3930, 4
  %3932 = trunc i64 %3931 to i8
  %3933 = and i8 %3932, 1
  store i8 %3933, i8* %26, align 1
  %3934 = icmp eq i64 %3918, 0
  %3935 = zext i1 %3934 to i8
  store i8 %3935, i8* %29, align 1
  %3936 = lshr i64 %3918, 63
  %3937 = trunc i64 %3936 to i8
  store i8 %3937, i8* %32, align 1
  %3938 = lshr i64 %3916, 60
  %3939 = and i64 %3938, 1
  %3940 = xor i64 %3936, %3901
  %3941 = xor i64 %3936, %3939
  %3942 = add nuw nsw i64 %3940, %3941
  %3943 = icmp eq i64 %3942, 2
  %3944 = zext i1 %3943 to i8
  store i8 %3944, i8* %38, align 1
  %3945 = load i64, i64* %RCX.i2165, align 8
  store i64 %3945, i64* %RDI.i2122, align 8
  store i64 %3918, i64* %RSI.i2119, align 8
  %3946 = add i64 %3683, -90423
  %3947 = add i64 %3683, 73
  %3948 = load i64, i64* %6, align 8
  %3949 = add i64 %3948, -8
  %3950 = inttoptr i64 %3949 to i64*
  store i64 %3947, i64* %3950, align 8
  store i64 %3949, i64* %6, align 8
  store i64 %3946, i64* %3, align 8
  %call2_41860b = tail call %struct.Memory* @sub_402490.biari_init_context(%struct.State* nonnull %0, i64 %3946, %struct.Memory* %2)
  %.pre237 = load i64, i64* %3, align 8
  br label %block_.L_418610

block_.L_418610:                                  ; preds = %block_.L_4185c7, %block_418579
  %3951 = phi i64 [ %.pre237, %block_.L_4185c7 ], [ %3818, %block_418579 ]
  %3952 = load i64, i64* %RBP.i, align 8
  %3953 = add i64 %3952, -24
  %3954 = add i64 %3951, 8
  store i64 %3954, i64* %3, align 8
  %3955 = inttoptr i64 %3953 to i32*
  %3956 = load i32, i32* %3955, align 4
  %3957 = add i32 %3956, 1
  %3958 = zext i32 %3957 to i64
  store i64 %3958, i64* %RAX.i2255, align 8
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
  %3980 = add i64 %3951, 14
  store i64 %3980, i64* %3, align 8
  store i32 %3957, i32* %3955, align 4
  %3981 = load i64, i64* %3, align 8
  %3982 = add i64 %3981, -193
  store i64 %3982, i64* %3, align 8
  br label %block_.L_41855d

block_.L_418623:                                  ; preds = %block_.L_41855d
  %3983 = add i64 %3628, -20
  %3984 = add i64 %3656, 7
  store i64 %3984, i64* %3, align 8
  %3985 = inttoptr i64 %3983 to i32*
  store i32 0, i32* %3985, align 4
  %.pre213 = load i64, i64* %3, align 8
  br label %block_.L_41862a

block_.L_41862a:                                  ; preds = %block_.L_41872d, %block_.L_418623
  %3986 = phi i64 [ %.pre213, %block_.L_418623 ], [ %4536, %block_.L_41872d ]
  %3987 = load i64, i64* %RBP.i, align 8
  %3988 = add i64 %3987, -20
  %3989 = add i64 %3986, 4
  store i64 %3989, i64* %3, align 8
  %3990 = inttoptr i64 %3988 to i32*
  %3991 = load i32, i32* %3990, align 4
  %3992 = add i32 %3991, -3
  %3993 = icmp ult i32 %3991, 3
  %3994 = zext i1 %3993 to i8
  store i8 %3994, i8* %14, align 1
  %3995 = and i32 %3992, 255
  %3996 = tail call i32 @llvm.ctpop.i32(i32 %3995)
  %3997 = trunc i32 %3996 to i8
  %3998 = and i8 %3997, 1
  %3999 = xor i8 %3998, 1
  store i8 %3999, i8* %21, align 1
  %4000 = xor i32 %3992, %3991
  %4001 = lshr i32 %4000, 4
  %4002 = trunc i32 %4001 to i8
  %4003 = and i8 %4002, 1
  store i8 %4003, i8* %26, align 1
  %4004 = icmp eq i32 %3992, 0
  %4005 = zext i1 %4004 to i8
  store i8 %4005, i8* %29, align 1
  %4006 = lshr i32 %3992, 31
  %4007 = trunc i32 %4006 to i8
  store i8 %4007, i8* %32, align 1
  %4008 = lshr i32 %3991, 31
  %4009 = xor i32 %4006, %4008
  %4010 = add nuw nsw i32 %4009, %4008
  %4011 = icmp eq i32 %4010, 2
  %4012 = zext i1 %4011 to i8
  store i8 %4012, i8* %38, align 1
  %4013 = icmp ne i8 %4007, 0
  %4014 = xor i1 %4013, %4011
  %.v270 = select i1 %4014, i64 10, i64 278
  %4015 = add i64 %3986, %.v270
  store i64 %4015, i64* %3, align 8
  br i1 %4014, label %block_418634, label %block_.L_418740

block_418634:                                     ; preds = %block_.L_41862a
  %4016 = add i64 %3987, -24
  %4017 = add i64 %4015, 7
  store i64 %4017, i64* %3, align 8
  %4018 = inttoptr i64 %4016 to i32*
  store i32 0, i32* %4018, align 4
  %.pre235 = load i64, i64* %3, align 8
  br label %block_.L_41863b

block_.L_41863b:                                  ; preds = %block_.L_41871a, %block_418634
  %4019 = phi i64 [ %.pre235, %block_418634 ], [ %4506, %block_.L_41871a ]
  %4020 = load i64, i64* %RBP.i, align 8
  %4021 = add i64 %4020, -24
  %4022 = add i64 %4019, 4
  store i64 %4022, i64* %3, align 8
  %4023 = inttoptr i64 %4021 to i32*
  %4024 = load i32, i32* %4023, align 4
  %4025 = add i32 %4024, -4
  %4026 = icmp ult i32 %4024, 4
  %4027 = zext i1 %4026 to i8
  store i8 %4027, i8* %14, align 1
  %4028 = and i32 %4025, 255
  %4029 = tail call i32 @llvm.ctpop.i32(i32 %4028)
  %4030 = trunc i32 %4029 to i8
  %4031 = and i8 %4030, 1
  %4032 = xor i8 %4031, 1
  store i8 %4032, i8* %21, align 1
  %4033 = xor i32 %4025, %4024
  %4034 = lshr i32 %4033, 4
  %4035 = trunc i32 %4034 to i8
  %4036 = and i8 %4035, 1
  store i8 %4036, i8* %26, align 1
  %4037 = icmp eq i32 %4025, 0
  %4038 = zext i1 %4037 to i8
  store i8 %4038, i8* %29, align 1
  %4039 = lshr i32 %4025, 31
  %4040 = trunc i32 %4039 to i8
  store i8 %4040, i8* %32, align 1
  %4041 = lshr i32 %4024, 31
  %4042 = xor i32 %4039, %4041
  %4043 = add nuw nsw i32 %4042, %4041
  %4044 = icmp eq i32 %4043, 2
  %4045 = zext i1 %4044 to i8
  store i8 %4045, i8* %38, align 1
  %4046 = icmp ne i8 %4040, 0
  %4047 = xor i1 %4046, %4044
  %.v257 = select i1 %4047, i64 10, i64 242
  %4048 = add i64 %4019, %.v257
  store i64 %4048, i64* %3, align 8
  br i1 %4047, label %block_418645, label %block_.L_41872d

block_418645:                                     ; preds = %block_.L_41863b
  %4049 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*), align 8
  store i64 %4049, i64* %RAX.i2255, align 8
  %4050 = add i64 %4049, 24
  %4051 = add i64 %4048, 12
  store i64 %4051, i64* %3, align 8
  %4052 = inttoptr i64 %4050 to i32*
  %4053 = load i32, i32* %4052, align 4
  %4054 = add i32 %4053, -2
  %4055 = icmp ult i32 %4053, 2
  %4056 = zext i1 %4055 to i8
  store i8 %4056, i8* %14, align 1
  %4057 = and i32 %4054, 255
  %4058 = tail call i32 @llvm.ctpop.i32(i32 %4057)
  %4059 = trunc i32 %4058 to i8
  %4060 = and i8 %4059, 1
  %4061 = xor i8 %4060, 1
  store i8 %4061, i8* %21, align 1
  %4062 = xor i32 %4054, %4053
  %4063 = lshr i32 %4062, 4
  %4064 = trunc i32 %4063 to i8
  %4065 = and i8 %4064, 1
  store i8 %4065, i8* %26, align 1
  %4066 = icmp eq i32 %4054, 0
  %4067 = zext i1 %4066 to i8
  store i8 %4067, i8* %29, align 1
  %4068 = lshr i32 %4054, 31
  %4069 = trunc i32 %4068 to i8
  store i8 %4069, i8* %32, align 1
  %4070 = lshr i32 %4053, 31
  %4071 = xor i32 %4068, %4070
  %4072 = add nuw nsw i32 %4071, %4070
  %4073 = icmp eq i32 %4072, 2
  %4074 = zext i1 %4073 to i8
  store i8 %4074, i8* %38, align 1
  %.v285 = select i1 %4066, i64 18, i64 118
  %4075 = add i64 %4048, %.v285
  %4076 = add i64 %4075, 10
  store i64 %4076, i64* %3, align 8
  br i1 %4066, label %block_418657, label %block_.L_4186bb

block_418657:                                     ; preds = %block_418645
  store i64 ptrtoint (%G__0x4b3f30_type* @G__0x4b3f30 to i64), i64* %RAX.i2255, align 8
  %4077 = add i64 %4020, -16
  %4078 = add i64 %4075, 14
  store i64 %4078, i64* %3, align 8
  %4079 = inttoptr i64 %4077 to i64*
  %4080 = load i64, i64* %4079, align 8
  %4081 = add i64 %4080, 96
  store i64 %4081, i64* %RCX.i2165, align 8
  %4082 = icmp ugt i64 %4080, -97
  %4083 = zext i1 %4082 to i8
  store i8 %4083, i8* %14, align 1
  %4084 = trunc i64 %4081 to i32
  %4085 = and i32 %4084, 255
  %4086 = tail call i32 @llvm.ctpop.i32(i32 %4085)
  %4087 = trunc i32 %4086 to i8
  %4088 = and i8 %4087, 1
  %4089 = xor i8 %4088, 1
  store i8 %4089, i8* %21, align 1
  %4090 = xor i64 %4081, %4080
  %4091 = lshr i64 %4090, 4
  %4092 = trunc i64 %4091 to i8
  %4093 = and i8 %4092, 1
  store i8 %4093, i8* %26, align 1
  %4094 = icmp eq i64 %4081, 0
  %4095 = zext i1 %4094 to i8
  store i8 %4095, i8* %29, align 1
  %4096 = lshr i64 %4081, 63
  %4097 = trunc i64 %4096 to i8
  store i8 %4097, i8* %32, align 1
  %4098 = lshr i64 %4080, 63
  %4099 = xor i64 %4096, %4098
  %4100 = add nuw nsw i64 %4099, %4096
  %4101 = icmp eq i64 %4100, 2
  %4102 = zext i1 %4101 to i8
  store i8 %4102, i8* %38, align 1
  %4103 = add i64 %4020, -20
  %4104 = add i64 %4075, 22
  store i64 %4104, i64* %3, align 8
  %4105 = inttoptr i64 %4103 to i32*
  %4106 = load i32, i32* %4105, align 4
  %4107 = sext i32 %4106 to i64
  %4108 = shl nsw i64 %4107, 6
  store i64 %4108, i64* %RDX.i2162, align 8
  %4109 = add i64 %4108, %4081
  store i64 %4109, i64* %RCX.i2165, align 8
  %4110 = icmp ult i64 %4109, %4081
  %4111 = icmp ult i64 %4109, %4108
  %4112 = or i1 %4110, %4111
  %4113 = zext i1 %4112 to i8
  store i8 %4113, i8* %14, align 1
  %4114 = trunc i64 %4109 to i32
  %4115 = and i32 %4114, 255
  %4116 = tail call i32 @llvm.ctpop.i32(i32 %4115)
  %4117 = trunc i32 %4116 to i8
  %4118 = and i8 %4117, 1
  %4119 = xor i8 %4118, 1
  store i8 %4119, i8* %21, align 1
  %4120 = xor i64 %4081, %4109
  %4121 = lshr i64 %4120, 4
  %4122 = trunc i64 %4121 to i8
  %4123 = and i8 %4122, 1
  store i8 %4123, i8* %26, align 1
  %4124 = icmp eq i64 %4109, 0
  %4125 = zext i1 %4124 to i8
  store i8 %4125, i8* %29, align 1
  %4126 = lshr i64 %4109, 63
  %4127 = trunc i64 %4126 to i8
  store i8 %4127, i8* %32, align 1
  %4128 = lshr i64 %4107, 57
  %4129 = and i64 %4128, 1
  %4130 = xor i64 %4126, %4096
  %4131 = xor i64 %4126, %4129
  %4132 = add nuw nsw i64 %4130, %4131
  %4133 = icmp eq i64 %4132, 2
  %4134 = zext i1 %4133 to i8
  store i8 %4134, i8* %38, align 1
  %4135 = load i64, i64* %RBP.i, align 8
  %4136 = add i64 %4135, -24
  %4137 = add i64 %4075, 33
  store i64 %4137, i64* %3, align 8
  %4138 = inttoptr i64 %4136 to i32*
  %4139 = load i32, i32* %4138, align 4
  %4140 = sext i32 %4139 to i64
  %4141 = shl nsw i64 %4140, 4
  %4142 = add i64 %4141, %4109
  store i64 %4142, i64* %RCX.i2165, align 8
  %4143 = icmp ult i64 %4142, %4109
  %4144 = icmp ult i64 %4142, %4141
  %4145 = or i1 %4143, %4144
  %4146 = zext i1 %4145 to i8
  store i8 %4146, i8* %14, align 1
  %4147 = trunc i64 %4142 to i32
  %4148 = and i32 %4147, 255
  %4149 = tail call i32 @llvm.ctpop.i32(i32 %4148)
  %4150 = trunc i32 %4149 to i8
  %4151 = and i8 %4150, 1
  %4152 = xor i8 %4151, 1
  store i8 %4152, i8* %21, align 1
  %4153 = xor i64 %4141, %4109
  %4154 = xor i64 %4153, %4142
  %4155 = lshr i64 %4154, 4
  %4156 = trunc i64 %4155 to i8
  %4157 = and i8 %4156, 1
  store i8 %4157, i8* %26, align 1
  %4158 = icmp eq i64 %4142, 0
  %4159 = zext i1 %4158 to i8
  store i8 %4159, i8* %29, align 1
  %4160 = lshr i64 %4142, 63
  %4161 = trunc i64 %4160 to i8
  store i8 %4161, i8* %32, align 1
  %4162 = lshr i64 %4140, 59
  %4163 = and i64 %4162, 1
  %4164 = xor i64 %4160, %4126
  %4165 = xor i64 %4160, %4163
  %4166 = add nuw nsw i64 %4164, %4165
  %4167 = icmp eq i64 %4166, 2
  %4168 = zext i1 %4167 to i8
  store i8 %4168, i8* %38, align 1
  %4169 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*), align 8
  store i64 %4169, i64* %RDX.i2162, align 8
  %4170 = add i64 %4169, 72520
  %4171 = add i64 %4075, 55
  store i64 %4171, i64* %3, align 8
  %4172 = inttoptr i64 %4170 to i32*
  %4173 = load i32, i32* %4172, align 4
  %4174 = sext i32 %4173 to i64
  %4175 = mul nsw i64 %4174, 96
  store i64 %4175, i64* %RDX.i2162, align 8
  %4176 = lshr i64 %4175, 63
  %4177 = load i64, i64* %RAX.i2255, align 8
  %4178 = add i64 %4175, %4177
  store i64 %4178, i64* %RAX.i2255, align 8
  %4179 = icmp ult i64 %4178, %4177
  %4180 = icmp ult i64 %4178, %4175
  %4181 = or i1 %4179, %4180
  %4182 = zext i1 %4181 to i8
  store i8 %4182, i8* %14, align 1
  %4183 = trunc i64 %4178 to i32
  %4184 = and i32 %4183, 255
  %4185 = tail call i32 @llvm.ctpop.i32(i32 %4184)
  %4186 = trunc i32 %4185 to i8
  %4187 = and i8 %4186, 1
  %4188 = xor i8 %4187, 1
  store i8 %4188, i8* %21, align 1
  %4189 = xor i64 %4177, %4178
  %4190 = lshr i64 %4189, 4
  %4191 = trunc i64 %4190 to i8
  %4192 = and i8 %4191, 1
  store i8 %4192, i8* %26, align 1
  %4193 = icmp eq i64 %4178, 0
  %4194 = zext i1 %4193 to i8
  store i8 %4194, i8* %29, align 1
  %4195 = lshr i64 %4178, 63
  %4196 = trunc i64 %4195 to i8
  store i8 %4196, i8* %32, align 1
  %4197 = lshr i64 %4177, 63
  %4198 = xor i64 %4195, %4197
  %4199 = xor i64 %4195, %4176
  %4200 = add nuw nsw i64 %4198, %4199
  %4201 = icmp eq i64 %4200, 2
  %4202 = zext i1 %4201 to i8
  store i8 %4202, i8* %38, align 1
  %4203 = load i64, i64* %RBP.i, align 8
  %4204 = add i64 %4203, -20
  %4205 = add i64 %4075, 66
  store i64 %4205, i64* %3, align 8
  %4206 = inttoptr i64 %4204 to i32*
  %4207 = load i32, i32* %4206, align 4
  %4208 = sext i32 %4207 to i64
  %4209 = shl nsw i64 %4208, 5
  store i64 %4209, i64* %RDX.i2162, align 8
  %4210 = add i64 %4209, %4178
  store i64 %4210, i64* %RAX.i2255, align 8
  %4211 = icmp ult i64 %4210, %4178
  %4212 = icmp ult i64 %4210, %4209
  %4213 = or i1 %4211, %4212
  %4214 = zext i1 %4213 to i8
  store i8 %4214, i8* %14, align 1
  %4215 = trunc i64 %4210 to i32
  %4216 = and i32 %4215, 255
  %4217 = tail call i32 @llvm.ctpop.i32(i32 %4216)
  %4218 = trunc i32 %4217 to i8
  %4219 = and i8 %4218, 1
  %4220 = xor i8 %4219, 1
  store i8 %4220, i8* %21, align 1
  %4221 = xor i64 %4178, %4210
  %4222 = lshr i64 %4221, 4
  %4223 = trunc i64 %4222 to i8
  %4224 = and i8 %4223, 1
  store i8 %4224, i8* %26, align 1
  %4225 = icmp eq i64 %4210, 0
  %4226 = zext i1 %4225 to i8
  store i8 %4226, i8* %29, align 1
  %4227 = lshr i64 %4210, 63
  %4228 = trunc i64 %4227 to i8
  store i8 %4228, i8* %32, align 1
  %4229 = lshr i64 %4208, 58
  %4230 = and i64 %4229, 1
  %4231 = xor i64 %4227, %4195
  %4232 = xor i64 %4227, %4230
  %4233 = add nuw nsw i64 %4231, %4232
  %4234 = icmp eq i64 %4233, 2
  %4235 = zext i1 %4234 to i8
  store i8 %4235, i8* %38, align 1
  %4236 = add i64 %4203, -24
  %4237 = add i64 %4075, 77
  store i64 %4237, i64* %3, align 8
  %4238 = inttoptr i64 %4236 to i32*
  %4239 = load i32, i32* %4238, align 4
  %4240 = sext i32 %4239 to i64
  %4241 = shl nsw i64 %4240, 3
  store i64 %4241, i64* %RDX.i2162, align 8
  %4242 = add i64 %4241, %4210
  store i64 %4242, i64* %RAX.i2255, align 8
  %4243 = icmp ult i64 %4242, %4210
  %4244 = icmp ult i64 %4242, %4241
  %4245 = or i1 %4243, %4244
  %4246 = zext i1 %4245 to i8
  store i8 %4246, i8* %14, align 1
  %4247 = trunc i64 %4242 to i32
  %4248 = and i32 %4247, 255
  %4249 = tail call i32 @llvm.ctpop.i32(i32 %4248)
  %4250 = trunc i32 %4249 to i8
  %4251 = and i8 %4250, 1
  %4252 = xor i8 %4251, 1
  store i8 %4252, i8* %21, align 1
  %4253 = xor i64 %4241, %4210
  %4254 = xor i64 %4253, %4242
  %4255 = lshr i64 %4254, 4
  %4256 = trunc i64 %4255 to i8
  %4257 = and i8 %4256, 1
  store i8 %4257, i8* %26, align 1
  %4258 = icmp eq i64 %4242, 0
  %4259 = zext i1 %4258 to i8
  store i8 %4259, i8* %29, align 1
  %4260 = lshr i64 %4242, 63
  %4261 = trunc i64 %4260 to i8
  store i8 %4261, i8* %32, align 1
  %4262 = lshr i64 %4240, 60
  %4263 = and i64 %4262, 1
  %4264 = xor i64 %4260, %4227
  %4265 = xor i64 %4260, %4263
  %4266 = add nuw nsw i64 %4264, %4265
  %4267 = icmp eq i64 %4266, 2
  %4268 = zext i1 %4267 to i8
  store i8 %4268, i8* %38, align 1
  %4269 = load i64, i64* %RCX.i2165, align 8
  store i64 %4269, i64* %RDI.i2122, align 8
  store i64 %4242, i64* %RSI.i2119, align 8
  %4270 = add i64 %4075, -90567
  %4271 = add i64 %4075, 95
  %4272 = load i64, i64* %6, align 8
  %4273 = add i64 %4272, -8
  %4274 = inttoptr i64 %4273 to i64*
  store i64 %4271, i64* %4274, align 8
  store i64 %4273, i64* %6, align 8
  store i64 %4270, i64* %3, align 8
  %call2_4186b1 = tail call %struct.Memory* @sub_402490.biari_init_context(%struct.State* nonnull %0, i64 %4270, %struct.Memory* %2)
  %4275 = load i64, i64* %3, align 8
  %4276 = add i64 %4275, 100
  store i64 %4276, i64* %3, align 8
  br label %block_.L_41871a

block_.L_4186bb:                                  ; preds = %block_418645
  store i64 ptrtoint (%G__0x4b3f90_type* @G__0x4b3f90 to i64), i64* %RAX.i2255, align 8
  %4277 = add i64 %4020, -16
  %4278 = add i64 %4075, 14
  store i64 %4278, i64* %3, align 8
  %4279 = inttoptr i64 %4277 to i64*
  %4280 = load i64, i64* %4279, align 8
  %4281 = add i64 %4280, 96
  store i64 %4281, i64* %RCX.i2165, align 8
  %4282 = icmp ugt i64 %4280, -97
  %4283 = zext i1 %4282 to i8
  store i8 %4283, i8* %14, align 1
  %4284 = trunc i64 %4281 to i32
  %4285 = and i32 %4284, 255
  %4286 = tail call i32 @llvm.ctpop.i32(i32 %4285)
  %4287 = trunc i32 %4286 to i8
  %4288 = and i8 %4287, 1
  %4289 = xor i8 %4288, 1
  store i8 %4289, i8* %21, align 1
  %4290 = xor i64 %4281, %4280
  %4291 = lshr i64 %4290, 4
  %4292 = trunc i64 %4291 to i8
  %4293 = and i8 %4292, 1
  store i8 %4293, i8* %26, align 1
  %4294 = icmp eq i64 %4281, 0
  %4295 = zext i1 %4294 to i8
  store i8 %4295, i8* %29, align 1
  %4296 = lshr i64 %4281, 63
  %4297 = trunc i64 %4296 to i8
  store i8 %4297, i8* %32, align 1
  %4298 = lshr i64 %4280, 63
  %4299 = xor i64 %4296, %4298
  %4300 = add nuw nsw i64 %4299, %4296
  %4301 = icmp eq i64 %4300, 2
  %4302 = zext i1 %4301 to i8
  store i8 %4302, i8* %38, align 1
  %4303 = add i64 %4020, -20
  %4304 = add i64 %4075, 22
  store i64 %4304, i64* %3, align 8
  %4305 = inttoptr i64 %4303 to i32*
  %4306 = load i32, i32* %4305, align 4
  %4307 = sext i32 %4306 to i64
  %4308 = shl nsw i64 %4307, 6
  store i64 %4308, i64* %RDX.i2162, align 8
  %4309 = add i64 %4308, %4281
  store i64 %4309, i64* %RCX.i2165, align 8
  %4310 = icmp ult i64 %4309, %4281
  %4311 = icmp ult i64 %4309, %4308
  %4312 = or i1 %4310, %4311
  %4313 = zext i1 %4312 to i8
  store i8 %4313, i8* %14, align 1
  %4314 = trunc i64 %4309 to i32
  %4315 = and i32 %4314, 255
  %4316 = tail call i32 @llvm.ctpop.i32(i32 %4315)
  %4317 = trunc i32 %4316 to i8
  %4318 = and i8 %4317, 1
  %4319 = xor i8 %4318, 1
  store i8 %4319, i8* %21, align 1
  %4320 = xor i64 %4281, %4309
  %4321 = lshr i64 %4320, 4
  %4322 = trunc i64 %4321 to i8
  %4323 = and i8 %4322, 1
  store i8 %4323, i8* %26, align 1
  %4324 = icmp eq i64 %4309, 0
  %4325 = zext i1 %4324 to i8
  store i8 %4325, i8* %29, align 1
  %4326 = lshr i64 %4309, 63
  %4327 = trunc i64 %4326 to i8
  store i8 %4327, i8* %32, align 1
  %4328 = lshr i64 %4307, 57
  %4329 = and i64 %4328, 1
  %4330 = xor i64 %4326, %4296
  %4331 = xor i64 %4326, %4329
  %4332 = add nuw nsw i64 %4330, %4331
  %4333 = icmp eq i64 %4332, 2
  %4334 = zext i1 %4333 to i8
  store i8 %4334, i8* %38, align 1
  %4335 = load i64, i64* %RBP.i, align 8
  %4336 = add i64 %4335, -24
  %4337 = add i64 %4075, 33
  store i64 %4337, i64* %3, align 8
  %4338 = inttoptr i64 %4336 to i32*
  %4339 = load i32, i32* %4338, align 4
  %4340 = sext i32 %4339 to i64
  %4341 = shl nsw i64 %4340, 4
  %4342 = add i64 %4341, %4309
  store i64 %4342, i64* %RCX.i2165, align 8
  %4343 = icmp ult i64 %4342, %4309
  %4344 = icmp ult i64 %4342, %4341
  %4345 = or i1 %4343, %4344
  %4346 = zext i1 %4345 to i8
  store i8 %4346, i8* %14, align 1
  %4347 = trunc i64 %4342 to i32
  %4348 = and i32 %4347, 255
  %4349 = tail call i32 @llvm.ctpop.i32(i32 %4348)
  %4350 = trunc i32 %4349 to i8
  %4351 = and i8 %4350, 1
  %4352 = xor i8 %4351, 1
  store i8 %4352, i8* %21, align 1
  %4353 = xor i64 %4341, %4309
  %4354 = xor i64 %4353, %4342
  %4355 = lshr i64 %4354, 4
  %4356 = trunc i64 %4355 to i8
  %4357 = and i8 %4356, 1
  store i8 %4357, i8* %26, align 1
  %4358 = icmp eq i64 %4342, 0
  %4359 = zext i1 %4358 to i8
  store i8 %4359, i8* %29, align 1
  %4360 = lshr i64 %4342, 63
  %4361 = trunc i64 %4360 to i8
  store i8 %4361, i8* %32, align 1
  %4362 = lshr i64 %4340, 59
  %4363 = and i64 %4362, 1
  %4364 = xor i64 %4360, %4326
  %4365 = xor i64 %4360, %4363
  %4366 = add nuw nsw i64 %4364, %4365
  %4367 = icmp eq i64 %4366, 2
  %4368 = zext i1 %4367 to i8
  store i8 %4368, i8* %38, align 1
  %4369 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*), align 8
  store i64 %4369, i64* %RDX.i2162, align 8
  %4370 = add i64 %4369, 72520
  %4371 = add i64 %4075, 55
  store i64 %4371, i64* %3, align 8
  %4372 = inttoptr i64 %4370 to i32*
  %4373 = load i32, i32* %4372, align 4
  %4374 = sext i32 %4373 to i64
  %4375 = mul nsw i64 %4374, 96
  store i64 %4375, i64* %RDX.i2162, align 8
  %4376 = lshr i64 %4375, 63
  %4377 = load i64, i64* %RAX.i2255, align 8
  %4378 = add i64 %4375, %4377
  store i64 %4378, i64* %RAX.i2255, align 8
  %4379 = icmp ult i64 %4378, %4377
  %4380 = icmp ult i64 %4378, %4375
  %4381 = or i1 %4379, %4380
  %4382 = zext i1 %4381 to i8
  store i8 %4382, i8* %14, align 1
  %4383 = trunc i64 %4378 to i32
  %4384 = and i32 %4383, 255
  %4385 = tail call i32 @llvm.ctpop.i32(i32 %4384)
  %4386 = trunc i32 %4385 to i8
  %4387 = and i8 %4386, 1
  %4388 = xor i8 %4387, 1
  store i8 %4388, i8* %21, align 1
  %4389 = xor i64 %4377, %4378
  %4390 = lshr i64 %4389, 4
  %4391 = trunc i64 %4390 to i8
  %4392 = and i8 %4391, 1
  store i8 %4392, i8* %26, align 1
  %4393 = icmp eq i64 %4378, 0
  %4394 = zext i1 %4393 to i8
  store i8 %4394, i8* %29, align 1
  %4395 = lshr i64 %4378, 63
  %4396 = trunc i64 %4395 to i8
  store i8 %4396, i8* %32, align 1
  %4397 = lshr i64 %4377, 63
  %4398 = xor i64 %4395, %4397
  %4399 = xor i64 %4395, %4376
  %4400 = add nuw nsw i64 %4398, %4399
  %4401 = icmp eq i64 %4400, 2
  %4402 = zext i1 %4401 to i8
  store i8 %4402, i8* %38, align 1
  %4403 = load i64, i64* %RBP.i, align 8
  %4404 = add i64 %4403, -20
  %4405 = add i64 %4075, 66
  store i64 %4405, i64* %3, align 8
  %4406 = inttoptr i64 %4404 to i32*
  %4407 = load i32, i32* %4406, align 4
  %4408 = sext i32 %4407 to i64
  %4409 = shl nsw i64 %4408, 5
  store i64 %4409, i64* %RDX.i2162, align 8
  %4410 = add i64 %4409, %4378
  store i64 %4410, i64* %RAX.i2255, align 8
  %4411 = icmp ult i64 %4410, %4378
  %4412 = icmp ult i64 %4410, %4409
  %4413 = or i1 %4411, %4412
  %4414 = zext i1 %4413 to i8
  store i8 %4414, i8* %14, align 1
  %4415 = trunc i64 %4410 to i32
  %4416 = and i32 %4415, 255
  %4417 = tail call i32 @llvm.ctpop.i32(i32 %4416)
  %4418 = trunc i32 %4417 to i8
  %4419 = and i8 %4418, 1
  %4420 = xor i8 %4419, 1
  store i8 %4420, i8* %21, align 1
  %4421 = xor i64 %4378, %4410
  %4422 = lshr i64 %4421, 4
  %4423 = trunc i64 %4422 to i8
  %4424 = and i8 %4423, 1
  store i8 %4424, i8* %26, align 1
  %4425 = icmp eq i64 %4410, 0
  %4426 = zext i1 %4425 to i8
  store i8 %4426, i8* %29, align 1
  %4427 = lshr i64 %4410, 63
  %4428 = trunc i64 %4427 to i8
  store i8 %4428, i8* %32, align 1
  %4429 = lshr i64 %4408, 58
  %4430 = and i64 %4429, 1
  %4431 = xor i64 %4427, %4395
  %4432 = xor i64 %4427, %4430
  %4433 = add nuw nsw i64 %4431, %4432
  %4434 = icmp eq i64 %4433, 2
  %4435 = zext i1 %4434 to i8
  store i8 %4435, i8* %38, align 1
  %4436 = add i64 %4403, -24
  %4437 = add i64 %4075, 77
  store i64 %4437, i64* %3, align 8
  %4438 = inttoptr i64 %4436 to i32*
  %4439 = load i32, i32* %4438, align 4
  %4440 = sext i32 %4439 to i64
  %4441 = shl nsw i64 %4440, 3
  store i64 %4441, i64* %RDX.i2162, align 8
  %4442 = add i64 %4441, %4410
  store i64 %4442, i64* %RAX.i2255, align 8
  %4443 = icmp ult i64 %4442, %4410
  %4444 = icmp ult i64 %4442, %4441
  %4445 = or i1 %4443, %4444
  %4446 = zext i1 %4445 to i8
  store i8 %4446, i8* %14, align 1
  %4447 = trunc i64 %4442 to i32
  %4448 = and i32 %4447, 255
  %4449 = tail call i32 @llvm.ctpop.i32(i32 %4448)
  %4450 = trunc i32 %4449 to i8
  %4451 = and i8 %4450, 1
  %4452 = xor i8 %4451, 1
  store i8 %4452, i8* %21, align 1
  %4453 = xor i64 %4441, %4410
  %4454 = xor i64 %4453, %4442
  %4455 = lshr i64 %4454, 4
  %4456 = trunc i64 %4455 to i8
  %4457 = and i8 %4456, 1
  store i8 %4457, i8* %26, align 1
  %4458 = icmp eq i64 %4442, 0
  %4459 = zext i1 %4458 to i8
  store i8 %4459, i8* %29, align 1
  %4460 = lshr i64 %4442, 63
  %4461 = trunc i64 %4460 to i8
  store i8 %4461, i8* %32, align 1
  %4462 = lshr i64 %4440, 60
  %4463 = and i64 %4462, 1
  %4464 = xor i64 %4460, %4427
  %4465 = xor i64 %4460, %4463
  %4466 = add nuw nsw i64 %4464, %4465
  %4467 = icmp eq i64 %4466, 2
  %4468 = zext i1 %4467 to i8
  store i8 %4468, i8* %38, align 1
  %4469 = load i64, i64* %RCX.i2165, align 8
  store i64 %4469, i64* %RDI.i2122, align 8
  store i64 %4442, i64* %RSI.i2119, align 8
  %4470 = add i64 %4075, -90667
  %4471 = add i64 %4075, 95
  %4472 = load i64, i64* %6, align 8
  %4473 = add i64 %4472, -8
  %4474 = inttoptr i64 %4473 to i64*
  store i64 %4471, i64* %4474, align 8
  store i64 %4473, i64* %6, align 8
  store i64 %4470, i64* %3, align 8
  %call2_418715 = tail call %struct.Memory* @sub_402490.biari_init_context(%struct.State* nonnull %0, i64 %4470, %struct.Memory* %2)
  %.pre236 = load i64, i64* %3, align 8
  br label %block_.L_41871a

block_.L_41871a:                                  ; preds = %block_.L_4186bb, %block_418657
  %4475 = phi i64 [ %.pre236, %block_.L_4186bb ], [ %4276, %block_418657 ]
  %4476 = load i64, i64* %RBP.i, align 8
  %4477 = add i64 %4476, -24
  %4478 = add i64 %4475, 8
  store i64 %4478, i64* %3, align 8
  %4479 = inttoptr i64 %4477 to i32*
  %4480 = load i32, i32* %4479, align 4
  %4481 = add i32 %4480, 1
  %4482 = zext i32 %4481 to i64
  store i64 %4482, i64* %RAX.i2255, align 8
  %4483 = icmp eq i32 %4480, -1
  %4484 = icmp eq i32 %4481, 0
  %4485 = or i1 %4483, %4484
  %4486 = zext i1 %4485 to i8
  store i8 %4486, i8* %14, align 1
  %4487 = and i32 %4481, 255
  %4488 = tail call i32 @llvm.ctpop.i32(i32 %4487)
  %4489 = trunc i32 %4488 to i8
  %4490 = and i8 %4489, 1
  %4491 = xor i8 %4490, 1
  store i8 %4491, i8* %21, align 1
  %4492 = xor i32 %4481, %4480
  %4493 = lshr i32 %4492, 4
  %4494 = trunc i32 %4493 to i8
  %4495 = and i8 %4494, 1
  store i8 %4495, i8* %26, align 1
  %4496 = zext i1 %4484 to i8
  store i8 %4496, i8* %29, align 1
  %4497 = lshr i32 %4481, 31
  %4498 = trunc i32 %4497 to i8
  store i8 %4498, i8* %32, align 1
  %4499 = lshr i32 %4480, 31
  %4500 = xor i32 %4497, %4499
  %4501 = add nuw nsw i32 %4500, %4497
  %4502 = icmp eq i32 %4501, 2
  %4503 = zext i1 %4502 to i8
  store i8 %4503, i8* %38, align 1
  %4504 = add i64 %4475, 14
  store i64 %4504, i64* %3, align 8
  store i32 %4481, i32* %4479, align 4
  %4505 = load i64, i64* %3, align 8
  %4506 = add i64 %4505, -237
  store i64 %4506, i64* %3, align 8
  br label %block_.L_41863b

block_.L_41872d:                                  ; preds = %block_.L_41863b
  %4507 = add i64 %4020, -20
  %4508 = add i64 %4048, 8
  store i64 %4508, i64* %3, align 8
  %4509 = inttoptr i64 %4507 to i32*
  %4510 = load i32, i32* %4509, align 4
  %4511 = add i32 %4510, 1
  %4512 = zext i32 %4511 to i64
  store i64 %4512, i64* %RAX.i2255, align 8
  %4513 = icmp eq i32 %4510, -1
  %4514 = icmp eq i32 %4511, 0
  %4515 = or i1 %4513, %4514
  %4516 = zext i1 %4515 to i8
  store i8 %4516, i8* %14, align 1
  %4517 = and i32 %4511, 255
  %4518 = tail call i32 @llvm.ctpop.i32(i32 %4517)
  %4519 = trunc i32 %4518 to i8
  %4520 = and i8 %4519, 1
  %4521 = xor i8 %4520, 1
  store i8 %4521, i8* %21, align 1
  %4522 = xor i32 %4511, %4510
  %4523 = lshr i32 %4522, 4
  %4524 = trunc i32 %4523 to i8
  %4525 = and i8 %4524, 1
  store i8 %4525, i8* %26, align 1
  %4526 = zext i1 %4514 to i8
  store i8 %4526, i8* %29, align 1
  %4527 = lshr i32 %4511, 31
  %4528 = trunc i32 %4527 to i8
  store i8 %4528, i8* %32, align 1
  %4529 = lshr i32 %4510, 31
  %4530 = xor i32 %4527, %4529
  %4531 = add nuw nsw i32 %4530, %4527
  %4532 = icmp eq i32 %4531, 2
  %4533 = zext i1 %4532 to i8
  store i8 %4533, i8* %38, align 1
  %4534 = add i64 %4048, 14
  store i64 %4534, i64* %3, align 8
  store i32 %4511, i32* %4509, align 4
  %4535 = load i64, i64* %3, align 8
  %4536 = add i64 %4535, -273
  store i64 %4536, i64* %3, align 8
  br label %block_.L_41862a

block_.L_418740:                                  ; preds = %block_.L_41862a
  %4537 = add i64 %4015, 7
  store i64 %4537, i64* %3, align 8
  store i32 0, i32* %3990, align 4
  %.pre214 = load i64, i64* %3, align 8
  br label %block_.L_418747

block_.L_418747:                                  ; preds = %block_.L_418850, %block_.L_418740
  %4538 = phi i64 [ %.pre214, %block_.L_418740 ], [ %5090, %block_.L_418850 ]
  %4539 = load i64, i64* %RBP.i, align 8
  %4540 = add i64 %4539, -20
  %4541 = add i64 %4538, 4
  store i64 %4541, i64* %3, align 8
  %4542 = inttoptr i64 %4540 to i32*
  %4543 = load i32, i32* %4542, align 4
  %4544 = add i32 %4543, -10
  %4545 = icmp ult i32 %4543, 10
  %4546 = zext i1 %4545 to i8
  store i8 %4546, i8* %14, align 1
  %4547 = and i32 %4544, 255
  %4548 = tail call i32 @llvm.ctpop.i32(i32 %4547)
  %4549 = trunc i32 %4548 to i8
  %4550 = and i8 %4549, 1
  %4551 = xor i8 %4550, 1
  store i8 %4551, i8* %21, align 1
  %4552 = xor i32 %4544, %4543
  %4553 = lshr i32 %4552, 4
  %4554 = trunc i32 %4553 to i8
  %4555 = and i8 %4554, 1
  store i8 %4555, i8* %26, align 1
  %4556 = icmp eq i32 %4544, 0
  %4557 = zext i1 %4556 to i8
  store i8 %4557, i8* %29, align 1
  %4558 = lshr i32 %4544, 31
  %4559 = trunc i32 %4558 to i8
  store i8 %4559, i8* %32, align 1
  %4560 = lshr i32 %4543, 31
  %4561 = xor i32 %4558, %4560
  %4562 = add nuw nsw i32 %4561, %4560
  %4563 = icmp eq i32 %4562, 2
  %4564 = zext i1 %4563 to i8
  store i8 %4564, i8* %38, align 1
  %4565 = icmp ne i8 %4559, 0
  %4566 = xor i1 %4565, %4563
  %.v271 = select i1 %4566, i64 10, i64 284
  %4567 = add i64 %4538, %.v271
  store i64 %4567, i64* %3, align 8
  br i1 %4566, label %block_418751, label %block_.L_418863

block_418751:                                     ; preds = %block_.L_418747
  %4568 = add i64 %4539, -24
  %4569 = add i64 %4567, 7
  store i64 %4569, i64* %3, align 8
  %4570 = inttoptr i64 %4568 to i32*
  store i32 0, i32* %4570, align 4
  %.pre233 = load i64, i64* %3, align 8
  br label %block_.L_418758

block_.L_418758:                                  ; preds = %block_.L_41883d, %block_418751
  %4571 = phi i64 [ %.pre233, %block_418751 ], [ %5060, %block_.L_41883d ]
  %4572 = load i64, i64* %RBP.i, align 8
  %4573 = add i64 %4572, -24
  %4574 = add i64 %4571, 4
  store i64 %4574, i64* %3, align 8
  %4575 = inttoptr i64 %4573 to i32*
  %4576 = load i32, i32* %4575, align 4
  %4577 = add i32 %4576, -4
  %4578 = icmp ult i32 %4576, 4
  %4579 = zext i1 %4578 to i8
  store i8 %4579, i8* %14, align 1
  %4580 = and i32 %4577, 255
  %4581 = tail call i32 @llvm.ctpop.i32(i32 %4580)
  %4582 = trunc i32 %4581 to i8
  %4583 = and i8 %4582, 1
  %4584 = xor i8 %4583, 1
  store i8 %4584, i8* %21, align 1
  %4585 = xor i32 %4577, %4576
  %4586 = lshr i32 %4585, 4
  %4587 = trunc i32 %4586 to i8
  %4588 = and i8 %4587, 1
  store i8 %4588, i8* %26, align 1
  %4589 = icmp eq i32 %4577, 0
  %4590 = zext i1 %4589 to i8
  store i8 %4590, i8* %29, align 1
  %4591 = lshr i32 %4577, 31
  %4592 = trunc i32 %4591 to i8
  store i8 %4592, i8* %32, align 1
  %4593 = lshr i32 %4576, 31
  %4594 = xor i32 %4591, %4593
  %4595 = add nuw nsw i32 %4594, %4593
  %4596 = icmp eq i32 %4595, 2
  %4597 = zext i1 %4596 to i8
  store i8 %4597, i8* %38, align 1
  %4598 = icmp ne i8 %4592, 0
  %4599 = xor i1 %4598, %4596
  %.v256 = select i1 %4599, i64 10, i64 248
  %4600 = add i64 %4571, %.v256
  store i64 %4600, i64* %3, align 8
  br i1 %4599, label %block_418762, label %block_.L_418850

block_418762:                                     ; preds = %block_.L_418758
  %4601 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*), align 8
  store i64 %4601, i64* %RAX.i2255, align 8
  %4602 = add i64 %4601, 24
  %4603 = add i64 %4600, 12
  store i64 %4603, i64* %3, align 8
  %4604 = inttoptr i64 %4602 to i32*
  %4605 = load i32, i32* %4604, align 4
  %4606 = add i32 %4605, -2
  %4607 = icmp ult i32 %4605, 2
  %4608 = zext i1 %4607 to i8
  store i8 %4608, i8* %14, align 1
  %4609 = and i32 %4606, 255
  %4610 = tail call i32 @llvm.ctpop.i32(i32 %4609)
  %4611 = trunc i32 %4610 to i8
  %4612 = and i8 %4611, 1
  %4613 = xor i8 %4612, 1
  store i8 %4613, i8* %21, align 1
  %4614 = xor i32 %4606, %4605
  %4615 = lshr i32 %4614, 4
  %4616 = trunc i32 %4615 to i8
  %4617 = and i8 %4616, 1
  store i8 %4617, i8* %26, align 1
  %4618 = icmp eq i32 %4606, 0
  %4619 = zext i1 %4618 to i8
  store i8 %4619, i8* %29, align 1
  %4620 = lshr i32 %4606, 31
  %4621 = trunc i32 %4620 to i8
  store i8 %4621, i8* %32, align 1
  %4622 = lshr i32 %4605, 31
  %4623 = xor i32 %4620, %4622
  %4624 = add nuw nsw i32 %4623, %4622
  %4625 = icmp eq i32 %4624, 2
  %4626 = zext i1 %4625 to i8
  store i8 %4626, i8* %38, align 1
  %.v284 = select i1 %4618, i64 18, i64 121
  %4627 = add i64 %4600, %.v284
  %4628 = add i64 %4627, 10
  store i64 %4628, i64* %3, align 8
  br i1 %4618, label %block_418774, label %block_.L_4187db

block_418774:                                     ; preds = %block_418762
  store i64 ptrtoint (%G__0x4b40b0_type* @G__0x4b40b0 to i64), i64* %RAX.i2255, align 8
  %4629 = add i64 %4572, -16
  %4630 = add i64 %4627, 14
  store i64 %4630, i64* %3, align 8
  %4631 = inttoptr i64 %4629 to i64*
  %4632 = load i64, i64* %4631, align 8
  %4633 = add i64 %4632, 288
  store i64 %4633, i64* %RCX.i2165, align 8
  %4634 = icmp ugt i64 %4632, -289
  %4635 = zext i1 %4634 to i8
  store i8 %4635, i8* %14, align 1
  %4636 = trunc i64 %4633 to i32
  %4637 = and i32 %4636, 255
  %4638 = tail call i32 @llvm.ctpop.i32(i32 %4637)
  %4639 = trunc i32 %4638 to i8
  %4640 = and i8 %4639, 1
  %4641 = xor i8 %4640, 1
  store i8 %4641, i8* %21, align 1
  %4642 = xor i64 %4633, %4632
  %4643 = lshr i64 %4642, 4
  %4644 = trunc i64 %4643 to i8
  %4645 = and i8 %4644, 1
  store i8 %4645, i8* %26, align 1
  %4646 = icmp eq i64 %4633, 0
  %4647 = zext i1 %4646 to i8
  store i8 %4647, i8* %29, align 1
  %4648 = lshr i64 %4633, 63
  %4649 = trunc i64 %4648 to i8
  store i8 %4649, i8* %32, align 1
  %4650 = lshr i64 %4632, 63
  %4651 = xor i64 %4648, %4650
  %4652 = add nuw nsw i64 %4651, %4648
  %4653 = icmp eq i64 %4652, 2
  %4654 = zext i1 %4653 to i8
  store i8 %4654, i8* %38, align 1
  %4655 = add i64 %4572, -20
  %4656 = add i64 %4627, 25
  store i64 %4656, i64* %3, align 8
  %4657 = inttoptr i64 %4655 to i32*
  %4658 = load i32, i32* %4657, align 4
  %4659 = sext i32 %4658 to i64
  %4660 = shl nsw i64 %4659, 6
  store i64 %4660, i64* %RDX.i2162, align 8
  %4661 = add i64 %4660, %4633
  store i64 %4661, i64* %RCX.i2165, align 8
  %4662 = icmp ult i64 %4661, %4633
  %4663 = icmp ult i64 %4661, %4660
  %4664 = or i1 %4662, %4663
  %4665 = zext i1 %4664 to i8
  store i8 %4665, i8* %14, align 1
  %4666 = trunc i64 %4661 to i32
  %4667 = and i32 %4666, 255
  %4668 = tail call i32 @llvm.ctpop.i32(i32 %4667)
  %4669 = trunc i32 %4668 to i8
  %4670 = and i8 %4669, 1
  %4671 = xor i8 %4670, 1
  store i8 %4671, i8* %21, align 1
  %4672 = xor i64 %4633, %4661
  %4673 = lshr i64 %4672, 4
  %4674 = trunc i64 %4673 to i8
  %4675 = and i8 %4674, 1
  store i8 %4675, i8* %26, align 1
  %4676 = icmp eq i64 %4661, 0
  %4677 = zext i1 %4676 to i8
  store i8 %4677, i8* %29, align 1
  %4678 = lshr i64 %4661, 63
  %4679 = trunc i64 %4678 to i8
  store i8 %4679, i8* %32, align 1
  %4680 = lshr i64 %4659, 57
  %4681 = and i64 %4680, 1
  %4682 = xor i64 %4678, %4648
  %4683 = xor i64 %4678, %4681
  %4684 = add nuw nsw i64 %4682, %4683
  %4685 = icmp eq i64 %4684, 2
  %4686 = zext i1 %4685 to i8
  store i8 %4686, i8* %38, align 1
  %4687 = load i64, i64* %RBP.i, align 8
  %4688 = add i64 %4687, -24
  %4689 = add i64 %4627, 36
  store i64 %4689, i64* %3, align 8
  %4690 = inttoptr i64 %4688 to i32*
  %4691 = load i32, i32* %4690, align 4
  %4692 = sext i32 %4691 to i64
  %4693 = shl nsw i64 %4692, 4
  %4694 = add i64 %4693, %4661
  store i64 %4694, i64* %RCX.i2165, align 8
  %4695 = icmp ult i64 %4694, %4661
  %4696 = icmp ult i64 %4694, %4693
  %4697 = or i1 %4695, %4696
  %4698 = zext i1 %4697 to i8
  store i8 %4698, i8* %14, align 1
  %4699 = trunc i64 %4694 to i32
  %4700 = and i32 %4699, 255
  %4701 = tail call i32 @llvm.ctpop.i32(i32 %4700)
  %4702 = trunc i32 %4701 to i8
  %4703 = and i8 %4702, 1
  %4704 = xor i8 %4703, 1
  store i8 %4704, i8* %21, align 1
  %4705 = xor i64 %4693, %4661
  %4706 = xor i64 %4705, %4694
  %4707 = lshr i64 %4706, 4
  %4708 = trunc i64 %4707 to i8
  %4709 = and i8 %4708, 1
  store i8 %4709, i8* %26, align 1
  %4710 = icmp eq i64 %4694, 0
  %4711 = zext i1 %4710 to i8
  store i8 %4711, i8* %29, align 1
  %4712 = lshr i64 %4694, 63
  %4713 = trunc i64 %4712 to i8
  store i8 %4713, i8* %32, align 1
  %4714 = lshr i64 %4692, 59
  %4715 = and i64 %4714, 1
  %4716 = xor i64 %4712, %4678
  %4717 = xor i64 %4712, %4715
  %4718 = add nuw nsw i64 %4716, %4717
  %4719 = icmp eq i64 %4718, 2
  %4720 = zext i1 %4719 to i8
  store i8 %4720, i8* %38, align 1
  %4721 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*), align 8
  store i64 %4721, i64* %RDX.i2162, align 8
  %4722 = add i64 %4721, 72520
  %4723 = add i64 %4627, 58
  store i64 %4723, i64* %3, align 8
  %4724 = inttoptr i64 %4722 to i32*
  %4725 = load i32, i32* %4724, align 4
  %4726 = sext i32 %4725 to i64
  %4727 = shl nsw i64 %4726, 8
  store i64 %4727, i64* %RDX.i2162, align 8
  %4728 = load i64, i64* %RAX.i2255, align 8
  %4729 = add i64 %4727, %4728
  store i64 %4729, i64* %RAX.i2255, align 8
  %4730 = icmp ult i64 %4729, %4728
  %4731 = icmp ult i64 %4729, %4727
  %4732 = or i1 %4730, %4731
  %4733 = zext i1 %4732 to i8
  store i8 %4733, i8* %14, align 1
  %4734 = trunc i64 %4729 to i32
  %4735 = and i32 %4734, 255
  %4736 = tail call i32 @llvm.ctpop.i32(i32 %4735)
  %4737 = trunc i32 %4736 to i8
  %4738 = and i8 %4737, 1
  %4739 = xor i8 %4738, 1
  store i8 %4739, i8* %21, align 1
  %4740 = xor i64 %4728, %4729
  %4741 = lshr i64 %4740, 4
  %4742 = trunc i64 %4741 to i8
  %4743 = and i8 %4742, 1
  store i8 %4743, i8* %26, align 1
  %4744 = icmp eq i64 %4729, 0
  %4745 = zext i1 %4744 to i8
  store i8 %4745, i8* %29, align 1
  %4746 = lshr i64 %4729, 63
  %4747 = trunc i64 %4746 to i8
  store i8 %4747, i8* %32, align 1
  %4748 = lshr i64 %4728, 63
  %4749 = lshr i64 %4726, 55
  %4750 = and i64 %4749, 1
  %4751 = xor i64 %4746, %4748
  %4752 = xor i64 %4746, %4750
  %4753 = add nuw nsw i64 %4751, %4752
  %4754 = icmp eq i64 %4753, 2
  %4755 = zext i1 %4754 to i8
  store i8 %4755, i8* %38, align 1
  %4756 = load i64, i64* %RBP.i, align 8
  %4757 = add i64 %4756, -20
  %4758 = add i64 %4627, 69
  store i64 %4758, i64* %3, align 8
  %4759 = inttoptr i64 %4757 to i32*
  %4760 = load i32, i32* %4759, align 4
  %4761 = sext i32 %4760 to i64
  %4762 = shl nsw i64 %4761, 5
  store i64 %4762, i64* %RDX.i2162, align 8
  %4763 = add i64 %4762, %4729
  store i64 %4763, i64* %RAX.i2255, align 8
  %4764 = icmp ult i64 %4763, %4729
  %4765 = icmp ult i64 %4763, %4762
  %4766 = or i1 %4764, %4765
  %4767 = zext i1 %4766 to i8
  store i8 %4767, i8* %14, align 1
  %4768 = trunc i64 %4763 to i32
  %4769 = and i32 %4768, 255
  %4770 = tail call i32 @llvm.ctpop.i32(i32 %4769)
  %4771 = trunc i32 %4770 to i8
  %4772 = and i8 %4771, 1
  %4773 = xor i8 %4772, 1
  store i8 %4773, i8* %21, align 1
  %4774 = xor i64 %4729, %4763
  %4775 = lshr i64 %4774, 4
  %4776 = trunc i64 %4775 to i8
  %4777 = and i8 %4776, 1
  store i8 %4777, i8* %26, align 1
  %4778 = icmp eq i64 %4763, 0
  %4779 = zext i1 %4778 to i8
  store i8 %4779, i8* %29, align 1
  %4780 = lshr i64 %4763, 63
  %4781 = trunc i64 %4780 to i8
  store i8 %4781, i8* %32, align 1
  %4782 = lshr i64 %4761, 58
  %4783 = and i64 %4782, 1
  %4784 = xor i64 %4780, %4746
  %4785 = xor i64 %4780, %4783
  %4786 = add nuw nsw i64 %4784, %4785
  %4787 = icmp eq i64 %4786, 2
  %4788 = zext i1 %4787 to i8
  store i8 %4788, i8* %38, align 1
  %4789 = add i64 %4756, -24
  %4790 = add i64 %4627, 80
  store i64 %4790, i64* %3, align 8
  %4791 = inttoptr i64 %4789 to i32*
  %4792 = load i32, i32* %4791, align 4
  %4793 = sext i32 %4792 to i64
  %4794 = shl nsw i64 %4793, 3
  store i64 %4794, i64* %RDX.i2162, align 8
  %4795 = add i64 %4794, %4763
  store i64 %4795, i64* %RAX.i2255, align 8
  %4796 = icmp ult i64 %4795, %4763
  %4797 = icmp ult i64 %4795, %4794
  %4798 = or i1 %4796, %4797
  %4799 = zext i1 %4798 to i8
  store i8 %4799, i8* %14, align 1
  %4800 = trunc i64 %4795 to i32
  %4801 = and i32 %4800, 255
  %4802 = tail call i32 @llvm.ctpop.i32(i32 %4801)
  %4803 = trunc i32 %4802 to i8
  %4804 = and i8 %4803, 1
  %4805 = xor i8 %4804, 1
  store i8 %4805, i8* %21, align 1
  %4806 = xor i64 %4794, %4763
  %4807 = xor i64 %4806, %4795
  %4808 = lshr i64 %4807, 4
  %4809 = trunc i64 %4808 to i8
  %4810 = and i8 %4809, 1
  store i8 %4810, i8* %26, align 1
  %4811 = icmp eq i64 %4795, 0
  %4812 = zext i1 %4811 to i8
  store i8 %4812, i8* %29, align 1
  %4813 = lshr i64 %4795, 63
  %4814 = trunc i64 %4813 to i8
  store i8 %4814, i8* %32, align 1
  %4815 = lshr i64 %4793, 60
  %4816 = and i64 %4815, 1
  %4817 = xor i64 %4813, %4780
  %4818 = xor i64 %4813, %4816
  %4819 = add nuw nsw i64 %4817, %4818
  %4820 = icmp eq i64 %4819, 2
  %4821 = zext i1 %4820 to i8
  store i8 %4821, i8* %38, align 1
  %4822 = load i64, i64* %RCX.i2165, align 8
  store i64 %4822, i64* %RDI.i2122, align 8
  store i64 %4795, i64* %RSI.i2119, align 8
  %4823 = add i64 %4627, -90852
  %4824 = add i64 %4627, 98
  %4825 = load i64, i64* %6, align 8
  %4826 = add i64 %4825, -8
  %4827 = inttoptr i64 %4826 to i64*
  store i64 %4824, i64* %4827, align 8
  store i64 %4826, i64* %6, align 8
  store i64 %4823, i64* %3, align 8
  %call2_4187d1 = tail call %struct.Memory* @sub_402490.biari_init_context(%struct.State* nonnull %0, i64 %4823, %struct.Memory* %2)
  %4828 = load i64, i64* %3, align 8
  %4829 = add i64 %4828, 103
  store i64 %4829, i64* %3, align 8
  br label %block_.L_41883d

block_.L_4187db:                                  ; preds = %block_418762
  store i64 ptrtoint (%G__0x4b41b0_type* @G__0x4b41b0 to i64), i64* %RAX.i2255, align 8
  %4830 = add i64 %4572, -16
  %4831 = add i64 %4627, 14
  store i64 %4831, i64* %3, align 8
  %4832 = inttoptr i64 %4830 to i64*
  %4833 = load i64, i64* %4832, align 8
  %4834 = add i64 %4833, 288
  store i64 %4834, i64* %RCX.i2165, align 8
  %4835 = icmp ugt i64 %4833, -289
  %4836 = zext i1 %4835 to i8
  store i8 %4836, i8* %14, align 1
  %4837 = trunc i64 %4834 to i32
  %4838 = and i32 %4837, 255
  %4839 = tail call i32 @llvm.ctpop.i32(i32 %4838)
  %4840 = trunc i32 %4839 to i8
  %4841 = and i8 %4840, 1
  %4842 = xor i8 %4841, 1
  store i8 %4842, i8* %21, align 1
  %4843 = xor i64 %4834, %4833
  %4844 = lshr i64 %4843, 4
  %4845 = trunc i64 %4844 to i8
  %4846 = and i8 %4845, 1
  store i8 %4846, i8* %26, align 1
  %4847 = icmp eq i64 %4834, 0
  %4848 = zext i1 %4847 to i8
  store i8 %4848, i8* %29, align 1
  %4849 = lshr i64 %4834, 63
  %4850 = trunc i64 %4849 to i8
  store i8 %4850, i8* %32, align 1
  %4851 = lshr i64 %4833, 63
  %4852 = xor i64 %4849, %4851
  %4853 = add nuw nsw i64 %4852, %4849
  %4854 = icmp eq i64 %4853, 2
  %4855 = zext i1 %4854 to i8
  store i8 %4855, i8* %38, align 1
  %4856 = add i64 %4572, -20
  %4857 = add i64 %4627, 25
  store i64 %4857, i64* %3, align 8
  %4858 = inttoptr i64 %4856 to i32*
  %4859 = load i32, i32* %4858, align 4
  %4860 = sext i32 %4859 to i64
  %4861 = shl nsw i64 %4860, 6
  store i64 %4861, i64* %RDX.i2162, align 8
  %4862 = add i64 %4861, %4834
  store i64 %4862, i64* %RCX.i2165, align 8
  %4863 = icmp ult i64 %4862, %4834
  %4864 = icmp ult i64 %4862, %4861
  %4865 = or i1 %4863, %4864
  %4866 = zext i1 %4865 to i8
  store i8 %4866, i8* %14, align 1
  %4867 = trunc i64 %4862 to i32
  %4868 = and i32 %4867, 255
  %4869 = tail call i32 @llvm.ctpop.i32(i32 %4868)
  %4870 = trunc i32 %4869 to i8
  %4871 = and i8 %4870, 1
  %4872 = xor i8 %4871, 1
  store i8 %4872, i8* %21, align 1
  %4873 = xor i64 %4834, %4862
  %4874 = lshr i64 %4873, 4
  %4875 = trunc i64 %4874 to i8
  %4876 = and i8 %4875, 1
  store i8 %4876, i8* %26, align 1
  %4877 = icmp eq i64 %4862, 0
  %4878 = zext i1 %4877 to i8
  store i8 %4878, i8* %29, align 1
  %4879 = lshr i64 %4862, 63
  %4880 = trunc i64 %4879 to i8
  store i8 %4880, i8* %32, align 1
  %4881 = lshr i64 %4860, 57
  %4882 = and i64 %4881, 1
  %4883 = xor i64 %4879, %4849
  %4884 = xor i64 %4879, %4882
  %4885 = add nuw nsw i64 %4883, %4884
  %4886 = icmp eq i64 %4885, 2
  %4887 = zext i1 %4886 to i8
  store i8 %4887, i8* %38, align 1
  %4888 = load i64, i64* %RBP.i, align 8
  %4889 = add i64 %4888, -24
  %4890 = add i64 %4627, 36
  store i64 %4890, i64* %3, align 8
  %4891 = inttoptr i64 %4889 to i32*
  %4892 = load i32, i32* %4891, align 4
  %4893 = sext i32 %4892 to i64
  %4894 = shl nsw i64 %4893, 4
  %4895 = add i64 %4894, %4862
  store i64 %4895, i64* %RCX.i2165, align 8
  %4896 = icmp ult i64 %4895, %4862
  %4897 = icmp ult i64 %4895, %4894
  %4898 = or i1 %4896, %4897
  %4899 = zext i1 %4898 to i8
  store i8 %4899, i8* %14, align 1
  %4900 = trunc i64 %4895 to i32
  %4901 = and i32 %4900, 255
  %4902 = tail call i32 @llvm.ctpop.i32(i32 %4901)
  %4903 = trunc i32 %4902 to i8
  %4904 = and i8 %4903, 1
  %4905 = xor i8 %4904, 1
  store i8 %4905, i8* %21, align 1
  %4906 = xor i64 %4894, %4862
  %4907 = xor i64 %4906, %4895
  %4908 = lshr i64 %4907, 4
  %4909 = trunc i64 %4908 to i8
  %4910 = and i8 %4909, 1
  store i8 %4910, i8* %26, align 1
  %4911 = icmp eq i64 %4895, 0
  %4912 = zext i1 %4911 to i8
  store i8 %4912, i8* %29, align 1
  %4913 = lshr i64 %4895, 63
  %4914 = trunc i64 %4913 to i8
  store i8 %4914, i8* %32, align 1
  %4915 = lshr i64 %4893, 59
  %4916 = and i64 %4915, 1
  %4917 = xor i64 %4913, %4879
  %4918 = xor i64 %4913, %4916
  %4919 = add nuw nsw i64 %4917, %4918
  %4920 = icmp eq i64 %4919, 2
  %4921 = zext i1 %4920 to i8
  store i8 %4921, i8* %38, align 1
  %4922 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*), align 8
  store i64 %4922, i64* %RDX.i2162, align 8
  %4923 = add i64 %4922, 72520
  %4924 = add i64 %4627, 58
  store i64 %4924, i64* %3, align 8
  %4925 = inttoptr i64 %4923 to i32*
  %4926 = load i32, i32* %4925, align 4
  %4927 = sext i32 %4926 to i64
  %4928 = shl nsw i64 %4927, 8
  store i64 %4928, i64* %RDX.i2162, align 8
  %4929 = load i64, i64* %RAX.i2255, align 8
  %4930 = add i64 %4928, %4929
  store i64 %4930, i64* %RAX.i2255, align 8
  %4931 = icmp ult i64 %4930, %4929
  %4932 = icmp ult i64 %4930, %4928
  %4933 = or i1 %4931, %4932
  %4934 = zext i1 %4933 to i8
  store i8 %4934, i8* %14, align 1
  %4935 = trunc i64 %4930 to i32
  %4936 = and i32 %4935, 255
  %4937 = tail call i32 @llvm.ctpop.i32(i32 %4936)
  %4938 = trunc i32 %4937 to i8
  %4939 = and i8 %4938, 1
  %4940 = xor i8 %4939, 1
  store i8 %4940, i8* %21, align 1
  %4941 = xor i64 %4929, %4930
  %4942 = lshr i64 %4941, 4
  %4943 = trunc i64 %4942 to i8
  %4944 = and i8 %4943, 1
  store i8 %4944, i8* %26, align 1
  %4945 = icmp eq i64 %4930, 0
  %4946 = zext i1 %4945 to i8
  store i8 %4946, i8* %29, align 1
  %4947 = lshr i64 %4930, 63
  %4948 = trunc i64 %4947 to i8
  store i8 %4948, i8* %32, align 1
  %4949 = lshr i64 %4929, 63
  %4950 = lshr i64 %4927, 55
  %4951 = and i64 %4950, 1
  %4952 = xor i64 %4947, %4949
  %4953 = xor i64 %4947, %4951
  %4954 = add nuw nsw i64 %4952, %4953
  %4955 = icmp eq i64 %4954, 2
  %4956 = zext i1 %4955 to i8
  store i8 %4956, i8* %38, align 1
  %4957 = load i64, i64* %RBP.i, align 8
  %4958 = add i64 %4957, -20
  %4959 = add i64 %4627, 69
  store i64 %4959, i64* %3, align 8
  %4960 = inttoptr i64 %4958 to i32*
  %4961 = load i32, i32* %4960, align 4
  %4962 = sext i32 %4961 to i64
  %4963 = shl nsw i64 %4962, 5
  store i64 %4963, i64* %RDX.i2162, align 8
  %4964 = add i64 %4963, %4930
  store i64 %4964, i64* %RAX.i2255, align 8
  %4965 = icmp ult i64 %4964, %4930
  %4966 = icmp ult i64 %4964, %4963
  %4967 = or i1 %4965, %4966
  %4968 = zext i1 %4967 to i8
  store i8 %4968, i8* %14, align 1
  %4969 = trunc i64 %4964 to i32
  %4970 = and i32 %4969, 255
  %4971 = tail call i32 @llvm.ctpop.i32(i32 %4970)
  %4972 = trunc i32 %4971 to i8
  %4973 = and i8 %4972, 1
  %4974 = xor i8 %4973, 1
  store i8 %4974, i8* %21, align 1
  %4975 = xor i64 %4930, %4964
  %4976 = lshr i64 %4975, 4
  %4977 = trunc i64 %4976 to i8
  %4978 = and i8 %4977, 1
  store i8 %4978, i8* %26, align 1
  %4979 = icmp eq i64 %4964, 0
  %4980 = zext i1 %4979 to i8
  store i8 %4980, i8* %29, align 1
  %4981 = lshr i64 %4964, 63
  %4982 = trunc i64 %4981 to i8
  store i8 %4982, i8* %32, align 1
  %4983 = lshr i64 %4962, 58
  %4984 = and i64 %4983, 1
  %4985 = xor i64 %4981, %4947
  %4986 = xor i64 %4981, %4984
  %4987 = add nuw nsw i64 %4985, %4986
  %4988 = icmp eq i64 %4987, 2
  %4989 = zext i1 %4988 to i8
  store i8 %4989, i8* %38, align 1
  %4990 = add i64 %4957, -24
  %4991 = add i64 %4627, 80
  store i64 %4991, i64* %3, align 8
  %4992 = inttoptr i64 %4990 to i32*
  %4993 = load i32, i32* %4992, align 4
  %4994 = sext i32 %4993 to i64
  %4995 = shl nsw i64 %4994, 3
  store i64 %4995, i64* %RDX.i2162, align 8
  %4996 = add i64 %4995, %4964
  store i64 %4996, i64* %RAX.i2255, align 8
  %4997 = icmp ult i64 %4996, %4964
  %4998 = icmp ult i64 %4996, %4995
  %4999 = or i1 %4997, %4998
  %5000 = zext i1 %4999 to i8
  store i8 %5000, i8* %14, align 1
  %5001 = trunc i64 %4996 to i32
  %5002 = and i32 %5001, 255
  %5003 = tail call i32 @llvm.ctpop.i32(i32 %5002)
  %5004 = trunc i32 %5003 to i8
  %5005 = and i8 %5004, 1
  %5006 = xor i8 %5005, 1
  store i8 %5006, i8* %21, align 1
  %5007 = xor i64 %4995, %4964
  %5008 = xor i64 %5007, %4996
  %5009 = lshr i64 %5008, 4
  %5010 = trunc i64 %5009 to i8
  %5011 = and i8 %5010, 1
  store i8 %5011, i8* %26, align 1
  %5012 = icmp eq i64 %4996, 0
  %5013 = zext i1 %5012 to i8
  store i8 %5013, i8* %29, align 1
  %5014 = lshr i64 %4996, 63
  %5015 = trunc i64 %5014 to i8
  store i8 %5015, i8* %32, align 1
  %5016 = lshr i64 %4994, 60
  %5017 = and i64 %5016, 1
  %5018 = xor i64 %5014, %4981
  %5019 = xor i64 %5014, %5017
  %5020 = add nuw nsw i64 %5018, %5019
  %5021 = icmp eq i64 %5020, 2
  %5022 = zext i1 %5021 to i8
  store i8 %5022, i8* %38, align 1
  %5023 = load i64, i64* %RCX.i2165, align 8
  store i64 %5023, i64* %RDI.i2122, align 8
  store i64 %4996, i64* %RSI.i2119, align 8
  %5024 = add i64 %4627, -90955
  %5025 = add i64 %4627, 98
  %5026 = load i64, i64* %6, align 8
  %5027 = add i64 %5026, -8
  %5028 = inttoptr i64 %5027 to i64*
  store i64 %5025, i64* %5028, align 8
  store i64 %5027, i64* %6, align 8
  store i64 %5024, i64* %3, align 8
  %call2_418838 = tail call %struct.Memory* @sub_402490.biari_init_context(%struct.State* nonnull %0, i64 %5024, %struct.Memory* %2)
  %.pre234 = load i64, i64* %3, align 8
  br label %block_.L_41883d

block_.L_41883d:                                  ; preds = %block_.L_4187db, %block_418774
  %5029 = phi i64 [ %.pre234, %block_.L_4187db ], [ %4829, %block_418774 ]
  %5030 = load i64, i64* %RBP.i, align 8
  %5031 = add i64 %5030, -24
  %5032 = add i64 %5029, 8
  store i64 %5032, i64* %3, align 8
  %5033 = inttoptr i64 %5031 to i32*
  %5034 = load i32, i32* %5033, align 4
  %5035 = add i32 %5034, 1
  %5036 = zext i32 %5035 to i64
  store i64 %5036, i64* %RAX.i2255, align 8
  %5037 = icmp eq i32 %5034, -1
  %5038 = icmp eq i32 %5035, 0
  %5039 = or i1 %5037, %5038
  %5040 = zext i1 %5039 to i8
  store i8 %5040, i8* %14, align 1
  %5041 = and i32 %5035, 255
  %5042 = tail call i32 @llvm.ctpop.i32(i32 %5041)
  %5043 = trunc i32 %5042 to i8
  %5044 = and i8 %5043, 1
  %5045 = xor i8 %5044, 1
  store i8 %5045, i8* %21, align 1
  %5046 = xor i32 %5035, %5034
  %5047 = lshr i32 %5046, 4
  %5048 = trunc i32 %5047 to i8
  %5049 = and i8 %5048, 1
  store i8 %5049, i8* %26, align 1
  %5050 = zext i1 %5038 to i8
  store i8 %5050, i8* %29, align 1
  %5051 = lshr i32 %5035, 31
  %5052 = trunc i32 %5051 to i8
  store i8 %5052, i8* %32, align 1
  %5053 = lshr i32 %5034, 31
  %5054 = xor i32 %5051, %5053
  %5055 = add nuw nsw i32 %5054, %5051
  %5056 = icmp eq i32 %5055, 2
  %5057 = zext i1 %5056 to i8
  store i8 %5057, i8* %38, align 1
  %5058 = add i64 %5029, 14
  store i64 %5058, i64* %3, align 8
  store i32 %5035, i32* %5033, align 4
  %5059 = load i64, i64* %3, align 8
  %5060 = add i64 %5059, -243
  store i64 %5060, i64* %3, align 8
  br label %block_.L_418758

block_.L_418850:                                  ; preds = %block_.L_418758
  %5061 = add i64 %4572, -20
  %5062 = add i64 %4600, 8
  store i64 %5062, i64* %3, align 8
  %5063 = inttoptr i64 %5061 to i32*
  %5064 = load i32, i32* %5063, align 4
  %5065 = add i32 %5064, 1
  %5066 = zext i32 %5065 to i64
  store i64 %5066, i64* %RAX.i2255, align 8
  %5067 = icmp eq i32 %5064, -1
  %5068 = icmp eq i32 %5065, 0
  %5069 = or i1 %5067, %5068
  %5070 = zext i1 %5069 to i8
  store i8 %5070, i8* %14, align 1
  %5071 = and i32 %5065, 255
  %5072 = tail call i32 @llvm.ctpop.i32(i32 %5071)
  %5073 = trunc i32 %5072 to i8
  %5074 = and i8 %5073, 1
  %5075 = xor i8 %5074, 1
  store i8 %5075, i8* %21, align 1
  %5076 = xor i32 %5065, %5064
  %5077 = lshr i32 %5076, 4
  %5078 = trunc i32 %5077 to i8
  %5079 = and i8 %5078, 1
  store i8 %5079, i8* %26, align 1
  %5080 = zext i1 %5068 to i8
  store i8 %5080, i8* %29, align 1
  %5081 = lshr i32 %5065, 31
  %5082 = trunc i32 %5081 to i8
  store i8 %5082, i8* %32, align 1
  %5083 = lshr i32 %5064, 31
  %5084 = xor i32 %5081, %5083
  %5085 = add nuw nsw i32 %5084, %5081
  %5086 = icmp eq i32 %5085, 2
  %5087 = zext i1 %5086 to i8
  store i8 %5087, i8* %38, align 1
  %5088 = add i64 %4600, 14
  store i64 %5088, i64* %3, align 8
  store i32 %5065, i32* %5063, align 4
  %5089 = load i64, i64* %3, align 8
  %5090 = add i64 %5089, -279
  store i64 %5090, i64* %3, align 8
  br label %block_.L_418747

block_.L_418863:                                  ; preds = %block_.L_418747
  %5091 = add i64 %4567, 7
  store i64 %5091, i64* %3, align 8
  store i32 0, i32* %4542, align 4
  %.pre215 = load i64, i64* %3, align 8
  br label %block_.L_41886a

block_.L_41886a:                                  ; preds = %block_.L_41897f, %block_.L_418863
  %5092 = phi i64 [ %.pre215, %block_.L_418863 ], [ %5642, %block_.L_41897f ]
  %5093 = load i64, i64* %RBP.i, align 8
  %5094 = add i64 %5093, -20
  %5095 = add i64 %5092, 4
  store i64 %5095, i64* %3, align 8
  %5096 = inttoptr i64 %5094 to i32*
  %5097 = load i32, i32* %5096, align 4
  %5098 = add i32 %5097, -10
  %5099 = icmp ult i32 %5097, 10
  %5100 = zext i1 %5099 to i8
  store i8 %5100, i8* %14, align 1
  %5101 = and i32 %5098, 255
  %5102 = tail call i32 @llvm.ctpop.i32(i32 %5101)
  %5103 = trunc i32 %5102 to i8
  %5104 = and i8 %5103, 1
  %5105 = xor i8 %5104, 1
  store i8 %5105, i8* %21, align 1
  %5106 = xor i32 %5098, %5097
  %5107 = lshr i32 %5106, 4
  %5108 = trunc i32 %5107 to i8
  %5109 = and i8 %5108, 1
  store i8 %5109, i8* %26, align 1
  %5110 = icmp eq i32 %5098, 0
  %5111 = zext i1 %5110 to i8
  store i8 %5111, i8* %29, align 1
  %5112 = lshr i32 %5098, 31
  %5113 = trunc i32 %5112 to i8
  store i8 %5113, i8* %32, align 1
  %5114 = lshr i32 %5097, 31
  %5115 = xor i32 %5112, %5114
  %5116 = add nuw nsw i32 %5115, %5114
  %5117 = icmp eq i32 %5116, 2
  %5118 = zext i1 %5117 to i8
  store i8 %5118, i8* %38, align 1
  %5119 = icmp ne i8 %5113, 0
  %5120 = xor i1 %5119, %5117
  %.v272 = select i1 %5120, i64 10, i64 296
  %5121 = add i64 %5092, %.v272
  store i64 %5121, i64* %3, align 8
  br i1 %5120, label %block_418874, label %block_.L_418992

block_418874:                                     ; preds = %block_.L_41886a
  %5122 = add i64 %5093, -24
  %5123 = add i64 %5121, 7
  store i64 %5123, i64* %3, align 8
  %5124 = inttoptr i64 %5122 to i32*
  store i32 0, i32* %5124, align 4
  %.pre231 = load i64, i64* %3, align 8
  br label %block_.L_41887b

block_.L_41887b:                                  ; preds = %block_.L_41896c, %block_418874
  %5125 = phi i64 [ %.pre231, %block_418874 ], [ %5612, %block_.L_41896c ]
  %5126 = load i64, i64* %RBP.i, align 8
  %5127 = add i64 %5126, -24
  %5128 = add i64 %5125, 4
  store i64 %5128, i64* %3, align 8
  %5129 = inttoptr i64 %5127 to i32*
  %5130 = load i32, i32* %5129, align 4
  %5131 = add i32 %5130, -15
  %5132 = icmp ult i32 %5130, 15
  %5133 = zext i1 %5132 to i8
  store i8 %5133, i8* %14, align 1
  %5134 = and i32 %5131, 255
  %5135 = tail call i32 @llvm.ctpop.i32(i32 %5134)
  %5136 = trunc i32 %5135 to i8
  %5137 = and i8 %5136, 1
  %5138 = xor i8 %5137, 1
  store i8 %5138, i8* %21, align 1
  %5139 = xor i32 %5131, %5130
  %5140 = lshr i32 %5139, 4
  %5141 = trunc i32 %5140 to i8
  %5142 = and i8 %5141, 1
  store i8 %5142, i8* %26, align 1
  %5143 = icmp eq i32 %5131, 0
  %5144 = zext i1 %5143 to i8
  store i8 %5144, i8* %29, align 1
  %5145 = lshr i32 %5131, 31
  %5146 = trunc i32 %5145 to i8
  store i8 %5146, i8* %32, align 1
  %5147 = lshr i32 %5130, 31
  %5148 = xor i32 %5145, %5147
  %5149 = add nuw nsw i32 %5148, %5147
  %5150 = icmp eq i32 %5149, 2
  %5151 = zext i1 %5150 to i8
  store i8 %5151, i8* %38, align 1
  %5152 = icmp ne i8 %5146, 0
  %5153 = xor i1 %5152, %5150
  %.v255 = select i1 %5153, i64 10, i64 260
  %5154 = add i64 %5125, %.v255
  store i64 %5154, i64* %3, align 8
  br i1 %5153, label %block_418885, label %block_.L_41897f

block_418885:                                     ; preds = %block_.L_41887b
  %5155 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*), align 8
  store i64 %5155, i64* %RAX.i2255, align 8
  %5156 = add i64 %5155, 24
  %5157 = add i64 %5154, 12
  store i64 %5157, i64* %3, align 8
  %5158 = inttoptr i64 %5156 to i32*
  %5159 = load i32, i32* %5158, align 4
  %5160 = add i32 %5159, -2
  %5161 = icmp ult i32 %5159, 2
  %5162 = zext i1 %5161 to i8
  store i8 %5162, i8* %14, align 1
  %5163 = and i32 %5160, 255
  %5164 = tail call i32 @llvm.ctpop.i32(i32 %5163)
  %5165 = trunc i32 %5164 to i8
  %5166 = and i8 %5165, 1
  %5167 = xor i8 %5166, 1
  store i8 %5167, i8* %21, align 1
  %5168 = xor i32 %5160, %5159
  %5169 = lshr i32 %5168, 4
  %5170 = trunc i32 %5169 to i8
  %5171 = and i8 %5170, 1
  store i8 %5171, i8* %26, align 1
  %5172 = icmp eq i32 %5160, 0
  %5173 = zext i1 %5172 to i8
  store i8 %5173, i8* %29, align 1
  %5174 = lshr i32 %5160, 31
  %5175 = trunc i32 %5174 to i8
  store i8 %5175, i8* %32, align 1
  %5176 = lshr i32 %5159, 31
  %5177 = xor i32 %5174, %5176
  %5178 = add nuw nsw i32 %5177, %5176
  %5179 = icmp eq i32 %5178, 2
  %5180 = zext i1 %5179 to i8
  store i8 %5180, i8* %38, align 1
  %.v283 = select i1 %5172, i64 18, i64 127
  %5181 = add i64 %5154, %.v283
  %5182 = add i64 %5181, 10
  store i64 %5182, i64* %3, align 8
  br i1 %5172, label %block_418897, label %block_.L_418904

block_418897:                                     ; preds = %block_418885
  store i64 ptrtoint (%G__0x4b44b0_type* @G__0x4b44b0 to i64), i64* %RAX.i2255, align 8
  %5183 = add i64 %5126, -16
  %5184 = add i64 %5181, 14
  store i64 %5184, i64* %3, align 8
  %5185 = inttoptr i64 %5183 to i64*
  %5186 = load i64, i64* %5185, align 8
  %5187 = add i64 %5186, 928
  store i64 %5187, i64* %RCX.i2165, align 8
  %5188 = icmp ugt i64 %5186, -929
  %5189 = zext i1 %5188 to i8
  store i8 %5189, i8* %14, align 1
  %5190 = trunc i64 %5187 to i32
  %5191 = and i32 %5190, 255
  %5192 = tail call i32 @llvm.ctpop.i32(i32 %5191)
  %5193 = trunc i32 %5192 to i8
  %5194 = and i8 %5193, 1
  %5195 = xor i8 %5194, 1
  store i8 %5195, i8* %21, align 1
  %5196 = xor i64 %5187, %5186
  %5197 = lshr i64 %5196, 4
  %5198 = trunc i64 %5197 to i8
  %5199 = and i8 %5198, 1
  store i8 %5199, i8* %26, align 1
  %5200 = icmp eq i64 %5187, 0
  %5201 = zext i1 %5200 to i8
  store i8 %5201, i8* %29, align 1
  %5202 = lshr i64 %5187, 63
  %5203 = trunc i64 %5202 to i8
  store i8 %5203, i8* %32, align 1
  %5204 = lshr i64 %5186, 63
  %5205 = xor i64 %5202, %5204
  %5206 = add nuw nsw i64 %5205, %5202
  %5207 = icmp eq i64 %5206, 2
  %5208 = zext i1 %5207 to i8
  store i8 %5208, i8* %38, align 1
  %5209 = add i64 %5126, -20
  %5210 = add i64 %5181, 25
  store i64 %5210, i64* %3, align 8
  %5211 = inttoptr i64 %5209 to i32*
  %5212 = load i32, i32* %5211, align 4
  %5213 = sext i32 %5212 to i64
  %5214 = mul nsw i64 %5213, 240
  store i64 %5214, i64* %RDX.i2162, align 8
  %5215 = lshr i64 %5214, 63
  %5216 = add i64 %5214, %5187
  store i64 %5216, i64* %RCX.i2165, align 8
  %5217 = icmp ult i64 %5216, %5187
  %5218 = icmp ult i64 %5216, %5214
  %5219 = or i1 %5217, %5218
  %5220 = zext i1 %5219 to i8
  store i8 %5220, i8* %14, align 1
  %5221 = trunc i64 %5216 to i32
  %5222 = and i32 %5221, 255
  %5223 = tail call i32 @llvm.ctpop.i32(i32 %5222)
  %5224 = trunc i32 %5223 to i8
  %5225 = and i8 %5224, 1
  %5226 = xor i8 %5225, 1
  store i8 %5226, i8* %21, align 1
  %5227 = xor i64 %5214, %5187
  %5228 = xor i64 %5227, %5216
  %5229 = lshr i64 %5228, 4
  %5230 = trunc i64 %5229 to i8
  %5231 = and i8 %5230, 1
  store i8 %5231, i8* %26, align 1
  %5232 = icmp eq i64 %5216, 0
  %5233 = zext i1 %5232 to i8
  store i8 %5233, i8* %29, align 1
  %5234 = lshr i64 %5216, 63
  %5235 = trunc i64 %5234 to i8
  store i8 %5235, i8* %32, align 1
  %5236 = xor i64 %5234, %5202
  %5237 = xor i64 %5234, %5215
  %5238 = add nuw nsw i64 %5236, %5237
  %5239 = icmp eq i64 %5238, 2
  %5240 = zext i1 %5239 to i8
  store i8 %5240, i8* %38, align 1
  %5241 = load i64, i64* %RBP.i, align 8
  %5242 = add i64 %5241, -24
  %5243 = add i64 %5181, 39
  store i64 %5243, i64* %3, align 8
  %5244 = inttoptr i64 %5242 to i32*
  %5245 = load i32, i32* %5244, align 4
  %5246 = sext i32 %5245 to i64
  %5247 = shl nsw i64 %5246, 4
  %5248 = add i64 %5247, %5216
  store i64 %5248, i64* %RCX.i2165, align 8
  %5249 = icmp ult i64 %5248, %5216
  %5250 = icmp ult i64 %5248, %5247
  %5251 = or i1 %5249, %5250
  %5252 = zext i1 %5251 to i8
  store i8 %5252, i8* %14, align 1
  %5253 = trunc i64 %5248 to i32
  %5254 = and i32 %5253, 255
  %5255 = tail call i32 @llvm.ctpop.i32(i32 %5254)
  %5256 = trunc i32 %5255 to i8
  %5257 = and i8 %5256, 1
  %5258 = xor i8 %5257, 1
  store i8 %5258, i8* %21, align 1
  %5259 = xor i64 %5247, %5216
  %5260 = xor i64 %5259, %5248
  %5261 = lshr i64 %5260, 4
  %5262 = trunc i64 %5261 to i8
  %5263 = and i8 %5262, 1
  store i8 %5263, i8* %26, align 1
  %5264 = icmp eq i64 %5248, 0
  %5265 = zext i1 %5264 to i8
  store i8 %5265, i8* %29, align 1
  %5266 = lshr i64 %5248, 63
  %5267 = trunc i64 %5266 to i8
  store i8 %5267, i8* %32, align 1
  %5268 = lshr i64 %5246, 59
  %5269 = and i64 %5268, 1
  %5270 = xor i64 %5266, %5234
  %5271 = xor i64 %5266, %5269
  %5272 = add nuw nsw i64 %5270, %5271
  %5273 = icmp eq i64 %5272, 2
  %5274 = zext i1 %5273 to i8
  store i8 %5274, i8* %38, align 1
  %5275 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*), align 8
  store i64 %5275, i64* %RDX.i2162, align 8
  %5276 = add i64 %5275, 72520
  %5277 = add i64 %5181, 61
  store i64 %5277, i64* %3, align 8
  %5278 = inttoptr i64 %5276 to i32*
  %5279 = load i32, i32* %5278, align 4
  %5280 = sext i32 %5279 to i64
  %5281 = mul nsw i64 %5280, 960
  store i64 %5281, i64* %RDX.i2162, align 8
  %5282 = lshr i64 %5281, 63
  %5283 = load i64, i64* %RAX.i2255, align 8
  %5284 = add i64 %5281, %5283
  store i64 %5284, i64* %RAX.i2255, align 8
  %5285 = icmp ult i64 %5284, %5283
  %5286 = icmp ult i64 %5284, %5281
  %5287 = or i1 %5285, %5286
  %5288 = zext i1 %5287 to i8
  store i8 %5288, i8* %14, align 1
  %5289 = trunc i64 %5284 to i32
  %5290 = and i32 %5289, 255
  %5291 = tail call i32 @llvm.ctpop.i32(i32 %5290)
  %5292 = trunc i32 %5291 to i8
  %5293 = and i8 %5292, 1
  %5294 = xor i8 %5293, 1
  store i8 %5294, i8* %21, align 1
  %5295 = xor i64 %5283, %5284
  %5296 = lshr i64 %5295, 4
  %5297 = trunc i64 %5296 to i8
  %5298 = and i8 %5297, 1
  store i8 %5298, i8* %26, align 1
  %5299 = icmp eq i64 %5284, 0
  %5300 = zext i1 %5299 to i8
  store i8 %5300, i8* %29, align 1
  %5301 = lshr i64 %5284, 63
  %5302 = trunc i64 %5301 to i8
  store i8 %5302, i8* %32, align 1
  %5303 = lshr i64 %5283, 63
  %5304 = xor i64 %5301, %5303
  %5305 = xor i64 %5301, %5282
  %5306 = add nuw nsw i64 %5304, %5305
  %5307 = icmp eq i64 %5306, 2
  %5308 = zext i1 %5307 to i8
  store i8 %5308, i8* %38, align 1
  %5309 = load i64, i64* %RBP.i, align 8
  %5310 = add i64 %5309, -20
  %5311 = add i64 %5181, 75
  store i64 %5311, i64* %3, align 8
  %5312 = inttoptr i64 %5310 to i32*
  %5313 = load i32, i32* %5312, align 4
  %5314 = sext i32 %5313 to i64
  %5315 = mul nsw i64 %5314, 120
  store i64 %5315, i64* %RDX.i2162, align 8
  %5316 = lshr i64 %5315, 63
  %5317 = add i64 %5315, %5284
  store i64 %5317, i64* %RAX.i2255, align 8
  %5318 = icmp ult i64 %5317, %5284
  %5319 = icmp ult i64 %5317, %5315
  %5320 = or i1 %5318, %5319
  %5321 = zext i1 %5320 to i8
  store i8 %5321, i8* %14, align 1
  %5322 = trunc i64 %5317 to i32
  %5323 = and i32 %5322, 255
  %5324 = tail call i32 @llvm.ctpop.i32(i32 %5323)
  %5325 = trunc i32 %5324 to i8
  %5326 = and i8 %5325, 1
  %5327 = xor i8 %5326, 1
  store i8 %5327, i8* %21, align 1
  %5328 = xor i64 %5315, %5284
  %5329 = xor i64 %5328, %5317
  %5330 = lshr i64 %5329, 4
  %5331 = trunc i64 %5330 to i8
  %5332 = and i8 %5331, 1
  store i8 %5332, i8* %26, align 1
  %5333 = icmp eq i64 %5317, 0
  %5334 = zext i1 %5333 to i8
  store i8 %5334, i8* %29, align 1
  %5335 = lshr i64 %5317, 63
  %5336 = trunc i64 %5335 to i8
  store i8 %5336, i8* %32, align 1
  %5337 = xor i64 %5335, %5301
  %5338 = xor i64 %5335, %5316
  %5339 = add nuw nsw i64 %5337, %5338
  %5340 = icmp eq i64 %5339, 2
  %5341 = zext i1 %5340 to i8
  store i8 %5341, i8* %38, align 1
  %5342 = add i64 %5309, -24
  %5343 = add i64 %5181, 86
  store i64 %5343, i64* %3, align 8
  %5344 = inttoptr i64 %5342 to i32*
  %5345 = load i32, i32* %5344, align 4
  %5346 = sext i32 %5345 to i64
  %5347 = shl nsw i64 %5346, 3
  store i64 %5347, i64* %RDX.i2162, align 8
  %5348 = add i64 %5347, %5317
  store i64 %5348, i64* %RAX.i2255, align 8
  %5349 = icmp ult i64 %5348, %5317
  %5350 = icmp ult i64 %5348, %5347
  %5351 = or i1 %5349, %5350
  %5352 = zext i1 %5351 to i8
  store i8 %5352, i8* %14, align 1
  %5353 = trunc i64 %5348 to i32
  %5354 = and i32 %5353, 255
  %5355 = tail call i32 @llvm.ctpop.i32(i32 %5354)
  %5356 = trunc i32 %5355 to i8
  %5357 = and i8 %5356, 1
  %5358 = xor i8 %5357, 1
  store i8 %5358, i8* %21, align 1
  %5359 = xor i64 %5347, %5317
  %5360 = xor i64 %5359, %5348
  %5361 = lshr i64 %5360, 4
  %5362 = trunc i64 %5361 to i8
  %5363 = and i8 %5362, 1
  store i8 %5363, i8* %26, align 1
  %5364 = icmp eq i64 %5348, 0
  %5365 = zext i1 %5364 to i8
  store i8 %5365, i8* %29, align 1
  %5366 = lshr i64 %5348, 63
  %5367 = trunc i64 %5366 to i8
  store i8 %5367, i8* %32, align 1
  %5368 = lshr i64 %5346, 60
  %5369 = and i64 %5368, 1
  %5370 = xor i64 %5366, %5335
  %5371 = xor i64 %5366, %5369
  %5372 = add nuw nsw i64 %5370, %5371
  %5373 = icmp eq i64 %5372, 2
  %5374 = zext i1 %5373 to i8
  store i8 %5374, i8* %38, align 1
  %5375 = load i64, i64* %RCX.i2165, align 8
  store i64 %5375, i64* %RDI.i2122, align 8
  store i64 %5348, i64* %RSI.i2119, align 8
  %5376 = add i64 %5181, -91143
  %5377 = add i64 %5181, 104
  %5378 = load i64, i64* %6, align 8
  %5379 = add i64 %5378, -8
  %5380 = inttoptr i64 %5379 to i64*
  store i64 %5377, i64* %5380, align 8
  store i64 %5379, i64* %6, align 8
  store i64 %5376, i64* %3, align 8
  %call2_4188fa = tail call %struct.Memory* @sub_402490.biari_init_context(%struct.State* nonnull %0, i64 %5376, %struct.Memory* %2)
  %5381 = load i64, i64* %3, align 8
  %5382 = add i64 %5381, 109
  store i64 %5382, i64* %3, align 8
  br label %block_.L_41896c

block_.L_418904:                                  ; preds = %block_418885
  store i64 ptrtoint (%G__0x4b4870_type* @G__0x4b4870 to i64), i64* %RAX.i2255, align 8
  %5383 = add i64 %5126, -16
  %5384 = add i64 %5181, 14
  store i64 %5384, i64* %3, align 8
  %5385 = inttoptr i64 %5383 to i64*
  %5386 = load i64, i64* %5385, align 8
  %5387 = add i64 %5386, 928
  store i64 %5387, i64* %RCX.i2165, align 8
  %5388 = icmp ugt i64 %5386, -929
  %5389 = zext i1 %5388 to i8
  store i8 %5389, i8* %14, align 1
  %5390 = trunc i64 %5387 to i32
  %5391 = and i32 %5390, 255
  %5392 = tail call i32 @llvm.ctpop.i32(i32 %5391)
  %5393 = trunc i32 %5392 to i8
  %5394 = and i8 %5393, 1
  %5395 = xor i8 %5394, 1
  store i8 %5395, i8* %21, align 1
  %5396 = xor i64 %5387, %5386
  %5397 = lshr i64 %5396, 4
  %5398 = trunc i64 %5397 to i8
  %5399 = and i8 %5398, 1
  store i8 %5399, i8* %26, align 1
  %5400 = icmp eq i64 %5387, 0
  %5401 = zext i1 %5400 to i8
  store i8 %5401, i8* %29, align 1
  %5402 = lshr i64 %5387, 63
  %5403 = trunc i64 %5402 to i8
  store i8 %5403, i8* %32, align 1
  %5404 = lshr i64 %5386, 63
  %5405 = xor i64 %5402, %5404
  %5406 = add nuw nsw i64 %5405, %5402
  %5407 = icmp eq i64 %5406, 2
  %5408 = zext i1 %5407 to i8
  store i8 %5408, i8* %38, align 1
  %5409 = add i64 %5126, -20
  %5410 = add i64 %5181, 25
  store i64 %5410, i64* %3, align 8
  %5411 = inttoptr i64 %5409 to i32*
  %5412 = load i32, i32* %5411, align 4
  %5413 = sext i32 %5412 to i64
  %5414 = mul nsw i64 %5413, 240
  store i64 %5414, i64* %RDX.i2162, align 8
  %5415 = lshr i64 %5414, 63
  %5416 = add i64 %5414, %5387
  store i64 %5416, i64* %RCX.i2165, align 8
  %5417 = icmp ult i64 %5416, %5387
  %5418 = icmp ult i64 %5416, %5414
  %5419 = or i1 %5417, %5418
  %5420 = zext i1 %5419 to i8
  store i8 %5420, i8* %14, align 1
  %5421 = trunc i64 %5416 to i32
  %5422 = and i32 %5421, 255
  %5423 = tail call i32 @llvm.ctpop.i32(i32 %5422)
  %5424 = trunc i32 %5423 to i8
  %5425 = and i8 %5424, 1
  %5426 = xor i8 %5425, 1
  store i8 %5426, i8* %21, align 1
  %5427 = xor i64 %5414, %5387
  %5428 = xor i64 %5427, %5416
  %5429 = lshr i64 %5428, 4
  %5430 = trunc i64 %5429 to i8
  %5431 = and i8 %5430, 1
  store i8 %5431, i8* %26, align 1
  %5432 = icmp eq i64 %5416, 0
  %5433 = zext i1 %5432 to i8
  store i8 %5433, i8* %29, align 1
  %5434 = lshr i64 %5416, 63
  %5435 = trunc i64 %5434 to i8
  store i8 %5435, i8* %32, align 1
  %5436 = xor i64 %5434, %5402
  %5437 = xor i64 %5434, %5415
  %5438 = add nuw nsw i64 %5436, %5437
  %5439 = icmp eq i64 %5438, 2
  %5440 = zext i1 %5439 to i8
  store i8 %5440, i8* %38, align 1
  %5441 = load i64, i64* %RBP.i, align 8
  %5442 = add i64 %5441, -24
  %5443 = add i64 %5181, 39
  store i64 %5443, i64* %3, align 8
  %5444 = inttoptr i64 %5442 to i32*
  %5445 = load i32, i32* %5444, align 4
  %5446 = sext i32 %5445 to i64
  %5447 = shl nsw i64 %5446, 4
  %5448 = add i64 %5447, %5416
  store i64 %5448, i64* %RCX.i2165, align 8
  %5449 = icmp ult i64 %5448, %5416
  %5450 = icmp ult i64 %5448, %5447
  %5451 = or i1 %5449, %5450
  %5452 = zext i1 %5451 to i8
  store i8 %5452, i8* %14, align 1
  %5453 = trunc i64 %5448 to i32
  %5454 = and i32 %5453, 255
  %5455 = tail call i32 @llvm.ctpop.i32(i32 %5454)
  %5456 = trunc i32 %5455 to i8
  %5457 = and i8 %5456, 1
  %5458 = xor i8 %5457, 1
  store i8 %5458, i8* %21, align 1
  %5459 = xor i64 %5447, %5416
  %5460 = xor i64 %5459, %5448
  %5461 = lshr i64 %5460, 4
  %5462 = trunc i64 %5461 to i8
  %5463 = and i8 %5462, 1
  store i8 %5463, i8* %26, align 1
  %5464 = icmp eq i64 %5448, 0
  %5465 = zext i1 %5464 to i8
  store i8 %5465, i8* %29, align 1
  %5466 = lshr i64 %5448, 63
  %5467 = trunc i64 %5466 to i8
  store i8 %5467, i8* %32, align 1
  %5468 = lshr i64 %5446, 59
  %5469 = and i64 %5468, 1
  %5470 = xor i64 %5466, %5434
  %5471 = xor i64 %5466, %5469
  %5472 = add nuw nsw i64 %5470, %5471
  %5473 = icmp eq i64 %5472, 2
  %5474 = zext i1 %5473 to i8
  store i8 %5474, i8* %38, align 1
  %5475 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*), align 8
  store i64 %5475, i64* %RDX.i2162, align 8
  %5476 = add i64 %5475, 72520
  %5477 = add i64 %5181, 61
  store i64 %5477, i64* %3, align 8
  %5478 = inttoptr i64 %5476 to i32*
  %5479 = load i32, i32* %5478, align 4
  %5480 = sext i32 %5479 to i64
  %5481 = mul nsw i64 %5480, 960
  store i64 %5481, i64* %RDX.i2162, align 8
  %5482 = lshr i64 %5481, 63
  %5483 = load i64, i64* %RAX.i2255, align 8
  %5484 = add i64 %5481, %5483
  store i64 %5484, i64* %RAX.i2255, align 8
  %5485 = icmp ult i64 %5484, %5483
  %5486 = icmp ult i64 %5484, %5481
  %5487 = or i1 %5485, %5486
  %5488 = zext i1 %5487 to i8
  store i8 %5488, i8* %14, align 1
  %5489 = trunc i64 %5484 to i32
  %5490 = and i32 %5489, 255
  %5491 = tail call i32 @llvm.ctpop.i32(i32 %5490)
  %5492 = trunc i32 %5491 to i8
  %5493 = and i8 %5492, 1
  %5494 = xor i8 %5493, 1
  store i8 %5494, i8* %21, align 1
  %5495 = xor i64 %5483, %5484
  %5496 = lshr i64 %5495, 4
  %5497 = trunc i64 %5496 to i8
  %5498 = and i8 %5497, 1
  store i8 %5498, i8* %26, align 1
  %5499 = icmp eq i64 %5484, 0
  %5500 = zext i1 %5499 to i8
  store i8 %5500, i8* %29, align 1
  %5501 = lshr i64 %5484, 63
  %5502 = trunc i64 %5501 to i8
  store i8 %5502, i8* %32, align 1
  %5503 = lshr i64 %5483, 63
  %5504 = xor i64 %5501, %5503
  %5505 = xor i64 %5501, %5482
  %5506 = add nuw nsw i64 %5504, %5505
  %5507 = icmp eq i64 %5506, 2
  %5508 = zext i1 %5507 to i8
  store i8 %5508, i8* %38, align 1
  %5509 = load i64, i64* %RBP.i, align 8
  %5510 = add i64 %5509, -20
  %5511 = add i64 %5181, 75
  store i64 %5511, i64* %3, align 8
  %5512 = inttoptr i64 %5510 to i32*
  %5513 = load i32, i32* %5512, align 4
  %5514 = sext i32 %5513 to i64
  %5515 = mul nsw i64 %5514, 120
  store i64 %5515, i64* %RDX.i2162, align 8
  %5516 = lshr i64 %5515, 63
  %5517 = add i64 %5515, %5484
  store i64 %5517, i64* %RAX.i2255, align 8
  %5518 = icmp ult i64 %5517, %5484
  %5519 = icmp ult i64 %5517, %5515
  %5520 = or i1 %5518, %5519
  %5521 = zext i1 %5520 to i8
  store i8 %5521, i8* %14, align 1
  %5522 = trunc i64 %5517 to i32
  %5523 = and i32 %5522, 255
  %5524 = tail call i32 @llvm.ctpop.i32(i32 %5523)
  %5525 = trunc i32 %5524 to i8
  %5526 = and i8 %5525, 1
  %5527 = xor i8 %5526, 1
  store i8 %5527, i8* %21, align 1
  %5528 = xor i64 %5515, %5484
  %5529 = xor i64 %5528, %5517
  %5530 = lshr i64 %5529, 4
  %5531 = trunc i64 %5530 to i8
  %5532 = and i8 %5531, 1
  store i8 %5532, i8* %26, align 1
  %5533 = icmp eq i64 %5517, 0
  %5534 = zext i1 %5533 to i8
  store i8 %5534, i8* %29, align 1
  %5535 = lshr i64 %5517, 63
  %5536 = trunc i64 %5535 to i8
  store i8 %5536, i8* %32, align 1
  %5537 = xor i64 %5535, %5501
  %5538 = xor i64 %5535, %5516
  %5539 = add nuw nsw i64 %5537, %5538
  %5540 = icmp eq i64 %5539, 2
  %5541 = zext i1 %5540 to i8
  store i8 %5541, i8* %38, align 1
  %5542 = add i64 %5509, -24
  %5543 = add i64 %5181, 86
  store i64 %5543, i64* %3, align 8
  %5544 = inttoptr i64 %5542 to i32*
  %5545 = load i32, i32* %5544, align 4
  %5546 = sext i32 %5545 to i64
  %5547 = shl nsw i64 %5546, 3
  store i64 %5547, i64* %RDX.i2162, align 8
  %5548 = add i64 %5547, %5517
  store i64 %5548, i64* %RAX.i2255, align 8
  %5549 = icmp ult i64 %5548, %5517
  %5550 = icmp ult i64 %5548, %5547
  %5551 = or i1 %5549, %5550
  %5552 = zext i1 %5551 to i8
  store i8 %5552, i8* %14, align 1
  %5553 = trunc i64 %5548 to i32
  %5554 = and i32 %5553, 255
  %5555 = tail call i32 @llvm.ctpop.i32(i32 %5554)
  %5556 = trunc i32 %5555 to i8
  %5557 = and i8 %5556, 1
  %5558 = xor i8 %5557, 1
  store i8 %5558, i8* %21, align 1
  %5559 = xor i64 %5547, %5517
  %5560 = xor i64 %5559, %5548
  %5561 = lshr i64 %5560, 4
  %5562 = trunc i64 %5561 to i8
  %5563 = and i8 %5562, 1
  store i8 %5563, i8* %26, align 1
  %5564 = icmp eq i64 %5548, 0
  %5565 = zext i1 %5564 to i8
  store i8 %5565, i8* %29, align 1
  %5566 = lshr i64 %5548, 63
  %5567 = trunc i64 %5566 to i8
  store i8 %5567, i8* %32, align 1
  %5568 = lshr i64 %5546, 60
  %5569 = and i64 %5568, 1
  %5570 = xor i64 %5566, %5535
  %5571 = xor i64 %5566, %5569
  %5572 = add nuw nsw i64 %5570, %5571
  %5573 = icmp eq i64 %5572, 2
  %5574 = zext i1 %5573 to i8
  store i8 %5574, i8* %38, align 1
  %5575 = load i64, i64* %RCX.i2165, align 8
  store i64 %5575, i64* %RDI.i2122, align 8
  store i64 %5548, i64* %RSI.i2119, align 8
  %5576 = add i64 %5181, -91252
  %5577 = add i64 %5181, 104
  %5578 = load i64, i64* %6, align 8
  %5579 = add i64 %5578, -8
  %5580 = inttoptr i64 %5579 to i64*
  store i64 %5577, i64* %5580, align 8
  store i64 %5579, i64* %6, align 8
  store i64 %5576, i64* %3, align 8
  %call2_418967 = tail call %struct.Memory* @sub_402490.biari_init_context(%struct.State* nonnull %0, i64 %5576, %struct.Memory* %2)
  %.pre232 = load i64, i64* %3, align 8
  br label %block_.L_41896c

block_.L_41896c:                                  ; preds = %block_.L_418904, %block_418897
  %5581 = phi i64 [ %.pre232, %block_.L_418904 ], [ %5382, %block_418897 ]
  %5582 = load i64, i64* %RBP.i, align 8
  %5583 = add i64 %5582, -24
  %5584 = add i64 %5581, 8
  store i64 %5584, i64* %3, align 8
  %5585 = inttoptr i64 %5583 to i32*
  %5586 = load i32, i32* %5585, align 4
  %5587 = add i32 %5586, 1
  %5588 = zext i32 %5587 to i64
  store i64 %5588, i64* %RAX.i2255, align 8
  %5589 = icmp eq i32 %5586, -1
  %5590 = icmp eq i32 %5587, 0
  %5591 = or i1 %5589, %5590
  %5592 = zext i1 %5591 to i8
  store i8 %5592, i8* %14, align 1
  %5593 = and i32 %5587, 255
  %5594 = tail call i32 @llvm.ctpop.i32(i32 %5593)
  %5595 = trunc i32 %5594 to i8
  %5596 = and i8 %5595, 1
  %5597 = xor i8 %5596, 1
  store i8 %5597, i8* %21, align 1
  %5598 = xor i32 %5587, %5586
  %5599 = lshr i32 %5598, 4
  %5600 = trunc i32 %5599 to i8
  %5601 = and i8 %5600, 1
  store i8 %5601, i8* %26, align 1
  %5602 = zext i1 %5590 to i8
  store i8 %5602, i8* %29, align 1
  %5603 = lshr i32 %5587, 31
  %5604 = trunc i32 %5603 to i8
  store i8 %5604, i8* %32, align 1
  %5605 = lshr i32 %5586, 31
  %5606 = xor i32 %5603, %5605
  %5607 = add nuw nsw i32 %5606, %5603
  %5608 = icmp eq i32 %5607, 2
  %5609 = zext i1 %5608 to i8
  store i8 %5609, i8* %38, align 1
  %5610 = add i64 %5581, 14
  store i64 %5610, i64* %3, align 8
  store i32 %5587, i32* %5585, align 4
  %5611 = load i64, i64* %3, align 8
  %5612 = add i64 %5611, -255
  store i64 %5612, i64* %3, align 8
  br label %block_.L_41887b

block_.L_41897f:                                  ; preds = %block_.L_41887b
  %5613 = add i64 %5126, -20
  %5614 = add i64 %5154, 8
  store i64 %5614, i64* %3, align 8
  %5615 = inttoptr i64 %5613 to i32*
  %5616 = load i32, i32* %5615, align 4
  %5617 = add i32 %5616, 1
  %5618 = zext i32 %5617 to i64
  store i64 %5618, i64* %RAX.i2255, align 8
  %5619 = icmp eq i32 %5616, -1
  %5620 = icmp eq i32 %5617, 0
  %5621 = or i1 %5619, %5620
  %5622 = zext i1 %5621 to i8
  store i8 %5622, i8* %14, align 1
  %5623 = and i32 %5617, 255
  %5624 = tail call i32 @llvm.ctpop.i32(i32 %5623)
  %5625 = trunc i32 %5624 to i8
  %5626 = and i8 %5625, 1
  %5627 = xor i8 %5626, 1
  store i8 %5627, i8* %21, align 1
  %5628 = xor i32 %5617, %5616
  %5629 = lshr i32 %5628, 4
  %5630 = trunc i32 %5629 to i8
  %5631 = and i8 %5630, 1
  store i8 %5631, i8* %26, align 1
  %5632 = zext i1 %5620 to i8
  store i8 %5632, i8* %29, align 1
  %5633 = lshr i32 %5617, 31
  %5634 = trunc i32 %5633 to i8
  store i8 %5634, i8* %32, align 1
  %5635 = lshr i32 %5616, 31
  %5636 = xor i32 %5633, %5635
  %5637 = add nuw nsw i32 %5636, %5633
  %5638 = icmp eq i32 %5637, 2
  %5639 = zext i1 %5638 to i8
  store i8 %5639, i8* %38, align 1
  %5640 = add i64 %5154, 14
  store i64 %5640, i64* %3, align 8
  store i32 %5617, i32* %5615, align 4
  %5641 = load i64, i64* %3, align 8
  %5642 = add i64 %5641, -291
  store i64 %5642, i64* %3, align 8
  br label %block_.L_41886a

block_.L_418992:                                  ; preds = %block_.L_41886a
  %5643 = add i64 %5121, 7
  store i64 %5643, i64* %3, align 8
  store i32 0, i32* %5096, align 4
  %.pre216 = load i64, i64* %3, align 8
  br label %block_.L_418999

block_.L_418999:                                  ; preds = %block_.L_418aae, %block_.L_418992
  %5644 = phi i64 [ %.pre216, %block_.L_418992 ], [ %6194, %block_.L_418aae ]
  %5645 = load i64, i64* %RBP.i, align 8
  %5646 = add i64 %5645, -20
  %5647 = add i64 %5644, 4
  store i64 %5647, i64* %3, align 8
  %5648 = inttoptr i64 %5646 to i32*
  %5649 = load i32, i32* %5648, align 4
  %5650 = add i32 %5649, -10
  %5651 = icmp ult i32 %5649, 10
  %5652 = zext i1 %5651 to i8
  store i8 %5652, i8* %14, align 1
  %5653 = and i32 %5650, 255
  %5654 = tail call i32 @llvm.ctpop.i32(i32 %5653)
  %5655 = trunc i32 %5654 to i8
  %5656 = and i8 %5655, 1
  %5657 = xor i8 %5656, 1
  store i8 %5657, i8* %21, align 1
  %5658 = xor i32 %5650, %5649
  %5659 = lshr i32 %5658, 4
  %5660 = trunc i32 %5659 to i8
  %5661 = and i8 %5660, 1
  store i8 %5661, i8* %26, align 1
  %5662 = icmp eq i32 %5650, 0
  %5663 = zext i1 %5662 to i8
  store i8 %5663, i8* %29, align 1
  %5664 = lshr i32 %5650, 31
  %5665 = trunc i32 %5664 to i8
  store i8 %5665, i8* %32, align 1
  %5666 = lshr i32 %5649, 31
  %5667 = xor i32 %5664, %5666
  %5668 = add nuw nsw i32 %5667, %5666
  %5669 = icmp eq i32 %5668, 2
  %5670 = zext i1 %5669 to i8
  store i8 %5670, i8* %38, align 1
  %5671 = icmp ne i8 %5665, 0
  %5672 = xor i1 %5671, %5669
  %.v273 = select i1 %5672, i64 10, i64 296
  %5673 = add i64 %5644, %.v273
  store i64 %5673, i64* %3, align 8
  br i1 %5672, label %block_4189a3, label %block_.L_418ac1

block_4189a3:                                     ; preds = %block_.L_418999
  %5674 = add i64 %5645, -24
  %5675 = add i64 %5673, 7
  store i64 %5675, i64* %3, align 8
  %5676 = inttoptr i64 %5674 to i32*
  store i32 0, i32* %5676, align 4
  %.pre229 = load i64, i64* %3, align 8
  br label %block_.L_4189aa

block_.L_4189aa:                                  ; preds = %block_.L_418a9b, %block_4189a3
  %5677 = phi i64 [ %.pre229, %block_4189a3 ], [ %6164, %block_.L_418a9b ]
  %5678 = load i64, i64* %RBP.i, align 8
  %5679 = add i64 %5678, -24
  %5680 = add i64 %5677, 4
  store i64 %5680, i64* %3, align 8
  %5681 = inttoptr i64 %5679 to i32*
  %5682 = load i32, i32* %5681, align 4
  %5683 = add i32 %5682, -15
  %5684 = icmp ult i32 %5682, 15
  %5685 = zext i1 %5684 to i8
  store i8 %5685, i8* %14, align 1
  %5686 = and i32 %5683, 255
  %5687 = tail call i32 @llvm.ctpop.i32(i32 %5686)
  %5688 = trunc i32 %5687 to i8
  %5689 = and i8 %5688, 1
  %5690 = xor i8 %5689, 1
  store i8 %5690, i8* %21, align 1
  %5691 = xor i32 %5683, %5682
  %5692 = lshr i32 %5691, 4
  %5693 = trunc i32 %5692 to i8
  %5694 = and i8 %5693, 1
  store i8 %5694, i8* %26, align 1
  %5695 = icmp eq i32 %5683, 0
  %5696 = zext i1 %5695 to i8
  store i8 %5696, i8* %29, align 1
  %5697 = lshr i32 %5683, 31
  %5698 = trunc i32 %5697 to i8
  store i8 %5698, i8* %32, align 1
  %5699 = lshr i32 %5682, 31
  %5700 = xor i32 %5697, %5699
  %5701 = add nuw nsw i32 %5700, %5699
  %5702 = icmp eq i32 %5701, 2
  %5703 = zext i1 %5702 to i8
  store i8 %5703, i8* %38, align 1
  %5704 = icmp ne i8 %5698, 0
  %5705 = xor i1 %5704, %5702
  %.v254 = select i1 %5705, i64 10, i64 260
  %5706 = add i64 %5677, %.v254
  store i64 %5706, i64* %3, align 8
  br i1 %5705, label %block_4189b4, label %block_.L_418aae

block_4189b4:                                     ; preds = %block_.L_4189aa
  %5707 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*), align 8
  store i64 %5707, i64* %RAX.i2255, align 8
  %5708 = add i64 %5707, 24
  %5709 = add i64 %5706, 12
  store i64 %5709, i64* %3, align 8
  %5710 = inttoptr i64 %5708 to i32*
  %5711 = load i32, i32* %5710, align 4
  %5712 = add i32 %5711, -2
  %5713 = icmp ult i32 %5711, 2
  %5714 = zext i1 %5713 to i8
  store i8 %5714, i8* %14, align 1
  %5715 = and i32 %5712, 255
  %5716 = tail call i32 @llvm.ctpop.i32(i32 %5715)
  %5717 = trunc i32 %5716 to i8
  %5718 = and i8 %5717, 1
  %5719 = xor i8 %5718, 1
  store i8 %5719, i8* %21, align 1
  %5720 = xor i32 %5712, %5711
  %5721 = lshr i32 %5720, 4
  %5722 = trunc i32 %5721 to i8
  %5723 = and i8 %5722, 1
  store i8 %5723, i8* %26, align 1
  %5724 = icmp eq i32 %5712, 0
  %5725 = zext i1 %5724 to i8
  store i8 %5725, i8* %29, align 1
  %5726 = lshr i32 %5712, 31
  %5727 = trunc i32 %5726 to i8
  store i8 %5727, i8* %32, align 1
  %5728 = lshr i32 %5711, 31
  %5729 = xor i32 %5726, %5728
  %5730 = add nuw nsw i32 %5729, %5728
  %5731 = icmp eq i32 %5730, 2
  %5732 = zext i1 %5731 to i8
  store i8 %5732, i8* %38, align 1
  %.v282 = select i1 %5724, i64 18, i64 127
  %5733 = add i64 %5706, %.v282
  %5734 = add i64 %5733, 10
  store i64 %5734, i64* %3, align 8
  br i1 %5724, label %block_4189c6, label %block_.L_418a33

block_4189c6:                                     ; preds = %block_4189b4
  store i64 ptrtoint (%G__0x4b53b0_type* @G__0x4b53b0 to i64), i64* %RAX.i2255, align 8
  %5735 = add i64 %5678, -16
  %5736 = add i64 %5733, 14
  store i64 %5736, i64* %3, align 8
  %5737 = inttoptr i64 %5735 to i64*
  %5738 = load i64, i64* %5737, align 8
  %5739 = add i64 %5738, 3328
  store i64 %5739, i64* %RCX.i2165, align 8
  %5740 = icmp ugt i64 %5738, -3329
  %5741 = zext i1 %5740 to i8
  store i8 %5741, i8* %14, align 1
  %5742 = trunc i64 %5739 to i32
  %5743 = and i32 %5742, 255
  %5744 = tail call i32 @llvm.ctpop.i32(i32 %5743)
  %5745 = trunc i32 %5744 to i8
  %5746 = and i8 %5745, 1
  %5747 = xor i8 %5746, 1
  store i8 %5747, i8* %21, align 1
  %5748 = xor i64 %5739, %5738
  %5749 = lshr i64 %5748, 4
  %5750 = trunc i64 %5749 to i8
  %5751 = and i8 %5750, 1
  store i8 %5751, i8* %26, align 1
  %5752 = icmp eq i64 %5739, 0
  %5753 = zext i1 %5752 to i8
  store i8 %5753, i8* %29, align 1
  %5754 = lshr i64 %5739, 63
  %5755 = trunc i64 %5754 to i8
  store i8 %5755, i8* %32, align 1
  %5756 = lshr i64 %5738, 63
  %5757 = xor i64 %5754, %5756
  %5758 = add nuw nsw i64 %5757, %5754
  %5759 = icmp eq i64 %5758, 2
  %5760 = zext i1 %5759 to i8
  store i8 %5760, i8* %38, align 1
  %5761 = add i64 %5678, -20
  %5762 = add i64 %5733, 25
  store i64 %5762, i64* %3, align 8
  %5763 = inttoptr i64 %5761 to i32*
  %5764 = load i32, i32* %5763, align 4
  %5765 = sext i32 %5764 to i64
  %5766 = mul nsw i64 %5765, 240
  store i64 %5766, i64* %RDX.i2162, align 8
  %5767 = lshr i64 %5766, 63
  %5768 = add i64 %5766, %5739
  store i64 %5768, i64* %RCX.i2165, align 8
  %5769 = icmp ult i64 %5768, %5739
  %5770 = icmp ult i64 %5768, %5766
  %5771 = or i1 %5769, %5770
  %5772 = zext i1 %5771 to i8
  store i8 %5772, i8* %14, align 1
  %5773 = trunc i64 %5768 to i32
  %5774 = and i32 %5773, 255
  %5775 = tail call i32 @llvm.ctpop.i32(i32 %5774)
  %5776 = trunc i32 %5775 to i8
  %5777 = and i8 %5776, 1
  %5778 = xor i8 %5777, 1
  store i8 %5778, i8* %21, align 1
  %5779 = xor i64 %5766, %5739
  %5780 = xor i64 %5779, %5768
  %5781 = lshr i64 %5780, 4
  %5782 = trunc i64 %5781 to i8
  %5783 = and i8 %5782, 1
  store i8 %5783, i8* %26, align 1
  %5784 = icmp eq i64 %5768, 0
  %5785 = zext i1 %5784 to i8
  store i8 %5785, i8* %29, align 1
  %5786 = lshr i64 %5768, 63
  %5787 = trunc i64 %5786 to i8
  store i8 %5787, i8* %32, align 1
  %5788 = xor i64 %5786, %5754
  %5789 = xor i64 %5786, %5767
  %5790 = add nuw nsw i64 %5788, %5789
  %5791 = icmp eq i64 %5790, 2
  %5792 = zext i1 %5791 to i8
  store i8 %5792, i8* %38, align 1
  %5793 = load i64, i64* %RBP.i, align 8
  %5794 = add i64 %5793, -24
  %5795 = add i64 %5733, 39
  store i64 %5795, i64* %3, align 8
  %5796 = inttoptr i64 %5794 to i32*
  %5797 = load i32, i32* %5796, align 4
  %5798 = sext i32 %5797 to i64
  %5799 = shl nsw i64 %5798, 4
  %5800 = add i64 %5799, %5768
  store i64 %5800, i64* %RCX.i2165, align 8
  %5801 = icmp ult i64 %5800, %5768
  %5802 = icmp ult i64 %5800, %5799
  %5803 = or i1 %5801, %5802
  %5804 = zext i1 %5803 to i8
  store i8 %5804, i8* %14, align 1
  %5805 = trunc i64 %5800 to i32
  %5806 = and i32 %5805, 255
  %5807 = tail call i32 @llvm.ctpop.i32(i32 %5806)
  %5808 = trunc i32 %5807 to i8
  %5809 = and i8 %5808, 1
  %5810 = xor i8 %5809, 1
  store i8 %5810, i8* %21, align 1
  %5811 = xor i64 %5799, %5768
  %5812 = xor i64 %5811, %5800
  %5813 = lshr i64 %5812, 4
  %5814 = trunc i64 %5813 to i8
  %5815 = and i8 %5814, 1
  store i8 %5815, i8* %26, align 1
  %5816 = icmp eq i64 %5800, 0
  %5817 = zext i1 %5816 to i8
  store i8 %5817, i8* %29, align 1
  %5818 = lshr i64 %5800, 63
  %5819 = trunc i64 %5818 to i8
  store i8 %5819, i8* %32, align 1
  %5820 = lshr i64 %5798, 59
  %5821 = and i64 %5820, 1
  %5822 = xor i64 %5818, %5786
  %5823 = xor i64 %5818, %5821
  %5824 = add nuw nsw i64 %5822, %5823
  %5825 = icmp eq i64 %5824, 2
  %5826 = zext i1 %5825 to i8
  store i8 %5826, i8* %38, align 1
  %5827 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*), align 8
  store i64 %5827, i64* %RDX.i2162, align 8
  %5828 = add i64 %5827, 72520
  %5829 = add i64 %5733, 61
  store i64 %5829, i64* %3, align 8
  %5830 = inttoptr i64 %5828 to i32*
  %5831 = load i32, i32* %5830, align 4
  %5832 = sext i32 %5831 to i64
  %5833 = mul nsw i64 %5832, 960
  store i64 %5833, i64* %RDX.i2162, align 8
  %5834 = lshr i64 %5833, 63
  %5835 = load i64, i64* %RAX.i2255, align 8
  %5836 = add i64 %5833, %5835
  store i64 %5836, i64* %RAX.i2255, align 8
  %5837 = icmp ult i64 %5836, %5835
  %5838 = icmp ult i64 %5836, %5833
  %5839 = or i1 %5837, %5838
  %5840 = zext i1 %5839 to i8
  store i8 %5840, i8* %14, align 1
  %5841 = trunc i64 %5836 to i32
  %5842 = and i32 %5841, 255
  %5843 = tail call i32 @llvm.ctpop.i32(i32 %5842)
  %5844 = trunc i32 %5843 to i8
  %5845 = and i8 %5844, 1
  %5846 = xor i8 %5845, 1
  store i8 %5846, i8* %21, align 1
  %5847 = xor i64 %5835, %5836
  %5848 = lshr i64 %5847, 4
  %5849 = trunc i64 %5848 to i8
  %5850 = and i8 %5849, 1
  store i8 %5850, i8* %26, align 1
  %5851 = icmp eq i64 %5836, 0
  %5852 = zext i1 %5851 to i8
  store i8 %5852, i8* %29, align 1
  %5853 = lshr i64 %5836, 63
  %5854 = trunc i64 %5853 to i8
  store i8 %5854, i8* %32, align 1
  %5855 = lshr i64 %5835, 63
  %5856 = xor i64 %5853, %5855
  %5857 = xor i64 %5853, %5834
  %5858 = add nuw nsw i64 %5856, %5857
  %5859 = icmp eq i64 %5858, 2
  %5860 = zext i1 %5859 to i8
  store i8 %5860, i8* %38, align 1
  %5861 = load i64, i64* %RBP.i, align 8
  %5862 = add i64 %5861, -20
  %5863 = add i64 %5733, 75
  store i64 %5863, i64* %3, align 8
  %5864 = inttoptr i64 %5862 to i32*
  %5865 = load i32, i32* %5864, align 4
  %5866 = sext i32 %5865 to i64
  %5867 = mul nsw i64 %5866, 120
  store i64 %5867, i64* %RDX.i2162, align 8
  %5868 = lshr i64 %5867, 63
  %5869 = add i64 %5867, %5836
  store i64 %5869, i64* %RAX.i2255, align 8
  %5870 = icmp ult i64 %5869, %5836
  %5871 = icmp ult i64 %5869, %5867
  %5872 = or i1 %5870, %5871
  %5873 = zext i1 %5872 to i8
  store i8 %5873, i8* %14, align 1
  %5874 = trunc i64 %5869 to i32
  %5875 = and i32 %5874, 255
  %5876 = tail call i32 @llvm.ctpop.i32(i32 %5875)
  %5877 = trunc i32 %5876 to i8
  %5878 = and i8 %5877, 1
  %5879 = xor i8 %5878, 1
  store i8 %5879, i8* %21, align 1
  %5880 = xor i64 %5867, %5836
  %5881 = xor i64 %5880, %5869
  %5882 = lshr i64 %5881, 4
  %5883 = trunc i64 %5882 to i8
  %5884 = and i8 %5883, 1
  store i8 %5884, i8* %26, align 1
  %5885 = icmp eq i64 %5869, 0
  %5886 = zext i1 %5885 to i8
  store i8 %5886, i8* %29, align 1
  %5887 = lshr i64 %5869, 63
  %5888 = trunc i64 %5887 to i8
  store i8 %5888, i8* %32, align 1
  %5889 = xor i64 %5887, %5853
  %5890 = xor i64 %5887, %5868
  %5891 = add nuw nsw i64 %5889, %5890
  %5892 = icmp eq i64 %5891, 2
  %5893 = zext i1 %5892 to i8
  store i8 %5893, i8* %38, align 1
  %5894 = add i64 %5861, -24
  %5895 = add i64 %5733, 86
  store i64 %5895, i64* %3, align 8
  %5896 = inttoptr i64 %5894 to i32*
  %5897 = load i32, i32* %5896, align 4
  %5898 = sext i32 %5897 to i64
  %5899 = shl nsw i64 %5898, 3
  store i64 %5899, i64* %RDX.i2162, align 8
  %5900 = add i64 %5899, %5869
  store i64 %5900, i64* %RAX.i2255, align 8
  %5901 = icmp ult i64 %5900, %5869
  %5902 = icmp ult i64 %5900, %5899
  %5903 = or i1 %5901, %5902
  %5904 = zext i1 %5903 to i8
  store i8 %5904, i8* %14, align 1
  %5905 = trunc i64 %5900 to i32
  %5906 = and i32 %5905, 255
  %5907 = tail call i32 @llvm.ctpop.i32(i32 %5906)
  %5908 = trunc i32 %5907 to i8
  %5909 = and i8 %5908, 1
  %5910 = xor i8 %5909, 1
  store i8 %5910, i8* %21, align 1
  %5911 = xor i64 %5899, %5869
  %5912 = xor i64 %5911, %5900
  %5913 = lshr i64 %5912, 4
  %5914 = trunc i64 %5913 to i8
  %5915 = and i8 %5914, 1
  store i8 %5915, i8* %26, align 1
  %5916 = icmp eq i64 %5900, 0
  %5917 = zext i1 %5916 to i8
  store i8 %5917, i8* %29, align 1
  %5918 = lshr i64 %5900, 63
  %5919 = trunc i64 %5918 to i8
  store i8 %5919, i8* %32, align 1
  %5920 = lshr i64 %5898, 60
  %5921 = and i64 %5920, 1
  %5922 = xor i64 %5918, %5887
  %5923 = xor i64 %5918, %5921
  %5924 = add nuw nsw i64 %5922, %5923
  %5925 = icmp eq i64 %5924, 2
  %5926 = zext i1 %5925 to i8
  store i8 %5926, i8* %38, align 1
  %5927 = load i64, i64* %RCX.i2165, align 8
  store i64 %5927, i64* %RDI.i2122, align 8
  store i64 %5900, i64* %RSI.i2119, align 8
  %5928 = add i64 %5733, -91446
  %5929 = add i64 %5733, 104
  %5930 = load i64, i64* %6, align 8
  %5931 = add i64 %5930, -8
  %5932 = inttoptr i64 %5931 to i64*
  store i64 %5929, i64* %5932, align 8
  store i64 %5931, i64* %6, align 8
  store i64 %5928, i64* %3, align 8
  %call2_418a29 = tail call %struct.Memory* @sub_402490.biari_init_context(%struct.State* nonnull %0, i64 %5928, %struct.Memory* %2)
  %5933 = load i64, i64* %3, align 8
  %5934 = add i64 %5933, 109
  store i64 %5934, i64* %3, align 8
  br label %block_.L_418a9b

block_.L_418a33:                                  ; preds = %block_4189b4
  store i64 ptrtoint (%G__0x4b5770_type* @G__0x4b5770 to i64), i64* %RAX.i2255, align 8
  %5935 = add i64 %5678, -16
  %5936 = add i64 %5733, 14
  store i64 %5936, i64* %3, align 8
  %5937 = inttoptr i64 %5935 to i64*
  %5938 = load i64, i64* %5937, align 8
  %5939 = add i64 %5938, 3328
  store i64 %5939, i64* %RCX.i2165, align 8
  %5940 = icmp ugt i64 %5938, -3329
  %5941 = zext i1 %5940 to i8
  store i8 %5941, i8* %14, align 1
  %5942 = trunc i64 %5939 to i32
  %5943 = and i32 %5942, 255
  %5944 = tail call i32 @llvm.ctpop.i32(i32 %5943)
  %5945 = trunc i32 %5944 to i8
  %5946 = and i8 %5945, 1
  %5947 = xor i8 %5946, 1
  store i8 %5947, i8* %21, align 1
  %5948 = xor i64 %5939, %5938
  %5949 = lshr i64 %5948, 4
  %5950 = trunc i64 %5949 to i8
  %5951 = and i8 %5950, 1
  store i8 %5951, i8* %26, align 1
  %5952 = icmp eq i64 %5939, 0
  %5953 = zext i1 %5952 to i8
  store i8 %5953, i8* %29, align 1
  %5954 = lshr i64 %5939, 63
  %5955 = trunc i64 %5954 to i8
  store i8 %5955, i8* %32, align 1
  %5956 = lshr i64 %5938, 63
  %5957 = xor i64 %5954, %5956
  %5958 = add nuw nsw i64 %5957, %5954
  %5959 = icmp eq i64 %5958, 2
  %5960 = zext i1 %5959 to i8
  store i8 %5960, i8* %38, align 1
  %5961 = add i64 %5678, -20
  %5962 = add i64 %5733, 25
  store i64 %5962, i64* %3, align 8
  %5963 = inttoptr i64 %5961 to i32*
  %5964 = load i32, i32* %5963, align 4
  %5965 = sext i32 %5964 to i64
  %5966 = mul nsw i64 %5965, 240
  store i64 %5966, i64* %RDX.i2162, align 8
  %5967 = lshr i64 %5966, 63
  %5968 = add i64 %5966, %5939
  store i64 %5968, i64* %RCX.i2165, align 8
  %5969 = icmp ult i64 %5968, %5939
  %5970 = icmp ult i64 %5968, %5966
  %5971 = or i1 %5969, %5970
  %5972 = zext i1 %5971 to i8
  store i8 %5972, i8* %14, align 1
  %5973 = trunc i64 %5968 to i32
  %5974 = and i32 %5973, 255
  %5975 = tail call i32 @llvm.ctpop.i32(i32 %5974)
  %5976 = trunc i32 %5975 to i8
  %5977 = and i8 %5976, 1
  %5978 = xor i8 %5977, 1
  store i8 %5978, i8* %21, align 1
  %5979 = xor i64 %5966, %5939
  %5980 = xor i64 %5979, %5968
  %5981 = lshr i64 %5980, 4
  %5982 = trunc i64 %5981 to i8
  %5983 = and i8 %5982, 1
  store i8 %5983, i8* %26, align 1
  %5984 = icmp eq i64 %5968, 0
  %5985 = zext i1 %5984 to i8
  store i8 %5985, i8* %29, align 1
  %5986 = lshr i64 %5968, 63
  %5987 = trunc i64 %5986 to i8
  store i8 %5987, i8* %32, align 1
  %5988 = xor i64 %5986, %5954
  %5989 = xor i64 %5986, %5967
  %5990 = add nuw nsw i64 %5988, %5989
  %5991 = icmp eq i64 %5990, 2
  %5992 = zext i1 %5991 to i8
  store i8 %5992, i8* %38, align 1
  %5993 = load i64, i64* %RBP.i, align 8
  %5994 = add i64 %5993, -24
  %5995 = add i64 %5733, 39
  store i64 %5995, i64* %3, align 8
  %5996 = inttoptr i64 %5994 to i32*
  %5997 = load i32, i32* %5996, align 4
  %5998 = sext i32 %5997 to i64
  %5999 = shl nsw i64 %5998, 4
  %6000 = add i64 %5999, %5968
  store i64 %6000, i64* %RCX.i2165, align 8
  %6001 = icmp ult i64 %6000, %5968
  %6002 = icmp ult i64 %6000, %5999
  %6003 = or i1 %6001, %6002
  %6004 = zext i1 %6003 to i8
  store i8 %6004, i8* %14, align 1
  %6005 = trunc i64 %6000 to i32
  %6006 = and i32 %6005, 255
  %6007 = tail call i32 @llvm.ctpop.i32(i32 %6006)
  %6008 = trunc i32 %6007 to i8
  %6009 = and i8 %6008, 1
  %6010 = xor i8 %6009, 1
  store i8 %6010, i8* %21, align 1
  %6011 = xor i64 %5999, %5968
  %6012 = xor i64 %6011, %6000
  %6013 = lshr i64 %6012, 4
  %6014 = trunc i64 %6013 to i8
  %6015 = and i8 %6014, 1
  store i8 %6015, i8* %26, align 1
  %6016 = icmp eq i64 %6000, 0
  %6017 = zext i1 %6016 to i8
  store i8 %6017, i8* %29, align 1
  %6018 = lshr i64 %6000, 63
  %6019 = trunc i64 %6018 to i8
  store i8 %6019, i8* %32, align 1
  %6020 = lshr i64 %5998, 59
  %6021 = and i64 %6020, 1
  %6022 = xor i64 %6018, %5986
  %6023 = xor i64 %6018, %6021
  %6024 = add nuw nsw i64 %6022, %6023
  %6025 = icmp eq i64 %6024, 2
  %6026 = zext i1 %6025 to i8
  store i8 %6026, i8* %38, align 1
  %6027 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*), align 8
  store i64 %6027, i64* %RDX.i2162, align 8
  %6028 = add i64 %6027, 72520
  %6029 = add i64 %5733, 61
  store i64 %6029, i64* %3, align 8
  %6030 = inttoptr i64 %6028 to i32*
  %6031 = load i32, i32* %6030, align 4
  %6032 = sext i32 %6031 to i64
  %6033 = mul nsw i64 %6032, 960
  store i64 %6033, i64* %RDX.i2162, align 8
  %6034 = lshr i64 %6033, 63
  %6035 = load i64, i64* %RAX.i2255, align 8
  %6036 = add i64 %6033, %6035
  store i64 %6036, i64* %RAX.i2255, align 8
  %6037 = icmp ult i64 %6036, %6035
  %6038 = icmp ult i64 %6036, %6033
  %6039 = or i1 %6037, %6038
  %6040 = zext i1 %6039 to i8
  store i8 %6040, i8* %14, align 1
  %6041 = trunc i64 %6036 to i32
  %6042 = and i32 %6041, 255
  %6043 = tail call i32 @llvm.ctpop.i32(i32 %6042)
  %6044 = trunc i32 %6043 to i8
  %6045 = and i8 %6044, 1
  %6046 = xor i8 %6045, 1
  store i8 %6046, i8* %21, align 1
  %6047 = xor i64 %6035, %6036
  %6048 = lshr i64 %6047, 4
  %6049 = trunc i64 %6048 to i8
  %6050 = and i8 %6049, 1
  store i8 %6050, i8* %26, align 1
  %6051 = icmp eq i64 %6036, 0
  %6052 = zext i1 %6051 to i8
  store i8 %6052, i8* %29, align 1
  %6053 = lshr i64 %6036, 63
  %6054 = trunc i64 %6053 to i8
  store i8 %6054, i8* %32, align 1
  %6055 = lshr i64 %6035, 63
  %6056 = xor i64 %6053, %6055
  %6057 = xor i64 %6053, %6034
  %6058 = add nuw nsw i64 %6056, %6057
  %6059 = icmp eq i64 %6058, 2
  %6060 = zext i1 %6059 to i8
  store i8 %6060, i8* %38, align 1
  %6061 = load i64, i64* %RBP.i, align 8
  %6062 = add i64 %6061, -20
  %6063 = add i64 %5733, 75
  store i64 %6063, i64* %3, align 8
  %6064 = inttoptr i64 %6062 to i32*
  %6065 = load i32, i32* %6064, align 4
  %6066 = sext i32 %6065 to i64
  %6067 = mul nsw i64 %6066, 120
  store i64 %6067, i64* %RDX.i2162, align 8
  %6068 = lshr i64 %6067, 63
  %6069 = add i64 %6067, %6036
  store i64 %6069, i64* %RAX.i2255, align 8
  %6070 = icmp ult i64 %6069, %6036
  %6071 = icmp ult i64 %6069, %6067
  %6072 = or i1 %6070, %6071
  %6073 = zext i1 %6072 to i8
  store i8 %6073, i8* %14, align 1
  %6074 = trunc i64 %6069 to i32
  %6075 = and i32 %6074, 255
  %6076 = tail call i32 @llvm.ctpop.i32(i32 %6075)
  %6077 = trunc i32 %6076 to i8
  %6078 = and i8 %6077, 1
  %6079 = xor i8 %6078, 1
  store i8 %6079, i8* %21, align 1
  %6080 = xor i64 %6067, %6036
  %6081 = xor i64 %6080, %6069
  %6082 = lshr i64 %6081, 4
  %6083 = trunc i64 %6082 to i8
  %6084 = and i8 %6083, 1
  store i8 %6084, i8* %26, align 1
  %6085 = icmp eq i64 %6069, 0
  %6086 = zext i1 %6085 to i8
  store i8 %6086, i8* %29, align 1
  %6087 = lshr i64 %6069, 63
  %6088 = trunc i64 %6087 to i8
  store i8 %6088, i8* %32, align 1
  %6089 = xor i64 %6087, %6053
  %6090 = xor i64 %6087, %6068
  %6091 = add nuw nsw i64 %6089, %6090
  %6092 = icmp eq i64 %6091, 2
  %6093 = zext i1 %6092 to i8
  store i8 %6093, i8* %38, align 1
  %6094 = add i64 %6061, -24
  %6095 = add i64 %5733, 86
  store i64 %6095, i64* %3, align 8
  %6096 = inttoptr i64 %6094 to i32*
  %6097 = load i32, i32* %6096, align 4
  %6098 = sext i32 %6097 to i64
  %6099 = shl nsw i64 %6098, 3
  store i64 %6099, i64* %RDX.i2162, align 8
  %6100 = add i64 %6099, %6069
  store i64 %6100, i64* %RAX.i2255, align 8
  %6101 = icmp ult i64 %6100, %6069
  %6102 = icmp ult i64 %6100, %6099
  %6103 = or i1 %6101, %6102
  %6104 = zext i1 %6103 to i8
  store i8 %6104, i8* %14, align 1
  %6105 = trunc i64 %6100 to i32
  %6106 = and i32 %6105, 255
  %6107 = tail call i32 @llvm.ctpop.i32(i32 %6106)
  %6108 = trunc i32 %6107 to i8
  %6109 = and i8 %6108, 1
  %6110 = xor i8 %6109, 1
  store i8 %6110, i8* %21, align 1
  %6111 = xor i64 %6099, %6069
  %6112 = xor i64 %6111, %6100
  %6113 = lshr i64 %6112, 4
  %6114 = trunc i64 %6113 to i8
  %6115 = and i8 %6114, 1
  store i8 %6115, i8* %26, align 1
  %6116 = icmp eq i64 %6100, 0
  %6117 = zext i1 %6116 to i8
  store i8 %6117, i8* %29, align 1
  %6118 = lshr i64 %6100, 63
  %6119 = trunc i64 %6118 to i8
  store i8 %6119, i8* %32, align 1
  %6120 = lshr i64 %6098, 60
  %6121 = and i64 %6120, 1
  %6122 = xor i64 %6118, %6087
  %6123 = xor i64 %6118, %6121
  %6124 = add nuw nsw i64 %6122, %6123
  %6125 = icmp eq i64 %6124, 2
  %6126 = zext i1 %6125 to i8
  store i8 %6126, i8* %38, align 1
  %6127 = load i64, i64* %RCX.i2165, align 8
  store i64 %6127, i64* %RDI.i2122, align 8
  store i64 %6100, i64* %RSI.i2119, align 8
  %6128 = add i64 %5733, -91555
  %6129 = add i64 %5733, 104
  %6130 = load i64, i64* %6, align 8
  %6131 = add i64 %6130, -8
  %6132 = inttoptr i64 %6131 to i64*
  store i64 %6129, i64* %6132, align 8
  store i64 %6131, i64* %6, align 8
  store i64 %6128, i64* %3, align 8
  %call2_418a96 = tail call %struct.Memory* @sub_402490.biari_init_context(%struct.State* nonnull %0, i64 %6128, %struct.Memory* %2)
  %.pre230 = load i64, i64* %3, align 8
  br label %block_.L_418a9b

block_.L_418a9b:                                  ; preds = %block_.L_418a33, %block_4189c6
  %6133 = phi i64 [ %.pre230, %block_.L_418a33 ], [ %5934, %block_4189c6 ]
  %6134 = load i64, i64* %RBP.i, align 8
  %6135 = add i64 %6134, -24
  %6136 = add i64 %6133, 8
  store i64 %6136, i64* %3, align 8
  %6137 = inttoptr i64 %6135 to i32*
  %6138 = load i32, i32* %6137, align 4
  %6139 = add i32 %6138, 1
  %6140 = zext i32 %6139 to i64
  store i64 %6140, i64* %RAX.i2255, align 8
  %6141 = icmp eq i32 %6138, -1
  %6142 = icmp eq i32 %6139, 0
  %6143 = or i1 %6141, %6142
  %6144 = zext i1 %6143 to i8
  store i8 %6144, i8* %14, align 1
  %6145 = and i32 %6139, 255
  %6146 = tail call i32 @llvm.ctpop.i32(i32 %6145)
  %6147 = trunc i32 %6146 to i8
  %6148 = and i8 %6147, 1
  %6149 = xor i8 %6148, 1
  store i8 %6149, i8* %21, align 1
  %6150 = xor i32 %6139, %6138
  %6151 = lshr i32 %6150, 4
  %6152 = trunc i32 %6151 to i8
  %6153 = and i8 %6152, 1
  store i8 %6153, i8* %26, align 1
  %6154 = zext i1 %6142 to i8
  store i8 %6154, i8* %29, align 1
  %6155 = lshr i32 %6139, 31
  %6156 = trunc i32 %6155 to i8
  store i8 %6156, i8* %32, align 1
  %6157 = lshr i32 %6138, 31
  %6158 = xor i32 %6155, %6157
  %6159 = add nuw nsw i32 %6158, %6155
  %6160 = icmp eq i32 %6159, 2
  %6161 = zext i1 %6160 to i8
  store i8 %6161, i8* %38, align 1
  %6162 = add i64 %6133, 14
  store i64 %6162, i64* %3, align 8
  store i32 %6139, i32* %6137, align 4
  %6163 = load i64, i64* %3, align 8
  %6164 = add i64 %6163, -255
  store i64 %6164, i64* %3, align 8
  br label %block_.L_4189aa

block_.L_418aae:                                  ; preds = %block_.L_4189aa
  %6165 = add i64 %5678, -20
  %6166 = add i64 %5706, 8
  store i64 %6166, i64* %3, align 8
  %6167 = inttoptr i64 %6165 to i32*
  %6168 = load i32, i32* %6167, align 4
  %6169 = add i32 %6168, 1
  %6170 = zext i32 %6169 to i64
  store i64 %6170, i64* %RAX.i2255, align 8
  %6171 = icmp eq i32 %6168, -1
  %6172 = icmp eq i32 %6169, 0
  %6173 = or i1 %6171, %6172
  %6174 = zext i1 %6173 to i8
  store i8 %6174, i8* %14, align 1
  %6175 = and i32 %6169, 255
  %6176 = tail call i32 @llvm.ctpop.i32(i32 %6175)
  %6177 = trunc i32 %6176 to i8
  %6178 = and i8 %6177, 1
  %6179 = xor i8 %6178, 1
  store i8 %6179, i8* %21, align 1
  %6180 = xor i32 %6169, %6168
  %6181 = lshr i32 %6180, 4
  %6182 = trunc i32 %6181 to i8
  %6183 = and i8 %6182, 1
  store i8 %6183, i8* %26, align 1
  %6184 = zext i1 %6172 to i8
  store i8 %6184, i8* %29, align 1
  %6185 = lshr i32 %6169, 31
  %6186 = trunc i32 %6185 to i8
  store i8 %6186, i8* %32, align 1
  %6187 = lshr i32 %6168, 31
  %6188 = xor i32 %6185, %6187
  %6189 = add nuw nsw i32 %6188, %6185
  %6190 = icmp eq i32 %6189, 2
  %6191 = zext i1 %6190 to i8
  store i8 %6191, i8* %38, align 1
  %6192 = add i64 %5706, 14
  store i64 %6192, i64* %3, align 8
  store i32 %6169, i32* %6167, align 4
  %6193 = load i64, i64* %3, align 8
  %6194 = add i64 %6193, -291
  store i64 %6194, i64* %3, align 8
  br label %block_.L_418999

block_.L_418ac1:                                  ; preds = %block_.L_418999
  %6195 = add i64 %5673, 7
  store i64 %6195, i64* %3, align 8
  store i32 0, i32* %5648, align 4
  %.pre217 = load i64, i64* %3, align 8
  br label %block_.L_418ac8

block_.L_418ac8:                                  ; preds = %block_.L_418bd7, %block_.L_418ac1
  %6196 = phi i64 [ %.pre217, %block_.L_418ac1 ], [ %6746, %block_.L_418bd7 ]
  %6197 = load i64, i64* %RBP.i, align 8
  %6198 = add i64 %6197, -20
  %6199 = add i64 %6196, 4
  store i64 %6199, i64* %3, align 8
  %6200 = inttoptr i64 %6198 to i32*
  %6201 = load i32, i32* %6200, align 4
  %6202 = add i32 %6201, -10
  %6203 = icmp ult i32 %6201, 10
  %6204 = zext i1 %6203 to i8
  store i8 %6204, i8* %14, align 1
  %6205 = and i32 %6202, 255
  %6206 = tail call i32 @llvm.ctpop.i32(i32 %6205)
  %6207 = trunc i32 %6206 to i8
  %6208 = and i8 %6207, 1
  %6209 = xor i8 %6208, 1
  store i8 %6209, i8* %21, align 1
  %6210 = xor i32 %6202, %6201
  %6211 = lshr i32 %6210, 4
  %6212 = trunc i32 %6211 to i8
  %6213 = and i8 %6212, 1
  store i8 %6213, i8* %26, align 1
  %6214 = icmp eq i32 %6202, 0
  %6215 = zext i1 %6214 to i8
  store i8 %6215, i8* %29, align 1
  %6216 = lshr i32 %6202, 31
  %6217 = trunc i32 %6216 to i8
  store i8 %6217, i8* %32, align 1
  %6218 = lshr i32 %6201, 31
  %6219 = xor i32 %6216, %6218
  %6220 = add nuw nsw i32 %6219, %6218
  %6221 = icmp eq i32 %6220, 2
  %6222 = zext i1 %6221 to i8
  store i8 %6222, i8* %38, align 1
  %6223 = icmp ne i8 %6217, 0
  %6224 = xor i1 %6223, %6221
  %.v274 = select i1 %6224, i64 10, i64 290
  %6225 = add i64 %6196, %.v274
  store i64 %6225, i64* %3, align 8
  br i1 %6224, label %block_418ad2, label %block_.L_418bea

block_418ad2:                                     ; preds = %block_.L_418ac8
  %6226 = add i64 %6197, -24
  %6227 = add i64 %6225, 7
  store i64 %6227, i64* %3, align 8
  %6228 = inttoptr i64 %6226 to i32*
  store i32 0, i32* %6228, align 4
  %.pre227 = load i64, i64* %3, align 8
  br label %block_.L_418ad9

block_.L_418ad9:                                  ; preds = %block_.L_418bc4, %block_418ad2
  %6229 = phi i64 [ %.pre227, %block_418ad2 ], [ %6716, %block_.L_418bc4 ]
  %6230 = load i64, i64* %RBP.i, align 8
  %6231 = add i64 %6230, -24
  %6232 = add i64 %6229, 4
  store i64 %6232, i64* %3, align 8
  %6233 = inttoptr i64 %6231 to i32*
  %6234 = load i32, i32* %6233, align 4
  %6235 = add i32 %6234, -5
  %6236 = icmp ult i32 %6234, 5
  %6237 = zext i1 %6236 to i8
  store i8 %6237, i8* %14, align 1
  %6238 = and i32 %6235, 255
  %6239 = tail call i32 @llvm.ctpop.i32(i32 %6238)
  %6240 = trunc i32 %6239 to i8
  %6241 = and i8 %6240, 1
  %6242 = xor i8 %6241, 1
  store i8 %6242, i8* %21, align 1
  %6243 = xor i32 %6235, %6234
  %6244 = lshr i32 %6243, 4
  %6245 = trunc i32 %6244 to i8
  %6246 = and i8 %6245, 1
  store i8 %6246, i8* %26, align 1
  %6247 = icmp eq i32 %6235, 0
  %6248 = zext i1 %6247 to i8
  store i8 %6248, i8* %29, align 1
  %6249 = lshr i32 %6235, 31
  %6250 = trunc i32 %6249 to i8
  store i8 %6250, i8* %32, align 1
  %6251 = lshr i32 %6234, 31
  %6252 = xor i32 %6249, %6251
  %6253 = add nuw nsw i32 %6252, %6251
  %6254 = icmp eq i32 %6253, 2
  %6255 = zext i1 %6254 to i8
  store i8 %6255, i8* %38, align 1
  %6256 = icmp ne i8 %6250, 0
  %6257 = xor i1 %6256, %6254
  %.v253 = select i1 %6257, i64 10, i64 254
  %6258 = add i64 %6229, %.v253
  store i64 %6258, i64* %3, align 8
  br i1 %6257, label %block_418ae3, label %block_.L_418bd7

block_418ae3:                                     ; preds = %block_.L_418ad9
  %6259 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*), align 8
  store i64 %6259, i64* %RAX.i2255, align 8
  %6260 = add i64 %6259, 24
  %6261 = add i64 %6258, 12
  store i64 %6261, i64* %3, align 8
  %6262 = inttoptr i64 %6260 to i32*
  %6263 = load i32, i32* %6262, align 4
  %6264 = add i32 %6263, -2
  %6265 = icmp ult i32 %6263, 2
  %6266 = zext i1 %6265 to i8
  store i8 %6266, i8* %14, align 1
  %6267 = and i32 %6264, 255
  %6268 = tail call i32 @llvm.ctpop.i32(i32 %6267)
  %6269 = trunc i32 %6268 to i8
  %6270 = and i8 %6269, 1
  %6271 = xor i8 %6270, 1
  store i8 %6271, i8* %21, align 1
  %6272 = xor i32 %6264, %6263
  %6273 = lshr i32 %6272, 4
  %6274 = trunc i32 %6273 to i8
  %6275 = and i8 %6274, 1
  store i8 %6275, i8* %26, align 1
  %6276 = icmp eq i32 %6264, 0
  %6277 = zext i1 %6276 to i8
  store i8 %6277, i8* %29, align 1
  %6278 = lshr i32 %6264, 31
  %6279 = trunc i32 %6278 to i8
  store i8 %6279, i8* %32, align 1
  %6280 = lshr i32 %6263, 31
  %6281 = xor i32 %6278, %6280
  %6282 = add nuw nsw i32 %6281, %6280
  %6283 = icmp eq i32 %6282, 2
  %6284 = zext i1 %6283 to i8
  store i8 %6284, i8* %38, align 1
  %.v281 = select i1 %6276, i64 18, i64 124
  %6285 = add i64 %6258, %.v281
  %6286 = add i64 %6285, 10
  store i64 %6286, i64* %3, align 8
  br i1 %6276, label %block_418af5, label %block_.L_418b5f

block_418af5:                                     ; preds = %block_418ae3
  store i64 ptrtoint (%G__0x4b62b0_type* @G__0x4b62b0 to i64), i64* %RAX.i2255, align 8
  %6287 = add i64 %6230, -16
  %6288 = add i64 %6285, 14
  store i64 %6288, i64* %3, align 8
  %6289 = inttoptr i64 %6287 to i64*
  %6290 = load i64, i64* %6289, align 8
  %6291 = add i64 %6290, 5728
  store i64 %6291, i64* %RCX.i2165, align 8
  %6292 = icmp ugt i64 %6290, -5729
  %6293 = zext i1 %6292 to i8
  store i8 %6293, i8* %14, align 1
  %6294 = trunc i64 %6291 to i32
  %6295 = and i32 %6294, 255
  %6296 = tail call i32 @llvm.ctpop.i32(i32 %6295)
  %6297 = trunc i32 %6296 to i8
  %6298 = and i8 %6297, 1
  %6299 = xor i8 %6298, 1
  store i8 %6299, i8* %21, align 1
  %6300 = xor i64 %6291, %6290
  %6301 = lshr i64 %6300, 4
  %6302 = trunc i64 %6301 to i8
  %6303 = and i8 %6302, 1
  store i8 %6303, i8* %26, align 1
  %6304 = icmp eq i64 %6291, 0
  %6305 = zext i1 %6304 to i8
  store i8 %6305, i8* %29, align 1
  %6306 = lshr i64 %6291, 63
  %6307 = trunc i64 %6306 to i8
  store i8 %6307, i8* %32, align 1
  %6308 = lshr i64 %6290, 63
  %6309 = xor i64 %6306, %6308
  %6310 = add nuw nsw i64 %6309, %6306
  %6311 = icmp eq i64 %6310, 2
  %6312 = zext i1 %6311 to i8
  store i8 %6312, i8* %38, align 1
  %6313 = add i64 %6230, -20
  %6314 = add i64 %6285, 25
  store i64 %6314, i64* %3, align 8
  %6315 = inttoptr i64 %6313 to i32*
  %6316 = load i32, i32* %6315, align 4
  %6317 = sext i32 %6316 to i64
  %6318 = mul nsw i64 %6317, 80
  store i64 %6318, i64* %RDX.i2162, align 8
  %6319 = lshr i64 %6318, 63
  %6320 = add i64 %6318, %6291
  store i64 %6320, i64* %RCX.i2165, align 8
  %6321 = icmp ult i64 %6320, %6291
  %6322 = icmp ult i64 %6320, %6318
  %6323 = or i1 %6321, %6322
  %6324 = zext i1 %6323 to i8
  store i8 %6324, i8* %14, align 1
  %6325 = trunc i64 %6320 to i32
  %6326 = and i32 %6325, 255
  %6327 = tail call i32 @llvm.ctpop.i32(i32 %6326)
  %6328 = trunc i32 %6327 to i8
  %6329 = and i8 %6328, 1
  %6330 = xor i8 %6329, 1
  store i8 %6330, i8* %21, align 1
  %6331 = xor i64 %6318, %6291
  %6332 = xor i64 %6331, %6320
  %6333 = lshr i64 %6332, 4
  %6334 = trunc i64 %6333 to i8
  %6335 = and i8 %6334, 1
  store i8 %6335, i8* %26, align 1
  %6336 = icmp eq i64 %6320, 0
  %6337 = zext i1 %6336 to i8
  store i8 %6337, i8* %29, align 1
  %6338 = lshr i64 %6320, 63
  %6339 = trunc i64 %6338 to i8
  store i8 %6339, i8* %32, align 1
  %6340 = xor i64 %6338, %6306
  %6341 = xor i64 %6338, %6319
  %6342 = add nuw nsw i64 %6340, %6341
  %6343 = icmp eq i64 %6342, 2
  %6344 = zext i1 %6343 to i8
  store i8 %6344, i8* %38, align 1
  %6345 = load i64, i64* %RBP.i, align 8
  %6346 = add i64 %6345, -24
  %6347 = add i64 %6285, 36
  store i64 %6347, i64* %3, align 8
  %6348 = inttoptr i64 %6346 to i32*
  %6349 = load i32, i32* %6348, align 4
  %6350 = sext i32 %6349 to i64
  %6351 = shl nsw i64 %6350, 4
  %6352 = add i64 %6351, %6320
  store i64 %6352, i64* %RCX.i2165, align 8
  %6353 = icmp ult i64 %6352, %6320
  %6354 = icmp ult i64 %6352, %6351
  %6355 = or i1 %6353, %6354
  %6356 = zext i1 %6355 to i8
  store i8 %6356, i8* %14, align 1
  %6357 = trunc i64 %6352 to i32
  %6358 = and i32 %6357, 255
  %6359 = tail call i32 @llvm.ctpop.i32(i32 %6358)
  %6360 = trunc i32 %6359 to i8
  %6361 = and i8 %6360, 1
  %6362 = xor i8 %6361, 1
  store i8 %6362, i8* %21, align 1
  %6363 = xor i64 %6351, %6320
  %6364 = xor i64 %6363, %6352
  %6365 = lshr i64 %6364, 4
  %6366 = trunc i64 %6365 to i8
  %6367 = and i8 %6366, 1
  store i8 %6367, i8* %26, align 1
  %6368 = icmp eq i64 %6352, 0
  %6369 = zext i1 %6368 to i8
  store i8 %6369, i8* %29, align 1
  %6370 = lshr i64 %6352, 63
  %6371 = trunc i64 %6370 to i8
  store i8 %6371, i8* %32, align 1
  %6372 = lshr i64 %6350, 59
  %6373 = and i64 %6372, 1
  %6374 = xor i64 %6370, %6338
  %6375 = xor i64 %6370, %6373
  %6376 = add nuw nsw i64 %6374, %6375
  %6377 = icmp eq i64 %6376, 2
  %6378 = zext i1 %6377 to i8
  store i8 %6378, i8* %38, align 1
  %6379 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*), align 8
  store i64 %6379, i64* %RDX.i2162, align 8
  %6380 = add i64 %6379, 72520
  %6381 = add i64 %6285, 58
  store i64 %6381, i64* %3, align 8
  %6382 = inttoptr i64 %6380 to i32*
  %6383 = load i32, i32* %6382, align 4
  %6384 = sext i32 %6383 to i64
  %6385 = mul nsw i64 %6384, 320
  store i64 %6385, i64* %RDX.i2162, align 8
  %6386 = lshr i64 %6385, 63
  %6387 = load i64, i64* %RAX.i2255, align 8
  %6388 = add i64 %6385, %6387
  store i64 %6388, i64* %RAX.i2255, align 8
  %6389 = icmp ult i64 %6388, %6387
  %6390 = icmp ult i64 %6388, %6385
  %6391 = or i1 %6389, %6390
  %6392 = zext i1 %6391 to i8
  store i8 %6392, i8* %14, align 1
  %6393 = trunc i64 %6388 to i32
  %6394 = and i32 %6393, 255
  %6395 = tail call i32 @llvm.ctpop.i32(i32 %6394)
  %6396 = trunc i32 %6395 to i8
  %6397 = and i8 %6396, 1
  %6398 = xor i8 %6397, 1
  store i8 %6398, i8* %21, align 1
  %6399 = xor i64 %6387, %6388
  %6400 = lshr i64 %6399, 4
  %6401 = trunc i64 %6400 to i8
  %6402 = and i8 %6401, 1
  store i8 %6402, i8* %26, align 1
  %6403 = icmp eq i64 %6388, 0
  %6404 = zext i1 %6403 to i8
  store i8 %6404, i8* %29, align 1
  %6405 = lshr i64 %6388, 63
  %6406 = trunc i64 %6405 to i8
  store i8 %6406, i8* %32, align 1
  %6407 = lshr i64 %6387, 63
  %6408 = xor i64 %6405, %6407
  %6409 = xor i64 %6405, %6386
  %6410 = add nuw nsw i64 %6408, %6409
  %6411 = icmp eq i64 %6410, 2
  %6412 = zext i1 %6411 to i8
  store i8 %6412, i8* %38, align 1
  %6413 = load i64, i64* %RBP.i, align 8
  %6414 = add i64 %6413, -20
  %6415 = add i64 %6285, 72
  store i64 %6415, i64* %3, align 8
  %6416 = inttoptr i64 %6414 to i32*
  %6417 = load i32, i32* %6416, align 4
  %6418 = sext i32 %6417 to i64
  %6419 = mul nsw i64 %6418, 40
  store i64 %6419, i64* %RDX.i2162, align 8
  %6420 = lshr i64 %6419, 63
  %6421 = add i64 %6419, %6388
  store i64 %6421, i64* %RAX.i2255, align 8
  %6422 = icmp ult i64 %6421, %6388
  %6423 = icmp ult i64 %6421, %6419
  %6424 = or i1 %6422, %6423
  %6425 = zext i1 %6424 to i8
  store i8 %6425, i8* %14, align 1
  %6426 = trunc i64 %6421 to i32
  %6427 = and i32 %6426, 255
  %6428 = tail call i32 @llvm.ctpop.i32(i32 %6427)
  %6429 = trunc i32 %6428 to i8
  %6430 = and i8 %6429, 1
  %6431 = xor i8 %6430, 1
  store i8 %6431, i8* %21, align 1
  %6432 = xor i64 %6419, %6388
  %6433 = xor i64 %6432, %6421
  %6434 = lshr i64 %6433, 4
  %6435 = trunc i64 %6434 to i8
  %6436 = and i8 %6435, 1
  store i8 %6436, i8* %26, align 1
  %6437 = icmp eq i64 %6421, 0
  %6438 = zext i1 %6437 to i8
  store i8 %6438, i8* %29, align 1
  %6439 = lshr i64 %6421, 63
  %6440 = trunc i64 %6439 to i8
  store i8 %6440, i8* %32, align 1
  %6441 = xor i64 %6439, %6405
  %6442 = xor i64 %6439, %6420
  %6443 = add nuw nsw i64 %6441, %6442
  %6444 = icmp eq i64 %6443, 2
  %6445 = zext i1 %6444 to i8
  store i8 %6445, i8* %38, align 1
  %6446 = add i64 %6413, -24
  %6447 = add i64 %6285, 83
  store i64 %6447, i64* %3, align 8
  %6448 = inttoptr i64 %6446 to i32*
  %6449 = load i32, i32* %6448, align 4
  %6450 = sext i32 %6449 to i64
  %6451 = shl nsw i64 %6450, 3
  store i64 %6451, i64* %RDX.i2162, align 8
  %6452 = add i64 %6451, %6421
  store i64 %6452, i64* %RAX.i2255, align 8
  %6453 = icmp ult i64 %6452, %6421
  %6454 = icmp ult i64 %6452, %6451
  %6455 = or i1 %6453, %6454
  %6456 = zext i1 %6455 to i8
  store i8 %6456, i8* %14, align 1
  %6457 = trunc i64 %6452 to i32
  %6458 = and i32 %6457, 255
  %6459 = tail call i32 @llvm.ctpop.i32(i32 %6458)
  %6460 = trunc i32 %6459 to i8
  %6461 = and i8 %6460, 1
  %6462 = xor i8 %6461, 1
  store i8 %6462, i8* %21, align 1
  %6463 = xor i64 %6451, %6421
  %6464 = xor i64 %6463, %6452
  %6465 = lshr i64 %6464, 4
  %6466 = trunc i64 %6465 to i8
  %6467 = and i8 %6466, 1
  store i8 %6467, i8* %26, align 1
  %6468 = icmp eq i64 %6452, 0
  %6469 = zext i1 %6468 to i8
  store i8 %6469, i8* %29, align 1
  %6470 = lshr i64 %6452, 63
  %6471 = trunc i64 %6470 to i8
  store i8 %6471, i8* %32, align 1
  %6472 = lshr i64 %6450, 60
  %6473 = and i64 %6472, 1
  %6474 = xor i64 %6470, %6439
  %6475 = xor i64 %6470, %6473
  %6476 = add nuw nsw i64 %6474, %6475
  %6477 = icmp eq i64 %6476, 2
  %6478 = zext i1 %6477 to i8
  store i8 %6478, i8* %38, align 1
  %6479 = load i64, i64* %RCX.i2165, align 8
  store i64 %6479, i64* %RDI.i2122, align 8
  store i64 %6452, i64* %RSI.i2119, align 8
  %6480 = add i64 %6285, -91749
  %6481 = add i64 %6285, 101
  %6482 = load i64, i64* %6, align 8
  %6483 = add i64 %6482, -8
  %6484 = inttoptr i64 %6483 to i64*
  store i64 %6481, i64* %6484, align 8
  store i64 %6483, i64* %6, align 8
  store i64 %6480, i64* %3, align 8
  %call2_418b55 = tail call %struct.Memory* @sub_402490.biari_init_context(%struct.State* nonnull %0, i64 %6480, %struct.Memory* %2)
  %6485 = load i64, i64* %3, align 8
  %6486 = add i64 %6485, 106
  store i64 %6486, i64* %3, align 8
  br label %block_.L_418bc4

block_.L_418b5f:                                  ; preds = %block_418ae3
  store i64 ptrtoint (%G__0x4b63f0_type* @G__0x4b63f0 to i64), i64* %RAX.i2255, align 8
  %6487 = add i64 %6230, -16
  %6488 = add i64 %6285, 14
  store i64 %6488, i64* %3, align 8
  %6489 = inttoptr i64 %6487 to i64*
  %6490 = load i64, i64* %6489, align 8
  %6491 = add i64 %6490, 5728
  store i64 %6491, i64* %RCX.i2165, align 8
  %6492 = icmp ugt i64 %6490, -5729
  %6493 = zext i1 %6492 to i8
  store i8 %6493, i8* %14, align 1
  %6494 = trunc i64 %6491 to i32
  %6495 = and i32 %6494, 255
  %6496 = tail call i32 @llvm.ctpop.i32(i32 %6495)
  %6497 = trunc i32 %6496 to i8
  %6498 = and i8 %6497, 1
  %6499 = xor i8 %6498, 1
  store i8 %6499, i8* %21, align 1
  %6500 = xor i64 %6491, %6490
  %6501 = lshr i64 %6500, 4
  %6502 = trunc i64 %6501 to i8
  %6503 = and i8 %6502, 1
  store i8 %6503, i8* %26, align 1
  %6504 = icmp eq i64 %6491, 0
  %6505 = zext i1 %6504 to i8
  store i8 %6505, i8* %29, align 1
  %6506 = lshr i64 %6491, 63
  %6507 = trunc i64 %6506 to i8
  store i8 %6507, i8* %32, align 1
  %6508 = lshr i64 %6490, 63
  %6509 = xor i64 %6506, %6508
  %6510 = add nuw nsw i64 %6509, %6506
  %6511 = icmp eq i64 %6510, 2
  %6512 = zext i1 %6511 to i8
  store i8 %6512, i8* %38, align 1
  %6513 = add i64 %6230, -20
  %6514 = add i64 %6285, 25
  store i64 %6514, i64* %3, align 8
  %6515 = inttoptr i64 %6513 to i32*
  %6516 = load i32, i32* %6515, align 4
  %6517 = sext i32 %6516 to i64
  %6518 = mul nsw i64 %6517, 80
  store i64 %6518, i64* %RDX.i2162, align 8
  %6519 = lshr i64 %6518, 63
  %6520 = add i64 %6518, %6491
  store i64 %6520, i64* %RCX.i2165, align 8
  %6521 = icmp ult i64 %6520, %6491
  %6522 = icmp ult i64 %6520, %6518
  %6523 = or i1 %6521, %6522
  %6524 = zext i1 %6523 to i8
  store i8 %6524, i8* %14, align 1
  %6525 = trunc i64 %6520 to i32
  %6526 = and i32 %6525, 255
  %6527 = tail call i32 @llvm.ctpop.i32(i32 %6526)
  %6528 = trunc i32 %6527 to i8
  %6529 = and i8 %6528, 1
  %6530 = xor i8 %6529, 1
  store i8 %6530, i8* %21, align 1
  %6531 = xor i64 %6518, %6491
  %6532 = xor i64 %6531, %6520
  %6533 = lshr i64 %6532, 4
  %6534 = trunc i64 %6533 to i8
  %6535 = and i8 %6534, 1
  store i8 %6535, i8* %26, align 1
  %6536 = icmp eq i64 %6520, 0
  %6537 = zext i1 %6536 to i8
  store i8 %6537, i8* %29, align 1
  %6538 = lshr i64 %6520, 63
  %6539 = trunc i64 %6538 to i8
  store i8 %6539, i8* %32, align 1
  %6540 = xor i64 %6538, %6506
  %6541 = xor i64 %6538, %6519
  %6542 = add nuw nsw i64 %6540, %6541
  %6543 = icmp eq i64 %6542, 2
  %6544 = zext i1 %6543 to i8
  store i8 %6544, i8* %38, align 1
  %6545 = load i64, i64* %RBP.i, align 8
  %6546 = add i64 %6545, -24
  %6547 = add i64 %6285, 36
  store i64 %6547, i64* %3, align 8
  %6548 = inttoptr i64 %6546 to i32*
  %6549 = load i32, i32* %6548, align 4
  %6550 = sext i32 %6549 to i64
  %6551 = shl nsw i64 %6550, 4
  %6552 = add i64 %6551, %6520
  store i64 %6552, i64* %RCX.i2165, align 8
  %6553 = icmp ult i64 %6552, %6520
  %6554 = icmp ult i64 %6552, %6551
  %6555 = or i1 %6553, %6554
  %6556 = zext i1 %6555 to i8
  store i8 %6556, i8* %14, align 1
  %6557 = trunc i64 %6552 to i32
  %6558 = and i32 %6557, 255
  %6559 = tail call i32 @llvm.ctpop.i32(i32 %6558)
  %6560 = trunc i32 %6559 to i8
  %6561 = and i8 %6560, 1
  %6562 = xor i8 %6561, 1
  store i8 %6562, i8* %21, align 1
  %6563 = xor i64 %6551, %6520
  %6564 = xor i64 %6563, %6552
  %6565 = lshr i64 %6564, 4
  %6566 = trunc i64 %6565 to i8
  %6567 = and i8 %6566, 1
  store i8 %6567, i8* %26, align 1
  %6568 = icmp eq i64 %6552, 0
  %6569 = zext i1 %6568 to i8
  store i8 %6569, i8* %29, align 1
  %6570 = lshr i64 %6552, 63
  %6571 = trunc i64 %6570 to i8
  store i8 %6571, i8* %32, align 1
  %6572 = lshr i64 %6550, 59
  %6573 = and i64 %6572, 1
  %6574 = xor i64 %6570, %6538
  %6575 = xor i64 %6570, %6573
  %6576 = add nuw nsw i64 %6574, %6575
  %6577 = icmp eq i64 %6576, 2
  %6578 = zext i1 %6577 to i8
  store i8 %6578, i8* %38, align 1
  %6579 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*), align 8
  store i64 %6579, i64* %RDX.i2162, align 8
  %6580 = add i64 %6579, 72520
  %6581 = add i64 %6285, 58
  store i64 %6581, i64* %3, align 8
  %6582 = inttoptr i64 %6580 to i32*
  %6583 = load i32, i32* %6582, align 4
  %6584 = sext i32 %6583 to i64
  %6585 = mul nsw i64 %6584, 320
  store i64 %6585, i64* %RDX.i2162, align 8
  %6586 = lshr i64 %6585, 63
  %6587 = load i64, i64* %RAX.i2255, align 8
  %6588 = add i64 %6585, %6587
  store i64 %6588, i64* %RAX.i2255, align 8
  %6589 = icmp ult i64 %6588, %6587
  %6590 = icmp ult i64 %6588, %6585
  %6591 = or i1 %6589, %6590
  %6592 = zext i1 %6591 to i8
  store i8 %6592, i8* %14, align 1
  %6593 = trunc i64 %6588 to i32
  %6594 = and i32 %6593, 255
  %6595 = tail call i32 @llvm.ctpop.i32(i32 %6594)
  %6596 = trunc i32 %6595 to i8
  %6597 = and i8 %6596, 1
  %6598 = xor i8 %6597, 1
  store i8 %6598, i8* %21, align 1
  %6599 = xor i64 %6587, %6588
  %6600 = lshr i64 %6599, 4
  %6601 = trunc i64 %6600 to i8
  %6602 = and i8 %6601, 1
  store i8 %6602, i8* %26, align 1
  %6603 = icmp eq i64 %6588, 0
  %6604 = zext i1 %6603 to i8
  store i8 %6604, i8* %29, align 1
  %6605 = lshr i64 %6588, 63
  %6606 = trunc i64 %6605 to i8
  store i8 %6606, i8* %32, align 1
  %6607 = lshr i64 %6587, 63
  %6608 = xor i64 %6605, %6607
  %6609 = xor i64 %6605, %6586
  %6610 = add nuw nsw i64 %6608, %6609
  %6611 = icmp eq i64 %6610, 2
  %6612 = zext i1 %6611 to i8
  store i8 %6612, i8* %38, align 1
  %6613 = load i64, i64* %RBP.i, align 8
  %6614 = add i64 %6613, -20
  %6615 = add i64 %6285, 72
  store i64 %6615, i64* %3, align 8
  %6616 = inttoptr i64 %6614 to i32*
  %6617 = load i32, i32* %6616, align 4
  %6618 = sext i32 %6617 to i64
  %6619 = mul nsw i64 %6618, 40
  store i64 %6619, i64* %RDX.i2162, align 8
  %6620 = lshr i64 %6619, 63
  %6621 = add i64 %6619, %6588
  store i64 %6621, i64* %RAX.i2255, align 8
  %6622 = icmp ult i64 %6621, %6588
  %6623 = icmp ult i64 %6621, %6619
  %6624 = or i1 %6622, %6623
  %6625 = zext i1 %6624 to i8
  store i8 %6625, i8* %14, align 1
  %6626 = trunc i64 %6621 to i32
  %6627 = and i32 %6626, 255
  %6628 = tail call i32 @llvm.ctpop.i32(i32 %6627)
  %6629 = trunc i32 %6628 to i8
  %6630 = and i8 %6629, 1
  %6631 = xor i8 %6630, 1
  store i8 %6631, i8* %21, align 1
  %6632 = xor i64 %6619, %6588
  %6633 = xor i64 %6632, %6621
  %6634 = lshr i64 %6633, 4
  %6635 = trunc i64 %6634 to i8
  %6636 = and i8 %6635, 1
  store i8 %6636, i8* %26, align 1
  %6637 = icmp eq i64 %6621, 0
  %6638 = zext i1 %6637 to i8
  store i8 %6638, i8* %29, align 1
  %6639 = lshr i64 %6621, 63
  %6640 = trunc i64 %6639 to i8
  store i8 %6640, i8* %32, align 1
  %6641 = xor i64 %6639, %6605
  %6642 = xor i64 %6639, %6620
  %6643 = add nuw nsw i64 %6641, %6642
  %6644 = icmp eq i64 %6643, 2
  %6645 = zext i1 %6644 to i8
  store i8 %6645, i8* %38, align 1
  %6646 = add i64 %6613, -24
  %6647 = add i64 %6285, 83
  store i64 %6647, i64* %3, align 8
  %6648 = inttoptr i64 %6646 to i32*
  %6649 = load i32, i32* %6648, align 4
  %6650 = sext i32 %6649 to i64
  %6651 = shl nsw i64 %6650, 3
  store i64 %6651, i64* %RDX.i2162, align 8
  %6652 = add i64 %6651, %6621
  store i64 %6652, i64* %RAX.i2255, align 8
  %6653 = icmp ult i64 %6652, %6621
  %6654 = icmp ult i64 %6652, %6651
  %6655 = or i1 %6653, %6654
  %6656 = zext i1 %6655 to i8
  store i8 %6656, i8* %14, align 1
  %6657 = trunc i64 %6652 to i32
  %6658 = and i32 %6657, 255
  %6659 = tail call i32 @llvm.ctpop.i32(i32 %6658)
  %6660 = trunc i32 %6659 to i8
  %6661 = and i8 %6660, 1
  %6662 = xor i8 %6661, 1
  store i8 %6662, i8* %21, align 1
  %6663 = xor i64 %6651, %6621
  %6664 = xor i64 %6663, %6652
  %6665 = lshr i64 %6664, 4
  %6666 = trunc i64 %6665 to i8
  %6667 = and i8 %6666, 1
  store i8 %6667, i8* %26, align 1
  %6668 = icmp eq i64 %6652, 0
  %6669 = zext i1 %6668 to i8
  store i8 %6669, i8* %29, align 1
  %6670 = lshr i64 %6652, 63
  %6671 = trunc i64 %6670 to i8
  store i8 %6671, i8* %32, align 1
  %6672 = lshr i64 %6650, 60
  %6673 = and i64 %6672, 1
  %6674 = xor i64 %6670, %6639
  %6675 = xor i64 %6670, %6673
  %6676 = add nuw nsw i64 %6674, %6675
  %6677 = icmp eq i64 %6676, 2
  %6678 = zext i1 %6677 to i8
  store i8 %6678, i8* %38, align 1
  %6679 = load i64, i64* %RCX.i2165, align 8
  store i64 %6679, i64* %RDI.i2122, align 8
  store i64 %6652, i64* %RSI.i2119, align 8
  %6680 = add i64 %6285, -91855
  %6681 = add i64 %6285, 101
  %6682 = load i64, i64* %6, align 8
  %6683 = add i64 %6682, -8
  %6684 = inttoptr i64 %6683 to i64*
  store i64 %6681, i64* %6684, align 8
  store i64 %6683, i64* %6, align 8
  store i64 %6680, i64* %3, align 8
  %call2_418bbf = tail call %struct.Memory* @sub_402490.biari_init_context(%struct.State* nonnull %0, i64 %6680, %struct.Memory* %2)
  %.pre228 = load i64, i64* %3, align 8
  br label %block_.L_418bc4

block_.L_418bc4:                                  ; preds = %block_.L_418b5f, %block_418af5
  %6685 = phi i64 [ %.pre228, %block_.L_418b5f ], [ %6486, %block_418af5 ]
  %6686 = load i64, i64* %RBP.i, align 8
  %6687 = add i64 %6686, -24
  %6688 = add i64 %6685, 8
  store i64 %6688, i64* %3, align 8
  %6689 = inttoptr i64 %6687 to i32*
  %6690 = load i32, i32* %6689, align 4
  %6691 = add i32 %6690, 1
  %6692 = zext i32 %6691 to i64
  store i64 %6692, i64* %RAX.i2255, align 8
  %6693 = icmp eq i32 %6690, -1
  %6694 = icmp eq i32 %6691, 0
  %6695 = or i1 %6693, %6694
  %6696 = zext i1 %6695 to i8
  store i8 %6696, i8* %14, align 1
  %6697 = and i32 %6691, 255
  %6698 = tail call i32 @llvm.ctpop.i32(i32 %6697)
  %6699 = trunc i32 %6698 to i8
  %6700 = and i8 %6699, 1
  %6701 = xor i8 %6700, 1
  store i8 %6701, i8* %21, align 1
  %6702 = xor i32 %6691, %6690
  %6703 = lshr i32 %6702, 4
  %6704 = trunc i32 %6703 to i8
  %6705 = and i8 %6704, 1
  store i8 %6705, i8* %26, align 1
  %6706 = zext i1 %6694 to i8
  store i8 %6706, i8* %29, align 1
  %6707 = lshr i32 %6691, 31
  %6708 = trunc i32 %6707 to i8
  store i8 %6708, i8* %32, align 1
  %6709 = lshr i32 %6690, 31
  %6710 = xor i32 %6707, %6709
  %6711 = add nuw nsw i32 %6710, %6707
  %6712 = icmp eq i32 %6711, 2
  %6713 = zext i1 %6712 to i8
  store i8 %6713, i8* %38, align 1
  %6714 = add i64 %6685, 14
  store i64 %6714, i64* %3, align 8
  store i32 %6691, i32* %6689, align 4
  %6715 = load i64, i64* %3, align 8
  %6716 = add i64 %6715, -249
  store i64 %6716, i64* %3, align 8
  br label %block_.L_418ad9

block_.L_418bd7:                                  ; preds = %block_.L_418ad9
  %6717 = add i64 %6230, -20
  %6718 = add i64 %6258, 8
  store i64 %6718, i64* %3, align 8
  %6719 = inttoptr i64 %6717 to i32*
  %6720 = load i32, i32* %6719, align 4
  %6721 = add i32 %6720, 1
  %6722 = zext i32 %6721 to i64
  store i64 %6722, i64* %RAX.i2255, align 8
  %6723 = icmp eq i32 %6720, -1
  %6724 = icmp eq i32 %6721, 0
  %6725 = or i1 %6723, %6724
  %6726 = zext i1 %6725 to i8
  store i8 %6726, i8* %14, align 1
  %6727 = and i32 %6721, 255
  %6728 = tail call i32 @llvm.ctpop.i32(i32 %6727)
  %6729 = trunc i32 %6728 to i8
  %6730 = and i8 %6729, 1
  %6731 = xor i8 %6730, 1
  store i8 %6731, i8* %21, align 1
  %6732 = xor i32 %6721, %6720
  %6733 = lshr i32 %6732, 4
  %6734 = trunc i32 %6733 to i8
  %6735 = and i8 %6734, 1
  store i8 %6735, i8* %26, align 1
  %6736 = zext i1 %6724 to i8
  store i8 %6736, i8* %29, align 1
  %6737 = lshr i32 %6721, 31
  %6738 = trunc i32 %6737 to i8
  store i8 %6738, i8* %32, align 1
  %6739 = lshr i32 %6720, 31
  %6740 = xor i32 %6737, %6739
  %6741 = add nuw nsw i32 %6740, %6737
  %6742 = icmp eq i32 %6741, 2
  %6743 = zext i1 %6742 to i8
  store i8 %6743, i8* %38, align 1
  %6744 = add i64 %6258, 14
  store i64 %6744, i64* %3, align 8
  store i32 %6721, i32* %6719, align 4
  %6745 = load i64, i64* %3, align 8
  %6746 = add i64 %6745, -285
  store i64 %6746, i64* %3, align 8
  br label %block_.L_418ac8

block_.L_418bea:                                  ; preds = %block_.L_418ac8
  %6747 = add i64 %6225, 7
  store i64 %6747, i64* %3, align 8
  store i32 0, i32* %6200, align 4
  %.pre218 = load i64, i64* %3, align 8
  br label %block_.L_418bf1

block_.L_418bf1:                                  ; preds = %block_.L_418d00, %block_.L_418bea
  %6748 = phi i64 [ %.pre218, %block_.L_418bea ], [ %7298, %block_.L_418d00 ]
  %6749 = load i64, i64* %RBP.i, align 8
  %6750 = add i64 %6749, -20
  %6751 = add i64 %6748, 4
  store i64 %6751, i64* %3, align 8
  %6752 = inttoptr i64 %6750 to i32*
  %6753 = load i32, i32* %6752, align 4
  %6754 = add i32 %6753, -10
  %6755 = icmp ult i32 %6753, 10
  %6756 = zext i1 %6755 to i8
  store i8 %6756, i8* %14, align 1
  %6757 = and i32 %6754, 255
  %6758 = tail call i32 @llvm.ctpop.i32(i32 %6757)
  %6759 = trunc i32 %6758 to i8
  %6760 = and i8 %6759, 1
  %6761 = xor i8 %6760, 1
  store i8 %6761, i8* %21, align 1
  %6762 = xor i32 %6754, %6753
  %6763 = lshr i32 %6762, 4
  %6764 = trunc i32 %6763 to i8
  %6765 = and i8 %6764, 1
  store i8 %6765, i8* %26, align 1
  %6766 = icmp eq i32 %6754, 0
  %6767 = zext i1 %6766 to i8
  store i8 %6767, i8* %29, align 1
  %6768 = lshr i32 %6754, 31
  %6769 = trunc i32 %6768 to i8
  store i8 %6769, i8* %32, align 1
  %6770 = lshr i32 %6753, 31
  %6771 = xor i32 %6768, %6770
  %6772 = add nuw nsw i32 %6771, %6770
  %6773 = icmp eq i32 %6772, 2
  %6774 = zext i1 %6773 to i8
  store i8 %6774, i8* %38, align 1
  %6775 = icmp ne i8 %6769, 0
  %6776 = xor i1 %6775, %6773
  %.v275 = select i1 %6776, i64 10, i64 290
  %6777 = add i64 %6748, %.v275
  store i64 %6777, i64* %3, align 8
  br i1 %6776, label %block_418bfb, label %block_.L_418d13

block_418bfb:                                     ; preds = %block_.L_418bf1
  %6778 = add i64 %6749, -24
  %6779 = add i64 %6777, 7
  store i64 %6779, i64* %3, align 8
  %6780 = inttoptr i64 %6778 to i32*
  store i32 0, i32* %6780, align 4
  %.pre225 = load i64, i64* %3, align 8
  br label %block_.L_418c02

block_.L_418c02:                                  ; preds = %block_.L_418ced, %block_418bfb
  %6781 = phi i64 [ %.pre225, %block_418bfb ], [ %7268, %block_.L_418ced ]
  %6782 = load i64, i64* %RBP.i, align 8
  %6783 = add i64 %6782, -24
  %6784 = add i64 %6781, 4
  store i64 %6784, i64* %3, align 8
  %6785 = inttoptr i64 %6783 to i32*
  %6786 = load i32, i32* %6785, align 4
  %6787 = add i32 %6786, -5
  %6788 = icmp ult i32 %6786, 5
  %6789 = zext i1 %6788 to i8
  store i8 %6789, i8* %14, align 1
  %6790 = and i32 %6787, 255
  %6791 = tail call i32 @llvm.ctpop.i32(i32 %6790)
  %6792 = trunc i32 %6791 to i8
  %6793 = and i8 %6792, 1
  %6794 = xor i8 %6793, 1
  store i8 %6794, i8* %21, align 1
  %6795 = xor i32 %6787, %6786
  %6796 = lshr i32 %6795, 4
  %6797 = trunc i32 %6796 to i8
  %6798 = and i8 %6797, 1
  store i8 %6798, i8* %26, align 1
  %6799 = icmp eq i32 %6787, 0
  %6800 = zext i1 %6799 to i8
  store i8 %6800, i8* %29, align 1
  %6801 = lshr i32 %6787, 31
  %6802 = trunc i32 %6801 to i8
  store i8 %6802, i8* %32, align 1
  %6803 = lshr i32 %6786, 31
  %6804 = xor i32 %6801, %6803
  %6805 = add nuw nsw i32 %6804, %6803
  %6806 = icmp eq i32 %6805, 2
  %6807 = zext i1 %6806 to i8
  store i8 %6807, i8* %38, align 1
  %6808 = icmp ne i8 %6802, 0
  %6809 = xor i1 %6808, %6806
  %.v252 = select i1 %6809, i64 10, i64 254
  %6810 = add i64 %6781, %.v252
  store i64 %6810, i64* %3, align 8
  br i1 %6809, label %block_418c0c, label %block_.L_418d00

block_418c0c:                                     ; preds = %block_.L_418c02
  %6811 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*), align 8
  store i64 %6811, i64* %RAX.i2255, align 8
  %6812 = add i64 %6811, 24
  %6813 = add i64 %6810, 12
  store i64 %6813, i64* %3, align 8
  %6814 = inttoptr i64 %6812 to i32*
  %6815 = load i32, i32* %6814, align 4
  %6816 = add i32 %6815, -2
  %6817 = icmp ult i32 %6815, 2
  %6818 = zext i1 %6817 to i8
  store i8 %6818, i8* %14, align 1
  %6819 = and i32 %6816, 255
  %6820 = tail call i32 @llvm.ctpop.i32(i32 %6819)
  %6821 = trunc i32 %6820 to i8
  %6822 = and i8 %6821, 1
  %6823 = xor i8 %6822, 1
  store i8 %6823, i8* %21, align 1
  %6824 = xor i32 %6816, %6815
  %6825 = lshr i32 %6824, 4
  %6826 = trunc i32 %6825 to i8
  %6827 = and i8 %6826, 1
  store i8 %6827, i8* %26, align 1
  %6828 = icmp eq i32 %6816, 0
  %6829 = zext i1 %6828 to i8
  store i8 %6829, i8* %29, align 1
  %6830 = lshr i32 %6816, 31
  %6831 = trunc i32 %6830 to i8
  store i8 %6831, i8* %32, align 1
  %6832 = lshr i32 %6815, 31
  %6833 = xor i32 %6830, %6832
  %6834 = add nuw nsw i32 %6833, %6832
  %6835 = icmp eq i32 %6834, 2
  %6836 = zext i1 %6835 to i8
  store i8 %6836, i8* %38, align 1
  %.v280 = select i1 %6828, i64 18, i64 124
  %6837 = add i64 %6810, %.v280
  %6838 = add i64 %6837, 10
  store i64 %6838, i64* %3, align 8
  br i1 %6828, label %block_418c1e, label %block_.L_418c88

block_418c1e:                                     ; preds = %block_418c0c
  store i64 ptrtoint (%G__0x4b67b0_type* @G__0x4b67b0 to i64), i64* %RAX.i2255, align 8
  %6839 = add i64 %6782, -16
  %6840 = add i64 %6837, 14
  store i64 %6840, i64* %3, align 8
  %6841 = inttoptr i64 %6839 to i64*
  %6842 = load i64, i64* %6841, align 8
  %6843 = add i64 %6842, 6528
  store i64 %6843, i64* %RCX.i2165, align 8
  %6844 = icmp ugt i64 %6842, -6529
  %6845 = zext i1 %6844 to i8
  store i8 %6845, i8* %14, align 1
  %6846 = trunc i64 %6843 to i32
  %6847 = and i32 %6846, 255
  %6848 = tail call i32 @llvm.ctpop.i32(i32 %6847)
  %6849 = trunc i32 %6848 to i8
  %6850 = and i8 %6849, 1
  %6851 = xor i8 %6850, 1
  store i8 %6851, i8* %21, align 1
  %6852 = xor i64 %6843, %6842
  %6853 = lshr i64 %6852, 4
  %6854 = trunc i64 %6853 to i8
  %6855 = and i8 %6854, 1
  store i8 %6855, i8* %26, align 1
  %6856 = icmp eq i64 %6843, 0
  %6857 = zext i1 %6856 to i8
  store i8 %6857, i8* %29, align 1
  %6858 = lshr i64 %6843, 63
  %6859 = trunc i64 %6858 to i8
  store i8 %6859, i8* %32, align 1
  %6860 = lshr i64 %6842, 63
  %6861 = xor i64 %6858, %6860
  %6862 = add nuw nsw i64 %6861, %6858
  %6863 = icmp eq i64 %6862, 2
  %6864 = zext i1 %6863 to i8
  store i8 %6864, i8* %38, align 1
  %6865 = add i64 %6782, -20
  %6866 = add i64 %6837, 25
  store i64 %6866, i64* %3, align 8
  %6867 = inttoptr i64 %6865 to i32*
  %6868 = load i32, i32* %6867, align 4
  %6869 = sext i32 %6868 to i64
  %6870 = mul nsw i64 %6869, 80
  store i64 %6870, i64* %RDX.i2162, align 8
  %6871 = lshr i64 %6870, 63
  %6872 = add i64 %6870, %6843
  store i64 %6872, i64* %RCX.i2165, align 8
  %6873 = icmp ult i64 %6872, %6843
  %6874 = icmp ult i64 %6872, %6870
  %6875 = or i1 %6873, %6874
  %6876 = zext i1 %6875 to i8
  store i8 %6876, i8* %14, align 1
  %6877 = trunc i64 %6872 to i32
  %6878 = and i32 %6877, 255
  %6879 = tail call i32 @llvm.ctpop.i32(i32 %6878)
  %6880 = trunc i32 %6879 to i8
  %6881 = and i8 %6880, 1
  %6882 = xor i8 %6881, 1
  store i8 %6882, i8* %21, align 1
  %6883 = xor i64 %6870, %6843
  %6884 = xor i64 %6883, %6872
  %6885 = lshr i64 %6884, 4
  %6886 = trunc i64 %6885 to i8
  %6887 = and i8 %6886, 1
  store i8 %6887, i8* %26, align 1
  %6888 = icmp eq i64 %6872, 0
  %6889 = zext i1 %6888 to i8
  store i8 %6889, i8* %29, align 1
  %6890 = lshr i64 %6872, 63
  %6891 = trunc i64 %6890 to i8
  store i8 %6891, i8* %32, align 1
  %6892 = xor i64 %6890, %6858
  %6893 = xor i64 %6890, %6871
  %6894 = add nuw nsw i64 %6892, %6893
  %6895 = icmp eq i64 %6894, 2
  %6896 = zext i1 %6895 to i8
  store i8 %6896, i8* %38, align 1
  %6897 = load i64, i64* %RBP.i, align 8
  %6898 = add i64 %6897, -24
  %6899 = add i64 %6837, 36
  store i64 %6899, i64* %3, align 8
  %6900 = inttoptr i64 %6898 to i32*
  %6901 = load i32, i32* %6900, align 4
  %6902 = sext i32 %6901 to i64
  %6903 = shl nsw i64 %6902, 4
  %6904 = add i64 %6903, %6872
  store i64 %6904, i64* %RCX.i2165, align 8
  %6905 = icmp ult i64 %6904, %6872
  %6906 = icmp ult i64 %6904, %6903
  %6907 = or i1 %6905, %6906
  %6908 = zext i1 %6907 to i8
  store i8 %6908, i8* %14, align 1
  %6909 = trunc i64 %6904 to i32
  %6910 = and i32 %6909, 255
  %6911 = tail call i32 @llvm.ctpop.i32(i32 %6910)
  %6912 = trunc i32 %6911 to i8
  %6913 = and i8 %6912, 1
  %6914 = xor i8 %6913, 1
  store i8 %6914, i8* %21, align 1
  %6915 = xor i64 %6903, %6872
  %6916 = xor i64 %6915, %6904
  %6917 = lshr i64 %6916, 4
  %6918 = trunc i64 %6917 to i8
  %6919 = and i8 %6918, 1
  store i8 %6919, i8* %26, align 1
  %6920 = icmp eq i64 %6904, 0
  %6921 = zext i1 %6920 to i8
  store i8 %6921, i8* %29, align 1
  %6922 = lshr i64 %6904, 63
  %6923 = trunc i64 %6922 to i8
  store i8 %6923, i8* %32, align 1
  %6924 = lshr i64 %6902, 59
  %6925 = and i64 %6924, 1
  %6926 = xor i64 %6922, %6890
  %6927 = xor i64 %6922, %6925
  %6928 = add nuw nsw i64 %6926, %6927
  %6929 = icmp eq i64 %6928, 2
  %6930 = zext i1 %6929 to i8
  store i8 %6930, i8* %38, align 1
  %6931 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*), align 8
  store i64 %6931, i64* %RDX.i2162, align 8
  %6932 = add i64 %6931, 72520
  %6933 = add i64 %6837, 58
  store i64 %6933, i64* %3, align 8
  %6934 = inttoptr i64 %6932 to i32*
  %6935 = load i32, i32* %6934, align 4
  %6936 = sext i32 %6935 to i64
  %6937 = mul nsw i64 %6936, 320
  store i64 %6937, i64* %RDX.i2162, align 8
  %6938 = lshr i64 %6937, 63
  %6939 = load i64, i64* %RAX.i2255, align 8
  %6940 = add i64 %6937, %6939
  store i64 %6940, i64* %RAX.i2255, align 8
  %6941 = icmp ult i64 %6940, %6939
  %6942 = icmp ult i64 %6940, %6937
  %6943 = or i1 %6941, %6942
  %6944 = zext i1 %6943 to i8
  store i8 %6944, i8* %14, align 1
  %6945 = trunc i64 %6940 to i32
  %6946 = and i32 %6945, 255
  %6947 = tail call i32 @llvm.ctpop.i32(i32 %6946)
  %6948 = trunc i32 %6947 to i8
  %6949 = and i8 %6948, 1
  %6950 = xor i8 %6949, 1
  store i8 %6950, i8* %21, align 1
  %6951 = xor i64 %6939, %6940
  %6952 = lshr i64 %6951, 4
  %6953 = trunc i64 %6952 to i8
  %6954 = and i8 %6953, 1
  store i8 %6954, i8* %26, align 1
  %6955 = icmp eq i64 %6940, 0
  %6956 = zext i1 %6955 to i8
  store i8 %6956, i8* %29, align 1
  %6957 = lshr i64 %6940, 63
  %6958 = trunc i64 %6957 to i8
  store i8 %6958, i8* %32, align 1
  %6959 = lshr i64 %6939, 63
  %6960 = xor i64 %6957, %6959
  %6961 = xor i64 %6957, %6938
  %6962 = add nuw nsw i64 %6960, %6961
  %6963 = icmp eq i64 %6962, 2
  %6964 = zext i1 %6963 to i8
  store i8 %6964, i8* %38, align 1
  %6965 = load i64, i64* %RBP.i, align 8
  %6966 = add i64 %6965, -20
  %6967 = add i64 %6837, 72
  store i64 %6967, i64* %3, align 8
  %6968 = inttoptr i64 %6966 to i32*
  %6969 = load i32, i32* %6968, align 4
  %6970 = sext i32 %6969 to i64
  %6971 = mul nsw i64 %6970, 40
  store i64 %6971, i64* %RDX.i2162, align 8
  %6972 = lshr i64 %6971, 63
  %6973 = add i64 %6971, %6940
  store i64 %6973, i64* %RAX.i2255, align 8
  %6974 = icmp ult i64 %6973, %6940
  %6975 = icmp ult i64 %6973, %6971
  %6976 = or i1 %6974, %6975
  %6977 = zext i1 %6976 to i8
  store i8 %6977, i8* %14, align 1
  %6978 = trunc i64 %6973 to i32
  %6979 = and i32 %6978, 255
  %6980 = tail call i32 @llvm.ctpop.i32(i32 %6979)
  %6981 = trunc i32 %6980 to i8
  %6982 = and i8 %6981, 1
  %6983 = xor i8 %6982, 1
  store i8 %6983, i8* %21, align 1
  %6984 = xor i64 %6971, %6940
  %6985 = xor i64 %6984, %6973
  %6986 = lshr i64 %6985, 4
  %6987 = trunc i64 %6986 to i8
  %6988 = and i8 %6987, 1
  store i8 %6988, i8* %26, align 1
  %6989 = icmp eq i64 %6973, 0
  %6990 = zext i1 %6989 to i8
  store i8 %6990, i8* %29, align 1
  %6991 = lshr i64 %6973, 63
  %6992 = trunc i64 %6991 to i8
  store i8 %6992, i8* %32, align 1
  %6993 = xor i64 %6991, %6957
  %6994 = xor i64 %6991, %6972
  %6995 = add nuw nsw i64 %6993, %6994
  %6996 = icmp eq i64 %6995, 2
  %6997 = zext i1 %6996 to i8
  store i8 %6997, i8* %38, align 1
  %6998 = add i64 %6965, -24
  %6999 = add i64 %6837, 83
  store i64 %6999, i64* %3, align 8
  %7000 = inttoptr i64 %6998 to i32*
  %7001 = load i32, i32* %7000, align 4
  %7002 = sext i32 %7001 to i64
  %7003 = shl nsw i64 %7002, 3
  store i64 %7003, i64* %RDX.i2162, align 8
  %7004 = add i64 %7003, %6973
  store i64 %7004, i64* %RAX.i2255, align 8
  %7005 = icmp ult i64 %7004, %6973
  %7006 = icmp ult i64 %7004, %7003
  %7007 = or i1 %7005, %7006
  %7008 = zext i1 %7007 to i8
  store i8 %7008, i8* %14, align 1
  %7009 = trunc i64 %7004 to i32
  %7010 = and i32 %7009, 255
  %7011 = tail call i32 @llvm.ctpop.i32(i32 %7010)
  %7012 = trunc i32 %7011 to i8
  %7013 = and i8 %7012, 1
  %7014 = xor i8 %7013, 1
  store i8 %7014, i8* %21, align 1
  %7015 = xor i64 %7003, %6973
  %7016 = xor i64 %7015, %7004
  %7017 = lshr i64 %7016, 4
  %7018 = trunc i64 %7017 to i8
  %7019 = and i8 %7018, 1
  store i8 %7019, i8* %26, align 1
  %7020 = icmp eq i64 %7004, 0
  %7021 = zext i1 %7020 to i8
  store i8 %7021, i8* %29, align 1
  %7022 = lshr i64 %7004, 63
  %7023 = trunc i64 %7022 to i8
  store i8 %7023, i8* %32, align 1
  %7024 = lshr i64 %7002, 60
  %7025 = and i64 %7024, 1
  %7026 = xor i64 %7022, %6991
  %7027 = xor i64 %7022, %7025
  %7028 = add nuw nsw i64 %7026, %7027
  %7029 = icmp eq i64 %7028, 2
  %7030 = zext i1 %7029 to i8
  store i8 %7030, i8* %38, align 1
  %7031 = load i64, i64* %RCX.i2165, align 8
  store i64 %7031, i64* %RDI.i2122, align 8
  store i64 %7004, i64* %RSI.i2119, align 8
  %7032 = add i64 %6837, -92046
  %7033 = add i64 %6837, 101
  %7034 = load i64, i64* %6, align 8
  %7035 = add i64 %7034, -8
  %7036 = inttoptr i64 %7035 to i64*
  store i64 %7033, i64* %7036, align 8
  store i64 %7035, i64* %6, align 8
  store i64 %7032, i64* %3, align 8
  %call2_418c7e = tail call %struct.Memory* @sub_402490.biari_init_context(%struct.State* nonnull %0, i64 %7032, %struct.Memory* %2)
  %7037 = load i64, i64* %3, align 8
  %7038 = add i64 %7037, 106
  store i64 %7038, i64* %3, align 8
  br label %block_.L_418ced

block_.L_418c88:                                  ; preds = %block_418c0c
  store i64 ptrtoint (%G__0x4b68f0_type* @G__0x4b68f0 to i64), i64* %RAX.i2255, align 8
  %7039 = add i64 %6782, -16
  %7040 = add i64 %6837, 14
  store i64 %7040, i64* %3, align 8
  %7041 = inttoptr i64 %7039 to i64*
  %7042 = load i64, i64* %7041, align 8
  %7043 = add i64 %7042, 6528
  store i64 %7043, i64* %RCX.i2165, align 8
  %7044 = icmp ugt i64 %7042, -6529
  %7045 = zext i1 %7044 to i8
  store i8 %7045, i8* %14, align 1
  %7046 = trunc i64 %7043 to i32
  %7047 = and i32 %7046, 255
  %7048 = tail call i32 @llvm.ctpop.i32(i32 %7047)
  %7049 = trunc i32 %7048 to i8
  %7050 = and i8 %7049, 1
  %7051 = xor i8 %7050, 1
  store i8 %7051, i8* %21, align 1
  %7052 = xor i64 %7043, %7042
  %7053 = lshr i64 %7052, 4
  %7054 = trunc i64 %7053 to i8
  %7055 = and i8 %7054, 1
  store i8 %7055, i8* %26, align 1
  %7056 = icmp eq i64 %7043, 0
  %7057 = zext i1 %7056 to i8
  store i8 %7057, i8* %29, align 1
  %7058 = lshr i64 %7043, 63
  %7059 = trunc i64 %7058 to i8
  store i8 %7059, i8* %32, align 1
  %7060 = lshr i64 %7042, 63
  %7061 = xor i64 %7058, %7060
  %7062 = add nuw nsw i64 %7061, %7058
  %7063 = icmp eq i64 %7062, 2
  %7064 = zext i1 %7063 to i8
  store i8 %7064, i8* %38, align 1
  %7065 = add i64 %6782, -20
  %7066 = add i64 %6837, 25
  store i64 %7066, i64* %3, align 8
  %7067 = inttoptr i64 %7065 to i32*
  %7068 = load i32, i32* %7067, align 4
  %7069 = sext i32 %7068 to i64
  %7070 = mul nsw i64 %7069, 80
  store i64 %7070, i64* %RDX.i2162, align 8
  %7071 = lshr i64 %7070, 63
  %7072 = add i64 %7070, %7043
  store i64 %7072, i64* %RCX.i2165, align 8
  %7073 = icmp ult i64 %7072, %7043
  %7074 = icmp ult i64 %7072, %7070
  %7075 = or i1 %7073, %7074
  %7076 = zext i1 %7075 to i8
  store i8 %7076, i8* %14, align 1
  %7077 = trunc i64 %7072 to i32
  %7078 = and i32 %7077, 255
  %7079 = tail call i32 @llvm.ctpop.i32(i32 %7078)
  %7080 = trunc i32 %7079 to i8
  %7081 = and i8 %7080, 1
  %7082 = xor i8 %7081, 1
  store i8 %7082, i8* %21, align 1
  %7083 = xor i64 %7070, %7043
  %7084 = xor i64 %7083, %7072
  %7085 = lshr i64 %7084, 4
  %7086 = trunc i64 %7085 to i8
  %7087 = and i8 %7086, 1
  store i8 %7087, i8* %26, align 1
  %7088 = icmp eq i64 %7072, 0
  %7089 = zext i1 %7088 to i8
  store i8 %7089, i8* %29, align 1
  %7090 = lshr i64 %7072, 63
  %7091 = trunc i64 %7090 to i8
  store i8 %7091, i8* %32, align 1
  %7092 = xor i64 %7090, %7058
  %7093 = xor i64 %7090, %7071
  %7094 = add nuw nsw i64 %7092, %7093
  %7095 = icmp eq i64 %7094, 2
  %7096 = zext i1 %7095 to i8
  store i8 %7096, i8* %38, align 1
  %7097 = load i64, i64* %RBP.i, align 8
  %7098 = add i64 %7097, -24
  %7099 = add i64 %6837, 36
  store i64 %7099, i64* %3, align 8
  %7100 = inttoptr i64 %7098 to i32*
  %7101 = load i32, i32* %7100, align 4
  %7102 = sext i32 %7101 to i64
  %7103 = shl nsw i64 %7102, 4
  %7104 = add i64 %7103, %7072
  store i64 %7104, i64* %RCX.i2165, align 8
  %7105 = icmp ult i64 %7104, %7072
  %7106 = icmp ult i64 %7104, %7103
  %7107 = or i1 %7105, %7106
  %7108 = zext i1 %7107 to i8
  store i8 %7108, i8* %14, align 1
  %7109 = trunc i64 %7104 to i32
  %7110 = and i32 %7109, 255
  %7111 = tail call i32 @llvm.ctpop.i32(i32 %7110)
  %7112 = trunc i32 %7111 to i8
  %7113 = and i8 %7112, 1
  %7114 = xor i8 %7113, 1
  store i8 %7114, i8* %21, align 1
  %7115 = xor i64 %7103, %7072
  %7116 = xor i64 %7115, %7104
  %7117 = lshr i64 %7116, 4
  %7118 = trunc i64 %7117 to i8
  %7119 = and i8 %7118, 1
  store i8 %7119, i8* %26, align 1
  %7120 = icmp eq i64 %7104, 0
  %7121 = zext i1 %7120 to i8
  store i8 %7121, i8* %29, align 1
  %7122 = lshr i64 %7104, 63
  %7123 = trunc i64 %7122 to i8
  store i8 %7123, i8* %32, align 1
  %7124 = lshr i64 %7102, 59
  %7125 = and i64 %7124, 1
  %7126 = xor i64 %7122, %7090
  %7127 = xor i64 %7122, %7125
  %7128 = add nuw nsw i64 %7126, %7127
  %7129 = icmp eq i64 %7128, 2
  %7130 = zext i1 %7129 to i8
  store i8 %7130, i8* %38, align 1
  %7131 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*), align 8
  store i64 %7131, i64* %RDX.i2162, align 8
  %7132 = add i64 %7131, 72520
  %7133 = add i64 %6837, 58
  store i64 %7133, i64* %3, align 8
  %7134 = inttoptr i64 %7132 to i32*
  %7135 = load i32, i32* %7134, align 4
  %7136 = sext i32 %7135 to i64
  %7137 = mul nsw i64 %7136, 320
  store i64 %7137, i64* %RDX.i2162, align 8
  %7138 = lshr i64 %7137, 63
  %7139 = load i64, i64* %RAX.i2255, align 8
  %7140 = add i64 %7137, %7139
  store i64 %7140, i64* %RAX.i2255, align 8
  %7141 = icmp ult i64 %7140, %7139
  %7142 = icmp ult i64 %7140, %7137
  %7143 = or i1 %7141, %7142
  %7144 = zext i1 %7143 to i8
  store i8 %7144, i8* %14, align 1
  %7145 = trunc i64 %7140 to i32
  %7146 = and i32 %7145, 255
  %7147 = tail call i32 @llvm.ctpop.i32(i32 %7146)
  %7148 = trunc i32 %7147 to i8
  %7149 = and i8 %7148, 1
  %7150 = xor i8 %7149, 1
  store i8 %7150, i8* %21, align 1
  %7151 = xor i64 %7139, %7140
  %7152 = lshr i64 %7151, 4
  %7153 = trunc i64 %7152 to i8
  %7154 = and i8 %7153, 1
  store i8 %7154, i8* %26, align 1
  %7155 = icmp eq i64 %7140, 0
  %7156 = zext i1 %7155 to i8
  store i8 %7156, i8* %29, align 1
  %7157 = lshr i64 %7140, 63
  %7158 = trunc i64 %7157 to i8
  store i8 %7158, i8* %32, align 1
  %7159 = lshr i64 %7139, 63
  %7160 = xor i64 %7157, %7159
  %7161 = xor i64 %7157, %7138
  %7162 = add nuw nsw i64 %7160, %7161
  %7163 = icmp eq i64 %7162, 2
  %7164 = zext i1 %7163 to i8
  store i8 %7164, i8* %38, align 1
  %7165 = load i64, i64* %RBP.i, align 8
  %7166 = add i64 %7165, -20
  %7167 = add i64 %6837, 72
  store i64 %7167, i64* %3, align 8
  %7168 = inttoptr i64 %7166 to i32*
  %7169 = load i32, i32* %7168, align 4
  %7170 = sext i32 %7169 to i64
  %7171 = mul nsw i64 %7170, 40
  store i64 %7171, i64* %RDX.i2162, align 8
  %7172 = lshr i64 %7171, 63
  %7173 = add i64 %7171, %7140
  store i64 %7173, i64* %RAX.i2255, align 8
  %7174 = icmp ult i64 %7173, %7140
  %7175 = icmp ult i64 %7173, %7171
  %7176 = or i1 %7174, %7175
  %7177 = zext i1 %7176 to i8
  store i8 %7177, i8* %14, align 1
  %7178 = trunc i64 %7173 to i32
  %7179 = and i32 %7178, 255
  %7180 = tail call i32 @llvm.ctpop.i32(i32 %7179)
  %7181 = trunc i32 %7180 to i8
  %7182 = and i8 %7181, 1
  %7183 = xor i8 %7182, 1
  store i8 %7183, i8* %21, align 1
  %7184 = xor i64 %7171, %7140
  %7185 = xor i64 %7184, %7173
  %7186 = lshr i64 %7185, 4
  %7187 = trunc i64 %7186 to i8
  %7188 = and i8 %7187, 1
  store i8 %7188, i8* %26, align 1
  %7189 = icmp eq i64 %7173, 0
  %7190 = zext i1 %7189 to i8
  store i8 %7190, i8* %29, align 1
  %7191 = lshr i64 %7173, 63
  %7192 = trunc i64 %7191 to i8
  store i8 %7192, i8* %32, align 1
  %7193 = xor i64 %7191, %7157
  %7194 = xor i64 %7191, %7172
  %7195 = add nuw nsw i64 %7193, %7194
  %7196 = icmp eq i64 %7195, 2
  %7197 = zext i1 %7196 to i8
  store i8 %7197, i8* %38, align 1
  %7198 = add i64 %7165, -24
  %7199 = add i64 %6837, 83
  store i64 %7199, i64* %3, align 8
  %7200 = inttoptr i64 %7198 to i32*
  %7201 = load i32, i32* %7200, align 4
  %7202 = sext i32 %7201 to i64
  %7203 = shl nsw i64 %7202, 3
  store i64 %7203, i64* %RDX.i2162, align 8
  %7204 = add i64 %7203, %7173
  store i64 %7204, i64* %RAX.i2255, align 8
  %7205 = icmp ult i64 %7204, %7173
  %7206 = icmp ult i64 %7204, %7203
  %7207 = or i1 %7205, %7206
  %7208 = zext i1 %7207 to i8
  store i8 %7208, i8* %14, align 1
  %7209 = trunc i64 %7204 to i32
  %7210 = and i32 %7209, 255
  %7211 = tail call i32 @llvm.ctpop.i32(i32 %7210)
  %7212 = trunc i32 %7211 to i8
  %7213 = and i8 %7212, 1
  %7214 = xor i8 %7213, 1
  store i8 %7214, i8* %21, align 1
  %7215 = xor i64 %7203, %7173
  %7216 = xor i64 %7215, %7204
  %7217 = lshr i64 %7216, 4
  %7218 = trunc i64 %7217 to i8
  %7219 = and i8 %7218, 1
  store i8 %7219, i8* %26, align 1
  %7220 = icmp eq i64 %7204, 0
  %7221 = zext i1 %7220 to i8
  store i8 %7221, i8* %29, align 1
  %7222 = lshr i64 %7204, 63
  %7223 = trunc i64 %7222 to i8
  store i8 %7223, i8* %32, align 1
  %7224 = lshr i64 %7202, 60
  %7225 = and i64 %7224, 1
  %7226 = xor i64 %7222, %7191
  %7227 = xor i64 %7222, %7225
  %7228 = add nuw nsw i64 %7226, %7227
  %7229 = icmp eq i64 %7228, 2
  %7230 = zext i1 %7229 to i8
  store i8 %7230, i8* %38, align 1
  %7231 = load i64, i64* %RCX.i2165, align 8
  store i64 %7231, i64* %RDI.i2122, align 8
  store i64 %7204, i64* %RSI.i2119, align 8
  %7232 = add i64 %6837, -92152
  %7233 = add i64 %6837, 101
  %7234 = load i64, i64* %6, align 8
  %7235 = add i64 %7234, -8
  %7236 = inttoptr i64 %7235 to i64*
  store i64 %7233, i64* %7236, align 8
  store i64 %7235, i64* %6, align 8
  store i64 %7232, i64* %3, align 8
  %call2_418ce8 = tail call %struct.Memory* @sub_402490.biari_init_context(%struct.State* nonnull %0, i64 %7232, %struct.Memory* %2)
  %.pre226 = load i64, i64* %3, align 8
  br label %block_.L_418ced

block_.L_418ced:                                  ; preds = %block_.L_418c88, %block_418c1e
  %7237 = phi i64 [ %.pre226, %block_.L_418c88 ], [ %7038, %block_418c1e ]
  %7238 = load i64, i64* %RBP.i, align 8
  %7239 = add i64 %7238, -24
  %7240 = add i64 %7237, 8
  store i64 %7240, i64* %3, align 8
  %7241 = inttoptr i64 %7239 to i32*
  %7242 = load i32, i32* %7241, align 4
  %7243 = add i32 %7242, 1
  %7244 = zext i32 %7243 to i64
  store i64 %7244, i64* %RAX.i2255, align 8
  %7245 = icmp eq i32 %7242, -1
  %7246 = icmp eq i32 %7243, 0
  %7247 = or i1 %7245, %7246
  %7248 = zext i1 %7247 to i8
  store i8 %7248, i8* %14, align 1
  %7249 = and i32 %7243, 255
  %7250 = tail call i32 @llvm.ctpop.i32(i32 %7249)
  %7251 = trunc i32 %7250 to i8
  %7252 = and i8 %7251, 1
  %7253 = xor i8 %7252, 1
  store i8 %7253, i8* %21, align 1
  %7254 = xor i32 %7243, %7242
  %7255 = lshr i32 %7254, 4
  %7256 = trunc i32 %7255 to i8
  %7257 = and i8 %7256, 1
  store i8 %7257, i8* %26, align 1
  %7258 = zext i1 %7246 to i8
  store i8 %7258, i8* %29, align 1
  %7259 = lshr i32 %7243, 31
  %7260 = trunc i32 %7259 to i8
  store i8 %7260, i8* %32, align 1
  %7261 = lshr i32 %7242, 31
  %7262 = xor i32 %7259, %7261
  %7263 = add nuw nsw i32 %7262, %7259
  %7264 = icmp eq i32 %7263, 2
  %7265 = zext i1 %7264 to i8
  store i8 %7265, i8* %38, align 1
  %7266 = add i64 %7237, 14
  store i64 %7266, i64* %3, align 8
  store i32 %7243, i32* %7241, align 4
  %7267 = load i64, i64* %3, align 8
  %7268 = add i64 %7267, -249
  store i64 %7268, i64* %3, align 8
  br label %block_.L_418c02

block_.L_418d00:                                  ; preds = %block_.L_418c02
  %7269 = add i64 %6782, -20
  %7270 = add i64 %6810, 8
  store i64 %7270, i64* %3, align 8
  %7271 = inttoptr i64 %7269 to i32*
  %7272 = load i32, i32* %7271, align 4
  %7273 = add i32 %7272, 1
  %7274 = zext i32 %7273 to i64
  store i64 %7274, i64* %RAX.i2255, align 8
  %7275 = icmp eq i32 %7272, -1
  %7276 = icmp eq i32 %7273, 0
  %7277 = or i1 %7275, %7276
  %7278 = zext i1 %7277 to i8
  store i8 %7278, i8* %14, align 1
  %7279 = and i32 %7273, 255
  %7280 = tail call i32 @llvm.ctpop.i32(i32 %7279)
  %7281 = trunc i32 %7280 to i8
  %7282 = and i8 %7281, 1
  %7283 = xor i8 %7282, 1
  store i8 %7283, i8* %21, align 1
  %7284 = xor i32 %7273, %7272
  %7285 = lshr i32 %7284, 4
  %7286 = trunc i32 %7285 to i8
  %7287 = and i8 %7286, 1
  store i8 %7287, i8* %26, align 1
  %7288 = zext i1 %7276 to i8
  store i8 %7288, i8* %29, align 1
  %7289 = lshr i32 %7273, 31
  %7290 = trunc i32 %7289 to i8
  store i8 %7290, i8* %32, align 1
  %7291 = lshr i32 %7272, 31
  %7292 = xor i32 %7289, %7291
  %7293 = add nuw nsw i32 %7292, %7289
  %7294 = icmp eq i32 %7293, 2
  %7295 = zext i1 %7294 to i8
  store i8 %7295, i8* %38, align 1
  %7296 = add i64 %6810, 14
  store i64 %7296, i64* %3, align 8
  store i32 %7273, i32* %7271, align 4
  %7297 = load i64, i64* %3, align 8
  %7298 = add i64 %7297, -285
  store i64 %7298, i64* %3, align 8
  br label %block_.L_418bf1

block_.L_418d13:                                  ; preds = %block_.L_418bf1
  %7299 = add i64 %6777, 7
  store i64 %7299, i64* %3, align 8
  store i32 0, i32* %6752, align 4
  %.pre219 = load i64, i64* %3, align 8
  br label %block_.L_418d1a

block_.L_418d1a:                                  ; preds = %block_.L_418e2f, %block_.L_418d13
  %7300 = phi i64 [ %.pre219, %block_.L_418d13 ], [ %7850, %block_.L_418e2f ]
  %7301 = load i64, i64* %RBP.i, align 8
  %7302 = add i64 %7301, -20
  %7303 = add i64 %7300, 4
  store i64 %7303, i64* %3, align 8
  %7304 = inttoptr i64 %7302 to i32*
  %7305 = load i32, i32* %7304, align 4
  %7306 = add i32 %7305, -10
  %7307 = icmp ult i32 %7305, 10
  %7308 = zext i1 %7307 to i8
  store i8 %7308, i8* %14, align 1
  %7309 = and i32 %7306, 255
  %7310 = tail call i32 @llvm.ctpop.i32(i32 %7309)
  %7311 = trunc i32 %7310 to i8
  %7312 = and i8 %7311, 1
  %7313 = xor i8 %7312, 1
  store i8 %7313, i8* %21, align 1
  %7314 = xor i32 %7306, %7305
  %7315 = lshr i32 %7314, 4
  %7316 = trunc i32 %7315 to i8
  %7317 = and i8 %7316, 1
  store i8 %7317, i8* %26, align 1
  %7318 = icmp eq i32 %7306, 0
  %7319 = zext i1 %7318 to i8
  store i8 %7319, i8* %29, align 1
  %7320 = lshr i32 %7306, 31
  %7321 = trunc i32 %7320 to i8
  store i8 %7321, i8* %32, align 1
  %7322 = lshr i32 %7305, 31
  %7323 = xor i32 %7320, %7322
  %7324 = add nuw nsw i32 %7323, %7322
  %7325 = icmp eq i32 %7324, 2
  %7326 = zext i1 %7325 to i8
  store i8 %7326, i8* %38, align 1
  %7327 = icmp ne i8 %7321, 0
  %7328 = xor i1 %7327, %7325
  %.v276 = select i1 %7328, i64 10, i64 296
  %7329 = add i64 %7300, %.v276
  store i64 %7329, i64* %3, align 8
  br i1 %7328, label %block_418d24, label %block_.L_418e42

block_418d24:                                     ; preds = %block_.L_418d1a
  %7330 = add i64 %7301, -24
  %7331 = add i64 %7329, 7
  store i64 %7331, i64* %3, align 8
  %7332 = inttoptr i64 %7330 to i32*
  store i32 0, i32* %7332, align 4
  %.pre223 = load i64, i64* %3, align 8
  br label %block_.L_418d2b

block_.L_418d2b:                                  ; preds = %block_.L_418e1c, %block_418d24
  %7333 = phi i64 [ %.pre223, %block_418d24 ], [ %7820, %block_.L_418e1c ]
  %7334 = load i64, i64* %RBP.i, align 8
  %7335 = add i64 %7334, -24
  %7336 = add i64 %7333, 4
  store i64 %7336, i64* %3, align 8
  %7337 = inttoptr i64 %7335 to i32*
  %7338 = load i32, i32* %7337, align 4
  %7339 = add i32 %7338, -15
  %7340 = icmp ult i32 %7338, 15
  %7341 = zext i1 %7340 to i8
  store i8 %7341, i8* %14, align 1
  %7342 = and i32 %7339, 255
  %7343 = tail call i32 @llvm.ctpop.i32(i32 %7342)
  %7344 = trunc i32 %7343 to i8
  %7345 = and i8 %7344, 1
  %7346 = xor i8 %7345, 1
  store i8 %7346, i8* %21, align 1
  %7347 = xor i32 %7339, %7338
  %7348 = lshr i32 %7347, 4
  %7349 = trunc i32 %7348 to i8
  %7350 = and i8 %7349, 1
  store i8 %7350, i8* %26, align 1
  %7351 = icmp eq i32 %7339, 0
  %7352 = zext i1 %7351 to i8
  store i8 %7352, i8* %29, align 1
  %7353 = lshr i32 %7339, 31
  %7354 = trunc i32 %7353 to i8
  store i8 %7354, i8* %32, align 1
  %7355 = lshr i32 %7338, 31
  %7356 = xor i32 %7353, %7355
  %7357 = add nuw nsw i32 %7356, %7355
  %7358 = icmp eq i32 %7357, 2
  %7359 = zext i1 %7358 to i8
  store i8 %7359, i8* %38, align 1
  %7360 = icmp ne i8 %7354, 0
  %7361 = xor i1 %7360, %7358
  %.v251 = select i1 %7361, i64 10, i64 260
  %7362 = add i64 %7333, %.v251
  store i64 %7362, i64* %3, align 8
  br i1 %7361, label %block_418d35, label %block_.L_418e2f

block_418d35:                                     ; preds = %block_.L_418d2b
  %7363 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*), align 8
  store i64 %7363, i64* %RAX.i2255, align 8
  %7364 = add i64 %7363, 24
  %7365 = add i64 %7362, 12
  store i64 %7365, i64* %3, align 8
  %7366 = inttoptr i64 %7364 to i32*
  %7367 = load i32, i32* %7366, align 4
  %7368 = add i32 %7367, -2
  %7369 = icmp ult i32 %7367, 2
  %7370 = zext i1 %7369 to i8
  store i8 %7370, i8* %14, align 1
  %7371 = and i32 %7368, 255
  %7372 = tail call i32 @llvm.ctpop.i32(i32 %7371)
  %7373 = trunc i32 %7372 to i8
  %7374 = and i8 %7373, 1
  %7375 = xor i8 %7374, 1
  store i8 %7375, i8* %21, align 1
  %7376 = xor i32 %7368, %7367
  %7377 = lshr i32 %7376, 4
  %7378 = trunc i32 %7377 to i8
  %7379 = and i8 %7378, 1
  store i8 %7379, i8* %26, align 1
  %7380 = icmp eq i32 %7368, 0
  %7381 = zext i1 %7380 to i8
  store i8 %7381, i8* %29, align 1
  %7382 = lshr i32 %7368, 31
  %7383 = trunc i32 %7382 to i8
  store i8 %7383, i8* %32, align 1
  %7384 = lshr i32 %7367, 31
  %7385 = xor i32 %7382, %7384
  %7386 = add nuw nsw i32 %7385, %7384
  %7387 = icmp eq i32 %7386, 2
  %7388 = zext i1 %7387 to i8
  store i8 %7388, i8* %38, align 1
  %.v279 = select i1 %7380, i64 18, i64 127
  %7389 = add i64 %7362, %.v279
  %7390 = add i64 %7389, 10
  store i64 %7390, i64* %3, align 8
  br i1 %7380, label %block_418d47, label %block_.L_418db4

block_418d47:                                     ; preds = %block_418d35
  store i64 ptrtoint (%G__0x4b6cb0_type* @G__0x4b6cb0 to i64), i64* %RAX.i2255, align 8
  %7391 = add i64 %7334, -16
  %7392 = add i64 %7389, 14
  store i64 %7392, i64* %3, align 8
  %7393 = inttoptr i64 %7391 to i64*
  %7394 = load i64, i64* %7393, align 8
  %7395 = add i64 %7394, 7328
  store i64 %7395, i64* %RCX.i2165, align 8
  %7396 = icmp ugt i64 %7394, -7329
  %7397 = zext i1 %7396 to i8
  store i8 %7397, i8* %14, align 1
  %7398 = trunc i64 %7395 to i32
  %7399 = and i32 %7398, 255
  %7400 = tail call i32 @llvm.ctpop.i32(i32 %7399)
  %7401 = trunc i32 %7400 to i8
  %7402 = and i8 %7401, 1
  %7403 = xor i8 %7402, 1
  store i8 %7403, i8* %21, align 1
  %7404 = xor i64 %7395, %7394
  %7405 = lshr i64 %7404, 4
  %7406 = trunc i64 %7405 to i8
  %7407 = and i8 %7406, 1
  store i8 %7407, i8* %26, align 1
  %7408 = icmp eq i64 %7395, 0
  %7409 = zext i1 %7408 to i8
  store i8 %7409, i8* %29, align 1
  %7410 = lshr i64 %7395, 63
  %7411 = trunc i64 %7410 to i8
  store i8 %7411, i8* %32, align 1
  %7412 = lshr i64 %7394, 63
  %7413 = xor i64 %7410, %7412
  %7414 = add nuw nsw i64 %7413, %7410
  %7415 = icmp eq i64 %7414, 2
  %7416 = zext i1 %7415 to i8
  store i8 %7416, i8* %38, align 1
  %7417 = add i64 %7334, -20
  %7418 = add i64 %7389, 25
  store i64 %7418, i64* %3, align 8
  %7419 = inttoptr i64 %7417 to i32*
  %7420 = load i32, i32* %7419, align 4
  %7421 = sext i32 %7420 to i64
  %7422 = mul nsw i64 %7421, 240
  store i64 %7422, i64* %RDX.i2162, align 8
  %7423 = lshr i64 %7422, 63
  %7424 = add i64 %7422, %7395
  store i64 %7424, i64* %RCX.i2165, align 8
  %7425 = icmp ult i64 %7424, %7395
  %7426 = icmp ult i64 %7424, %7422
  %7427 = or i1 %7425, %7426
  %7428 = zext i1 %7427 to i8
  store i8 %7428, i8* %14, align 1
  %7429 = trunc i64 %7424 to i32
  %7430 = and i32 %7429, 255
  %7431 = tail call i32 @llvm.ctpop.i32(i32 %7430)
  %7432 = trunc i32 %7431 to i8
  %7433 = and i8 %7432, 1
  %7434 = xor i8 %7433, 1
  store i8 %7434, i8* %21, align 1
  %7435 = xor i64 %7422, %7395
  %7436 = xor i64 %7435, %7424
  %7437 = lshr i64 %7436, 4
  %7438 = trunc i64 %7437 to i8
  %7439 = and i8 %7438, 1
  store i8 %7439, i8* %26, align 1
  %7440 = icmp eq i64 %7424, 0
  %7441 = zext i1 %7440 to i8
  store i8 %7441, i8* %29, align 1
  %7442 = lshr i64 %7424, 63
  %7443 = trunc i64 %7442 to i8
  store i8 %7443, i8* %32, align 1
  %7444 = xor i64 %7442, %7410
  %7445 = xor i64 %7442, %7423
  %7446 = add nuw nsw i64 %7444, %7445
  %7447 = icmp eq i64 %7446, 2
  %7448 = zext i1 %7447 to i8
  store i8 %7448, i8* %38, align 1
  %7449 = load i64, i64* %RBP.i, align 8
  %7450 = add i64 %7449, -24
  %7451 = add i64 %7389, 39
  store i64 %7451, i64* %3, align 8
  %7452 = inttoptr i64 %7450 to i32*
  %7453 = load i32, i32* %7452, align 4
  %7454 = sext i32 %7453 to i64
  %7455 = shl nsw i64 %7454, 4
  %7456 = add i64 %7455, %7424
  store i64 %7456, i64* %RCX.i2165, align 8
  %7457 = icmp ult i64 %7456, %7424
  %7458 = icmp ult i64 %7456, %7455
  %7459 = or i1 %7457, %7458
  %7460 = zext i1 %7459 to i8
  store i8 %7460, i8* %14, align 1
  %7461 = trunc i64 %7456 to i32
  %7462 = and i32 %7461, 255
  %7463 = tail call i32 @llvm.ctpop.i32(i32 %7462)
  %7464 = trunc i32 %7463 to i8
  %7465 = and i8 %7464, 1
  %7466 = xor i8 %7465, 1
  store i8 %7466, i8* %21, align 1
  %7467 = xor i64 %7455, %7424
  %7468 = xor i64 %7467, %7456
  %7469 = lshr i64 %7468, 4
  %7470 = trunc i64 %7469 to i8
  %7471 = and i8 %7470, 1
  store i8 %7471, i8* %26, align 1
  %7472 = icmp eq i64 %7456, 0
  %7473 = zext i1 %7472 to i8
  store i8 %7473, i8* %29, align 1
  %7474 = lshr i64 %7456, 63
  %7475 = trunc i64 %7474 to i8
  store i8 %7475, i8* %32, align 1
  %7476 = lshr i64 %7454, 59
  %7477 = and i64 %7476, 1
  %7478 = xor i64 %7474, %7442
  %7479 = xor i64 %7474, %7477
  %7480 = add nuw nsw i64 %7478, %7479
  %7481 = icmp eq i64 %7480, 2
  %7482 = zext i1 %7481 to i8
  store i8 %7482, i8* %38, align 1
  %7483 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*), align 8
  store i64 %7483, i64* %RDX.i2162, align 8
  %7484 = add i64 %7483, 72520
  %7485 = add i64 %7389, 61
  store i64 %7485, i64* %3, align 8
  %7486 = inttoptr i64 %7484 to i32*
  %7487 = load i32, i32* %7486, align 4
  %7488 = sext i32 %7487 to i64
  %7489 = mul nsw i64 %7488, 960
  store i64 %7489, i64* %RDX.i2162, align 8
  %7490 = lshr i64 %7489, 63
  %7491 = load i64, i64* %RAX.i2255, align 8
  %7492 = add i64 %7489, %7491
  store i64 %7492, i64* %RAX.i2255, align 8
  %7493 = icmp ult i64 %7492, %7491
  %7494 = icmp ult i64 %7492, %7489
  %7495 = or i1 %7493, %7494
  %7496 = zext i1 %7495 to i8
  store i8 %7496, i8* %14, align 1
  %7497 = trunc i64 %7492 to i32
  %7498 = and i32 %7497, 255
  %7499 = tail call i32 @llvm.ctpop.i32(i32 %7498)
  %7500 = trunc i32 %7499 to i8
  %7501 = and i8 %7500, 1
  %7502 = xor i8 %7501, 1
  store i8 %7502, i8* %21, align 1
  %7503 = xor i64 %7491, %7492
  %7504 = lshr i64 %7503, 4
  %7505 = trunc i64 %7504 to i8
  %7506 = and i8 %7505, 1
  store i8 %7506, i8* %26, align 1
  %7507 = icmp eq i64 %7492, 0
  %7508 = zext i1 %7507 to i8
  store i8 %7508, i8* %29, align 1
  %7509 = lshr i64 %7492, 63
  %7510 = trunc i64 %7509 to i8
  store i8 %7510, i8* %32, align 1
  %7511 = lshr i64 %7491, 63
  %7512 = xor i64 %7509, %7511
  %7513 = xor i64 %7509, %7490
  %7514 = add nuw nsw i64 %7512, %7513
  %7515 = icmp eq i64 %7514, 2
  %7516 = zext i1 %7515 to i8
  store i8 %7516, i8* %38, align 1
  %7517 = load i64, i64* %RBP.i, align 8
  %7518 = add i64 %7517, -20
  %7519 = add i64 %7389, 75
  store i64 %7519, i64* %3, align 8
  %7520 = inttoptr i64 %7518 to i32*
  %7521 = load i32, i32* %7520, align 4
  %7522 = sext i32 %7521 to i64
  %7523 = mul nsw i64 %7522, 120
  store i64 %7523, i64* %RDX.i2162, align 8
  %7524 = lshr i64 %7523, 63
  %7525 = add i64 %7523, %7492
  store i64 %7525, i64* %RAX.i2255, align 8
  %7526 = icmp ult i64 %7525, %7492
  %7527 = icmp ult i64 %7525, %7523
  %7528 = or i1 %7526, %7527
  %7529 = zext i1 %7528 to i8
  store i8 %7529, i8* %14, align 1
  %7530 = trunc i64 %7525 to i32
  %7531 = and i32 %7530, 255
  %7532 = tail call i32 @llvm.ctpop.i32(i32 %7531)
  %7533 = trunc i32 %7532 to i8
  %7534 = and i8 %7533, 1
  %7535 = xor i8 %7534, 1
  store i8 %7535, i8* %21, align 1
  %7536 = xor i64 %7523, %7492
  %7537 = xor i64 %7536, %7525
  %7538 = lshr i64 %7537, 4
  %7539 = trunc i64 %7538 to i8
  %7540 = and i8 %7539, 1
  store i8 %7540, i8* %26, align 1
  %7541 = icmp eq i64 %7525, 0
  %7542 = zext i1 %7541 to i8
  store i8 %7542, i8* %29, align 1
  %7543 = lshr i64 %7525, 63
  %7544 = trunc i64 %7543 to i8
  store i8 %7544, i8* %32, align 1
  %7545 = xor i64 %7543, %7509
  %7546 = xor i64 %7543, %7524
  %7547 = add nuw nsw i64 %7545, %7546
  %7548 = icmp eq i64 %7547, 2
  %7549 = zext i1 %7548 to i8
  store i8 %7549, i8* %38, align 1
  %7550 = add i64 %7517, -24
  %7551 = add i64 %7389, 86
  store i64 %7551, i64* %3, align 8
  %7552 = inttoptr i64 %7550 to i32*
  %7553 = load i32, i32* %7552, align 4
  %7554 = sext i32 %7553 to i64
  %7555 = shl nsw i64 %7554, 3
  store i64 %7555, i64* %RDX.i2162, align 8
  %7556 = add i64 %7555, %7525
  store i64 %7556, i64* %RAX.i2255, align 8
  %7557 = icmp ult i64 %7556, %7525
  %7558 = icmp ult i64 %7556, %7555
  %7559 = or i1 %7557, %7558
  %7560 = zext i1 %7559 to i8
  store i8 %7560, i8* %14, align 1
  %7561 = trunc i64 %7556 to i32
  %7562 = and i32 %7561, 255
  %7563 = tail call i32 @llvm.ctpop.i32(i32 %7562)
  %7564 = trunc i32 %7563 to i8
  %7565 = and i8 %7564, 1
  %7566 = xor i8 %7565, 1
  store i8 %7566, i8* %21, align 1
  %7567 = xor i64 %7555, %7525
  %7568 = xor i64 %7567, %7556
  %7569 = lshr i64 %7568, 4
  %7570 = trunc i64 %7569 to i8
  %7571 = and i8 %7570, 1
  store i8 %7571, i8* %26, align 1
  %7572 = icmp eq i64 %7556, 0
  %7573 = zext i1 %7572 to i8
  store i8 %7573, i8* %29, align 1
  %7574 = lshr i64 %7556, 63
  %7575 = trunc i64 %7574 to i8
  store i8 %7575, i8* %32, align 1
  %7576 = lshr i64 %7554, 60
  %7577 = and i64 %7576, 1
  %7578 = xor i64 %7574, %7543
  %7579 = xor i64 %7574, %7577
  %7580 = add nuw nsw i64 %7578, %7579
  %7581 = icmp eq i64 %7580, 2
  %7582 = zext i1 %7581 to i8
  store i8 %7582, i8* %38, align 1
  %7583 = load i64, i64* %RCX.i2165, align 8
  store i64 %7583, i64* %RDI.i2122, align 8
  store i64 %7556, i64* %RSI.i2119, align 8
  %7584 = add i64 %7389, -92343
  %7585 = add i64 %7389, 104
  %7586 = load i64, i64* %6, align 8
  %7587 = add i64 %7586, -8
  %7588 = inttoptr i64 %7587 to i64*
  store i64 %7585, i64* %7588, align 8
  store i64 %7587, i64* %6, align 8
  store i64 %7584, i64* %3, align 8
  %call2_418daa = tail call %struct.Memory* @sub_402490.biari_init_context(%struct.State* nonnull %0, i64 %7584, %struct.Memory* %2)
  %7589 = load i64, i64* %3, align 8
  %7590 = add i64 %7589, 109
  store i64 %7590, i64* %3, align 8
  br label %block_.L_418e1c

block_.L_418db4:                                  ; preds = %block_418d35
  store i64 ptrtoint (%G__0x4b7070_type* @G__0x4b7070 to i64), i64* %RAX.i2255, align 8
  %7591 = add i64 %7334, -16
  %7592 = add i64 %7389, 14
  store i64 %7592, i64* %3, align 8
  %7593 = inttoptr i64 %7591 to i64*
  %7594 = load i64, i64* %7593, align 8
  %7595 = add i64 %7594, 7328
  store i64 %7595, i64* %RCX.i2165, align 8
  %7596 = icmp ugt i64 %7594, -7329
  %7597 = zext i1 %7596 to i8
  store i8 %7597, i8* %14, align 1
  %7598 = trunc i64 %7595 to i32
  %7599 = and i32 %7598, 255
  %7600 = tail call i32 @llvm.ctpop.i32(i32 %7599)
  %7601 = trunc i32 %7600 to i8
  %7602 = and i8 %7601, 1
  %7603 = xor i8 %7602, 1
  store i8 %7603, i8* %21, align 1
  %7604 = xor i64 %7595, %7594
  %7605 = lshr i64 %7604, 4
  %7606 = trunc i64 %7605 to i8
  %7607 = and i8 %7606, 1
  store i8 %7607, i8* %26, align 1
  %7608 = icmp eq i64 %7595, 0
  %7609 = zext i1 %7608 to i8
  store i8 %7609, i8* %29, align 1
  %7610 = lshr i64 %7595, 63
  %7611 = trunc i64 %7610 to i8
  store i8 %7611, i8* %32, align 1
  %7612 = lshr i64 %7594, 63
  %7613 = xor i64 %7610, %7612
  %7614 = add nuw nsw i64 %7613, %7610
  %7615 = icmp eq i64 %7614, 2
  %7616 = zext i1 %7615 to i8
  store i8 %7616, i8* %38, align 1
  %7617 = add i64 %7334, -20
  %7618 = add i64 %7389, 25
  store i64 %7618, i64* %3, align 8
  %7619 = inttoptr i64 %7617 to i32*
  %7620 = load i32, i32* %7619, align 4
  %7621 = sext i32 %7620 to i64
  %7622 = mul nsw i64 %7621, 240
  store i64 %7622, i64* %RDX.i2162, align 8
  %7623 = lshr i64 %7622, 63
  %7624 = add i64 %7622, %7595
  store i64 %7624, i64* %RCX.i2165, align 8
  %7625 = icmp ult i64 %7624, %7595
  %7626 = icmp ult i64 %7624, %7622
  %7627 = or i1 %7625, %7626
  %7628 = zext i1 %7627 to i8
  store i8 %7628, i8* %14, align 1
  %7629 = trunc i64 %7624 to i32
  %7630 = and i32 %7629, 255
  %7631 = tail call i32 @llvm.ctpop.i32(i32 %7630)
  %7632 = trunc i32 %7631 to i8
  %7633 = and i8 %7632, 1
  %7634 = xor i8 %7633, 1
  store i8 %7634, i8* %21, align 1
  %7635 = xor i64 %7622, %7595
  %7636 = xor i64 %7635, %7624
  %7637 = lshr i64 %7636, 4
  %7638 = trunc i64 %7637 to i8
  %7639 = and i8 %7638, 1
  store i8 %7639, i8* %26, align 1
  %7640 = icmp eq i64 %7624, 0
  %7641 = zext i1 %7640 to i8
  store i8 %7641, i8* %29, align 1
  %7642 = lshr i64 %7624, 63
  %7643 = trunc i64 %7642 to i8
  store i8 %7643, i8* %32, align 1
  %7644 = xor i64 %7642, %7610
  %7645 = xor i64 %7642, %7623
  %7646 = add nuw nsw i64 %7644, %7645
  %7647 = icmp eq i64 %7646, 2
  %7648 = zext i1 %7647 to i8
  store i8 %7648, i8* %38, align 1
  %7649 = load i64, i64* %RBP.i, align 8
  %7650 = add i64 %7649, -24
  %7651 = add i64 %7389, 39
  store i64 %7651, i64* %3, align 8
  %7652 = inttoptr i64 %7650 to i32*
  %7653 = load i32, i32* %7652, align 4
  %7654 = sext i32 %7653 to i64
  %7655 = shl nsw i64 %7654, 4
  %7656 = add i64 %7655, %7624
  store i64 %7656, i64* %RCX.i2165, align 8
  %7657 = icmp ult i64 %7656, %7624
  %7658 = icmp ult i64 %7656, %7655
  %7659 = or i1 %7657, %7658
  %7660 = zext i1 %7659 to i8
  store i8 %7660, i8* %14, align 1
  %7661 = trunc i64 %7656 to i32
  %7662 = and i32 %7661, 255
  %7663 = tail call i32 @llvm.ctpop.i32(i32 %7662)
  %7664 = trunc i32 %7663 to i8
  %7665 = and i8 %7664, 1
  %7666 = xor i8 %7665, 1
  store i8 %7666, i8* %21, align 1
  %7667 = xor i64 %7655, %7624
  %7668 = xor i64 %7667, %7656
  %7669 = lshr i64 %7668, 4
  %7670 = trunc i64 %7669 to i8
  %7671 = and i8 %7670, 1
  store i8 %7671, i8* %26, align 1
  %7672 = icmp eq i64 %7656, 0
  %7673 = zext i1 %7672 to i8
  store i8 %7673, i8* %29, align 1
  %7674 = lshr i64 %7656, 63
  %7675 = trunc i64 %7674 to i8
  store i8 %7675, i8* %32, align 1
  %7676 = lshr i64 %7654, 59
  %7677 = and i64 %7676, 1
  %7678 = xor i64 %7674, %7642
  %7679 = xor i64 %7674, %7677
  %7680 = add nuw nsw i64 %7678, %7679
  %7681 = icmp eq i64 %7680, 2
  %7682 = zext i1 %7681 to i8
  store i8 %7682, i8* %38, align 1
  %7683 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*), align 8
  store i64 %7683, i64* %RDX.i2162, align 8
  %7684 = add i64 %7683, 72520
  %7685 = add i64 %7389, 61
  store i64 %7685, i64* %3, align 8
  %7686 = inttoptr i64 %7684 to i32*
  %7687 = load i32, i32* %7686, align 4
  %7688 = sext i32 %7687 to i64
  %7689 = mul nsw i64 %7688, 960
  store i64 %7689, i64* %RDX.i2162, align 8
  %7690 = lshr i64 %7689, 63
  %7691 = load i64, i64* %RAX.i2255, align 8
  %7692 = add i64 %7689, %7691
  store i64 %7692, i64* %RAX.i2255, align 8
  %7693 = icmp ult i64 %7692, %7691
  %7694 = icmp ult i64 %7692, %7689
  %7695 = or i1 %7693, %7694
  %7696 = zext i1 %7695 to i8
  store i8 %7696, i8* %14, align 1
  %7697 = trunc i64 %7692 to i32
  %7698 = and i32 %7697, 255
  %7699 = tail call i32 @llvm.ctpop.i32(i32 %7698)
  %7700 = trunc i32 %7699 to i8
  %7701 = and i8 %7700, 1
  %7702 = xor i8 %7701, 1
  store i8 %7702, i8* %21, align 1
  %7703 = xor i64 %7691, %7692
  %7704 = lshr i64 %7703, 4
  %7705 = trunc i64 %7704 to i8
  %7706 = and i8 %7705, 1
  store i8 %7706, i8* %26, align 1
  %7707 = icmp eq i64 %7692, 0
  %7708 = zext i1 %7707 to i8
  store i8 %7708, i8* %29, align 1
  %7709 = lshr i64 %7692, 63
  %7710 = trunc i64 %7709 to i8
  store i8 %7710, i8* %32, align 1
  %7711 = lshr i64 %7691, 63
  %7712 = xor i64 %7709, %7711
  %7713 = xor i64 %7709, %7690
  %7714 = add nuw nsw i64 %7712, %7713
  %7715 = icmp eq i64 %7714, 2
  %7716 = zext i1 %7715 to i8
  store i8 %7716, i8* %38, align 1
  %7717 = load i64, i64* %RBP.i, align 8
  %7718 = add i64 %7717, -20
  %7719 = add i64 %7389, 75
  store i64 %7719, i64* %3, align 8
  %7720 = inttoptr i64 %7718 to i32*
  %7721 = load i32, i32* %7720, align 4
  %7722 = sext i32 %7721 to i64
  %7723 = mul nsw i64 %7722, 120
  store i64 %7723, i64* %RDX.i2162, align 8
  %7724 = lshr i64 %7723, 63
  %7725 = add i64 %7723, %7692
  store i64 %7725, i64* %RAX.i2255, align 8
  %7726 = icmp ult i64 %7725, %7692
  %7727 = icmp ult i64 %7725, %7723
  %7728 = or i1 %7726, %7727
  %7729 = zext i1 %7728 to i8
  store i8 %7729, i8* %14, align 1
  %7730 = trunc i64 %7725 to i32
  %7731 = and i32 %7730, 255
  %7732 = tail call i32 @llvm.ctpop.i32(i32 %7731)
  %7733 = trunc i32 %7732 to i8
  %7734 = and i8 %7733, 1
  %7735 = xor i8 %7734, 1
  store i8 %7735, i8* %21, align 1
  %7736 = xor i64 %7723, %7692
  %7737 = xor i64 %7736, %7725
  %7738 = lshr i64 %7737, 4
  %7739 = trunc i64 %7738 to i8
  %7740 = and i8 %7739, 1
  store i8 %7740, i8* %26, align 1
  %7741 = icmp eq i64 %7725, 0
  %7742 = zext i1 %7741 to i8
  store i8 %7742, i8* %29, align 1
  %7743 = lshr i64 %7725, 63
  %7744 = trunc i64 %7743 to i8
  store i8 %7744, i8* %32, align 1
  %7745 = xor i64 %7743, %7709
  %7746 = xor i64 %7743, %7724
  %7747 = add nuw nsw i64 %7745, %7746
  %7748 = icmp eq i64 %7747, 2
  %7749 = zext i1 %7748 to i8
  store i8 %7749, i8* %38, align 1
  %7750 = add i64 %7717, -24
  %7751 = add i64 %7389, 86
  store i64 %7751, i64* %3, align 8
  %7752 = inttoptr i64 %7750 to i32*
  %7753 = load i32, i32* %7752, align 4
  %7754 = sext i32 %7753 to i64
  %7755 = shl nsw i64 %7754, 3
  store i64 %7755, i64* %RDX.i2162, align 8
  %7756 = add i64 %7755, %7725
  store i64 %7756, i64* %RAX.i2255, align 8
  %7757 = icmp ult i64 %7756, %7725
  %7758 = icmp ult i64 %7756, %7755
  %7759 = or i1 %7757, %7758
  %7760 = zext i1 %7759 to i8
  store i8 %7760, i8* %14, align 1
  %7761 = trunc i64 %7756 to i32
  %7762 = and i32 %7761, 255
  %7763 = tail call i32 @llvm.ctpop.i32(i32 %7762)
  %7764 = trunc i32 %7763 to i8
  %7765 = and i8 %7764, 1
  %7766 = xor i8 %7765, 1
  store i8 %7766, i8* %21, align 1
  %7767 = xor i64 %7755, %7725
  %7768 = xor i64 %7767, %7756
  %7769 = lshr i64 %7768, 4
  %7770 = trunc i64 %7769 to i8
  %7771 = and i8 %7770, 1
  store i8 %7771, i8* %26, align 1
  %7772 = icmp eq i64 %7756, 0
  %7773 = zext i1 %7772 to i8
  store i8 %7773, i8* %29, align 1
  %7774 = lshr i64 %7756, 63
  %7775 = trunc i64 %7774 to i8
  store i8 %7775, i8* %32, align 1
  %7776 = lshr i64 %7754, 60
  %7777 = and i64 %7776, 1
  %7778 = xor i64 %7774, %7743
  %7779 = xor i64 %7774, %7777
  %7780 = add nuw nsw i64 %7778, %7779
  %7781 = icmp eq i64 %7780, 2
  %7782 = zext i1 %7781 to i8
  store i8 %7782, i8* %38, align 1
  %7783 = load i64, i64* %RCX.i2165, align 8
  store i64 %7783, i64* %RDI.i2122, align 8
  store i64 %7756, i64* %RSI.i2119, align 8
  %7784 = add i64 %7389, -92452
  %7785 = add i64 %7389, 104
  %7786 = load i64, i64* %6, align 8
  %7787 = add i64 %7786, -8
  %7788 = inttoptr i64 %7787 to i64*
  store i64 %7785, i64* %7788, align 8
  store i64 %7787, i64* %6, align 8
  store i64 %7784, i64* %3, align 8
  %call2_418e17 = tail call %struct.Memory* @sub_402490.biari_init_context(%struct.State* nonnull %0, i64 %7784, %struct.Memory* %2)
  %.pre224 = load i64, i64* %3, align 8
  br label %block_.L_418e1c

block_.L_418e1c:                                  ; preds = %block_.L_418db4, %block_418d47
  %7789 = phi i64 [ %.pre224, %block_.L_418db4 ], [ %7590, %block_418d47 ]
  %7790 = load i64, i64* %RBP.i, align 8
  %7791 = add i64 %7790, -24
  %7792 = add i64 %7789, 8
  store i64 %7792, i64* %3, align 8
  %7793 = inttoptr i64 %7791 to i32*
  %7794 = load i32, i32* %7793, align 4
  %7795 = add i32 %7794, 1
  %7796 = zext i32 %7795 to i64
  store i64 %7796, i64* %RAX.i2255, align 8
  %7797 = icmp eq i32 %7794, -1
  %7798 = icmp eq i32 %7795, 0
  %7799 = or i1 %7797, %7798
  %7800 = zext i1 %7799 to i8
  store i8 %7800, i8* %14, align 1
  %7801 = and i32 %7795, 255
  %7802 = tail call i32 @llvm.ctpop.i32(i32 %7801)
  %7803 = trunc i32 %7802 to i8
  %7804 = and i8 %7803, 1
  %7805 = xor i8 %7804, 1
  store i8 %7805, i8* %21, align 1
  %7806 = xor i32 %7795, %7794
  %7807 = lshr i32 %7806, 4
  %7808 = trunc i32 %7807 to i8
  %7809 = and i8 %7808, 1
  store i8 %7809, i8* %26, align 1
  %7810 = zext i1 %7798 to i8
  store i8 %7810, i8* %29, align 1
  %7811 = lshr i32 %7795, 31
  %7812 = trunc i32 %7811 to i8
  store i8 %7812, i8* %32, align 1
  %7813 = lshr i32 %7794, 31
  %7814 = xor i32 %7811, %7813
  %7815 = add nuw nsw i32 %7814, %7811
  %7816 = icmp eq i32 %7815, 2
  %7817 = zext i1 %7816 to i8
  store i8 %7817, i8* %38, align 1
  %7818 = add i64 %7789, 14
  store i64 %7818, i64* %3, align 8
  store i32 %7795, i32* %7793, align 4
  %7819 = load i64, i64* %3, align 8
  %7820 = add i64 %7819, -255
  store i64 %7820, i64* %3, align 8
  br label %block_.L_418d2b

block_.L_418e2f:                                  ; preds = %block_.L_418d2b
  %7821 = add i64 %7334, -20
  %7822 = add i64 %7362, 8
  store i64 %7822, i64* %3, align 8
  %7823 = inttoptr i64 %7821 to i32*
  %7824 = load i32, i32* %7823, align 4
  %7825 = add i32 %7824, 1
  %7826 = zext i32 %7825 to i64
  store i64 %7826, i64* %RAX.i2255, align 8
  %7827 = icmp eq i32 %7824, -1
  %7828 = icmp eq i32 %7825, 0
  %7829 = or i1 %7827, %7828
  %7830 = zext i1 %7829 to i8
  store i8 %7830, i8* %14, align 1
  %7831 = and i32 %7825, 255
  %7832 = tail call i32 @llvm.ctpop.i32(i32 %7831)
  %7833 = trunc i32 %7832 to i8
  %7834 = and i8 %7833, 1
  %7835 = xor i8 %7834, 1
  store i8 %7835, i8* %21, align 1
  %7836 = xor i32 %7825, %7824
  %7837 = lshr i32 %7836, 4
  %7838 = trunc i32 %7837 to i8
  %7839 = and i8 %7838, 1
  store i8 %7839, i8* %26, align 1
  %7840 = zext i1 %7828 to i8
  store i8 %7840, i8* %29, align 1
  %7841 = lshr i32 %7825, 31
  %7842 = trunc i32 %7841 to i8
  store i8 %7842, i8* %32, align 1
  %7843 = lshr i32 %7824, 31
  %7844 = xor i32 %7841, %7843
  %7845 = add nuw nsw i32 %7844, %7841
  %7846 = icmp eq i32 %7845, 2
  %7847 = zext i1 %7846 to i8
  store i8 %7847, i8* %38, align 1
  %7848 = add i64 %7362, 14
  store i64 %7848, i64* %3, align 8
  store i32 %7825, i32* %7823, align 4
  %7849 = load i64, i64* %3, align 8
  %7850 = add i64 %7849, -291
  store i64 %7850, i64* %3, align 8
  br label %block_.L_418d1a

block_.L_418e42:                                  ; preds = %block_.L_418d1a
  %7851 = add i64 %7329, 7
  store i64 %7851, i64* %3, align 8
  store i32 0, i32* %7304, align 4
  %.pre220 = load i64, i64* %3, align 8
  br label %block_.L_418e49

block_.L_418e49:                                  ; preds = %block_.L_418f5e, %block_.L_418e42
  %7852 = phi i64 [ %.pre220, %block_.L_418e42 ], [ %8402, %block_.L_418f5e ]
  %7853 = load i64, i64* %RBP.i, align 8
  %7854 = add i64 %7853, -20
  %7855 = add i64 %7852, 4
  store i64 %7855, i64* %3, align 8
  %7856 = inttoptr i64 %7854 to i32*
  %7857 = load i32, i32* %7856, align 4
  %7858 = add i32 %7857, -10
  %7859 = icmp ult i32 %7857, 10
  %7860 = zext i1 %7859 to i8
  store i8 %7860, i8* %14, align 1
  %7861 = and i32 %7858, 255
  %7862 = tail call i32 @llvm.ctpop.i32(i32 %7861)
  %7863 = trunc i32 %7862 to i8
  %7864 = and i8 %7863, 1
  %7865 = xor i8 %7864, 1
  store i8 %7865, i8* %21, align 1
  %7866 = xor i32 %7858, %7857
  %7867 = lshr i32 %7866, 4
  %7868 = trunc i32 %7867 to i8
  %7869 = and i8 %7868, 1
  store i8 %7869, i8* %26, align 1
  %7870 = icmp eq i32 %7858, 0
  %7871 = zext i1 %7870 to i8
  store i8 %7871, i8* %29, align 1
  %7872 = lshr i32 %7858, 31
  %7873 = trunc i32 %7872 to i8
  store i8 %7873, i8* %32, align 1
  %7874 = lshr i32 %7857, 31
  %7875 = xor i32 %7872, %7874
  %7876 = add nuw nsw i32 %7875, %7874
  %7877 = icmp eq i32 %7876, 2
  %7878 = zext i1 %7877 to i8
  store i8 %7878, i8* %38, align 1
  %7879 = icmp ne i8 %7873, 0
  %7880 = xor i1 %7879, %7877
  %.v277 = select i1 %7880, i64 10, i64 296
  %7881 = add i64 %7852, %.v277
  store i64 %7881, i64* %3, align 8
  br i1 %7880, label %block_418e53, label %block_.L_418f71

block_418e53:                                     ; preds = %block_.L_418e49
  %7882 = add i64 %7853, -24
  %7883 = add i64 %7881, 7
  store i64 %7883, i64* %3, align 8
  %7884 = inttoptr i64 %7882 to i32*
  store i32 0, i32* %7884, align 4
  %.pre221 = load i64, i64* %3, align 8
  br label %block_.L_418e5a

block_.L_418e5a:                                  ; preds = %block_.L_418f4b, %block_418e53
  %7885 = phi i64 [ %.pre221, %block_418e53 ], [ %8372, %block_.L_418f4b ]
  %7886 = load i64, i64* %RBP.i, align 8
  %7887 = add i64 %7886, -24
  %7888 = add i64 %7885, 4
  store i64 %7888, i64* %3, align 8
  %7889 = inttoptr i64 %7887 to i32*
  %7890 = load i32, i32* %7889, align 4
  %7891 = add i32 %7890, -15
  %7892 = icmp ult i32 %7890, 15
  %7893 = zext i1 %7892 to i8
  store i8 %7893, i8* %14, align 1
  %7894 = and i32 %7891, 255
  %7895 = tail call i32 @llvm.ctpop.i32(i32 %7894)
  %7896 = trunc i32 %7895 to i8
  %7897 = and i8 %7896, 1
  %7898 = xor i8 %7897, 1
  store i8 %7898, i8* %21, align 1
  %7899 = xor i32 %7891, %7890
  %7900 = lshr i32 %7899, 4
  %7901 = trunc i32 %7900 to i8
  %7902 = and i8 %7901, 1
  store i8 %7902, i8* %26, align 1
  %7903 = icmp eq i32 %7891, 0
  %7904 = zext i1 %7903 to i8
  store i8 %7904, i8* %29, align 1
  %7905 = lshr i32 %7891, 31
  %7906 = trunc i32 %7905 to i8
  store i8 %7906, i8* %32, align 1
  %7907 = lshr i32 %7890, 31
  %7908 = xor i32 %7905, %7907
  %7909 = add nuw nsw i32 %7908, %7907
  %7910 = icmp eq i32 %7909, 2
  %7911 = zext i1 %7910 to i8
  store i8 %7911, i8* %38, align 1
  %7912 = icmp ne i8 %7906, 0
  %7913 = xor i1 %7912, %7910
  %.v250 = select i1 %7913, i64 10, i64 260
  %7914 = add i64 %7885, %.v250
  store i64 %7914, i64* %3, align 8
  br i1 %7913, label %block_418e64, label %block_.L_418f5e

block_418e64:                                     ; preds = %block_.L_418e5a
  %7915 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*), align 8
  store i64 %7915, i64* %RAX.i2255, align 8
  %7916 = add i64 %7915, 24
  %7917 = add i64 %7914, 12
  store i64 %7917, i64* %3, align 8
  %7918 = inttoptr i64 %7916 to i32*
  %7919 = load i32, i32* %7918, align 4
  %7920 = add i32 %7919, -2
  %7921 = icmp ult i32 %7919, 2
  %7922 = zext i1 %7921 to i8
  store i8 %7922, i8* %14, align 1
  %7923 = and i32 %7920, 255
  %7924 = tail call i32 @llvm.ctpop.i32(i32 %7923)
  %7925 = trunc i32 %7924 to i8
  %7926 = and i8 %7925, 1
  %7927 = xor i8 %7926, 1
  store i8 %7927, i8* %21, align 1
  %7928 = xor i32 %7920, %7919
  %7929 = lshr i32 %7928, 4
  %7930 = trunc i32 %7929 to i8
  %7931 = and i8 %7930, 1
  store i8 %7931, i8* %26, align 1
  %7932 = icmp eq i32 %7920, 0
  %7933 = zext i1 %7932 to i8
  store i8 %7933, i8* %29, align 1
  %7934 = lshr i32 %7920, 31
  %7935 = trunc i32 %7934 to i8
  store i8 %7935, i8* %32, align 1
  %7936 = lshr i32 %7919, 31
  %7937 = xor i32 %7934, %7936
  %7938 = add nuw nsw i32 %7937, %7936
  %7939 = icmp eq i32 %7938, 2
  %7940 = zext i1 %7939 to i8
  store i8 %7940, i8* %38, align 1
  %.v278 = select i1 %7932, i64 18, i64 127
  %7941 = add i64 %7914, %.v278
  %7942 = add i64 %7941, 10
  store i64 %7942, i64* %3, align 8
  br i1 %7932, label %block_418e76, label %block_.L_418ee3

block_418e76:                                     ; preds = %block_418e64
  store i64 ptrtoint (%G__0x4b7bb0_type* @G__0x4b7bb0 to i64), i64* %RAX.i2255, align 8
  %7943 = add i64 %7886, -16
  %7944 = add i64 %7941, 14
  store i64 %7944, i64* %3, align 8
  %7945 = inttoptr i64 %7943 to i64*
  %7946 = load i64, i64* %7945, align 8
  %7947 = add i64 %7946, 9728
  store i64 %7947, i64* %RCX.i2165, align 8
  %7948 = icmp ugt i64 %7946, -9729
  %7949 = zext i1 %7948 to i8
  store i8 %7949, i8* %14, align 1
  %7950 = trunc i64 %7947 to i32
  %7951 = and i32 %7950, 255
  %7952 = tail call i32 @llvm.ctpop.i32(i32 %7951)
  %7953 = trunc i32 %7952 to i8
  %7954 = and i8 %7953, 1
  %7955 = xor i8 %7954, 1
  store i8 %7955, i8* %21, align 1
  %7956 = xor i64 %7947, %7946
  %7957 = lshr i64 %7956, 4
  %7958 = trunc i64 %7957 to i8
  %7959 = and i8 %7958, 1
  store i8 %7959, i8* %26, align 1
  %7960 = icmp eq i64 %7947, 0
  %7961 = zext i1 %7960 to i8
  store i8 %7961, i8* %29, align 1
  %7962 = lshr i64 %7947, 63
  %7963 = trunc i64 %7962 to i8
  store i8 %7963, i8* %32, align 1
  %7964 = lshr i64 %7946, 63
  %7965 = xor i64 %7962, %7964
  %7966 = add nuw nsw i64 %7965, %7962
  %7967 = icmp eq i64 %7966, 2
  %7968 = zext i1 %7967 to i8
  store i8 %7968, i8* %38, align 1
  %7969 = add i64 %7886, -20
  %7970 = add i64 %7941, 25
  store i64 %7970, i64* %3, align 8
  %7971 = inttoptr i64 %7969 to i32*
  %7972 = load i32, i32* %7971, align 4
  %7973 = sext i32 %7972 to i64
  %7974 = mul nsw i64 %7973, 240
  store i64 %7974, i64* %RDX.i2162, align 8
  %7975 = lshr i64 %7974, 63
  %7976 = add i64 %7974, %7947
  store i64 %7976, i64* %RCX.i2165, align 8
  %7977 = icmp ult i64 %7976, %7947
  %7978 = icmp ult i64 %7976, %7974
  %7979 = or i1 %7977, %7978
  %7980 = zext i1 %7979 to i8
  store i8 %7980, i8* %14, align 1
  %7981 = trunc i64 %7976 to i32
  %7982 = and i32 %7981, 255
  %7983 = tail call i32 @llvm.ctpop.i32(i32 %7982)
  %7984 = trunc i32 %7983 to i8
  %7985 = and i8 %7984, 1
  %7986 = xor i8 %7985, 1
  store i8 %7986, i8* %21, align 1
  %7987 = xor i64 %7974, %7947
  %7988 = xor i64 %7987, %7976
  %7989 = lshr i64 %7988, 4
  %7990 = trunc i64 %7989 to i8
  %7991 = and i8 %7990, 1
  store i8 %7991, i8* %26, align 1
  %7992 = icmp eq i64 %7976, 0
  %7993 = zext i1 %7992 to i8
  store i8 %7993, i8* %29, align 1
  %7994 = lshr i64 %7976, 63
  %7995 = trunc i64 %7994 to i8
  store i8 %7995, i8* %32, align 1
  %7996 = xor i64 %7994, %7962
  %7997 = xor i64 %7994, %7975
  %7998 = add nuw nsw i64 %7996, %7997
  %7999 = icmp eq i64 %7998, 2
  %8000 = zext i1 %7999 to i8
  store i8 %8000, i8* %38, align 1
  %8001 = load i64, i64* %RBP.i, align 8
  %8002 = add i64 %8001, -24
  %8003 = add i64 %7941, 39
  store i64 %8003, i64* %3, align 8
  %8004 = inttoptr i64 %8002 to i32*
  %8005 = load i32, i32* %8004, align 4
  %8006 = sext i32 %8005 to i64
  %8007 = shl nsw i64 %8006, 4
  %8008 = add i64 %8007, %7976
  store i64 %8008, i64* %RCX.i2165, align 8
  %8009 = icmp ult i64 %8008, %7976
  %8010 = icmp ult i64 %8008, %8007
  %8011 = or i1 %8009, %8010
  %8012 = zext i1 %8011 to i8
  store i8 %8012, i8* %14, align 1
  %8013 = trunc i64 %8008 to i32
  %8014 = and i32 %8013, 255
  %8015 = tail call i32 @llvm.ctpop.i32(i32 %8014)
  %8016 = trunc i32 %8015 to i8
  %8017 = and i8 %8016, 1
  %8018 = xor i8 %8017, 1
  store i8 %8018, i8* %21, align 1
  %8019 = xor i64 %8007, %7976
  %8020 = xor i64 %8019, %8008
  %8021 = lshr i64 %8020, 4
  %8022 = trunc i64 %8021 to i8
  %8023 = and i8 %8022, 1
  store i8 %8023, i8* %26, align 1
  %8024 = icmp eq i64 %8008, 0
  %8025 = zext i1 %8024 to i8
  store i8 %8025, i8* %29, align 1
  %8026 = lshr i64 %8008, 63
  %8027 = trunc i64 %8026 to i8
  store i8 %8027, i8* %32, align 1
  %8028 = lshr i64 %8006, 59
  %8029 = and i64 %8028, 1
  %8030 = xor i64 %8026, %7994
  %8031 = xor i64 %8026, %8029
  %8032 = add nuw nsw i64 %8030, %8031
  %8033 = icmp eq i64 %8032, 2
  %8034 = zext i1 %8033 to i8
  store i8 %8034, i8* %38, align 1
  %8035 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*), align 8
  store i64 %8035, i64* %RDX.i2162, align 8
  %8036 = add i64 %8035, 72520
  %8037 = add i64 %7941, 61
  store i64 %8037, i64* %3, align 8
  %8038 = inttoptr i64 %8036 to i32*
  %8039 = load i32, i32* %8038, align 4
  %8040 = sext i32 %8039 to i64
  %8041 = mul nsw i64 %8040, 960
  store i64 %8041, i64* %RDX.i2162, align 8
  %8042 = lshr i64 %8041, 63
  %8043 = load i64, i64* %RAX.i2255, align 8
  %8044 = add i64 %8041, %8043
  store i64 %8044, i64* %RAX.i2255, align 8
  %8045 = icmp ult i64 %8044, %8043
  %8046 = icmp ult i64 %8044, %8041
  %8047 = or i1 %8045, %8046
  %8048 = zext i1 %8047 to i8
  store i8 %8048, i8* %14, align 1
  %8049 = trunc i64 %8044 to i32
  %8050 = and i32 %8049, 255
  %8051 = tail call i32 @llvm.ctpop.i32(i32 %8050)
  %8052 = trunc i32 %8051 to i8
  %8053 = and i8 %8052, 1
  %8054 = xor i8 %8053, 1
  store i8 %8054, i8* %21, align 1
  %8055 = xor i64 %8043, %8044
  %8056 = lshr i64 %8055, 4
  %8057 = trunc i64 %8056 to i8
  %8058 = and i8 %8057, 1
  store i8 %8058, i8* %26, align 1
  %8059 = icmp eq i64 %8044, 0
  %8060 = zext i1 %8059 to i8
  store i8 %8060, i8* %29, align 1
  %8061 = lshr i64 %8044, 63
  %8062 = trunc i64 %8061 to i8
  store i8 %8062, i8* %32, align 1
  %8063 = lshr i64 %8043, 63
  %8064 = xor i64 %8061, %8063
  %8065 = xor i64 %8061, %8042
  %8066 = add nuw nsw i64 %8064, %8065
  %8067 = icmp eq i64 %8066, 2
  %8068 = zext i1 %8067 to i8
  store i8 %8068, i8* %38, align 1
  %8069 = load i64, i64* %RBP.i, align 8
  %8070 = add i64 %8069, -20
  %8071 = add i64 %7941, 75
  store i64 %8071, i64* %3, align 8
  %8072 = inttoptr i64 %8070 to i32*
  %8073 = load i32, i32* %8072, align 4
  %8074 = sext i32 %8073 to i64
  %8075 = mul nsw i64 %8074, 120
  store i64 %8075, i64* %RDX.i2162, align 8
  %8076 = lshr i64 %8075, 63
  %8077 = add i64 %8075, %8044
  store i64 %8077, i64* %RAX.i2255, align 8
  %8078 = icmp ult i64 %8077, %8044
  %8079 = icmp ult i64 %8077, %8075
  %8080 = or i1 %8078, %8079
  %8081 = zext i1 %8080 to i8
  store i8 %8081, i8* %14, align 1
  %8082 = trunc i64 %8077 to i32
  %8083 = and i32 %8082, 255
  %8084 = tail call i32 @llvm.ctpop.i32(i32 %8083)
  %8085 = trunc i32 %8084 to i8
  %8086 = and i8 %8085, 1
  %8087 = xor i8 %8086, 1
  store i8 %8087, i8* %21, align 1
  %8088 = xor i64 %8075, %8044
  %8089 = xor i64 %8088, %8077
  %8090 = lshr i64 %8089, 4
  %8091 = trunc i64 %8090 to i8
  %8092 = and i8 %8091, 1
  store i8 %8092, i8* %26, align 1
  %8093 = icmp eq i64 %8077, 0
  %8094 = zext i1 %8093 to i8
  store i8 %8094, i8* %29, align 1
  %8095 = lshr i64 %8077, 63
  %8096 = trunc i64 %8095 to i8
  store i8 %8096, i8* %32, align 1
  %8097 = xor i64 %8095, %8061
  %8098 = xor i64 %8095, %8076
  %8099 = add nuw nsw i64 %8097, %8098
  %8100 = icmp eq i64 %8099, 2
  %8101 = zext i1 %8100 to i8
  store i8 %8101, i8* %38, align 1
  %8102 = add i64 %8069, -24
  %8103 = add i64 %7941, 86
  store i64 %8103, i64* %3, align 8
  %8104 = inttoptr i64 %8102 to i32*
  %8105 = load i32, i32* %8104, align 4
  %8106 = sext i32 %8105 to i64
  %8107 = shl nsw i64 %8106, 3
  store i64 %8107, i64* %RDX.i2162, align 8
  %8108 = add i64 %8107, %8077
  store i64 %8108, i64* %RAX.i2255, align 8
  %8109 = icmp ult i64 %8108, %8077
  %8110 = icmp ult i64 %8108, %8107
  %8111 = or i1 %8109, %8110
  %8112 = zext i1 %8111 to i8
  store i8 %8112, i8* %14, align 1
  %8113 = trunc i64 %8108 to i32
  %8114 = and i32 %8113, 255
  %8115 = tail call i32 @llvm.ctpop.i32(i32 %8114)
  %8116 = trunc i32 %8115 to i8
  %8117 = and i8 %8116, 1
  %8118 = xor i8 %8117, 1
  store i8 %8118, i8* %21, align 1
  %8119 = xor i64 %8107, %8077
  %8120 = xor i64 %8119, %8108
  %8121 = lshr i64 %8120, 4
  %8122 = trunc i64 %8121 to i8
  %8123 = and i8 %8122, 1
  store i8 %8123, i8* %26, align 1
  %8124 = icmp eq i64 %8108, 0
  %8125 = zext i1 %8124 to i8
  store i8 %8125, i8* %29, align 1
  %8126 = lshr i64 %8108, 63
  %8127 = trunc i64 %8126 to i8
  store i8 %8127, i8* %32, align 1
  %8128 = lshr i64 %8106, 60
  %8129 = and i64 %8128, 1
  %8130 = xor i64 %8126, %8095
  %8131 = xor i64 %8126, %8129
  %8132 = add nuw nsw i64 %8130, %8131
  %8133 = icmp eq i64 %8132, 2
  %8134 = zext i1 %8133 to i8
  store i8 %8134, i8* %38, align 1
  %8135 = load i64, i64* %RCX.i2165, align 8
  store i64 %8135, i64* %RDI.i2122, align 8
  store i64 %8108, i64* %RSI.i2119, align 8
  %8136 = add i64 %7941, -92646
  %8137 = add i64 %7941, 104
  %8138 = load i64, i64* %6, align 8
  %8139 = add i64 %8138, -8
  %8140 = inttoptr i64 %8139 to i64*
  store i64 %8137, i64* %8140, align 8
  store i64 %8139, i64* %6, align 8
  store i64 %8136, i64* %3, align 8
  %call2_418ed9 = tail call %struct.Memory* @sub_402490.biari_init_context(%struct.State* nonnull %0, i64 %8136, %struct.Memory* %2)
  %8141 = load i64, i64* %3, align 8
  %8142 = add i64 %8141, 109
  store i64 %8142, i64* %3, align 8
  br label %block_.L_418f4b

block_.L_418ee3:                                  ; preds = %block_418e64
  store i64 ptrtoint (%G__0x4b7f70_type* @G__0x4b7f70 to i64), i64* %RAX.i2255, align 8
  %8143 = add i64 %7886, -16
  %8144 = add i64 %7941, 14
  store i64 %8144, i64* %3, align 8
  %8145 = inttoptr i64 %8143 to i64*
  %8146 = load i64, i64* %8145, align 8
  %8147 = add i64 %8146, 9728
  store i64 %8147, i64* %RCX.i2165, align 8
  %8148 = icmp ugt i64 %8146, -9729
  %8149 = zext i1 %8148 to i8
  store i8 %8149, i8* %14, align 1
  %8150 = trunc i64 %8147 to i32
  %8151 = and i32 %8150, 255
  %8152 = tail call i32 @llvm.ctpop.i32(i32 %8151)
  %8153 = trunc i32 %8152 to i8
  %8154 = and i8 %8153, 1
  %8155 = xor i8 %8154, 1
  store i8 %8155, i8* %21, align 1
  %8156 = xor i64 %8147, %8146
  %8157 = lshr i64 %8156, 4
  %8158 = trunc i64 %8157 to i8
  %8159 = and i8 %8158, 1
  store i8 %8159, i8* %26, align 1
  %8160 = icmp eq i64 %8147, 0
  %8161 = zext i1 %8160 to i8
  store i8 %8161, i8* %29, align 1
  %8162 = lshr i64 %8147, 63
  %8163 = trunc i64 %8162 to i8
  store i8 %8163, i8* %32, align 1
  %8164 = lshr i64 %8146, 63
  %8165 = xor i64 %8162, %8164
  %8166 = add nuw nsw i64 %8165, %8162
  %8167 = icmp eq i64 %8166, 2
  %8168 = zext i1 %8167 to i8
  store i8 %8168, i8* %38, align 1
  %8169 = add i64 %7886, -20
  %8170 = add i64 %7941, 25
  store i64 %8170, i64* %3, align 8
  %8171 = inttoptr i64 %8169 to i32*
  %8172 = load i32, i32* %8171, align 4
  %8173 = sext i32 %8172 to i64
  %8174 = mul nsw i64 %8173, 240
  store i64 %8174, i64* %RDX.i2162, align 8
  %8175 = lshr i64 %8174, 63
  %8176 = add i64 %8174, %8147
  store i64 %8176, i64* %RCX.i2165, align 8
  %8177 = icmp ult i64 %8176, %8147
  %8178 = icmp ult i64 %8176, %8174
  %8179 = or i1 %8177, %8178
  %8180 = zext i1 %8179 to i8
  store i8 %8180, i8* %14, align 1
  %8181 = trunc i64 %8176 to i32
  %8182 = and i32 %8181, 255
  %8183 = tail call i32 @llvm.ctpop.i32(i32 %8182)
  %8184 = trunc i32 %8183 to i8
  %8185 = and i8 %8184, 1
  %8186 = xor i8 %8185, 1
  store i8 %8186, i8* %21, align 1
  %8187 = xor i64 %8174, %8147
  %8188 = xor i64 %8187, %8176
  %8189 = lshr i64 %8188, 4
  %8190 = trunc i64 %8189 to i8
  %8191 = and i8 %8190, 1
  store i8 %8191, i8* %26, align 1
  %8192 = icmp eq i64 %8176, 0
  %8193 = zext i1 %8192 to i8
  store i8 %8193, i8* %29, align 1
  %8194 = lshr i64 %8176, 63
  %8195 = trunc i64 %8194 to i8
  store i8 %8195, i8* %32, align 1
  %8196 = xor i64 %8194, %8162
  %8197 = xor i64 %8194, %8175
  %8198 = add nuw nsw i64 %8196, %8197
  %8199 = icmp eq i64 %8198, 2
  %8200 = zext i1 %8199 to i8
  store i8 %8200, i8* %38, align 1
  %8201 = load i64, i64* %RBP.i, align 8
  %8202 = add i64 %8201, -24
  %8203 = add i64 %7941, 39
  store i64 %8203, i64* %3, align 8
  %8204 = inttoptr i64 %8202 to i32*
  %8205 = load i32, i32* %8204, align 4
  %8206 = sext i32 %8205 to i64
  %8207 = shl nsw i64 %8206, 4
  %8208 = add i64 %8207, %8176
  store i64 %8208, i64* %RCX.i2165, align 8
  %8209 = icmp ult i64 %8208, %8176
  %8210 = icmp ult i64 %8208, %8207
  %8211 = or i1 %8209, %8210
  %8212 = zext i1 %8211 to i8
  store i8 %8212, i8* %14, align 1
  %8213 = trunc i64 %8208 to i32
  %8214 = and i32 %8213, 255
  %8215 = tail call i32 @llvm.ctpop.i32(i32 %8214)
  %8216 = trunc i32 %8215 to i8
  %8217 = and i8 %8216, 1
  %8218 = xor i8 %8217, 1
  store i8 %8218, i8* %21, align 1
  %8219 = xor i64 %8207, %8176
  %8220 = xor i64 %8219, %8208
  %8221 = lshr i64 %8220, 4
  %8222 = trunc i64 %8221 to i8
  %8223 = and i8 %8222, 1
  store i8 %8223, i8* %26, align 1
  %8224 = icmp eq i64 %8208, 0
  %8225 = zext i1 %8224 to i8
  store i8 %8225, i8* %29, align 1
  %8226 = lshr i64 %8208, 63
  %8227 = trunc i64 %8226 to i8
  store i8 %8227, i8* %32, align 1
  %8228 = lshr i64 %8206, 59
  %8229 = and i64 %8228, 1
  %8230 = xor i64 %8226, %8194
  %8231 = xor i64 %8226, %8229
  %8232 = add nuw nsw i64 %8230, %8231
  %8233 = icmp eq i64 %8232, 2
  %8234 = zext i1 %8233 to i8
  store i8 %8234, i8* %38, align 1
  %8235 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*), align 8
  store i64 %8235, i64* %RDX.i2162, align 8
  %8236 = add i64 %8235, 72520
  %8237 = add i64 %7941, 61
  store i64 %8237, i64* %3, align 8
  %8238 = inttoptr i64 %8236 to i32*
  %8239 = load i32, i32* %8238, align 4
  %8240 = sext i32 %8239 to i64
  %8241 = mul nsw i64 %8240, 960
  store i64 %8241, i64* %RDX.i2162, align 8
  %8242 = lshr i64 %8241, 63
  %8243 = load i64, i64* %RAX.i2255, align 8
  %8244 = add i64 %8241, %8243
  store i64 %8244, i64* %RAX.i2255, align 8
  %8245 = icmp ult i64 %8244, %8243
  %8246 = icmp ult i64 %8244, %8241
  %8247 = or i1 %8245, %8246
  %8248 = zext i1 %8247 to i8
  store i8 %8248, i8* %14, align 1
  %8249 = trunc i64 %8244 to i32
  %8250 = and i32 %8249, 255
  %8251 = tail call i32 @llvm.ctpop.i32(i32 %8250)
  %8252 = trunc i32 %8251 to i8
  %8253 = and i8 %8252, 1
  %8254 = xor i8 %8253, 1
  store i8 %8254, i8* %21, align 1
  %8255 = xor i64 %8243, %8244
  %8256 = lshr i64 %8255, 4
  %8257 = trunc i64 %8256 to i8
  %8258 = and i8 %8257, 1
  store i8 %8258, i8* %26, align 1
  %8259 = icmp eq i64 %8244, 0
  %8260 = zext i1 %8259 to i8
  store i8 %8260, i8* %29, align 1
  %8261 = lshr i64 %8244, 63
  %8262 = trunc i64 %8261 to i8
  store i8 %8262, i8* %32, align 1
  %8263 = lshr i64 %8243, 63
  %8264 = xor i64 %8261, %8263
  %8265 = xor i64 %8261, %8242
  %8266 = add nuw nsw i64 %8264, %8265
  %8267 = icmp eq i64 %8266, 2
  %8268 = zext i1 %8267 to i8
  store i8 %8268, i8* %38, align 1
  %8269 = load i64, i64* %RBP.i, align 8
  %8270 = add i64 %8269, -20
  %8271 = add i64 %7941, 75
  store i64 %8271, i64* %3, align 8
  %8272 = inttoptr i64 %8270 to i32*
  %8273 = load i32, i32* %8272, align 4
  %8274 = sext i32 %8273 to i64
  %8275 = mul nsw i64 %8274, 120
  store i64 %8275, i64* %RDX.i2162, align 8
  %8276 = lshr i64 %8275, 63
  %8277 = add i64 %8275, %8244
  store i64 %8277, i64* %RAX.i2255, align 8
  %8278 = icmp ult i64 %8277, %8244
  %8279 = icmp ult i64 %8277, %8275
  %8280 = or i1 %8278, %8279
  %8281 = zext i1 %8280 to i8
  store i8 %8281, i8* %14, align 1
  %8282 = trunc i64 %8277 to i32
  %8283 = and i32 %8282, 255
  %8284 = tail call i32 @llvm.ctpop.i32(i32 %8283)
  %8285 = trunc i32 %8284 to i8
  %8286 = and i8 %8285, 1
  %8287 = xor i8 %8286, 1
  store i8 %8287, i8* %21, align 1
  %8288 = xor i64 %8275, %8244
  %8289 = xor i64 %8288, %8277
  %8290 = lshr i64 %8289, 4
  %8291 = trunc i64 %8290 to i8
  %8292 = and i8 %8291, 1
  store i8 %8292, i8* %26, align 1
  %8293 = icmp eq i64 %8277, 0
  %8294 = zext i1 %8293 to i8
  store i8 %8294, i8* %29, align 1
  %8295 = lshr i64 %8277, 63
  %8296 = trunc i64 %8295 to i8
  store i8 %8296, i8* %32, align 1
  %8297 = xor i64 %8295, %8261
  %8298 = xor i64 %8295, %8276
  %8299 = add nuw nsw i64 %8297, %8298
  %8300 = icmp eq i64 %8299, 2
  %8301 = zext i1 %8300 to i8
  store i8 %8301, i8* %38, align 1
  %8302 = add i64 %8269, -24
  %8303 = add i64 %7941, 86
  store i64 %8303, i64* %3, align 8
  %8304 = inttoptr i64 %8302 to i32*
  %8305 = load i32, i32* %8304, align 4
  %8306 = sext i32 %8305 to i64
  %8307 = shl nsw i64 %8306, 3
  store i64 %8307, i64* %RDX.i2162, align 8
  %8308 = add i64 %8307, %8277
  store i64 %8308, i64* %RAX.i2255, align 8
  %8309 = icmp ult i64 %8308, %8277
  %8310 = icmp ult i64 %8308, %8307
  %8311 = or i1 %8309, %8310
  %8312 = zext i1 %8311 to i8
  store i8 %8312, i8* %14, align 1
  %8313 = trunc i64 %8308 to i32
  %8314 = and i32 %8313, 255
  %8315 = tail call i32 @llvm.ctpop.i32(i32 %8314)
  %8316 = trunc i32 %8315 to i8
  %8317 = and i8 %8316, 1
  %8318 = xor i8 %8317, 1
  store i8 %8318, i8* %21, align 1
  %8319 = xor i64 %8307, %8277
  %8320 = xor i64 %8319, %8308
  %8321 = lshr i64 %8320, 4
  %8322 = trunc i64 %8321 to i8
  %8323 = and i8 %8322, 1
  store i8 %8323, i8* %26, align 1
  %8324 = icmp eq i64 %8308, 0
  %8325 = zext i1 %8324 to i8
  store i8 %8325, i8* %29, align 1
  %8326 = lshr i64 %8308, 63
  %8327 = trunc i64 %8326 to i8
  store i8 %8327, i8* %32, align 1
  %8328 = lshr i64 %8306, 60
  %8329 = and i64 %8328, 1
  %8330 = xor i64 %8326, %8295
  %8331 = xor i64 %8326, %8329
  %8332 = add nuw nsw i64 %8330, %8331
  %8333 = icmp eq i64 %8332, 2
  %8334 = zext i1 %8333 to i8
  store i8 %8334, i8* %38, align 1
  %8335 = load i64, i64* %RCX.i2165, align 8
  store i64 %8335, i64* %RDI.i2122, align 8
  store i64 %8308, i64* %RSI.i2119, align 8
  %8336 = add i64 %7941, -92755
  %8337 = add i64 %7941, 104
  %8338 = load i64, i64* %6, align 8
  %8339 = add i64 %8338, -8
  %8340 = inttoptr i64 %8339 to i64*
  store i64 %8337, i64* %8340, align 8
  store i64 %8339, i64* %6, align 8
  store i64 %8336, i64* %3, align 8
  %call2_418f46 = tail call %struct.Memory* @sub_402490.biari_init_context(%struct.State* nonnull %0, i64 %8336, %struct.Memory* %2)
  %.pre222 = load i64, i64* %3, align 8
  br label %block_.L_418f4b

block_.L_418f4b:                                  ; preds = %block_.L_418ee3, %block_418e76
  %8341 = phi i64 [ %.pre222, %block_.L_418ee3 ], [ %8142, %block_418e76 ]
  %8342 = load i64, i64* %RBP.i, align 8
  %8343 = add i64 %8342, -24
  %8344 = add i64 %8341, 8
  store i64 %8344, i64* %3, align 8
  %8345 = inttoptr i64 %8343 to i32*
  %8346 = load i32, i32* %8345, align 4
  %8347 = add i32 %8346, 1
  %8348 = zext i32 %8347 to i64
  store i64 %8348, i64* %RAX.i2255, align 8
  %8349 = icmp eq i32 %8346, -1
  %8350 = icmp eq i32 %8347, 0
  %8351 = or i1 %8349, %8350
  %8352 = zext i1 %8351 to i8
  store i8 %8352, i8* %14, align 1
  %8353 = and i32 %8347, 255
  %8354 = tail call i32 @llvm.ctpop.i32(i32 %8353)
  %8355 = trunc i32 %8354 to i8
  %8356 = and i8 %8355, 1
  %8357 = xor i8 %8356, 1
  store i8 %8357, i8* %21, align 1
  %8358 = xor i32 %8347, %8346
  %8359 = lshr i32 %8358, 4
  %8360 = trunc i32 %8359 to i8
  %8361 = and i8 %8360, 1
  store i8 %8361, i8* %26, align 1
  %8362 = zext i1 %8350 to i8
  store i8 %8362, i8* %29, align 1
  %8363 = lshr i32 %8347, 31
  %8364 = trunc i32 %8363 to i8
  store i8 %8364, i8* %32, align 1
  %8365 = lshr i32 %8346, 31
  %8366 = xor i32 %8363, %8365
  %8367 = add nuw nsw i32 %8366, %8363
  %8368 = icmp eq i32 %8367, 2
  %8369 = zext i1 %8368 to i8
  store i8 %8369, i8* %38, align 1
  %8370 = add i64 %8341, 14
  store i64 %8370, i64* %3, align 8
  store i32 %8347, i32* %8345, align 4
  %8371 = load i64, i64* %3, align 8
  %8372 = add i64 %8371, -255
  store i64 %8372, i64* %3, align 8
  br label %block_.L_418e5a

block_.L_418f5e:                                  ; preds = %block_.L_418e5a
  %8373 = add i64 %7886, -20
  %8374 = add i64 %7914, 8
  store i64 %8374, i64* %3, align 8
  %8375 = inttoptr i64 %8373 to i32*
  %8376 = load i32, i32* %8375, align 4
  %8377 = add i32 %8376, 1
  %8378 = zext i32 %8377 to i64
  store i64 %8378, i64* %RAX.i2255, align 8
  %8379 = icmp eq i32 %8376, -1
  %8380 = icmp eq i32 %8377, 0
  %8381 = or i1 %8379, %8380
  %8382 = zext i1 %8381 to i8
  store i8 %8382, i8* %14, align 1
  %8383 = and i32 %8377, 255
  %8384 = tail call i32 @llvm.ctpop.i32(i32 %8383)
  %8385 = trunc i32 %8384 to i8
  %8386 = and i8 %8385, 1
  %8387 = xor i8 %8386, 1
  store i8 %8387, i8* %21, align 1
  %8388 = xor i32 %8377, %8376
  %8389 = lshr i32 %8388, 4
  %8390 = trunc i32 %8389 to i8
  %8391 = and i8 %8390, 1
  store i8 %8391, i8* %26, align 1
  %8392 = zext i1 %8380 to i8
  store i8 %8392, i8* %29, align 1
  %8393 = lshr i32 %8377, 31
  %8394 = trunc i32 %8393 to i8
  store i8 %8394, i8* %32, align 1
  %8395 = lshr i32 %8376, 31
  %8396 = xor i32 %8393, %8395
  %8397 = add nuw nsw i32 %8396, %8393
  %8398 = icmp eq i32 %8397, 2
  %8399 = zext i1 %8398 to i8
  store i8 %8399, i8* %38, align 1
  %8400 = add i64 %7914, 14
  store i64 %8400, i64* %3, align 8
  store i32 %8377, i32* %8375, align 4
  %8401 = load i64, i64* %3, align 8
  %8402 = add i64 %8401, -291
  store i64 %8402, i64* %3, align 8
  br label %block_.L_418e49

block_.L_418f71:                                  ; preds = %block_.L_418e49
  %8403 = load i64, i64* %6, align 8
  %8404 = add i64 %8403, 32
  store i64 %8404, i64* %6, align 8
  %8405 = icmp ugt i64 %8403, -33
  %8406 = zext i1 %8405 to i8
  store i8 %8406, i8* %14, align 1
  %8407 = trunc i64 %8404 to i32
  %8408 = and i32 %8407, 255
  %8409 = tail call i32 @llvm.ctpop.i32(i32 %8408)
  %8410 = trunc i32 %8409 to i8
  %8411 = and i8 %8410, 1
  %8412 = xor i8 %8411, 1
  store i8 %8412, i8* %21, align 1
  %8413 = xor i64 %8404, %8403
  %8414 = lshr i64 %8413, 4
  %8415 = trunc i64 %8414 to i8
  %8416 = and i8 %8415, 1
  store i8 %8416, i8* %26, align 1
  %8417 = icmp eq i64 %8404, 0
  %8418 = zext i1 %8417 to i8
  store i8 %8418, i8* %29, align 1
  %8419 = lshr i64 %8404, 63
  %8420 = trunc i64 %8419 to i8
  store i8 %8420, i8* %32, align 1
  %8421 = lshr i64 %8403, 63
  %8422 = xor i64 %8419, %8421
  %8423 = add nuw nsw i64 %8422, %8419
  %8424 = icmp eq i64 %8423, 2
  %8425 = zext i1 %8424 to i8
  store i8 %8425, i8* %38, align 1
  %8426 = add i64 %7881, 5
  store i64 %8426, i64* %3, align 8
  %8427 = add i64 %8403, 40
  %8428 = inttoptr i64 %8404 to i64*
  %8429 = load i64, i64* %8428, align 8
  store i64 %8429, i64* %RBP.i, align 8
  store i64 %8427, i64* %6, align 8
  %8430 = add i64 %7881, 6
  store i64 %8430, i64* %3, align 8
  %8431 = inttoptr i64 %8427 to i64*
  %8432 = load i64, i64* %8431, align 8
  store i64 %8432, i64* %3, align 8
  %8433 = add i64 %8403, 48
  store i64 %8433, i64* %6, align 8
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

; Function Attrs: nounwind
define %struct.Memory* @routine_subq__0x20___rsp(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %3 = load i64, i64* %RSP, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 4
  store i64 %5, i64* %PC, align 8
  %6 = add i64 %3, -32
  store i64 %6, i64* %RSP, align 8
  %7 = icmp ult i64 %3, 32
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
define %struct.Memory* @routine_movq__rax__MINUS0x8__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -8
  %5 = load i64, i64* %RAX, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 4
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %4 to i64*
  store i64 %5, i64* %8, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_0x28__rax____rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = add i64 %3, 40
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RAX, align 8
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
define %struct.Memory* @routine_cmpl__0x3__MINUS0x14__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
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
define %struct.Memory* @routine_jge_.L_417e97(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__0xb__MINUS0x18__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
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
  %9 = add i32 %8, -11
  %10 = icmp ult i32 %8, 11
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
define %struct.Memory* @routine_jge_.L_417e84(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jne_.L_417e10(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movq__0x4b3290___rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x4b3290_type* @G__0x4b3290 to i64), i64* %RAX, align 8
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
define %struct.Memory* @routine_movslq_MINUS0x14__rbp____rdx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -20
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
define %struct.Memory* @routine_imulq__0xb0___rdx___rdx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
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
  %10 = mul nsw i128 %9, 176
  %11 = trunc i128 %10 to i64
  store i64 %11, i64* %RDX, align 8
  %12 = sext i64 %11 to i128
  %13 = icmp ne i128 %12, %10
  %14 = zext i1 %13 to i8
  %15 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %14, i8* %15, align 1
  %16 = trunc i128 %10 to i32
  %17 = and i32 %16, 240
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
define %struct.Memory* @routine_movslq_MINUS0x18__rbp____rdx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -24
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
define %struct.Memory* @routine_movslq_0x11b48__rdx____rdx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %RDX, align 8
  %4 = add i64 %3, 72520
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
define %struct.Memory* @routine_imulq__0x108___rdx___rdx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
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
  %10 = mul nsw i128 %9, 264
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
define %struct.Memory* @routine_imulq__0x58___rdx___rdx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
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
  %10 = mul nsw i128 %9, 88
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
define %struct.Memory* @routine_shlq__0x3___rdx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %RDX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 4
  store i64 %5, i64* %PC, align 8
  %6 = shl i64 %3, 3
  store i64 %6, i64* %RDX, align 8
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
define %struct.Memory* @routine_movq__rax___rsi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 3
  store i64 %5, i64* %PC, align 8
  store i64 %3, i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_callq_.biari_init_context(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jmpq_.L_417e71(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__0x4b33a0___rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x4b33a0_type* @G__0x4b33a0 to i64), i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_417e76(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jmpq_.L_417d8e(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_417e89(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jmpq_.L_417d7d(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
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
define %struct.Memory* @routine_jge_.L_417fc6(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_cmpl__0x9__MINUS0x18__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
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
define %struct.Memory* @routine_jge_.L_417fb3(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jne_.L_417f38(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movq__0x4b36c0___rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x4b36c0_type* @G__0x4b36c0 to i64), i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_addq__0x210___rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 7
  store i64 %5, i64* %PC, align 8
  %6 = add i64 %3, 528
  store i64 %6, i64* %RCX, align 8
  %7 = icmp ugt i64 %3, -529
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
define %struct.Memory* @routine_imulq__0x90___rdx___rdx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
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
  %10 = mul nsw i128 %9, 144
  %11 = trunc i128 %10 to i64
  store i64 %11, i64* %RDX, align 8
  %12 = sext i64 %11 to i128
  %13 = icmp ne i128 %12, %10
  %14 = zext i1 %13 to i8
  %15 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %14, i8* %15, align 1
  %16 = trunc i128 %10 to i32
  %17 = and i32 %16, 240
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
define %struct.Memory* @routine_imulq__0x48___rdx___rdx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
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
  %10 = mul nsw i128 %9, 72
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_417fa0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__0x4b3750___rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x4b3750_type* @G__0x4b3750 to i64), i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_417fa5(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_417eaf(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_417fb8(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_417e9e(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jge_.L_4180f5(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_cmpl__0xa__MINUS0x18__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
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
define %struct.Memory* @routine_jge_.L_4180e2(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jne_.L_418067(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movq__0x4b3900___rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x4b3900_type* @G__0x4b3900 to i64), i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_addq__0x330___rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 7
  store i64 %5, i64* %PC, align 8
  %6 = add i64 %3, 816
  store i64 %6, i64* %RCX, align 8
  %7 = icmp ugt i64 %3, -817
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
define %struct.Memory* @routine_imulq__0xa0___rdx___rdx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
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
  %10 = mul nsw i128 %9, 160
  %11 = trunc i128 %10 to i64
  store i64 %11, i64* %RDX, align 8
  %12 = sext i64 %11 to i128
  %13 = icmp ne i128 %12, %10
  %14 = zext i1 %13 to i8
  %15 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %14, i8* %15, align 1
  %16 = trunc i128 %10 to i32
  %17 = and i32 %16, 224
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
define %struct.Memory* @routine_imulq__0x50___rdx___rdx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
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
  %10 = mul nsw i128 %9, 80
  %11 = trunc i128 %10 to i64
  store i64 %11, i64* %RDX, align 8
  %12 = sext i64 %11 to i128
  %13 = icmp ne i128 %12, %10
  %14 = zext i1 %13 to i8
  %15 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %14, i8* %15, align 1
  %16 = trunc i128 %10 to i32
  %17 = and i32 %16, 240
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
define %struct.Memory* @routine_jmpq_.L_4180cf(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__0x4b39a0___rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x4b39a0_type* @G__0x4b39a0 to i64), i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_4180d4(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_417fde(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_4180e7(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_417fcd(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jge_.L_418218(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_cmpl__0x6__MINUS0x18__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
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
define %struct.Memory* @routine_jge_.L_418205(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jne_.L_418190(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movq__0x4b3b80___rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x4b3b80_type* @G__0x4b3b80 to i64), i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_addq__0x470___rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 7
  store i64 %5, i64* %PC, align 8
  %6 = add i64 %3, 1136
  store i64 %6, i64* %RCX, align 8
  %7 = icmp ugt i64 %3, -1137
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
define %struct.Memory* @routine_imulq__0x60___rdx___rdx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
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
  %10 = mul nsw i128 %9, 96
  %11 = trunc i128 %10 to i64
  store i64 %11, i64* %RDX, align 8
  %12 = sext i64 %11 to i128
  %13 = icmp ne i128 %12, %10
  %14 = zext i1 %13 to i8
  %15 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %14, i8* %15, align 1
  %16 = trunc i128 %10 to i32
  %17 = and i32 %16, 224
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
define %struct.Memory* @routine_imulq__0x30___rdx___rdx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
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
  %10 = mul nsw i128 %9, 48
  %11 = trunc i128 %10 to i64
  store i64 %11, i64* %RDX, align 8
  %12 = sext i64 %11 to i128
  %13 = icmp ne i128 %12, %10
  %14 = zext i1 %13 to i8
  %15 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %14, i8* %15, align 1
  %16 = trunc i128 %10 to i32
  %17 = and i32 %16, 240
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
define %struct.Memory* @routine_jmpq_.L_4181f2(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__0x4b3be0___rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x4b3be0_type* @G__0x4b3be0 to i64), i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_4181f7(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_41810d(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_41820a(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_4180fc(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__0x4__MINUS0x18__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
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
define %struct.Memory* @routine_jge_.L_4182eb(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jne_.L_41828c(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movq__0x4b3d00___rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x4b3d00_type* @G__0x4b3d00 to i64), i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_addq__0x530___rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 7
  store i64 %5, i64* %PC, align 8
  %6 = add i64 %3, 1328
  store i64 %6, i64* %RCX, align 8
  %7 = icmp ugt i64 %3, -1329
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
define %struct.Memory* @routine_jmpq_.L_4182d8(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__0x4b3d20___rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x4b3d20_type* @G__0x4b3d20 to i64), i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_4182dd(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_41821f(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jge_.L_4183be(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jne_.L_41835f(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movq__0x4b3d80___rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x4b3d80_type* @G__0x4b3d80 to i64), i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_addq__0x570___rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 7
  store i64 %5, i64* %PC, align 8
  %6 = add i64 %3, 1392
  store i64 %6, i64* %RCX, align 8
  %7 = icmp ugt i64 %3, -1393
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
define %struct.Memory* @routine_jmpq_.L_4183ab(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__0x4b3da0___rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x4b3da0_type* @G__0x4b3da0 to i64), i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_4183b0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_4182f2(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__0x3__MINUS0x18__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
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
define %struct.Memory* @routine_jge_.L_418491(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jne_.L_418432(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movq__0x4b3e00___rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x4b3e00_type* @G__0x4b3e00 to i64), i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_addq__0x5b0___rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 7
  store i64 %5, i64* %PC, align 8
  %6 = add i64 %3, 1456
  store i64 %6, i64* %RCX, align 8
  %7 = icmp ugt i64 %3, -1457
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_41847e(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__0x4b3e20___rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x4b3e20_type* @G__0x4b3e20 to i64), i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_418483(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_4183c5(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
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
define %struct.Memory* @routine_jge_.L_418556(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jne_.L_4184fe(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movq__0x4b3e70___rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x4b3e70_type* @G__0x4b3e70 to i64), i64* %RAX, align 8
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
define %struct.Memory* @routine_jmpq_.L_418543(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__0x4b3e80___rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x4b3e80_type* @G__0x4b3e80 to i64), i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_418548(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_418498(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jge_.L_418623(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jne_.L_4185c7(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movq__0x4b3eb0___rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x4b3eb0_type* @G__0x4b3eb0 to i64), i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_addq__0x20___rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 4
  store i64 %5, i64* %PC, align 8
  %6 = add i64 %3, 32
  store i64 %6, i64* %RCX, align 8
  %7 = icmp ugt i64 %3, -33
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
define %struct.Memory* @routine_jmpq_.L_418610(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__0x4b3ed0___rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x4b3ed0_type* @G__0x4b3ed0 to i64), i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_418615(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_41855d(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jge_.L_418740(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jge_.L_41872d(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jne_.L_4186bb(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movq__0x4b3f30___rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x4b3f30_type* @G__0x4b3f30 to i64), i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_addq__0x60___rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 4
  store i64 %5, i64* %PC, align 8
  %6 = add i64 %3, 96
  store i64 %6, i64* %RCX, align 8
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
define %struct.Memory* @routine_jmpq_.L_41871a(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__0x4b3f90___rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x4b3f90_type* @G__0x4b3f90 to i64), i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_41871f(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_41863b(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_418732(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_41862a(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jge_.L_418863(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jge_.L_418850(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jne_.L_4187db(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movq__0x4b40b0___rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x4b40b0_type* @G__0x4b40b0 to i64), i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_addq__0x120___rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 7
  store i64 %5, i64* %PC, align 8
  %6 = add i64 %3, 288
  store i64 %6, i64* %RCX, align 8
  %7 = icmp ugt i64 %3, -289
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_41883d(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__0x4b41b0___rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x4b41b0_type* @G__0x4b41b0 to i64), i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_418842(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_418758(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_418855(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_418747(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jge_.L_418992(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_cmpl__0xf__MINUS0x18__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
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
  %9 = add i32 %8, -15
  %10 = icmp ult i32 %8, 15
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
define %struct.Memory* @routine_jge_.L_41897f(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jne_.L_418904(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movq__0x4b44b0___rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x4b44b0_type* @G__0x4b44b0 to i64), i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_addq__0x3a0___rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 7
  store i64 %5, i64* %PC, align 8
  %6 = add i64 %3, 928
  store i64 %6, i64* %RCX, align 8
  %7 = icmp ugt i64 %3, -929
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
define %struct.Memory* @routine_imulq__0xf0___rdx___rdx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
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
  %10 = mul nsw i128 %9, 240
  %11 = trunc i128 %10 to i64
  store i64 %11, i64* %RDX, align 8
  %12 = sext i64 %11 to i128
  %13 = icmp ne i128 %12, %10
  %14 = zext i1 %13 to i8
  %15 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %14, i8* %15, align 1
  %16 = trunc i128 %10 to i32
  %17 = and i32 %16, 240
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
define %struct.Memory* @routine_imulq__0x3c0___rdx___rdx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
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
  %10 = mul nsw i128 %9, 960
  %11 = trunc i128 %10 to i64
  store i64 %11, i64* %RDX, align 8
  %12 = sext i64 %11 to i128
  %13 = icmp ne i128 %12, %10
  %14 = zext i1 %13 to i8
  %15 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %14, i8* %15, align 1
  %16 = trunc i128 %10 to i32
  %17 = and i32 %16, 192
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
define %struct.Memory* @routine_imulq__0x78___rdx___rdx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
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
  %10 = mul nsw i128 %9, 120
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_41896c(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__0x4b4870___rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x4b4870_type* @G__0x4b4870 to i64), i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_418971(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_41887b(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_418984(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_41886a(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jge_.L_418ac1(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jge_.L_418aae(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jne_.L_418a33(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movq__0x4b53b0___rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x4b53b0_type* @G__0x4b53b0 to i64), i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_addq__0xd00___rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 7
  store i64 %5, i64* %PC, align 8
  %6 = add i64 %3, 3328
  store i64 %6, i64* %RCX, align 8
  %7 = icmp ugt i64 %3, -3329
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
define %struct.Memory* @routine_jmpq_.L_418a9b(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__0x4b5770___rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x4b5770_type* @G__0x4b5770 to i64), i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_418aa0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_4189aa(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_418ab3(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_418999(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jge_.L_418bea(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_cmpl__0x5__MINUS0x18__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
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
  %9 = add i32 %8, -5
  %10 = icmp ult i32 %8, 5
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
define %struct.Memory* @routine_jge_.L_418bd7(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jne_.L_418b5f(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movq__0x4b62b0___rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x4b62b0_type* @G__0x4b62b0 to i64), i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_addq__0x1660___rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 7
  store i64 %5, i64* %PC, align 8
  %6 = add i64 %3, 5728
  store i64 %6, i64* %RCX, align 8
  %7 = icmp ugt i64 %3, -5729
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
define %struct.Memory* @routine_imulq__0x140___rdx___rdx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
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
  %10 = mul nsw i128 %9, 320
  %11 = trunc i128 %10 to i64
  store i64 %11, i64* %RDX, align 8
  %12 = sext i64 %11 to i128
  %13 = icmp ne i128 %12, %10
  %14 = zext i1 %13 to i8
  %15 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %14, i8* %15, align 1
  %16 = trunc i128 %10 to i32
  %17 = and i32 %16, 192
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
define %struct.Memory* @routine_imulq__0x28___rdx___rdx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
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
  %10 = mul nsw i128 %9, 40
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_418bc4(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__0x4b63f0___rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x4b63f0_type* @G__0x4b63f0 to i64), i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_418bc9(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_418ad9(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_418bdc(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_418ac8(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jge_.L_418d13(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jge_.L_418d00(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jne_.L_418c88(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movq__0x4b67b0___rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x4b67b0_type* @G__0x4b67b0 to i64), i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_addq__0x1980___rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 7
  store i64 %5, i64* %PC, align 8
  %6 = add i64 %3, 6528
  store i64 %6, i64* %RCX, align 8
  %7 = icmp ugt i64 %3, -6529
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
define %struct.Memory* @routine_jmpq_.L_418ced(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__0x4b68f0___rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x4b68f0_type* @G__0x4b68f0 to i64), i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_418cf2(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_418c02(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_418d05(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_418bf1(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jge_.L_418e42(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jge_.L_418e2f(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jne_.L_418db4(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movq__0x4b6cb0___rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x4b6cb0_type* @G__0x4b6cb0 to i64), i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_addq__0x1ca0___rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 7
  store i64 %5, i64* %PC, align 8
  %6 = add i64 %3, 7328
  store i64 %6, i64* %RCX, align 8
  %7 = icmp ugt i64 %3, -7329
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
define %struct.Memory* @routine_jmpq_.L_418e1c(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__0x4b7070___rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x4b7070_type* @G__0x4b7070 to i64), i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_418e21(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_418d2b(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_418e34(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_418d1a(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jge_.L_418f71(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jge_.L_418f5e(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jne_.L_418ee3(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movq__0x4b7bb0___rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x4b7bb0_type* @G__0x4b7bb0 to i64), i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_addq__0x2600___rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 7
  store i64 %5, i64* %PC, align 8
  %6 = add i64 %3, 9728
  store i64 %6, i64* %RCX, align 8
  %7 = icmp ugt i64 %3, -9729
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
define %struct.Memory* @routine_jmpq_.L_418f4b(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__0x4b7f70___rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x4b7f70_type* @G__0x4b7f70 to i64), i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_418f50(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_418e5a(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_418f63(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_418e49(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_addq__0x20___rsp(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %3 = load i64, i64* %RSP, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 4
  store i64 %5, i64* %PC, align 8
  %6 = add i64 %3, 32
  store i64 %6, i64* %RSP, align 8
  %7 = icmp ugt i64 %3, -33
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
