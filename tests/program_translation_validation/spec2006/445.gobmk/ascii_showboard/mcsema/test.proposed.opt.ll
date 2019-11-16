; ModuleID = 'mcsema/test.proposed.inline.ll'
source_filename = "llvm-link"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu-elf"

%__bss_start_type = type <{ [8 x i8] }>
%G_0x7ae438_type = type <{ [4 x i8] }>
%G_0x7afe14_type = type <{ [4 x i8] }>
%G_0x99c080_type = type <{ [8 x i8] }>
%G_0x99c0a0_type = type <{ [8 x i8] }>
%G_0xab0f10_type = type <{ [1 x i8] }>
%G_0xaf274c_type = type <{ [1 x i8] }>
%G_0xaf2750_type = type <{ [4 x i8] }>
%G_0xaf2754_type = type <{ [4 x i8] }>
%G_0xaf2758_type = type <{ [1 x i8] }>
%G_0xb38cb0_type = type <{ [4 x i8] }>
%G_0xb8c040_type = type <{ [4 x i8] }>
%G__0x579d92_type = type <{ [8 x i8] }>
%G__0x579d93_type = type <{ [8 x i8] }>
%G__0x57f1e3_type = type <{ [8 x i8] }>
%G__0x586073_type = type <{ [8 x i8] }>
%G__0x586b5c_type = type <{ [8 x i8] }>
%G__0x586b7e_type = type <{ [8 x i8] }>
%G__0x586ba0_type = type <{ [8 x i8] }>
%G__0x586bc9_type = type <{ [8 x i8] }>
%G__0x586bf4_type = type <{ [8 x i8] }>
%G__0x586c1f_type = type <{ [8 x i8] }>
%G__0x586c3b_type = type <{ [8 x i8] }>
%G__0x586c43_type = type <{ [8 x i8] }>
%G__0x586c49_type = type <{ [8 x i8] }>
%G__0x586c4e_type = type <{ [8 x i8] }>
%G__0x586c53_type = type <{ [8 x i8] }>
%G__0x586c6b_type = type <{ [8 x i8] }>
%G__0x586c6c_type = type <{ [8 x i8] }>
%G__0x586c70_type = type <{ [8 x i8] }>
%G__0x58898d_type = type <{ [8 x i8] }>
%G__0xaf2760_type = type <{ [8 x i8] }>
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
@G_0x7ae438 = local_unnamed_addr global %G_0x7ae438_type zeroinitializer
@G_0x7afe14 = local_unnamed_addr global %G_0x7afe14_type zeroinitializer
@G_0x99c080 = local_unnamed_addr global %G_0x99c080_type zeroinitializer
@G_0x99c0a0 = local_unnamed_addr global %G_0x99c0a0_type zeroinitializer
@G_0xab0f10 = local_unnamed_addr global %G_0xab0f10_type zeroinitializer
@G_0xaf274c = local_unnamed_addr global %G_0xaf274c_type zeroinitializer
@G_0xaf2750 = local_unnamed_addr global %G_0xaf2750_type zeroinitializer
@G_0xaf2754 = local_unnamed_addr global %G_0xaf2754_type zeroinitializer
@G_0xaf2758 = local_unnamed_addr global %G_0xaf2758_type zeroinitializer
@G_0xb38cb0 = local_unnamed_addr global %G_0xb38cb0_type zeroinitializer
@G_0xb8c040 = local_unnamed_addr global %G_0xb8c040_type zeroinitializer
@G__0x579d92 = global %G__0x579d92_type zeroinitializer
@G__0x579d93 = global %G__0x579d93_type zeroinitializer
@G__0x57f1e3 = global %G__0x57f1e3_type zeroinitializer
@G__0x586073 = global %G__0x586073_type zeroinitializer
@G__0x586b5c = global %G__0x586b5c_type zeroinitializer
@G__0x586b7e = global %G__0x586b7e_type zeroinitializer
@G__0x586ba0 = global %G__0x586ba0_type zeroinitializer
@G__0x586bc9 = global %G__0x586bc9_type zeroinitializer
@G__0x586bf4 = global %G__0x586bf4_type zeroinitializer
@G__0x586c1f = global %G__0x586c1f_type zeroinitializer
@G__0x586c3b = global %G__0x586c3b_type zeroinitializer
@G__0x586c43 = global %G__0x586c43_type zeroinitializer
@G__0x586c49 = global %G__0x586c49_type zeroinitializer
@G__0x586c4e = global %G__0x586c4e_type zeroinitializer
@G__0x586c53 = global %G__0x586c53_type zeroinitializer
@G__0x586c6b = global %G__0x586c6b_type zeroinitializer
@G__0x586c6c = global %G__0x586c6c_type zeroinitializer
@G__0x586c70 = global %G__0x586c70_type zeroinitializer
@G__0x58898d = global %G__0x58898d_type zeroinitializer
@G__0xaf2760 = global %G__0xaf2760_type zeroinitializer

; Function Attrs: nounwind readnone
declare i32 @llvm.ctpop.i32(i32) #0

declare extern_weak x86_64_sysvcc i64 @exit(i64)

declare extern_weak x86_64_sysvcc i64 @fflush(i64)

declare extern_weak x86_64_sysvcc i64 @fprintf(i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)

declare extern_weak x86_64_sysvcc i64 @printf(i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)

declare %struct.Memory* @__remill_function_call(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr

declare %struct.Memory* @sub_492320.make_letterbar(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_492410.set_handicap_spots(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_4232e0.dragon_status(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

; Function Attrs: alwaysinline
define %struct.Memory* @ascii_showboard(%struct.State* noalias, i64, %struct.Memory* noalias) local_unnamed_addr #1 {
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
  %11 = add i64 %7, -264
  %12 = icmp ult i64 %8, 256
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
  %RSI.i27 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %39 = add i64 %7, -88
  store i64 %39, i64* %RSI.i27, align 8
  %RDI.i44 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %40 = load i32, i32* bitcast (%G_0x7ae438_type* @G_0x7ae438 to i32*), align 8
  %41 = zext i32 %40 to i64
  store i64 %41, i64* %RDI.i44, align 8
  %42 = add i64 %10, 8191
  %43 = add i64 %10, 26
  %44 = add i64 %7, -272
  %45 = inttoptr i64 %44 to i64*
  store i64 %43, i64* %45, align 8
  store i64 %44, i64* %6, align 8
  store i64 %42, i64* %3, align 8
  %call2_490336 = tail call %struct.Memory* @sub_492320.make_letterbar(%struct.State* %0, i64 %42, %struct.Memory* %2)
  %46 = load i64, i64* %3, align 8
  %47 = load i32, i32* bitcast (%G_0x7ae438_type* @G_0x7ae438 to i32*), align 8
  %48 = zext i32 %47 to i64
  store i64 %48, i64* %RDI.i44, align 8
  %49 = add i64 %46, 8405
  %50 = add i64 %46, 12
  %51 = load i64, i64* %6, align 8
  %52 = add i64 %51, -8
  %53 = inttoptr i64 %52 to i64*
  store i64 %50, i64* %53, align 8
  store i64 %52, i64* %6, align 8
  store i64 %49, i64* %3, align 8
  %call2_490342 = tail call %struct.Memory* @sub_492410.set_handicap_spots(%struct.State* %0, i64 %49, %struct.Memory* %call2_490336)
  %54 = load i64, i64* %3, align 8
  store i64 ptrtoint (%G__0x586073_type* @G__0x586073 to i64), i64* %RDI.i44, align 8
  %55 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %AL.i142 = bitcast %union.anon* %55 to i8*
  store i8 0, i8* %AL.i142, align 1
  %56 = add i64 %54, -586503
  %57 = add i64 %54, 17
  %58 = load i64, i64* %6, align 8
  %59 = add i64 %58, -8
  %60 = inttoptr i64 %59 to i64*
  store i64 %57, i64* %60, align 8
  store i64 %59, i64* %6, align 8
  store i64 %56, i64* %3, align 8
  %61 = tail call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 (i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)* @printf to i64), %struct.Memory* %call2_490342)
  %62 = load i64, i64* %3, align 8
  store i64 ptrtoint (%G__0x586b5c_type* @G__0x586b5c to i64), i64* %RDI.i44, align 8
  %63 = load i32, i32* bitcast (%G_0xb8c040_type* @G_0xb8c040 to i32*), align 8
  %64 = zext i32 %63 to i64
  store i64 %64, i64* %RSI.i27, align 8
  %EAX.i225 = bitcast %union.anon* %55 to i32*
  %65 = load i64, i64* %RBP.i, align 8
  %66 = add i64 %65, -96
  %67 = load i32, i32* %EAX.i225, align 4
  %68 = add i64 %62, 20
  store i64 %68, i64* %3, align 8
  %69 = inttoptr i64 %66 to i32*
  store i32 %67, i32* %69, align 4
  %70 = load i64, i64* %3, align 8
  store i8 0, i8* %AL.i142, align 1
  %71 = add i64 %70, -586540
  %72 = add i64 %70, 7
  %73 = load i64, i64* %6, align 8
  %74 = add i64 %73, -8
  %75 = inttoptr i64 %74 to i64*
  store i64 %72, i64* %75, align 8
  store i64 %74, i64* %6, align 8
  store i64 %71, i64* %3, align 8
  %76 = tail call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 (i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)* @printf to i64), %struct.Memory* %61)
  %77 = load i64, i64* %3, align 8
  store i64 ptrtoint (%G__0x586b7e_type* @G__0x586b7e to i64), i64* %RDI.i44, align 8
  %78 = load i32, i32* bitcast (%G_0xb38cb0_type* @G_0xb38cb0 to i32*), align 8
  %79 = zext i32 %78 to i64
  store i64 %79, i64* %RSI.i27, align 8
  %80 = load i64, i64* %RBP.i, align 8
  %81 = add i64 %80, -100
  %82 = load i32, i32* %EAX.i225, align 4
  %83 = add i64 %77, 20
  store i64 %83, i64* %3, align 8
  %84 = inttoptr i64 %81 to i32*
  store i32 %82, i32* %84, align 4
  %85 = load i64, i64* %3, align 8
  store i8 0, i8* %AL.i142, align 1
  %86 = add i64 %85, -586567
  %87 = add i64 %85, 7
  %88 = load i64, i64* %6, align 8
  %89 = add i64 %88, -8
  %90 = inttoptr i64 %89 to i64*
  store i64 %87, i64* %90, align 8
  store i64 %89, i64* %6, align 8
  store i64 %86, i64* %3, align 8
  %91 = tail call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 (i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)* @printf to i64), %struct.Memory* %76)
  %92 = load i64, i64* %3, align 8
  %93 = load i32, i32* bitcast (%G_0xab0f10_type* @G_0xab0f10 to i32*), align 8
  store i8 0, i8* %14, align 1
  %94 = and i32 %93, 255
  %95 = tail call i32 @llvm.ctpop.i32(i32 %94)
  %96 = trunc i32 %95 to i8
  %97 = and i8 %96, 1
  %98 = xor i8 %97, 1
  store i8 %98, i8* %21, align 1
  store i8 0, i8* %26, align 1
  %99 = icmp eq i32 %93, 0
  %100 = zext i1 %99 to i8
  store i8 %100, i8* %29, align 1
  %101 = lshr i32 %93, 31
  %102 = trunc i32 %101 to i8
  store i8 %102, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %103 = load i64, i64* %RBP.i, align 8
  %104 = add i64 %103, -104
  %105 = load i32, i32* %EAX.i225, align 4
  %106 = add i64 %92, 11
  store i64 %106, i64* %3, align 8
  %107 = inttoptr i64 %104 to i32*
  store i32 %105, i32* %107, align 4
  %108 = load i64, i64* %3, align 8
  %109 = load i8, i8* %29, align 1
  %110 = icmp ne i8 %109, 0
  %.v43 = select i1 %110, i64 179, i64 6
  %111 = add i64 %108, %.v43
  store i64 %111, i64* %3, align 8
  %cmpBr_490399 = icmp eq i8 %109, 1
  br i1 %cmpBr_490399, label %block_.L_49044c, label %block_49039f

block_49039f:                                     ; preds = %entry
  %112 = load i32, i32* bitcast (%G_0x7afe14_type* @G_0x7afe14 to i32*), align 8
  %113 = add i32 %112, -4711
  %114 = icmp ult i32 %112, 4711
  %115 = zext i1 %114 to i8
  store i8 %115, i8* %14, align 1
  %116 = and i32 %113, 255
  %117 = tail call i32 @llvm.ctpop.i32(i32 %116)
  %118 = trunc i32 %117 to i8
  %119 = and i8 %118, 1
  %120 = xor i8 %119, 1
  store i8 %120, i8* %21, align 1
  %121 = xor i32 %113, %112
  %122 = lshr i32 %121, 4
  %123 = trunc i32 %122 to i8
  %124 = and i8 %123, 1
  store i8 %124, i8* %26, align 1
  %125 = icmp eq i32 %113, 0
  %126 = zext i1 %125 to i8
  store i8 %126, i8* %29, align 1
  %127 = lshr i32 %113, 31
  %128 = trunc i32 %127 to i8
  store i8 %128, i8* %32, align 1
  %129 = lshr i32 %112, 31
  %130 = xor i32 %127, %129
  %131 = add nuw nsw i32 %130, %129
  %132 = icmp eq i32 %131, 2
  %133 = zext i1 %132 to i8
  store i8 %133, i8* %38, align 1
  %.v31 = select i1 %125, i64 17, i64 42
  %134 = add i64 %111, %.v31
  store i64 %134, i64* %3, align 8
  br i1 %125, label %block_4903b0, label %block_.L_4903c9

block_4903b0:                                     ; preds = %block_49039f
  store i64 ptrtoint (%G__0x586ba0_type* @G__0x586ba0 to i64), i64* %RDI.i44, align 8
  store i8 0, i8* %AL.i142, align 1
  %135 = add i64 %134, -586608
  %136 = add i64 %134, 17
  %137 = load i64, i64* %6, align 8
  %138 = add i64 %137, -8
  %139 = inttoptr i64 %138 to i64*
  store i64 %136, i64* %139, align 8
  store i64 %138, i64* %6, align 8
  store i64 %135, i64* %3, align 8
  %140 = tail call %struct.Memory* @__remill_function_call(%struct.State* nonnull %0, i64 ptrtoint (i64 (i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)* @printf to i64), %struct.Memory* %91)
  %141 = load i64, i64* %RBP.i, align 8
  %142 = add i64 %141, -108
  %143 = load i32, i32* %EAX.i225, align 4
  %144 = load i64, i64* %3, align 8
  %145 = add i64 %144, 3
  store i64 %145, i64* %3, align 8
  %146 = inttoptr i64 %142 to i32*
  store i32 %143, i32* %146, align 4
  %147 = load i64, i64* %3, align 8
  %148 = add i64 %147, 131
  br label %block_.L_490447

block_.L_4903c9:                                  ; preds = %block_49039f
  %149 = add i64 %134, 8
  store i8 0, i8* %14, align 1
  %150 = and i32 %112, 255
  %151 = tail call i32 @llvm.ctpop.i32(i32 %150)
  %152 = trunc i32 %151 to i8
  %153 = and i8 %152, 1
  %154 = xor i8 %153, 1
  store i8 %154, i8* %21, align 1
  store i8 0, i8* %26, align 1
  %155 = icmp eq i32 %112, 0
  %156 = zext i1 %155 to i8
  store i8 %156, i8* %29, align 1
  %157 = trunc i32 %129 to i8
  store i8 %157, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %158 = icmp ne i8 %157, 0
  %.v = select i1 %158, i64 6, i64 42
  %159 = add i64 %149, %.v
  store i64 %159, i64* %3, align 8
  br i1 %158, label %block_4903d7, label %block_.L_4903fb

block_4903d7:                                     ; preds = %block_.L_4903c9
  store i64 ptrtoint (%G__0x586bc9_type* @G__0x586bc9 to i64), i64* %RDI.i44, align 8
  %RAX.i664 = getelementptr inbounds %union.anon, %union.anon* %55, i64 0, i32 0
  %160 = sub i32 0, %112
  %161 = zext i32 %160 to i64
  store i64 %161, i64* %RAX.i664, align 8
  %162 = icmp ne i32 %112, 0
  %163 = zext i1 %162 to i8
  store i8 %163, i8* %14, align 1
  %164 = and i32 %160, 255
  %165 = tail call i32 @llvm.ctpop.i32(i32 %164)
  %166 = trunc i32 %165 to i8
  %167 = and i8 %166, 1
  %168 = xor i8 %167, 1
  store i8 %168, i8* %21, align 1
  %169 = xor i32 %112, %160
  %170 = lshr i32 %169, 4
  %171 = trunc i32 %170 to i8
  %172 = and i8 %171, 1
  store i8 %172, i8* %26, align 1
  %173 = icmp eq i32 %112, 0
  %174 = zext i1 %173 to i8
  store i8 %174, i8* %29, align 1
  %175 = lshr i32 %160, 31
  %176 = trunc i32 %175 to i8
  store i8 %176, i8* %32, align 1
  %177 = add nuw nsw i32 %175, %129
  %178 = icmp eq i32 %177, 2
  %179 = zext i1 %178 to i8
  store i8 %179, i8* %38, align 1
  store i64 %161, i64* %RSI.i27, align 8
  store i8 0, i8* %AL.i142, align 1
  %180 = add i64 %159, -586647
  %181 = add i64 %159, 28
  %182 = load i64, i64* %6, align 8
  %183 = add i64 %182, -8
  %184 = inttoptr i64 %183 to i64*
  store i64 %181, i64* %184, align 8
  store i64 %183, i64* %6, align 8
  store i64 %180, i64* %3, align 8
  %185 = tail call %struct.Memory* @__remill_function_call(%struct.State* nonnull %0, i64 ptrtoint (i64 (i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)* @printf to i64), %struct.Memory* %91)
  %186 = load i64, i64* %RBP.i, align 8
  %187 = add i64 %186, -112
  %188 = load i32, i32* %EAX.i225, align 4
  %189 = load i64, i64* %3, align 8
  %190 = add i64 %189, 3
  store i64 %190, i64* %3, align 8
  %191 = inttoptr i64 %187 to i32*
  store i32 %188, i32* %191, align 4
  %192 = load i64, i64* %3, align 8
  %193 = add i64 %192, 76
  br label %block_.L_490442

block_.L_4903fb:                                  ; preds = %block_.L_4903c9
  store i8 0, i8* %14, align 1
  store i8 %154, i8* %21, align 1
  store i8 0, i8* %26, align 1
  store i8 %156, i8* %29, align 1
  store i8 0, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %.v32 = select i1 %155, i64 46, i64 14
  %194 = add i64 %159, %.v32
  %195 = add i64 %194, 10
  store i64 %195, i64* %3, align 8
  br i1 %155, label %block_.L_490429, label %block_490409

block_490409:                                     ; preds = %block_.L_4903fb
  store i64 ptrtoint (%G__0x586bf4_type* @G__0x586bf4 to i64), i64* %RDI.i44, align 8
  %196 = zext i32 %112 to i64
  store i64 %196, i64* %RSI.i27, align 8
  store i8 0, i8* %AL.i142, align 1
  %197 = add i64 %194, -586697
  %198 = add i64 %194, 24
  %199 = load i64, i64* %6, align 8
  %200 = add i64 %199, -8
  %201 = inttoptr i64 %200 to i64*
  store i64 %198, i64* %201, align 8
  store i64 %200, i64* %6, align 8
  store i64 %197, i64* %3, align 8
  %202 = tail call %struct.Memory* @__remill_function_call(%struct.State* nonnull %0, i64 ptrtoint (i64 (i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)* @printf to i64), %struct.Memory* %91)
  %203 = load i64, i64* %RBP.i, align 8
  %204 = add i64 %203, -116
  %205 = load i32, i32* %EAX.i225, align 4
  %206 = load i64, i64* %3, align 8
  %207 = add i64 %206, 3
  store i64 %207, i64* %3, align 8
  %208 = inttoptr i64 %204 to i32*
  store i32 %205, i32* %208, align 4
  %209 = load i64, i64* %3, align 8
  %210 = add i64 %209, 25
  store i64 %210, i64* %3, align 8
  br label %block_.L_49043d

block_.L_490429:                                  ; preds = %block_.L_4903fb
  store i64 ptrtoint (%G__0x586c1f_type* @G__0x586c1f to i64), i64* %RDI.i44, align 8
  store i8 0, i8* %AL.i142, align 1
  %211 = add i64 %194, -586729
  %212 = add i64 %194, 17
  %213 = load i64, i64* %6, align 8
  %214 = add i64 %213, -8
  %215 = inttoptr i64 %214 to i64*
  store i64 %212, i64* %215, align 8
  store i64 %214, i64* %6, align 8
  store i64 %211, i64* %3, align 8
  %216 = tail call %struct.Memory* @__remill_function_call(%struct.State* nonnull %0, i64 ptrtoint (i64 (i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)* @printf to i64), %struct.Memory* %91)
  %217 = load i64, i64* %RBP.i, align 8
  %218 = add i64 %217, -120
  %219 = load i32, i32* %EAX.i225, align 4
  %220 = load i64, i64* %3, align 8
  %221 = add i64 %220, 3
  store i64 %221, i64* %3, align 8
  %222 = inttoptr i64 %218 to i32*
  store i32 %219, i32* %222, align 4
  %.pre = load i64, i64* %3, align 8
  br label %block_.L_49043d

block_.L_49043d:                                  ; preds = %block_.L_490429, %block_490409
  %223 = phi i64 [ %.pre, %block_.L_490429 ], [ %210, %block_490409 ]
  %MEMORY.0 = phi %struct.Memory* [ %216, %block_.L_490429 ], [ %202, %block_490409 ]
  %224 = add i64 %223, 5
  store i64 %224, i64* %3, align 8
  br label %block_.L_490442

block_.L_490442:                                  ; preds = %block_.L_49043d, %block_4903d7
  %storemerge21 = phi i64 [ %193, %block_4903d7 ], [ %224, %block_.L_49043d ]
  %MEMORY.1 = phi %struct.Memory* [ %185, %block_4903d7 ], [ %MEMORY.0, %block_.L_49043d ]
  %225 = add i64 %storemerge21, 5
  store i64 %225, i64* %3, align 8
  br label %block_.L_490447

block_.L_490447:                                  ; preds = %block_.L_490442, %block_4903b0
  %storemerge = phi i64 [ %148, %block_4903b0 ], [ %225, %block_.L_490442 ]
  %MEMORY.2 = phi %struct.Memory* [ %140, %block_4903b0 ], [ %MEMORY.1, %block_.L_490442 ]
  %226 = add i64 %storemerge, 5
  store i64 %226, i64* %3, align 8
  br label %block_.L_49044c

block_.L_49044c:                                  ; preds = %block_.L_490447, %entry
  %227 = phi i64 [ %111, %entry ], [ %226, %block_.L_490447 ]
  %MEMORY.3 = phi %struct.Memory* [ %91, %entry ], [ %MEMORY.2, %block_.L_490447 ]
  store i64 ptrtoint (%G__0x586073_type* @G__0x586073 to i64), i64* %RDI.i44, align 8
  store i8 0, i8* %AL.i142, align 1
  %228 = add i64 %227, -586764
  %229 = add i64 %227, 17
  %230 = load i64, i64* %6, align 8
  %231 = add i64 %230, -8
  %232 = inttoptr i64 %231 to i64*
  store i64 %229, i64* %232, align 8
  store i64 %231, i64* %6, align 8
  store i64 %228, i64* %3, align 8
  %233 = tail call %struct.Memory* @__remill_function_call(%struct.State* nonnull %0, i64 ptrtoint (i64 (i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)* @printf to i64), %struct.Memory* %MEMORY.3)
  %234 = load i64, i64* %3, align 8
  %235 = load i64, i64* bitcast (%G_0x99c080_type* @G_0x99c080 to i64*), align 8
  store i64 %235, i64* %RDI.i44, align 8
  %236 = load i64, i64* %RBP.i, align 8
  %237 = add i64 %236, -124
  %238 = load i32, i32* %EAX.i225, align 4
  %239 = add i64 %234, 11
  store i64 %239, i64* %3, align 8
  %240 = inttoptr i64 %237 to i32*
  store i32 %238, i32* %240, align 4
  %241 = load i64, i64* %3, align 8
  %242 = add i64 %241, -586568
  %243 = add i64 %241, 5
  %244 = load i64, i64* %6, align 8
  %245 = add i64 %244, -8
  %246 = inttoptr i64 %245 to i64*
  store i64 %243, i64* %246, align 8
  store i64 %245, i64* %6, align 8
  store i64 %242, i64* %3, align 8
  %247 = tail call %struct.Memory* @__remill_function_call(%struct.State* nonnull %0, i64 ptrtoint (i64 (i64)* @fflush to i64), %struct.Memory* %233)
  %248 = load i64, i64* %3, align 8
  store i64 ptrtoint (%G__0x586c43_type* @G__0x586c43 to i64), i64* %RDI.i44, align 8
  %RDX.i603 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %249 = load i64, i64* %RBP.i, align 8
  %250 = add i64 %249, -80
  store i64 %250, i64* %RDX.i603, align 8
  %251 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %RCX.i601 = getelementptr inbounds %union.anon, %union.anon* %251, i64 0, i32 0
  %252 = load i32, i32* bitcast (%G_0xaf2758_type* @G_0xaf2758 to i32*), align 8
  store i8 0, i8* %14, align 1
  %253 = and i32 %252, 255
  %254 = tail call i32 @llvm.ctpop.i32(i32 %253)
  %255 = trunc i32 %254 to i8
  %256 = and i8 %255, 1
  %257 = xor i8 %256, 1
  store i8 %257, i8* %21, align 1
  store i8 0, i8* %26, align 1
  %258 = icmp eq i32 %252, 0
  %259 = zext i1 %258 to i8
  store i8 %259, i8* %29, align 1
  %260 = lshr i32 %252, 31
  %261 = trunc i32 %260 to i8
  store i8 %261, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %262 = select i1 %258, i64 ptrtoint (%G__0x58898d_type* @G__0x58898d to i64), i64 ptrtoint (%G__0x586c3b_type* @G__0x586c3b to i64)
  store i64 %262, i64* %RCX.i601, align 8
  store i64 %262, i64* %RSI.i27, align 8
  %263 = add i64 %249, -128
  %264 = load i32, i32* %EAX.i225, align 4
  %265 = add i64 %248, 52
  store i64 %265, i64* %3, align 8
  %266 = inttoptr i64 %263 to i32*
  store i32 %264, i32* %266, align 4
  %267 = load i64, i64* %3, align 8
  store i8 0, i8* %AL.i142, align 1
  %268 = add i64 %267, -586849
  %269 = add i64 %267, 7
  %270 = load i64, i64* %6, align 8
  %271 = add i64 %270, -8
  %272 = inttoptr i64 %271 to i64*
  store i64 %269, i64* %272, align 8
  store i64 %271, i64* %6, align 8
  store i64 %268, i64* %3, align 8
  %273 = tail call %struct.Memory* @__remill_function_call(%struct.State* nonnull %0, i64 ptrtoint (i64 (i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)* @printf to i64), %struct.Memory* %247)
  %274 = load i64, i64* %3, align 8
  %275 = load i64, i64* bitcast (%G_0x99c080_type* @G_0x99c080 to i64*), align 8
  store i64 %275, i64* %RDI.i44, align 8
  %276 = load i64, i64* %RBP.i, align 8
  %277 = add i64 %276, -132
  %278 = load i32, i32* %EAX.i225, align 4
  %279 = add i64 %274, 14
  store i64 %279, i64* %3, align 8
  %280 = inttoptr i64 %277 to i32*
  store i32 %278, i32* %280, align 4
  %281 = load i64, i64* %3, align 8
  %282 = add i64 %281, -586646
  %283 = add i64 %281, 5
  %284 = load i64, i64* %6, align 8
  %285 = add i64 %284, -8
  %286 = inttoptr i64 %285 to i64*
  store i64 %283, i64* %286, align 8
  store i64 %285, i64* %6, align 8
  store i64 %282, i64* %3, align 8
  %287 = tail call %struct.Memory* @__remill_function_call(%struct.State* nonnull %0, i64 ptrtoint (i64 (i64)* @fflush to i64), %struct.Memory* %273)
  %288 = load i64, i64* %RBP.i, align 8
  %289 = add i64 %288, -4
  %290 = load i64, i64* %3, align 8
  %291 = add i64 %290, 7
  store i64 %291, i64* %3, align 8
  %292 = inttoptr i64 %289 to i32*
  store i32 0, i32* %292, align 4
  %293 = load i64, i64* %RBP.i, align 8
  %294 = add i64 %293, -136
  %295 = load i32, i32* %EAX.i225, align 4
  %296 = load i64, i64* %3, align 8
  %297 = add i64 %296, 6
  store i64 %297, i64* %3, align 8
  %298 = inttoptr i64 %294 to i32*
  store i32 %295, i32* %298, align 4
  %RAX.i570 = getelementptr inbounds %union.anon, %union.anon* %55, i64 0, i32 0
  %CL.i506 = bitcast %union.anon* %251 to i8*
  %.pre24 = load i64, i64* %3, align 8
  br label %block_.L_4904c8

block_.L_4904c8:                                  ; preds = %block_.L_490963, %block_.L_49044c
  %299 = phi i64 [ %.pre24, %block_.L_49044c ], [ %1634, %block_.L_490963 ]
  %MEMORY.4 = phi %struct.Memory* [ %287, %block_.L_49044c ], [ %1596, %block_.L_490963 ]
  %300 = load i64, i64* %RBP.i, align 8
  %301 = add i64 %300, -4
  %302 = add i64 %299, 3
  store i64 %302, i64* %3, align 8
  %303 = inttoptr i64 %301 to i32*
  %304 = load i32, i32* %303, align 4
  %305 = zext i32 %304 to i64
  store i64 %305, i64* %RAX.i570, align 8
  %306 = load i32, i32* bitcast (%G_0x7ae438_type* @G_0x7ae438 to i32*), align 8
  %307 = sub i32 %304, %306
  %308 = icmp ult i32 %304, %306
  %309 = zext i1 %308 to i8
  store i8 %309, i8* %14, align 1
  %310 = and i32 %307, 255
  %311 = tail call i32 @llvm.ctpop.i32(i32 %310)
  %312 = trunc i32 %311 to i8
  %313 = and i8 %312, 1
  %314 = xor i8 %313, 1
  store i8 %314, i8* %21, align 1
  %315 = xor i32 %306, %304
  %316 = xor i32 %315, %307
  %317 = lshr i32 %316, 4
  %318 = trunc i32 %317 to i8
  %319 = and i8 %318, 1
  store i8 %319, i8* %26, align 1
  %320 = icmp eq i32 %307, 0
  %321 = zext i1 %320 to i8
  store i8 %321, i8* %29, align 1
  %322 = lshr i32 %307, 31
  %323 = trunc i32 %322 to i8
  store i8 %323, i8* %32, align 1
  %324 = lshr i32 %304, 31
  %325 = lshr i32 %306, 31
  %326 = xor i32 %325, %324
  %327 = xor i32 %322, %324
  %328 = add nuw nsw i32 %327, %326
  %329 = icmp eq i32 %328, 2
  %330 = zext i1 %329 to i8
  store i8 %330, i8* %38, align 1
  %331 = icmp ne i8 %323, 0
  %332 = xor i1 %331, %329
  %.v33 = select i1 %332, i64 16, i64 1216
  %333 = add i64 %299, %.v33
  store i64 %333, i64* %3, align 8
  br i1 %332, label %block_4904d8, label %block_.L_490988

block_4904d8:                                     ; preds = %block_.L_4904c8
  store i64 ptrtoint (%G__0x586c49_type* @G__0x586c49 to i64), i64* %RDI.i44, align 8
  %334 = zext i32 %306 to i64
  store i64 %334, i64* %RAX.i570, align 8
  %335 = add i64 %333, 20
  store i64 %335, i64* %3, align 8
  %336 = load i32, i32* %303, align 4
  %337 = sub i32 %306, %336
  %338 = zext i32 %337 to i64
  store i64 %338, i64* %RAX.i570, align 8
  %339 = icmp ult i32 %306, %336
  %340 = zext i1 %339 to i8
  store i8 %340, i8* %14, align 1
  %341 = and i32 %337, 255
  %342 = tail call i32 @llvm.ctpop.i32(i32 %341)
  %343 = trunc i32 %342 to i8
  %344 = and i8 %343, 1
  %345 = xor i8 %344, 1
  store i8 %345, i8* %21, align 1
  %346 = xor i32 %336, %306
  %347 = xor i32 %346, %337
  %348 = lshr i32 %347, 4
  %349 = trunc i32 %348 to i8
  %350 = and i8 %349, 1
  store i8 %350, i8* %26, align 1
  %351 = icmp eq i32 %337, 0
  %352 = zext i1 %351 to i8
  store i8 %352, i8* %29, align 1
  %353 = lshr i32 %337, 31
  %354 = trunc i32 %353 to i8
  store i8 %354, i8* %32, align 1
  %355 = lshr i32 %336, 31
  %356 = xor i32 %355, %325
  %357 = xor i32 %353, %325
  %358 = add nuw nsw i32 %357, %356
  %359 = icmp eq i32 %358, 2
  %360 = zext i1 %359 to i8
  store i8 %360, i8* %38, align 1
  store i64 %338, i64* %RSI.i27, align 8
  store i8 0, i8* %AL.i142, align 1
  %361 = add i64 %333, -586904
  %362 = add i64 %333, 29
  %363 = load i64, i64* %6, align 8
  %364 = add i64 %363, -8
  %365 = inttoptr i64 %364 to i64*
  store i64 %362, i64* %365, align 8
  store i64 %364, i64* %6, align 8
  store i64 %361, i64* %3, align 8
  %366 = tail call %struct.Memory* @__remill_function_call(%struct.State* nonnull %0, i64 ptrtoint (i64 (i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)* @printf to i64), %struct.Memory* %MEMORY.4)
  %367 = load i64, i64* %RBP.i, align 8
  %368 = add i64 %367, -84
  %369 = load i64, i64* %3, align 8
  %370 = add i64 %369, 7
  store i64 %370, i64* %3, align 8
  %371 = inttoptr i64 %368 to i32*
  store i32 0, i32* %371, align 4
  %372 = load i64, i64* %RBP.i, align 8
  %373 = add i64 %372, -8
  %374 = load i64, i64* %3, align 8
  %375 = add i64 %374, 7
  store i64 %375, i64* %3, align 8
  %376 = inttoptr i64 %373 to i32*
  store i32 0, i32* %376, align 4
  %377 = load i64, i64* %RBP.i, align 8
  %378 = add i64 %377, -140
  %379 = load i32, i32* %EAX.i225, align 4
  %380 = load i64, i64* %3, align 8
  %381 = add i64 %380, 6
  store i64 %381, i64* %3, align 8
  %382 = inttoptr i64 %378 to i32*
  store i32 %379, i32* %382, align 4
  %.pre25 = load i64, i64* %3, align 8
  br label %block_.L_490509

block_.L_490509:                                  ; preds = %block_.L_49088a, %block_4904d8
  %383 = phi i64 [ %.pre25, %block_4904d8 ], [ %1387, %block_.L_49088a ]
  %MEMORY.5 = phi %struct.Memory* [ %366, %block_4904d8 ], [ %MEMORY.10, %block_.L_49088a ]
  %384 = load i64, i64* %RBP.i, align 8
  %385 = add i64 %384, -8
  %386 = add i64 %383, 3
  store i64 %386, i64* %3, align 8
  %387 = inttoptr i64 %385 to i32*
  %388 = load i32, i32* %387, align 4
  %389 = zext i32 %388 to i64
  store i64 %389, i64* %RAX.i570, align 8
  %390 = load i32, i32* bitcast (%G_0x7ae438_type* @G_0x7ae438 to i32*), align 8
  %391 = sub i32 %388, %390
  %392 = icmp ult i32 %388, %390
  %393 = zext i1 %392 to i8
  store i8 %393, i8* %14, align 1
  %394 = and i32 %391, 255
  %395 = tail call i32 @llvm.ctpop.i32(i32 %394)
  %396 = trunc i32 %395 to i8
  %397 = and i8 %396, 1
  %398 = xor i8 %397, 1
  store i8 %398, i8* %21, align 1
  %399 = xor i32 %390, %388
  %400 = xor i32 %399, %391
  %401 = lshr i32 %400, 4
  %402 = trunc i32 %401 to i8
  %403 = and i8 %402, 1
  store i8 %403, i8* %26, align 1
  %404 = icmp eq i32 %391, 0
  %405 = zext i1 %404 to i8
  store i8 %405, i8* %29, align 1
  %406 = lshr i32 %391, 31
  %407 = trunc i32 %406 to i8
  store i8 %407, i8* %32, align 1
  %408 = lshr i32 %388, 31
  %409 = lshr i32 %390, 31
  %410 = xor i32 %409, %408
  %411 = xor i32 %406, %408
  %412 = add nuw nsw i32 %411, %410
  %413 = icmp eq i32 %412, 2
  %414 = zext i1 %413 to i8
  store i8 %414, i8* %38, align 1
  %415 = icmp ne i8 %407, 0
  %416 = xor i1 %415, %413
  %.v34 = select i1 %416, i64 16, i64 916
  %417 = add i64 %383, %.v34
  store i64 %417, i64* %3, align 8
  br i1 %416, label %block_490519, label %block_.L_49089d

block_490519:                                     ; preds = %block_.L_490509
  %418 = load i32, i32* bitcast (%G_0xaf2750_type* @G_0xaf2750 to i32*), align 8
  %419 = zext i32 %418 to i64
  store i64 %419, i64* %RAX.i570, align 8
  %420 = add i64 %384, -4
  %421 = add i64 %417, 10
  store i64 %421, i64* %3, align 8
  %422 = inttoptr i64 %420 to i32*
  %423 = load i32, i32* %422, align 4
  %424 = sub i32 %418, %423
  %425 = icmp ult i32 %418, %423
  %426 = zext i1 %425 to i8
  store i8 %426, i8* %14, align 1
  %427 = and i32 %424, 255
  %428 = tail call i32 @llvm.ctpop.i32(i32 %427)
  %429 = trunc i32 %428 to i8
  %430 = and i8 %429, 1
  %431 = xor i8 %430, 1
  store i8 %431, i8* %21, align 1
  %432 = xor i32 %423, %418
  %433 = xor i32 %432, %424
  %434 = lshr i32 %433, 4
  %435 = trunc i32 %434 to i8
  %436 = and i8 %435, 1
  store i8 %436, i8* %26, align 1
  %437 = icmp eq i32 %424, 0
  %438 = zext i1 %437 to i8
  store i8 %438, i8* %29, align 1
  %439 = lshr i32 %424, 31
  %440 = trunc i32 %439 to i8
  store i8 %440, i8* %32, align 1
  %441 = lshr i32 %418, 31
  %442 = lshr i32 %423, 31
  %443 = xor i32 %442, %441
  %444 = xor i32 %439, %441
  %445 = add nuw nsw i32 %444, %443
  %446 = icmp eq i32 %445, 2
  %447 = zext i1 %446 to i8
  store i8 %447, i8* %38, align 1
  %.v37 = select i1 %437, i64 16, i64 44
  %448 = add i64 %417, %.v37
  store i64 %448, i64* %3, align 8
  br i1 %437, label %block_490529, label %block_.L_490545

block_490529:                                     ; preds = %block_490519
  %449 = load i32, i32* bitcast (%G_0xaf2754_type* @G_0xaf2754 to i32*), align 8
  %450 = zext i32 %449 to i64
  store i64 %450, i64* %RAX.i570, align 8
  %451 = add i64 %448, 10
  store i64 %451, i64* %3, align 8
  %452 = load i32, i32* %387, align 4
  %453 = sub i32 %449, %452
  %454 = icmp ult i32 %449, %452
  %455 = zext i1 %454 to i8
  store i8 %455, i8* %14, align 1
  %456 = and i32 %453, 255
  %457 = tail call i32 @llvm.ctpop.i32(i32 %456)
  %458 = trunc i32 %457 to i8
  %459 = and i8 %458, 1
  %460 = xor i8 %459, 1
  store i8 %460, i8* %21, align 1
  %461 = xor i32 %452, %449
  %462 = xor i32 %461, %453
  %463 = lshr i32 %462, 4
  %464 = trunc i32 %463 to i8
  %465 = and i8 %464, 1
  store i8 %465, i8* %26, align 1
  %466 = icmp eq i32 %453, 0
  %467 = zext i1 %466 to i8
  store i8 %467, i8* %29, align 1
  %468 = lshr i32 %453, 31
  %469 = trunc i32 %468 to i8
  store i8 %469, i8* %32, align 1
  %470 = lshr i32 %449, 31
  %471 = lshr i32 %452, 31
  %472 = xor i32 %471, %470
  %473 = xor i32 %468, %470
  %474 = add nuw nsw i32 %473, %472
  %475 = icmp eq i32 %474, 2
  %476 = zext i1 %475 to i8
  store i8 %476, i8* %38, align 1
  %.v38 = select i1 %466, i64 16, i64 28
  %477 = add i64 %448, %.v38
  store i64 %477, i64* %3, align 8
  br i1 %466, label %block_490539, label %block_.L_490545

block_490539:                                     ; preds = %block_490529
  %478 = add i64 %384, -88
  %479 = add i64 %477, 7
  store i64 %479, i64* %3, align 8
  %480 = inttoptr i64 %478 to i32*
  store i32 128, i32* %480, align 4
  %481 = load i64, i64* %3, align 8
  %482 = add i64 %481, 12
  store i64 %482, i64* %3, align 8
  br label %block_.L_49054c

block_.L_490545:                                  ; preds = %block_490529, %block_490519
  %483 = phi i64 [ %477, %block_490529 ], [ %448, %block_490519 ]
  %484 = add i64 %384, -88
  %485 = add i64 %483, 7
  store i64 %485, i64* %3, align 8
  %486 = inttoptr i64 %484 to i32*
  store i32 0, i32* %486, align 4
  %.pre28 = load i64, i64* %3, align 8
  br label %block_.L_49054c

block_.L_49054c:                                  ; preds = %block_.L_490545, %block_490539
  %487 = phi i64 [ %.pre28, %block_.L_490545 ], [ %482, %block_490539 ]
  %488 = load i64, i64* %RBP.i, align 8
  %489 = add i64 %488, -4
  %490 = add i64 %487, 4
  store i64 %490, i64* %3, align 8
  %491 = inttoptr i64 %489 to i32*
  %492 = load i32, i32* %491, align 4
  %493 = mul i32 %492, 20
  %494 = add i32 %493, 21
  %495 = zext i32 %494 to i64
  store i64 %495, i64* %RAX.i570, align 8
  %496 = icmp ugt i32 %493, -22
  %497 = zext i1 %496 to i8
  store i8 %497, i8* %14, align 1
  %498 = and i32 %494, 253
  %499 = tail call i32 @llvm.ctpop.i32(i32 %498)
  %500 = trunc i32 %499 to i8
  %501 = and i8 %500, 1
  %502 = xor i8 %501, 1
  store i8 %502, i8* %21, align 1
  %503 = xor i32 %493, 16
  %504 = xor i32 %503, %494
  %505 = lshr i32 %504, 4
  %506 = trunc i32 %505 to i8
  %507 = and i8 %506, 1
  store i8 %507, i8* %26, align 1
  store i8 0, i8* %29, align 1
  %508 = lshr i32 %494, 31
  %509 = trunc i32 %508 to i8
  store i8 %509, i8* %32, align 1
  %510 = lshr i32 %493, 31
  %511 = xor i32 %508, %510
  %512 = add nuw nsw i32 %511, %508
  %513 = icmp eq i32 %512, 2
  %514 = zext i1 %513 to i8
  store i8 %514, i8* %38, align 1
  %515 = add i64 %488, -8
  %516 = add i64 %487, 10
  store i64 %516, i64* %3, align 8
  %517 = inttoptr i64 %515 to i32*
  %518 = load i32, i32* %517, align 4
  %519 = add i32 %518, %494
  %520 = zext i32 %519 to i64
  store i64 %520, i64* %RAX.i570, align 8
  %521 = icmp ult i32 %519, %494
  %522 = icmp ult i32 %519, %518
  %523 = or i1 %521, %522
  %524 = zext i1 %523 to i8
  store i8 %524, i8* %14, align 1
  %525 = and i32 %519, 255
  %526 = tail call i32 @llvm.ctpop.i32(i32 %525)
  %527 = trunc i32 %526 to i8
  %528 = and i8 %527, 1
  %529 = xor i8 %528, 1
  store i8 %529, i8* %21, align 1
  %530 = xor i32 %518, %494
  %531 = xor i32 %530, %519
  %532 = lshr i32 %531, 4
  %533 = trunc i32 %532 to i8
  %534 = and i8 %533, 1
  store i8 %534, i8* %26, align 1
  %535 = icmp eq i32 %519, 0
  %536 = zext i1 %535 to i8
  store i8 %536, i8* %29, align 1
  %537 = lshr i32 %519, 31
  %538 = trunc i32 %537 to i8
  store i8 %538, i8* %32, align 1
  %539 = lshr i32 %518, 31
  %540 = xor i32 %537, %508
  %541 = xor i32 %537, %539
  %542 = add nuw nsw i32 %540, %541
  %543 = icmp eq i32 %542, 2
  %544 = zext i1 %543 to i8
  store i8 %544, i8* %38, align 1
  store i64 %520, i64* %RDI.i44, align 8
  %545 = add i64 %487, -447084
  %546 = add i64 %487, 17
  %547 = load i64, i64* %6, align 8
  %548 = add i64 %547, -8
  %549 = inttoptr i64 %548 to i64*
  store i64 %546, i64* %549, align 8
  store i64 %548, i64* %6, align 8
  store i64 %545, i64* %3, align 8
  %call2_490558 = tail call %struct.Memory* @sub_4232e0.dragon_status(%struct.State* nonnull %0, i64 %545, %struct.Memory* %MEMORY.5)
  %550 = load i64, i64* %3, align 8
  store i64 0, i64* %RDI.i44, align 8
  store i8 0, i8* %CL.i506, align 1
  %551 = load i32, i32* %EAX.i225, align 4
  store i8 0, i8* %14, align 1
  %552 = and i32 %551, 255
  %553 = tail call i32 @llvm.ctpop.i32(i32 %552)
  %554 = trunc i32 %553 to i8
  %555 = and i8 %554, 1
  %556 = xor i8 %555, 1
  store i8 %556, i8* %21, align 1
  store i8 0, i8* %26, align 1
  %557 = icmp eq i32 %551, 0
  %558 = zext i1 %557 to i8
  store i8 %558, i8* %29, align 1
  %559 = lshr i32 %551, 31
  %560 = trunc i32 %559 to i8
  store i8 %560, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %561 = load i64, i64* %RBP.i, align 8
  %562 = add i64 %561, -141
  %563 = add i64 %550, 14
  store i64 %563, i64* %3, align 8
  %564 = inttoptr i64 %562 to i8*
  store i8 0, i8* %564, align 1
  %565 = load i64, i64* %3, align 8
  %566 = add i64 %565, 23
  %567 = add i64 %565, 6
  %568 = load i8, i8* %29, align 1
  %569 = icmp eq i8 %568, 0
  %570 = select i1 %569, i64 %566, i64 %567
  store i64 %570, i64* %3, align 8
  br i1 %569, label %block_.L_490582, label %block_490571

block_490571:                                     ; preds = %block_.L_49054c
  %571 = load i32, i32* bitcast (%G_0xaf274c_type* @G_0xaf274c to i32*), align 8
  store i8 0, i8* %14, align 1
  %572 = and i32 %571, 255
  %573 = tail call i32 @llvm.ctpop.i32(i32 %572)
  %574 = trunc i32 %573 to i8
  %575 = and i8 %574, 1
  %576 = xor i8 %575, 1
  store i8 %576, i8* %21, align 1
  store i8 0, i8* %26, align 1
  %577 = icmp eq i32 %571, 0
  %578 = zext i1 %577 to i8
  store i8 %578, i8* %29, align 1
  %579 = lshr i32 %571, 31
  %580 = trunc i32 %579 to i8
  store i8 %580, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %581 = xor i1 %577, true
  %582 = zext i1 %581 to i8
  store i8 %582, i8* %AL.i142, align 1
  %583 = load i64, i64* %RBP.i, align 8
  %584 = add i64 %583, -141
  %585 = add i64 %570, 17
  store i64 %585, i64* %3, align 8
  %586 = inttoptr i64 %584 to i8*
  store i8 %582, i8* %586, align 1
  %.pre29 = load i64, i64* %3, align 8
  br label %block_.L_490582

block_.L_490582:                                  ; preds = %block_490571, %block_.L_49054c
  %587 = phi i64 [ %.pre29, %block_490571 ], [ %566, %block_.L_49054c ]
  %588 = load i64, i64* %RBP.i, align 8
  %589 = add i64 %588, -141
  %590 = add i64 %587, 6
  store i64 %590, i64* %3, align 8
  %591 = inttoptr i64 %589 to i8*
  %592 = load i8, i8* %591, align 1
  %593 = and i8 %592, 1
  store i8 %593, i8* %AL.i142, align 1
  store i8 0, i8* %14, align 1
  %594 = zext i8 %593 to i32
  %595 = tail call i32 @llvm.ctpop.i32(i32 %594)
  %596 = trunc i32 %595 to i8
  %597 = xor i8 %596, 1
  store i8 %597, i8* %21, align 1
  %598 = xor i8 %593, 1
  store i8 %598, i8* %29, align 1
  store i8 0, i8* %32, align 1
  store i8 0, i8* %38, align 1
  store i8 0, i8* %26, align 1
  %599 = zext i8 %593 to i64
  store i64 %599, i64* %RCX.i601, align 8
  %600 = add i64 %588, -92
  %601 = zext i8 %593 to i32
  %602 = add i64 %587, 14
  store i64 %602, i64* %3, align 8
  %603 = inttoptr i64 %600 to i32*
  store i32 %601, i32* %603, align 4
  %604 = load i64, i64* %RBP.i, align 8
  %605 = add i64 %604, -4
  %606 = load i64, i64* %3, align 8
  %607 = add i64 %606, 3
  store i64 %607, i64* %3, align 8
  %608 = inttoptr i64 %605 to i32*
  %609 = load i32, i32* %608, align 4
  %610 = zext i32 %609 to i64
  store i64 %610, i64* %RDX.i603, align 8
  %611 = mul nuw nsw i64 %610, 5
  %612 = and i64 %611, 4294967295
  store i64 %612, i64* %RCX.i601, align 8
  %613 = add i64 %604, -8
  %614 = add i64 %606, 11
  store i64 %614, i64* %3, align 8
  %615 = inttoptr i64 %613 to i32*
  %616 = load i32, i32* %615, align 4
  %617 = zext i32 %616 to i64
  store i64 %617, i64* %RSI.i27, align 8
  %618 = and i64 %611, 4294967295
  store i64 %618, i64* %RDI.i44, align 8
  %619 = mul nuw nsw i64 %610, 20
  %620 = add nuw nsw i64 %617, 21
  %621 = add nuw nsw i64 %620, %619
  %622 = and i64 %621, 4294967295
  store i64 %622, i64* %RCX.i601, align 8
  %sext = shl i64 %621, 32
  %623 = ashr exact i64 %sext, 32
  store i64 %623, i64* %RDX.i603, align 8
  %624 = add nsw i64 %623, 12099168
  %625 = add i64 %606, 29
  store i64 %625, i64* %3, align 8
  %626 = inttoptr i64 %624 to i8*
  %627 = load i8, i8* %626, align 1
  %628 = zext i8 %627 to i64
  store i64 %628, i64* %RCX.i601, align 8
  %629 = add i64 %604, -88
  %630 = add i64 %606, 32
  store i64 %630, i64* %3, align 8
  %631 = inttoptr i64 %629 to i32*
  %632 = load i32, i32* %631, align 4
  %633 = zext i32 %632 to i64
  store i64 %633, i64* %RSI.i27, align 8
  %634 = zext i8 %627 to i32
  %635 = add i32 %632, %634
  %636 = zext i32 %635 to i64
  store i64 %636, i64* %RCX.i601, align 8
  %637 = icmp ult i32 %635, %634
  %638 = icmp ult i32 %635, %632
  %639 = or i1 %637, %638
  %640 = zext i1 %639 to i8
  store i8 %640, i8* %14, align 1
  %641 = and i32 %635, 255
  %642 = tail call i32 @llvm.ctpop.i32(i32 %641)
  %643 = trunc i32 %642 to i8
  %644 = and i8 %643, 1
  %645 = xor i8 %644, 1
  store i8 %645, i8* %21, align 1
  %646 = xor i64 %633, %628
  %647 = trunc i64 %646 to i32
  %648 = xor i32 %647, %635
  %649 = lshr i32 %648, 4
  %650 = trunc i32 %649 to i8
  %651 = and i8 %650, 1
  store i8 %651, i8* %26, align 1
  %652 = icmp eq i32 %635, 0
  %653 = zext i1 %652 to i8
  store i8 %653, i8* %29, align 1
  %654 = lshr i32 %635, 31
  %655 = trunc i32 %654 to i8
  store i8 %655, i8* %32, align 1
  %656 = lshr i32 %632, 31
  %657 = xor i32 %654, %656
  %658 = add nuw nsw i32 %654, %657
  %659 = icmp eq i32 %658, 2
  %660 = zext i1 %659 to i8
  store i8 %660, i8* %38, align 1
  %661 = load i64, i64* %RBP.i, align 8
  %662 = add i64 %661, -84
  %663 = add i64 %606, 37
  store i64 %663, i64* %3, align 8
  %664 = inttoptr i64 %662 to i32*
  %665 = load i32, i32* %664, align 4
  %666 = zext i32 %665 to i64
  store i64 %666, i64* %RSI.i27, align 8
  %667 = add i32 %665, %635
  %668 = zext i32 %667 to i64
  store i64 %668, i64* %RCX.i601, align 8
  %669 = icmp ult i32 %667, %635
  %670 = icmp ult i32 %667, %665
  %671 = or i1 %669, %670
  %672 = zext i1 %671 to i8
  store i8 %672, i8* %14, align 1
  %673 = and i32 %667, 255
  %674 = tail call i32 @llvm.ctpop.i32(i32 %673)
  %675 = trunc i32 %674 to i8
  %676 = and i8 %675, 1
  %677 = xor i8 %676, 1
  store i8 %677, i8* %21, align 1
  %678 = xor i32 %665, %635
  %679 = xor i32 %678, %667
  %680 = lshr i32 %679, 4
  %681 = trunc i32 %680 to i8
  %682 = and i8 %681, 1
  store i8 %682, i8* %26, align 1
  %683 = icmp eq i32 %667, 0
  %684 = zext i1 %683 to i8
  store i8 %684, i8* %29, align 1
  %685 = lshr i32 %667, 31
  %686 = trunc i32 %685 to i8
  store i8 %686, i8* %32, align 1
  %687 = lshr i32 %665, 31
  %688 = xor i32 %685, %654
  %689 = xor i32 %685, %687
  %690 = add nuw nsw i32 %688, %689
  %691 = icmp eq i32 %690, 2
  %692 = zext i1 %691 to i8
  store i8 %692, i8* %38, align 1
  %693 = add i64 %661, -148
  %694 = add i64 %606, 45
  store i64 %694, i64* %3, align 8
  %695 = inttoptr i64 %693 to i32*
  store i32 %667, i32* %695, align 4
  %696 = load i64, i64* %3, align 8
  %697 = load i8, i8* %29, align 1
  %698 = icmp ne i8 %697, 0
  %.v44 = select i1 %698, i64 231, i64 6
  %699 = add i64 %696, %.v44
  store i64 %699, i64* %3, align 8
  %cmpBr_4905bd = icmp eq i8 %697, 1
  br i1 %cmpBr_4905bd, label %block_.L_4906a4, label %block_4905c3

block_4905c3:                                     ; preds = %block_.L_490582
  %700 = load i64, i64* %RBP.i, align 8
  %701 = add i64 %700, -148
  %702 = add i64 %699, 11
  store i64 %702, i64* %3, align 8
  %703 = inttoptr i64 %701 to i32*
  %704 = load i32, i32* %703, align 4
  %705 = add i32 %704, -1
  %706 = zext i32 %705 to i64
  store i64 %706, i64* %RAX.i570, align 8
  %707 = icmp eq i32 %704, 0
  %708 = zext i1 %707 to i8
  store i8 %708, i8* %14, align 1
  %709 = and i32 %705, 255
  %710 = tail call i32 @llvm.ctpop.i32(i32 %709)
  %711 = trunc i32 %710 to i8
  %712 = and i8 %711, 1
  %713 = xor i8 %712, 1
  store i8 %713, i8* %21, align 1
  %714 = xor i32 %705, %704
  %715 = lshr i32 %714, 4
  %716 = trunc i32 %715 to i8
  %717 = and i8 %716, 1
  store i8 %717, i8* %26, align 1
  %718 = icmp eq i32 %705, 0
  %719 = zext i1 %718 to i8
  store i8 %719, i8* %29, align 1
  %720 = lshr i32 %705, 31
  %721 = trunc i32 %720 to i8
  store i8 %721, i8* %32, align 1
  %722 = lshr i32 %704, 31
  %723 = xor i32 %720, %722
  %724 = add nuw nsw i32 %723, %722
  %725 = icmp eq i32 %724, 2
  %726 = zext i1 %725 to i8
  store i8 %726, i8* %38, align 1
  %727 = add i64 %700, -152
  %728 = add i64 %699, 20
  store i64 %728, i64* %3, align 8
  %729 = inttoptr i64 %727 to i32*
  store i32 %705, i32* %729, align 4
  %730 = load i64, i64* %3, align 8
  %731 = load i8, i8* %29, align 1
  %732 = icmp ne i8 %731, 0
  %.v45 = select i1 %732, i64 323, i64 6
  %733 = add i64 %730, %.v45
  store i64 %733, i64* %3, align 8
  %cmpBr_4905d7 = icmp eq i8 %731, 1
  br i1 %cmpBr_4905d7, label %block_.L_49071a, label %block_4905dd

block_4905dd:                                     ; preds = %block_4905c3
  %734 = load i64, i64* %RBP.i, align 8
  %735 = add i64 %734, -148
  %736 = add i64 %733, 11
  store i64 %736, i64* %3, align 8
  %737 = inttoptr i64 %735 to i32*
  %738 = load i32, i32* %737, align 4
  %739 = add i32 %738, -2
  %740 = zext i32 %739 to i64
  store i64 %740, i64* %RAX.i570, align 8
  %741 = icmp ult i32 %738, 2
  %742 = zext i1 %741 to i8
  store i8 %742, i8* %14, align 1
  %743 = and i32 %739, 255
  %744 = tail call i32 @llvm.ctpop.i32(i32 %743)
  %745 = trunc i32 %744 to i8
  %746 = and i8 %745, 1
  %747 = xor i8 %746, 1
  store i8 %747, i8* %21, align 1
  %748 = xor i32 %739, %738
  %749 = lshr i32 %748, 4
  %750 = trunc i32 %749 to i8
  %751 = and i8 %750, 1
  store i8 %751, i8* %26, align 1
  %752 = icmp eq i32 %739, 0
  %753 = zext i1 %752 to i8
  store i8 %753, i8* %29, align 1
  %754 = lshr i32 %739, 31
  %755 = trunc i32 %754 to i8
  store i8 %755, i8* %32, align 1
  %756 = lshr i32 %738, 31
  %757 = xor i32 %754, %756
  %758 = add nuw nsw i32 %757, %756
  %759 = icmp eq i32 %758, 2
  %760 = zext i1 %759 to i8
  store i8 %760, i8* %38, align 1
  %761 = add i64 %734, -156
  %762 = add i64 %733, 20
  store i64 %762, i64* %3, align 8
  %763 = inttoptr i64 %761 to i32*
  store i32 %739, i32* %763, align 4
  %764 = load i64, i64* %3, align 8
  %765 = load i8, i8* %29, align 1
  %766 = icmp ne i8 %765, 0
  %.v46 = select i1 %766, i64 243, i64 6
  %767 = add i64 %764, %.v46
  store i64 %767, i64* %3, align 8
  %cmpBr_4905f1 = icmp eq i8 %765, 1
  br i1 %cmpBr_4905f1, label %block_.L_4906e4, label %block_4905f7

block_4905f7:                                     ; preds = %block_4905dd
  %768 = load i64, i64* %RBP.i, align 8
  %769 = add i64 %768, -148
  %770 = add i64 %767, 11
  store i64 %770, i64* %3, align 8
  %771 = inttoptr i64 %769 to i32*
  %772 = load i32, i32* %771, align 4
  %773 = add i32 %772, -128
  %774 = zext i32 %773 to i64
  store i64 %774, i64* %RAX.i570, align 8
  %775 = icmp ult i32 %772, 128
  %776 = zext i1 %775 to i8
  store i8 %776, i8* %14, align 1
  %777 = and i32 %773, 255
  %778 = tail call i32 @llvm.ctpop.i32(i32 %777)
  %779 = trunc i32 %778 to i8
  %780 = and i8 %779, 1
  %781 = xor i8 %780, 1
  store i8 %781, i8* %21, align 1
  %782 = xor i32 %773, %772
  %783 = lshr i32 %782, 4
  %784 = trunc i32 %783 to i8
  %785 = and i8 %784, 1
  store i8 %785, i8* %26, align 1
  %786 = icmp eq i32 %773, 0
  %787 = zext i1 %786 to i8
  store i8 %787, i8* %29, align 1
  %788 = lshr i32 %773, 31
  %789 = trunc i32 %788 to i8
  store i8 %789, i8* %32, align 1
  %790 = lshr i32 %772, 31
  %791 = xor i32 %788, %790
  %792 = add nuw nsw i32 %791, %790
  %793 = icmp eq i32 %792, 2
  %794 = zext i1 %793 to i8
  store i8 %794, i8* %38, align 1
  %795 = add i64 %768, -160
  %796 = add i64 %767, 22
  store i64 %796, i64* %3, align 8
  %797 = inttoptr i64 %795 to i32*
  store i32 %773, i32* %797, align 4
  %798 = load i64, i64* %3, align 8
  %799 = load i8, i8* %29, align 1
  %800 = icmp ne i8 %799, 0
  %.v47 = select i1 %800, i64 151, i64 6
  %801 = add i64 %798, %.v47
  store i64 %801, i64* %3, align 8
  %cmpBr_49060d = icmp eq i8 %799, 1
  br i1 %cmpBr_49060d, label %block_.L_4906a4, label %block_490613

block_490613:                                     ; preds = %block_4905f7
  %802 = load i64, i64* %RBP.i, align 8
  %803 = add i64 %802, -148
  %804 = add i64 %801, 11
  store i64 %804, i64* %3, align 8
  %805 = inttoptr i64 %803 to i32*
  %806 = load i32, i32* %805, align 4
  %807 = add i32 %806, -129
  %808 = zext i32 %807 to i64
  store i64 %808, i64* %RAX.i570, align 8
  %809 = icmp ult i32 %806, 129
  %810 = zext i1 %809 to i8
  store i8 %810, i8* %14, align 1
  %811 = and i32 %807, 255
  %812 = tail call i32 @llvm.ctpop.i32(i32 %811)
  %813 = trunc i32 %812 to i8
  %814 = and i8 %813, 1
  %815 = xor i8 %814, 1
  store i8 %815, i8* %21, align 1
  %816 = xor i32 %807, %806
  %817 = lshr i32 %816, 4
  %818 = trunc i32 %817 to i8
  %819 = and i8 %818, 1
  store i8 %819, i8* %26, align 1
  %820 = icmp eq i32 %807, 0
  %821 = zext i1 %820 to i8
  store i8 %821, i8* %29, align 1
  %822 = lshr i32 %807, 31
  %823 = trunc i32 %822 to i8
  store i8 %823, i8* %32, align 1
  %824 = lshr i32 %806, 31
  %825 = xor i32 %822, %824
  %826 = add nuw nsw i32 %825, %824
  %827 = icmp eq i32 %826, 2
  %828 = zext i1 %827 to i8
  store i8 %828, i8* %38, align 1
  %829 = add i64 %802, -164
  %830 = add i64 %801, 22
  store i64 %830, i64* %3, align 8
  %831 = inttoptr i64 %829 to i32*
  store i32 %807, i32* %831, align 4
  %832 = load i64, i64* %3, align 8
  %833 = load i8, i8* %29, align 1
  %834 = icmp ne i8 %833, 0
  %.v48 = select i1 %834, i64 335, i64 6
  %835 = add i64 %832, %.v48
  store i64 %835, i64* %3, align 8
  %cmpBr_490629 = icmp eq i8 %833, 1
  br i1 %cmpBr_490629, label %block_.L_490778, label %block_49062f

block_49062f:                                     ; preds = %block_490613
  %836 = load i64, i64* %RBP.i, align 8
  %837 = add i64 %836, -148
  %838 = add i64 %835, 11
  store i64 %838, i64* %3, align 8
  %839 = inttoptr i64 %837 to i32*
  %840 = load i32, i32* %839, align 4
  %841 = add i32 %840, -130
  %842 = zext i32 %841 to i64
  store i64 %842, i64* %RAX.i570, align 8
  %843 = icmp ult i32 %840, 130
  %844 = zext i1 %843 to i8
  store i8 %844, i8* %14, align 1
  %845 = and i32 %841, 255
  %846 = tail call i32 @llvm.ctpop.i32(i32 %845)
  %847 = trunc i32 %846 to i8
  %848 = and i8 %847, 1
  %849 = xor i8 %848, 1
  store i8 %849, i8* %21, align 1
  %850 = xor i32 %841, %840
  %851 = lshr i32 %850, 4
  %852 = trunc i32 %851 to i8
  %853 = and i8 %852, 1
  store i8 %853, i8* %26, align 1
  %854 = icmp eq i32 %841, 0
  %855 = zext i1 %854 to i8
  store i8 %855, i8* %29, align 1
  %856 = lshr i32 %841, 31
  %857 = trunc i32 %856 to i8
  store i8 %857, i8* %32, align 1
  %858 = lshr i32 %840, 31
  %859 = xor i32 %856, %858
  %860 = add nuw nsw i32 %859, %858
  %861 = icmp eq i32 %860, 2
  %862 = zext i1 %861 to i8
  store i8 %862, i8* %38, align 1
  %863 = add i64 %836, -168
  %864 = add i64 %835, 22
  store i64 %864, i64* %3, align 8
  %865 = inttoptr i64 %863 to i32*
  store i32 %841, i32* %865, align 4
  %866 = load i64, i64* %3, align 8
  %867 = load i8, i8* %29, align 1
  %868 = icmp ne i8 %867, 0
  %.v49 = select i1 %868, i64 267, i64 6
  %869 = add i64 %866, %.v49
  store i64 %869, i64* %3, align 8
  %cmpBr_490645 = icmp eq i8 %867, 1
  br i1 %cmpBr_490645, label %block_.L_490750, label %block_49064b

block_49064b:                                     ; preds = %block_49062f
  %870 = load i64, i64* %RBP.i, align 8
  %871 = add i64 %870, -148
  %872 = add i64 %869, 11
  store i64 %872, i64* %3, align 8
  %873 = inttoptr i64 %871 to i32*
  %874 = load i32, i32* %873, align 4
  %875 = add i32 %874, -256
  %876 = zext i32 %875 to i64
  store i64 %876, i64* %RAX.i570, align 8
  %877 = icmp ult i32 %874, 256
  %878 = zext i1 %877 to i8
  store i8 %878, i8* %14, align 1
  %879 = and i32 %875, 255
  %880 = tail call i32 @llvm.ctpop.i32(i32 %879)
  %881 = trunc i32 %880 to i8
  %882 = and i8 %881, 1
  %883 = xor i8 %882, 1
  store i8 %883, i8* %21, align 1
  %884 = xor i32 %875, %874
  %885 = lshr i32 %884, 4
  %886 = trunc i32 %885 to i8
  %887 = and i8 %886, 1
  store i8 %887, i8* %26, align 1
  %888 = icmp eq i32 %875, 0
  %889 = zext i1 %888 to i8
  store i8 %889, i8* %29, align 1
  %890 = lshr i32 %875, 31
  %891 = trunc i32 %890 to i8
  store i8 %891, i8* %32, align 1
  %892 = lshr i32 %874, 31
  %893 = xor i32 %890, %892
  %894 = add nuw nsw i32 %893, %892
  %895 = icmp eq i32 %894, 2
  %896 = zext i1 %895 to i8
  store i8 %896, i8* %38, align 1
  %897 = add i64 %870, -172
  %898 = add i64 %869, 22
  store i64 %898, i64* %3, align 8
  %899 = inttoptr i64 %897 to i32*
  store i32 %875, i32* %899, align 4
  %900 = load i64, i64* %3, align 8
  %901 = load i8, i8* %29, align 1
  %902 = icmp ne i8 %901, 0
  %.v50 = select i1 %902, i64 319, i64 6
  %903 = add i64 %900, %.v50
  store i64 %903, i64* %3, align 8
  %cmpBr_490661 = icmp eq i8 %901, 1
  br i1 %cmpBr_490661, label %block_.L_4907a0, label %block_490667

block_490667:                                     ; preds = %block_49064b
  %904 = load i64, i64* %RBP.i, align 8
  %905 = add i64 %904, -148
  %906 = add i64 %903, 11
  store i64 %906, i64* %3, align 8
  %907 = inttoptr i64 %905 to i32*
  %908 = load i32, i32* %907, align 4
  %909 = add i32 %908, -257
  %910 = zext i32 %909 to i64
  store i64 %910, i64* %RAX.i570, align 8
  %911 = icmp ult i32 %908, 257
  %912 = zext i1 %911 to i8
  store i8 %912, i8* %14, align 1
  %913 = and i32 %909, 255
  %914 = tail call i32 @llvm.ctpop.i32(i32 %913)
  %915 = trunc i32 %914 to i8
  %916 = and i8 %915, 1
  %917 = xor i8 %916, 1
  store i8 %917, i8* %21, align 1
  %918 = xor i32 %909, %908
  %919 = lshr i32 %918, 4
  %920 = trunc i32 %919 to i8
  %921 = and i8 %920, 1
  store i8 %921, i8* %26, align 1
  %922 = icmp eq i32 %909, 0
  %923 = zext i1 %922 to i8
  store i8 %923, i8* %29, align 1
  %924 = lshr i32 %909, 31
  %925 = trunc i32 %924 to i8
  store i8 %925, i8* %32, align 1
  %926 = lshr i32 %908, 31
  %927 = xor i32 %924, %926
  %928 = add nuw nsw i32 %927, %926
  %929 = icmp eq i32 %928, 2
  %930 = zext i1 %929 to i8
  store i8 %930, i8* %38, align 1
  %931 = add i64 %904, -176
  %932 = add i64 %903, 22
  store i64 %932, i64* %3, align 8
  %933 = inttoptr i64 %931 to i32*
  store i32 %909, i32* %933, align 4
  %934 = load i64, i64* %3, align 8
  %935 = load i8, i8* %29, align 1
  %936 = icmp ne i8 %935, 0
  %.v51 = select i1 %936, i64 409, i64 6
  %937 = add i64 %934, %.v51
  store i64 %937, i64* %3, align 8
  %cmpBr_49067d = icmp eq i8 %935, 1
  br i1 %cmpBr_49067d, label %block_.L_490816, label %block_490683

block_490683:                                     ; preds = %block_490667
  %938 = load i64, i64* %RBP.i, align 8
  %939 = add i64 %938, -148
  %940 = add i64 %937, 11
  store i64 %940, i64* %3, align 8
  %941 = inttoptr i64 %939 to i32*
  %942 = load i32, i32* %941, align 4
  %943 = add i32 %942, -258
  %944 = zext i32 %943 to i64
  store i64 %944, i64* %RAX.i570, align 8
  %945 = icmp ult i32 %942, 258
  %946 = zext i1 %945 to i8
  store i8 %946, i8* %14, align 1
  %947 = and i32 %943, 255
  %948 = tail call i32 @llvm.ctpop.i32(i32 %947)
  %949 = trunc i32 %948 to i8
  %950 = and i8 %949, 1
  %951 = xor i8 %950, 1
  store i8 %951, i8* %21, align 1
  %952 = xor i32 %943, %942
  %953 = lshr i32 %952, 4
  %954 = trunc i32 %953 to i8
  %955 = and i8 %954, 1
  store i8 %955, i8* %26, align 1
  %956 = icmp eq i32 %943, 0
  %957 = zext i1 %956 to i8
  store i8 %957, i8* %29, align 1
  %958 = lshr i32 %943, 31
  %959 = trunc i32 %958 to i8
  store i8 %959, i8* %32, align 1
  %960 = lshr i32 %942, 31
  %961 = xor i32 %958, %960
  %962 = add nuw nsw i32 %961, %960
  %963 = icmp eq i32 %962, 2
  %964 = zext i1 %963 to i8
  store i8 %964, i8* %38, align 1
  %965 = add i64 %938, -180
  %966 = add i64 %937, 22
  store i64 %966, i64* %3, align 8
  %967 = inttoptr i64 %965 to i32*
  store i32 %943, i32* %967, align 4
  %968 = load i64, i64* %3, align 8
  %969 = load i8, i8* %29, align 1
  %970 = icmp ne i8 %969, 0
  %.v52 = select i1 %970, i64 327, i64 6
  %971 = add i64 %968, %.v52
  store i64 %971, i64* %3, align 8
  %cmpBr_490699 = icmp eq i8 %969, 1
  br i1 %cmpBr_490699, label %block_.L_4907e0, label %block_49069f

block_49069f:                                     ; preds = %block_490683
  store i64 ptrtoint (%G__0x586c53_type* @G__0x586c53 to i64), i64* %RSI.i27, align 8
  %972 = load i64, i64* bitcast (%G_0x99c0a0_type* @G_0x99c0a0 to i64*), align 8
  store i64 %972, i64* %RDI.i44, align 8
  %973 = load i64, i64* %RBP.i, align 8
  %974 = add i64 %973, -4
  %975 = add i64 %971, 451
  store i64 %975, i64* %3, align 8
  %976 = inttoptr i64 %974 to i32*
  %977 = load i32, i32* %976, align 4
  %978 = mul i32 %977, 20
  %979 = add i32 %978, 21
  %980 = zext i32 %979 to i64
  store i64 %980, i64* %RAX.i570, align 8
  %981 = icmp ugt i32 %978, -22
  %982 = zext i1 %981 to i8
  store i8 %982, i8* %14, align 1
  %983 = and i32 %979, 253
  %984 = tail call i32 @llvm.ctpop.i32(i32 %983)
  %985 = trunc i32 %984 to i8
  %986 = and i8 %985, 1
  %987 = xor i8 %986, 1
  store i8 %987, i8* %21, align 1
  %988 = xor i32 %978, 16
  %989 = xor i32 %988, %979
  %990 = lshr i32 %989, 4
  %991 = trunc i32 %990 to i8
  %992 = and i8 %991, 1
  store i8 %992, i8* %26, align 1
  store i8 0, i8* %29, align 1
  %993 = lshr i32 %979, 31
  %994 = trunc i32 %993 to i8
  store i8 %994, i8* %32, align 1
  %995 = lshr i32 %978, 31
  %996 = xor i32 %993, %995
  %997 = add nuw nsw i32 %996, %993
  %998 = icmp eq i32 %997, 2
  %999 = zext i1 %998 to i8
  store i8 %999, i8* %38, align 1
  %1000 = add i64 %973, -8
  %1001 = add i64 %971, 457
  store i64 %1001, i64* %3, align 8
  %1002 = inttoptr i64 %1000 to i32*
  %1003 = load i32, i32* %1002, align 4
  %1004 = add i32 %1003, %979
  %1005 = zext i32 %1004 to i64
  store i64 %1005, i64* %RAX.i570, align 8
  %1006 = icmp ult i32 %1004, %979
  %1007 = icmp ult i32 %1004, %1003
  %1008 = or i1 %1006, %1007
  %1009 = zext i1 %1008 to i8
  store i8 %1009, i8* %14, align 1
  %1010 = and i32 %1004, 255
  %1011 = tail call i32 @llvm.ctpop.i32(i32 %1010)
  %1012 = trunc i32 %1011 to i8
  %1013 = and i8 %1012, 1
  %1014 = xor i8 %1013, 1
  store i8 %1014, i8* %21, align 1
  %1015 = xor i32 %1003, %979
  %1016 = xor i32 %1015, %1004
  %1017 = lshr i32 %1016, 4
  %1018 = trunc i32 %1017 to i8
  %1019 = and i8 %1018, 1
  store i8 %1019, i8* %26, align 1
  %1020 = icmp eq i32 %1004, 0
  %1021 = zext i1 %1020 to i8
  store i8 %1021, i8* %29, align 1
  %1022 = lshr i32 %1004, 31
  %1023 = trunc i32 %1022 to i8
  store i8 %1023, i8* %32, align 1
  %1024 = lshr i32 %1003, 31
  %1025 = xor i32 %1022, %993
  %1026 = xor i32 %1022, %1024
  %1027 = add nuw nsw i32 %1025, %1026
  %1028 = icmp eq i32 %1027, 2
  %1029 = zext i1 %1028 to i8
  store i8 %1029, i8* %38, align 1
  %1030 = sext i32 %1004 to i64
  store i64 %1030, i64* %RCX.i601, align 8
  %1031 = add nsw i64 %1030, 12099168
  %1032 = add i64 %971, 468
  store i64 %1032, i64* %3, align 8
  %1033 = inttoptr i64 %1031 to i8*
  %1034 = load i8, i8* %1033, align 1
  %1035 = zext i8 %1034 to i64
  store i64 %1035, i64* %RDX.i603, align 8
  store i8 0, i8* %AL.i142, align 1
  %1036 = add i64 %971, -587215
  %1037 = add i64 %971, 475
  %1038 = load i64, i64* %6, align 8
  %1039 = add i64 %1038, -8
  %1040 = inttoptr i64 %1039 to i64*
  store i64 %1037, i64* %1040, align 8
  store i64 %1039, i64* %6, align 8
  store i64 %1036, i64* %3, align 8
  %1041 = tail call %struct.Memory* @__remill_function_call(%struct.State* nonnull %0, i64 ptrtoint (i64 (i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)* @fprintf to i64), %struct.Memory* %MEMORY.5)
  %1042 = load i64, i64* %3, align 8
  store i64 1, i64* %RDI.i44, align 8
  %1043 = load i64, i64* %RBP.i, align 8
  %1044 = add i64 %1043, -216
  %1045 = load i32, i32* %EAX.i225, align 4
  %1046 = add i64 %1042, 11
  store i64 %1046, i64* %3, align 8
  %1047 = inttoptr i64 %1044 to i32*
  store i32 %1045, i32* %1047, align 4
  %1048 = load i64, i64* %3, align 8
  %1049 = add i64 %1048, -587429
  %1050 = add i64 %1048, 5
  %1051 = load i64, i64* %6, align 8
  %1052 = add i64 %1051, -8
  %1053 = inttoptr i64 %1052 to i64*
  store i64 %1050, i64* %1053, align 8
  store i64 %1052, i64* %6, align 8
  store i64 %1049, i64* %3, align 8
  %1054 = tail call %struct.Memory* @__remill_function_call(%struct.State* nonnull %0, i64 ptrtoint (i64 (i64)* @exit to i64), %struct.Memory* %1041)
  %.pre30 = load i64, i64* %3, align 8
  br label %block_.L_49088a

block_.L_4906a4:                                  ; preds = %block_4905f7, %block_.L_490582
  %1055 = phi i64 [ %801, %block_4905f7 ], [ %699, %block_.L_490582 ]
  store i64 ptrtoint (%G__0x579d92_type* @G__0x579d92 to i64), i64* %RDI.i44, align 8
  store i64 ptrtoint (%G__0xaf2760_type* @G__0xaf2760 to i64), i64* %RAX.i570, align 8
  %1056 = load i64, i64* %RBP.i, align 8
  %1057 = add i64 %1056, -4
  %1058 = add i64 %1055, 24
  store i64 %1058, i64* %3, align 8
  %1059 = inttoptr i64 %1057 to i32*
  %1060 = load i32, i32* %1059, align 4
  %1061 = sext i32 %1060 to i64
  %1062 = mul nsw i64 %1061, 19
  store i64 %1062, i64* %RCX.i601, align 8
  %1063 = lshr i64 %1062, 63
  %1064 = add i64 %1062, ptrtoint (%G__0xaf2760_type* @G__0xaf2760 to i64)
  store i64 %1064, i64* %RAX.i570, align 8
  %1065 = icmp ult i64 %1064, ptrtoint (%G__0xaf2760_type* @G__0xaf2760 to i64)
  %1066 = icmp ult i64 %1064, %1062
  %1067 = or i1 %1065, %1066
  %1068 = zext i1 %1067 to i8
  store i8 %1068, i8* %14, align 1
  %1069 = trunc i64 %1064 to i32
  %1070 = and i32 %1069, 255
  %1071 = tail call i32 @llvm.ctpop.i32(i32 %1070)
  %1072 = trunc i32 %1071 to i8
  %1073 = and i8 %1072, 1
  %1074 = xor i8 %1073, 1
  store i8 %1074, i8* %21, align 1
  %1075 = xor i64 %1062, ptrtoint (%G__0xaf2760_type* @G__0xaf2760 to i64)
  %1076 = xor i64 %1075, %1064
  %1077 = lshr i64 %1076, 4
  %1078 = trunc i64 %1077 to i8
  %1079 = and i8 %1078, 1
  store i8 %1079, i8* %26, align 1
  %1080 = icmp eq i64 %1064, 0
  %1081 = zext i1 %1080 to i8
  store i8 %1081, i8* %29, align 1
  %1082 = lshr i64 %1064, 63
  %1083 = trunc i64 %1082 to i8
  store i8 %1083, i8* %32, align 1
  %1084 = xor i64 %1082, lshr (i64 ptrtoint (%G__0xaf2760_type* @G__0xaf2760 to i64), i64 63)
  %1085 = xor i64 %1082, %1063
  %1086 = add nuw nsw i64 %1084, %1085
  %1087 = icmp eq i64 %1086, 2
  %1088 = zext i1 %1087 to i8
  store i8 %1088, i8* %38, align 1
  %1089 = add i64 %1056, -8
  %1090 = add i64 %1055, 35
  store i64 %1090, i64* %3, align 8
  %1091 = inttoptr i64 %1089 to i32*
  %1092 = load i32, i32* %1091, align 4
  %1093 = sext i32 %1092 to i64
  store i64 %1093, i64* %RCX.i601, align 8
  %1094 = add i64 %1064, %1093
  %1095 = add i64 %1055, 39
  store i64 %1095, i64* %3, align 8
  %1096 = inttoptr i64 %1094 to i8*
  %1097 = load i8, i8* %1096, align 1
  %1098 = sext i8 %1097 to i64
  %1099 = and i64 %1098, 4294967295
  store i64 %1099, i64* %RSI.i27, align 8
  store i8 0, i8* %AL.i142, align 1
  %1100 = add i64 %1055, -587364
  %1101 = add i64 %1055, 46
  %1102 = load i64, i64* %6, align 8
  %1103 = add i64 %1102, -8
  %1104 = inttoptr i64 %1103 to i64*
  store i64 %1101, i64* %1104, align 8
  store i64 %1103, i64* %6, align 8
  store i64 %1100, i64* %3, align 8
  %1105 = tail call %struct.Memory* @__remill_function_call(%struct.State* nonnull %0, i64 ptrtoint (i64 (i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)* @printf to i64), %struct.Memory* %MEMORY.5)
  %1106 = load i64, i64* %RBP.i, align 8
  %1107 = add i64 %1106, -84
  %1108 = load i64, i64* %3, align 8
  %1109 = add i64 %1108, 7
  store i64 %1109, i64* %3, align 8
  %1110 = inttoptr i64 %1107 to i32*
  store i32 0, i32* %1110, align 4
  %1111 = load i64, i64* %RBP.i, align 8
  %1112 = add i64 %1111, -184
  %1113 = load i32, i32* %EAX.i225, align 4
  %1114 = load i64, i64* %3, align 8
  %1115 = add i64 %1114, 6
  store i64 %1115, i64* %3, align 8
  %1116 = inttoptr i64 %1112 to i32*
  store i32 %1113, i32* %1116, align 4
  %1117 = load i64, i64* %3, align 8
  %1118 = add i64 %1117, 427
  store i64 %1118, i64* %3, align 8
  br label %block_.L_49088a

block_.L_4906e4:                                  ; preds = %block_4905dd
  store i64 ptrtoint (%G__0x579d92_type* @G__0x579d92 to i64), i64* %RDI.i44, align 8
  store i64 88, i64* %RAX.i570, align 8
  store i64 120, i64* %RCX.i601, align 8
  %1119 = load i64, i64* %RBP.i, align 8
  %1120 = add i64 %1119, -92
  %1121 = add i64 %767, 24
  store i64 %1121, i64* %3, align 8
  %1122 = inttoptr i64 %1120 to i32*
  %1123 = load i32, i32* %1122, align 4
  store i8 0, i8* %14, align 1
  %1124 = and i32 %1123, 255
  %1125 = tail call i32 @llvm.ctpop.i32(i32 %1124)
  %1126 = trunc i32 %1125 to i8
  %1127 = and i8 %1126, 1
  %1128 = xor i8 %1127, 1
  store i8 %1128, i8* %21, align 1
  store i8 0, i8* %26, align 1
  %1129 = icmp eq i32 %1123, 0
  %1130 = zext i1 %1129 to i8
  store i8 %1130, i8* %29, align 1
  %1131 = lshr i32 %1123, 31
  %1132 = trunc i32 %1131 to i8
  store i8 %1132, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %1133 = select i1 %1129, i64 88, i64 120
  store i64 %1133, i64* %RAX.i570, align 8
  store i64 %1133, i64* %RSI.i27, align 8
  store i8 0, i8* %AL.i142, align 1
  %1134 = add i64 %767, -587428
  %1135 = add i64 %767, 36
  %1136 = load i64, i64* %6, align 8
  %1137 = add i64 %1136, -8
  %1138 = inttoptr i64 %1137 to i64*
  store i64 %1135, i64* %1138, align 8
  store i64 %1137, i64* %6, align 8
  store i64 %1134, i64* %3, align 8
  %1139 = tail call %struct.Memory* @__remill_function_call(%struct.State* nonnull %0, i64 ptrtoint (i64 (i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)* @printf to i64), %struct.Memory* %MEMORY.5)
  %1140 = load i64, i64* %RBP.i, align 8
  %1141 = add i64 %1140, -84
  %1142 = load i64, i64* %3, align 8
  %1143 = add i64 %1142, 7
  store i64 %1143, i64* %3, align 8
  %1144 = inttoptr i64 %1141 to i32*
  store i32 0, i32* %1144, align 4
  %1145 = load i64, i64* %RBP.i, align 8
  %1146 = add i64 %1145, -188
  %1147 = load i32, i32* %EAX.i225, align 4
  %1148 = load i64, i64* %3, align 8
  %1149 = add i64 %1148, 6
  store i64 %1149, i64* %3, align 8
  %1150 = inttoptr i64 %1146 to i32*
  store i32 %1147, i32* %1150, align 4
  %1151 = load i64, i64* %3, align 8
  %1152 = add i64 %1151, 373
  store i64 %1152, i64* %3, align 8
  br label %block_.L_49088a

block_.L_49071a:                                  ; preds = %block_4905c3
  store i64 ptrtoint (%G__0x579d92_type* @G__0x579d92 to i64), i64* %RDI.i44, align 8
  store i64 79, i64* %RAX.i570, align 8
  store i64 111, i64* %RCX.i601, align 8
  %1153 = load i64, i64* %RBP.i, align 8
  %1154 = add i64 %1153, -92
  %1155 = add i64 %733, 24
  store i64 %1155, i64* %3, align 8
  %1156 = inttoptr i64 %1154 to i32*
  %1157 = load i32, i32* %1156, align 4
  store i8 0, i8* %14, align 1
  %1158 = and i32 %1157, 255
  %1159 = tail call i32 @llvm.ctpop.i32(i32 %1158)
  %1160 = trunc i32 %1159 to i8
  %1161 = and i8 %1160, 1
  %1162 = xor i8 %1161, 1
  store i8 %1162, i8* %21, align 1
  store i8 0, i8* %26, align 1
  %1163 = icmp eq i32 %1157, 0
  %1164 = zext i1 %1163 to i8
  store i8 %1164, i8* %29, align 1
  %1165 = lshr i32 %1157, 31
  %1166 = trunc i32 %1165 to i8
  store i8 %1166, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %1167 = select i1 %1163, i64 79, i64 111
  store i64 %1167, i64* %RAX.i570, align 8
  store i64 %1167, i64* %RSI.i27, align 8
  store i8 0, i8* %AL.i142, align 1
  %1168 = add i64 %733, -587482
  %1169 = add i64 %733, 36
  %1170 = load i64, i64* %6, align 8
  %1171 = add i64 %1170, -8
  %1172 = inttoptr i64 %1171 to i64*
  store i64 %1169, i64* %1172, align 8
  store i64 %1171, i64* %6, align 8
  store i64 %1168, i64* %3, align 8
  %1173 = tail call %struct.Memory* @__remill_function_call(%struct.State* nonnull %0, i64 ptrtoint (i64 (i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)* @printf to i64), %struct.Memory* %MEMORY.5)
  %1174 = load i64, i64* %RBP.i, align 8
  %1175 = add i64 %1174, -84
  %1176 = load i64, i64* %3, align 8
  %1177 = add i64 %1176, 7
  store i64 %1177, i64* %3, align 8
  %1178 = inttoptr i64 %1175 to i32*
  store i32 0, i32* %1178, align 4
  %1179 = load i64, i64* %RBP.i, align 8
  %1180 = add i64 %1179, -192
  %1181 = load i32, i32* %EAX.i225, align 4
  %1182 = load i64, i64* %3, align 8
  %1183 = add i64 %1182, 6
  store i64 %1183, i64* %3, align 8
  %1184 = inttoptr i64 %1180 to i32*
  store i32 %1181, i32* %1184, align 4
  %1185 = load i64, i64* %3, align 8
  %1186 = add i64 %1185, 319
  store i64 %1186, i64* %3, align 8
  br label %block_.L_49088a

block_.L_490750:                                  ; preds = %block_49062f
  store i64 ptrtoint (%G__0x586c4e_type* @G__0x586c4e to i64), i64* %RDI.i44, align 8
  store i64 88, i64* %RSI.i27, align 8
  store i8 0, i8* %AL.i142, align 1
  %1187 = add i64 %869, -587536
  %1188 = add i64 %869, 22
  %1189 = load i64, i64* %6, align 8
  %1190 = add i64 %1189, -8
  %1191 = inttoptr i64 %1190 to i64*
  store i64 %1188, i64* %1191, align 8
  store i64 %1190, i64* %6, align 8
  store i64 %1187, i64* %3, align 8
  %1192 = tail call %struct.Memory* @__remill_function_call(%struct.State* nonnull %0, i64 ptrtoint (i64 (i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)* @printf to i64), %struct.Memory* %MEMORY.5)
  %1193 = load i64, i64* %RBP.i, align 8
  %1194 = add i64 %1193, -84
  %1195 = load i64, i64* %3, align 8
  %1196 = add i64 %1195, 7
  store i64 %1196, i64* %3, align 8
  %1197 = inttoptr i64 %1194 to i32*
  store i32 256, i32* %1197, align 4
  %1198 = load i64, i64* %RBP.i, align 8
  %1199 = add i64 %1198, -196
  %1200 = load i32, i32* %EAX.i225, align 4
  %1201 = load i64, i64* %3, align 8
  %1202 = add i64 %1201, 6
  store i64 %1202, i64* %3, align 8
  %1203 = inttoptr i64 %1199 to i32*
  store i32 %1200, i32* %1203, align 4
  %1204 = load i64, i64* %3, align 8
  %1205 = add i64 %1204, 279
  store i64 %1205, i64* %3, align 8
  br label %block_.L_49088a

block_.L_490778:                                  ; preds = %block_490613
  store i64 ptrtoint (%G__0x586c4e_type* @G__0x586c4e to i64), i64* %RDI.i44, align 8
  store i64 79, i64* %RSI.i27, align 8
  store i8 0, i8* %AL.i142, align 1
  %1206 = add i64 %835, -587576
  %1207 = add i64 %835, 22
  %1208 = load i64, i64* %6, align 8
  %1209 = add i64 %1208, -8
  %1210 = inttoptr i64 %1209 to i64*
  store i64 %1207, i64* %1210, align 8
  store i64 %1209, i64* %6, align 8
  store i64 %1206, i64* %3, align 8
  %1211 = tail call %struct.Memory* @__remill_function_call(%struct.State* nonnull %0, i64 ptrtoint (i64 (i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)* @printf to i64), %struct.Memory* %MEMORY.5)
  %1212 = load i64, i64* %RBP.i, align 8
  %1213 = add i64 %1212, -84
  %1214 = load i64, i64* %3, align 8
  %1215 = add i64 %1214, 7
  store i64 %1215, i64* %3, align 8
  %1216 = inttoptr i64 %1213 to i32*
  store i32 256, i32* %1216, align 4
  %1217 = load i64, i64* %RBP.i, align 8
  %1218 = add i64 %1217, -200
  %1219 = load i32, i32* %EAX.i225, align 4
  %1220 = load i64, i64* %3, align 8
  %1221 = add i64 %1220, 6
  store i64 %1221, i64* %3, align 8
  %1222 = inttoptr i64 %1218 to i32*
  store i32 %1219, i32* %1222, align 4
  %1223 = load i64, i64* %3, align 8
  %1224 = add i64 %1223, 239
  store i64 %1224, i64* %3, align 8
  br label %block_.L_49088a

block_.L_4907a0:                                  ; preds = %block_49064b
  store i64 ptrtoint (%G__0x579d93_type* @G__0x579d93 to i64), i64* %RDI.i44, align 8
  store i64 ptrtoint (%G__0xaf2760_type* @G__0xaf2760 to i64), i64* %RAX.i570, align 8
  %1225 = load i64, i64* %RBP.i, align 8
  %1226 = add i64 %1225, -4
  %1227 = add i64 %903, 24
  store i64 %1227, i64* %3, align 8
  %1228 = inttoptr i64 %1226 to i32*
  %1229 = load i32, i32* %1228, align 4
  %1230 = sext i32 %1229 to i64
  %1231 = mul nsw i64 %1230, 19
  store i64 %1231, i64* %RCX.i601, align 8
  %1232 = lshr i64 %1231, 63
  %1233 = add i64 %1231, ptrtoint (%G__0xaf2760_type* @G__0xaf2760 to i64)
  store i64 %1233, i64* %RAX.i570, align 8
  %1234 = icmp ult i64 %1233, ptrtoint (%G__0xaf2760_type* @G__0xaf2760 to i64)
  %1235 = icmp ult i64 %1233, %1231
  %1236 = or i1 %1234, %1235
  %1237 = zext i1 %1236 to i8
  store i8 %1237, i8* %14, align 1
  %1238 = trunc i64 %1233 to i32
  %1239 = and i32 %1238, 255
  %1240 = tail call i32 @llvm.ctpop.i32(i32 %1239)
  %1241 = trunc i32 %1240 to i8
  %1242 = and i8 %1241, 1
  %1243 = xor i8 %1242, 1
  store i8 %1243, i8* %21, align 1
  %1244 = xor i64 %1231, ptrtoint (%G__0xaf2760_type* @G__0xaf2760 to i64)
  %1245 = xor i64 %1244, %1233
  %1246 = lshr i64 %1245, 4
  %1247 = trunc i64 %1246 to i8
  %1248 = and i8 %1247, 1
  store i8 %1248, i8* %26, align 1
  %1249 = icmp eq i64 %1233, 0
  %1250 = zext i1 %1249 to i8
  store i8 %1250, i8* %29, align 1
  %1251 = lshr i64 %1233, 63
  %1252 = trunc i64 %1251 to i8
  store i8 %1252, i8* %32, align 1
  %1253 = xor i64 %1251, lshr (i64 ptrtoint (%G__0xaf2760_type* @G__0xaf2760 to i64), i64 63)
  %1254 = xor i64 %1251, %1232
  %1255 = add nuw nsw i64 %1253, %1254
  %1256 = icmp eq i64 %1255, 2
  %1257 = zext i1 %1256 to i8
  store i8 %1257, i8* %38, align 1
  %1258 = add i64 %1225, -8
  %1259 = add i64 %903, 35
  store i64 %1259, i64* %3, align 8
  %1260 = inttoptr i64 %1258 to i32*
  %1261 = load i32, i32* %1260, align 4
  %1262 = sext i32 %1261 to i64
  store i64 %1262, i64* %RCX.i601, align 8
  %1263 = add i64 %1233, %1262
  %1264 = add i64 %903, 39
  store i64 %1264, i64* %3, align 8
  %1265 = inttoptr i64 %1263 to i8*
  %1266 = load i8, i8* %1265, align 1
  %1267 = sext i8 %1266 to i64
  %1268 = and i64 %1267, 4294967295
  store i64 %1268, i64* %RSI.i27, align 8
  store i8 0, i8* %AL.i142, align 1
  %1269 = add i64 %903, -587616
  %1270 = add i64 %903, 46
  %1271 = load i64, i64* %6, align 8
  %1272 = add i64 %1271, -8
  %1273 = inttoptr i64 %1272 to i64*
  store i64 %1270, i64* %1273, align 8
  store i64 %1272, i64* %6, align 8
  store i64 %1269, i64* %3, align 8
  %1274 = tail call %struct.Memory* @__remill_function_call(%struct.State* nonnull %0, i64 ptrtoint (i64 (i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)* @printf to i64), %struct.Memory* %MEMORY.5)
  %1275 = load i64, i64* %RBP.i, align 8
  %1276 = add i64 %1275, -84
  %1277 = load i64, i64* %3, align 8
  %1278 = add i64 %1277, 7
  store i64 %1278, i64* %3, align 8
  %1279 = inttoptr i64 %1276 to i32*
  store i32 0, i32* %1279, align 4
  %1280 = load i64, i64* %RBP.i, align 8
  %1281 = add i64 %1280, -204
  %1282 = load i32, i32* %EAX.i225, align 4
  %1283 = load i64, i64* %3, align 8
  %1284 = add i64 %1283, 6
  store i64 %1284, i64* %3, align 8
  %1285 = inttoptr i64 %1281 to i32*
  store i32 %1282, i32* %1285, align 4
  %1286 = load i64, i64* %3, align 8
  %1287 = add i64 %1286, 175
  store i64 %1287, i64* %3, align 8
  br label %block_.L_49088a

block_.L_4907e0:                                  ; preds = %block_490683
  store i64 ptrtoint (%G__0x579d93_type* @G__0x579d93 to i64), i64* %RDI.i44, align 8
  store i64 88, i64* %RAX.i570, align 8
  store i64 120, i64* %RCX.i601, align 8
  %1288 = load i64, i64* %RBP.i, align 8
  %1289 = add i64 %1288, -92
  %1290 = add i64 %971, 24
  store i64 %1290, i64* %3, align 8
  %1291 = inttoptr i64 %1289 to i32*
  %1292 = load i32, i32* %1291, align 4
  store i8 0, i8* %14, align 1
  %1293 = and i32 %1292, 255
  %1294 = tail call i32 @llvm.ctpop.i32(i32 %1293)
  %1295 = trunc i32 %1294 to i8
  %1296 = and i8 %1295, 1
  %1297 = xor i8 %1296, 1
  store i8 %1297, i8* %21, align 1
  store i8 0, i8* %26, align 1
  %1298 = icmp eq i32 %1292, 0
  %1299 = zext i1 %1298 to i8
  store i8 %1299, i8* %29, align 1
  %1300 = lshr i32 %1292, 31
  %1301 = trunc i32 %1300 to i8
  store i8 %1301, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %1302 = select i1 %1298, i64 88, i64 120
  store i64 %1302, i64* %RAX.i570, align 8
  store i64 %1302, i64* %RSI.i27, align 8
  store i8 0, i8* %AL.i142, align 1
  %1303 = add i64 %971, -587680
  %1304 = add i64 %971, 36
  %1305 = load i64, i64* %6, align 8
  %1306 = add i64 %1305, -8
  %1307 = inttoptr i64 %1306 to i64*
  store i64 %1304, i64* %1307, align 8
  store i64 %1306, i64* %6, align 8
  store i64 %1303, i64* %3, align 8
  %1308 = tail call %struct.Memory* @__remill_function_call(%struct.State* nonnull %0, i64 ptrtoint (i64 (i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)* @printf to i64), %struct.Memory* %MEMORY.5)
  %1309 = load i64, i64* %RBP.i, align 8
  %1310 = add i64 %1309, -84
  %1311 = load i64, i64* %3, align 8
  %1312 = add i64 %1311, 7
  store i64 %1312, i64* %3, align 8
  %1313 = inttoptr i64 %1310 to i32*
  store i32 0, i32* %1313, align 4
  %1314 = load i64, i64* %RBP.i, align 8
  %1315 = add i64 %1314, -208
  %1316 = load i32, i32* %EAX.i225, align 4
  %1317 = load i64, i64* %3, align 8
  %1318 = add i64 %1317, 6
  store i64 %1318, i64* %3, align 8
  %1319 = inttoptr i64 %1315 to i32*
  store i32 %1316, i32* %1319, align 4
  %1320 = load i64, i64* %3, align 8
  %1321 = add i64 %1320, 121
  store i64 %1321, i64* %3, align 8
  br label %block_.L_49088a

block_.L_490816:                                  ; preds = %block_490667
  store i64 ptrtoint (%G__0x579d93_type* @G__0x579d93 to i64), i64* %RDI.i44, align 8
  store i64 79, i64* %RAX.i570, align 8
  store i64 111, i64* %RCX.i601, align 8
  %1322 = load i64, i64* %RBP.i, align 8
  %1323 = add i64 %1322, -92
  %1324 = add i64 %937, 24
  store i64 %1324, i64* %3, align 8
  %1325 = inttoptr i64 %1323 to i32*
  %1326 = load i32, i32* %1325, align 4
  store i8 0, i8* %14, align 1
  %1327 = and i32 %1326, 255
  %1328 = tail call i32 @llvm.ctpop.i32(i32 %1327)
  %1329 = trunc i32 %1328 to i8
  %1330 = and i8 %1329, 1
  %1331 = xor i8 %1330, 1
  store i8 %1331, i8* %21, align 1
  store i8 0, i8* %26, align 1
  %1332 = icmp eq i32 %1326, 0
  %1333 = zext i1 %1332 to i8
  store i8 %1333, i8* %29, align 1
  %1334 = lshr i32 %1326, 31
  %1335 = trunc i32 %1334 to i8
  store i8 %1335, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %1336 = select i1 %1332, i64 79, i64 111
  store i64 %1336, i64* %RAX.i570, align 8
  store i64 %1336, i64* %RSI.i27, align 8
  store i8 0, i8* %AL.i142, align 1
  %1337 = add i64 %937, -587734
  %1338 = add i64 %937, 36
  %1339 = load i64, i64* %6, align 8
  %1340 = add i64 %1339, -8
  %1341 = inttoptr i64 %1340 to i64*
  store i64 %1338, i64* %1341, align 8
  store i64 %1340, i64* %6, align 8
  store i64 %1337, i64* %3, align 8
  %1342 = tail call %struct.Memory* @__remill_function_call(%struct.State* nonnull %0, i64 ptrtoint (i64 (i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)* @printf to i64), %struct.Memory* %MEMORY.5)
  %1343 = load i64, i64* %RBP.i, align 8
  %1344 = add i64 %1343, -84
  %1345 = load i64, i64* %3, align 8
  %1346 = add i64 %1345, 7
  store i64 %1346, i64* %3, align 8
  %1347 = inttoptr i64 %1344 to i32*
  store i32 0, i32* %1347, align 4
  %1348 = load i64, i64* %RBP.i, align 8
  %1349 = add i64 %1348, -212
  %1350 = load i32, i32* %EAX.i225, align 4
  %1351 = load i64, i64* %3, align 8
  %1352 = add i64 %1351, 6
  store i64 %1352, i64* %3, align 8
  %1353 = inttoptr i64 %1349 to i32*
  store i32 %1350, i32* %1353, align 4
  %1354 = load i64, i64* %3, align 8
  %1355 = add i64 %1354, 67
  store i64 %1355, i64* %3, align 8
  br label %block_.L_49088a

block_.L_49088a:                                  ; preds = %block_49069f, %block_.L_490816, %block_.L_4907e0, %block_.L_4907a0, %block_.L_490778, %block_.L_490750, %block_.L_49071a, %block_.L_4906e4, %block_.L_4906a4
  %1356 = phi i64 [ %1118, %block_.L_4906a4 ], [ %1186, %block_.L_49071a ], [ %1152, %block_.L_4906e4 ], [ %1224, %block_.L_490778 ], [ %1205, %block_.L_490750 ], [ %1287, %block_.L_4907a0 ], [ %1355, %block_.L_490816 ], [ %1321, %block_.L_4907e0 ], [ %.pre30, %block_49069f ]
  %MEMORY.10 = phi %struct.Memory* [ %1105, %block_.L_4906a4 ], [ %1173, %block_.L_49071a ], [ %1139, %block_.L_4906e4 ], [ %1211, %block_.L_490778 ], [ %1192, %block_.L_490750 ], [ %1274, %block_.L_4907a0 ], [ %1342, %block_.L_490816 ], [ %1308, %block_.L_4907e0 ], [ %1054, %block_49069f ]
  %1357 = load i64, i64* %RBP.i, align 8
  %1358 = add i64 %1357, -8
  %1359 = add i64 %1356, 8
  store i64 %1359, i64* %3, align 8
  %1360 = inttoptr i64 %1358 to i32*
  %1361 = load i32, i32* %1360, align 4
  %1362 = add i32 %1361, 1
  %1363 = zext i32 %1362 to i64
  store i64 %1363, i64* %RAX.i570, align 8
  %1364 = icmp eq i32 %1361, -1
  %1365 = icmp eq i32 %1362, 0
  %1366 = or i1 %1364, %1365
  %1367 = zext i1 %1366 to i8
  store i8 %1367, i8* %14, align 1
  %1368 = and i32 %1362, 255
  %1369 = tail call i32 @llvm.ctpop.i32(i32 %1368)
  %1370 = trunc i32 %1369 to i8
  %1371 = and i8 %1370, 1
  %1372 = xor i8 %1371, 1
  store i8 %1372, i8* %21, align 1
  %1373 = xor i32 %1362, %1361
  %1374 = lshr i32 %1373, 4
  %1375 = trunc i32 %1374 to i8
  %1376 = and i8 %1375, 1
  store i8 %1376, i8* %26, align 1
  %1377 = zext i1 %1365 to i8
  store i8 %1377, i8* %29, align 1
  %1378 = lshr i32 %1362, 31
  %1379 = trunc i32 %1378 to i8
  store i8 %1379, i8* %32, align 1
  %1380 = lshr i32 %1361, 31
  %1381 = xor i32 %1378, %1380
  %1382 = add nuw nsw i32 %1381, %1378
  %1383 = icmp eq i32 %1382, 2
  %1384 = zext i1 %1383 to i8
  store i8 %1384, i8* %38, align 1
  %1385 = add i64 %1356, 14
  store i64 %1385, i64* %3, align 8
  store i32 %1362, i32* %1360, align 4
  %1386 = load i64, i64* %3, align 8
  %1387 = add i64 %1386, -911
  store i64 %1387, i64* %3, align 8
  br label %block_.L_490509

block_.L_49089d:                                  ; preds = %block_.L_490509
  %1388 = add i64 %384, -84
  %1389 = add i64 %417, 4
  store i64 %1389, i64* %3, align 8
  %1390 = inttoptr i64 %1388 to i32*
  %1391 = load i32, i32* %1390, align 4
  %1392 = icmp eq i32 %1391, 0
  %.v35 = select i1 %1392, i64 10, i64 104
  %1393 = add i64 %417, %.v35
  %1394 = add i32 %390, -10
  %1395 = icmp ult i32 %390, 10
  %1396 = zext i1 %1395 to i8
  store i8 %1396, i8* %14, align 1
  %1397 = and i32 %1394, 255
  %1398 = tail call i32 @llvm.ctpop.i32(i32 %1397)
  %1399 = trunc i32 %1398 to i8
  %1400 = and i8 %1399, 1
  %1401 = xor i8 %1400, 1
  store i8 %1401, i8* %21, align 1
  %1402 = xor i32 %1394, %390
  %1403 = lshr i32 %1402, 4
  %1404 = trunc i32 %1403 to i8
  %1405 = and i8 %1404, 1
  store i8 %1405, i8* %26, align 1
  %1406 = icmp eq i32 %1394, 0
  %1407 = zext i1 %1406 to i8
  store i8 %1407, i8* %29, align 1
  %1408 = lshr i32 %1394, 31
  %1409 = trunc i32 %1408 to i8
  store i8 %1409, i8* %32, align 1
  %1410 = xor i32 %1408, %409
  %1411 = add nuw nsw i32 %1410, %409
  %1412 = icmp eq i32 %1411, 2
  %1413 = zext i1 %1412 to i8
  store i8 %1413, i8* %38, align 1
  %1414 = icmp ne i8 %1409, 0
  %1415 = xor i1 %1414, %1412
  %1416 = or i1 %1406, %1415
  %.v36 = select i1 %1416, i64 54, i64 14
  %1417 = add i64 %1393, %.v36
  %1418 = add i64 %1417, 10
  store i64 %1418, i64* %3, align 8
  br i1 %1392, label %block_4908a7, label %block_.L_490905

block_4908a7:                                     ; preds = %block_.L_49089d
  br i1 %1416, label %block_.L_4908dd, label %block_4908b5

block_4908b5:                                     ; preds = %block_4908a7
  store i64 ptrtoint (%G__0x586c49_type* @G__0x586c49 to i64), i64* %RDI.i44, align 8
  %1419 = zext i32 %390 to i64
  store i64 %1419, i64* %RAX.i570, align 8
  %1420 = add i64 %384, -4
  %1421 = add i64 %1417, 20
  store i64 %1421, i64* %3, align 8
  %1422 = inttoptr i64 %1420 to i32*
  %1423 = load i32, i32* %1422, align 4
  %1424 = sub i32 %390, %1423
  %1425 = zext i32 %1424 to i64
  store i64 %1425, i64* %RAX.i570, align 8
  %1426 = icmp ult i32 %390, %1423
  %1427 = zext i1 %1426 to i8
  store i8 %1427, i8* %14, align 1
  %1428 = and i32 %1424, 255
  %1429 = tail call i32 @llvm.ctpop.i32(i32 %1428)
  %1430 = trunc i32 %1429 to i8
  %1431 = and i8 %1430, 1
  %1432 = xor i8 %1431, 1
  store i8 %1432, i8* %21, align 1
  %1433 = xor i32 %1423, %390
  %1434 = xor i32 %1433, %1424
  %1435 = lshr i32 %1434, 4
  %1436 = trunc i32 %1435 to i8
  %1437 = and i8 %1436, 1
  store i8 %1437, i8* %26, align 1
  %1438 = icmp eq i32 %1424, 0
  %1439 = zext i1 %1438 to i8
  store i8 %1439, i8* %29, align 1
  %1440 = lshr i32 %1424, 31
  %1441 = trunc i32 %1440 to i8
  store i8 %1441, i8* %32, align 1
  %1442 = lshr i32 %1423, 31
  %1443 = xor i32 %1442, %409
  %1444 = xor i32 %1440, %409
  %1445 = add nuw nsw i32 %1444, %1443
  %1446 = icmp eq i32 %1445, 2
  %1447 = zext i1 %1446 to i8
  store i8 %1447, i8* %38, align 1
  store i64 %1425, i64* %RSI.i27, align 8
  store i8 0, i8* %AL.i142, align 1
  %1448 = add i64 %1417, -587893
  %1449 = add i64 %1417, 29
  %1450 = load i64, i64* %6, align 8
  %1451 = add i64 %1450, -8
  %1452 = inttoptr i64 %1451 to i64*
  store i64 %1449, i64* %1452, align 8
  store i64 %1451, i64* %6, align 8
  store i64 %1448, i64* %3, align 8
  %1453 = tail call %struct.Memory* @__remill_function_call(%struct.State* nonnull %0, i64 ptrtoint (i64 (i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)* @printf to i64), %struct.Memory* %MEMORY.5)
  %1454 = load i64, i64* %RBP.i, align 8
  %1455 = add i64 %1454, -220
  %1456 = load i32, i32* %EAX.i225, align 4
  %1457 = load i64, i64* %3, align 8
  %1458 = add i64 %1457, 6
  store i64 %1458, i64* %3, align 8
  %1459 = inttoptr i64 %1455 to i32*
  store i32 %1456, i32* %1459, align 4
  %1460 = load i64, i64* %3, align 8
  %1461 = add i64 %1460, 40
  store i64 %1461, i64* %3, align 8
  br label %block_.L_490900

block_.L_4908dd:                                  ; preds = %block_4908a7
  store i64 ptrtoint (%G__0x586c6b_type* @G__0x586c6b to i64), i64* %RDI.i44, align 8
  %1462 = zext i32 %390 to i64
  store i64 %1462, i64* %RAX.i570, align 8
  %1463 = add i64 %384, -4
  %1464 = add i64 %1417, 20
  store i64 %1464, i64* %3, align 8
  %1465 = inttoptr i64 %1463 to i32*
  %1466 = load i32, i32* %1465, align 4
  %1467 = sub i32 %390, %1466
  %1468 = zext i32 %1467 to i64
  store i64 %1468, i64* %RAX.i570, align 8
  %1469 = icmp ult i32 %390, %1466
  %1470 = zext i1 %1469 to i8
  store i8 %1470, i8* %14, align 1
  %1471 = and i32 %1467, 255
  %1472 = tail call i32 @llvm.ctpop.i32(i32 %1471)
  %1473 = trunc i32 %1472 to i8
  %1474 = and i8 %1473, 1
  %1475 = xor i8 %1474, 1
  store i8 %1475, i8* %21, align 1
  %1476 = xor i32 %1466, %390
  %1477 = xor i32 %1476, %1467
  %1478 = lshr i32 %1477, 4
  %1479 = trunc i32 %1478 to i8
  %1480 = and i8 %1479, 1
  store i8 %1480, i8* %26, align 1
  %1481 = icmp eq i32 %1467, 0
  %1482 = zext i1 %1481 to i8
  store i8 %1482, i8* %29, align 1
  %1483 = lshr i32 %1467, 31
  %1484 = trunc i32 %1483 to i8
  store i8 %1484, i8* %32, align 1
  %1485 = lshr i32 %1466, 31
  %1486 = xor i32 %1485, %409
  %1487 = xor i32 %1483, %409
  %1488 = add nuw nsw i32 %1487, %1486
  %1489 = icmp eq i32 %1488, 2
  %1490 = zext i1 %1489 to i8
  store i8 %1490, i8* %38, align 1
  store i64 %1468, i64* %RSI.i27, align 8
  store i8 0, i8* %AL.i142, align 1
  %1491 = add i64 %1417, -587933
  %1492 = add i64 %1417, 29
  %1493 = load i64, i64* %6, align 8
  %1494 = add i64 %1493, -8
  %1495 = inttoptr i64 %1494 to i64*
  store i64 %1492, i64* %1495, align 8
  store i64 %1494, i64* %6, align 8
  store i64 %1491, i64* %3, align 8
  %1496 = tail call %struct.Memory* @__remill_function_call(%struct.State* nonnull %0, i64 ptrtoint (i64 (i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)* @printf to i64), %struct.Memory* %MEMORY.5)
  %1497 = load i64, i64* %RBP.i, align 8
  %1498 = add i64 %1497, -224
  %1499 = load i32, i32* %EAX.i225, align 4
  %1500 = load i64, i64* %3, align 8
  %1501 = add i64 %1500, 6
  store i64 %1501, i64* %3, align 8
  %1502 = inttoptr i64 %1498 to i32*
  store i32 %1499, i32* %1502, align 4
  %.pre26 = load i64, i64* %3, align 8
  br label %block_.L_490900

block_.L_490900:                                  ; preds = %block_.L_4908dd, %block_4908b5
  %1503 = phi i64 [ %.pre26, %block_.L_4908dd ], [ %1461, %block_4908b5 ]
  %MEMORY.11 = phi %struct.Memory* [ %1496, %block_.L_4908dd ], [ %1453, %block_4908b5 ]
  %1504 = add i64 %1503, 99
  br label %block_.L_490963

block_.L_490905:                                  ; preds = %block_.L_49089d
  br i1 %1416, label %block_.L_49093b, label %block_490913

block_490913:                                     ; preds = %block_.L_490905
  store i64 ptrtoint (%G__0x57f1e3_type* @G__0x57f1e3 to i64), i64* %RDI.i44, align 8
  %1505 = zext i32 %390 to i64
  store i64 %1505, i64* %RAX.i570, align 8
  %1506 = add i64 %384, -4
  %1507 = add i64 %1417, 20
  store i64 %1507, i64* %3, align 8
  %1508 = inttoptr i64 %1506 to i32*
  %1509 = load i32, i32* %1508, align 4
  %1510 = sub i32 %390, %1509
  %1511 = zext i32 %1510 to i64
  store i64 %1511, i64* %RAX.i570, align 8
  %1512 = icmp ult i32 %390, %1509
  %1513 = zext i1 %1512 to i8
  store i8 %1513, i8* %14, align 1
  %1514 = and i32 %1510, 255
  %1515 = tail call i32 @llvm.ctpop.i32(i32 %1514)
  %1516 = trunc i32 %1515 to i8
  %1517 = and i8 %1516, 1
  %1518 = xor i8 %1517, 1
  store i8 %1518, i8* %21, align 1
  %1519 = xor i32 %1509, %390
  %1520 = xor i32 %1519, %1510
  %1521 = lshr i32 %1520, 4
  %1522 = trunc i32 %1521 to i8
  %1523 = and i8 %1522, 1
  store i8 %1523, i8* %26, align 1
  %1524 = icmp eq i32 %1510, 0
  %1525 = zext i1 %1524 to i8
  store i8 %1525, i8* %29, align 1
  %1526 = lshr i32 %1510, 31
  %1527 = trunc i32 %1526 to i8
  store i8 %1527, i8* %32, align 1
  %1528 = lshr i32 %1509, 31
  %1529 = xor i32 %1528, %409
  %1530 = xor i32 %1526, %409
  %1531 = add nuw nsw i32 %1530, %1529
  %1532 = icmp eq i32 %1531, 2
  %1533 = zext i1 %1532 to i8
  store i8 %1533, i8* %38, align 1
  store i64 %1511, i64* %RSI.i27, align 8
  store i8 0, i8* %AL.i142, align 1
  %1534 = add i64 %1417, -587987
  %1535 = add i64 %1417, 29
  %1536 = load i64, i64* %6, align 8
  %1537 = add i64 %1536, -8
  %1538 = inttoptr i64 %1537 to i64*
  store i64 %1535, i64* %1538, align 8
  store i64 %1537, i64* %6, align 8
  store i64 %1534, i64* %3, align 8
  %1539 = tail call %struct.Memory* @__remill_function_call(%struct.State* nonnull %0, i64 ptrtoint (i64 (i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)* @printf to i64), %struct.Memory* %MEMORY.5)
  %1540 = load i64, i64* %RBP.i, align 8
  %1541 = add i64 %1540, -228
  %1542 = load i32, i32* %EAX.i225, align 4
  %1543 = load i64, i64* %3, align 8
  %1544 = add i64 %1543, 6
  store i64 %1544, i64* %3, align 8
  %1545 = inttoptr i64 %1541 to i32*
  store i32 %1542, i32* %1545, align 4
  %1546 = load i64, i64* %3, align 8
  %1547 = add i64 %1546, 40
  store i64 %1547, i64* %3, align 8
  br label %block_.L_49095e

block_.L_49093b:                                  ; preds = %block_.L_490905
  store i64 ptrtoint (%G__0x586c6c_type* @G__0x586c6c to i64), i64* %RDI.i44, align 8
  %1548 = zext i32 %390 to i64
  store i64 %1548, i64* %RAX.i570, align 8
  %1549 = add i64 %384, -4
  %1550 = add i64 %1417, 20
  store i64 %1550, i64* %3, align 8
  %1551 = inttoptr i64 %1549 to i32*
  %1552 = load i32, i32* %1551, align 4
  %1553 = sub i32 %390, %1552
  %1554 = zext i32 %1553 to i64
  store i64 %1554, i64* %RAX.i570, align 8
  %1555 = icmp ult i32 %390, %1552
  %1556 = zext i1 %1555 to i8
  store i8 %1556, i8* %14, align 1
  %1557 = and i32 %1553, 255
  %1558 = tail call i32 @llvm.ctpop.i32(i32 %1557)
  %1559 = trunc i32 %1558 to i8
  %1560 = and i8 %1559, 1
  %1561 = xor i8 %1560, 1
  store i8 %1561, i8* %21, align 1
  %1562 = xor i32 %1552, %390
  %1563 = xor i32 %1562, %1553
  %1564 = lshr i32 %1563, 4
  %1565 = trunc i32 %1564 to i8
  %1566 = and i8 %1565, 1
  store i8 %1566, i8* %26, align 1
  %1567 = icmp eq i32 %1553, 0
  %1568 = zext i1 %1567 to i8
  store i8 %1568, i8* %29, align 1
  %1569 = lshr i32 %1553, 31
  %1570 = trunc i32 %1569 to i8
  store i8 %1570, i8* %32, align 1
  %1571 = lshr i32 %1552, 31
  %1572 = xor i32 %1571, %409
  %1573 = xor i32 %1569, %409
  %1574 = add nuw nsw i32 %1573, %1572
  %1575 = icmp eq i32 %1574, 2
  %1576 = zext i1 %1575 to i8
  store i8 %1576, i8* %38, align 1
  store i64 %1554, i64* %RSI.i27, align 8
  store i8 0, i8* %AL.i142, align 1
  %1577 = add i64 %1417, -588027
  %1578 = add i64 %1417, 29
  %1579 = load i64, i64* %6, align 8
  %1580 = add i64 %1579, -8
  %1581 = inttoptr i64 %1580 to i64*
  store i64 %1578, i64* %1581, align 8
  store i64 %1580, i64* %6, align 8
  store i64 %1577, i64* %3, align 8
  %1582 = tail call %struct.Memory* @__remill_function_call(%struct.State* nonnull %0, i64 ptrtoint (i64 (i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)* @printf to i64), %struct.Memory* %MEMORY.5)
  %1583 = load i64, i64* %RBP.i, align 8
  %1584 = add i64 %1583, -232
  %1585 = load i32, i32* %EAX.i225, align 4
  %1586 = load i64, i64* %3, align 8
  %1587 = add i64 %1586, 6
  store i64 %1587, i64* %3, align 8
  %1588 = inttoptr i64 %1584 to i32*
  store i32 %1585, i32* %1588, align 4
  %.pre27 = load i64, i64* %3, align 8
  br label %block_.L_49095e

block_.L_49095e:                                  ; preds = %block_.L_49093b, %block_490913
  %1589 = phi i64 [ %.pre27, %block_.L_49093b ], [ %1547, %block_490913 ]
  %MEMORY.12 = phi %struct.Memory* [ %1582, %block_.L_49093b ], [ %1539, %block_490913 ]
  %1590 = add i64 %1589, 5
  store i64 %1590, i64* %3, align 8
  br label %block_.L_490963

block_.L_490963:                                  ; preds = %block_.L_49095e, %block_.L_490900
  %storemerge20 = phi i64 [ %1504, %block_.L_490900 ], [ %1590, %block_.L_49095e ]
  %MEMORY.13 = phi %struct.Memory* [ %MEMORY.11, %block_.L_490900 ], [ %MEMORY.12, %block_.L_49095e ]
  store i64 ptrtoint (%G__0x586073_type* @G__0x586073 to i64), i64* %RDI.i44, align 8
  store i8 0, i8* %AL.i142, align 1
  %1591 = add i64 %storemerge20, -588067
  %1592 = add i64 %storemerge20, 17
  %1593 = load i64, i64* %6, align 8
  %1594 = add i64 %1593, -8
  %1595 = inttoptr i64 %1594 to i64*
  store i64 %1592, i64* %1595, align 8
  store i64 %1594, i64* %6, align 8
  store i64 %1591, i64* %3, align 8
  %1596 = tail call %struct.Memory* @__remill_function_call(%struct.State* nonnull %0, i64 ptrtoint (i64 (i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)* @printf to i64), %struct.Memory* %MEMORY.13)
  %1597 = load i64, i64* %RBP.i, align 8
  %1598 = add i64 %1597, -236
  %1599 = load i32, i32* %EAX.i225, align 4
  %1600 = load i64, i64* %3, align 8
  %1601 = add i64 %1600, 6
  store i64 %1601, i64* %3, align 8
  %1602 = inttoptr i64 %1598 to i32*
  store i32 %1599, i32* %1602, align 4
  %1603 = load i64, i64* %RBP.i, align 8
  %1604 = add i64 %1603, -4
  %1605 = load i64, i64* %3, align 8
  %1606 = add i64 %1605, 3
  store i64 %1606, i64* %3, align 8
  %1607 = inttoptr i64 %1604 to i32*
  %1608 = load i32, i32* %1607, align 4
  %1609 = add i32 %1608, 1
  %1610 = zext i32 %1609 to i64
  store i64 %1610, i64* %RAX.i570, align 8
  %1611 = icmp eq i32 %1608, -1
  %1612 = icmp eq i32 %1609, 0
  %1613 = or i1 %1611, %1612
  %1614 = zext i1 %1613 to i8
  store i8 %1614, i8* %14, align 1
  %1615 = and i32 %1609, 255
  %1616 = tail call i32 @llvm.ctpop.i32(i32 %1615)
  %1617 = trunc i32 %1616 to i8
  %1618 = and i8 %1617, 1
  %1619 = xor i8 %1618, 1
  store i8 %1619, i8* %21, align 1
  %1620 = xor i32 %1609, %1608
  %1621 = lshr i32 %1620, 4
  %1622 = trunc i32 %1621 to i8
  %1623 = and i8 %1622, 1
  store i8 %1623, i8* %26, align 1
  %1624 = zext i1 %1612 to i8
  store i8 %1624, i8* %29, align 1
  %1625 = lshr i32 %1609, 31
  %1626 = trunc i32 %1625 to i8
  store i8 %1626, i8* %32, align 1
  %1627 = lshr i32 %1608, 31
  %1628 = xor i32 %1625, %1627
  %1629 = add nuw nsw i32 %1628, %1625
  %1630 = icmp eq i32 %1629, 2
  %1631 = zext i1 %1630 to i8
  store i8 %1631, i8* %38, align 1
  %1632 = add i64 %1605, 9
  store i64 %1632, i64* %3, align 8
  store i32 %1609, i32* %1607, align 4
  %1633 = load i64, i64* %3, align 8
  %1634 = add i64 %1633, -1211
  store i64 %1634, i64* %3, align 8
  br label %block_.L_4904c8

block_.L_490988:                                  ; preds = %block_.L_4904c8
  %1635 = load i64, i64* bitcast (%G_0x99c080_type* @G_0x99c080 to i64*), align 8
  store i64 %1635, i64* %RDI.i44, align 8
  %1636 = add i64 %333, -587880
  %1637 = add i64 %333, 13
  %1638 = load i64, i64* %6, align 8
  %1639 = add i64 %1638, -8
  %1640 = inttoptr i64 %1639 to i64*
  store i64 %1637, i64* %1640, align 8
  store i64 %1639, i64* %6, align 8
  store i64 %1636, i64* %3, align 8
  %1641 = tail call %struct.Memory* @__remill_function_call(%struct.State* nonnull %0, i64 ptrtoint (i64 (i64)* @fflush to i64), %struct.Memory* %MEMORY.4)
  %1642 = load i64, i64* %3, align 8
  store i64 ptrtoint (%G__0x586c70_type* @G__0x586c70 to i64), i64* %RDI.i44, align 8
  %1643 = load i64, i64* %RBP.i, align 8
  %1644 = add i64 %1643, -80
  store i64 %1644, i64* %RSI.i27, align 8
  %1645 = add i64 %1643, -240
  %1646 = load i32, i32* %EAX.i225, align 4
  %1647 = add i64 %1642, 20
  store i64 %1647, i64* %3, align 8
  %1648 = inttoptr i64 %1645 to i32*
  store i32 %1646, i32* %1648, align 4
  %1649 = load i64, i64* %3, align 8
  store i8 0, i8* %AL.i142, align 1
  %1650 = add i64 %1649, -588137
  %1651 = add i64 %1649, 7
  %1652 = load i64, i64* %6, align 8
  %1653 = add i64 %1652, -8
  %1654 = inttoptr i64 %1653 to i64*
  store i64 %1651, i64* %1654, align 8
  store i64 %1653, i64* %6, align 8
  store i64 %1650, i64* %3, align 8
  %1655 = tail call %struct.Memory* @__remill_function_call(%struct.State* nonnull %0, i64 ptrtoint (i64 (i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)* @printf to i64), %struct.Memory* %1641)
  %1656 = load i64, i64* %3, align 8
  %1657 = load i64, i64* bitcast (%G_0x99c080_type* @G_0x99c080 to i64*), align 8
  store i64 %1657, i64* %RDI.i44, align 8
  %1658 = load i64, i64* %RBP.i, align 8
  %1659 = add i64 %1658, -244
  %1660 = load i32, i32* %EAX.i225, align 4
  %1661 = add i64 %1656, 14
  store i64 %1661, i64* %3, align 8
  %1662 = inttoptr i64 %1659 to i32*
  store i32 %1660, i32* %1662, align 4
  %1663 = load i64, i64* %3, align 8
  %1664 = add i64 %1663, -587934
  %1665 = add i64 %1663, 5
  %1666 = load i64, i64* %6, align 8
  %1667 = add i64 %1666, -8
  %1668 = inttoptr i64 %1667 to i64*
  store i64 %1665, i64* %1668, align 8
  store i64 %1667, i64* %6, align 8
  store i64 %1664, i64* %3, align 8
  %1669 = tail call %struct.Memory* @__remill_function_call(%struct.State* nonnull %0, i64 ptrtoint (i64 (i64)* @fflush to i64), %struct.Memory* %1655)
  %1670 = load i64, i64* %RBP.i, align 8
  %1671 = add i64 %1670, -248
  %1672 = load i32, i32* %EAX.i225, align 4
  %1673 = load i64, i64* %3, align 8
  %1674 = add i64 %1673, 6
  store i64 %1674, i64* %3, align 8
  %1675 = inttoptr i64 %1671 to i32*
  store i32 %1672, i32* %1675, align 4
  %1676 = load i64, i64* %6, align 8
  %1677 = load i64, i64* %3, align 8
  %1678 = add i64 %1676, 256
  store i64 %1678, i64* %6, align 8
  %1679 = icmp ugt i64 %1676, -257
  %1680 = zext i1 %1679 to i8
  store i8 %1680, i8* %14, align 1
  %1681 = trunc i64 %1678 to i32
  %1682 = and i32 %1681, 255
  %1683 = tail call i32 @llvm.ctpop.i32(i32 %1682)
  %1684 = trunc i32 %1683 to i8
  %1685 = and i8 %1684, 1
  %1686 = xor i8 %1685, 1
  store i8 %1686, i8* %21, align 1
  %1687 = xor i64 %1678, %1676
  %1688 = lshr i64 %1687, 4
  %1689 = trunc i64 %1688 to i8
  %1690 = and i8 %1689, 1
  store i8 %1690, i8* %26, align 1
  %1691 = icmp eq i64 %1678, 0
  %1692 = zext i1 %1691 to i8
  store i8 %1692, i8* %29, align 1
  %1693 = lshr i64 %1678, 63
  %1694 = trunc i64 %1693 to i8
  store i8 %1694, i8* %32, align 1
  %1695 = lshr i64 %1676, 63
  %1696 = xor i64 %1693, %1695
  %1697 = add nuw nsw i64 %1696, %1693
  %1698 = icmp eq i64 %1697, 2
  %1699 = zext i1 %1698 to i8
  store i8 %1699, i8* %38, align 1
  %1700 = add i64 %1677, 8
  store i64 %1700, i64* %3, align 8
  %1701 = add i64 %1676, 264
  %1702 = inttoptr i64 %1678 to i64*
  %1703 = load i64, i64* %1702, align 8
  store i64 %1703, i64* %RBP.i, align 8
  store i64 %1701, i64* %6, align 8
  %1704 = add i64 %1677, 9
  store i64 %1704, i64* %3, align 8
  %1705 = inttoptr i64 %1701 to i64*
  %1706 = load i64, i64* %1705, align 8
  store i64 %1706, i64* %3, align 8
  %1707 = add i64 %1676, 272
  store i64 %1707, i64* %6, align 8
  ret %struct.Memory* %1669
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
define %struct.Memory* @routine_subq__0x100___rsp(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %3 = load i64, i64* %RSP, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 7
  store i64 %5, i64* %PC, align 8
  %6 = add i64 %3, -256
  store i64 %6, i64* %RSP, align 8
  %7 = icmp ult i64 %3, 256
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
define %struct.Memory* @routine_leaq_MINUS0x50__rbp____rsi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -80
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  store i64 %4, i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_0x7ae438___edi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 7
  store i64 %4, i64* %PC, align 8
  %5 = load i32, i32* bitcast (%G_0x7ae438_type* @G_0x7ae438 to i32*), align 8
  %6 = zext i32 %5 to i64
  store i64 %6, i64* %RDI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_callq_.make_letterbar(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_callq_.set_handicap_spots(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movq__0x586073___rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x586073_type* @G__0x586073 to i64), i64* %RDI, align 8
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
define %struct.Memory* @routine_callq_.printf_plt(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movq__0x586b5c___rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x586b5c_type* @G__0x586b5c to i64), i64* %RDI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_0xb8c040___esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 7
  store i64 %4, i64* %PC, align 8
  %5 = load i32, i32* bitcast (%G_0xb8c040_type* @G_0xb8c040 to i32*), align 8
  %6 = zext i32 %5 to i64
  store i64 %6, i64* %RSI, align 8
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
define %struct.Memory* @routine_movq__0x586b7e___rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x586b7e_type* @G__0x586b7e to i64), i64* %RDI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_0xb38cb0___esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 7
  store i64 %4, i64* %PC, align 8
  %5 = load i32, i32* bitcast (%G_0xb38cb0_type* @G_0xb38cb0 to i32*), align 8
  %6 = zext i32 %5 to i64
  store i64 %6, i64* %RSI, align 8
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
define %struct.Memory* @routine_cmpl__0x0__0xab0f10(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 8
  store i64 %4, i64* %PC, align 8
  %5 = load i32, i32* bitcast (%G_0xab0f10_type* @G_0xab0f10 to i32*), align 8
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
define %struct.Memory* @routine_je_.L_49044c(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_cmpl__0x1267__0x7afe14(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 11
  store i64 %4, i64* %PC, align 8
  %5 = load i32, i32* bitcast (%G_0x7afe14_type* @G_0x7afe14 to i32*), align 8
  %6 = add i32 %5, -4711
  %7 = icmp ult i32 %5, 4711
  %8 = zext i1 %7 to i8
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %8, i8* %9, align 1
  %10 = and i32 %6, 255
  %11 = tail call i32 @llvm.ctpop.i32(i32 %10)
  %12 = trunc i32 %11 to i8
  %13 = and i8 %12, 1
  %14 = xor i8 %13, 1
  %15 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %14, i8* %15, align 1
  %16 = xor i32 %6, %5
  %17 = lshr i32 %16, 4
  %18 = trunc i32 %17 to i8
  %19 = and i8 %18, 1
  %20 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %19, i8* %20, align 1
  %21 = icmp eq i32 %6, 0
  %22 = zext i1 %21 to i8
  %23 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %22, i8* %23, align 1
  %24 = lshr i32 %6, 31
  %25 = trunc i32 %24 to i8
  %26 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %25, i8* %26, align 1
  %27 = lshr i32 %5, 31
  %28 = xor i32 %24, %27
  %29 = add nuw nsw i32 %28, %27
  %30 = icmp eq i32 %29, 2
  %31 = zext i1 %30 to i8
  %32 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %31, i8* %32, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jne_.L_4903c9(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movq__0x586ba0___rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x586ba0_type* @G__0x586ba0 to i64), i64* %RDI, align 8
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
define %struct.Memory* @routine_jmpq_.L_490447(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__0x0__0x7afe14(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 8
  store i64 %4, i64* %PC, align 8
  %5 = load i32, i32* bitcast (%G_0x7afe14_type* @G_0x7afe14 to i32*), align 8
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
define %struct.Memory* @routine_jge_.L_4903fb(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movq__0x586bc9___rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x586bc9_type* @G__0x586bc9 to i64), i64* %RDI, align 8
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

; Function Attrs: nounwind
define %struct.Memory* @routine_subl_0x7afe14___eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 7
  store i64 %5, i64* %PC, align 8
  %6 = trunc i64 %3 to i32
  %7 = load i32, i32* bitcast (%G_0x7afe14_type* @G_0x7afe14 to i32*), align 8
  %8 = sub i32 %6, %7
  %9 = zext i32 %8 to i64
  store i64 %9, i64* %RAX, align 8
  %10 = icmp ult i32 %6, %7
  %11 = zext i1 %10 to i8
  %12 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %11, i8* %12, align 1
  %13 = and i32 %8, 255
  %14 = tail call i32 @llvm.ctpop.i32(i32 %13)
  %15 = trunc i32 %14 to i8
  %16 = and i8 %15, 1
  %17 = xor i8 %16, 1
  %18 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %17, i8* %18, align 1
  %19 = xor i32 %7, %6
  %20 = xor i32 %19, %8
  %21 = lshr i32 %20, 4
  %22 = trunc i32 %21 to i8
  %23 = and i8 %22, 1
  %24 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %23, i8* %24, align 1
  %25 = icmp eq i32 %8, 0
  %26 = zext i1 %25 to i8
  %27 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %26, i8* %27, align 1
  %28 = lshr i32 %8, 31
  %29 = trunc i32 %28 to i8
  %30 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %29, i8* %30, align 1
  %31 = lshr i32 %6, 31
  %32 = lshr i32 %7, 31
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
define %struct.Memory* @routine_jmpq_.L_490442(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jle_.L_490429(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movq__0x586bf4___rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x586bf4_type* @G__0x586bf4 to i64), i64* %RDI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_0x7afe14___esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 7
  store i64 %4, i64* %PC, align 8
  %5 = load i32, i32* bitcast (%G_0x7afe14_type* @G_0x7afe14 to i32*), align 8
  %6 = zext i32 %5 to i64
  store i64 %6, i64* %RSI, align 8
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
define %struct.Memory* @routine_jmpq_.L_49043d(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__0x586c1f___rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x586c1f_type* @G__0x586c1f to i64), i64* %RDI, align 8
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
define %struct.Memory* @routine_jmpq_.L_49044c(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_0x99c080___rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 8
  store i64 %4, i64* %PC, align 8
  %5 = load i64, i64* bitcast (%G_0x99c080_type* @G_0x99c080 to i64*), align 8
  store i64 %5, i64* %RDI, align 8
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
define %struct.Memory* @routine_callq_.fflush_plt(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movq__0x586c43___rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x586c43_type* @G__0x586c43 to i64), i64* %RDI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_leaq_MINUS0x50__rbp____rdx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -80
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  store i64 %4, i64* %RDX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__0x58898d___rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x58898d_type* @G__0x58898d to i64), i64* %RCX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__0x586c3b___rsi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x586c3b_type* @G__0x586c3b to i64), i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__0x0__0xaf2758(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 8
  store i64 %4, i64* %PC, align 8
  %5 = load i32, i32* bitcast (%G_0xaf2758_type* @G_0xaf2758 to i32*), align 8
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
define %struct.Memory* @routine_cmovneq__rsi___rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %RSI, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 4
  store i64 %5, i64* %PC, align 8
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %7 = load i8, i8* %6, align 1
  %8 = icmp eq i8 %7, 0
  %9 = load i64, i64* %RCX, align 8
  %10 = select i1 %8, i64 %3, i64 %9
  store i64 %10, i64* %RCX, align 8
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
define %struct.Memory* @routine_movl__eax__MINUS0x84__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -132
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
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
define %struct.Memory* @routine_movl__eax__MINUS0x88__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -136
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
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
define %struct.Memory* @routine_cmpl_0x7ae438___eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %4 = load i32, i32* %EAX, align 4
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = load i32, i32* bitcast (%G_0x7ae438_type* @G_0x7ae438 to i32*), align 8
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
define %struct.Memory* @routine_jge_.L_490988(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movq__0x586c49___rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x586c49_type* @G__0x586c49 to i64), i64* %RDI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_0x7ae438___eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 7
  store i64 %4, i64* %PC, align 8
  %5 = load i32, i32* bitcast (%G_0x7ae438_type* @G_0x7ae438 to i32*), align 8
  %6 = zext i32 %5 to i64
  store i64 %6, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_subl_MINUS0x4__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
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
define %struct.Memory* @routine_movl__0x0__MINUS0x54__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -84
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  store i32 0, i32* %7, align 4
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
define %struct.Memory* @routine_movl__eax__MINUS0x8c__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -140
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
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
define %struct.Memory* @routine_jge_.L_49089d(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl_0xaf2750___eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 7
  store i64 %4, i64* %PC, align 8
  %5 = load i32, i32* bitcast (%G_0xaf2750_type* @G_0xaf2750 to i32*), align 8
  %6 = zext i32 %5 to i64
  store i64 %6, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl_MINUS0x4__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i32, i32* %EAX, align 4
  %5 = load i64, i64* %RBP, align 8
  %6 = add i64 %5, -4
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
define %struct.Memory* @routine_jne_.L_490545(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl_0xaf2754___eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 7
  store i64 %4, i64* %PC, align 8
  %5 = load i32, i32* bitcast (%G_0xaf2754_type* @G_0xaf2754 to i32*), align 8
  %6 = zext i32 %5 to i64
  store i64 %6, i64* %RAX, align 8
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
define %struct.Memory* @routine_movl__0x80__MINUS0x58__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -88
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  store i32 128, i32* %7, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_49054c(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x0__MINUS0x58__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -88
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  store i32 0, i32* %7, align 4
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_imull__0x14__MINUS0x4__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
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
  %10 = mul nsw i64 %9, 20
  %11 = trunc i64 %10 to i32
  %12 = and i64 %10, 4294967292
  store i64 %12, i64* %RAX, align 8
  %13 = mul i64 %9, 85899345920
  %14 = ashr exact i64 %13, 32
  %15 = icmp ne i64 %14, %10
  %16 = zext i1 %15 to i8
  %17 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %16, i8* %17, align 1
  %18 = and i32 %11, 252
  %19 = tail call i32 @llvm.ctpop.i32(i32 %18)
  %20 = trunc i32 %19 to i8
  %21 = and i8 %20, 1
  %22 = xor i8 %21, 1
  %23 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %22, i8* %23, align 1
  %24 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %24, align 1
  %25 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %25, align 1
  %26 = lshr i32 %11, 31
  %27 = trunc i32 %26 to i8
  %28 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %27, i8* %28, align 1
  %29 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %16, i8* %29, align 1
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_addl__0x15___eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 3
  store i64 %5, i64* %PC, align 8
  %6 = trunc i64 %3 to i32
  %7 = add i32 %6, 21
  %8 = zext i32 %7 to i64
  store i64 %8, i64* %RAX, align 8
  %9 = icmp ugt i32 %6, -22
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
define %struct.Memory* @routine_callq_.dragon_status(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_xorl__edi___edi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 2
  store i64 %4, i64* %PC, align 8
  store i64 0, i64* %RDI, align 8
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
define %struct.Memory* @routine_movb__dil___cl(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %CL = bitcast %union.anon* %3 to i8*
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0
  %DIL = bitcast %union.anon* %4 to i8*
  %5 = load i8, i8* %DIL, align 1
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 3
  store i64 %7, i64* %PC, align 8
  store i8 %5, i8* %CL, align 1
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
define %struct.Memory* @routine_movb__cl__MINUS0x8d__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %CL = bitcast %union.anon* %3 to i8*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -141
  %6 = load i8, i8* %CL, align 1
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i8*
  store i8 %6, i8* %9, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jne_.L_490582(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_cmpl__0x0__0xaf274c(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 8
  store i64 %4, i64* %PC, align 8
  %5 = load i32, i32* bitcast (%G_0xaf274c_type* @G_0xaf274c to i32*), align 8
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
define %struct.Memory* @routine_setne__al(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %AL = bitcast %union.anon* %3 to i8*
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 3
  store i64 %5, i64* %PC, align 8
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %7 = load i8, i8* %6, align 1
  %8 = icmp eq i8 %7, 0
  %9 = zext i1 %8 to i8
  store i8 %9, i8* %AL, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movb__al__MINUS0x8d__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %AL = bitcast %union.anon* %3 to i8*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -141
  %6 = load i8, i8* %AL, align 1
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i8*
  store i8 %6, i8* %9, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movb_MINUS0x8d__rbp____al(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %AL = bitcast %union.anon* %3 to i8*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -141
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_leal___rdx__rdx_4____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %RDX, align 8
  %4 = mul i64 %3, 5
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 3
  store i64 %6, i64* %PC, align 8
  %7 = and i64 %4, 4294967295
  store i64 %7, i64* %RCX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x8__rbp____esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -8
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
define %struct.Memory* @routine_movl__esi___edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0
  %ESI = bitcast %union.anon* %3 to i32*
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %4 = load i32, i32* %ESI, align 4
  %5 = zext i32 %4 to i64
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 2
  store i64 %7, i64* %PC, align 8
  store i64 %5, i64* %RDX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__ecx___edi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %ECX = bitcast %union.anon* %3 to i32*
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %4 = load i32, i32* %ECX, align 4
  %5 = zext i32 %4 to i64
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 2
  store i64 %7, i64* %PC, align 8
  store i64 %5, i64* %RDI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_leal_0x15__rdx__rdi_4____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %RDX, align 8
  %4 = load i64, i64* %RDI, align 8
  %5 = shl i64 %4, 2
  %6 = add i64 %3, 21
  %7 = add i64 %6, %5
  %8 = load i64, i64* %PC, align 8
  %9 = add i64 %8, 4
  store i64 %9, i64* %PC, align 8
  %10 = and i64 %7, 4294967295
  store i64 %10, i64* %RCX, align 8
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
define %struct.Memory* @routine_movzbl_0xb89e60__rdx____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %RDX, align 8
  %4 = add i64 %3, 12099168
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i8*
  %8 = load i8, i8* %7, align 1
  %9 = zext i8 %8 to i64
  store i64 %9, i64* %RCX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x58__rbp____esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -88
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
define %struct.Memory* @routine_addl__esi___ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0
  %ESI = bitcast %union.anon* %3 to i32*
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %4 = load i64, i64* %RCX, align 8
  %5 = load i32, i32* %ESI, align 4
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x54__rbp____esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -84
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
define %struct.Memory* @routine_movl__ecx__MINUS0x94__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %ECX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -148
  %6 = load i32, i32* %ECX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_je_.L_4906a4(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jmpq_.L_4905c8(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x94__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -148
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
define %struct.Memory* @routine_movl__eax__MINUS0x98__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -152
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_je_.L_49071a(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jmpq_.L_4905e2(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__eax__MINUS0x9c__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -156
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_je_.L_4906e4(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jmpq_.L_4905fc(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_subl__0x80___eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 5
  store i64 %5, i64* %PC, align 8
  %6 = trunc i64 %3 to i32
  %7 = add i32 %6, -128
  %8 = zext i32 %7 to i64
  store i64 %8, i64* %RAX, align 8
  %9 = icmp ult i32 %6, 128
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
define %struct.Memory* @routine_movl__eax__MINUS0xa0__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -160
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_490618(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_subl__0x81___eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 5
  store i64 %5, i64* %PC, align 8
  %6 = trunc i64 %3 to i32
  %7 = add i32 %6, -129
  %8 = zext i32 %7 to i64
  store i64 %8, i64* %RAX, align 8
  %9 = icmp ult i32 %6, 129
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
define %struct.Memory* @routine_movl__eax__MINUS0xa4__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -164
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_je_.L_490778(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jmpq_.L_490634(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_subl__0x82___eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 5
  store i64 %5, i64* %PC, align 8
  %6 = trunc i64 %3 to i32
  %7 = add i32 %6, -130
  %8 = zext i32 %7 to i64
  store i64 %8, i64* %RAX, align 8
  %9 = icmp ult i32 %6, 130
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
define %struct.Memory* @routine_movl__eax__MINUS0xa8__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -168
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_je_.L_490750(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jmpq_.L_490650(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_subl__0x100___eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 5
  store i64 %5, i64* %PC, align 8
  %6 = trunc i64 %3 to i32
  %7 = add i32 %6, -256
  %8 = zext i32 %7 to i64
  store i64 %8, i64* %RAX, align 8
  %9 = icmp ult i32 %6, 256
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
define %struct.Memory* @routine_movl__eax__MINUS0xac__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -172
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_je_.L_4907a0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jmpq_.L_49066c(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_subl__0x101___eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 5
  store i64 %5, i64* %PC, align 8
  %6 = trunc i64 %3 to i32
  %7 = add i32 %6, -257
  %8 = zext i32 %7 to i64
  store i64 %8, i64* %RAX, align 8
  %9 = icmp ult i32 %6, 257
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
define %struct.Memory* @routine_movl__eax__MINUS0xb0__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -176
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_je_.L_490816(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jmpq_.L_490688(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_subl__0x102___eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 5
  store i64 %5, i64* %PC, align 8
  %6 = trunc i64 %3 to i32
  %7 = add i32 %6, -258
  %8 = zext i32 %7 to i64
  store i64 %8, i64* %RAX, align 8
  %9 = icmp ult i32 %6, 258
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
define %struct.Memory* @routine_movl__eax__MINUS0xb4__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -180
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_je_.L_4907e0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jmpq_.L_49084c(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__0x579d92___rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x579d92_type* @G__0x579d92 to i64), i64* %RDI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__0xaf2760___rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0xaf2760_type* @G__0xaf2760 to i64), i64* %RAX, align 8
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

; Function Attrs: nounwind
define %struct.Memory* @routine_imulq__0x13___rcx___rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
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
  %10 = mul nsw i128 %9, 19
  %11 = trunc i128 %10 to i64
  store i64 %11, i64* %RCX, align 8
  %12 = sext i64 %11 to i128
  %13 = icmp ne i128 %12, %10
  %14 = zext i1 %13 to i8
  %15 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %14, i8* %15, align 1
  %16 = trunc i128 %10 to i32
  %17 = and i32 %16, 255
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movsbl___rax__rcx_1____esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %RCX, align 8
  %5 = add i64 %4, %3
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 4
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %5 to i8*
  %9 = load i8, i8* %8, align 1
  %10 = sext i8 %9 to i64
  %11 = and i64 %10, 4294967295
  store i64 %11, i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__eax__MINUS0xb8__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -184
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_49088a(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x58___eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 5
  store i64 %4, i64* %PC, align 8
  store i64 88, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x78___ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 5
  store i64 %4, i64* %PC, align 8
  store i64 120, i64* %RCX, align 8
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
define %struct.Memory* @routine_movl__0x4f___eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 5
  store i64 %4, i64* %PC, align 8
  store i64 79, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x6f___ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 5
  store i64 %4, i64* %PC, align 8
  store i64 111, i64* %RCX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__eax__MINUS0xc0__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -192
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__0x586c4e___rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x586c4e_type* @G__0x586c4e to i64), i64* %RDI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x58___esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 5
  store i64 %4, i64* %PC, align 8
  store i64 88, i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x100__MINUS0x54__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -84
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  store i32 256, i32* %7, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__eax__MINUS0xc4__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -196
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x4f___esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 5
  store i64 %4, i64* %PC, align 8
  store i64 79, i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__eax__MINUS0xc8__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -200
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__0x579d93___rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x579d93_type* @G__0x579d93 to i64), i64* %RDI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__eax__MINUS0xcc__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -204
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__eax__MINUS0xd0__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -208
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__eax__MINUS0xd4__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -212
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__0x586c53___rsi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x586c53_type* @G__0x586c53 to i64), i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_0x99c0a0___rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 8
  store i64 %4, i64* %PC, align 8
  %5 = load i64, i64* bitcast (%G_0x99c0a0_type* @G_0x99c0a0 to i64*), align 8
  store i64 %5, i64* %RDI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movslq__eax___rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %4 = load i32, i32* %EAX, align 4
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 3
  store i64 %6, i64* %PC, align 8
  %7 = sext i32 %4 to i64
  store i64 %7, i64* %RCX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movzbl_0xb89e60___rcx_1____edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = add i64 %3, 12099168
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 8
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i8*
  %8 = load i8, i8* %7, align 1
  %9 = zext i8 %8 to i64
  store i64 %9, i64* %RDX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_callq_.fprintf_plt(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl__eax__MINUS0xd8__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -216
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_callq_.exit_plt(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jmpq_.L_49088f(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jmpq_.L_490509(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__0x0__MINUS0x54__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
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
define %struct.Memory* @routine_jne_.L_490905(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_cmpl__0xa__0x7ae438(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 8
  store i64 %4, i64* %PC, align 8
  %5 = load i32, i32* bitcast (%G_0x7ae438_type* @G_0x7ae438 to i32*), align 8
  %6 = add i32 %5, -10
  %7 = icmp ult i32 %5, 10
  %8 = zext i1 %7 to i8
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %8, i8* %9, align 1
  %10 = and i32 %6, 255
  %11 = tail call i32 @llvm.ctpop.i32(i32 %10)
  %12 = trunc i32 %11 to i8
  %13 = and i8 %12, 1
  %14 = xor i8 %13, 1
  %15 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %14, i8* %15, align 1
  %16 = xor i32 %6, %5
  %17 = lshr i32 %16, 4
  %18 = trunc i32 %17 to i8
  %19 = and i8 %18, 1
  %20 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %19, i8* %20, align 1
  %21 = icmp eq i32 %6, 0
  %22 = zext i1 %21 to i8
  %23 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %22, i8* %23, align 1
  %24 = lshr i32 %6, 31
  %25 = trunc i32 %24 to i8
  %26 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %25, i8* %26, align 1
  %27 = lshr i32 %5, 31
  %28 = xor i32 %24, %27
  %29 = add nuw nsw i32 %28, %27
  %30 = icmp eq i32 %29, 2
  %31 = zext i1 %30 to i8
  %32 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %31, i8* %32, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jle_.L_4908dd(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl__eax__MINUS0xdc__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -220
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_490900(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__0x586c6b___rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x586c6b_type* @G__0x586c6b to i64), i64* %RDI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__eax__MINUS0xe0__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -224
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_490963(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jle_.L_49093b(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movq__0x57f1e3___rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x57f1e3_type* @G__0x57f1e3 to i64), i64* %RDI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__eax__MINUS0xe4__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -228
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_49095e(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__0x586c6c___rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x586c6c_type* @G__0x586c6c to i64), i64* %RDI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__eax__MINUS0xe8__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -232
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__eax__MINUS0xec__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -236
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
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
define %struct.Memory* @routine_jmpq_.L_4904c8(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__0x586c70___rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x586c70_type* @G__0x586c70 to i64), i64* %RDI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__eax__MINUS0xf0__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -240
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__eax__MINUS0xf4__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -244
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__eax__MINUS0xf8__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -248
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_addq__0x100___rsp(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %3 = load i64, i64* %RSP, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 7
  store i64 %5, i64* %PC, align 8
  %6 = add i64 %3, 256
  store i64 %6, i64* %RSP, align 8
  %7 = icmp ugt i64 %3, -257
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
