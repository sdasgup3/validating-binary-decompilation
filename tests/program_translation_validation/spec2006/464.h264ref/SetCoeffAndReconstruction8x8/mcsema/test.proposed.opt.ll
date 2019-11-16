; ModuleID = 'mcsema/test.proposed.inline.ll'
source_filename = "llvm-link"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu-elf"

%__bss_start_type = type <{ [8 x i8] }>
%G_0x6cb900_type = type <{ [8 x i8] }>
%G_0x6cc5f8_type = type <{ [8 x i8] }>
%G_0x6cc650_type = type <{ [8 x i8] }>
%G_0x6ce9f8_type = type <{ [1 x i8] }>
%G_0x6d1f8c_type = type <{ [1 x i8] }>
%G_0x6d32c0_type = type <{ [4 x i8] }>
%G_0x70d1a8_type = type <{ [4 x i8] }>
%G_0x70fcf0_type = type <{ [8 x i8] }>
%G_0x710778_type = type <{ [8 x i8] }>
%G_0x726848_type = type <{ [4 x i8] }>
%G__0x6ce5a0_type = type <{ [8 x i8] }>
%G__0x6cea50_type = type <{ [8 x i8] }>
%G__0x6d0290_type = type <{ [8 x i8] }>
%G__0x6d40f0_type = type <{ [8 x i8] }>
%G__0x6f6fa0_type = type <{ [8 x i8] }>
%G__0x6f7ea0_type = type <{ [8 x i8] }>
%G__0x70d650_type = type <{ [8 x i8] }>
%G__0x70ead0_type = type <{ [8 x i8] }>
%G__0x710370_type = type <{ [8 x i8] }>
%G__0x711840_type = type <{ [8 x i8] }>
%G__0x721aa0_type = type <{ [8 x i8] }>
%G__0x722ff0_type = type <{ [8 x i8] }>
%G__0x723430_type = type <{ [8 x i8] }>
%G__0x724340_type = type <{ [8 x i8] }>
%G__0x7247d0_type = type <{ [8 x i8] }>
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
@G_0x6cc5f8 = local_unnamed_addr global %G_0x6cc5f8_type zeroinitializer
@G_0x6cc650 = local_unnamed_addr global %G_0x6cc650_type zeroinitializer
@G_0x6ce9f8 = local_unnamed_addr global %G_0x6ce9f8_type zeroinitializer
@G_0x6d1f8c = local_unnamed_addr global %G_0x6d1f8c_type zeroinitializer
@G_0x6d32c0 = local_unnamed_addr global %G_0x6d32c0_type zeroinitializer
@G_0x70d1a8 = local_unnamed_addr global %G_0x70d1a8_type zeroinitializer
@G_0x70fcf0 = local_unnamed_addr global %G_0x70fcf0_type zeroinitializer
@G_0x710778 = local_unnamed_addr global %G_0x710778_type zeroinitializer
@G_0x726848 = local_unnamed_addr global %G_0x726848_type zeroinitializer
@G__0x6ce5a0 = global %G__0x6ce5a0_type zeroinitializer
@G__0x6cea50 = global %G__0x6cea50_type zeroinitializer
@G__0x6d0290 = global %G__0x6d0290_type zeroinitializer
@G__0x6d40f0 = global %G__0x6d40f0_type zeroinitializer
@G__0x6f6fa0 = global %G__0x6f6fa0_type zeroinitializer
@G__0x6f7ea0 = global %G__0x6f7ea0_type zeroinitializer
@G__0x70d650 = global %G__0x70d650_type zeroinitializer
@G__0x70ead0 = global %G__0x70ead0_type zeroinitializer
@G__0x710370 = global %G__0x710370_type zeroinitializer
@G__0x711840 = global %G__0x711840_type zeroinitializer
@G__0x721aa0 = global %G__0x721aa0_type zeroinitializer
@G__0x722ff0 = global %G__0x722ff0_type zeroinitializer
@G__0x723430 = global %G__0x723430_type zeroinitializer
@G__0x724340 = global %G__0x724340_type zeroinitializer
@G__0x7247d0 = global %G__0x7247d0_type zeroinitializer
@G__0x725610 = global %G__0x725610_type zeroinitializer

declare %struct.Memory* @__remill_error(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr

; Function Attrs: nounwind readnone
declare i32 @llvm.ctpop.i32(i32) #0

declare %struct.Memory* @sub_48aa10.StoreMV8x8(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_48aaa0.RestoreMV8x8(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

; Function Attrs: alwaysinline
define %struct.Memory* @SetCoeffAndReconstruction8x8(%struct.State* noalias, i64, %struct.Memory* noalias) local_unnamed_addr #1 {
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
  %R15.i1641 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 31, i32 0, i32 0
  %11 = load i64, i64* %R15.i1641, align 8
  %12 = add i64 %10, 5
  store i64 %12, i64* %3, align 8
  %13 = add i64 %7, -16
  %14 = inttoptr i64 %13 to i64*
  store i64 %11, i64* %14, align 8
  %R14.i1659 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 29, i32 0, i32 0
  %15 = load i64, i64* %R14.i1659, align 8
  %16 = load i64, i64* %3, align 8
  %17 = add i64 %16, 2
  store i64 %17, i64* %3, align 8
  %18 = add i64 %7, -24
  %19 = inttoptr i64 %18 to i64*
  store i64 %15, i64* %19, align 8
  %RBX.i1676 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 3, i32 0, i32 0
  %20 = load i64, i64* %RBX.i1676, align 8
  %21 = load i64, i64* %3, align 8
  %22 = add i64 %21, 1
  store i64 %22, i64* %3, align 8
  %23 = add i64 %7, -32
  %24 = inttoptr i64 %23 to i64*
  store i64 %20, i64* %24, align 8
  %25 = load i64, i64* %3, align 8
  %26 = add i64 %7, -120
  store i64 %26, i64* %6, align 8
  %27 = icmp ult i64 %23, 88
  %28 = zext i1 %27 to i8
  %29 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %28, i8* %29, align 1
  %30 = trunc i64 %26 to i32
  %31 = and i32 %30, 255
  %32 = tail call i32 @llvm.ctpop.i32(i32 %31)
  %33 = trunc i32 %32 to i8
  %34 = and i8 %33, 1
  %35 = xor i8 %34, 1
  %36 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %35, i8* %36, align 1
  %37 = xor i64 %23, 16
  %38 = xor i64 %37, %26
  %39 = lshr i64 %38, 4
  %40 = trunc i64 %39 to i8
  %41 = and i8 %40, 1
  %42 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %41, i8* %42, align 1
  %43 = icmp eq i64 %26, 0
  %44 = zext i1 %43 to i8
  %45 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %44, i8* %45, align 1
  %46 = lshr i64 %26, 63
  %47 = trunc i64 %46 to i8
  %48 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %47, i8* %48, align 1
  %49 = lshr i64 %23, 63
  %50 = xor i64 %46, %49
  %51 = add nuw nsw i64 %50, %49
  %52 = icmp eq i64 %51, 2
  %53 = zext i1 %52 to i8
  %54 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %53, i8* %54, align 1
  %RDI.i1834 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %55 = load i64, i64* %RBP.i, align 8
  %56 = add i64 %55, -32
  %57 = load i64, i64* %RDI.i1834, align 8
  %58 = add i64 %25, 8
  store i64 %58, i64* %3, align 8
  %59 = inttoptr i64 %56 to i64*
  store i64 %57, i64* %59, align 8
  %60 = load i64, i64* %3, align 8
  %61 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*), align 8
  store i64 %61, i64* %RDI.i1834, align 8
  %62 = add i64 %61, 24
  %63 = add i64 %60, 12
  store i64 %63, i64* %3, align 8
  %64 = inttoptr i64 %62 to i32*
  %65 = load i32, i32* %64, align 4
  %66 = icmp eq i32 %65, 1
  %67 = zext i1 %66 to i8
  %68 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %AL.i = bitcast %union.anon* %68 to i8*
  store i8 %67, i8* %AL.i, align 1
  store i8 0, i8* %29, align 1
  %69 = zext i1 %66 to i32
  %70 = tail call i32 @llvm.ctpop.i32(i32 %69)
  %71 = trunc i32 %70 to i8
  %72 = xor i8 %71, 1
  store i8 %72, i8* %36, align 1
  %73 = xor i8 %67, 1
  store i8 %73, i8* %45, align 1
  store i8 0, i8* %48, align 1
  store i8 0, i8* %54, align 1
  store i8 0, i8* %42, align 1
  %74 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %RCX.i2011 = getelementptr inbounds %union.anon, %union.anon* %74, i64 0, i32 0
  %75 = zext i1 %66 to i64
  store i64 %75, i64* %RCX.i2011, align 8
  %ECX.i2007 = bitcast %union.anon* %74 to i32*
  %76 = load i64, i64* %RBP.i, align 8
  %77 = add i64 %76, -56
  %78 = zext i1 %66 to i32
  %79 = add i64 %60, 23
  store i64 %79, i64* %3, align 8
  %80 = inttoptr i64 %77 to i32*
  store i32 %78, i32* %80, align 4
  %81 = load i64, i64* %3, align 8
  %82 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*), align 8
  store i64 %82, i64* %RDI.i1834, align 8
  %83 = add i64 %82, 72400
  %84 = add i64 %81, 15
  store i64 %84, i64* %3, align 8
  %85 = inttoptr i64 %83 to i32*
  %86 = load i32, i32* %85, align 4
  store i8 0, i8* %29, align 1
  %87 = and i32 %86, 255
  %88 = tail call i32 @llvm.ctpop.i32(i32 %87)
  %89 = trunc i32 %88 to i8
  %90 = and i8 %89, 1
  %91 = xor i8 %90, 1
  store i8 %91, i8* %36, align 1
  store i8 0, i8* %42, align 1
  %92 = icmp eq i32 %86, 0
  %93 = zext i1 %92 to i8
  store i8 %93, i8* %45, align 1
  %94 = lshr i32 %86, 31
  %95 = trunc i32 %94 to i8
  store i8 %95, i8* %48, align 1
  store i8 0, i8* %54, align 1
  %.v224 = select i1 %92, i64 84, i64 21
  %96 = add i64 %81, %.v224
  store i64 %96, i64* %3, align 8
  %RAX.i1963.phi.trans.insert = getelementptr inbounds %union.anon, %union.anon* %68, i64 0, i32 0
  %.pre153 = load i64, i64* %RBP.i, align 8
  br i1 %92, label %block_.L_489b2c, label %block_489aed

block_489aed:                                     ; preds = %entry
  %97 = add i64 %.pre153, -32
  %98 = add i64 %96, 4
  store i64 %98, i64* %3, align 8
  %99 = inttoptr i64 %97 to i64*
  %100 = load i64, i64* %99, align 8
  store i64 %100, i64* %RAX.i1963.phi.trans.insert, align 8
  %101 = add i64 %100, 532
  %102 = add i64 %96, 11
  store i64 %102, i64* %3, align 8
  %103 = inttoptr i64 %101 to i32*
  %104 = load i32, i32* %103, align 4
  store i8 0, i8* %29, align 1
  %105 = and i32 %104, 255
  %106 = tail call i32 @llvm.ctpop.i32(i32 %105)
  %107 = trunc i32 %106 to i8
  %108 = and i8 %107, 1
  %109 = xor i8 %108, 1
  store i8 %109, i8* %36, align 1
  store i8 0, i8* %42, align 1
  %110 = icmp eq i32 %104, 0
  %111 = zext i1 %110 to i8
  store i8 %111, i8* %45, align 1
  %112 = lshr i32 %104, 31
  %113 = trunc i32 %112 to i8
  store i8 %113, i8* %48, align 1
  store i8 0, i8* %54, align 1
  %.v225 = select i1 %110, i64 63, i64 17
  %114 = add i64 %96, %.v225
  store i64 %114, i64* %3, align 8
  br i1 %110, label %block_.L_489b2c, label %block_489afe

block_489afe:                                     ; preds = %block_489aed
  store i64 2, i64* %RAX.i1963.phi.trans.insert, align 8
  store i64 4, i64* %RCX.i2011, align 8
  %115 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %RDX.i1990 = getelementptr inbounds %union.anon, %union.anon* %115, i64 0, i32 0
  store i64 %82, i64* %RDX.i1990, align 8
  %116 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0
  %RSI.i1988 = getelementptr inbounds %union.anon, %union.anon* %116, i64 0, i32 0
  %117 = add i64 %82, 12
  %118 = add i64 %114, 21
  store i64 %118, i64* %3, align 8
  %119 = inttoptr i64 %117 to i32*
  %120 = load i32, i32* %119, align 4
  %121 = zext i32 %120 to i64
  store i64 %121, i64* %RSI.i1988, align 8
  %122 = add i64 %.pre153, -64
  %123 = add i64 %114, 24
  store i64 %123, i64* %3, align 8
  %124 = inttoptr i64 %122 to i32*
  store i32 2, i32* %124, align 4
  %ESI.i1981 = bitcast %union.anon* %116 to i32*
  %125 = load i32, i32* %ESI.i1981, align 4
  %126 = zext i32 %125 to i64
  %127 = load i64, i64* %3, align 8
  store i64 %126, i64* %RAX.i1963.phi.trans.insert, align 8
  %128 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %129 = sext i32 %125 to i64
  %130 = lshr i64 %129, 32
  store i64 %130, i64* %128, align 8
  %131 = load i64, i64* %RBP.i, align 8
  %132 = add i64 %131, -64
  %133 = add i64 %127, 6
  store i64 %133, i64* %3, align 8
  %134 = inttoptr i64 %132 to i32*
  %135 = load i32, i32* %134, align 4
  %136 = zext i32 %135 to i64
  store i64 %136, i64* %RSI.i1988, align 8
  %137 = add i64 %127, 8
  store i64 %137, i64* %3, align 8
  %138 = sext i32 %135 to i64
  %139 = shl nuw i64 %130, 32
  %140 = or i64 %139, %126
  %141 = sdiv i64 %140, %138
  %142 = shl i64 %141, 32
  %143 = ashr exact i64 %142, 32
  %144 = icmp eq i64 %141, %143
  br i1 %144, label %148, label %145

; <label>:145:                                    ; preds = %block_489afe
  %146 = bitcast %union.anon* %115 to i32*
  %147 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %137, %struct.Memory* %2)
  %.pre = load i32, i32* %146, align 4
  %.pre149 = load i64, i64* %3, align 8
  %.pre150 = load i64, i64* %RSI.i1988, align 8
  %.pre151 = load i64, i64* %RBP.i, align 8
  br label %routine_idivl__esi.exit

; <label>:148:                                    ; preds = %block_489afe
  %149 = srem i64 %140, %138
  %150 = and i64 %141, 4294967295
  store i64 %150, i64* %RAX.i1963.phi.trans.insert, align 8
  %151 = and i64 %149, 4294967295
  store i64 %151, i64* %RDX.i1990, align 8
  store i8 0, i8* %29, align 1
  store i8 0, i8* %36, align 1
  store i8 0, i8* %42, align 1
  store i8 0, i8* %45, align 1
  store i8 0, i8* %48, align 1
  store i8 0, i8* %54, align 1
  %152 = trunc i64 %149 to i32
  br label %routine_idivl__esi.exit

routine_idivl__esi.exit:                          ; preds = %148, %145
  %153 = phi i64 [ %.pre151, %145 ], [ %131, %148 ]
  %154 = phi i64 [ %.pre150, %145 ], [ %136, %148 ]
  %155 = phi i64 [ %.pre149, %145 ], [ %137, %148 ]
  %156 = phi i32 [ %.pre, %145 ], [ %152, %148 ]
  %157 = phi %struct.Memory* [ %147, %145 ], [ %2, %148 ]
  store i8 0, i8* %29, align 1
  %158 = and i32 %156, 255
  %159 = tail call i32 @llvm.ctpop.i32(i32 %158)
  %160 = trunc i32 %159 to i8
  %161 = and i8 %160, 1
  %162 = xor i8 %161, 1
  store i8 %162, i8* %36, align 1
  store i8 0, i8* %42, align 1
  %163 = icmp eq i32 %156, 0
  %164 = zext i1 %163 to i8
  store i8 %164, i8* %45, align 1
  %165 = lshr i32 %156, 31
  %166 = trunc i32 %165 to i8
  store i8 %166, i8* %48, align 1
  store i8 0, i8* %54, align 1
  %167 = load i32, i32* %ECX.i2007, align 4
  %168 = zext i32 %167 to i64
  %169 = select i1 %163, i64 %154, i64 %168
  %170 = and i64 %169, 4294967295
  store i64 %170, i64* %RSI.i1988, align 8
  %171 = add i64 %153, -68
  %172 = trunc i64 %169 to i32
  %173 = add i64 %155, 9
  store i64 %173, i64* %3, align 8
  %174 = inttoptr i64 %171 to i32*
  store i32 %172, i32* %174, align 4
  %175 = load i64, i64* %3, align 8
  %176 = add i64 %175, 15
  br label %block_.L_489b36

block_.L_489b2c:                                  ; preds = %entry, %block_489aed
  %177 = phi i64 [ %114, %block_489aed ], [ %96, %entry ]
  store i64 0, i64* %RAX.i1963.phi.trans.insert, align 8
  store i8 0, i8* %29, align 1
  store i8 1, i8* %36, align 1
  store i8 1, i8* %45, align 1
  store i8 0, i8* %48, align 1
  store i8 0, i8* %54, align 1
  store i8 0, i8* %42, align 1
  %178 = add i64 %.pre153, -68
  %179 = add i64 %177, 5
  store i64 %179, i64* %3, align 8
  %180 = inttoptr i64 %178 to i32*
  store i32 0, i32* %180, align 4
  %181 = load i64, i64* %3, align 8
  %182 = add i64 %181, 5
  store i64 %182, i64* %3, align 8
  br label %block_.L_489b36

block_.L_489b36:                                  ; preds = %block_.L_489b2c, %routine_idivl__esi.exit
  %storemerge = phi i64 [ %182, %block_.L_489b2c ], [ %176, %routine_idivl__esi.exit ]
  %MEMORY.1 = phi %struct.Memory* [ %2, %block_.L_489b2c ], [ %157, %routine_idivl__esi.exit ]
  %EAX.i1952.pre-phi = bitcast %union.anon* %68 to i32*
  %183 = load i64, i64* %RBP.i, align 8
  %184 = add i64 %183, -68
  %185 = add i64 %storemerge, 3
  store i64 %185, i64* %3, align 8
  %186 = inttoptr i64 %184 to i32*
  %187 = load i32, i32* %186, align 4
  %188 = zext i32 %187 to i64
  store i64 %188, i64* %RAX.i1963.phi.trans.insert, align 8
  %189 = add i64 %183, -60
  %190 = add i64 %storemerge, 6
  store i64 %190, i64* %3, align 8
  %191 = inttoptr i64 %189 to i32*
  store i32 %187, i32* %191, align 4
  %192 = load i64, i64* %RBP.i, align 8
  %193 = add i64 %192, -32
  %194 = load i64, i64* %3, align 8
  %195 = add i64 %194, 4
  store i64 %195, i64* %3, align 8
  %196 = inttoptr i64 %193 to i64*
  %197 = load i64, i64* %196, align 8
  store i64 %197, i64* %RCX.i2011, align 8
  %198 = add i64 %197, 572
  %199 = add i64 %194, 11
  store i64 %199, i64* %3, align 8
  %200 = inttoptr i64 %198 to i32*
  %201 = load i32, i32* %200, align 4
  store i8 0, i8* %29, align 1
  %202 = and i32 %201, 255
  %203 = tail call i32 @llvm.ctpop.i32(i32 %202)
  %204 = trunc i32 %203 to i8
  %205 = and i8 %204, 1
  %206 = xor i8 %205, 1
  store i8 %206, i8* %36, align 1
  store i8 0, i8* %42, align 1
  %207 = icmp eq i32 %201, 0
  %208 = zext i1 %207 to i8
  store i8 %208, i8* %45, align 1
  %209 = lshr i32 %201, 31
  %210 = trunc i32 %209 to i8
  store i8 %210, i8* %48, align 1
  store i8 0, i8* %54, align 1
  %.v226 = select i1 %207, i64 2551, i64 17
  %211 = add i64 %194, %.v226
  store i64 %211, i64* %3, align 8
  br i1 %207, label %block_.L_48a533, label %block_489b4d

block_489b4d:                                     ; preds = %block_.L_489b36
  %212 = add i64 %192, -48
  %213 = add i64 %211, 7
  store i64 %213, i64* %3, align 8
  %214 = inttoptr i64 %212 to i32*
  store i32 0, i32* %214, align 4
  %RDX.i1929 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %.pre154 = load i64, i64* %3, align 8
  br label %block_.L_489b54

block_.L_489b54:                                  ; preds = %block_489b5e, %block_489b4d
  %215 = phi i64 [ %324, %block_489b5e ], [ %.pre154, %block_489b4d ]
  %216 = load i64, i64* %RBP.i, align 8
  %217 = add i64 %216, -48
  %218 = add i64 %215, 4
  store i64 %218, i64* %3, align 8
  %219 = inttoptr i64 %217 to i32*
  %220 = load i32, i32* %219, align 4
  %221 = add i32 %220, -4
  %222 = icmp ult i32 %220, 4
  %223 = zext i1 %222 to i8
  store i8 %223, i8* %29, align 1
  %224 = and i32 %221, 255
  %225 = tail call i32 @llvm.ctpop.i32(i32 %224)
  %226 = trunc i32 %225 to i8
  %227 = and i8 %226, 1
  %228 = xor i8 %227, 1
  store i8 %228, i8* %36, align 1
  %229 = xor i32 %221, %220
  %230 = lshr i32 %229, 4
  %231 = trunc i32 %230 to i8
  %232 = and i8 %231, 1
  store i8 %232, i8* %42, align 1
  %233 = icmp eq i32 %221, 0
  %234 = zext i1 %233 to i8
  store i8 %234, i8* %45, align 1
  %235 = lshr i32 %221, 31
  %236 = trunc i32 %235 to i8
  store i8 %236, i8* %48, align 1
  %237 = lshr i32 %220, 31
  %238 = xor i32 %235, %237
  %239 = add nuw nsw i32 %238, %237
  %240 = icmp eq i32 %239, 2
  %241 = zext i1 %240 to i8
  store i8 %241, i8* %54, align 1
  %242 = icmp ne i8 %236, 0
  %243 = xor i1 %242, %240
  %.v208 = select i1 %243, i64 10, i64 77
  %244 = add i64 %215, %.v208
  store i64 %244, i64* %3, align 8
  br i1 %243, label %block_489b5e, label %block_.L_489ba1

block_489b5e:                                     ; preds = %block_.L_489b54
  %245 = add i64 %244, 4
  store i64 %245, i64* %3, align 8
  %246 = load i32, i32* %219, align 4
  %247 = sext i32 %246 to i64
  store i64 %247, i64* %RAX.i1963.phi.trans.insert, align 8
  %248 = shl nsw i64 %247, 2
  %249 = add nsw i64 %248, 7137808
  %250 = add i64 %244, 11
  store i64 %250, i64* %3, align 8
  %251 = inttoptr i64 %249 to i32*
  %252 = load i32, i32* %251, align 4
  %253 = zext i32 %252 to i64
  store i64 %253, i64* %RCX.i2011, align 8
  %254 = add i64 %216, -32
  %255 = add i64 %244, 15
  store i64 %255, i64* %3, align 8
  %256 = inttoptr i64 %254 to i64*
  %257 = load i64, i64* %256, align 8
  store i64 %257, i64* %RAX.i1963.phi.trans.insert, align 8
  %258 = add i64 %244, 19
  store i64 %258, i64* %3, align 8
  %259 = load i32, i32* %219, align 4
  %260 = sext i32 %259 to i64
  store i64 %260, i64* %RDX.i1929, align 8
  %261 = shl nsw i64 %260, 2
  %262 = add i64 %257, 472
  %263 = add i64 %262, %261
  %264 = add i64 %244, 26
  store i64 %264, i64* %3, align 8
  %265 = inttoptr i64 %263 to i32*
  store i32 %252, i32* %265, align 4
  %266 = load i64, i64* %RBP.i, align 8
  %267 = add i64 %266, -48
  %268 = load i64, i64* %3, align 8
  %269 = add i64 %268, 4
  store i64 %269, i64* %3, align 8
  %270 = inttoptr i64 %267 to i32*
  %271 = load i32, i32* %270, align 4
  %272 = sext i32 %271 to i64
  store i64 %272, i64* %RAX.i1963.phi.trans.insert, align 8
  %273 = shl nsw i64 %272, 1
  %274 = add nsw i64 %273, 7407488
  %275 = add i64 %268, 12
  store i64 %275, i64* %3, align 8
  %276 = inttoptr i64 %274 to i16*
  %277 = load i16, i16* %276, align 2
  %278 = sext i16 %277 to i64
  %279 = and i64 %278, 4294967295
  store i64 %279, i64* %RCX.i2011, align 8
  %280 = add i64 %266, -32
  %281 = add i64 %268, 16
  store i64 %281, i64* %3, align 8
  %282 = inttoptr i64 %280 to i64*
  %283 = load i64, i64* %282, align 8
  store i64 %283, i64* %RAX.i1963.phi.trans.insert, align 8
  %284 = add i64 %268, 20
  store i64 %284, i64* %3, align 8
  %285 = load i32, i32* %270, align 4
  %286 = sext i32 %285 to i64
  store i64 %286, i64* %RDX.i1929, align 8
  %287 = shl nsw i64 %286, 2
  %288 = add i64 %283, 488
  %289 = add i64 %288, %287
  %290 = sext i16 %277 to i32
  %291 = add i64 %268, 27
  store i64 %291, i64* %3, align 8
  %292 = inttoptr i64 %289 to i32*
  store i32 %290, i32* %292, align 4
  %293 = load i64, i64* %RBP.i, align 8
  %294 = add i64 %293, -48
  %295 = load i64, i64* %3, align 8
  %296 = add i64 %295, 3
  store i64 %296, i64* %3, align 8
  %297 = inttoptr i64 %294 to i32*
  %298 = load i32, i32* %297, align 4
  %299 = add i32 %298, 1
  %300 = zext i32 %299 to i64
  store i64 %300, i64* %RAX.i1963.phi.trans.insert, align 8
  %301 = icmp eq i32 %298, -1
  %302 = icmp eq i32 %299, 0
  %303 = or i1 %301, %302
  %304 = zext i1 %303 to i8
  store i8 %304, i8* %29, align 1
  %305 = and i32 %299, 255
  %306 = tail call i32 @llvm.ctpop.i32(i32 %305)
  %307 = trunc i32 %306 to i8
  %308 = and i8 %307, 1
  %309 = xor i8 %308, 1
  store i8 %309, i8* %36, align 1
  %310 = xor i32 %299, %298
  %311 = lshr i32 %310, 4
  %312 = trunc i32 %311 to i8
  %313 = and i8 %312, 1
  store i8 %313, i8* %42, align 1
  %314 = zext i1 %302 to i8
  store i8 %314, i8* %45, align 1
  %315 = lshr i32 %299, 31
  %316 = trunc i32 %315 to i8
  store i8 %316, i8* %48, align 1
  %317 = lshr i32 %298, 31
  %318 = xor i32 %315, %317
  %319 = add nuw nsw i32 %318, %315
  %320 = icmp eq i32 %319, 2
  %321 = zext i1 %320 to i8
  store i8 %321, i8* %54, align 1
  %322 = add i64 %295, 9
  store i64 %322, i64* %3, align 8
  store i32 %299, i32* %297, align 4
  %323 = load i64, i64* %3, align 8
  %324 = add i64 %323, -72
  store i64 %324, i64* %3, align 8
  br label %block_.L_489b54

block_.L_489ba1:                                  ; preds = %block_.L_489b54
  %325 = add i64 %216, -56
  %326 = add i64 %244, 4
  store i64 %326, i64* %3, align 8
  %327 = inttoptr i64 %325 to i32*
  %328 = load i32, i32* %327, align 4
  store i8 0, i8* %29, align 1
  %329 = and i32 %328, 255
  %330 = tail call i32 @llvm.ctpop.i32(i32 %329)
  %331 = trunc i32 %330 to i8
  %332 = and i8 %331, 1
  %333 = xor i8 %332, 1
  store i8 %333, i8* %36, align 1
  store i8 0, i8* %42, align 1
  %334 = icmp eq i32 %328, 0
  %335 = zext i1 %334 to i8
  store i8 %335, i8* %45, align 1
  %336 = lshr i32 %328, 31
  %337 = trunc i32 %336 to i8
  store i8 %337, i8* %48, align 1
  store i8 0, i8* %54, align 1
  %.v207 = select i1 %334, i64 316, i64 10
  %338 = add i64 %244, %.v207
  %339 = add i64 %216, -44
  %340 = add i64 %338, 7
  store i64 %340, i64* %3, align 8
  %341 = inttoptr i64 %339 to i32*
  store i32 0, i32* %341, align 4
  %342 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %343 = bitcast %union.anon* %342 to i32*
  %344 = getelementptr inbounds %union.anon, %union.anon* %342, i64 0, i32 0
  %345 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0
  %RSI.i1668 = getelementptr inbounds %union.anon, %union.anon* %345, i64 0, i32 0
  %ESI.i1662 = bitcast %union.anon* %345 to i32*
  %346 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0
  %R8W.i1606 = bitcast %union.anon* %346 to i16*
  %R9.i1598 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 19, i32 0, i32 0
  %.pre167 = load i64, i64* %3, align 8
  br i1 %334, label %block_.L_489ce4.preheader, label %block_.L_489bb2.preheader

block_.L_489bb2.preheader:                        ; preds = %block_.L_489ba1
  br label %block_.L_489bb2

block_.L_489ce4.preheader:                        ; preds = %block_.L_489ba1
  br label %block_.L_489ce4

block_.L_489bb2:                                  ; preds = %block_.L_489bb2.preheader, %block_.L_489cc5
  %347 = phi i64 [ %920, %block_.L_489cc5 ], [ %.pre167, %block_.L_489bb2.preheader ]
  %MEMORY.3 = phi %struct.Memory* [ %MEMORY.4, %block_.L_489cc5 ], [ %MEMORY.1, %block_.L_489bb2.preheader ]
  %348 = load i64, i64* %RBP.i, align 8
  %349 = add i64 %348, -44
  %350 = add i64 %347, 4
  store i64 %350, i64* %3, align 8
  %351 = inttoptr i64 %349 to i32*
  %352 = load i32, i32* %351, align 4
  %353 = add i32 %352, -4
  %354 = icmp ult i32 %352, 4
  %355 = zext i1 %354 to i8
  store i8 %355, i8* %29, align 1
  %356 = and i32 %353, 255
  %357 = tail call i32 @llvm.ctpop.i32(i32 %356)
  %358 = trunc i32 %357 to i8
  %359 = and i8 %358, 1
  %360 = xor i8 %359, 1
  store i8 %360, i8* %36, align 1
  %361 = xor i32 %353, %352
  %362 = lshr i32 %361, 4
  %363 = trunc i32 %362 to i8
  %364 = and i8 %363, 1
  store i8 %364, i8* %42, align 1
  %365 = icmp eq i32 %353, 0
  %366 = zext i1 %365 to i8
  store i8 %366, i8* %45, align 1
  %367 = lshr i32 %353, 31
  %368 = trunc i32 %367 to i8
  store i8 %368, i8* %48, align 1
  %369 = lshr i32 %352, 31
  %370 = xor i32 %367, %369
  %371 = add nuw nsw i32 %370, %369
  %372 = icmp eq i32 %371, 2
  %373 = zext i1 %372 to i8
  store i8 %373, i8* %54, align 1
  %374 = icmp ne i8 %368, 0
  %375 = xor i1 %374, %372
  %.v227 = select i1 %375, i64 10, i64 294
  %376 = add i64 %347, %.v227
  store i64 %376, i64* %3, align 8
  br i1 %375, label %block_489bbc, label %block_.L_489cd8

block_489bbc:                                     ; preds = %block_.L_489bb2
  %377 = add i64 %348, -48
  %378 = add i64 %376, 7
  store i64 %378, i64* %3, align 8
  %379 = inttoptr i64 %377 to i32*
  store i32 0, i32* %379, align 4
  %.pre156 = load i64, i64* %3, align 8
  br label %block_.L_489bc3

block_.L_489bc3:                                  ; preds = %routine_idivl__ecx.exit1815, %block_489bbc
  %380 = phi i64 [ %.pre156, %block_489bbc ], [ %890, %routine_idivl__ecx.exit1815 ]
  %MEMORY.4 = phi %struct.Memory* [ %MEMORY.3, %block_489bbc ], [ %610, %routine_idivl__ecx.exit1815 ]
  %381 = load i64, i64* %RBP.i, align 8
  %382 = add i64 %381, -48
  %383 = add i64 %380, 4
  store i64 %383, i64* %3, align 8
  %384 = inttoptr i64 %382 to i32*
  %385 = load i32, i32* %384, align 4
  %386 = add i32 %385, -4
  %387 = icmp ult i32 %385, 4
  %388 = zext i1 %387 to i8
  store i8 %388, i8* %29, align 1
  %389 = and i32 %386, 255
  %390 = tail call i32 @llvm.ctpop.i32(i32 %389)
  %391 = trunc i32 %390 to i8
  %392 = and i8 %391, 1
  %393 = xor i8 %392, 1
  store i8 %393, i8* %36, align 1
  %394 = xor i32 %386, %385
  %395 = lshr i32 %394, 4
  %396 = trunc i32 %395 to i8
  %397 = and i8 %396, 1
  store i8 %397, i8* %42, align 1
  %398 = icmp eq i32 %386, 0
  %399 = zext i1 %398 to i8
  store i8 %399, i8* %45, align 1
  %400 = lshr i32 %386, 31
  %401 = trunc i32 %400 to i8
  store i8 %401, i8* %48, align 1
  %402 = lshr i32 %385, 31
  %403 = xor i32 %400, %402
  %404 = add nuw nsw i32 %403, %402
  %405 = icmp eq i32 %404, 2
  %406 = zext i1 %405 to i8
  store i8 %406, i8* %54, align 1
  %407 = icmp ne i8 %401, 0
  %408 = xor i1 %407, %405
  %.v240 = select i1 %408, i64 10, i64 258
  %409 = add i64 %380, %.v240
  %410 = add i64 %409, 5
  store i64 %410, i64* %3, align 8
  br i1 %408, label %block_489bcd, label %block_.L_489cc5

block_489bcd:                                     ; preds = %block_.L_489bc3
  store i64 2, i64* %RAX.i1963.phi.trans.insert, align 8
  %411 = add i64 %381, -44
  %412 = add i64 %409, 8
  store i64 %412, i64* %3, align 8
  %413 = inttoptr i64 %411 to i32*
  %414 = load i32, i32* %413, align 4
  %415 = zext i32 %414 to i64
  store i64 %415, i64* %RCX.i2011, align 8
  %416 = add i64 %381, -72
  %417 = add i64 %409, 11
  store i64 %417, i64* %3, align 8
  %418 = inttoptr i64 %416 to i32*
  store i32 2, i32* %418, align 4
  %419 = load i32, i32* %ECX.i2007, align 4
  %420 = zext i32 %419 to i64
  %421 = load i64, i64* %3, align 8
  store i64 %420, i64* %RAX.i1963.phi.trans.insert, align 8
  %422 = sext i32 %419 to i64
  %423 = lshr i64 %422, 32
  store i64 %423, i64* %RDX.i1929, align 8
  %424 = load i64, i64* %RBP.i, align 8
  %425 = add i64 %424, -72
  %426 = add i64 %421, 6
  store i64 %426, i64* %3, align 8
  %427 = inttoptr i64 %425 to i32*
  %428 = load i32, i32* %427, align 4
  %429 = zext i32 %428 to i64
  store i64 %429, i64* %RCX.i2011, align 8
  %430 = add i64 %421, 8
  store i64 %430, i64* %3, align 8
  %431 = sext i32 %428 to i64
  %432 = shl nuw i64 %423, 32
  %433 = or i64 %432, %420
  %434 = sdiv i64 %433, %431
  %435 = shl i64 %434, 32
  %436 = ashr exact i64 %435, 32
  %437 = icmp eq i64 %434, %436
  br i1 %437, label %440, label %438

; <label>:438:                                    ; preds = %block_489bcd
  %439 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %430, %struct.Memory* %MEMORY.4)
  %.pre157 = load i64, i64* %RAX.i1963.phi.trans.insert, align 8
  %.pre158 = load i64, i64* %3, align 8
  %.pre159 = load i64, i64* %RBP.i, align 8
  br label %routine_idivl__ecx.exit1868

; <label>:440:                                    ; preds = %block_489bcd
  %441 = srem i64 %433, %431
  %442 = and i64 %434, 4294967295
  store i64 %442, i64* %RAX.i1963.phi.trans.insert, align 8
  %443 = and i64 %441, 4294967295
  store i64 %443, i64* %344, align 8
  store i8 0, i8* %29, align 1
  store i8 0, i8* %36, align 1
  store i8 0, i8* %42, align 1
  store i8 0, i8* %45, align 1
  store i8 0, i8* %48, align 1
  store i8 0, i8* %54, align 1
  br label %routine_idivl__ecx.exit1868

routine_idivl__ecx.exit1868:                      ; preds = %440, %438
  %444 = phi i64 [ %.pre159, %438 ], [ %424, %440 ]
  %445 = phi i64 [ %.pre158, %438 ], [ %430, %440 ]
  %446 = phi i64 [ %.pre157, %438 ], [ %442, %440 ]
  %447 = phi %struct.Memory* [ %439, %438 ], [ %MEMORY.4, %440 ]
  %448 = trunc i64 %446 to i32
  %449 = shl i32 %448, 1
  %450 = icmp slt i32 %448, 0
  %451 = icmp slt i32 %449, 0
  %452 = xor i1 %450, %451
  %453 = zext i32 %449 to i64
  store i64 %453, i64* %RAX.i1963.phi.trans.insert, align 8
  %.lobit = lshr i32 %448, 31
  %454 = trunc i32 %.lobit to i8
  store i8 %454, i8* %29, align 1
  %455 = and i32 %449, 254
  %456 = tail call i32 @llvm.ctpop.i32(i32 %455)
  %457 = trunc i32 %456 to i8
  %458 = and i8 %457, 1
  %459 = xor i8 %458, 1
  store i8 %459, i8* %36, align 1
  store i8 0, i8* %42, align 1
  %460 = icmp eq i32 %449, 0
  %461 = zext i1 %460 to i8
  store i8 %461, i8* %45, align 1
  %462 = lshr i32 %448, 30
  %463 = trunc i32 %462 to i8
  %464 = and i8 %463, 1
  store i8 %464, i8* %48, align 1
  %465 = zext i1 %452 to i8
  store i8 %465, i8* %54, align 1
  %466 = add i64 %444, -48
  %467 = add i64 %445, 5
  store i64 %467, i64* %3, align 8
  %468 = inttoptr i64 %466 to i32*
  %469 = load i32, i32* %468, align 4
  %470 = zext i32 %469 to i64
  store i64 %470, i64* %RSI.i1668, align 8
  %471 = add i64 %444, -76
  %472 = add i64 %445, 8
  store i64 %472, i64* %3, align 8
  %473 = inttoptr i64 %471 to i32*
  store i32 %449, i32* %473, align 4
  %474 = load i32, i32* %ESI.i1662, align 4
  %475 = zext i32 %474 to i64
  %476 = load i64, i64* %3, align 8
  store i64 %475, i64* %RAX.i1963.phi.trans.insert, align 8
  %477 = sext i32 %474 to i64
  %478 = lshr i64 %477, 32
  store i64 %478, i64* %RDX.i1929, align 8
  %479 = load i32, i32* %ECX.i2007, align 4
  %480 = add i64 %476, 5
  store i64 %480, i64* %3, align 8
  %481 = sext i32 %479 to i64
  %482 = shl nuw i64 %478, 32
  %483 = or i64 %482, %475
  %484 = sdiv i64 %483, %481
  %485 = shl i64 %484, 32
  %486 = ashr exact i64 %485, 32
  %487 = icmp eq i64 %484, %486
  br i1 %487, label %490, label %488

; <label>:488:                                    ; preds = %routine_idivl__ecx.exit1868
  %489 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %480, %struct.Memory* %447)
  %.pre160 = load i64, i64* %3, align 8
  %.pre161 = load i32, i32* %EAX.i1952.pre-phi, align 4
  br label %routine_idivl__ecx.exit1851

; <label>:490:                                    ; preds = %routine_idivl__ecx.exit1868
  %491 = srem i64 %483, %481
  %492 = and i64 %484, 4294967295
  store i64 %492, i64* %RAX.i1963.phi.trans.insert, align 8
  %493 = and i64 %491, 4294967295
  store i64 %493, i64* %344, align 8
  store i8 0, i8* %29, align 1
  store i8 0, i8* %36, align 1
  store i8 0, i8* %42, align 1
  store i8 0, i8* %45, align 1
  store i8 0, i8* %48, align 1
  store i8 0, i8* %54, align 1
  %494 = trunc i64 %484 to i32
  br label %routine_idivl__ecx.exit1851

routine_idivl__ecx.exit1851:                      ; preds = %490, %488
  %495 = phi i32 [ %.pre161, %488 ], [ %494, %490 ]
  %496 = phi i64 [ %.pre160, %488 ], [ %480, %490 ]
  %497 = phi %struct.Memory* [ %489, %488 ], [ %447, %490 ]
  %498 = load i64, i64* %RBP.i, align 8
  %499 = add i64 %498, -76
  %500 = add i64 %496, 3
  store i64 %500, i64* %3, align 8
  %501 = inttoptr i64 %499 to i32*
  %502 = load i32, i32* %501, align 4
  %503 = add i32 %495, %502
  %504 = zext i32 %503 to i64
  store i64 %504, i64* %RSI.i1668, align 8
  %505 = icmp ult i32 %503, %502
  %506 = icmp ult i32 %503, %495
  %507 = or i1 %505, %506
  %508 = zext i1 %507 to i8
  store i8 %508, i8* %29, align 1
  %509 = and i32 %503, 255
  %510 = tail call i32 @llvm.ctpop.i32(i32 %509)
  %511 = trunc i32 %510 to i8
  %512 = and i8 %511, 1
  %513 = xor i8 %512, 1
  store i8 %513, i8* %36, align 1
  %514 = xor i32 %495, %502
  %515 = xor i32 %514, %503
  %516 = lshr i32 %515, 4
  %517 = trunc i32 %516 to i8
  %518 = and i8 %517, 1
  store i8 %518, i8* %42, align 1
  %519 = icmp eq i32 %503, 0
  %520 = zext i1 %519 to i8
  store i8 %520, i8* %45, align 1
  %521 = lshr i32 %503, 31
  %522 = trunc i32 %521 to i8
  store i8 %522, i8* %48, align 1
  %523 = lshr i32 %502, 31
  %524 = lshr i32 %495, 31
  %525 = xor i32 %521, %523
  %526 = xor i32 %521, %524
  %527 = add nuw nsw i32 %525, %526
  %528 = icmp eq i32 %527, 2
  %529 = zext i1 %528 to i8
  store i8 %529, i8* %54, align 1
  %530 = add i64 %498, -40
  %531 = add i64 %496, 8
  store i64 %531, i64* %3, align 8
  %532 = inttoptr i64 %530 to i32*
  store i32 %503, i32* %532, align 4
  %533 = load i64, i64* %RBP.i, align 8
  %534 = add i64 %533, -44
  %535 = load i64, i64* %3, align 8
  %536 = add i64 %535, 3
  store i64 %536, i64* %3, align 8
  %537 = inttoptr i64 %534 to i32*
  %538 = load i32, i32* %537, align 4
  %539 = zext i32 %538 to i64
  store i64 %539, i64* %RAX.i1963.phi.trans.insert, align 8
  %540 = sext i32 %538 to i64
  %541 = lshr i64 %540, 32
  store i64 %541, i64* %RDX.i1929, align 8
  %542 = load i32, i32* %ECX.i2007, align 4
  %543 = add i64 %535, 6
  store i64 %543, i64* %3, align 8
  %544 = sext i32 %542 to i64
  %545 = shl nuw i64 %541, 32
  %546 = or i64 %545, %539
  %547 = sdiv i64 %546, %544
  %548 = shl i64 %547, 32
  %549 = ashr exact i64 %548, 32
  %550 = icmp eq i64 %547, %549
  br i1 %550, label %553, label %551

; <label>:551:                                    ; preds = %routine_idivl__ecx.exit1851
  %552 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %543, %struct.Memory* %497)
  %.pre162 = load i64, i64* %344, align 8
  %.pre163 = load i64, i64* %3, align 8
  %.pre164 = load i64, i64* %RBP.i, align 8
  br label %routine_idivl__ecx.exit1832

; <label>:553:                                    ; preds = %routine_idivl__ecx.exit1851
  %554 = srem i64 %546, %544
  %555 = and i64 %547, 4294967295
  store i64 %555, i64* %RAX.i1963.phi.trans.insert, align 8
  %556 = and i64 %554, 4294967295
  store i64 %556, i64* %344, align 8
  store i8 0, i8* %29, align 1
  store i8 0, i8* %36, align 1
  store i8 0, i8* %42, align 1
  store i8 0, i8* %45, align 1
  store i8 0, i8* %48, align 1
  store i8 0, i8* %54, align 1
  br label %routine_idivl__ecx.exit1832

routine_idivl__ecx.exit1832:                      ; preds = %553, %551
  %557 = phi i64 [ %.pre164, %551 ], [ %533, %553 ]
  %558 = phi i64 [ %.pre163, %551 ], [ %543, %553 ]
  %559 = phi i64 [ %.pre162, %551 ], [ %556, %553 ]
  %560 = phi %struct.Memory* [ %552, %551 ], [ %497, %553 ]
  %561 = trunc i64 %559 to i32
  %562 = shl i32 %561, 1
  %563 = icmp slt i32 %561, 0
  %564 = icmp slt i32 %562, 0
  %565 = xor i1 %563, %564
  %566 = zext i32 %562 to i64
  store i64 %566, i64* %344, align 8
  %.lobit47 = lshr i32 %561, 31
  %567 = trunc i32 %.lobit47 to i8
  store i8 %567, i8* %29, align 1
  %568 = and i32 %562, 254
  %569 = tail call i32 @llvm.ctpop.i32(i32 %568)
  %570 = trunc i32 %569 to i8
  %571 = and i8 %570, 1
  %572 = xor i8 %571, 1
  store i8 %572, i8* %36, align 1
  store i8 0, i8* %42, align 1
  %573 = icmp eq i32 %562, 0
  %574 = zext i1 %573 to i8
  store i8 %574, i8* %45, align 1
  %575 = lshr i32 %561, 30
  %576 = trunc i32 %575 to i8
  %577 = and i8 %576, 1
  store i8 %577, i8* %48, align 1
  %578 = zext i1 %565 to i8
  store i8 %578, i8* %54, align 1
  %579 = add i64 %557, -48
  %580 = add i64 %558, 5
  store i64 %580, i64* %3, align 8
  %581 = inttoptr i64 %579 to i32*
  %582 = load i32, i32* %581, align 4
  %583 = zext i32 %582 to i64
  store i64 %583, i64* %RSI.i1668, align 8
  store i64 %583, i64* %RAX.i1963.phi.trans.insert, align 8
  %584 = add i64 %557, -80
  %585 = add i64 %558, 10
  store i64 %585, i64* %3, align 8
  %586 = inttoptr i64 %584 to i32*
  store i32 %562, i32* %586, align 4
  %587 = load i64, i64* %3, align 8
  %588 = load i32, i32* %EAX.i1952.pre-phi, align 8
  %589 = sext i32 %588 to i64
  %590 = lshr i64 %589, 32
  store i64 %590, i64* %RDX.i1929, align 8
  %591 = load i32, i32* %ECX.i2007, align 4
  %592 = add i64 %587, 3
  store i64 %592, i64* %3, align 8
  %593 = zext i32 %588 to i64
  %594 = sext i32 %591 to i64
  %595 = shl nuw i64 %590, 32
  %596 = or i64 %595, %593
  %597 = sdiv i64 %596, %594
  %598 = shl i64 %597, 32
  %599 = ashr exact i64 %598, 32
  %600 = icmp eq i64 %597, %599
  br i1 %600, label %603, label %601

; <label>:601:                                    ; preds = %routine_idivl__ecx.exit1832
  %602 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %592, %struct.Memory* %560)
  %.pre165 = load i64, i64* %3, align 8
  %.pre166 = load i32, i32* %343, align 4
  br label %routine_idivl__ecx.exit1815

; <label>:603:                                    ; preds = %routine_idivl__ecx.exit1832
  %604 = srem i64 %596, %594
  %605 = and i64 %597, 4294967295
  store i64 %605, i64* %RAX.i1963.phi.trans.insert, align 8
  %606 = and i64 %604, 4294967295
  store i64 %606, i64* %344, align 8
  store i8 0, i8* %29, align 1
  store i8 0, i8* %36, align 1
  store i8 0, i8* %42, align 1
  store i8 0, i8* %45, align 1
  store i8 0, i8* %48, align 1
  store i8 0, i8* %54, align 1
  %607 = trunc i64 %604 to i32
  br label %routine_idivl__ecx.exit1815

routine_idivl__ecx.exit1815:                      ; preds = %603, %601
  %608 = phi i32 [ %.pre166, %601 ], [ %607, %603 ]
  %609 = phi i64 [ %.pre165, %601 ], [ %592, %603 ]
  %610 = phi %struct.Memory* [ %602, %601 ], [ %560, %603 ]
  %611 = load i64, i64* %RBP.i, align 8
  %612 = add i64 %611, -80
  %613 = add i64 %609, 3
  store i64 %613, i64* %3, align 8
  %614 = inttoptr i64 %612 to i32*
  %615 = load i32, i32* %614, align 4
  %616 = add i32 %608, %615
  %617 = zext i32 %616 to i64
  store i64 %617, i64* %RSI.i1668, align 8
  %618 = icmp ult i32 %616, %615
  %619 = icmp ult i32 %616, %608
  %620 = or i1 %618, %619
  %621 = zext i1 %620 to i8
  store i8 %621, i8* %29, align 1
  %622 = and i32 %616, 255
  %623 = tail call i32 @llvm.ctpop.i32(i32 %622)
  %624 = trunc i32 %623 to i8
  %625 = and i8 %624, 1
  %626 = xor i8 %625, 1
  store i8 %626, i8* %36, align 1
  %627 = xor i32 %608, %615
  %628 = xor i32 %627, %616
  %629 = lshr i32 %628, 4
  %630 = trunc i32 %629 to i8
  %631 = and i8 %630, 1
  store i8 %631, i8* %42, align 1
  %632 = icmp eq i32 %616, 0
  %633 = zext i1 %632 to i8
  store i8 %633, i8* %45, align 1
  %634 = lshr i32 %616, 31
  %635 = trunc i32 %634 to i8
  store i8 %635, i8* %48, align 1
  %636 = lshr i32 %615, 31
  %637 = lshr i32 %608, 31
  %638 = xor i32 %634, %636
  %639 = xor i32 %634, %637
  %640 = add nuw nsw i32 %638, %639
  %641 = icmp eq i32 %640, 2
  %642 = zext i1 %641 to i8
  store i8 %642, i8* %54, align 1
  %643 = add i64 %611, -52
  %644 = add i64 %609, 8
  store i64 %644, i64* %3, align 8
  %645 = inttoptr i64 %643 to i32*
  store i32 %616, i32* %645, align 4
  %646 = load i64, i64* %RBP.i, align 8
  %647 = add i64 %646, -40
  %648 = load i64, i64* %3, align 8
  %649 = add i64 %648, 4
  store i64 %649, i64* %3, align 8
  %650 = inttoptr i64 %647 to i32*
  %651 = load i32, i32* %650, align 4
  %652 = sext i32 %651 to i64
  store i64 %652, i64* %RDI.i1834, align 8
  %653 = shl nsw i64 %652, 1
  %654 = add nsw i64 %653, 7485124
  %655 = add i64 %648, 13
  store i64 %655, i64* %3, align 8
  %656 = inttoptr i64 %654 to i16*
  %657 = load i16, i16* %656, align 2
  store i16 %657, i16* %R8W.i1606, align 2
  %658 = load i64, i64* bitcast (%G_0x70fcf0_type* @G_0x70fcf0 to i64*), align 8
  store i64 %658, i64* %RDI.i1834, align 8
  %659 = add i64 %658, 6480
  %660 = add i64 %648, 28
  store i64 %660, i64* %3, align 8
  %661 = inttoptr i64 %659 to i64*
  %662 = load i64, i64* %661, align 8
  store i64 %662, i64* %RDI.i1834, align 8
  %663 = add i64 %648, 31
  store i64 %663, i64* %3, align 8
  %664 = inttoptr i64 %662 to i64*
  %665 = load i64, i64* %664, align 8
  store i64 %665, i64* %RDI.i1834, align 8
  %666 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*), align 8
  store i64 %666, i64* %R9.i1598, align 8
  %667 = add i64 %666, 144
  %668 = add i64 %648, 46
  store i64 %668, i64* %3, align 8
  %669 = inttoptr i64 %667 to i32*
  %670 = load i32, i32* %669, align 4
  %671 = zext i32 %670 to i64
  store i64 %671, i64* %344, align 8
  %672 = add i64 %646, -48
  %673 = add i64 %648, 49
  store i64 %673, i64* %3, align 8
  %674 = inttoptr i64 %672 to i32*
  %675 = load i32, i32* %674, align 4
  %676 = add i32 %675, %670
  %677 = zext i32 %676 to i64
  store i64 %677, i64* %344, align 8
  %678 = icmp ult i32 %676, %670
  %679 = icmp ult i32 %676, %675
  %680 = or i1 %678, %679
  %681 = zext i1 %680 to i8
  store i8 %681, i8* %29, align 1
  %682 = and i32 %676, 255
  %683 = tail call i32 @llvm.ctpop.i32(i32 %682)
  %684 = trunc i32 %683 to i8
  %685 = and i8 %684, 1
  %686 = xor i8 %685, 1
  store i8 %686, i8* %36, align 1
  %687 = xor i32 %675, %670
  %688 = xor i32 %687, %676
  %689 = lshr i32 %688, 4
  %690 = trunc i32 %689 to i8
  %691 = and i8 %690, 1
  store i8 %691, i8* %42, align 1
  %692 = icmp eq i32 %676, 0
  %693 = zext i1 %692 to i8
  store i8 %693, i8* %45, align 1
  %694 = lshr i32 %676, 31
  %695 = trunc i32 %694 to i8
  store i8 %695, i8* %48, align 1
  %696 = lshr i32 %670, 31
  %697 = lshr i32 %675, 31
  %698 = xor i32 %694, %696
  %699 = xor i32 %694, %697
  %700 = add nuw nsw i32 %698, %699
  %701 = icmp eq i32 %700, 2
  %702 = zext i1 %701 to i8
  store i8 %702, i8* %54, align 1
  %703 = sext i32 %676 to i64
  store i64 %703, i64* %R9.i1598, align 8
  %704 = shl nsw i64 %703, 3
  %705 = add i64 %665, %704
  %706 = add i64 %648, 56
  store i64 %706, i64* %3, align 8
  %707 = inttoptr i64 %705 to i64*
  %708 = load i64, i64* %707, align 8
  store i64 %708, i64* %RDI.i1834, align 8
  store i64 %666, i64* %R9.i1598, align 8
  %709 = add i64 %666, 148
  %710 = add i64 %648, 71
  store i64 %710, i64* %3, align 8
  %711 = inttoptr i64 %709 to i32*
  %712 = load i32, i32* %711, align 4
  %713 = zext i32 %712 to i64
  store i64 %713, i64* %344, align 8
  %714 = load i64, i64* %RBP.i, align 8
  %715 = add i64 %714, -44
  %716 = add i64 %648, 74
  store i64 %716, i64* %3, align 8
  %717 = inttoptr i64 %715 to i32*
  %718 = load i32, i32* %717, align 4
  %719 = add i32 %718, %712
  %720 = zext i32 %719 to i64
  store i64 %720, i64* %344, align 8
  %721 = icmp ult i32 %719, %712
  %722 = icmp ult i32 %719, %718
  %723 = or i1 %721, %722
  %724 = zext i1 %723 to i8
  store i8 %724, i8* %29, align 1
  %725 = and i32 %719, 255
  %726 = tail call i32 @llvm.ctpop.i32(i32 %725)
  %727 = trunc i32 %726 to i8
  %728 = and i8 %727, 1
  %729 = xor i8 %728, 1
  store i8 %729, i8* %36, align 1
  %730 = xor i32 %718, %712
  %731 = xor i32 %730, %719
  %732 = lshr i32 %731, 4
  %733 = trunc i32 %732 to i8
  %734 = and i8 %733, 1
  store i8 %734, i8* %42, align 1
  %735 = icmp eq i32 %719, 0
  %736 = zext i1 %735 to i8
  store i8 %736, i8* %45, align 1
  %737 = lshr i32 %719, 31
  %738 = trunc i32 %737 to i8
  store i8 %738, i8* %48, align 1
  %739 = lshr i32 %712, 31
  %740 = lshr i32 %718, 31
  %741 = xor i32 %737, %739
  %742 = xor i32 %737, %740
  %743 = add nuw nsw i32 %741, %742
  %744 = icmp eq i32 %743, 2
  %745 = zext i1 %744 to i8
  store i8 %745, i8* %54, align 1
  %746 = sext i32 %719 to i64
  store i64 %746, i64* %R9.i1598, align 8
  %747 = shl nsw i64 %746, 1
  %748 = add i64 %708, %747
  %749 = load i16, i16* %R8W.i1606, align 2
  %750 = add i64 %648, 82
  store i64 %750, i64* %3, align 8
  %751 = inttoptr i64 %748 to i16*
  store i16 %749, i16* %751, align 2
  %752 = load i64, i64* %RBP.i, align 8
  %753 = add i64 %752, -40
  %754 = load i64, i64* %3, align 8
  %755 = add i64 %754, 4
  store i64 %755, i64* %3, align 8
  %756 = inttoptr i64 %753 to i32*
  %757 = load i32, i32* %756, align 4
  %758 = sext i32 %757 to i64
  store i64 %758, i64* %RDI.i1834, align 8
  %759 = shl nsw i64 %758, 1
  %760 = add nsw i64 %759, 7492200
  %761 = add i64 %754, 13
  store i64 %761, i64* %3, align 8
  %762 = inttoptr i64 %760 to i16*
  %763 = load i16, i16* %762, align 2
  store i16 %763, i16* %R8W.i1606, align 2
  %764 = load i64, i64* bitcast (%G_0x70fcf0_type* @G_0x70fcf0 to i64*), align 8
  store i64 %764, i64* %RDI.i1834, align 8
  %765 = add i64 %764, 6480
  %766 = add i64 %754, 28
  store i64 %766, i64* %3, align 8
  %767 = inttoptr i64 %765 to i64*
  %768 = load i64, i64* %767, align 8
  store i64 %768, i64* %RDI.i1834, align 8
  %769 = add i64 %768, 8
  %770 = add i64 %754, 32
  store i64 %770, i64* %3, align 8
  %771 = inttoptr i64 %769 to i64*
  %772 = load i64, i64* %771, align 8
  store i64 %772, i64* %RDI.i1834, align 8
  %773 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*), align 8
  store i64 %773, i64* %R9.i1598, align 8
  %774 = add i64 %773, 144
  %775 = add i64 %754, 47
  store i64 %775, i64* %3, align 8
  %776 = inttoptr i64 %774 to i32*
  %777 = load i32, i32* %776, align 4
  %778 = zext i32 %777 to i64
  store i64 %778, i64* %344, align 8
  %779 = add i64 %752, -48
  %780 = add i64 %754, 50
  store i64 %780, i64* %3, align 8
  %781 = inttoptr i64 %779 to i32*
  %782 = load i32, i32* %781, align 4
  %783 = add i32 %782, %777
  %784 = zext i32 %783 to i64
  store i64 %784, i64* %344, align 8
  %785 = icmp ult i32 %783, %777
  %786 = icmp ult i32 %783, %782
  %787 = or i1 %785, %786
  %788 = zext i1 %787 to i8
  store i8 %788, i8* %29, align 1
  %789 = and i32 %783, 255
  %790 = tail call i32 @llvm.ctpop.i32(i32 %789)
  %791 = trunc i32 %790 to i8
  %792 = and i8 %791, 1
  %793 = xor i8 %792, 1
  store i8 %793, i8* %36, align 1
  %794 = xor i32 %782, %777
  %795 = xor i32 %794, %783
  %796 = lshr i32 %795, 4
  %797 = trunc i32 %796 to i8
  %798 = and i8 %797, 1
  store i8 %798, i8* %42, align 1
  %799 = icmp eq i32 %783, 0
  %800 = zext i1 %799 to i8
  store i8 %800, i8* %45, align 1
  %801 = lshr i32 %783, 31
  %802 = trunc i32 %801 to i8
  store i8 %802, i8* %48, align 1
  %803 = lshr i32 %777, 31
  %804 = lshr i32 %782, 31
  %805 = xor i32 %801, %803
  %806 = xor i32 %801, %804
  %807 = add nuw nsw i32 %805, %806
  %808 = icmp eq i32 %807, 2
  %809 = zext i1 %808 to i8
  store i8 %809, i8* %54, align 1
  %810 = sext i32 %783 to i64
  store i64 %810, i64* %R9.i1598, align 8
  %811 = shl nsw i64 %810, 3
  %812 = add i64 %772, %811
  %813 = add i64 %754, 57
  store i64 %813, i64* %3, align 8
  %814 = inttoptr i64 %812 to i64*
  %815 = load i64, i64* %814, align 8
  store i64 %815, i64* %RDI.i1834, align 8
  store i64 %773, i64* %R9.i1598, align 8
  %816 = add i64 %773, 148
  %817 = add i64 %754, 72
  store i64 %817, i64* %3, align 8
  %818 = inttoptr i64 %816 to i32*
  %819 = load i32, i32* %818, align 4
  %820 = zext i32 %819 to i64
  store i64 %820, i64* %344, align 8
  %821 = load i64, i64* %RBP.i, align 8
  %822 = add i64 %821, -44
  %823 = add i64 %754, 75
  store i64 %823, i64* %3, align 8
  %824 = inttoptr i64 %822 to i32*
  %825 = load i32, i32* %824, align 4
  %826 = add i32 %825, %819
  %827 = zext i32 %826 to i64
  store i64 %827, i64* %344, align 8
  %828 = icmp ult i32 %826, %819
  %829 = icmp ult i32 %826, %825
  %830 = or i1 %828, %829
  %831 = zext i1 %830 to i8
  store i8 %831, i8* %29, align 1
  %832 = and i32 %826, 255
  %833 = tail call i32 @llvm.ctpop.i32(i32 %832)
  %834 = trunc i32 %833 to i8
  %835 = and i8 %834, 1
  %836 = xor i8 %835, 1
  store i8 %836, i8* %36, align 1
  %837 = xor i32 %825, %819
  %838 = xor i32 %837, %826
  %839 = lshr i32 %838, 4
  %840 = trunc i32 %839 to i8
  %841 = and i8 %840, 1
  store i8 %841, i8* %42, align 1
  %842 = icmp eq i32 %826, 0
  %843 = zext i1 %842 to i8
  store i8 %843, i8* %45, align 1
  %844 = lshr i32 %826, 31
  %845 = trunc i32 %844 to i8
  store i8 %845, i8* %48, align 1
  %846 = lshr i32 %819, 31
  %847 = lshr i32 %825, 31
  %848 = xor i32 %844, %846
  %849 = xor i32 %844, %847
  %850 = add nuw nsw i32 %848, %849
  %851 = icmp eq i32 %850, 2
  %852 = zext i1 %851 to i8
  store i8 %852, i8* %54, align 1
  %853 = sext i32 %826 to i64
  store i64 %853, i64* %R9.i1598, align 8
  %854 = shl nsw i64 %853, 1
  %855 = add i64 %815, %854
  %856 = load i16, i16* %R8W.i1606, align 2
  %857 = add i64 %754, 83
  store i64 %857, i64* %3, align 8
  %858 = inttoptr i64 %855 to i16*
  store i16 %856, i16* %858, align 2
  %859 = load i64, i64* %RBP.i, align 8
  %860 = add i64 %859, -48
  %861 = load i64, i64* %3, align 8
  %862 = add i64 %861, 3
  store i64 %862, i64* %3, align 8
  %863 = inttoptr i64 %860 to i32*
  %864 = load i32, i32* %863, align 4
  %865 = add i32 %864, 1
  %866 = zext i32 %865 to i64
  store i64 %866, i64* %RAX.i1963.phi.trans.insert, align 8
  %867 = icmp eq i32 %864, -1
  %868 = icmp eq i32 %865, 0
  %869 = or i1 %867, %868
  %870 = zext i1 %869 to i8
  store i8 %870, i8* %29, align 1
  %871 = and i32 %865, 255
  %872 = tail call i32 @llvm.ctpop.i32(i32 %871)
  %873 = trunc i32 %872 to i8
  %874 = and i8 %873, 1
  %875 = xor i8 %874, 1
  store i8 %875, i8* %36, align 1
  %876 = xor i32 %865, %864
  %877 = lshr i32 %876, 4
  %878 = trunc i32 %877 to i8
  %879 = and i8 %878, 1
  store i8 %879, i8* %42, align 1
  %880 = zext i1 %868 to i8
  store i8 %880, i8* %45, align 1
  %881 = lshr i32 %865, 31
  %882 = trunc i32 %881 to i8
  store i8 %882, i8* %48, align 1
  %883 = lshr i32 %864, 31
  %884 = xor i32 %881, %883
  %885 = add nuw nsw i32 %884, %881
  %886 = icmp eq i32 %885, 2
  %887 = zext i1 %886 to i8
  store i8 %887, i8* %54, align 1
  %888 = add i64 %861, 9
  store i64 %888, i64* %3, align 8
  store i32 %865, i32* %863, align 4
  %889 = load i64, i64* %3, align 8
  %890 = add i64 %889, -253
  store i64 %890, i64* %3, align 8
  br label %block_.L_489bc3

block_.L_489cc5:                                  ; preds = %block_.L_489bc3
  %891 = add i64 %381, -44
  %892 = add i64 %409, 8
  store i64 %892, i64* %3, align 8
  %893 = inttoptr i64 %891 to i32*
  %894 = load i32, i32* %893, align 4
  %895 = add i32 %894, 1
  %896 = zext i32 %895 to i64
  store i64 %896, i64* %RAX.i1963.phi.trans.insert, align 8
  %897 = icmp eq i32 %894, -1
  %898 = icmp eq i32 %895, 0
  %899 = or i1 %897, %898
  %900 = zext i1 %899 to i8
  store i8 %900, i8* %29, align 1
  %901 = and i32 %895, 255
  %902 = tail call i32 @llvm.ctpop.i32(i32 %901)
  %903 = trunc i32 %902 to i8
  %904 = and i8 %903, 1
  %905 = xor i8 %904, 1
  store i8 %905, i8* %36, align 1
  %906 = xor i32 %895, %894
  %907 = lshr i32 %906, 4
  %908 = trunc i32 %907 to i8
  %909 = and i8 %908, 1
  store i8 %909, i8* %42, align 1
  %910 = zext i1 %898 to i8
  store i8 %910, i8* %45, align 1
  %911 = lshr i32 %895, 31
  %912 = trunc i32 %911 to i8
  store i8 %912, i8* %48, align 1
  %913 = lshr i32 %894, 31
  %914 = xor i32 %911, %913
  %915 = add nuw nsw i32 %914, %911
  %916 = icmp eq i32 %915, 2
  %917 = zext i1 %916 to i8
  store i8 %917, i8* %54, align 1
  %918 = add i64 %409, 14
  store i64 %918, i64* %3, align 8
  store i32 %895, i32* %893, align 4
  %919 = load i64, i64* %3, align 8
  %920 = add i64 %919, -289
  store i64 %920, i64* %3, align 8
  br label %block_.L_489bb2

block_.L_489cd8:                                  ; preds = %block_.L_489bb2
  %921 = add i64 %376, 228
  br label %block_.L_489dbc

block_.L_489ce4:                                  ; preds = %block_.L_489ce4.preheader, %block_.L_489da4
  %922 = phi i64 [ %1388, %block_.L_489da4 ], [ %.pre167, %block_.L_489ce4.preheader ]
  %MEMORY.5 = phi %struct.Memory* [ %MEMORY.6, %block_.L_489da4 ], [ %MEMORY.1, %block_.L_489ce4.preheader ]
  %923 = load i64, i64* %RBP.i, align 8
  %924 = add i64 %923, -44
  %925 = add i64 %922, 4
  store i64 %925, i64* %3, align 8
  %926 = inttoptr i64 %924 to i32*
  %927 = load i32, i32* %926, align 4
  %928 = add i32 %927, -4
  %929 = icmp ult i32 %927, 4
  %930 = zext i1 %929 to i8
  store i8 %930, i8* %29, align 1
  %931 = and i32 %928, 255
  %932 = tail call i32 @llvm.ctpop.i32(i32 %931)
  %933 = trunc i32 %932 to i8
  %934 = and i8 %933, 1
  %935 = xor i8 %934, 1
  store i8 %935, i8* %36, align 1
  %936 = xor i32 %928, %927
  %937 = lshr i32 %936, 4
  %938 = trunc i32 %937 to i8
  %939 = and i8 %938, 1
  store i8 %939, i8* %42, align 1
  %940 = icmp eq i32 %928, 0
  %941 = zext i1 %940 to i8
  store i8 %941, i8* %45, align 1
  %942 = lshr i32 %928, 31
  %943 = trunc i32 %942 to i8
  store i8 %943, i8* %48, align 1
  %944 = lshr i32 %927, 31
  %945 = xor i32 %942, %944
  %946 = add nuw nsw i32 %945, %944
  %947 = icmp eq i32 %946, 2
  %948 = zext i1 %947 to i8
  store i8 %948, i8* %54, align 1
  %949 = icmp ne i8 %943, 0
  %950 = xor i1 %949, %947
  %.v241 = select i1 %950, i64 10, i64 211
  %951 = add i64 %922, %.v241
  store i64 %951, i64* %3, align 8
  br i1 %950, label %block_489cee, label %block_.L_489db7

block_489cee:                                     ; preds = %block_.L_489ce4
  %952 = add i64 %923, -48
  %953 = add i64 %951, 7
  store i64 %953, i64* %3, align 8
  %954 = inttoptr i64 %952 to i32*
  store i32 0, i32* %954, align 4
  %.pre184 = load i64, i64* %3, align 8
  br label %block_.L_489cf5

block_.L_489cf5:                                  ; preds = %routine_idivl__ecx.exit, %block_489cee
  %955 = phi i64 [ %.pre184, %block_489cee ], [ %1358, %routine_idivl__ecx.exit ]
  %MEMORY.6 = phi %struct.Memory* [ %MEMORY.5, %block_489cee ], [ %1185, %routine_idivl__ecx.exit ]
  %956 = load i64, i64* %RBP.i, align 8
  %957 = add i64 %956, -48
  %958 = add i64 %955, 4
  store i64 %958, i64* %3, align 8
  %959 = inttoptr i64 %957 to i32*
  %960 = load i32, i32* %959, align 4
  %961 = add i32 %960, -4
  %962 = icmp ult i32 %960, 4
  %963 = zext i1 %962 to i8
  store i8 %963, i8* %29, align 1
  %964 = and i32 %961, 255
  %965 = tail call i32 @llvm.ctpop.i32(i32 %964)
  %966 = trunc i32 %965 to i8
  %967 = and i8 %966, 1
  %968 = xor i8 %967, 1
  store i8 %968, i8* %36, align 1
  %969 = xor i32 %961, %960
  %970 = lshr i32 %969, 4
  %971 = trunc i32 %970 to i8
  %972 = and i8 %971, 1
  store i8 %972, i8* %42, align 1
  %973 = icmp eq i32 %961, 0
  %974 = zext i1 %973 to i8
  store i8 %974, i8* %45, align 1
  %975 = lshr i32 %961, 31
  %976 = trunc i32 %975 to i8
  store i8 %976, i8* %48, align 1
  %977 = lshr i32 %960, 31
  %978 = xor i32 %975, %977
  %979 = add nuw nsw i32 %978, %977
  %980 = icmp eq i32 %979, 2
  %981 = zext i1 %980 to i8
  store i8 %981, i8* %54, align 1
  %982 = icmp ne i8 %976, 0
  %983 = xor i1 %982, %980
  %.v242 = select i1 %983, i64 10, i64 175
  %984 = add i64 %955, %.v242
  %985 = add i64 %984, 5
  store i64 %985, i64* %3, align 8
  br i1 %983, label %block_489cff, label %block_.L_489da4

block_489cff:                                     ; preds = %block_.L_489cf5
  store i64 2, i64* %RAX.i1963.phi.trans.insert, align 8
  %986 = add i64 %956, -44
  %987 = add i64 %984, 8
  store i64 %987, i64* %3, align 8
  %988 = inttoptr i64 %986 to i32*
  %989 = load i32, i32* %988, align 4
  %990 = zext i32 %989 to i64
  store i64 %990, i64* %RCX.i2011, align 8
  %991 = add i64 %956, -84
  %992 = add i64 %984, 11
  store i64 %992, i64* %3, align 8
  %993 = inttoptr i64 %991 to i32*
  store i32 2, i32* %993, align 4
  %994 = load i32, i32* %ECX.i2007, align 4
  %995 = zext i32 %994 to i64
  %996 = load i64, i64* %3, align 8
  store i64 %995, i64* %RAX.i1963.phi.trans.insert, align 8
  %997 = sext i32 %994 to i64
  %998 = lshr i64 %997, 32
  store i64 %998, i64* %RDX.i1929, align 8
  %999 = load i64, i64* %RBP.i, align 8
  %1000 = add i64 %999, -84
  %1001 = add i64 %996, 6
  store i64 %1001, i64* %3, align 8
  %1002 = inttoptr i64 %1000 to i32*
  %1003 = load i32, i32* %1002, align 4
  %1004 = zext i32 %1003 to i64
  store i64 %1004, i64* %RCX.i2011, align 8
  %1005 = add i64 %996, 8
  store i64 %1005, i64* %3, align 8
  %1006 = sext i32 %1003 to i64
  %1007 = shl nuw i64 %998, 32
  %1008 = or i64 %1007, %995
  %1009 = sdiv i64 %1008, %1006
  %1010 = shl i64 %1009, 32
  %1011 = ashr exact i64 %1010, 32
  %1012 = icmp eq i64 %1009, %1011
  br i1 %1012, label %1015, label %1013

; <label>:1013:                                   ; preds = %block_489cff
  %1014 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %1005, %struct.Memory* %MEMORY.6)
  %.pre185 = load i64, i64* %RAX.i1963.phi.trans.insert, align 8
  %.pre186 = load i64, i64* %3, align 8
  %.pre187 = load i64, i64* %RBP.i, align 8
  br label %routine_idivl__ecx.exit1674

; <label>:1015:                                   ; preds = %block_489cff
  %1016 = srem i64 %1008, %1006
  %1017 = and i64 %1009, 4294967295
  store i64 %1017, i64* %RAX.i1963.phi.trans.insert, align 8
  %1018 = and i64 %1016, 4294967295
  store i64 %1018, i64* %344, align 8
  store i8 0, i8* %29, align 1
  store i8 0, i8* %36, align 1
  store i8 0, i8* %42, align 1
  store i8 0, i8* %45, align 1
  store i8 0, i8* %48, align 1
  store i8 0, i8* %54, align 1
  br label %routine_idivl__ecx.exit1674

routine_idivl__ecx.exit1674:                      ; preds = %1015, %1013
  %1019 = phi i64 [ %.pre187, %1013 ], [ %999, %1015 ]
  %1020 = phi i64 [ %.pre186, %1013 ], [ %1005, %1015 ]
  %1021 = phi i64 [ %.pre185, %1013 ], [ %1017, %1015 ]
  %1022 = phi %struct.Memory* [ %1014, %1013 ], [ %MEMORY.6, %1015 ]
  %1023 = trunc i64 %1021 to i32
  %1024 = shl i32 %1023, 1
  %1025 = icmp slt i32 %1023, 0
  %1026 = icmp slt i32 %1024, 0
  %1027 = xor i1 %1025, %1026
  %1028 = zext i32 %1024 to i64
  store i64 %1028, i64* %RAX.i1963.phi.trans.insert, align 8
  %.lobit68 = lshr i32 %1023, 31
  %1029 = trunc i32 %.lobit68 to i8
  store i8 %1029, i8* %29, align 1
  %1030 = and i32 %1024, 254
  %1031 = tail call i32 @llvm.ctpop.i32(i32 %1030)
  %1032 = trunc i32 %1031 to i8
  %1033 = and i8 %1032, 1
  %1034 = xor i8 %1033, 1
  store i8 %1034, i8* %36, align 1
  store i8 0, i8* %42, align 1
  %1035 = icmp eq i32 %1024, 0
  %1036 = zext i1 %1035 to i8
  store i8 %1036, i8* %45, align 1
  %1037 = lshr i32 %1023, 30
  %1038 = trunc i32 %1037 to i8
  %1039 = and i8 %1038, 1
  store i8 %1039, i8* %48, align 1
  %1040 = zext i1 %1027 to i8
  store i8 %1040, i8* %54, align 1
  %1041 = add i64 %1019, -48
  %1042 = add i64 %1020, 5
  store i64 %1042, i64* %3, align 8
  %1043 = inttoptr i64 %1041 to i32*
  %1044 = load i32, i32* %1043, align 4
  %1045 = zext i32 %1044 to i64
  store i64 %1045, i64* %RSI.i1668, align 8
  %1046 = add i64 %1019, -88
  %1047 = add i64 %1020, 8
  store i64 %1047, i64* %3, align 8
  %1048 = inttoptr i64 %1046 to i32*
  store i32 %1024, i32* %1048, align 4
  %1049 = load i32, i32* %ESI.i1662, align 4
  %1050 = zext i32 %1049 to i64
  %1051 = load i64, i64* %3, align 8
  store i64 %1050, i64* %RAX.i1963.phi.trans.insert, align 8
  %1052 = sext i32 %1049 to i64
  %1053 = lshr i64 %1052, 32
  store i64 %1053, i64* %RDX.i1929, align 8
  %1054 = load i32, i32* %ECX.i2007, align 4
  %1055 = add i64 %1051, 5
  store i64 %1055, i64* %3, align 8
  %1056 = sext i32 %1054 to i64
  %1057 = shl nuw i64 %1053, 32
  %1058 = or i64 %1057, %1050
  %1059 = sdiv i64 %1058, %1056
  %1060 = shl i64 %1059, 32
  %1061 = ashr exact i64 %1060, 32
  %1062 = icmp eq i64 %1059, %1061
  br i1 %1062, label %1065, label %1063

; <label>:1063:                                   ; preds = %routine_idivl__ecx.exit1674
  %1064 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %1055, %struct.Memory* %1022)
  %.pre188 = load i64, i64* %3, align 8
  %.pre189 = load i32, i32* %EAX.i1952.pre-phi, align 4
  br label %routine_idivl__ecx.exit1657

; <label>:1065:                                   ; preds = %routine_idivl__ecx.exit1674
  %1066 = srem i64 %1058, %1056
  %1067 = and i64 %1059, 4294967295
  store i64 %1067, i64* %RAX.i1963.phi.trans.insert, align 8
  %1068 = and i64 %1066, 4294967295
  store i64 %1068, i64* %344, align 8
  store i8 0, i8* %29, align 1
  store i8 0, i8* %36, align 1
  store i8 0, i8* %42, align 1
  store i8 0, i8* %45, align 1
  store i8 0, i8* %48, align 1
  store i8 0, i8* %54, align 1
  %1069 = trunc i64 %1059 to i32
  br label %routine_idivl__ecx.exit1657

routine_idivl__ecx.exit1657:                      ; preds = %1065, %1063
  %1070 = phi i32 [ %.pre189, %1063 ], [ %1069, %1065 ]
  %1071 = phi i64 [ %.pre188, %1063 ], [ %1055, %1065 ]
  %1072 = phi %struct.Memory* [ %1064, %1063 ], [ %1022, %1065 ]
  %1073 = load i64, i64* %RBP.i, align 8
  %1074 = add i64 %1073, -88
  %1075 = add i64 %1071, 3
  store i64 %1075, i64* %3, align 8
  %1076 = inttoptr i64 %1074 to i32*
  %1077 = load i32, i32* %1076, align 4
  %1078 = add i32 %1070, %1077
  %1079 = zext i32 %1078 to i64
  store i64 %1079, i64* %RSI.i1668, align 8
  %1080 = icmp ult i32 %1078, %1077
  %1081 = icmp ult i32 %1078, %1070
  %1082 = or i1 %1080, %1081
  %1083 = zext i1 %1082 to i8
  store i8 %1083, i8* %29, align 1
  %1084 = and i32 %1078, 255
  %1085 = tail call i32 @llvm.ctpop.i32(i32 %1084)
  %1086 = trunc i32 %1085 to i8
  %1087 = and i8 %1086, 1
  %1088 = xor i8 %1087, 1
  store i8 %1088, i8* %36, align 1
  %1089 = xor i32 %1070, %1077
  %1090 = xor i32 %1089, %1078
  %1091 = lshr i32 %1090, 4
  %1092 = trunc i32 %1091 to i8
  %1093 = and i8 %1092, 1
  store i8 %1093, i8* %42, align 1
  %1094 = icmp eq i32 %1078, 0
  %1095 = zext i1 %1094 to i8
  store i8 %1095, i8* %45, align 1
  %1096 = lshr i32 %1078, 31
  %1097 = trunc i32 %1096 to i8
  store i8 %1097, i8* %48, align 1
  %1098 = lshr i32 %1077, 31
  %1099 = lshr i32 %1070, 31
  %1100 = xor i32 %1096, %1098
  %1101 = xor i32 %1096, %1099
  %1102 = add nuw nsw i32 %1100, %1101
  %1103 = icmp eq i32 %1102, 2
  %1104 = zext i1 %1103 to i8
  store i8 %1104, i8* %54, align 1
  %1105 = add i64 %1073, -40
  %1106 = add i64 %1071, 8
  store i64 %1106, i64* %3, align 8
  %1107 = inttoptr i64 %1105 to i32*
  store i32 %1078, i32* %1107, align 4
  %1108 = load i64, i64* %RBP.i, align 8
  %1109 = add i64 %1108, -44
  %1110 = load i64, i64* %3, align 8
  %1111 = add i64 %1110, 3
  store i64 %1111, i64* %3, align 8
  %1112 = inttoptr i64 %1109 to i32*
  %1113 = load i32, i32* %1112, align 4
  %1114 = zext i32 %1113 to i64
  store i64 %1114, i64* %RAX.i1963.phi.trans.insert, align 8
  %1115 = sext i32 %1113 to i64
  %1116 = lshr i64 %1115, 32
  store i64 %1116, i64* %RDX.i1929, align 8
  %1117 = load i32, i32* %ECX.i2007, align 4
  %1118 = add i64 %1110, 6
  store i64 %1118, i64* %3, align 8
  %1119 = sext i32 %1117 to i64
  %1120 = shl nuw i64 %1116, 32
  %1121 = or i64 %1120, %1114
  %1122 = sdiv i64 %1121, %1119
  %1123 = shl i64 %1122, 32
  %1124 = ashr exact i64 %1123, 32
  %1125 = icmp eq i64 %1122, %1124
  br i1 %1125, label %1128, label %1126

; <label>:1126:                                   ; preds = %routine_idivl__ecx.exit1657
  %1127 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %1118, %struct.Memory* %1072)
  %.pre190 = load i64, i64* %344, align 8
  %.pre191 = load i64, i64* %3, align 8
  %.pre192 = load i64, i64* %RBP.i, align 8
  br label %routine_idivl__ecx.exit1639

; <label>:1128:                                   ; preds = %routine_idivl__ecx.exit1657
  %1129 = srem i64 %1121, %1119
  %1130 = and i64 %1122, 4294967295
  store i64 %1130, i64* %RAX.i1963.phi.trans.insert, align 8
  %1131 = and i64 %1129, 4294967295
  store i64 %1131, i64* %344, align 8
  store i8 0, i8* %29, align 1
  store i8 0, i8* %36, align 1
  store i8 0, i8* %42, align 1
  store i8 0, i8* %45, align 1
  store i8 0, i8* %48, align 1
  store i8 0, i8* %54, align 1
  br label %routine_idivl__ecx.exit1639

routine_idivl__ecx.exit1639:                      ; preds = %1128, %1126
  %1132 = phi i64 [ %.pre192, %1126 ], [ %1108, %1128 ]
  %1133 = phi i64 [ %.pre191, %1126 ], [ %1118, %1128 ]
  %1134 = phi i64 [ %.pre190, %1126 ], [ %1131, %1128 ]
  %1135 = phi %struct.Memory* [ %1127, %1126 ], [ %1072, %1128 ]
  %1136 = trunc i64 %1134 to i32
  %1137 = shl i32 %1136, 1
  %1138 = icmp slt i32 %1136, 0
  %1139 = icmp slt i32 %1137, 0
  %1140 = xor i1 %1138, %1139
  %1141 = zext i32 %1137 to i64
  store i64 %1141, i64* %344, align 8
  %.lobit69 = lshr i32 %1136, 31
  %1142 = trunc i32 %.lobit69 to i8
  store i8 %1142, i8* %29, align 1
  %1143 = and i32 %1137, 254
  %1144 = tail call i32 @llvm.ctpop.i32(i32 %1143)
  %1145 = trunc i32 %1144 to i8
  %1146 = and i8 %1145, 1
  %1147 = xor i8 %1146, 1
  store i8 %1147, i8* %36, align 1
  store i8 0, i8* %42, align 1
  %1148 = icmp eq i32 %1137, 0
  %1149 = zext i1 %1148 to i8
  store i8 %1149, i8* %45, align 1
  %1150 = lshr i32 %1136, 30
  %1151 = trunc i32 %1150 to i8
  %1152 = and i8 %1151, 1
  store i8 %1152, i8* %48, align 1
  %1153 = zext i1 %1140 to i8
  store i8 %1153, i8* %54, align 1
  %1154 = add i64 %1132, -48
  %1155 = add i64 %1133, 5
  store i64 %1155, i64* %3, align 8
  %1156 = inttoptr i64 %1154 to i32*
  %1157 = load i32, i32* %1156, align 4
  %1158 = zext i32 %1157 to i64
  store i64 %1158, i64* %RSI.i1668, align 8
  store i64 %1158, i64* %RAX.i1963.phi.trans.insert, align 8
  %1159 = add i64 %1132, -92
  %1160 = add i64 %1133, 10
  store i64 %1160, i64* %3, align 8
  %1161 = inttoptr i64 %1159 to i32*
  store i32 %1137, i32* %1161, align 4
  %1162 = load i64, i64* %3, align 8
  %1163 = load i32, i32* %EAX.i1952.pre-phi, align 8
  %1164 = sext i32 %1163 to i64
  %1165 = lshr i64 %1164, 32
  store i64 %1165, i64* %RDX.i1929, align 8
  %1166 = load i32, i32* %ECX.i2007, align 4
  %1167 = add i64 %1162, 3
  store i64 %1167, i64* %3, align 8
  %1168 = zext i32 %1163 to i64
  %1169 = sext i32 %1166 to i64
  %1170 = shl nuw i64 %1165, 32
  %1171 = or i64 %1170, %1168
  %1172 = sdiv i64 %1171, %1169
  %1173 = shl i64 %1172, 32
  %1174 = ashr exact i64 %1173, 32
  %1175 = icmp eq i64 %1172, %1174
  br i1 %1175, label %1178, label %1176

; <label>:1176:                                   ; preds = %routine_idivl__ecx.exit1639
  %1177 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %1167, %struct.Memory* %1135)
  %.pre193 = load i64, i64* %3, align 8
  %.pre194 = load i32, i32* %343, align 4
  br label %routine_idivl__ecx.exit

; <label>:1178:                                   ; preds = %routine_idivl__ecx.exit1639
  %1179 = srem i64 %1171, %1169
  %1180 = and i64 %1172, 4294967295
  store i64 %1180, i64* %RAX.i1963.phi.trans.insert, align 8
  %1181 = and i64 %1179, 4294967295
  store i64 %1181, i64* %344, align 8
  store i8 0, i8* %29, align 1
  store i8 0, i8* %36, align 1
  store i8 0, i8* %42, align 1
  store i8 0, i8* %45, align 1
  store i8 0, i8* %48, align 1
  store i8 0, i8* %54, align 1
  %1182 = trunc i64 %1179 to i32
  br label %routine_idivl__ecx.exit

routine_idivl__ecx.exit:                          ; preds = %1178, %1176
  %1183 = phi i32 [ %.pre194, %1176 ], [ %1182, %1178 ]
  %1184 = phi i64 [ %.pre193, %1176 ], [ %1167, %1178 ]
  %1185 = phi %struct.Memory* [ %1177, %1176 ], [ %1135, %1178 ]
  %1186 = load i64, i64* %RBP.i, align 8
  %1187 = add i64 %1186, -92
  %1188 = add i64 %1184, 3
  store i64 %1188, i64* %3, align 8
  %1189 = inttoptr i64 %1187 to i32*
  %1190 = load i32, i32* %1189, align 4
  %1191 = add i32 %1183, %1190
  %1192 = zext i32 %1191 to i64
  store i64 %1192, i64* %RSI.i1668, align 8
  %1193 = icmp ult i32 %1191, %1190
  %1194 = icmp ult i32 %1191, %1183
  %1195 = or i1 %1193, %1194
  %1196 = zext i1 %1195 to i8
  store i8 %1196, i8* %29, align 1
  %1197 = and i32 %1191, 255
  %1198 = tail call i32 @llvm.ctpop.i32(i32 %1197)
  %1199 = trunc i32 %1198 to i8
  %1200 = and i8 %1199, 1
  %1201 = xor i8 %1200, 1
  store i8 %1201, i8* %36, align 1
  %1202 = xor i32 %1183, %1190
  %1203 = xor i32 %1202, %1191
  %1204 = lshr i32 %1203, 4
  %1205 = trunc i32 %1204 to i8
  %1206 = and i8 %1205, 1
  store i8 %1206, i8* %42, align 1
  %1207 = icmp eq i32 %1191, 0
  %1208 = zext i1 %1207 to i8
  store i8 %1208, i8* %45, align 1
  %1209 = lshr i32 %1191, 31
  %1210 = trunc i32 %1209 to i8
  store i8 %1210, i8* %48, align 1
  %1211 = lshr i32 %1190, 31
  %1212 = lshr i32 %1183, 31
  %1213 = xor i32 %1209, %1211
  %1214 = xor i32 %1209, %1212
  %1215 = add nuw nsw i32 %1213, %1214
  %1216 = icmp eq i32 %1215, 2
  %1217 = zext i1 %1216 to i8
  store i8 %1217, i8* %54, align 1
  %1218 = add i64 %1186, -52
  %1219 = add i64 %1184, 8
  store i64 %1219, i64* %3, align 8
  %1220 = inttoptr i64 %1218 to i32*
  store i32 %1191, i32* %1220, align 4
  %1221 = load i64, i64* %RBP.i, align 8
  %1222 = add i64 %1221, -40
  %1223 = load i64, i64* %3, align 8
  %1224 = add i64 %1223, 4
  store i64 %1224, i64* %3, align 8
  %1225 = inttoptr i64 %1222 to i32*
  %1226 = load i32, i32* %1225, align 4
  %1227 = sext i32 %1226 to i64
  store i64 %1227, i64* %RDI.i1834, align 8
  %1228 = shl nsw i64 %1227, 1
  %1229 = add nsw i64 %1228, 7485124
  %1230 = add i64 %1223, 13
  store i64 %1230, i64* %3, align 8
  %1231 = inttoptr i64 %1229 to i16*
  %1232 = load i16, i16* %1231, align 2
  store i16 %1232, i16* %R8W.i1606, align 2
  %1233 = load i64, i64* bitcast (%G_0x70fcf0_type* @G_0x70fcf0 to i64*), align 8
  store i64 %1233, i64* %RDI.i1834, align 8
  %1234 = add i64 %1233, 6480
  %1235 = add i64 %1223, 28
  store i64 %1235, i64* %3, align 8
  %1236 = inttoptr i64 %1234 to i64*
  %1237 = load i64, i64* %1236, align 8
  store i64 %1237, i64* %RDI.i1834, align 8
  %1238 = add i64 %1223, 31
  store i64 %1238, i64* %3, align 8
  %1239 = inttoptr i64 %1237 to i64*
  %1240 = load i64, i64* %1239, align 8
  store i64 %1240, i64* %RDI.i1834, align 8
  %1241 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*), align 8
  store i64 %1241, i64* %R9.i1598, align 8
  %1242 = add i64 %1241, 144
  %1243 = add i64 %1223, 46
  store i64 %1243, i64* %3, align 8
  %1244 = inttoptr i64 %1242 to i32*
  %1245 = load i32, i32* %1244, align 4
  %1246 = zext i32 %1245 to i64
  store i64 %1246, i64* %344, align 8
  %1247 = add i64 %1221, -48
  %1248 = add i64 %1223, 49
  store i64 %1248, i64* %3, align 8
  %1249 = inttoptr i64 %1247 to i32*
  %1250 = load i32, i32* %1249, align 4
  %1251 = add i32 %1250, %1245
  %1252 = zext i32 %1251 to i64
  store i64 %1252, i64* %344, align 8
  %1253 = icmp ult i32 %1251, %1245
  %1254 = icmp ult i32 %1251, %1250
  %1255 = or i1 %1253, %1254
  %1256 = zext i1 %1255 to i8
  store i8 %1256, i8* %29, align 1
  %1257 = and i32 %1251, 255
  %1258 = tail call i32 @llvm.ctpop.i32(i32 %1257)
  %1259 = trunc i32 %1258 to i8
  %1260 = and i8 %1259, 1
  %1261 = xor i8 %1260, 1
  store i8 %1261, i8* %36, align 1
  %1262 = xor i32 %1250, %1245
  %1263 = xor i32 %1262, %1251
  %1264 = lshr i32 %1263, 4
  %1265 = trunc i32 %1264 to i8
  %1266 = and i8 %1265, 1
  store i8 %1266, i8* %42, align 1
  %1267 = icmp eq i32 %1251, 0
  %1268 = zext i1 %1267 to i8
  store i8 %1268, i8* %45, align 1
  %1269 = lshr i32 %1251, 31
  %1270 = trunc i32 %1269 to i8
  store i8 %1270, i8* %48, align 1
  %1271 = lshr i32 %1245, 31
  %1272 = lshr i32 %1250, 31
  %1273 = xor i32 %1269, %1271
  %1274 = xor i32 %1269, %1272
  %1275 = add nuw nsw i32 %1273, %1274
  %1276 = icmp eq i32 %1275, 2
  %1277 = zext i1 %1276 to i8
  store i8 %1277, i8* %54, align 1
  %1278 = sext i32 %1251 to i64
  store i64 %1278, i64* %R9.i1598, align 8
  %1279 = shl nsw i64 %1278, 3
  %1280 = add i64 %1240, %1279
  %1281 = add i64 %1223, 56
  store i64 %1281, i64* %3, align 8
  %1282 = inttoptr i64 %1280 to i64*
  %1283 = load i64, i64* %1282, align 8
  store i64 %1283, i64* %RDI.i1834, align 8
  store i64 %1241, i64* %R9.i1598, align 8
  %1284 = add i64 %1241, 148
  %1285 = add i64 %1223, 71
  store i64 %1285, i64* %3, align 8
  %1286 = inttoptr i64 %1284 to i32*
  %1287 = load i32, i32* %1286, align 4
  %1288 = zext i32 %1287 to i64
  store i64 %1288, i64* %344, align 8
  %1289 = load i64, i64* %RBP.i, align 8
  %1290 = add i64 %1289, -44
  %1291 = add i64 %1223, 74
  store i64 %1291, i64* %3, align 8
  %1292 = inttoptr i64 %1290 to i32*
  %1293 = load i32, i32* %1292, align 4
  %1294 = add i32 %1293, %1287
  %1295 = zext i32 %1294 to i64
  store i64 %1295, i64* %344, align 8
  %1296 = icmp ult i32 %1294, %1287
  %1297 = icmp ult i32 %1294, %1293
  %1298 = or i1 %1296, %1297
  %1299 = zext i1 %1298 to i8
  store i8 %1299, i8* %29, align 1
  %1300 = and i32 %1294, 255
  %1301 = tail call i32 @llvm.ctpop.i32(i32 %1300)
  %1302 = trunc i32 %1301 to i8
  %1303 = and i8 %1302, 1
  %1304 = xor i8 %1303, 1
  store i8 %1304, i8* %36, align 1
  %1305 = xor i32 %1293, %1287
  %1306 = xor i32 %1305, %1294
  %1307 = lshr i32 %1306, 4
  %1308 = trunc i32 %1307 to i8
  %1309 = and i8 %1308, 1
  store i8 %1309, i8* %42, align 1
  %1310 = icmp eq i32 %1294, 0
  %1311 = zext i1 %1310 to i8
  store i8 %1311, i8* %45, align 1
  %1312 = lshr i32 %1294, 31
  %1313 = trunc i32 %1312 to i8
  store i8 %1313, i8* %48, align 1
  %1314 = lshr i32 %1287, 31
  %1315 = lshr i32 %1293, 31
  %1316 = xor i32 %1312, %1314
  %1317 = xor i32 %1312, %1315
  %1318 = add nuw nsw i32 %1316, %1317
  %1319 = icmp eq i32 %1318, 2
  %1320 = zext i1 %1319 to i8
  store i8 %1320, i8* %54, align 1
  %1321 = sext i32 %1294 to i64
  store i64 %1321, i64* %R9.i1598, align 8
  %1322 = shl nsw i64 %1321, 1
  %1323 = add i64 %1283, %1322
  %1324 = load i16, i16* %R8W.i1606, align 2
  %1325 = add i64 %1223, 82
  store i64 %1325, i64* %3, align 8
  %1326 = inttoptr i64 %1323 to i16*
  store i16 %1324, i16* %1326, align 2
  %1327 = load i64, i64* %RBP.i, align 8
  %1328 = add i64 %1327, -48
  %1329 = load i64, i64* %3, align 8
  %1330 = add i64 %1329, 3
  store i64 %1330, i64* %3, align 8
  %1331 = inttoptr i64 %1328 to i32*
  %1332 = load i32, i32* %1331, align 4
  %1333 = add i32 %1332, 1
  %1334 = zext i32 %1333 to i64
  store i64 %1334, i64* %RAX.i1963.phi.trans.insert, align 8
  %1335 = icmp eq i32 %1332, -1
  %1336 = icmp eq i32 %1333, 0
  %1337 = or i1 %1335, %1336
  %1338 = zext i1 %1337 to i8
  store i8 %1338, i8* %29, align 1
  %1339 = and i32 %1333, 255
  %1340 = tail call i32 @llvm.ctpop.i32(i32 %1339)
  %1341 = trunc i32 %1340 to i8
  %1342 = and i8 %1341, 1
  %1343 = xor i8 %1342, 1
  store i8 %1343, i8* %36, align 1
  %1344 = xor i32 %1333, %1332
  %1345 = lshr i32 %1344, 4
  %1346 = trunc i32 %1345 to i8
  %1347 = and i8 %1346, 1
  store i8 %1347, i8* %42, align 1
  %1348 = zext i1 %1336 to i8
  store i8 %1348, i8* %45, align 1
  %1349 = lshr i32 %1333, 31
  %1350 = trunc i32 %1349 to i8
  store i8 %1350, i8* %48, align 1
  %1351 = lshr i32 %1332, 31
  %1352 = xor i32 %1349, %1351
  %1353 = add nuw nsw i32 %1352, %1349
  %1354 = icmp eq i32 %1353, 2
  %1355 = zext i1 %1354 to i8
  store i8 %1355, i8* %54, align 1
  %1356 = add i64 %1329, 9
  store i64 %1356, i64* %3, align 8
  store i32 %1333, i32* %1331, align 4
  %1357 = load i64, i64* %3, align 8
  %1358 = add i64 %1357, -170
  store i64 %1358, i64* %3, align 8
  br label %block_.L_489cf5

block_.L_489da4:                                  ; preds = %block_.L_489cf5
  %1359 = add i64 %956, -44
  %1360 = add i64 %984, 8
  store i64 %1360, i64* %3, align 8
  %1361 = inttoptr i64 %1359 to i32*
  %1362 = load i32, i32* %1361, align 4
  %1363 = add i32 %1362, 1
  %1364 = zext i32 %1363 to i64
  store i64 %1364, i64* %RAX.i1963.phi.trans.insert, align 8
  %1365 = icmp eq i32 %1362, -1
  %1366 = icmp eq i32 %1363, 0
  %1367 = or i1 %1365, %1366
  %1368 = zext i1 %1367 to i8
  store i8 %1368, i8* %29, align 1
  %1369 = and i32 %1363, 255
  %1370 = tail call i32 @llvm.ctpop.i32(i32 %1369)
  %1371 = trunc i32 %1370 to i8
  %1372 = and i8 %1371, 1
  %1373 = xor i8 %1372, 1
  store i8 %1373, i8* %36, align 1
  %1374 = xor i32 %1363, %1362
  %1375 = lshr i32 %1374, 4
  %1376 = trunc i32 %1375 to i8
  %1377 = and i8 %1376, 1
  store i8 %1377, i8* %42, align 1
  %1378 = zext i1 %1366 to i8
  store i8 %1378, i8* %45, align 1
  %1379 = lshr i32 %1363, 31
  %1380 = trunc i32 %1379 to i8
  store i8 %1380, i8* %48, align 1
  %1381 = lshr i32 %1362, 31
  %1382 = xor i32 %1379, %1381
  %1383 = add nuw nsw i32 %1382, %1379
  %1384 = icmp eq i32 %1383, 2
  %1385 = zext i1 %1384 to i8
  store i8 %1385, i8* %54, align 1
  %1386 = add i64 %984, 14
  store i64 %1386, i64* %3, align 8
  store i32 %1363, i32* %1361, align 4
  %1387 = load i64, i64* %3, align 8
  %1388 = add i64 %1387, -206
  store i64 %1388, i64* %3, align 8
  br label %block_.L_489ce4

block_.L_489db7:                                  ; preds = %block_.L_489ce4
  %1389 = add i64 %951, 5
  store i64 %1389, i64* %3, align 8
  br label %block_.L_489dbc

block_.L_489dbc:                                  ; preds = %block_.L_489db7, %block_.L_489cd8
  %1390 = phi i64 [ %348, %block_.L_489cd8 ], [ %923, %block_.L_489db7 ]
  %storemerge48 = phi i64 [ %921, %block_.L_489cd8 ], [ %1389, %block_.L_489db7 ]
  %MEMORY.7 = phi %struct.Memory* [ %MEMORY.3, %block_.L_489cd8 ], [ %MEMORY.5, %block_.L_489db7 ]
  %1391 = add i64 %1390, -44
  %1392 = add i64 %storemerge48, 7
  store i64 %1392, i64* %3, align 8
  %1393 = inttoptr i64 %1391 to i32*
  store i32 0, i32* %1393, align 4
  %RSI.i1479 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %.pre168 = load i64, i64* %3, align 8
  br label %block_.L_489dc3

block_.L_489dc3:                                  ; preds = %block_.L_489efc, %block_.L_489dbc
  %1394 = phi i64 [ %1894, %block_.L_489efc ], [ %.pre168, %block_.L_489dbc ]
  %1395 = load i64, i64* %RBP.i, align 8
  %1396 = add i64 %1395, -44
  %1397 = add i64 %1394, 4
  store i64 %1397, i64* %3, align 8
  %1398 = inttoptr i64 %1396 to i32*
  %1399 = load i32, i32* %1398, align 4
  %1400 = add i32 %1399, -4
  %1401 = icmp ult i32 %1399, 4
  %1402 = zext i1 %1401 to i8
  store i8 %1402, i8* %29, align 1
  %1403 = and i32 %1400, 255
  %1404 = tail call i32 @llvm.ctpop.i32(i32 %1403)
  %1405 = trunc i32 %1404 to i8
  %1406 = and i8 %1405, 1
  %1407 = xor i8 %1406, 1
  store i8 %1407, i8* %36, align 1
  %1408 = xor i32 %1400, %1399
  %1409 = lshr i32 %1408, 4
  %1410 = trunc i32 %1409 to i8
  %1411 = and i8 %1410, 1
  store i8 %1411, i8* %42, align 1
  %1412 = icmp eq i32 %1400, 0
  %1413 = zext i1 %1412 to i8
  store i8 %1413, i8* %45, align 1
  %1414 = lshr i32 %1400, 31
  %1415 = trunc i32 %1414 to i8
  store i8 %1415, i8* %48, align 1
  %1416 = lshr i32 %1399, 31
  %1417 = xor i32 %1414, %1416
  %1418 = add nuw nsw i32 %1417, %1416
  %1419 = icmp eq i32 %1418, 2
  %1420 = zext i1 %1419 to i8
  store i8 %1420, i8* %54, align 1
  %1421 = icmp ne i8 %1415, 0
  %1422 = xor i1 %1421, %1419
  %.v228 = select i1 %1422, i64 10, i64 332
  %1423 = add i64 %1394, %.v228
  store i64 %1423, i64* %3, align 8
  br i1 %1422, label %block_489dcd, label %block_.L_489f0f

block_489dcd:                                     ; preds = %block_.L_489dc3
  %1424 = add i64 %1395, -48
  %1425 = add i64 %1423, 7
  store i64 %1425, i64* %3, align 8
  %1426 = inttoptr i64 %1424 to i32*
  store i32 0, i32* %1426, align 4
  %.pre183 = load i64, i64* %3, align 8
  br label %block_.L_489dd4

block_.L_489dd4:                                  ; preds = %block_.L_489ea8, %block_489dcd
  %1427 = phi i64 [ %1864, %block_.L_489ea8 ], [ %.pre183, %block_489dcd ]
  %1428 = load i64, i64* %RBP.i, align 8
  %1429 = add i64 %1428, -48
  %1430 = add i64 %1427, 4
  store i64 %1430, i64* %3, align 8
  %1431 = inttoptr i64 %1429 to i32*
  %1432 = load i32, i32* %1431, align 4
  %1433 = add i32 %1432, -4
  %1434 = icmp ult i32 %1432, 4
  %1435 = zext i1 %1434 to i8
  store i8 %1435, i8* %29, align 1
  %1436 = and i32 %1433, 255
  %1437 = tail call i32 @llvm.ctpop.i32(i32 %1436)
  %1438 = trunc i32 %1437 to i8
  %1439 = and i8 %1438, 1
  %1440 = xor i8 %1439, 1
  store i8 %1440, i8* %36, align 1
  %1441 = xor i32 %1433, %1432
  %1442 = lshr i32 %1441, 4
  %1443 = trunc i32 %1442 to i8
  %1444 = and i8 %1443, 1
  store i8 %1444, i8* %42, align 1
  %1445 = icmp eq i32 %1433, 0
  %1446 = zext i1 %1445 to i8
  store i8 %1446, i8* %45, align 1
  %1447 = lshr i32 %1433, 31
  %1448 = trunc i32 %1447 to i8
  store i8 %1448, i8* %48, align 1
  %1449 = lshr i32 %1432, 31
  %1450 = xor i32 %1447, %1449
  %1451 = add nuw nsw i32 %1450, %1449
  %1452 = icmp eq i32 %1451, 2
  %1453 = zext i1 %1452 to i8
  store i8 %1453, i8* %54, align 1
  %1454 = icmp ne i8 %1448, 0
  %1455 = xor i1 %1454, %1452
  %.v216 = select i1 %1455, i64 10, i64 296
  %1456 = add i64 %1427, %.v216
  store i64 %1456, i64* %3, align 8
  br i1 %1455, label %block_489dde, label %block_.L_489efc

block_489dde:                                     ; preds = %block_.L_489dd4
  %1457 = load i64, i64* bitcast (%G_0x70fcf0_type* @G_0x70fcf0 to i64*), align 8
  store i64 %1457, i64* %RAX.i1963.phi.trans.insert, align 8
  %1458 = add i64 %1457, 6480
  %1459 = add i64 %1456, 15
  store i64 %1459, i64* %3, align 8
  %1460 = inttoptr i64 %1458 to i64*
  %1461 = load i64, i64* %1460, align 8
  store i64 %1461, i64* %RAX.i1963.phi.trans.insert, align 8
  %1462 = add i64 %1456, 18
  store i64 %1462, i64* %3, align 8
  %1463 = inttoptr i64 %1461 to i64*
  %1464 = load i64, i64* %1463, align 8
  store i64 %1464, i64* %RAX.i1963.phi.trans.insert, align 8
  %1465 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*), align 8
  store i64 %1465, i64* %RCX.i2011, align 8
  %1466 = add i64 %1465, 144
  %1467 = add i64 %1456, 32
  store i64 %1467, i64* %3, align 8
  %1468 = inttoptr i64 %1466 to i32*
  %1469 = load i32, i32* %1468, align 4
  %1470 = zext i32 %1469 to i64
  store i64 %1470, i64* %344, align 8
  %1471 = add i64 %1456, 35
  store i64 %1471, i64* %3, align 8
  %1472 = load i32, i32* %1431, align 4
  %1473 = add i32 %1472, %1469
  %1474 = zext i32 %1473 to i64
  store i64 %1474, i64* %344, align 8
  %1475 = icmp ult i32 %1473, %1469
  %1476 = icmp ult i32 %1473, %1472
  %1477 = or i1 %1475, %1476
  %1478 = zext i1 %1477 to i8
  store i8 %1478, i8* %29, align 1
  %1479 = and i32 %1473, 255
  %1480 = tail call i32 @llvm.ctpop.i32(i32 %1479)
  %1481 = trunc i32 %1480 to i8
  %1482 = and i8 %1481, 1
  %1483 = xor i8 %1482, 1
  store i8 %1483, i8* %36, align 1
  %1484 = xor i32 %1472, %1469
  %1485 = xor i32 %1484, %1473
  %1486 = lshr i32 %1485, 4
  %1487 = trunc i32 %1486 to i8
  %1488 = and i8 %1487, 1
  store i8 %1488, i8* %42, align 1
  %1489 = icmp eq i32 %1473, 0
  %1490 = zext i1 %1489 to i8
  store i8 %1490, i8* %45, align 1
  %1491 = lshr i32 %1473, 31
  %1492 = trunc i32 %1491 to i8
  store i8 %1492, i8* %48, align 1
  %1493 = lshr i32 %1469, 31
  %1494 = lshr i32 %1472, 31
  %1495 = xor i32 %1491, %1493
  %1496 = xor i32 %1491, %1494
  %1497 = add nuw nsw i32 %1495, %1496
  %1498 = icmp eq i32 %1497, 2
  %1499 = zext i1 %1498 to i8
  store i8 %1499, i8* %54, align 1
  %1500 = sext i32 %1473 to i64
  store i64 %1500, i64* %RCX.i2011, align 8
  %1501 = shl nsw i64 %1500, 3
  %1502 = add i64 %1464, %1501
  %1503 = add i64 %1456, 42
  store i64 %1503, i64* %3, align 8
  %1504 = inttoptr i64 %1502 to i64*
  %1505 = load i64, i64* %1504, align 8
  store i64 %1505, i64* %RAX.i1963.phi.trans.insert, align 8
  store i64 %1465, i64* %RCX.i2011, align 8
  %1506 = add i64 %1465, 148
  %1507 = add i64 %1456, 56
  store i64 %1507, i64* %3, align 8
  %1508 = inttoptr i64 %1506 to i32*
  %1509 = load i32, i32* %1508, align 4
  %1510 = zext i32 %1509 to i64
  store i64 %1510, i64* %344, align 8
  %1511 = add i64 %1428, -44
  %1512 = add i64 %1456, 59
  store i64 %1512, i64* %3, align 8
  %1513 = inttoptr i64 %1511 to i32*
  %1514 = load i32, i32* %1513, align 4
  %1515 = add i32 %1514, %1509
  %1516 = zext i32 %1515 to i64
  store i64 %1516, i64* %344, align 8
  %1517 = icmp ult i32 %1515, %1509
  %1518 = icmp ult i32 %1515, %1514
  %1519 = or i1 %1517, %1518
  %1520 = zext i1 %1519 to i8
  store i8 %1520, i8* %29, align 1
  %1521 = and i32 %1515, 255
  %1522 = tail call i32 @llvm.ctpop.i32(i32 %1521)
  %1523 = trunc i32 %1522 to i8
  %1524 = and i8 %1523, 1
  %1525 = xor i8 %1524, 1
  store i8 %1525, i8* %36, align 1
  %1526 = xor i32 %1514, %1509
  %1527 = xor i32 %1526, %1515
  %1528 = lshr i32 %1527, 4
  %1529 = trunc i32 %1528 to i8
  %1530 = and i8 %1529, 1
  store i8 %1530, i8* %42, align 1
  %1531 = icmp eq i32 %1515, 0
  %1532 = zext i1 %1531 to i8
  store i8 %1532, i8* %45, align 1
  %1533 = lshr i32 %1515, 31
  %1534 = trunc i32 %1533 to i8
  store i8 %1534, i8* %48, align 1
  %1535 = lshr i32 %1509, 31
  %1536 = lshr i32 %1514, 31
  %1537 = xor i32 %1533, %1535
  %1538 = xor i32 %1533, %1536
  %1539 = add nuw nsw i32 %1537, %1538
  %1540 = icmp eq i32 %1539, 2
  %1541 = zext i1 %1540 to i8
  store i8 %1541, i8* %54, align 1
  %1542 = sext i32 %1515 to i64
  store i64 %1542, i64* %RCX.i2011, align 8
  %1543 = shl nsw i64 %1542, 1
  %1544 = add i64 %1505, %1543
  %1545 = add i64 %1456, 66
  store i64 %1545, i64* %3, align 8
  %1546 = inttoptr i64 %1544 to i16*
  %1547 = load i16, i16* %1546, align 2
  %1548 = sext i16 %1547 to i64
  %1549 = and i64 %1548, 4294967295
  store i64 %1549, i64* %344, align 8
  %1550 = sext i16 %1547 to i32
  %1551 = add i64 %1456, 69
  store i8 0, i8* %29, align 1
  %1552 = and i32 %1550, 255
  %1553 = tail call i32 @llvm.ctpop.i32(i32 %1552)
  %1554 = trunc i32 %1553 to i8
  %1555 = and i8 %1554, 1
  %1556 = xor i8 %1555, 1
  store i8 %1556, i8* %36, align 1
  store i8 0, i8* %42, align 1
  %1557 = icmp eq i16 %1547, 0
  %1558 = zext i1 %1557 to i8
  store i8 %1558, i8* %45, align 1
  %1559 = lshr i32 %1550, 31
  %1560 = trunc i32 %1559 to i8
  store i8 %1560, i8* %48, align 1
  store i8 0, i8* %54, align 1
  %1561 = icmp ne i8 %1560, 0
  %.v86 = select i1 %1561, i64 117, i64 6
  %1562 = add i64 %1551, %.v86
  store i64 %1562, i64* %3, align 8
  br i1 %1561, label %block_.L_489e98, label %block_489e29

block_489e29:                                     ; preds = %block_489dde
  %1563 = load i64, i64* bitcast (%G_0x70fcf0_type* @G_0x70fcf0 to i64*), align 8
  %1564 = add i64 %1563, 24
  store i64 %1564, i64* %RAX.i1963.phi.trans.insert, align 8
  %1565 = icmp ugt i64 %1563, -25
  %1566 = zext i1 %1565 to i8
  store i8 %1566, i8* %29, align 1
  %1567 = trunc i64 %1564 to i32
  %1568 = and i32 %1567, 255
  %1569 = tail call i32 @llvm.ctpop.i32(i32 %1568)
  %1570 = trunc i32 %1569 to i8
  %1571 = and i8 %1570, 1
  %1572 = xor i8 %1571, 1
  store i8 %1572, i8* %36, align 1
  %1573 = xor i64 %1563, 16
  %1574 = xor i64 %1573, %1564
  %1575 = lshr i64 %1574, 4
  %1576 = trunc i64 %1575 to i8
  %1577 = and i8 %1576, 1
  store i8 %1577, i8* %42, align 1
  %1578 = icmp eq i64 %1564, 0
  %1579 = zext i1 %1578 to i8
  store i8 %1579, i8* %45, align 1
  %1580 = lshr i64 %1564, 63
  %1581 = trunc i64 %1580 to i8
  store i8 %1581, i8* %48, align 1
  %1582 = lshr i64 %1563, 63
  %1583 = xor i64 %1580, %1582
  %1584 = add nuw nsw i64 %1583, %1580
  %1585 = icmp eq i64 %1584, 2
  %1586 = zext i1 %1585 to i8
  store i8 %1586, i8* %54, align 1
  %1587 = load i64, i64* %RBP.i, align 8
  %1588 = add i64 %1587, -60
  %1589 = add i64 %1562, 15
  store i64 %1589, i64* %3, align 8
  %1590 = inttoptr i64 %1588 to i32*
  %1591 = load i32, i32* %1590, align 4
  %1592 = zext i32 %1591 to i64
  store i64 %1592, i64* %RCX.i2011, align 8
  %1593 = sext i32 %1591 to i64
  %1594 = mul nsw i64 %1593, 264
  %1595 = lshr i64 %1594, 63
  %1596 = add i64 %1594, %1564
  store i64 %1596, i64* %RAX.i1963.phi.trans.insert, align 8
  %1597 = icmp ult i64 %1596, %1564
  %1598 = icmp ult i64 %1596, %1594
  %1599 = or i1 %1597, %1598
  %1600 = zext i1 %1599 to i8
  store i8 %1600, i8* %29, align 1
  %1601 = trunc i64 %1596 to i32
  %1602 = and i32 %1601, 255
  %1603 = tail call i32 @llvm.ctpop.i32(i32 %1602)
  %1604 = trunc i32 %1603 to i8
  %1605 = and i8 %1604, 1
  %1606 = xor i8 %1605, 1
  store i8 %1606, i8* %36, align 1
  %1607 = xor i64 %1594, %1564
  %1608 = xor i64 %1607, %1596
  %1609 = lshr i64 %1608, 4
  %1610 = trunc i64 %1609 to i8
  %1611 = and i8 %1610, 1
  store i8 %1611, i8* %42, align 1
  %1612 = icmp eq i64 %1596, 0
  %1613 = zext i1 %1612 to i8
  store i8 %1613, i8* %45, align 1
  %1614 = lshr i64 %1596, 63
  %1615 = trunc i64 %1614 to i8
  store i8 %1615, i8* %48, align 1
  %1616 = xor i64 %1614, %1580
  %1617 = xor i64 %1614, %1595
  %1618 = add nuw nsw i64 %1616, %1617
  %1619 = icmp eq i64 %1618, 2
  %1620 = zext i1 %1619 to i8
  store i8 %1620, i8* %54, align 1
  %1621 = load i64, i64* bitcast (%G_0x70fcf0_type* @G_0x70fcf0 to i64*), align 8
  store i64 %1621, i64* %344, align 8
  %1622 = add i64 %1621, 6480
  %1623 = add i64 %1562, 46
  store i64 %1623, i64* %3, align 8
  %1624 = inttoptr i64 %1622 to i64*
  %1625 = load i64, i64* %1624, align 8
  store i64 %1625, i64* %344, align 8
  %1626 = add i64 %1562, 49
  store i64 %1626, i64* %3, align 8
  %1627 = inttoptr i64 %1625 to i64*
  %1628 = load i64, i64* %1627, align 8
  store i64 %1628, i64* %344, align 8
  %1629 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*), align 8
  store i64 %1629, i64* %RSI.i1479, align 8
  %1630 = add i64 %1629, 144
  %1631 = add i64 %1562, 63
  store i64 %1631, i64* %3, align 8
  %1632 = inttoptr i64 %1630 to i32*
  %1633 = load i32, i32* %1632, align 4
  %1634 = zext i32 %1633 to i64
  store i64 %1634, i64* %RCX.i2011, align 8
  %1635 = load i64, i64* %RBP.i, align 8
  %1636 = add i64 %1635, -48
  %1637 = add i64 %1562, 66
  store i64 %1637, i64* %3, align 8
  %1638 = inttoptr i64 %1636 to i32*
  %1639 = load i32, i32* %1638, align 4
  %1640 = add i32 %1639, %1633
  %1641 = zext i32 %1640 to i64
  store i64 %1641, i64* %RCX.i2011, align 8
  %1642 = icmp ult i32 %1640, %1633
  %1643 = icmp ult i32 %1640, %1639
  %1644 = or i1 %1642, %1643
  %1645 = zext i1 %1644 to i8
  store i8 %1645, i8* %29, align 1
  %1646 = and i32 %1640, 255
  %1647 = tail call i32 @llvm.ctpop.i32(i32 %1646)
  %1648 = trunc i32 %1647 to i8
  %1649 = and i8 %1648, 1
  %1650 = xor i8 %1649, 1
  store i8 %1650, i8* %36, align 1
  %1651 = xor i32 %1639, %1633
  %1652 = xor i32 %1651, %1640
  %1653 = lshr i32 %1652, 4
  %1654 = trunc i32 %1653 to i8
  %1655 = and i8 %1654, 1
  store i8 %1655, i8* %42, align 1
  %1656 = icmp eq i32 %1640, 0
  %1657 = zext i1 %1656 to i8
  store i8 %1657, i8* %45, align 1
  %1658 = lshr i32 %1640, 31
  %1659 = trunc i32 %1658 to i8
  store i8 %1659, i8* %48, align 1
  %1660 = lshr i32 %1633, 31
  %1661 = lshr i32 %1639, 31
  %1662 = xor i32 %1658, %1660
  %1663 = xor i32 %1658, %1661
  %1664 = add nuw nsw i32 %1662, %1663
  %1665 = icmp eq i32 %1664, 2
  %1666 = zext i1 %1665 to i8
  store i8 %1666, i8* %54, align 1
  %1667 = sext i32 %1640 to i64
  store i64 %1667, i64* %RSI.i1479, align 8
  %1668 = shl nsw i64 %1667, 3
  %1669 = add i64 %1628, %1668
  %1670 = add i64 %1562, 73
  store i64 %1670, i64* %3, align 8
  %1671 = inttoptr i64 %1669 to i64*
  %1672 = load i64, i64* %1671, align 8
  store i64 %1672, i64* %344, align 8
  store i64 %1629, i64* %RSI.i1479, align 8
  %1673 = add i64 %1629, 148
  %1674 = add i64 %1562, 87
  store i64 %1674, i64* %3, align 8
  %1675 = inttoptr i64 %1673 to i32*
  %1676 = load i32, i32* %1675, align 4
  %1677 = zext i32 %1676 to i64
  store i64 %1677, i64* %RCX.i2011, align 8
  %1678 = add i64 %1635, -44
  %1679 = add i64 %1562, 90
  store i64 %1679, i64* %3, align 8
  %1680 = inttoptr i64 %1678 to i32*
  %1681 = load i32, i32* %1680, align 4
  %1682 = add i32 %1681, %1676
  %1683 = zext i32 %1682 to i64
  store i64 %1683, i64* %RCX.i2011, align 8
  %1684 = icmp ult i32 %1682, %1676
  %1685 = icmp ult i32 %1682, %1681
  %1686 = or i1 %1684, %1685
  %1687 = zext i1 %1686 to i8
  store i8 %1687, i8* %29, align 1
  %1688 = and i32 %1682, 255
  %1689 = tail call i32 @llvm.ctpop.i32(i32 %1688)
  %1690 = trunc i32 %1689 to i8
  %1691 = and i8 %1690, 1
  %1692 = xor i8 %1691, 1
  store i8 %1692, i8* %36, align 1
  %1693 = xor i32 %1681, %1676
  %1694 = xor i32 %1693, %1682
  %1695 = lshr i32 %1694, 4
  %1696 = trunc i32 %1695 to i8
  %1697 = and i8 %1696, 1
  store i8 %1697, i8* %42, align 1
  %1698 = icmp eq i32 %1682, 0
  %1699 = zext i1 %1698 to i8
  store i8 %1699, i8* %45, align 1
  %1700 = lshr i32 %1682, 31
  %1701 = trunc i32 %1700 to i8
  store i8 %1701, i8* %48, align 1
  %1702 = lshr i32 %1676, 31
  %1703 = lshr i32 %1681, 31
  %1704 = xor i32 %1700, %1702
  %1705 = xor i32 %1700, %1703
  %1706 = add nuw nsw i32 %1704, %1705
  %1707 = icmp eq i32 %1706, 2
  %1708 = zext i1 %1707 to i8
  store i8 %1708, i8* %54, align 1
  %1709 = sext i32 %1682 to i64
  store i64 %1709, i64* %RSI.i1479, align 8
  %1710 = shl nsw i64 %1709, 1
  %1711 = add i64 %1672, %1710
  %1712 = add i64 %1562, 98
  store i64 %1712, i64* %3, align 8
  %1713 = inttoptr i64 %1711 to i16*
  %1714 = load i16, i16* %1713, align 2
  %1715 = sext i16 %1714 to i64
  store i64 %1715, i64* %344, align 8
  %1716 = load i64, i64* %RAX.i1963.phi.trans.insert, align 8
  %1717 = shl nsw i64 %1715, 3
  %1718 = add i64 %1717, %1716
  %1719 = add i64 %1562, 102
  store i64 %1719, i64* %3, align 8
  %1720 = inttoptr i64 %1718 to i64*
  %1721 = load i64, i64* %1720, align 8
  store i64 %1721, i64* %RAX.i1963.phi.trans.insert, align 8
  %1722 = load i64, i64* %RBP.i, align 8
  %1723 = add i64 %1722, -104
  %1724 = add i64 %1562, 106
  store i64 %1724, i64* %3, align 8
  %1725 = inttoptr i64 %1723 to i64*
  store i64 %1721, i64* %1725, align 8
  %1726 = load i64, i64* %3, align 8
  %1727 = add i64 %1726, 21
  br label %block_.L_489ea8

block_.L_489e98:                                  ; preds = %block_489dde
  store i64 -1, i64* %RAX.i1963.phi.trans.insert, align 8
  %1728 = load i64, i64* %RBP.i, align 8
  %1729 = add i64 %1728, -104
  %1730 = add i64 %1562, 11
  store i64 %1730, i64* %3, align 8
  %1731 = inttoptr i64 %1729 to i64*
  store i64 -1, i64* %1731, align 8
  %1732 = load i64, i64* %3, align 8
  %1733 = add i64 %1732, 5
  store i64 %1733, i64* %3, align 8
  br label %block_.L_489ea8

block_.L_489ea8:                                  ; preds = %block_.L_489e98, %block_489e29
  %storemerge49 = phi i64 [ %1727, %block_489e29 ], [ %1733, %block_.L_489e98 ]
  %1734 = load i64, i64* %RBP.i, align 8
  %1735 = add i64 %1734, -104
  %1736 = add i64 %storemerge49, 4
  store i64 %1736, i64* %3, align 8
  %1737 = inttoptr i64 %1735 to i64*
  %1738 = load i64, i64* %1737, align 8
  store i64 %1738, i64* %RAX.i1963.phi.trans.insert, align 8
  %1739 = load i64, i64* bitcast (%G_0x70fcf0_type* @G_0x70fcf0 to i64*), align 8
  store i64 %1739, i64* %RCX.i2011, align 8
  %1740 = add i64 %1739, 6488
  %1741 = add i64 %storemerge49, 19
  store i64 %1741, i64* %3, align 8
  %1742 = inttoptr i64 %1740 to i64*
  %1743 = load i64, i64* %1742, align 8
  store i64 %1743, i64* %RCX.i2011, align 8
  %1744 = add i64 %storemerge49, 22
  store i64 %1744, i64* %3, align 8
  %1745 = inttoptr i64 %1743 to i64*
  %1746 = load i64, i64* %1745, align 8
  store i64 %1746, i64* %RCX.i2011, align 8
  %1747 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*), align 8
  store i64 %1747, i64* %344, align 8
  %1748 = add i64 %1747, 144
  %1749 = add i64 %storemerge49, 36
  store i64 %1749, i64* %3, align 8
  %1750 = inttoptr i64 %1748 to i32*
  %1751 = load i32, i32* %1750, align 4
  %1752 = zext i32 %1751 to i64
  store i64 %1752, i64* %RSI.i1668, align 8
  %1753 = add i64 %1734, -48
  %1754 = add i64 %storemerge49, 39
  store i64 %1754, i64* %3, align 8
  %1755 = inttoptr i64 %1753 to i32*
  %1756 = load i32, i32* %1755, align 4
  %1757 = add i32 %1756, %1751
  %1758 = zext i32 %1757 to i64
  store i64 %1758, i64* %RSI.i1668, align 8
  %1759 = icmp ult i32 %1757, %1751
  %1760 = icmp ult i32 %1757, %1756
  %1761 = or i1 %1759, %1760
  %1762 = zext i1 %1761 to i8
  store i8 %1762, i8* %29, align 1
  %1763 = and i32 %1757, 255
  %1764 = tail call i32 @llvm.ctpop.i32(i32 %1763)
  %1765 = trunc i32 %1764 to i8
  %1766 = and i8 %1765, 1
  %1767 = xor i8 %1766, 1
  store i8 %1767, i8* %36, align 1
  %1768 = xor i32 %1756, %1751
  %1769 = xor i32 %1768, %1757
  %1770 = lshr i32 %1769, 4
  %1771 = trunc i32 %1770 to i8
  %1772 = and i8 %1771, 1
  store i8 %1772, i8* %42, align 1
  %1773 = icmp eq i32 %1757, 0
  %1774 = zext i1 %1773 to i8
  store i8 %1774, i8* %45, align 1
  %1775 = lshr i32 %1757, 31
  %1776 = trunc i32 %1775 to i8
  store i8 %1776, i8* %48, align 1
  %1777 = lshr i32 %1751, 31
  %1778 = lshr i32 %1756, 31
  %1779 = xor i32 %1775, %1777
  %1780 = xor i32 %1775, %1778
  %1781 = add nuw nsw i32 %1779, %1780
  %1782 = icmp eq i32 %1781, 2
  %1783 = zext i1 %1782 to i8
  store i8 %1783, i8* %54, align 1
  %1784 = sext i32 %1757 to i64
  store i64 %1784, i64* %344, align 8
  %1785 = shl nsw i64 %1784, 3
  %1786 = add i64 %1746, %1785
  %1787 = add i64 %storemerge49, 46
  store i64 %1787, i64* %3, align 8
  %1788 = inttoptr i64 %1786 to i64*
  %1789 = load i64, i64* %1788, align 8
  store i64 %1789, i64* %RCX.i2011, align 8
  store i64 %1747, i64* %344, align 8
  %1790 = add i64 %1747, 148
  %1791 = add i64 %storemerge49, 60
  store i64 %1791, i64* %3, align 8
  %1792 = inttoptr i64 %1790 to i32*
  %1793 = load i32, i32* %1792, align 4
  %1794 = zext i32 %1793 to i64
  store i64 %1794, i64* %RSI.i1668, align 8
  %1795 = add i64 %1734, -44
  %1796 = add i64 %storemerge49, 63
  store i64 %1796, i64* %3, align 8
  %1797 = inttoptr i64 %1795 to i32*
  %1798 = load i32, i32* %1797, align 4
  %1799 = add i32 %1798, %1793
  %1800 = zext i32 %1799 to i64
  store i64 %1800, i64* %RSI.i1668, align 8
  %1801 = icmp ult i32 %1799, %1793
  %1802 = icmp ult i32 %1799, %1798
  %1803 = or i1 %1801, %1802
  %1804 = zext i1 %1803 to i8
  store i8 %1804, i8* %29, align 1
  %1805 = and i32 %1799, 255
  %1806 = tail call i32 @llvm.ctpop.i32(i32 %1805)
  %1807 = trunc i32 %1806 to i8
  %1808 = and i8 %1807, 1
  %1809 = xor i8 %1808, 1
  store i8 %1809, i8* %36, align 1
  %1810 = xor i32 %1798, %1793
  %1811 = xor i32 %1810, %1799
  %1812 = lshr i32 %1811, 4
  %1813 = trunc i32 %1812 to i8
  %1814 = and i8 %1813, 1
  store i8 %1814, i8* %42, align 1
  %1815 = icmp eq i32 %1799, 0
  %1816 = zext i1 %1815 to i8
  store i8 %1816, i8* %45, align 1
  %1817 = lshr i32 %1799, 31
  %1818 = trunc i32 %1817 to i8
  store i8 %1818, i8* %48, align 1
  %1819 = lshr i32 %1793, 31
  %1820 = lshr i32 %1798, 31
  %1821 = xor i32 %1817, %1819
  %1822 = xor i32 %1817, %1820
  %1823 = add nuw nsw i32 %1821, %1822
  %1824 = icmp eq i32 %1823, 2
  %1825 = zext i1 %1824 to i8
  store i8 %1825, i8* %54, align 1
  %1826 = add i64 %storemerge49, 66
  store i64 %1826, i64* %3, align 8
  %1827 = sext i32 %1799 to i64
  store i64 %1827, i64* %344, align 8
  %1828 = shl nsw i64 %1827, 3
  %1829 = add i64 %1789, %1828
  %1830 = load i64, i64* %RAX.i1963.phi.trans.insert, align 8
  %1831 = add i64 %storemerge49, 70
  store i64 %1831, i64* %3, align 8
  %1832 = inttoptr i64 %1829 to i64*
  store i64 %1830, i64* %1832, align 8
  %1833 = load i64, i64* %RBP.i, align 8
  %1834 = add i64 %1833, -48
  %1835 = load i64, i64* %3, align 8
  %1836 = add i64 %1835, 3
  store i64 %1836, i64* %3, align 8
  %1837 = inttoptr i64 %1834 to i32*
  %1838 = load i32, i32* %1837, align 4
  %1839 = add i32 %1838, 1
  %1840 = zext i32 %1839 to i64
  store i64 %1840, i64* %RAX.i1963.phi.trans.insert, align 8
  %1841 = icmp eq i32 %1838, -1
  %1842 = icmp eq i32 %1839, 0
  %1843 = or i1 %1841, %1842
  %1844 = zext i1 %1843 to i8
  store i8 %1844, i8* %29, align 1
  %1845 = and i32 %1839, 255
  %1846 = tail call i32 @llvm.ctpop.i32(i32 %1845)
  %1847 = trunc i32 %1846 to i8
  %1848 = and i8 %1847, 1
  %1849 = xor i8 %1848, 1
  store i8 %1849, i8* %36, align 1
  %1850 = xor i32 %1839, %1838
  %1851 = lshr i32 %1850, 4
  %1852 = trunc i32 %1851 to i8
  %1853 = and i8 %1852, 1
  store i8 %1853, i8* %42, align 1
  %1854 = zext i1 %1842 to i8
  store i8 %1854, i8* %45, align 1
  %1855 = lshr i32 %1839, 31
  %1856 = trunc i32 %1855 to i8
  store i8 %1856, i8* %48, align 1
  %1857 = lshr i32 %1838, 31
  %1858 = xor i32 %1855, %1857
  %1859 = add nuw nsw i32 %1858, %1855
  %1860 = icmp eq i32 %1859, 2
  %1861 = zext i1 %1860 to i8
  store i8 %1861, i8* %54, align 1
  %1862 = add i64 %1835, 9
  store i64 %1862, i64* %3, align 8
  store i32 %1839, i32* %1837, align 4
  %1863 = load i64, i64* %3, align 8
  %1864 = add i64 %1863, -291
  store i64 %1864, i64* %3, align 8
  br label %block_.L_489dd4

block_.L_489efc:                                  ; preds = %block_.L_489dd4
  %1865 = add i64 %1428, -44
  %1866 = add i64 %1456, 8
  store i64 %1866, i64* %3, align 8
  %1867 = inttoptr i64 %1865 to i32*
  %1868 = load i32, i32* %1867, align 4
  %1869 = add i32 %1868, 1
  %1870 = zext i32 %1869 to i64
  store i64 %1870, i64* %RAX.i1963.phi.trans.insert, align 8
  %1871 = icmp eq i32 %1868, -1
  %1872 = icmp eq i32 %1869, 0
  %1873 = or i1 %1871, %1872
  %1874 = zext i1 %1873 to i8
  store i8 %1874, i8* %29, align 1
  %1875 = and i32 %1869, 255
  %1876 = tail call i32 @llvm.ctpop.i32(i32 %1875)
  %1877 = trunc i32 %1876 to i8
  %1878 = and i8 %1877, 1
  %1879 = xor i8 %1878, 1
  store i8 %1879, i8* %36, align 1
  %1880 = xor i32 %1869, %1868
  %1881 = lshr i32 %1880, 4
  %1882 = trunc i32 %1881 to i8
  %1883 = and i8 %1882, 1
  store i8 %1883, i8* %42, align 1
  %1884 = zext i1 %1872 to i8
  store i8 %1884, i8* %45, align 1
  %1885 = lshr i32 %1869, 31
  %1886 = trunc i32 %1885 to i8
  store i8 %1886, i8* %48, align 1
  %1887 = lshr i32 %1868, 31
  %1888 = xor i32 %1885, %1887
  %1889 = add nuw nsw i32 %1888, %1885
  %1890 = icmp eq i32 %1889, 2
  %1891 = zext i1 %1890 to i8
  store i8 %1891, i8* %54, align 1
  %1892 = add i64 %1456, 14
  store i64 %1892, i64* %3, align 8
  store i32 %1869, i32* %1867, align 4
  %1893 = load i64, i64* %3, align 8
  %1894 = add i64 %1893, -327
  store i64 %1894, i64* %3, align 8
  br label %block_.L_489dc3

block_.L_489f0f:                                  ; preds = %block_.L_489dc3
  %1895 = add i64 %1395, -56
  %1896 = add i64 %1423, 4
  store i64 %1896, i64* %3, align 8
  %1897 = inttoptr i64 %1895 to i32*
  %1898 = load i32, i32* %1897, align 4
  store i8 0, i8* %29, align 1
  %1899 = and i32 %1898, 255
  %1900 = tail call i32 @llvm.ctpop.i32(i32 %1899)
  %1901 = trunc i32 %1900 to i8
  %1902 = and i8 %1901, 1
  %1903 = xor i8 %1902, 1
  store i8 %1903, i8* %36, align 1
  store i8 0, i8* %42, align 1
  %1904 = icmp eq i32 %1898, 0
  %1905 = zext i1 %1904 to i8
  store i8 %1905, i8* %45, align 1
  %1906 = lshr i32 %1898, 31
  %1907 = trunc i32 %1906 to i8
  store i8 %1907, i8* %48, align 1
  store i8 0, i8* %54, align 1
  %.v229 = select i1 %1904, i64 357, i64 10
  %1908 = add i64 %1423, %.v229
  store i64 %1908, i64* %3, align 8
  br i1 %1904, label %block_.L_48a074, label %block_489f19

block_489f19:                                     ; preds = %block_.L_489f0f
  %1909 = add i64 %1908, 7
  store i64 %1909, i64* %3, align 8
  store i32 0, i32* %1398, align 4
  %.pre169 = load i64, i64* %3, align 8
  br label %block_.L_489f20

block_.L_489f20:                                  ; preds = %block_.L_48a05c, %block_489f19
  %1910 = phi i64 [ %2432, %block_.L_48a05c ], [ %.pre169, %block_489f19 ]
  %1911 = load i64, i64* %RBP.i, align 8
  %1912 = add i64 %1911, -44
  %1913 = add i64 %1910, 4
  store i64 %1913, i64* %3, align 8
  %1914 = inttoptr i64 %1912 to i32*
  %1915 = load i32, i32* %1914, align 4
  %1916 = add i32 %1915, -4
  %1917 = icmp ult i32 %1915, 4
  %1918 = zext i1 %1917 to i8
  store i8 %1918, i8* %29, align 1
  %1919 = and i32 %1916, 255
  %1920 = tail call i32 @llvm.ctpop.i32(i32 %1919)
  %1921 = trunc i32 %1920 to i8
  %1922 = and i8 %1921, 1
  %1923 = xor i8 %1922, 1
  store i8 %1923, i8* %36, align 1
  %1924 = xor i32 %1916, %1915
  %1925 = lshr i32 %1924, 4
  %1926 = trunc i32 %1925 to i8
  %1927 = and i8 %1926, 1
  store i8 %1927, i8* %42, align 1
  %1928 = icmp eq i32 %1916, 0
  %1929 = zext i1 %1928 to i8
  store i8 %1929, i8* %45, align 1
  %1930 = lshr i32 %1916, 31
  %1931 = trunc i32 %1930 to i8
  store i8 %1931, i8* %48, align 1
  %1932 = lshr i32 %1915, 31
  %1933 = xor i32 %1930, %1932
  %1934 = add nuw nsw i32 %1933, %1932
  %1935 = icmp eq i32 %1934, 2
  %1936 = zext i1 %1935 to i8
  store i8 %1936, i8* %54, align 1
  %1937 = icmp ne i8 %1931, 0
  %1938 = xor i1 %1937, %1935
  %.v230 = select i1 %1938, i64 10, i64 335
  %1939 = add i64 %1910, %.v230
  store i64 %1939, i64* %3, align 8
  br i1 %1938, label %block_489f2a, label %block_.L_48a06f

block_489f2a:                                     ; preds = %block_.L_489f20
  %1940 = add i64 %1911, -48
  %1941 = add i64 %1939, 7
  store i64 %1941, i64* %3, align 8
  %1942 = inttoptr i64 %1940 to i32*
  store i32 0, i32* %1942, align 4
  %.pre170 = load i64, i64* %3, align 8
  br label %block_.L_489f31

block_.L_489f31:                                  ; preds = %block_.L_48a007, %block_489f2a
  %1943 = phi i64 [ %2402, %block_.L_48a007 ], [ %.pre170, %block_489f2a ]
  %1944 = load i64, i64* %RBP.i, align 8
  %1945 = add i64 %1944, -48
  %1946 = add i64 %1943, 4
  store i64 %1946, i64* %3, align 8
  %1947 = inttoptr i64 %1945 to i32*
  %1948 = load i32, i32* %1947, align 4
  %1949 = add i32 %1948, -4
  %1950 = icmp ult i32 %1948, 4
  %1951 = zext i1 %1950 to i8
  store i8 %1951, i8* %29, align 1
  %1952 = and i32 %1949, 255
  %1953 = tail call i32 @llvm.ctpop.i32(i32 %1952)
  %1954 = trunc i32 %1953 to i8
  %1955 = and i8 %1954, 1
  %1956 = xor i8 %1955, 1
  store i8 %1956, i8* %36, align 1
  %1957 = xor i32 %1949, %1948
  %1958 = lshr i32 %1957, 4
  %1959 = trunc i32 %1958 to i8
  %1960 = and i8 %1959, 1
  store i8 %1960, i8* %42, align 1
  %1961 = icmp eq i32 %1949, 0
  %1962 = zext i1 %1961 to i8
  store i8 %1962, i8* %45, align 1
  %1963 = lshr i32 %1949, 31
  %1964 = trunc i32 %1963 to i8
  store i8 %1964, i8* %48, align 1
  %1965 = lshr i32 %1948, 31
  %1966 = xor i32 %1963, %1965
  %1967 = add nuw nsw i32 %1966, %1965
  %1968 = icmp eq i32 %1967, 2
  %1969 = zext i1 %1968 to i8
  store i8 %1969, i8* %54, align 1
  %1970 = icmp ne i8 %1964, 0
  %1971 = xor i1 %1970, %1968
  %.v215 = select i1 %1971, i64 10, i64 299
  %1972 = add i64 %1943, %.v215
  store i64 %1972, i64* %3, align 8
  br i1 %1971, label %block_489f3b, label %block_.L_48a05c

block_489f3b:                                     ; preds = %block_.L_489f31
  %1973 = load i64, i64* bitcast (%G_0x70fcf0_type* @G_0x70fcf0 to i64*), align 8
  store i64 %1973, i64* %RAX.i1963.phi.trans.insert, align 8
  %1974 = add i64 %1973, 6480
  %1975 = add i64 %1972, 15
  store i64 %1975, i64* %3, align 8
  %1976 = inttoptr i64 %1974 to i64*
  %1977 = load i64, i64* %1976, align 8
  store i64 %1977, i64* %RAX.i1963.phi.trans.insert, align 8
  %1978 = add i64 %1977, 8
  %1979 = add i64 %1972, 19
  store i64 %1979, i64* %3, align 8
  %1980 = inttoptr i64 %1978 to i64*
  %1981 = load i64, i64* %1980, align 8
  store i64 %1981, i64* %RAX.i1963.phi.trans.insert, align 8
  %1982 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*), align 8
  store i64 %1982, i64* %RCX.i2011, align 8
  %1983 = add i64 %1982, 144
  %1984 = add i64 %1972, 33
  store i64 %1984, i64* %3, align 8
  %1985 = inttoptr i64 %1983 to i32*
  %1986 = load i32, i32* %1985, align 4
  %1987 = zext i32 %1986 to i64
  store i64 %1987, i64* %344, align 8
  %1988 = add i64 %1972, 36
  store i64 %1988, i64* %3, align 8
  %1989 = load i32, i32* %1947, align 4
  %1990 = add i32 %1989, %1986
  %1991 = zext i32 %1990 to i64
  store i64 %1991, i64* %344, align 8
  %1992 = icmp ult i32 %1990, %1986
  %1993 = icmp ult i32 %1990, %1989
  %1994 = or i1 %1992, %1993
  %1995 = zext i1 %1994 to i8
  store i8 %1995, i8* %29, align 1
  %1996 = and i32 %1990, 255
  %1997 = tail call i32 @llvm.ctpop.i32(i32 %1996)
  %1998 = trunc i32 %1997 to i8
  %1999 = and i8 %1998, 1
  %2000 = xor i8 %1999, 1
  store i8 %2000, i8* %36, align 1
  %2001 = xor i32 %1989, %1986
  %2002 = xor i32 %2001, %1990
  %2003 = lshr i32 %2002, 4
  %2004 = trunc i32 %2003 to i8
  %2005 = and i8 %2004, 1
  store i8 %2005, i8* %42, align 1
  %2006 = icmp eq i32 %1990, 0
  %2007 = zext i1 %2006 to i8
  store i8 %2007, i8* %45, align 1
  %2008 = lshr i32 %1990, 31
  %2009 = trunc i32 %2008 to i8
  store i8 %2009, i8* %48, align 1
  %2010 = lshr i32 %1986, 31
  %2011 = lshr i32 %1989, 31
  %2012 = xor i32 %2008, %2010
  %2013 = xor i32 %2008, %2011
  %2014 = add nuw nsw i32 %2012, %2013
  %2015 = icmp eq i32 %2014, 2
  %2016 = zext i1 %2015 to i8
  store i8 %2016, i8* %54, align 1
  %2017 = sext i32 %1990 to i64
  store i64 %2017, i64* %RCX.i2011, align 8
  %2018 = shl nsw i64 %2017, 3
  %2019 = add i64 %1981, %2018
  %2020 = add i64 %1972, 43
  store i64 %2020, i64* %3, align 8
  %2021 = inttoptr i64 %2019 to i64*
  %2022 = load i64, i64* %2021, align 8
  store i64 %2022, i64* %RAX.i1963.phi.trans.insert, align 8
  store i64 %1982, i64* %RCX.i2011, align 8
  %2023 = add i64 %1982, 148
  %2024 = add i64 %1972, 57
  store i64 %2024, i64* %3, align 8
  %2025 = inttoptr i64 %2023 to i32*
  %2026 = load i32, i32* %2025, align 4
  %2027 = zext i32 %2026 to i64
  store i64 %2027, i64* %344, align 8
  %2028 = add i64 %1944, -44
  %2029 = add i64 %1972, 60
  store i64 %2029, i64* %3, align 8
  %2030 = inttoptr i64 %2028 to i32*
  %2031 = load i32, i32* %2030, align 4
  %2032 = add i32 %2031, %2026
  %2033 = zext i32 %2032 to i64
  store i64 %2033, i64* %344, align 8
  %2034 = icmp ult i32 %2032, %2026
  %2035 = icmp ult i32 %2032, %2031
  %2036 = or i1 %2034, %2035
  %2037 = zext i1 %2036 to i8
  store i8 %2037, i8* %29, align 1
  %2038 = and i32 %2032, 255
  %2039 = tail call i32 @llvm.ctpop.i32(i32 %2038)
  %2040 = trunc i32 %2039 to i8
  %2041 = and i8 %2040, 1
  %2042 = xor i8 %2041, 1
  store i8 %2042, i8* %36, align 1
  %2043 = xor i32 %2031, %2026
  %2044 = xor i32 %2043, %2032
  %2045 = lshr i32 %2044, 4
  %2046 = trunc i32 %2045 to i8
  %2047 = and i8 %2046, 1
  store i8 %2047, i8* %42, align 1
  %2048 = icmp eq i32 %2032, 0
  %2049 = zext i1 %2048 to i8
  store i8 %2049, i8* %45, align 1
  %2050 = lshr i32 %2032, 31
  %2051 = trunc i32 %2050 to i8
  store i8 %2051, i8* %48, align 1
  %2052 = lshr i32 %2026, 31
  %2053 = lshr i32 %2031, 31
  %2054 = xor i32 %2050, %2052
  %2055 = xor i32 %2050, %2053
  %2056 = add nuw nsw i32 %2054, %2055
  %2057 = icmp eq i32 %2056, 2
  %2058 = zext i1 %2057 to i8
  store i8 %2058, i8* %54, align 1
  %2059 = sext i32 %2032 to i64
  store i64 %2059, i64* %RCX.i2011, align 8
  %2060 = shl nsw i64 %2059, 1
  %2061 = add i64 %2022, %2060
  %2062 = add i64 %1972, 67
  store i64 %2062, i64* %3, align 8
  %2063 = inttoptr i64 %2061 to i16*
  %2064 = load i16, i16* %2063, align 2
  %2065 = sext i16 %2064 to i64
  %2066 = and i64 %2065, 4294967295
  store i64 %2066, i64* %344, align 8
  %2067 = sext i16 %2064 to i32
  %2068 = add i64 %1972, 70
  store i8 0, i8* %29, align 1
  %2069 = and i32 %2067, 255
  %2070 = tail call i32 @llvm.ctpop.i32(i32 %2069)
  %2071 = trunc i32 %2070 to i8
  %2072 = and i8 %2071, 1
  %2073 = xor i8 %2072, 1
  store i8 %2073, i8* %36, align 1
  store i8 0, i8* %42, align 1
  %2074 = icmp eq i16 %2064, 0
  %2075 = zext i1 %2074 to i8
  store i8 %2075, i8* %45, align 1
  %2076 = lshr i32 %2067, 31
  %2077 = trunc i32 %2076 to i8
  store i8 %2077, i8* %48, align 1
  store i8 0, i8* %54, align 1
  %2078 = icmp ne i8 %2077, 0
  %.v = select i1 %2078, i64 118, i64 6
  %2079 = add i64 %2068, %.v
  store i64 %2079, i64* %3, align 8
  br i1 %2078, label %block_.L_489ff7, label %block_489f87

block_489f87:                                     ; preds = %block_489f3b
  %2080 = load i64, i64* bitcast (%G_0x70fcf0_type* @G_0x70fcf0 to i64*), align 8
  %2081 = add i64 %2080, 24
  store i64 %2081, i64* %RAX.i1963.phi.trans.insert, align 8
  %2082 = icmp ugt i64 %2080, -25
  %2083 = zext i1 %2082 to i8
  store i8 %2083, i8* %29, align 1
  %2084 = trunc i64 %2081 to i32
  %2085 = and i32 %2084, 255
  %2086 = tail call i32 @llvm.ctpop.i32(i32 %2085)
  %2087 = trunc i32 %2086 to i8
  %2088 = and i8 %2087, 1
  %2089 = xor i8 %2088, 1
  store i8 %2089, i8* %36, align 1
  %2090 = xor i64 %2080, 16
  %2091 = xor i64 %2090, %2081
  %2092 = lshr i64 %2091, 4
  %2093 = trunc i64 %2092 to i8
  %2094 = and i8 %2093, 1
  store i8 %2094, i8* %42, align 1
  %2095 = icmp eq i64 %2081, 0
  %2096 = zext i1 %2095 to i8
  store i8 %2096, i8* %45, align 1
  %2097 = lshr i64 %2081, 63
  %2098 = trunc i64 %2097 to i8
  store i8 %2098, i8* %48, align 1
  %2099 = lshr i64 %2080, 63
  %2100 = xor i64 %2097, %2099
  %2101 = add nuw nsw i64 %2100, %2097
  %2102 = icmp eq i64 %2101, 2
  %2103 = zext i1 %2102 to i8
  store i8 %2103, i8* %54, align 1
  %2104 = load i64, i64* %RBP.i, align 8
  %2105 = add i64 %2104, -60
  %2106 = add i64 %2079, 15
  store i64 %2106, i64* %3, align 8
  %2107 = inttoptr i64 %2105 to i32*
  %2108 = load i32, i32* %2107, align 4
  %2109 = add i32 %2108, 1
  %2110 = zext i32 %2109 to i64
  store i64 %2110, i64* %RCX.i2011, align 8
  %2111 = sext i32 %2109 to i64
  %2112 = add i64 %2079, 28
  store i64 %2112, i64* %3, align 8
  %2113 = sext i32 %2109 to i128
  %2114 = and i128 %2113, -18446744073709551616
  %2115 = zext i64 %2111 to i128
  %2116 = or i128 %2114, %2115
  %2117 = mul nsw i128 %2116, 264
  %2118 = trunc i128 %2117 to i64
  store i64 %2118, i64* %344, align 8
  %2119 = sext i64 %2118 to i128
  %2120 = icmp ne i128 %2119, %2117
  %2121 = zext i1 %2120 to i8
  store i8 %2121, i8* %29, align 1
  %2122 = trunc i128 %2117 to i32
  %2123 = and i32 %2122, 248
  %2124 = tail call i32 @llvm.ctpop.i32(i32 %2123)
  %2125 = trunc i32 %2124 to i8
  %2126 = and i8 %2125, 1
  %2127 = xor i8 %2126, 1
  store i8 %2127, i8* %36, align 1
  store i8 0, i8* %42, align 1
  store i8 0, i8* %45, align 1
  %2128 = lshr i64 %2118, 63
  %2129 = trunc i64 %2128 to i8
  store i8 %2129, i8* %48, align 1
  store i8 %2121, i8* %54, align 1
  %2130 = load i64, i64* %RAX.i1963.phi.trans.insert, align 8
  %2131 = add i64 %2118, %2130
  store i64 %2131, i64* %RAX.i1963.phi.trans.insert, align 8
  %2132 = icmp ult i64 %2131, %2130
  %2133 = icmp ult i64 %2131, %2118
  %2134 = or i1 %2132, %2133
  %2135 = zext i1 %2134 to i8
  store i8 %2135, i8* %29, align 1
  %2136 = trunc i64 %2131 to i32
  %2137 = and i32 %2136, 255
  %2138 = tail call i32 @llvm.ctpop.i32(i32 %2137)
  %2139 = trunc i32 %2138 to i8
  %2140 = and i8 %2139, 1
  %2141 = xor i8 %2140, 1
  store i8 %2141, i8* %36, align 1
  %2142 = xor i64 %2118, %2130
  %2143 = xor i64 %2142, %2131
  %2144 = lshr i64 %2143, 4
  %2145 = trunc i64 %2144 to i8
  %2146 = and i8 %2145, 1
  store i8 %2146, i8* %42, align 1
  %2147 = icmp eq i64 %2131, 0
  %2148 = zext i1 %2147 to i8
  store i8 %2148, i8* %45, align 1
  %2149 = lshr i64 %2131, 63
  %2150 = trunc i64 %2149 to i8
  store i8 %2150, i8* %48, align 1
  %2151 = lshr i64 %2130, 63
  %2152 = xor i64 %2149, %2151
  %2153 = xor i64 %2149, %2128
  %2154 = add nuw nsw i64 %2152, %2153
  %2155 = icmp eq i64 %2154, 2
  %2156 = zext i1 %2155 to i8
  store i8 %2156, i8* %54, align 1
  %2157 = load i64, i64* bitcast (%G_0x70fcf0_type* @G_0x70fcf0 to i64*), align 8
  store i64 %2157, i64* %344, align 8
  %2158 = add i64 %2157, 6480
  %2159 = add i64 %2079, 46
  store i64 %2159, i64* %3, align 8
  %2160 = inttoptr i64 %2158 to i64*
  %2161 = load i64, i64* %2160, align 8
  store i64 %2161, i64* %344, align 8
  %2162 = add i64 %2161, 8
  %2163 = add i64 %2079, 50
  store i64 %2163, i64* %3, align 8
  %2164 = inttoptr i64 %2162 to i64*
  %2165 = load i64, i64* %2164, align 8
  store i64 %2165, i64* %344, align 8
  %2166 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*), align 8
  store i64 %2166, i64* %RSI.i1479, align 8
  %2167 = add i64 %2166, 144
  %2168 = add i64 %2079, 64
  store i64 %2168, i64* %3, align 8
  %2169 = inttoptr i64 %2167 to i32*
  %2170 = load i32, i32* %2169, align 4
  %2171 = zext i32 %2170 to i64
  store i64 %2171, i64* %RCX.i2011, align 8
  %2172 = load i64, i64* %RBP.i, align 8
  %2173 = add i64 %2172, -48
  %2174 = add i64 %2079, 67
  store i64 %2174, i64* %3, align 8
  %2175 = inttoptr i64 %2173 to i32*
  %2176 = load i32, i32* %2175, align 4
  %2177 = add i32 %2176, %2170
  %2178 = zext i32 %2177 to i64
  store i64 %2178, i64* %RCX.i2011, align 8
  %2179 = icmp ult i32 %2177, %2170
  %2180 = icmp ult i32 %2177, %2176
  %2181 = or i1 %2179, %2180
  %2182 = zext i1 %2181 to i8
  store i8 %2182, i8* %29, align 1
  %2183 = and i32 %2177, 255
  %2184 = tail call i32 @llvm.ctpop.i32(i32 %2183)
  %2185 = trunc i32 %2184 to i8
  %2186 = and i8 %2185, 1
  %2187 = xor i8 %2186, 1
  store i8 %2187, i8* %36, align 1
  %2188 = xor i32 %2176, %2170
  %2189 = xor i32 %2188, %2177
  %2190 = lshr i32 %2189, 4
  %2191 = trunc i32 %2190 to i8
  %2192 = and i8 %2191, 1
  store i8 %2192, i8* %42, align 1
  %2193 = icmp eq i32 %2177, 0
  %2194 = zext i1 %2193 to i8
  store i8 %2194, i8* %45, align 1
  %2195 = lshr i32 %2177, 31
  %2196 = trunc i32 %2195 to i8
  store i8 %2196, i8* %48, align 1
  %2197 = lshr i32 %2170, 31
  %2198 = lshr i32 %2176, 31
  %2199 = xor i32 %2195, %2197
  %2200 = xor i32 %2195, %2198
  %2201 = add nuw nsw i32 %2199, %2200
  %2202 = icmp eq i32 %2201, 2
  %2203 = zext i1 %2202 to i8
  store i8 %2203, i8* %54, align 1
  %2204 = sext i32 %2177 to i64
  store i64 %2204, i64* %RSI.i1479, align 8
  %2205 = shl nsw i64 %2204, 3
  %2206 = add i64 %2165, %2205
  %2207 = add i64 %2079, 74
  store i64 %2207, i64* %3, align 8
  %2208 = inttoptr i64 %2206 to i64*
  %2209 = load i64, i64* %2208, align 8
  store i64 %2209, i64* %344, align 8
  store i64 %2166, i64* %RSI.i1479, align 8
  %2210 = add i64 %2166, 148
  %2211 = add i64 %2079, 88
  store i64 %2211, i64* %3, align 8
  %2212 = inttoptr i64 %2210 to i32*
  %2213 = load i32, i32* %2212, align 4
  %2214 = zext i32 %2213 to i64
  store i64 %2214, i64* %RCX.i2011, align 8
  %2215 = add i64 %2172, -44
  %2216 = add i64 %2079, 91
  store i64 %2216, i64* %3, align 8
  %2217 = inttoptr i64 %2215 to i32*
  %2218 = load i32, i32* %2217, align 4
  %2219 = add i32 %2218, %2213
  %2220 = zext i32 %2219 to i64
  store i64 %2220, i64* %RCX.i2011, align 8
  %2221 = icmp ult i32 %2219, %2213
  %2222 = icmp ult i32 %2219, %2218
  %2223 = or i1 %2221, %2222
  %2224 = zext i1 %2223 to i8
  store i8 %2224, i8* %29, align 1
  %2225 = and i32 %2219, 255
  %2226 = tail call i32 @llvm.ctpop.i32(i32 %2225)
  %2227 = trunc i32 %2226 to i8
  %2228 = and i8 %2227, 1
  %2229 = xor i8 %2228, 1
  store i8 %2229, i8* %36, align 1
  %2230 = xor i32 %2218, %2213
  %2231 = xor i32 %2230, %2219
  %2232 = lshr i32 %2231, 4
  %2233 = trunc i32 %2232 to i8
  %2234 = and i8 %2233, 1
  store i8 %2234, i8* %42, align 1
  %2235 = icmp eq i32 %2219, 0
  %2236 = zext i1 %2235 to i8
  store i8 %2236, i8* %45, align 1
  %2237 = lshr i32 %2219, 31
  %2238 = trunc i32 %2237 to i8
  store i8 %2238, i8* %48, align 1
  %2239 = lshr i32 %2213, 31
  %2240 = lshr i32 %2218, 31
  %2241 = xor i32 %2237, %2239
  %2242 = xor i32 %2237, %2240
  %2243 = add nuw nsw i32 %2241, %2242
  %2244 = icmp eq i32 %2243, 2
  %2245 = zext i1 %2244 to i8
  store i8 %2245, i8* %54, align 1
  %2246 = sext i32 %2219 to i64
  store i64 %2246, i64* %RSI.i1479, align 8
  %2247 = shl nsw i64 %2246, 1
  %2248 = add i64 %2209, %2247
  %2249 = add i64 %2079, 99
  store i64 %2249, i64* %3, align 8
  %2250 = inttoptr i64 %2248 to i16*
  %2251 = load i16, i16* %2250, align 2
  %2252 = sext i16 %2251 to i64
  store i64 %2252, i64* %344, align 8
  %2253 = load i64, i64* %RAX.i1963.phi.trans.insert, align 8
  %2254 = shl nsw i64 %2252, 3
  %2255 = add i64 %2254, %2253
  %2256 = add i64 %2079, 103
  store i64 %2256, i64* %3, align 8
  %2257 = inttoptr i64 %2255 to i64*
  %2258 = load i64, i64* %2257, align 8
  store i64 %2258, i64* %RAX.i1963.phi.trans.insert, align 8
  %2259 = load i64, i64* %RBP.i, align 8
  %2260 = add i64 %2259, -112
  %2261 = add i64 %2079, 107
  store i64 %2261, i64* %3, align 8
  %2262 = inttoptr i64 %2260 to i64*
  store i64 %2258, i64* %2262, align 8
  %2263 = load i64, i64* %3, align 8
  %2264 = add i64 %2263, 21
  br label %block_.L_48a007

block_.L_489ff7:                                  ; preds = %block_489f3b
  store i64 -1, i64* %RAX.i1963.phi.trans.insert, align 8
  %2265 = load i64, i64* %RBP.i, align 8
  %2266 = add i64 %2265, -112
  %2267 = add i64 %2079, 11
  store i64 %2267, i64* %3, align 8
  %2268 = inttoptr i64 %2266 to i64*
  store i64 -1, i64* %2268, align 8
  %2269 = load i64, i64* %3, align 8
  %2270 = add i64 %2269, 5
  store i64 %2270, i64* %3, align 8
  br label %block_.L_48a007

block_.L_48a007:                                  ; preds = %block_.L_489ff7, %block_489f87
  %storemerge50 = phi i64 [ %2264, %block_489f87 ], [ %2270, %block_.L_489ff7 ]
  %2271 = load i64, i64* %RBP.i, align 8
  %2272 = add i64 %2271, -112
  %2273 = add i64 %storemerge50, 4
  store i64 %2273, i64* %3, align 8
  %2274 = inttoptr i64 %2272 to i64*
  %2275 = load i64, i64* %2274, align 8
  store i64 %2275, i64* %RAX.i1963.phi.trans.insert, align 8
  %2276 = load i64, i64* bitcast (%G_0x70fcf0_type* @G_0x70fcf0 to i64*), align 8
  store i64 %2276, i64* %RCX.i2011, align 8
  %2277 = add i64 %2276, 6488
  %2278 = add i64 %storemerge50, 19
  store i64 %2278, i64* %3, align 8
  %2279 = inttoptr i64 %2277 to i64*
  %2280 = load i64, i64* %2279, align 8
  store i64 %2280, i64* %RCX.i2011, align 8
  %2281 = add i64 %2280, 8
  %2282 = add i64 %storemerge50, 23
  store i64 %2282, i64* %3, align 8
  %2283 = inttoptr i64 %2281 to i64*
  %2284 = load i64, i64* %2283, align 8
  store i64 %2284, i64* %RCX.i2011, align 8
  %2285 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*), align 8
  store i64 %2285, i64* %344, align 8
  %2286 = add i64 %2285, 144
  %2287 = add i64 %storemerge50, 37
  store i64 %2287, i64* %3, align 8
  %2288 = inttoptr i64 %2286 to i32*
  %2289 = load i32, i32* %2288, align 4
  %2290 = zext i32 %2289 to i64
  store i64 %2290, i64* %RSI.i1668, align 8
  %2291 = add i64 %2271, -48
  %2292 = add i64 %storemerge50, 40
  store i64 %2292, i64* %3, align 8
  %2293 = inttoptr i64 %2291 to i32*
  %2294 = load i32, i32* %2293, align 4
  %2295 = add i32 %2294, %2289
  %2296 = zext i32 %2295 to i64
  store i64 %2296, i64* %RSI.i1668, align 8
  %2297 = icmp ult i32 %2295, %2289
  %2298 = icmp ult i32 %2295, %2294
  %2299 = or i1 %2297, %2298
  %2300 = zext i1 %2299 to i8
  store i8 %2300, i8* %29, align 1
  %2301 = and i32 %2295, 255
  %2302 = tail call i32 @llvm.ctpop.i32(i32 %2301)
  %2303 = trunc i32 %2302 to i8
  %2304 = and i8 %2303, 1
  %2305 = xor i8 %2304, 1
  store i8 %2305, i8* %36, align 1
  %2306 = xor i32 %2294, %2289
  %2307 = xor i32 %2306, %2295
  %2308 = lshr i32 %2307, 4
  %2309 = trunc i32 %2308 to i8
  %2310 = and i8 %2309, 1
  store i8 %2310, i8* %42, align 1
  %2311 = icmp eq i32 %2295, 0
  %2312 = zext i1 %2311 to i8
  store i8 %2312, i8* %45, align 1
  %2313 = lshr i32 %2295, 31
  %2314 = trunc i32 %2313 to i8
  store i8 %2314, i8* %48, align 1
  %2315 = lshr i32 %2289, 31
  %2316 = lshr i32 %2294, 31
  %2317 = xor i32 %2313, %2315
  %2318 = xor i32 %2313, %2316
  %2319 = add nuw nsw i32 %2317, %2318
  %2320 = icmp eq i32 %2319, 2
  %2321 = zext i1 %2320 to i8
  store i8 %2321, i8* %54, align 1
  %2322 = sext i32 %2295 to i64
  store i64 %2322, i64* %344, align 8
  %2323 = shl nsw i64 %2322, 3
  %2324 = add i64 %2284, %2323
  %2325 = add i64 %storemerge50, 47
  store i64 %2325, i64* %3, align 8
  %2326 = inttoptr i64 %2324 to i64*
  %2327 = load i64, i64* %2326, align 8
  store i64 %2327, i64* %RCX.i2011, align 8
  store i64 %2285, i64* %344, align 8
  %2328 = add i64 %2285, 148
  %2329 = add i64 %storemerge50, 61
  store i64 %2329, i64* %3, align 8
  %2330 = inttoptr i64 %2328 to i32*
  %2331 = load i32, i32* %2330, align 4
  %2332 = zext i32 %2331 to i64
  store i64 %2332, i64* %RSI.i1668, align 8
  %2333 = add i64 %2271, -44
  %2334 = add i64 %storemerge50, 64
  store i64 %2334, i64* %3, align 8
  %2335 = inttoptr i64 %2333 to i32*
  %2336 = load i32, i32* %2335, align 4
  %2337 = add i32 %2336, %2331
  %2338 = zext i32 %2337 to i64
  store i64 %2338, i64* %RSI.i1668, align 8
  %2339 = icmp ult i32 %2337, %2331
  %2340 = icmp ult i32 %2337, %2336
  %2341 = or i1 %2339, %2340
  %2342 = zext i1 %2341 to i8
  store i8 %2342, i8* %29, align 1
  %2343 = and i32 %2337, 255
  %2344 = tail call i32 @llvm.ctpop.i32(i32 %2343)
  %2345 = trunc i32 %2344 to i8
  %2346 = and i8 %2345, 1
  %2347 = xor i8 %2346, 1
  store i8 %2347, i8* %36, align 1
  %2348 = xor i32 %2336, %2331
  %2349 = xor i32 %2348, %2337
  %2350 = lshr i32 %2349, 4
  %2351 = trunc i32 %2350 to i8
  %2352 = and i8 %2351, 1
  store i8 %2352, i8* %42, align 1
  %2353 = icmp eq i32 %2337, 0
  %2354 = zext i1 %2353 to i8
  store i8 %2354, i8* %45, align 1
  %2355 = lshr i32 %2337, 31
  %2356 = trunc i32 %2355 to i8
  store i8 %2356, i8* %48, align 1
  %2357 = lshr i32 %2331, 31
  %2358 = lshr i32 %2336, 31
  %2359 = xor i32 %2355, %2357
  %2360 = xor i32 %2355, %2358
  %2361 = add nuw nsw i32 %2359, %2360
  %2362 = icmp eq i32 %2361, 2
  %2363 = zext i1 %2362 to i8
  store i8 %2363, i8* %54, align 1
  %2364 = add i64 %storemerge50, 67
  store i64 %2364, i64* %3, align 8
  %2365 = sext i32 %2337 to i64
  store i64 %2365, i64* %344, align 8
  %2366 = shl nsw i64 %2365, 3
  %2367 = add i64 %2327, %2366
  %2368 = load i64, i64* %RAX.i1963.phi.trans.insert, align 8
  %2369 = add i64 %storemerge50, 71
  store i64 %2369, i64* %3, align 8
  %2370 = inttoptr i64 %2367 to i64*
  store i64 %2368, i64* %2370, align 8
  %2371 = load i64, i64* %RBP.i, align 8
  %2372 = add i64 %2371, -48
  %2373 = load i64, i64* %3, align 8
  %2374 = add i64 %2373, 3
  store i64 %2374, i64* %3, align 8
  %2375 = inttoptr i64 %2372 to i32*
  %2376 = load i32, i32* %2375, align 4
  %2377 = add i32 %2376, 1
  %2378 = zext i32 %2377 to i64
  store i64 %2378, i64* %RAX.i1963.phi.trans.insert, align 8
  %2379 = icmp eq i32 %2376, -1
  %2380 = icmp eq i32 %2377, 0
  %2381 = or i1 %2379, %2380
  %2382 = zext i1 %2381 to i8
  store i8 %2382, i8* %29, align 1
  %2383 = and i32 %2377, 255
  %2384 = tail call i32 @llvm.ctpop.i32(i32 %2383)
  %2385 = trunc i32 %2384 to i8
  %2386 = and i8 %2385, 1
  %2387 = xor i8 %2386, 1
  store i8 %2387, i8* %36, align 1
  %2388 = xor i32 %2377, %2376
  %2389 = lshr i32 %2388, 4
  %2390 = trunc i32 %2389 to i8
  %2391 = and i8 %2390, 1
  store i8 %2391, i8* %42, align 1
  %2392 = zext i1 %2380 to i8
  store i8 %2392, i8* %45, align 1
  %2393 = lshr i32 %2377, 31
  %2394 = trunc i32 %2393 to i8
  store i8 %2394, i8* %48, align 1
  %2395 = lshr i32 %2376, 31
  %2396 = xor i32 %2393, %2395
  %2397 = add nuw nsw i32 %2396, %2393
  %2398 = icmp eq i32 %2397, 2
  %2399 = zext i1 %2398 to i8
  store i8 %2399, i8* %54, align 1
  %2400 = add i64 %2373, 9
  store i64 %2400, i64* %3, align 8
  store i32 %2377, i32* %2375, align 4
  %2401 = load i64, i64* %3, align 8
  %2402 = add i64 %2401, -294
  store i64 %2402, i64* %3, align 8
  br label %block_.L_489f31

block_.L_48a05c:                                  ; preds = %block_.L_489f31
  %2403 = add i64 %1944, -44
  %2404 = add i64 %1972, 8
  store i64 %2404, i64* %3, align 8
  %2405 = inttoptr i64 %2403 to i32*
  %2406 = load i32, i32* %2405, align 4
  %2407 = add i32 %2406, 1
  %2408 = zext i32 %2407 to i64
  store i64 %2408, i64* %RAX.i1963.phi.trans.insert, align 8
  %2409 = icmp eq i32 %2406, -1
  %2410 = icmp eq i32 %2407, 0
  %2411 = or i1 %2409, %2410
  %2412 = zext i1 %2411 to i8
  store i8 %2412, i8* %29, align 1
  %2413 = and i32 %2407, 255
  %2414 = tail call i32 @llvm.ctpop.i32(i32 %2413)
  %2415 = trunc i32 %2414 to i8
  %2416 = and i8 %2415, 1
  %2417 = xor i8 %2416, 1
  store i8 %2417, i8* %36, align 1
  %2418 = xor i32 %2407, %2406
  %2419 = lshr i32 %2418, 4
  %2420 = trunc i32 %2419 to i8
  %2421 = and i8 %2420, 1
  store i8 %2421, i8* %42, align 1
  %2422 = zext i1 %2410 to i8
  store i8 %2422, i8* %45, align 1
  %2423 = lshr i32 %2407, 31
  %2424 = trunc i32 %2423 to i8
  store i8 %2424, i8* %48, align 1
  %2425 = lshr i32 %2406, 31
  %2426 = xor i32 %2423, %2425
  %2427 = add nuw nsw i32 %2426, %2423
  %2428 = icmp eq i32 %2427, 2
  %2429 = zext i1 %2428 to i8
  store i8 %2429, i8* %54, align 1
  %2430 = add i64 %1972, 14
  store i64 %2430, i64* %3, align 8
  store i32 %2407, i32* %2405, align 4
  %2431 = load i64, i64* %3, align 8
  %2432 = add i64 %2431, -330
  store i64 %2432, i64* %3, align 8
  br label %block_.L_489f20

block_.L_48a06f:                                  ; preds = %block_.L_489f20
  %2433 = add i64 %1939, 5
  store i64 %2433, i64* %3, align 8
  br label %block_.L_48a074

block_.L_48a074:                                  ; preds = %block_.L_48a06f, %block_.L_489f0f
  %2434 = phi i64 [ %2433, %block_.L_48a06f ], [ %1908, %block_.L_489f0f ]
  store i64 1, i64* %RDI.i1834, align 8
  %2435 = add i64 %2434, 2460
  %2436 = add i64 %2434, 10
  %2437 = load i64, i64* %6, align 8
  %2438 = add i64 %2437, -8
  %2439 = inttoptr i64 %2438 to i64*
  store i64 %2436, i64* %2439, align 8
  store i64 %2438, i64* %6, align 8
  store i64 %2435, i64* %3, align 8
  %call2_48a079 = tail call %struct.Memory* @sub_48aa10.StoreMV8x8(%struct.State* nonnull %0, i64 %2435, %struct.Memory* %MEMORY.7)
  %2440 = load i64, i64* %3, align 8
  store i64 0, i64* %RDI.i1834, align 8
  store i8 0, i8* %29, align 1
  store i8 1, i8* %36, align 1
  store i8 1, i8* %45, align 1
  store i8 0, i8* %48, align 1
  store i8 0, i8* %54, align 1
  store i8 0, i8* %42, align 1
  %2441 = add i64 %2440, 2594
  %2442 = add i64 %2440, 7
  %2443 = load i64, i64* %6, align 8
  %2444 = add i64 %2443, -8
  %2445 = inttoptr i64 %2444 to i64*
  store i64 %2442, i64* %2445, align 8
  store i64 %2444, i64* %6, align 8
  store i64 %2441, i64* %3, align 8
  %call2_48a080 = tail call %struct.Memory* @sub_48aaa0.RestoreMV8x8(%struct.State* nonnull %0, i64 %2441, %struct.Memory* %call2_48a079)
  %2446 = load i64, i64* %RBP.i, align 8
  %2447 = add i64 %2446, -36
  %2448 = load i64, i64* %3, align 8
  %2449 = add i64 %2448, 7
  store i64 %2449, i64* %3, align 8
  %2450 = inttoptr i64 %2447 to i32*
  store i32 0, i32* %2450, align 4
  %.pre171 = load i64, i64* %3, align 8
  br label %block_.L_48a08c

block_.L_48a08c:                                  ; preds = %block_.L_48a152, %block_.L_48a074
  %2451 = phi i64 [ %2780, %block_.L_48a152 ], [ %.pre171, %block_.L_48a074 ]
  %2452 = load i64, i64* %RBP.i, align 8
  %2453 = add i64 %2452, -36
  %2454 = add i64 %2451, 4
  store i64 %2454, i64* %3, align 8
  %2455 = inttoptr i64 %2453 to i32*
  %2456 = load i32, i32* %2455, align 4
  %2457 = add i32 %2456, -4
  %2458 = icmp ult i32 %2456, 4
  %2459 = zext i1 %2458 to i8
  store i8 %2459, i8* %29, align 1
  %2460 = and i32 %2457, 255
  %2461 = tail call i32 @llvm.ctpop.i32(i32 %2460)
  %2462 = trunc i32 %2461 to i8
  %2463 = and i8 %2462, 1
  %2464 = xor i8 %2463, 1
  store i8 %2464, i8* %36, align 1
  %2465 = xor i32 %2457, %2456
  %2466 = lshr i32 %2465, 4
  %2467 = trunc i32 %2466 to i8
  %2468 = and i8 %2467, 1
  store i8 %2468, i8* %42, align 1
  %2469 = icmp eq i32 %2457, 0
  %2470 = zext i1 %2469 to i8
  store i8 %2470, i8* %45, align 1
  %2471 = lshr i32 %2457, 31
  %2472 = trunc i32 %2471 to i8
  store i8 %2472, i8* %48, align 1
  %2473 = lshr i32 %2456, 31
  %2474 = xor i32 %2471, %2473
  %2475 = add nuw nsw i32 %2474, %2473
  %2476 = icmp eq i32 %2475, 2
  %2477 = zext i1 %2476 to i8
  store i8 %2477, i8* %54, align 1
  %2478 = icmp ne i8 %2472, 0
  %2479 = xor i1 %2478, %2476
  %.v231 = select i1 %2479, i64 10, i64 217
  %2480 = add i64 %2451, %.v231
  store i64 %2480, i64* %3, align 8
  br i1 %2479, label %block_48a096, label %block_.L_48a165

block_48a096:                                     ; preds = %block_.L_48a08c
  %2481 = add i64 %2452, -40
  %2482 = add i64 %2480, 7
  store i64 %2482, i64* %3, align 8
  %2483 = inttoptr i64 %2481 to i32*
  store i32 0, i32* %2483, align 4
  %.pre180 = load i64, i64* %3, align 8
  br label %block_.L_48a09d

block_.L_48a09d:                                  ; preds = %block_.L_48a13f, %block_48a096
  %2484 = phi i64 [ %2750, %block_.L_48a13f ], [ %.pre180, %block_48a096 ]
  %2485 = load i64, i64* %RBP.i, align 8
  %2486 = add i64 %2485, -40
  %2487 = add i64 %2484, 4
  store i64 %2487, i64* %3, align 8
  %2488 = inttoptr i64 %2486 to i32*
  %2489 = load i32, i32* %2488, align 4
  %2490 = add i32 %2489, -4
  %2491 = icmp ult i32 %2489, 4
  %2492 = zext i1 %2491 to i8
  store i8 %2492, i8* %29, align 1
  %2493 = and i32 %2490, 255
  %2494 = tail call i32 @llvm.ctpop.i32(i32 %2493)
  %2495 = trunc i32 %2494 to i8
  %2496 = and i8 %2495, 1
  %2497 = xor i8 %2496, 1
  store i8 %2497, i8* %36, align 1
  %2498 = xor i32 %2490, %2489
  %2499 = lshr i32 %2498, 4
  %2500 = trunc i32 %2499 to i8
  %2501 = and i8 %2500, 1
  store i8 %2501, i8* %42, align 1
  %2502 = icmp eq i32 %2490, 0
  %2503 = zext i1 %2502 to i8
  store i8 %2503, i8* %45, align 1
  %2504 = lshr i32 %2490, 31
  %2505 = trunc i32 %2504 to i8
  store i8 %2505, i8* %48, align 1
  %2506 = lshr i32 %2489, 31
  %2507 = xor i32 %2504, %2506
  %2508 = add nuw nsw i32 %2507, %2506
  %2509 = icmp eq i32 %2508, 2
  %2510 = zext i1 %2509 to i8
  store i8 %2510, i8* %54, align 1
  %2511 = icmp ne i8 %2505, 0
  %2512 = xor i1 %2511, %2509
  %.v212 = select i1 %2512, i64 10, i64 181
  %2513 = add i64 %2484, %.v212
  store i64 %2513, i64* %3, align 8
  br i1 %2512, label %block_48a0a7, label %block_.L_48a152

block_48a0a7:                                     ; preds = %block_.L_48a09d
  %2514 = add i64 %2485, -44
  %2515 = add i64 %2513, 7
  store i64 %2515, i64* %3, align 8
  %2516 = inttoptr i64 %2514 to i32*
  store i32 0, i32* %2516, align 4
  %.pre181 = load i64, i64* %3, align 8
  br label %block_.L_48a0ae

block_.L_48a0ae:                                  ; preds = %block_.L_48a12c, %block_48a0a7
  %2517 = phi i64 [ %2720, %block_.L_48a12c ], [ %.pre181, %block_48a0a7 ]
  %2518 = load i64, i64* %RBP.i, align 8
  %2519 = add i64 %2518, -44
  %2520 = add i64 %2517, 4
  store i64 %2520, i64* %3, align 8
  %2521 = inttoptr i64 %2519 to i32*
  %2522 = load i32, i32* %2521, align 4
  %2523 = add i32 %2522, -2
  %2524 = icmp ult i32 %2522, 2
  %2525 = zext i1 %2524 to i8
  store i8 %2525, i8* %29, align 1
  %2526 = and i32 %2523, 255
  %2527 = tail call i32 @llvm.ctpop.i32(i32 %2526)
  %2528 = trunc i32 %2527 to i8
  %2529 = and i8 %2528, 1
  %2530 = xor i8 %2529, 1
  store i8 %2530, i8* %36, align 1
  %2531 = xor i32 %2523, %2522
  %2532 = lshr i32 %2531, 4
  %2533 = trunc i32 %2532 to i8
  %2534 = and i8 %2533, 1
  store i8 %2534, i8* %42, align 1
  %2535 = icmp eq i32 %2523, 0
  %2536 = zext i1 %2535 to i8
  store i8 %2536, i8* %45, align 1
  %2537 = lshr i32 %2523, 31
  %2538 = trunc i32 %2537 to i8
  store i8 %2538, i8* %48, align 1
  %2539 = lshr i32 %2522, 31
  %2540 = xor i32 %2537, %2539
  %2541 = add nuw nsw i32 %2540, %2539
  %2542 = icmp eq i32 %2541, 2
  %2543 = zext i1 %2542 to i8
  store i8 %2543, i8* %54, align 1
  %2544 = icmp ne i8 %2538, 0
  %2545 = xor i1 %2544, %2542
  %.v213 = select i1 %2545, i64 10, i64 145
  %2546 = add i64 %2517, %.v213
  store i64 %2546, i64* %3, align 8
  br i1 %2545, label %block_48a0b8, label %block_.L_48a13f

block_48a0b8:                                     ; preds = %block_.L_48a0ae
  %2547 = add i64 %2518, -48
  %2548 = add i64 %2546, 7
  store i64 %2548, i64* %3, align 8
  %2549 = inttoptr i64 %2547 to i32*
  store i32 0, i32* %2549, align 4
  %.pre182 = load i64, i64* %3, align 8
  br label %block_.L_48a0bf

block_.L_48a0bf:                                  ; preds = %block_48a0c9, %block_48a0b8
  %2550 = phi i64 [ %2690, %block_48a0c9 ], [ %.pre182, %block_48a0b8 ]
  %2551 = load i64, i64* %RBP.i, align 8
  %2552 = add i64 %2551, -48
  %2553 = add i64 %2550, 4
  store i64 %2553, i64* %3, align 8
  %2554 = inttoptr i64 %2552 to i32*
  %2555 = load i32, i32* %2554, align 4
  %2556 = add i32 %2555, -65
  %2557 = icmp ult i32 %2555, 65
  %2558 = zext i1 %2557 to i8
  store i8 %2558, i8* %29, align 1
  %2559 = and i32 %2556, 255
  %2560 = tail call i32 @llvm.ctpop.i32(i32 %2559)
  %2561 = trunc i32 %2560 to i8
  %2562 = and i8 %2561, 1
  %2563 = xor i8 %2562, 1
  store i8 %2563, i8* %36, align 1
  %2564 = xor i32 %2556, %2555
  %2565 = lshr i32 %2564, 4
  %2566 = trunc i32 %2565 to i8
  %2567 = and i8 %2566, 1
  store i8 %2567, i8* %42, align 1
  %2568 = icmp eq i32 %2556, 0
  %2569 = zext i1 %2568 to i8
  store i8 %2569, i8* %45, align 1
  %2570 = lshr i32 %2556, 31
  %2571 = trunc i32 %2570 to i8
  store i8 %2571, i8* %48, align 1
  %2572 = lshr i32 %2555, 31
  %2573 = xor i32 %2570, %2572
  %2574 = add nuw nsw i32 %2573, %2572
  %2575 = icmp eq i32 %2574, 2
  %2576 = zext i1 %2575 to i8
  store i8 %2576, i8* %54, align 1
  %2577 = icmp ne i8 %2571, 0
  %2578 = xor i1 %2577, %2575
  %.v214 = select i1 %2578, i64 10, i64 109
  %2579 = add i64 %2550, %.v214
  store i64 %2579, i64* %3, align 8
  br i1 %2578, label %block_48a0c9, label %block_.L_48a12c

block_48a0c9:                                     ; preds = %block_.L_48a0bf
  %2580 = load i64, i64* bitcast (%G_0x6cc650_type* @G_0x6cc650 to i64*), align 8
  store i64 %2580, i64* %RAX.i1963.phi.trans.insert, align 8
  %2581 = add i64 %2551, -36
  %2582 = add i64 %2579, 12
  store i64 %2582, i64* %3, align 8
  %2583 = inttoptr i64 %2581 to i32*
  %2584 = load i32, i32* %2583, align 4
  %2585 = sext i32 %2584 to i64
  store i64 %2585, i64* %RCX.i2011, align 8
  %2586 = shl nsw i64 %2585, 3
  %2587 = add i64 %2586, %2580
  %2588 = add i64 %2579, 16
  store i64 %2588, i64* %3, align 8
  %2589 = inttoptr i64 %2587 to i64*
  %2590 = load i64, i64* %2589, align 8
  store i64 %2590, i64* %RAX.i1963.phi.trans.insert, align 8
  %2591 = add i64 %2551, -40
  %2592 = add i64 %2579, 20
  store i64 %2592, i64* %3, align 8
  %2593 = inttoptr i64 %2591 to i32*
  %2594 = load i32, i32* %2593, align 4
  %2595 = sext i32 %2594 to i64
  store i64 %2595, i64* %RCX.i2011, align 8
  %2596 = shl nsw i64 %2595, 3
  %2597 = add i64 %2596, %2590
  %2598 = add i64 %2579, 24
  store i64 %2598, i64* %3, align 8
  %2599 = inttoptr i64 %2597 to i64*
  %2600 = load i64, i64* %2599, align 8
  store i64 %2600, i64* %RAX.i1963.phi.trans.insert, align 8
  %2601 = add i64 %2551, -44
  %2602 = add i64 %2579, 28
  store i64 %2602, i64* %3, align 8
  %2603 = inttoptr i64 %2601 to i32*
  %2604 = load i32, i32* %2603, align 4
  %2605 = sext i32 %2604 to i64
  store i64 %2605, i64* %RCX.i2011, align 8
  %2606 = shl nsw i64 %2605, 3
  %2607 = add i64 %2606, %2600
  %2608 = add i64 %2579, 32
  store i64 %2608, i64* %3, align 8
  %2609 = inttoptr i64 %2607 to i64*
  %2610 = load i64, i64* %2609, align 8
  store i64 %2610, i64* %RAX.i1963.phi.trans.insert, align 8
  %2611 = add i64 %2579, 36
  store i64 %2611, i64* %3, align 8
  %2612 = load i32, i32* %2554, align 4
  %2613 = sext i32 %2612 to i64
  store i64 %2613, i64* %RCX.i2011, align 8
  %2614 = shl nsw i64 %2613, 2
  %2615 = add i64 %2614, %2610
  %2616 = add i64 %2579, 39
  store i64 %2616, i64* %3, align 8
  %2617 = inttoptr i64 %2615 to i32*
  %2618 = load i32, i32* %2617, align 4
  %2619 = zext i32 %2618 to i64
  store i64 %2619, i64* %344, align 8
  %2620 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*), align 8
  store i64 %2620, i64* %RAX.i1963.phi.trans.insert, align 8
  %2621 = add i64 %2620, 14136
  %2622 = add i64 %2579, 54
  store i64 %2622, i64* %3, align 8
  %2623 = inttoptr i64 %2621 to i64*
  %2624 = load i64, i64* %2623, align 8
  store i64 %2624, i64* %RAX.i1963.phi.trans.insert, align 8
  %2625 = add i64 %2579, 58
  store i64 %2625, i64* %3, align 8
  %2626 = load i32, i32* %2583, align 4
  %2627 = sext i32 %2626 to i64
  store i64 %2627, i64* %RCX.i2011, align 8
  %2628 = shl nsw i64 %2627, 3
  %2629 = add i64 %2628, %2624
  %2630 = add i64 %2579, 62
  store i64 %2630, i64* %3, align 8
  %2631 = inttoptr i64 %2629 to i64*
  %2632 = load i64, i64* %2631, align 8
  store i64 %2632, i64* %RAX.i1963.phi.trans.insert, align 8
  %2633 = add i64 %2579, 66
  store i64 %2633, i64* %3, align 8
  %2634 = load i32, i32* %2593, align 4
  %2635 = sext i32 %2634 to i64
  store i64 %2635, i64* %RCX.i2011, align 8
  %2636 = shl nsw i64 %2635, 3
  %2637 = add i64 %2636, %2632
  %2638 = add i64 %2579, 70
  store i64 %2638, i64* %3, align 8
  %2639 = inttoptr i64 %2637 to i64*
  %2640 = load i64, i64* %2639, align 8
  store i64 %2640, i64* %RAX.i1963.phi.trans.insert, align 8
  %2641 = add i64 %2579, 74
  store i64 %2641, i64* %3, align 8
  %2642 = load i32, i32* %2603, align 4
  %2643 = sext i32 %2642 to i64
  store i64 %2643, i64* %RCX.i2011, align 8
  %2644 = shl nsw i64 %2643, 3
  %2645 = add i64 %2644, %2640
  %2646 = add i64 %2579, 78
  store i64 %2646, i64* %3, align 8
  %2647 = inttoptr i64 %2645 to i64*
  %2648 = load i64, i64* %2647, align 8
  store i64 %2648, i64* %RAX.i1963.phi.trans.insert, align 8
  %2649 = load i64, i64* %RBP.i, align 8
  %2650 = add i64 %2649, -48
  %2651 = add i64 %2579, 82
  store i64 %2651, i64* %3, align 8
  %2652 = inttoptr i64 %2650 to i32*
  %2653 = load i32, i32* %2652, align 4
  %2654 = sext i32 %2653 to i64
  store i64 %2654, i64* %RCX.i2011, align 8
  %2655 = shl nsw i64 %2654, 2
  %2656 = add i64 %2655, %2648
  %2657 = add i64 %2579, 85
  store i64 %2657, i64* %3, align 8
  %2658 = inttoptr i64 %2656 to i32*
  store i32 %2618, i32* %2658, align 4
  %2659 = load i64, i64* %RBP.i, align 8
  %2660 = add i64 %2659, -48
  %2661 = load i64, i64* %3, align 8
  %2662 = add i64 %2661, 3
  store i64 %2662, i64* %3, align 8
  %2663 = inttoptr i64 %2660 to i32*
  %2664 = load i32, i32* %2663, align 4
  %2665 = add i32 %2664, 1
  %2666 = zext i32 %2665 to i64
  store i64 %2666, i64* %RAX.i1963.phi.trans.insert, align 8
  %2667 = icmp eq i32 %2664, -1
  %2668 = icmp eq i32 %2665, 0
  %2669 = or i1 %2667, %2668
  %2670 = zext i1 %2669 to i8
  store i8 %2670, i8* %29, align 1
  %2671 = and i32 %2665, 255
  %2672 = tail call i32 @llvm.ctpop.i32(i32 %2671)
  %2673 = trunc i32 %2672 to i8
  %2674 = and i8 %2673, 1
  %2675 = xor i8 %2674, 1
  store i8 %2675, i8* %36, align 1
  %2676 = xor i32 %2665, %2664
  %2677 = lshr i32 %2676, 4
  %2678 = trunc i32 %2677 to i8
  %2679 = and i8 %2678, 1
  store i8 %2679, i8* %42, align 1
  %2680 = zext i1 %2668 to i8
  store i8 %2680, i8* %45, align 1
  %2681 = lshr i32 %2665, 31
  %2682 = trunc i32 %2681 to i8
  store i8 %2682, i8* %48, align 1
  %2683 = lshr i32 %2664, 31
  %2684 = xor i32 %2681, %2683
  %2685 = add nuw nsw i32 %2684, %2681
  %2686 = icmp eq i32 %2685, 2
  %2687 = zext i1 %2686 to i8
  store i8 %2687, i8* %54, align 1
  %2688 = add i64 %2661, 9
  store i64 %2688, i64* %3, align 8
  store i32 %2665, i32* %2663, align 4
  %2689 = load i64, i64* %3, align 8
  %2690 = add i64 %2689, -104
  store i64 %2690, i64* %3, align 8
  br label %block_.L_48a0bf

block_.L_48a12c:                                  ; preds = %block_.L_48a0bf
  %2691 = add i64 %2551, -44
  %2692 = add i64 %2579, 8
  store i64 %2692, i64* %3, align 8
  %2693 = inttoptr i64 %2691 to i32*
  %2694 = load i32, i32* %2693, align 4
  %2695 = add i32 %2694, 1
  %2696 = zext i32 %2695 to i64
  store i64 %2696, i64* %RAX.i1963.phi.trans.insert, align 8
  %2697 = icmp eq i32 %2694, -1
  %2698 = icmp eq i32 %2695, 0
  %2699 = or i1 %2697, %2698
  %2700 = zext i1 %2699 to i8
  store i8 %2700, i8* %29, align 1
  %2701 = and i32 %2695, 255
  %2702 = tail call i32 @llvm.ctpop.i32(i32 %2701)
  %2703 = trunc i32 %2702 to i8
  %2704 = and i8 %2703, 1
  %2705 = xor i8 %2704, 1
  store i8 %2705, i8* %36, align 1
  %2706 = xor i32 %2695, %2694
  %2707 = lshr i32 %2706, 4
  %2708 = trunc i32 %2707 to i8
  %2709 = and i8 %2708, 1
  store i8 %2709, i8* %42, align 1
  %2710 = zext i1 %2698 to i8
  store i8 %2710, i8* %45, align 1
  %2711 = lshr i32 %2695, 31
  %2712 = trunc i32 %2711 to i8
  store i8 %2712, i8* %48, align 1
  %2713 = lshr i32 %2694, 31
  %2714 = xor i32 %2711, %2713
  %2715 = add nuw nsw i32 %2714, %2711
  %2716 = icmp eq i32 %2715, 2
  %2717 = zext i1 %2716 to i8
  store i8 %2717, i8* %54, align 1
  %2718 = add i64 %2579, 14
  store i64 %2718, i64* %3, align 8
  store i32 %2695, i32* %2693, align 4
  %2719 = load i64, i64* %3, align 8
  %2720 = add i64 %2719, -140
  store i64 %2720, i64* %3, align 8
  br label %block_.L_48a0ae

block_.L_48a13f:                                  ; preds = %block_.L_48a0ae
  %2721 = add i64 %2518, -40
  %2722 = add i64 %2546, 8
  store i64 %2722, i64* %3, align 8
  %2723 = inttoptr i64 %2721 to i32*
  %2724 = load i32, i32* %2723, align 4
  %2725 = add i32 %2724, 1
  %2726 = zext i32 %2725 to i64
  store i64 %2726, i64* %RAX.i1963.phi.trans.insert, align 8
  %2727 = icmp eq i32 %2724, -1
  %2728 = icmp eq i32 %2725, 0
  %2729 = or i1 %2727, %2728
  %2730 = zext i1 %2729 to i8
  store i8 %2730, i8* %29, align 1
  %2731 = and i32 %2725, 255
  %2732 = tail call i32 @llvm.ctpop.i32(i32 %2731)
  %2733 = trunc i32 %2732 to i8
  %2734 = and i8 %2733, 1
  %2735 = xor i8 %2734, 1
  store i8 %2735, i8* %36, align 1
  %2736 = xor i32 %2725, %2724
  %2737 = lshr i32 %2736, 4
  %2738 = trunc i32 %2737 to i8
  %2739 = and i8 %2738, 1
  store i8 %2739, i8* %42, align 1
  %2740 = zext i1 %2728 to i8
  store i8 %2740, i8* %45, align 1
  %2741 = lshr i32 %2725, 31
  %2742 = trunc i32 %2741 to i8
  store i8 %2742, i8* %48, align 1
  %2743 = lshr i32 %2724, 31
  %2744 = xor i32 %2741, %2743
  %2745 = add nuw nsw i32 %2744, %2741
  %2746 = icmp eq i32 %2745, 2
  %2747 = zext i1 %2746 to i8
  store i8 %2747, i8* %54, align 1
  %2748 = add i64 %2546, 14
  store i64 %2748, i64* %3, align 8
  store i32 %2725, i32* %2723, align 4
  %2749 = load i64, i64* %3, align 8
  %2750 = add i64 %2749, -176
  store i64 %2750, i64* %3, align 8
  br label %block_.L_48a09d

block_.L_48a152:                                  ; preds = %block_.L_48a09d
  %2751 = add i64 %2485, -36
  %2752 = add i64 %2513, 8
  store i64 %2752, i64* %3, align 8
  %2753 = inttoptr i64 %2751 to i32*
  %2754 = load i32, i32* %2753, align 4
  %2755 = add i32 %2754, 1
  %2756 = zext i32 %2755 to i64
  store i64 %2756, i64* %RAX.i1963.phi.trans.insert, align 8
  %2757 = icmp eq i32 %2754, -1
  %2758 = icmp eq i32 %2755, 0
  %2759 = or i1 %2757, %2758
  %2760 = zext i1 %2759 to i8
  store i8 %2760, i8* %29, align 1
  %2761 = and i32 %2755, 255
  %2762 = tail call i32 @llvm.ctpop.i32(i32 %2761)
  %2763 = trunc i32 %2762 to i8
  %2764 = and i8 %2763, 1
  %2765 = xor i8 %2764, 1
  store i8 %2765, i8* %36, align 1
  %2766 = xor i32 %2755, %2754
  %2767 = lshr i32 %2766, 4
  %2768 = trunc i32 %2767 to i8
  %2769 = and i8 %2768, 1
  store i8 %2769, i8* %42, align 1
  %2770 = zext i1 %2758 to i8
  store i8 %2770, i8* %45, align 1
  %2771 = lshr i32 %2755, 31
  %2772 = trunc i32 %2771 to i8
  store i8 %2772, i8* %48, align 1
  %2773 = lshr i32 %2754, 31
  %2774 = xor i32 %2771, %2773
  %2775 = add nuw nsw i32 %2774, %2771
  %2776 = icmp eq i32 %2775, 2
  %2777 = zext i1 %2776 to i8
  store i8 %2777, i8* %54, align 1
  %2778 = add i64 %2513, 14
  store i64 %2778, i64* %3, align 8
  store i32 %2755, i32* %2753, align 4
  %2779 = load i64, i64* %3, align 8
  %2780 = add i64 %2779, -212
  store i64 %2780, i64* %3, align 8
  br label %block_.L_48a08c

block_.L_48a165:                                  ; preds = %block_.L_48a08c
  %2781 = load i32, i32* bitcast (%G_0x6ce9f8_type* @G_0x6ce9f8 to i32*), align 8
  %2782 = add i32 %2781, -5
  %2783 = icmp ult i32 %2781, 5
  %2784 = zext i1 %2783 to i8
  store i8 %2784, i8* %29, align 1
  %2785 = and i32 %2782, 255
  %2786 = tail call i32 @llvm.ctpop.i32(i32 %2785)
  %2787 = trunc i32 %2786 to i8
  %2788 = and i8 %2787, 1
  %2789 = xor i8 %2788, 1
  store i8 %2789, i8* %36, align 1
  %2790 = xor i32 %2782, %2781
  %2791 = lshr i32 %2790, 4
  %2792 = trunc i32 %2791 to i8
  %2793 = and i8 %2792, 1
  store i8 %2793, i8* %42, align 1
  %2794 = icmp eq i32 %2782, 0
  %2795 = zext i1 %2794 to i8
  store i8 %2795, i8* %45, align 1
  %2796 = lshr i32 %2782, 31
  %2797 = trunc i32 %2796 to i8
  store i8 %2797, i8* %48, align 1
  %2798 = lshr i32 %2781, 31
  %2799 = xor i32 %2796, %2798
  %2800 = add nuw nsw i32 %2799, %2798
  %2801 = icmp eq i32 %2800, 2
  %2802 = zext i1 %2801 to i8
  store i8 %2802, i8* %54, align 1
  %2803 = icmp ne i8 %2797, 0
  %2804 = xor i1 %2803, %2801
  %.demorgan = or i1 %2794, %2804
  %.v232 = select i1 %.demorgan, i64 14, i64 325
  %2805 = add i64 %2480, %.v232
  store i64 %2805, i64* %3, align 8
  br i1 %.demorgan, label %block_48a173, label %block_.L_48a2aa

block_48a173:                                     ; preds = %block_.L_48a165
  %2806 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*), align 8
  store i64 %2806, i64* %RAX.i1963.phi.trans.insert, align 8
  %2807 = add i64 %2806, 40
  %2808 = add i64 %2805, 11
  store i64 %2808, i64* %3, align 8
  %2809 = inttoptr i64 %2807 to i32*
  %2810 = load i32, i32* %2809, align 4
  %2811 = zext i32 %2810 to i64
  store i64 %2811, i64* %RCX.i2011, align 8
  store i64 %2806, i64* %RAX.i1963.phi.trans.insert, align 8
  %2812 = add i64 %2806, 72668
  %2813 = add i64 %2805, 25
  store i64 %2813, i64* %3, align 8
  %2814 = inttoptr i64 %2812 to i32*
  %2815 = load i32, i32* %2814, align 4
  %2816 = add i32 %2815, %2810
  %2817 = zext i32 %2816 to i64
  store i64 %2817, i64* %RCX.i2011, align 8
  %2818 = and i32 %2816, 255
  %2819 = tail call i32 @llvm.ctpop.i32(i32 %2818)
  %2820 = trunc i32 %2819 to i8
  %2821 = and i8 %2820, 1
  %2822 = xor i8 %2821, 1
  %2823 = icmp eq i32 %2816, 0
  %2824 = zext i1 %2823 to i8
  %2825 = lshr i32 %2816, 31
  %2826 = trunc i32 %2825 to i8
  store i8 0, i8* %29, align 1
  store i8 %2822, i8* %36, align 1
  store i8 0, i8* %42, align 1
  store i8 %2824, i8* %45, align 1
  store i8 %2826, i8* %48, align 1
  store i8 0, i8* %54, align 1
  %.v236 = select i1 %2823, i64 34, i64 55
  %2827 = add i64 %2805, %.v236
  store i64 %2827, i64* %3, align 8
  br i1 %2823, label %block_48a195, label %block_.L_48a1aa

block_48a195:                                     ; preds = %block_48a173
  store i64 %2806, i64* %RAX.i1963.phi.trans.insert, align 8
  %2828 = add i64 %2806, 72704
  %2829 = add i64 %2827, 15
  store i64 %2829, i64* %3, align 8
  %2830 = inttoptr i64 %2828 to i32*
  %2831 = load i32, i32* %2830, align 4
  store i8 0, i8* %29, align 1
  %2832 = and i32 %2831, 255
  %2833 = tail call i32 @llvm.ctpop.i32(i32 %2832)
  %2834 = trunc i32 %2833 to i8
  %2835 = and i8 %2834, 1
  %2836 = xor i8 %2835, 1
  store i8 %2836, i8* %36, align 1
  store i8 0, i8* %42, align 1
  %2837 = icmp eq i32 %2831, 0
  %2838 = zext i1 %2837 to i8
  store i8 %2838, i8* %45, align 1
  %2839 = lshr i32 %2831, 31
  %2840 = trunc i32 %2839 to i8
  store i8 %2840, i8* %48, align 1
  store i8 0, i8* %54, align 1
  %.v239 = select i1 %2837, i64 21, i64 277
  %2841 = add i64 %2827, %.v239
  store i64 %2841, i64* %3, align 8
  br i1 %2837, label %block_.L_48a1aa, label %block_.L_48a2aa

block_.L_48a1aa:                                  ; preds = %block_48a195, %block_48a173
  %2842 = phi i64 [ %2841, %block_48a195 ], [ %2827, %block_48a173 ]
  %2843 = add i64 %2452, -32
  %2844 = add i64 %2842, 4
  store i64 %2844, i64* %3, align 8
  %2845 = inttoptr i64 %2843 to i64*
  %2846 = load i64, i64* %2845, align 8
  store i64 %2846, i64* %RAX.i1963.phi.trans.insert, align 8
  %2847 = add i64 %2846, 460
  %2848 = add i64 %2842, 14
  store i64 %2848, i64* %3, align 8
  %2849 = inttoptr i64 %2847 to i32*
  store i32 0, i32* %2849, align 4
  %2850 = load i64, i64* %RBP.i, align 8
  %2851 = add i64 %2850, -32
  %2852 = load i64, i64* %3, align 8
  %2853 = add i64 %2852, 4
  store i64 %2853, i64* %3, align 8
  %2854 = inttoptr i64 %2851 to i64*
  %2855 = load i64, i64* %2854, align 8
  store i64 %2855, i64* %RAX.i1963.phi.trans.insert, align 8
  %2856 = add i64 %2855, 464
  %2857 = add i64 %2852, 15
  store i64 %2857, i64* %3, align 8
  %2858 = inttoptr i64 %2856 to i64*
  store i64 0, i64* %2858, align 8
  %2859 = load i64, i64* %RBP.i, align 8
  %2860 = add i64 %2859, -44
  %2861 = load i64, i64* %3, align 8
  %2862 = add i64 %2861, 7
  store i64 %2862, i64* %3, align 8
  %2863 = inttoptr i64 %2860 to i32*
  store i32 0, i32* %2863, align 4
  %DX.i1027 = bitcast %union.anon* %342 to i16*
  %.pre172 = load i64, i64* %3, align 8
  br label %block_.L_48a1ce

block_.L_48a1ce:                                  ; preds = %block_.L_48a292, %block_.L_48a1aa
  %2864 = phi i64 [ %3176, %block_.L_48a292 ], [ %.pre172, %block_.L_48a1aa ]
  %2865 = load i64, i64* %RBP.i, align 8
  %2866 = add i64 %2865, -44
  %2867 = add i64 %2864, 4
  store i64 %2867, i64* %3, align 8
  %2868 = inttoptr i64 %2866 to i32*
  %2869 = load i32, i32* %2868, align 4
  %2870 = add i32 %2869, -16
  %2871 = icmp ult i32 %2869, 16
  %2872 = zext i1 %2871 to i8
  store i8 %2872, i8* %29, align 1
  %2873 = and i32 %2870, 255
  %2874 = tail call i32 @llvm.ctpop.i32(i32 %2873)
  %2875 = trunc i32 %2874 to i8
  %2876 = and i8 %2875, 1
  %2877 = xor i8 %2876, 1
  store i8 %2877, i8* %36, align 1
  %2878 = xor i32 %2869, 16
  %2879 = xor i32 %2878, %2870
  %2880 = lshr i32 %2879, 4
  %2881 = trunc i32 %2880 to i8
  %2882 = and i8 %2881, 1
  store i8 %2882, i8* %42, align 1
  %2883 = icmp eq i32 %2870, 0
  %2884 = zext i1 %2883 to i8
  store i8 %2884, i8* %45, align 1
  %2885 = lshr i32 %2870, 31
  %2886 = trunc i32 %2885 to i8
  store i8 %2886, i8* %48, align 1
  %2887 = lshr i32 %2869, 31
  %2888 = xor i32 %2885, %2887
  %2889 = add nuw nsw i32 %2888, %2887
  %2890 = icmp eq i32 %2889, 2
  %2891 = zext i1 %2890 to i8
  store i8 %2891, i8* %54, align 1
  %2892 = icmp ne i8 %2886, 0
  %2893 = xor i1 %2892, %2890
  %.v237 = select i1 %2893, i64 10, i64 215
  %2894 = add i64 %2864, %.v237
  store i64 %2894, i64* %3, align 8
  br i1 %2893, label %block_48a1d8, label %block_.L_48a2a5

block_48a1d8:                                     ; preds = %block_.L_48a1ce
  %2895 = add i64 %2865, -48
  %2896 = add i64 %2894, 7
  store i64 %2896, i64* %3, align 8
  %2897 = inttoptr i64 %2895 to i32*
  store i32 0, i32* %2897, align 4
  %.pre173 = load i64, i64* %3, align 8
  br label %block_.L_48a1df

block_.L_48a1df:                                  ; preds = %block_.L_48a27f, %block_48a1d8
  %2898 = phi i64 [ %3146, %block_.L_48a27f ], [ %.pre173, %block_48a1d8 ]
  %2899 = load i64, i64* %RBP.i, align 8
  %2900 = add i64 %2899, -48
  %2901 = add i64 %2898, 4
  store i64 %2901, i64* %3, align 8
  %2902 = inttoptr i64 %2900 to i32*
  %2903 = load i32, i32* %2902, align 4
  %2904 = add i32 %2903, -16
  %2905 = icmp ult i32 %2903, 16
  %2906 = zext i1 %2905 to i8
  store i8 %2906, i8* %29, align 1
  %2907 = and i32 %2904, 255
  %2908 = tail call i32 @llvm.ctpop.i32(i32 %2907)
  %2909 = trunc i32 %2908 to i8
  %2910 = and i8 %2909, 1
  %2911 = xor i8 %2910, 1
  store i8 %2911, i8* %36, align 1
  %2912 = xor i32 %2903, 16
  %2913 = xor i32 %2912, %2904
  %2914 = lshr i32 %2913, 4
  %2915 = trunc i32 %2914 to i8
  %2916 = and i8 %2915, 1
  store i8 %2916, i8* %42, align 1
  %2917 = icmp eq i32 %2904, 0
  %2918 = zext i1 %2917 to i8
  store i8 %2918, i8* %45, align 1
  %2919 = lshr i32 %2904, 31
  %2920 = trunc i32 %2919 to i8
  store i8 %2920, i8* %48, align 1
  %2921 = lshr i32 %2903, 31
  %2922 = xor i32 %2919, %2921
  %2923 = add nuw nsw i32 %2922, %2921
  %2924 = icmp eq i32 %2923, 2
  %2925 = zext i1 %2924 to i8
  store i8 %2925, i8* %54, align 1
  %2926 = icmp ne i8 %2920, 0
  %2927 = xor i1 %2926, %2924
  %.v210 = select i1 %2927, i64 10, i64 179
  %2928 = add i64 %2898, %.v210
  store i64 %2928, i64* %3, align 8
  br i1 %2927, label %block_48a1e9, label %block_.L_48a292

block_48a1e9:                                     ; preds = %block_.L_48a1df
  %2929 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*), align 8
  store i64 %2929, i64* %RAX.i1963.phi.trans.insert, align 8
  %2930 = add i64 %2929, 72724
  %2931 = add i64 %2928, 15
  store i64 %2931, i64* %3, align 8
  %2932 = inttoptr i64 %2930 to i32*
  %2933 = load i32, i32* %2932, align 4
  store i8 0, i8* %29, align 1
  %2934 = and i32 %2933, 255
  %2935 = tail call i32 @llvm.ctpop.i32(i32 %2934)
  %2936 = trunc i32 %2935 to i8
  %2937 = and i8 %2936, 1
  %2938 = xor i8 %2937, 1
  store i8 %2938, i8* %36, align 1
  store i8 0, i8* %42, align 1
  %2939 = icmp eq i32 %2933, 0
  %2940 = zext i1 %2939 to i8
  store i8 %2940, i8* %45, align 1
  %2941 = lshr i32 %2933, 31
  %2942 = trunc i32 %2941 to i8
  store i8 %2942, i8* %48, align 1
  store i8 0, i8* %54, align 1
  %.v238 = select i1 %2939, i64 21, i64 118
  %2943 = add i64 %2928, %.v238
  %2944 = add i64 %2943, 10
  store i64 %2944, i64* %3, align 8
  br i1 %2939, label %block_48a1fe, label %block_.L_48a25f

block_48a1fe:                                     ; preds = %block_48a1e9
  store i64 ptrtoint (%G__0x721aa0_type* @G__0x721aa0 to i64), i64* %RAX.i1963.phi.trans.insert, align 8
  %2945 = add i64 %2899, -44
  %2946 = add i64 %2943, 14
  store i64 %2946, i64* %3, align 8
  %2947 = inttoptr i64 %2945 to i32*
  %2948 = load i32, i32* %2947, align 4
  %2949 = sext i32 %2948 to i64
  %2950 = shl nsw i64 %2949, 5
  store i64 %2950, i64* %RCX.i2011, align 8
  %2951 = add i64 %2950, ptrtoint (%G__0x721aa0_type* @G__0x721aa0 to i64)
  store i64 %2951, i64* %RAX.i1963.phi.trans.insert, align 8
  %2952 = icmp ult i64 %2951, ptrtoint (%G__0x721aa0_type* @G__0x721aa0 to i64)
  %2953 = icmp ult i64 %2951, %2950
  %2954 = or i1 %2952, %2953
  %2955 = zext i1 %2954 to i8
  store i8 %2955, i8* %29, align 1
  %2956 = trunc i64 %2951 to i32
  %2957 = and i32 %2956, 248
  %2958 = tail call i32 @llvm.ctpop.i32(i32 %2957)
  %2959 = trunc i32 %2958 to i8
  %2960 = and i8 %2959, 1
  %2961 = xor i8 %2960, 1
  store i8 %2961, i8* %36, align 1
  %2962 = xor i64 %2951, ptrtoint (%G__0x721aa0_type* @G__0x721aa0 to i64)
  %2963 = lshr i64 %2962, 4
  %2964 = trunc i64 %2963 to i8
  %2965 = and i8 %2964, 1
  store i8 %2965, i8* %42, align 1
  %2966 = icmp eq i64 %2951, 0
  %2967 = zext i1 %2966 to i8
  store i8 %2967, i8* %45, align 1
  %2968 = lshr i64 %2951, 63
  %2969 = trunc i64 %2968 to i8
  store i8 %2969, i8* %48, align 1
  %2970 = lshr i64 %2949, 58
  %2971 = and i64 %2970, 1
  %2972 = xor i64 %2968, lshr (i64 ptrtoint (%G__0x721aa0_type* @G__0x721aa0 to i64), i64 63)
  %2973 = xor i64 %2968, %2971
  %2974 = add nuw nsw i64 %2972, %2973
  %2975 = icmp eq i64 %2974, 2
  %2976 = zext i1 %2975 to i8
  store i8 %2976, i8* %54, align 1
  %2977 = add i64 %2943, 25
  store i64 %2977, i64* %3, align 8
  %2978 = load i32, i32* %2902, align 4
  %2979 = sext i32 %2978 to i64
  store i64 %2979, i64* %RCX.i2011, align 8
  %2980 = shl nsw i64 %2979, 1
  %2981 = add i64 %2980, %2951
  %2982 = add i64 %2943, 29
  store i64 %2982, i64* %3, align 8
  %2983 = inttoptr i64 %2981 to i16*
  %2984 = load i16, i16* %2983, align 2
  store i16 %2984, i16* %DX.i1027, align 2
  %2985 = load i64, i64* bitcast (%G_0x70fcf0_type* @G_0x70fcf0 to i64*), align 8
  store i64 %2985, i64* %RAX.i1963.phi.trans.insert, align 8
  %2986 = add i64 %2985, 6424
  %2987 = add i64 %2943, 44
  store i64 %2987, i64* %3, align 8
  %2988 = inttoptr i64 %2986 to i64*
  %2989 = load i64, i64* %2988, align 8
  store i64 %2989, i64* %RAX.i1963.phi.trans.insert, align 8
  store i64 %2929, i64* %RCX.i2011, align 8
  %2990 = add i64 %2929, 156
  %2991 = add i64 %2943, 58
  store i64 %2991, i64* %3, align 8
  %2992 = inttoptr i64 %2990 to i32*
  %2993 = load i32, i32* %2992, align 4
  %2994 = zext i32 %2993 to i64
  store i64 %2994, i64* %RSI.i1668, align 8
  %2995 = add i64 %2943, 61
  store i64 %2995, i64* %3, align 8
  %2996 = load i32, i32* %2947, align 4
  %2997 = add i32 %2996, %2993
  %2998 = zext i32 %2997 to i64
  store i64 %2998, i64* %RSI.i1668, align 8
  %2999 = icmp ult i32 %2997, %2993
  %3000 = icmp ult i32 %2997, %2996
  %3001 = or i1 %2999, %3000
  %3002 = zext i1 %3001 to i8
  store i8 %3002, i8* %29, align 1
  %3003 = and i32 %2997, 255
  %3004 = tail call i32 @llvm.ctpop.i32(i32 %3003)
  %3005 = trunc i32 %3004 to i8
  %3006 = and i8 %3005, 1
  %3007 = xor i8 %3006, 1
  store i8 %3007, i8* %36, align 1
  %3008 = xor i32 %2996, %2993
  %3009 = xor i32 %3008, %2997
  %3010 = lshr i32 %3009, 4
  %3011 = trunc i32 %3010 to i8
  %3012 = and i8 %3011, 1
  store i8 %3012, i8* %42, align 1
  %3013 = icmp eq i32 %2997, 0
  %3014 = zext i1 %3013 to i8
  store i8 %3014, i8* %45, align 1
  %3015 = lshr i32 %2997, 31
  %3016 = trunc i32 %3015 to i8
  store i8 %3016, i8* %48, align 1
  %3017 = lshr i32 %2993, 31
  %3018 = lshr i32 %2996, 31
  %3019 = xor i32 %3015, %3017
  %3020 = xor i32 %3015, %3018
  %3021 = add nuw nsw i32 %3019, %3020
  %3022 = icmp eq i32 %3021, 2
  %3023 = zext i1 %3022 to i8
  store i8 %3023, i8* %54, align 1
  %3024 = sext i32 %2997 to i64
  store i64 %3024, i64* %RCX.i2011, align 8
  %3025 = shl nsw i64 %3024, 3
  %3026 = add i64 %2989, %3025
  %3027 = add i64 %2943, 68
  store i64 %3027, i64* %3, align 8
  %3028 = inttoptr i64 %3026 to i64*
  %3029 = load i64, i64* %3028, align 8
  store i64 %3029, i64* %RAX.i1963.phi.trans.insert, align 8
  %3030 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*), align 8
  store i64 %3030, i64* %RCX.i2011, align 8
  %3031 = add i64 %3030, 152
  %3032 = add i64 %2943, 82
  store i64 %3032, i64* %3, align 8
  %3033 = inttoptr i64 %3031 to i32*
  %3034 = load i32, i32* %3033, align 4
  %3035 = zext i32 %3034 to i64
  store i64 %3035, i64* %RSI.i1668, align 8
  %3036 = load i64, i64* %RBP.i, align 8
  %3037 = add i64 %3036, -48
  %3038 = add i64 %2943, 85
  store i64 %3038, i64* %3, align 8
  %3039 = inttoptr i64 %3037 to i32*
  %3040 = load i32, i32* %3039, align 4
  %3041 = add i32 %3040, %3034
  %3042 = zext i32 %3041 to i64
  store i64 %3042, i64* %RSI.i1668, align 8
  %3043 = icmp ult i32 %3041, %3034
  %3044 = icmp ult i32 %3041, %3040
  %3045 = or i1 %3043, %3044
  %3046 = zext i1 %3045 to i8
  store i8 %3046, i8* %29, align 1
  %3047 = and i32 %3041, 255
  %3048 = tail call i32 @llvm.ctpop.i32(i32 %3047)
  %3049 = trunc i32 %3048 to i8
  %3050 = and i8 %3049, 1
  %3051 = xor i8 %3050, 1
  store i8 %3051, i8* %36, align 1
  %3052 = xor i32 %3040, %3034
  %3053 = xor i32 %3052, %3041
  %3054 = lshr i32 %3053, 4
  %3055 = trunc i32 %3054 to i8
  %3056 = and i8 %3055, 1
  store i8 %3056, i8* %42, align 1
  %3057 = icmp eq i32 %3041, 0
  %3058 = zext i1 %3057 to i8
  store i8 %3058, i8* %45, align 1
  %3059 = lshr i32 %3041, 31
  %3060 = trunc i32 %3059 to i8
  store i8 %3060, i8* %48, align 1
  %3061 = lshr i32 %3034, 31
  %3062 = lshr i32 %3040, 31
  %3063 = xor i32 %3059, %3061
  %3064 = xor i32 %3059, %3062
  %3065 = add nuw nsw i32 %3063, %3064
  %3066 = icmp eq i32 %3065, 2
  %3067 = zext i1 %3066 to i8
  store i8 %3067, i8* %54, align 1
  %3068 = sext i32 %3041 to i64
  store i64 %3068, i64* %RCX.i2011, align 8
  %3069 = shl nsw i64 %3068, 1
  %3070 = add i64 %3029, %3069
  %3071 = load i16, i16* %DX.i1027, align 2
  %3072 = add i64 %2943, 92
  store i64 %3072, i64* %3, align 8
  %3073 = inttoptr i64 %3070 to i16*
  store i16 %3071, i16* %3073, align 2
  %3074 = load i64, i64* %3, align 8
  %3075 = add i64 %3074, 37
  store i64 %3075, i64* %3, align 8
  br label %block_.L_48a27f

block_.L_48a25f:                                  ; preds = %block_48a1e9
  store i64 ptrtoint (%G__0x722ff0_type* @G__0x722ff0 to i64), i64* %RAX.i1963.phi.trans.insert, align 8
  %3076 = add i64 %2943, 14
  store i64 %3076, i64* %3, align 8
  %3077 = load i32, i32* %2902, align 4
  %3078 = sext i32 %3077 to i64
  %3079 = shl nsw i64 %3078, 6
  store i64 %3079, i64* %RCX.i2011, align 8
  %3080 = add i64 %3079, ptrtoint (%G__0x722ff0_type* @G__0x722ff0 to i64)
  store i64 %3080, i64* %RAX.i1963.phi.trans.insert, align 8
  %3081 = icmp ult i64 %3080, ptrtoint (%G__0x722ff0_type* @G__0x722ff0 to i64)
  %3082 = icmp ult i64 %3080, %3079
  %3083 = or i1 %3081, %3082
  %3084 = zext i1 %3083 to i8
  store i8 %3084, i8* %29, align 1
  %3085 = trunc i64 %3080 to i32
  %3086 = and i32 %3085, 248
  %3087 = tail call i32 @llvm.ctpop.i32(i32 %3086)
  %3088 = trunc i32 %3087 to i8
  %3089 = and i8 %3088, 1
  %3090 = xor i8 %3089, 1
  store i8 %3090, i8* %36, align 1
  %3091 = xor i64 %3080, ptrtoint (%G__0x722ff0_type* @G__0x722ff0 to i64)
  %3092 = lshr i64 %3091, 4
  %3093 = trunc i64 %3092 to i8
  %3094 = and i8 %3093, 1
  store i8 %3094, i8* %42, align 1
  %3095 = icmp eq i64 %3080, 0
  %3096 = zext i1 %3095 to i8
  store i8 %3096, i8* %45, align 1
  %3097 = lshr i64 %3080, 63
  %3098 = trunc i64 %3097 to i8
  store i8 %3098, i8* %48, align 1
  %3099 = lshr i64 %3078, 57
  %3100 = and i64 %3099, 1
  %3101 = xor i64 %3097, lshr (i64 ptrtoint (%G__0x722ff0_type* @G__0x722ff0 to i64), i64 63)
  %3102 = xor i64 %3097, %3100
  %3103 = add nuw nsw i64 %3101, %3102
  %3104 = icmp eq i64 %3103, 2
  %3105 = zext i1 %3104 to i8
  store i8 %3105, i8* %54, align 1
  %3106 = add i64 %2899, -44
  %3107 = add i64 %2943, 25
  store i64 %3107, i64* %3, align 8
  %3108 = inttoptr i64 %3106 to i32*
  %3109 = load i32, i32* %3108, align 4
  %3110 = sext i32 %3109 to i64
  store i64 %3110, i64* %RCX.i2011, align 8
  %3111 = shl nsw i64 %3110, 2
  %3112 = add i64 %3111, %3080
  %3113 = add i64 %2943, 32
  store i64 %3113, i64* %3, align 8
  %3114 = inttoptr i64 %3112 to i32*
  store i32 0, i32* %3114, align 4
  %.pre174 = load i64, i64* %3, align 8
  br label %block_.L_48a27f

block_.L_48a27f:                                  ; preds = %block_.L_48a25f, %block_48a1fe
  %3115 = phi i64 [ %.pre174, %block_.L_48a25f ], [ %3075, %block_48a1fe ]
  %3116 = load i64, i64* %RBP.i, align 8
  %3117 = add i64 %3116, -48
  %3118 = add i64 %3115, 8
  store i64 %3118, i64* %3, align 8
  %3119 = inttoptr i64 %3117 to i32*
  %3120 = load i32, i32* %3119, align 4
  %3121 = add i32 %3120, 1
  %3122 = zext i32 %3121 to i64
  store i64 %3122, i64* %RAX.i1963.phi.trans.insert, align 8
  %3123 = icmp eq i32 %3120, -1
  %3124 = icmp eq i32 %3121, 0
  %3125 = or i1 %3123, %3124
  %3126 = zext i1 %3125 to i8
  store i8 %3126, i8* %29, align 1
  %3127 = and i32 %3121, 255
  %3128 = tail call i32 @llvm.ctpop.i32(i32 %3127)
  %3129 = trunc i32 %3128 to i8
  %3130 = and i8 %3129, 1
  %3131 = xor i8 %3130, 1
  store i8 %3131, i8* %36, align 1
  %3132 = xor i32 %3121, %3120
  %3133 = lshr i32 %3132, 4
  %3134 = trunc i32 %3133 to i8
  %3135 = and i8 %3134, 1
  store i8 %3135, i8* %42, align 1
  %3136 = zext i1 %3124 to i8
  store i8 %3136, i8* %45, align 1
  %3137 = lshr i32 %3121, 31
  %3138 = trunc i32 %3137 to i8
  store i8 %3138, i8* %48, align 1
  %3139 = lshr i32 %3120, 31
  %3140 = xor i32 %3137, %3139
  %3141 = add nuw nsw i32 %3140, %3137
  %3142 = icmp eq i32 %3141, 2
  %3143 = zext i1 %3142 to i8
  store i8 %3143, i8* %54, align 1
  %3144 = add i64 %3115, 14
  store i64 %3144, i64* %3, align 8
  store i32 %3121, i32* %3119, align 4
  %3145 = load i64, i64* %3, align 8
  %3146 = add i64 %3145, -174
  store i64 %3146, i64* %3, align 8
  br label %block_.L_48a1df

block_.L_48a292:                                  ; preds = %block_.L_48a1df
  %3147 = add i64 %2899, -44
  %3148 = add i64 %2928, 8
  store i64 %3148, i64* %3, align 8
  %3149 = inttoptr i64 %3147 to i32*
  %3150 = load i32, i32* %3149, align 4
  %3151 = add i32 %3150, 1
  %3152 = zext i32 %3151 to i64
  store i64 %3152, i64* %RAX.i1963.phi.trans.insert, align 8
  %3153 = icmp eq i32 %3150, -1
  %3154 = icmp eq i32 %3151, 0
  %3155 = or i1 %3153, %3154
  %3156 = zext i1 %3155 to i8
  store i8 %3156, i8* %29, align 1
  %3157 = and i32 %3151, 255
  %3158 = tail call i32 @llvm.ctpop.i32(i32 %3157)
  %3159 = trunc i32 %3158 to i8
  %3160 = and i8 %3159, 1
  %3161 = xor i8 %3160, 1
  store i8 %3161, i8* %36, align 1
  %3162 = xor i32 %3151, %3150
  %3163 = lshr i32 %3162, 4
  %3164 = trunc i32 %3163 to i8
  %3165 = and i8 %3164, 1
  store i8 %3165, i8* %42, align 1
  %3166 = zext i1 %3154 to i8
  store i8 %3166, i8* %45, align 1
  %3167 = lshr i32 %3151, 31
  %3168 = trunc i32 %3167 to i8
  store i8 %3168, i8* %48, align 1
  %3169 = lshr i32 %3150, 31
  %3170 = xor i32 %3167, %3169
  %3171 = add nuw nsw i32 %3170, %3167
  %3172 = icmp eq i32 %3171, 2
  %3173 = zext i1 %3172 to i8
  store i8 %3173, i8* %54, align 1
  %3174 = add i64 %2928, 14
  store i64 %3174, i64* %3, align 8
  store i32 %3151, i32* %3149, align 4
  %3175 = load i64, i64* %3, align 8
  %3176 = add i64 %3175, -210
  store i64 %3176, i64* %3, align 8
  br label %block_.L_48a1ce

block_.L_48a2a5:                                  ; preds = %block_.L_48a1ce
  %3177 = add i64 %2894, 292
  br label %block_.L_48a3c9

block_.L_48a2aa:                                  ; preds = %block_48a195, %block_.L_48a165
  %3178 = phi i64 [ %2841, %block_48a195 ], [ %2805, %block_.L_48a165 ]
  %3179 = load i32, i32* bitcast (%G_0x6d32c0_type* @G_0x6d32c0 to i32*), align 8
  %3180 = zext i32 %3179 to i64
  store i64 %3180, i64* %RAX.i1963.phi.trans.insert, align 8
  %3181 = add i64 %2452, -32
  %3182 = add i64 %3178, 11
  store i64 %3182, i64* %3, align 8
  %3183 = inttoptr i64 %3181 to i64*
  %3184 = load i64, i64* %3183, align 8
  %3185 = add i64 %3184, 460
  %3186 = add i64 %3178, 17
  store i64 %3186, i64* %3, align 8
  %3187 = inttoptr i64 %3185 to i32*
  store i32 %3179, i32* %3187, align 4
  %3188 = load i64, i64* %3, align 8
  %3189 = load i64, i64* bitcast (%G_0x710778_type* @G_0x710778 to i64*), align 8
  store i64 %3189, i64* %RCX.i2011, align 8
  %3190 = load i64, i64* %RBP.i, align 8
  %3191 = add i64 %3190, -32
  %3192 = add i64 %3188, 12
  store i64 %3192, i64* %3, align 8
  %3193 = inttoptr i64 %3191 to i64*
  %3194 = load i64, i64* %3193, align 8
  store i64 %3194, i64* %344, align 8
  %3195 = add i64 %3194, 464
  %3196 = add i64 %3188, 19
  store i64 %3196, i64* %3, align 8
  %3197 = inttoptr i64 %3195 to i64*
  store i64 %3189, i64* %3197, align 8
  %3198 = load i64, i64* %RBP.i, align 8
  %3199 = add i64 %3198, -44
  %3200 = load i64, i64* %3, align 8
  %3201 = add i64 %3200, 7
  store i64 %3201, i64* %3, align 8
  %3202 = inttoptr i64 %3199 to i32*
  store i32 0, i32* %3202, align 4
  %DX.i908 = bitcast %union.anon* %342 to i16*
  %.pre175 = load i64, i64* %3, align 8
  br label %block_.L_48a2d5

block_.L_48a2d5:                                  ; preds = %block_.L_48a3b1, %block_.L_48a2aa
  %3203 = phi i64 [ %3572, %block_.L_48a3b1 ], [ %.pre175, %block_.L_48a2aa ]
  %3204 = load i64, i64* %RBP.i, align 8
  %3205 = add i64 %3204, -44
  %3206 = add i64 %3203, 4
  store i64 %3206, i64* %3, align 8
  %3207 = inttoptr i64 %3205 to i32*
  %3208 = load i32, i32* %3207, align 4
  %3209 = add i32 %3208, -16
  %3210 = icmp ult i32 %3208, 16
  %3211 = zext i1 %3210 to i8
  store i8 %3211, i8* %29, align 1
  %3212 = and i32 %3209, 255
  %3213 = tail call i32 @llvm.ctpop.i32(i32 %3212)
  %3214 = trunc i32 %3213 to i8
  %3215 = and i8 %3214, 1
  %3216 = xor i8 %3215, 1
  store i8 %3216, i8* %36, align 1
  %3217 = xor i32 %3208, 16
  %3218 = xor i32 %3217, %3209
  %3219 = lshr i32 %3218, 4
  %3220 = trunc i32 %3219 to i8
  %3221 = and i8 %3220, 1
  store i8 %3221, i8* %42, align 1
  %3222 = icmp eq i32 %3209, 0
  %3223 = zext i1 %3222 to i8
  store i8 %3223, i8* %45, align 1
  %3224 = lshr i32 %3209, 31
  %3225 = trunc i32 %3224 to i8
  store i8 %3225, i8* %48, align 1
  %3226 = lshr i32 %3208, 31
  %3227 = xor i32 %3224, %3226
  %3228 = add nuw nsw i32 %3227, %3226
  %3229 = icmp eq i32 %3228, 2
  %3230 = zext i1 %3229 to i8
  store i8 %3230, i8* %54, align 1
  %3231 = icmp ne i8 %3225, 0
  %3232 = xor i1 %3231, %3229
  %.v233 = select i1 %3232, i64 10, i64 239
  %3233 = add i64 %3203, %.v233
  store i64 %3233, i64* %3, align 8
  br i1 %3232, label %block_48a2df, label %block_.L_48a3c4

block_48a2df:                                     ; preds = %block_.L_48a2d5
  %3234 = add i64 %3204, -48
  %3235 = add i64 %3233, 7
  store i64 %3235, i64* %3, align 8
  %3236 = inttoptr i64 %3234 to i32*
  store i32 0, i32* %3236, align 4
  %.pre178 = load i64, i64* %3, align 8
  br label %block_.L_48a2e6

block_.L_48a2e6:                                  ; preds = %block_.L_48a39e, %block_48a2df
  %3237 = phi i64 [ %3542, %block_.L_48a39e ], [ %.pre178, %block_48a2df ]
  %3238 = load i64, i64* %RBP.i, align 8
  %3239 = add i64 %3238, -48
  %3240 = add i64 %3237, 4
  store i64 %3240, i64* %3, align 8
  %3241 = inttoptr i64 %3239 to i32*
  %3242 = load i32, i32* %3241, align 4
  %3243 = add i32 %3242, -16
  %3244 = icmp ult i32 %3242, 16
  %3245 = zext i1 %3244 to i8
  store i8 %3245, i8* %29, align 1
  %3246 = and i32 %3243, 255
  %3247 = tail call i32 @llvm.ctpop.i32(i32 %3246)
  %3248 = trunc i32 %3247 to i8
  %3249 = and i8 %3248, 1
  %3250 = xor i8 %3249, 1
  store i8 %3250, i8* %36, align 1
  %3251 = xor i32 %3242, 16
  %3252 = xor i32 %3251, %3243
  %3253 = lshr i32 %3252, 4
  %3254 = trunc i32 %3253 to i8
  %3255 = and i8 %3254, 1
  store i8 %3255, i8* %42, align 1
  %3256 = icmp eq i32 %3243, 0
  %3257 = zext i1 %3256 to i8
  store i8 %3257, i8* %45, align 1
  %3258 = lshr i32 %3243, 31
  %3259 = trunc i32 %3258 to i8
  store i8 %3259, i8* %48, align 1
  %3260 = lshr i32 %3242, 31
  %3261 = xor i32 %3258, %3260
  %3262 = add nuw nsw i32 %3261, %3260
  %3263 = icmp eq i32 %3262, 2
  %3264 = zext i1 %3263 to i8
  store i8 %3264, i8* %54, align 1
  %3265 = icmp ne i8 %3259, 0
  %3266 = xor i1 %3265, %3263
  %.v211 = select i1 %3266, i64 10, i64 203
  %3267 = add i64 %3237, %.v211
  store i64 %3267, i64* %3, align 8
  br i1 %3266, label %block_48a2f0, label %block_.L_48a3b1

block_48a2f0:                                     ; preds = %block_.L_48a2e6
  %3268 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*), align 8
  store i64 %3268, i64* %RAX.i1963.phi.trans.insert, align 8
  %3269 = add i64 %3268, 72724
  %3270 = add i64 %3267, 15
  store i64 %3270, i64* %3, align 8
  %3271 = inttoptr i64 %3269 to i32*
  %3272 = load i32, i32* %3271, align 4
  store i8 0, i8* %29, align 1
  %3273 = and i32 %3272, 255
  %3274 = tail call i32 @llvm.ctpop.i32(i32 %3273)
  %3275 = trunc i32 %3274 to i8
  %3276 = and i8 %3275, 1
  %3277 = xor i8 %3276, 1
  store i8 %3277, i8* %36, align 1
  store i8 0, i8* %42, align 1
  %3278 = icmp eq i32 %3272, 0
  %3279 = zext i1 %3278 to i8
  store i8 %3279, i8* %45, align 1
  %3280 = lshr i32 %3272, 31
  %3281 = trunc i32 %3280 to i8
  store i8 %3281, i8* %48, align 1
  store i8 0, i8* %54, align 1
  %.v235 = select i1 %3278, i64 21, i64 118
  %3282 = add i64 %3267, %.v235
  %3283 = add i64 %3282, 10
  store i64 %3283, i64* %3, align 8
  br i1 %3278, label %block_48a305, label %block_.L_48a366

block_48a305:                                     ; preds = %block_48a2f0
  store i64 ptrtoint (%G__0x711840_type* @G__0x711840 to i64), i64* %RAX.i1963.phi.trans.insert, align 8
  %3284 = add i64 %3238, -44
  %3285 = add i64 %3282, 14
  store i64 %3285, i64* %3, align 8
  %3286 = inttoptr i64 %3284 to i32*
  %3287 = load i32, i32* %3286, align 4
  %3288 = sext i32 %3287 to i64
  %3289 = shl nsw i64 %3288, 5
  store i64 %3289, i64* %RCX.i2011, align 8
  %3290 = add i64 %3289, ptrtoint (%G__0x711840_type* @G__0x711840 to i64)
  store i64 %3290, i64* %RAX.i1963.phi.trans.insert, align 8
  %3291 = icmp ult i64 %3290, ptrtoint (%G__0x711840_type* @G__0x711840 to i64)
  %3292 = icmp ult i64 %3290, %3289
  %3293 = or i1 %3291, %3292
  %3294 = zext i1 %3293 to i8
  store i8 %3294, i8* %29, align 1
  %3295 = trunc i64 %3290 to i32
  %3296 = and i32 %3295, 248
  %3297 = tail call i32 @llvm.ctpop.i32(i32 %3296)
  %3298 = trunc i32 %3297 to i8
  %3299 = and i8 %3298, 1
  %3300 = xor i8 %3299, 1
  store i8 %3300, i8* %36, align 1
  %3301 = xor i64 %3290, ptrtoint (%G__0x711840_type* @G__0x711840 to i64)
  %3302 = lshr i64 %3301, 4
  %3303 = trunc i64 %3302 to i8
  %3304 = and i8 %3303, 1
  store i8 %3304, i8* %42, align 1
  %3305 = icmp eq i64 %3290, 0
  %3306 = zext i1 %3305 to i8
  store i8 %3306, i8* %45, align 1
  %3307 = lshr i64 %3290, 63
  %3308 = trunc i64 %3307 to i8
  store i8 %3308, i8* %48, align 1
  %3309 = lshr i64 %3288, 58
  %3310 = and i64 %3309, 1
  %3311 = xor i64 %3307, lshr (i64 ptrtoint (%G__0x711840_type* @G__0x711840 to i64), i64 63)
  %3312 = xor i64 %3307, %3310
  %3313 = add nuw nsw i64 %3311, %3312
  %3314 = icmp eq i64 %3313, 2
  %3315 = zext i1 %3314 to i8
  store i8 %3315, i8* %54, align 1
  %3316 = add i64 %3282, 25
  store i64 %3316, i64* %3, align 8
  %3317 = load i32, i32* %3241, align 4
  %3318 = sext i32 %3317 to i64
  store i64 %3318, i64* %RCX.i2011, align 8
  %3319 = shl nsw i64 %3318, 1
  %3320 = add i64 %3319, %3290
  %3321 = add i64 %3282, 29
  store i64 %3321, i64* %3, align 8
  %3322 = inttoptr i64 %3320 to i16*
  %3323 = load i16, i16* %3322, align 2
  store i16 %3323, i16* %DX.i908, align 2
  %3324 = load i64, i64* bitcast (%G_0x70fcf0_type* @G_0x70fcf0 to i64*), align 8
  store i64 %3324, i64* %RAX.i1963.phi.trans.insert, align 8
  %3325 = add i64 %3324, 6424
  %3326 = add i64 %3282, 44
  store i64 %3326, i64* %3, align 8
  %3327 = inttoptr i64 %3325 to i64*
  %3328 = load i64, i64* %3327, align 8
  store i64 %3328, i64* %RAX.i1963.phi.trans.insert, align 8
  store i64 %3268, i64* %RCX.i2011, align 8
  %3329 = add i64 %3268, 156
  %3330 = add i64 %3282, 58
  store i64 %3330, i64* %3, align 8
  %3331 = inttoptr i64 %3329 to i32*
  %3332 = load i32, i32* %3331, align 4
  %3333 = zext i32 %3332 to i64
  store i64 %3333, i64* %RSI.i1668, align 8
  %3334 = add i64 %3282, 61
  store i64 %3334, i64* %3, align 8
  %3335 = load i32, i32* %3286, align 4
  %3336 = add i32 %3335, %3332
  %3337 = zext i32 %3336 to i64
  store i64 %3337, i64* %RSI.i1668, align 8
  %3338 = icmp ult i32 %3336, %3332
  %3339 = icmp ult i32 %3336, %3335
  %3340 = or i1 %3338, %3339
  %3341 = zext i1 %3340 to i8
  store i8 %3341, i8* %29, align 1
  %3342 = and i32 %3336, 255
  %3343 = tail call i32 @llvm.ctpop.i32(i32 %3342)
  %3344 = trunc i32 %3343 to i8
  %3345 = and i8 %3344, 1
  %3346 = xor i8 %3345, 1
  store i8 %3346, i8* %36, align 1
  %3347 = xor i32 %3335, %3332
  %3348 = xor i32 %3347, %3336
  %3349 = lshr i32 %3348, 4
  %3350 = trunc i32 %3349 to i8
  %3351 = and i8 %3350, 1
  store i8 %3351, i8* %42, align 1
  %3352 = icmp eq i32 %3336, 0
  %3353 = zext i1 %3352 to i8
  store i8 %3353, i8* %45, align 1
  %3354 = lshr i32 %3336, 31
  %3355 = trunc i32 %3354 to i8
  store i8 %3355, i8* %48, align 1
  %3356 = lshr i32 %3332, 31
  %3357 = lshr i32 %3335, 31
  %3358 = xor i32 %3354, %3356
  %3359 = xor i32 %3354, %3357
  %3360 = add nuw nsw i32 %3358, %3359
  %3361 = icmp eq i32 %3360, 2
  %3362 = zext i1 %3361 to i8
  store i8 %3362, i8* %54, align 1
  %3363 = sext i32 %3336 to i64
  store i64 %3363, i64* %RCX.i2011, align 8
  %3364 = shl nsw i64 %3363, 3
  %3365 = add i64 %3328, %3364
  %3366 = add i64 %3282, 68
  store i64 %3366, i64* %3, align 8
  %3367 = inttoptr i64 %3365 to i64*
  %3368 = load i64, i64* %3367, align 8
  store i64 %3368, i64* %RAX.i1963.phi.trans.insert, align 8
  %3369 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*), align 8
  store i64 %3369, i64* %RCX.i2011, align 8
  %3370 = add i64 %3369, 152
  %3371 = add i64 %3282, 82
  store i64 %3371, i64* %3, align 8
  %3372 = inttoptr i64 %3370 to i32*
  %3373 = load i32, i32* %3372, align 4
  %3374 = zext i32 %3373 to i64
  store i64 %3374, i64* %RSI.i1668, align 8
  %3375 = load i64, i64* %RBP.i, align 8
  %3376 = add i64 %3375, -48
  %3377 = add i64 %3282, 85
  store i64 %3377, i64* %3, align 8
  %3378 = inttoptr i64 %3376 to i32*
  %3379 = load i32, i32* %3378, align 4
  %3380 = add i32 %3379, %3373
  %3381 = zext i32 %3380 to i64
  store i64 %3381, i64* %RSI.i1668, align 8
  %3382 = icmp ult i32 %3380, %3373
  %3383 = icmp ult i32 %3380, %3379
  %3384 = or i1 %3382, %3383
  %3385 = zext i1 %3384 to i8
  store i8 %3385, i8* %29, align 1
  %3386 = and i32 %3380, 255
  %3387 = tail call i32 @llvm.ctpop.i32(i32 %3386)
  %3388 = trunc i32 %3387 to i8
  %3389 = and i8 %3388, 1
  %3390 = xor i8 %3389, 1
  store i8 %3390, i8* %36, align 1
  %3391 = xor i32 %3379, %3373
  %3392 = xor i32 %3391, %3380
  %3393 = lshr i32 %3392, 4
  %3394 = trunc i32 %3393 to i8
  %3395 = and i8 %3394, 1
  store i8 %3395, i8* %42, align 1
  %3396 = icmp eq i32 %3380, 0
  %3397 = zext i1 %3396 to i8
  store i8 %3397, i8* %45, align 1
  %3398 = lshr i32 %3380, 31
  %3399 = trunc i32 %3398 to i8
  store i8 %3399, i8* %48, align 1
  %3400 = lshr i32 %3373, 31
  %3401 = lshr i32 %3379, 31
  %3402 = xor i32 %3398, %3400
  %3403 = xor i32 %3398, %3401
  %3404 = add nuw nsw i32 %3402, %3403
  %3405 = icmp eq i32 %3404, 2
  %3406 = zext i1 %3405 to i8
  store i8 %3406, i8* %54, align 1
  %3407 = sext i32 %3380 to i64
  store i64 %3407, i64* %RCX.i2011, align 8
  %3408 = shl nsw i64 %3407, 1
  %3409 = add i64 %3368, %3408
  %3410 = load i16, i16* %DX.i908, align 2
  %3411 = add i64 %3282, 92
  store i64 %3411, i64* %3, align 8
  %3412 = inttoptr i64 %3409 to i16*
  store i16 %3410, i16* %3412, align 2
  %3413 = load i64, i64* %3, align 8
  %3414 = add i64 %3413, 61
  store i64 %3414, i64* %3, align 8
  br label %block_.L_48a39e

block_.L_48a366:                                  ; preds = %block_48a2f0
  store i64 ptrtoint (%G__0x722ff0_type* @G__0x722ff0 to i64), i64* %RAX.i1963.phi.trans.insert, align 8
  store i64 ptrtoint (%G__0x6cea50_type* @G__0x6cea50 to i64), i64* %RCX.i2011, align 8
  %3415 = add i64 %3282, 24
  store i64 %3415, i64* %3, align 8
  %3416 = load i32, i32* %3241, align 4
  %3417 = sext i32 %3416 to i64
  %3418 = shl nsw i64 %3417, 6
  store i64 %3418, i64* %344, align 8
  %3419 = add i64 %3418, ptrtoint (%G__0x6cea50_type* @G__0x6cea50 to i64)
  store i64 %3419, i64* %RCX.i2011, align 8
  %3420 = icmp ult i64 %3419, ptrtoint (%G__0x6cea50_type* @G__0x6cea50 to i64)
  %3421 = icmp ult i64 %3419, %3418
  %3422 = or i1 %3420, %3421
  %3423 = zext i1 %3422 to i8
  store i8 %3423, i8* %29, align 1
  %3424 = trunc i64 %3419 to i32
  %3425 = and i32 %3424, 248
  %3426 = tail call i32 @llvm.ctpop.i32(i32 %3425)
  %3427 = trunc i32 %3426 to i8
  %3428 = and i8 %3427, 1
  %3429 = xor i8 %3428, 1
  store i8 %3429, i8* %36, align 1
  %3430 = xor i64 %3419, ptrtoint (%G__0x6cea50_type* @G__0x6cea50 to i64)
  %3431 = lshr i64 %3430, 4
  %3432 = trunc i64 %3431 to i8
  %3433 = and i8 %3432, 1
  store i8 %3433, i8* %42, align 1
  %3434 = icmp eq i64 %3419, 0
  %3435 = zext i1 %3434 to i8
  store i8 %3435, i8* %45, align 1
  %3436 = lshr i64 %3419, 63
  %3437 = trunc i64 %3436 to i8
  store i8 %3437, i8* %48, align 1
  %3438 = lshr i64 %3417, 57
  %3439 = and i64 %3438, 1
  %3440 = xor i64 %3436, lshr (i64 ptrtoint (%G__0x6cea50_type* @G__0x6cea50 to i64), i64 63)
  %3441 = xor i64 %3436, %3439
  %3442 = add nuw nsw i64 %3440, %3441
  %3443 = icmp eq i64 %3442, 2
  %3444 = zext i1 %3443 to i8
  store i8 %3444, i8* %54, align 1
  %3445 = add i64 %3238, -44
  %3446 = add i64 %3282, 35
  store i64 %3446, i64* %3, align 8
  %3447 = inttoptr i64 %3445 to i32*
  %3448 = load i32, i32* %3447, align 4
  %3449 = sext i32 %3448 to i64
  store i64 %3449, i64* %344, align 8
  %3450 = shl nsw i64 %3449, 2
  %3451 = add i64 %3450, %3419
  %3452 = add i64 %3282, 38
  store i64 %3452, i64* %3, align 8
  %3453 = inttoptr i64 %3451 to i32*
  %3454 = load i32, i32* %3453, align 4
  %3455 = zext i32 %3454 to i64
  store i64 %3455, i64* %RSI.i1668, align 8
  %3456 = add i64 %3282, 42
  store i64 %3456, i64* %3, align 8
  %3457 = load i32, i32* %3241, align 4
  %3458 = sext i32 %3457 to i64
  %3459 = add i64 %3282, 46
  store i64 %3459, i64* %3, align 8
  %3460 = shl nsw i64 %3458, 6
  store i64 %3460, i64* %RCX.i2011, align 8
  %.lobit67 = lshr i32 %3457, 31
  %3461 = trunc i32 %.lobit67 to i8
  store i8 %3461, i8* %29, align 1
  %3462 = trunc i64 %3460 to i32
  %3463 = and i32 %3462, 192
  %3464 = tail call i32 @llvm.ctpop.i32(i32 %3463)
  %3465 = trunc i32 %3464 to i8
  %3466 = and i8 %3465, 1
  %3467 = xor i8 %3466, 1
  store i8 %3467, i8* %36, align 1
  store i8 0, i8* %42, align 1
  %3468 = icmp eq i32 %3457, 0
  %3469 = zext i1 %3468 to i8
  store i8 %3469, i8* %45, align 1
  %3470 = lshr i64 %3458, 57
  %3471 = trunc i64 %3470 to i8
  %3472 = and i8 %3471, 1
  store i8 %3472, i8* %48, align 1
  store i8 0, i8* %54, align 1
  %3473 = load i64, i64* %RAX.i1963.phi.trans.insert, align 8
  %3474 = add i64 %3460, %3473
  store i64 %3474, i64* %RAX.i1963.phi.trans.insert, align 8
  %3475 = icmp ult i64 %3474, %3473
  %3476 = icmp ult i64 %3474, %3460
  %3477 = or i1 %3475, %3476
  %3478 = zext i1 %3477 to i8
  store i8 %3478, i8* %29, align 1
  %3479 = trunc i64 %3474 to i32
  %3480 = and i32 %3479, 255
  %3481 = tail call i32 @llvm.ctpop.i32(i32 %3480)
  %3482 = trunc i32 %3481 to i8
  %3483 = and i8 %3482, 1
  %3484 = xor i8 %3483, 1
  store i8 %3484, i8* %36, align 1
  %3485 = xor i64 %3473, %3474
  %3486 = lshr i64 %3485, 4
  %3487 = trunc i64 %3486 to i8
  %3488 = and i8 %3487, 1
  store i8 %3488, i8* %42, align 1
  %3489 = icmp eq i64 %3474, 0
  %3490 = zext i1 %3489 to i8
  store i8 %3490, i8* %45, align 1
  %3491 = lshr i64 %3474, 63
  %3492 = trunc i64 %3491 to i8
  store i8 %3492, i8* %48, align 1
  %3493 = lshr i64 %3473, 63
  %3494 = lshr i64 %3458, 57
  %3495 = and i64 %3494, 1
  %3496 = xor i64 %3491, %3493
  %3497 = xor i64 %3491, %3495
  %3498 = add nuw nsw i64 %3496, %3497
  %3499 = icmp eq i64 %3498, 2
  %3500 = zext i1 %3499 to i8
  store i8 %3500, i8* %54, align 1
  %3501 = load i64, i64* %RBP.i, align 8
  %3502 = add i64 %3501, -44
  %3503 = add i64 %3282, 53
  store i64 %3503, i64* %3, align 8
  %3504 = inttoptr i64 %3502 to i32*
  %3505 = load i32, i32* %3504, align 4
  %3506 = sext i32 %3505 to i64
  store i64 %3506, i64* %RCX.i2011, align 8
  %3507 = shl nsw i64 %3506, 2
  %3508 = add i64 %3507, %3474
  %3509 = add i64 %3282, 56
  store i64 %3509, i64* %3, align 8
  %3510 = inttoptr i64 %3508 to i32*
  store i32 %3454, i32* %3510, align 4
  %.pre179 = load i64, i64* %3, align 8
  br label %block_.L_48a39e

block_.L_48a39e:                                  ; preds = %block_.L_48a366, %block_48a305
  %3511 = phi i64 [ %.pre179, %block_.L_48a366 ], [ %3414, %block_48a305 ]
  %3512 = load i64, i64* %RBP.i, align 8
  %3513 = add i64 %3512, -48
  %3514 = add i64 %3511, 8
  store i64 %3514, i64* %3, align 8
  %3515 = inttoptr i64 %3513 to i32*
  %3516 = load i32, i32* %3515, align 4
  %3517 = add i32 %3516, 1
  %3518 = zext i32 %3517 to i64
  store i64 %3518, i64* %RAX.i1963.phi.trans.insert, align 8
  %3519 = icmp eq i32 %3516, -1
  %3520 = icmp eq i32 %3517, 0
  %3521 = or i1 %3519, %3520
  %3522 = zext i1 %3521 to i8
  store i8 %3522, i8* %29, align 1
  %3523 = and i32 %3517, 255
  %3524 = tail call i32 @llvm.ctpop.i32(i32 %3523)
  %3525 = trunc i32 %3524 to i8
  %3526 = and i8 %3525, 1
  %3527 = xor i8 %3526, 1
  store i8 %3527, i8* %36, align 1
  %3528 = xor i32 %3517, %3516
  %3529 = lshr i32 %3528, 4
  %3530 = trunc i32 %3529 to i8
  %3531 = and i8 %3530, 1
  store i8 %3531, i8* %42, align 1
  %3532 = zext i1 %3520 to i8
  store i8 %3532, i8* %45, align 1
  %3533 = lshr i32 %3517, 31
  %3534 = trunc i32 %3533 to i8
  store i8 %3534, i8* %48, align 1
  %3535 = lshr i32 %3516, 31
  %3536 = xor i32 %3533, %3535
  %3537 = add nuw nsw i32 %3536, %3533
  %3538 = icmp eq i32 %3537, 2
  %3539 = zext i1 %3538 to i8
  store i8 %3539, i8* %54, align 1
  %3540 = add i64 %3511, 14
  store i64 %3540, i64* %3, align 8
  store i32 %3517, i32* %3515, align 4
  %3541 = load i64, i64* %3, align 8
  %3542 = add i64 %3541, -198
  store i64 %3542, i64* %3, align 8
  br label %block_.L_48a2e6

block_.L_48a3b1:                                  ; preds = %block_.L_48a2e6
  %3543 = add i64 %3238, -44
  %3544 = add i64 %3267, 8
  store i64 %3544, i64* %3, align 8
  %3545 = inttoptr i64 %3543 to i32*
  %3546 = load i32, i32* %3545, align 4
  %3547 = add i32 %3546, 1
  %3548 = zext i32 %3547 to i64
  store i64 %3548, i64* %RAX.i1963.phi.trans.insert, align 8
  %3549 = icmp eq i32 %3546, -1
  %3550 = icmp eq i32 %3547, 0
  %3551 = or i1 %3549, %3550
  %3552 = zext i1 %3551 to i8
  store i8 %3552, i8* %29, align 1
  %3553 = and i32 %3547, 255
  %3554 = tail call i32 @llvm.ctpop.i32(i32 %3553)
  %3555 = trunc i32 %3554 to i8
  %3556 = and i8 %3555, 1
  %3557 = xor i8 %3556, 1
  store i8 %3557, i8* %36, align 1
  %3558 = xor i32 %3547, %3546
  %3559 = lshr i32 %3558, 4
  %3560 = trunc i32 %3559 to i8
  %3561 = and i8 %3560, 1
  store i8 %3561, i8* %42, align 1
  %3562 = zext i1 %3550 to i8
  store i8 %3562, i8* %45, align 1
  %3563 = lshr i32 %3547, 31
  %3564 = trunc i32 %3563 to i8
  store i8 %3564, i8* %48, align 1
  %3565 = lshr i32 %3546, 31
  %3566 = xor i32 %3563, %3565
  %3567 = add nuw nsw i32 %3566, %3563
  %3568 = icmp eq i32 %3567, 2
  %3569 = zext i1 %3568 to i8
  store i8 %3569, i8* %54, align 1
  %3570 = add i64 %3267, 14
  store i64 %3570, i64* %3, align 8
  store i32 %3547, i32* %3545, align 4
  %3571 = load i64, i64* %3, align 8
  %3572 = add i64 %3571, -234
  store i64 %3572, i64* %3, align 8
  br label %block_.L_48a2d5

block_.L_48a3c4:                                  ; preds = %block_.L_48a2d5
  %3573 = add i64 %3233, 5
  store i64 %3573, i64* %3, align 8
  br label %block_.L_48a3c9

block_.L_48a3c9:                                  ; preds = %block_.L_48a3c4, %block_.L_48a2a5
  %3574 = phi i64 [ %2865, %block_.L_48a2a5 ], [ %3204, %block_.L_48a3c4 ]
  %storemerge53 = phi i64 [ %3177, %block_.L_48a2a5 ], [ %3573, %block_.L_48a3c4 ]
  %3575 = add i64 %3574, -44
  %3576 = add i64 %storemerge53, 7
  store i64 %3576, i64* %3, align 8
  %3577 = inttoptr i64 %3575 to i32*
  store i32 0, i32* %3577, align 4
  %R8.i797 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0, i32 0
  %R10.i790 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 21, i32 0, i32 0
  %R11.i785 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 23, i32 0, i32 0
  %.pre176 = load i64, i64* %3, align 8
  %3578 = tail call i32 @llvm.ctpop.i32(i32 and (i32 trunc (i64 add (i64 ptrtoint (%G__0x70d650_type* @G__0x70d650 to i64), i64 1024) to i32), i32 255))
  %3579 = trunc i32 %3578 to i8
  %3580 = and i8 %3579, 1
  %3581 = xor i8 %3580, 1
  br label %block_.L_48a3d0

block_.L_48a3d0:                                  ; preds = %block_.L_48a51b, %block_.L_48a3c9
  %3582 = phi i64 [ %4160, %block_.L_48a51b ], [ %.pre176, %block_.L_48a3c9 ]
  %3583 = load i64, i64* %RBP.i, align 8
  %3584 = add i64 %3583, -44
  %3585 = add i64 %3582, 4
  store i64 %3585, i64* %3, align 8
  %3586 = inttoptr i64 %3584 to i32*
  %3587 = load i32, i32* %3586, align 4
  %3588 = add i32 %3587, -16
  %3589 = icmp ult i32 %3587, 16
  %3590 = zext i1 %3589 to i8
  store i8 %3590, i8* %29, align 1
  %3591 = and i32 %3588, 255
  %3592 = tail call i32 @llvm.ctpop.i32(i32 %3591)
  %3593 = trunc i32 %3592 to i8
  %3594 = and i8 %3593, 1
  %3595 = xor i8 %3594, 1
  store i8 %3595, i8* %36, align 1
  %3596 = xor i32 %3587, 16
  %3597 = xor i32 %3596, %3588
  %3598 = lshr i32 %3597, 4
  %3599 = trunc i32 %3598 to i8
  %3600 = and i8 %3599, 1
  store i8 %3600, i8* %42, align 1
  %3601 = icmp eq i32 %3588, 0
  %3602 = zext i1 %3601 to i8
  store i8 %3602, i8* %45, align 1
  %3603 = lshr i32 %3588, 31
  %3604 = trunc i32 %3603 to i8
  store i8 %3604, i8* %48, align 1
  %3605 = lshr i32 %3587, 31
  %3606 = xor i32 %3603, %3605
  %3607 = add nuw nsw i32 %3606, %3605
  %3608 = icmp eq i32 %3607, 2
  %3609 = zext i1 %3608 to i8
  store i8 %3609, i8* %54, align 1
  %3610 = icmp ne i8 %3604, 0
  %3611 = xor i1 %3610, %3608
  %.v234 = select i1 %3611, i64 10, i64 350
  %3612 = add i64 %3582, %.v234
  store i64 %3612, i64* %3, align 8
  br i1 %3611, label %block_48a3da, label %block_.L_48a52e

block_48a3da:                                     ; preds = %block_.L_48a3d0
  %3613 = add i64 %3583, -48
  %3614 = add i64 %3612, 7
  store i64 %3614, i64* %3, align 8
  %3615 = inttoptr i64 %3613 to i32*
  store i32 0, i32* %3615, align 4
  %.pre177 = load i64, i64* %3, align 8
  br label %block_.L_48a3e1

block_.L_48a3e1:                                  ; preds = %block_48a3eb, %block_48a3da
  %3616 = phi i64 [ %4130, %block_48a3eb ], [ %.pre177, %block_48a3da ]
  %3617 = load i64, i64* %RBP.i, align 8
  %3618 = add i64 %3617, -48
  %3619 = add i64 %3616, 4
  store i64 %3619, i64* %3, align 8
  %3620 = inttoptr i64 %3618 to i32*
  %3621 = load i32, i32* %3620, align 4
  %3622 = add i32 %3621, -16
  %3623 = icmp ult i32 %3621, 16
  %3624 = zext i1 %3623 to i8
  store i8 %3624, i8* %29, align 1
  %3625 = and i32 %3622, 255
  %3626 = tail call i32 @llvm.ctpop.i32(i32 %3625)
  %3627 = trunc i32 %3626 to i8
  %3628 = and i8 %3627, 1
  %3629 = xor i8 %3628, 1
  store i8 %3629, i8* %36, align 1
  %3630 = xor i32 %3621, 16
  %3631 = xor i32 %3630, %3622
  %3632 = lshr i32 %3631, 4
  %3633 = trunc i32 %3632 to i8
  %3634 = and i8 %3633, 1
  store i8 %3634, i8* %42, align 1
  %3635 = icmp eq i32 %3622, 0
  %3636 = zext i1 %3635 to i8
  store i8 %3636, i8* %45, align 1
  %3637 = lshr i32 %3622, 31
  %3638 = trunc i32 %3637 to i8
  store i8 %3638, i8* %48, align 1
  %3639 = lshr i32 %3621, 31
  %3640 = xor i32 %3637, %3639
  %3641 = add nuw nsw i32 %3640, %3639
  %3642 = icmp eq i32 %3641, 2
  %3643 = zext i1 %3642 to i8
  store i8 %3643, i8* %54, align 1
  %3644 = icmp ne i8 %3638, 0
  %3645 = xor i1 %3644, %3642
  %.v209 = select i1 %3645, i64 10, i64 314
  %3646 = add i64 %3616, %.v209
  store i64 %3646, i64* %3, align 8
  br i1 %3645, label %block_48a3eb, label %block_.L_48a51b

block_48a3eb:                                     ; preds = %block_.L_48a3e1
  store i64 ptrtoint (%G__0x6d40f0_type* @G__0x6d40f0 to i64), i64* %RAX.i1963.phi.trans.insert, align 8
  store i64 ptrtoint (%G__0x7247d0_type* @G__0x7247d0 to i64), i64* %RCX.i2011, align 8
  store i64 ptrtoint (%G__0x6f6fa0_type* @G__0x6f6fa0 to i64), i64* %RDX.i1929, align 8
  store i64 ptrtoint (%G__0x6ce5a0_type* @G__0x6ce5a0 to i64), i64* %RSI.i1479, align 8
  store i64 ptrtoint (%G__0x725610_type* @G__0x725610 to i64), i64* %RDI.i1834, align 8
  store i64 add (i64 ptrtoint (%G__0x725610_type* @G__0x725610 to i64), i64 2048), i64* %R8.i797, align 8
  store i64 ptrtoint (%G__0x70d650_type* @G__0x70d650 to i64), i64* %R9.i1598, align 8
  store i64 add (i64 ptrtoint (%G__0x70d650_type* @G__0x70d650 to i64), i64 2048), i64* %R10.i790, align 8
  store i64 add (i64 ptrtoint (%G__0x725610_type* @G__0x725610 to i64), i64 1024), i64* %R11.i785, align 8
  store i64 add (i64 ptrtoint (%G__0x70d650_type* @G__0x70d650 to i64), i64 1024), i64* %RBX.i1676, align 8
  store i8 zext (i1 icmp ugt (i64 ptrtoint (%G__0x70d650_type* @G__0x70d650 to i64), i64 -1025) to i8), i8* %29, align 1
  store i8 %3581, i8* %36, align 1
  store i8 and (i8 trunc (i64 lshr (i64 xor (i64 add (i64 ptrtoint (%G__0x70d650_type* @G__0x70d650 to i64), i64 1024), i64 ptrtoint (%G__0x70d650_type* @G__0x70d650 to i64)), i64 4) to i8), i8 1), i8* %42, align 1
  store i8 zext (i1 icmp eq (i64 add (i64 ptrtoint (%G__0x70d650_type* @G__0x70d650 to i64), i64 1024), i64 0) to i8), i8* %45, align 1
  store i8 trunc (i64 lshr (i64 add (i64 ptrtoint (%G__0x70d650_type* @G__0x70d650 to i64), i64 1024), i64 63) to i8), i8* %48, align 1
  store i8 zext (i1 icmp eq (i64 add (i64 xor (i64 lshr (i64 add (i64 ptrtoint (%G__0x70d650_type* @G__0x70d650 to i64), i64 1024), i64 63), i64 lshr (i64 ptrtoint (%G__0x70d650_type* @G__0x70d650 to i64), i64 63)), i64 lshr (i64 add (i64 ptrtoint (%G__0x70d650_type* @G__0x70d650 to i64), i64 1024), i64 63)), i64 2) to i8), i8* %54, align 1
  %3647 = add i64 %3646, 104
  store i64 %3647, i64* %3, align 8
  %3648 = load i32, i32* %3620, align 4
  %3649 = sext i32 %3648 to i64
  %3650 = shl nsw i64 %3649, 6
  store i64 %3650, i64* %R14.i1659, align 8
  %3651 = add i64 %3650, ptrtoint (%G__0x70d650_type* @G__0x70d650 to i64)
  store i64 %3651, i64* %R9.i1598, align 8
  %3652 = icmp ult i64 %3651, ptrtoint (%G__0x70d650_type* @G__0x70d650 to i64)
  %3653 = icmp ult i64 %3651, %3650
  %3654 = or i1 %3652, %3653
  %3655 = zext i1 %3654 to i8
  store i8 %3655, i8* %29, align 1
  %3656 = trunc i64 %3651 to i32
  %3657 = and i32 %3656, 248
  %3658 = tail call i32 @llvm.ctpop.i32(i32 %3657)
  %3659 = trunc i32 %3658 to i8
  %3660 = and i8 %3659, 1
  %3661 = xor i8 %3660, 1
  store i8 %3661, i8* %36, align 1
  %3662 = xor i64 %3651, ptrtoint (%G__0x70d650_type* @G__0x70d650 to i64)
  %3663 = lshr i64 %3662, 4
  %3664 = trunc i64 %3663 to i8
  %3665 = and i8 %3664, 1
  store i8 %3665, i8* %42, align 1
  %3666 = icmp eq i64 %3651, 0
  %3667 = zext i1 %3666 to i8
  store i8 %3667, i8* %45, align 1
  %3668 = lshr i64 %3651, 63
  %3669 = trunc i64 %3668 to i8
  store i8 %3669, i8* %48, align 1
  %3670 = lshr i64 %3649, 57
  %3671 = and i64 %3670, 1
  %3672 = xor i64 %3668, lshr (i64 ptrtoint (%G__0x70d650_type* @G__0x70d650 to i64), i64 63)
  %3673 = xor i64 %3668, %3671
  %3674 = add nuw nsw i64 %3672, %3673
  %3675 = icmp eq i64 %3674, 2
  %3676 = zext i1 %3675 to i8
  store i8 %3676, i8* %54, align 1
  %3677 = load i64, i64* %RBP.i, align 8
  %3678 = add i64 %3677, -44
  %3679 = add i64 %3646, 115
  store i64 %3679, i64* %3, align 8
  %3680 = inttoptr i64 %3678 to i32*
  %3681 = load i32, i32* %3680, align 4
  %3682 = sext i32 %3681 to i64
  store i64 %3682, i64* %R14.i1659, align 8
  %3683 = shl nsw i64 %3682, 2
  %3684 = add i64 %3683, %3651
  %3685 = add i64 %3646, 119
  store i64 %3685, i64* %3, align 8
  %3686 = inttoptr i64 %3684 to i32*
  %3687 = load i32, i32* %3686, align 4
  %3688 = zext i32 %3687 to i64
  store i64 %3688, i64* %R15.i1641, align 8
  %3689 = add i64 %3677, -48
  %3690 = add i64 %3646, 123
  store i64 %3690, i64* %3, align 8
  %3691 = inttoptr i64 %3689 to i32*
  %3692 = load i32, i32* %3691, align 4
  %3693 = sext i32 %3692 to i64
  %3694 = shl nsw i64 %3693, 6
  store i64 %3694, i64* %R9.i1598, align 8
  %3695 = load i64, i64* %RDI.i1834, align 8
  %3696 = add i64 %3694, %3695
  store i64 %3696, i64* %RDI.i1834, align 8
  %3697 = icmp ult i64 %3696, %3695
  %3698 = icmp ult i64 %3696, %3694
  %3699 = or i1 %3697, %3698
  %3700 = zext i1 %3699 to i8
  store i8 %3700, i8* %29, align 1
  %3701 = trunc i64 %3696 to i32
  %3702 = and i32 %3701, 255
  %3703 = tail call i32 @llvm.ctpop.i32(i32 %3702)
  %3704 = trunc i32 %3703 to i8
  %3705 = and i8 %3704, 1
  %3706 = xor i8 %3705, 1
  store i8 %3706, i8* %36, align 1
  %3707 = xor i64 %3695, %3696
  %3708 = lshr i64 %3707, 4
  %3709 = trunc i64 %3708 to i8
  %3710 = and i8 %3709, 1
  store i8 %3710, i8* %42, align 1
  %3711 = icmp eq i64 %3696, 0
  %3712 = zext i1 %3711 to i8
  store i8 %3712, i8* %45, align 1
  %3713 = lshr i64 %3696, 63
  %3714 = trunc i64 %3713 to i8
  store i8 %3714, i8* %48, align 1
  %3715 = lshr i64 %3695, 63
  %3716 = lshr i64 %3693, 57
  %3717 = and i64 %3716, 1
  %3718 = xor i64 %3713, %3715
  %3719 = xor i64 %3713, %3717
  %3720 = add nuw nsw i64 %3718, %3719
  %3721 = icmp eq i64 %3720, 2
  %3722 = zext i1 %3721 to i8
  store i8 %3722, i8* %54, align 1
  %3723 = add i64 %3646, 134
  store i64 %3723, i64* %3, align 8
  %3724 = load i32, i32* %3680, align 4
  %3725 = sext i32 %3724 to i64
  store i64 %3725, i64* %R9.i1598, align 8
  %3726 = shl nsw i64 %3725, 2
  %3727 = add i64 %3726, %3696
  %3728 = add i64 %3646, 138
  store i64 %3728, i64* %3, align 8
  %3729 = inttoptr i64 %3727 to i32*
  store i32 %3687, i32* %3729, align 4
  %3730 = load i64, i64* %RBP.i, align 8
  %3731 = add i64 %3730, -48
  %3732 = load i64, i64* %3, align 8
  %3733 = add i64 %3732, 4
  store i64 %3733, i64* %3, align 8
  %3734 = inttoptr i64 %3731 to i32*
  %3735 = load i32, i32* %3734, align 4
  %3736 = sext i32 %3735 to i64
  %3737 = shl nsw i64 %3736, 6
  store i64 %3737, i64* %RDI.i1834, align 8
  %3738 = load i64, i64* %RBX.i1676, align 8
  %3739 = add i64 %3737, %3738
  store i64 %3739, i64* %RBX.i1676, align 8
  %3740 = icmp ult i64 %3739, %3738
  %3741 = icmp ult i64 %3739, %3737
  %3742 = or i1 %3740, %3741
  %3743 = zext i1 %3742 to i8
  store i8 %3743, i8* %29, align 1
  %3744 = trunc i64 %3739 to i32
  %3745 = and i32 %3744, 255
  %3746 = tail call i32 @llvm.ctpop.i32(i32 %3745)
  %3747 = trunc i32 %3746 to i8
  %3748 = and i8 %3747, 1
  %3749 = xor i8 %3748, 1
  store i8 %3749, i8* %36, align 1
  %3750 = xor i64 %3738, %3739
  %3751 = lshr i64 %3750, 4
  %3752 = trunc i64 %3751 to i8
  %3753 = and i8 %3752, 1
  store i8 %3753, i8* %42, align 1
  %3754 = icmp eq i64 %3739, 0
  %3755 = zext i1 %3754 to i8
  store i8 %3755, i8* %45, align 1
  %3756 = lshr i64 %3739, 63
  %3757 = trunc i64 %3756 to i8
  store i8 %3757, i8* %48, align 1
  %3758 = lshr i64 %3738, 63
  %3759 = lshr i64 %3736, 57
  %3760 = and i64 %3759, 1
  %3761 = xor i64 %3756, %3758
  %3762 = xor i64 %3756, %3760
  %3763 = add nuw nsw i64 %3761, %3762
  %3764 = icmp eq i64 %3763, 2
  %3765 = zext i1 %3764 to i8
  store i8 %3765, i8* %54, align 1
  %3766 = add i64 %3730, -44
  %3767 = add i64 %3732, 15
  store i64 %3767, i64* %3, align 8
  %3768 = inttoptr i64 %3766 to i32*
  %3769 = load i32, i32* %3768, align 4
  %3770 = sext i32 %3769 to i64
  store i64 %3770, i64* %RDI.i1834, align 8
  %3771 = shl nsw i64 %3770, 2
  %3772 = add i64 %3771, %3739
  %3773 = add i64 %3732, 19
  store i64 %3773, i64* %3, align 8
  %3774 = inttoptr i64 %3772 to i32*
  %3775 = load i32, i32* %3774, align 4
  %3776 = zext i32 %3775 to i64
  store i64 %3776, i64* %R15.i1641, align 8
  %3777 = add i64 %3732, 23
  store i64 %3777, i64* %3, align 8
  %3778 = load i32, i32* %3734, align 4
  %3779 = sext i32 %3778 to i64
  %3780 = shl nsw i64 %3779, 6
  store i64 %3780, i64* %RDI.i1834, align 8
  %3781 = load i64, i64* %R11.i785, align 8
  %3782 = add i64 %3780, %3781
  store i64 %3782, i64* %R11.i785, align 8
  %3783 = icmp ult i64 %3782, %3781
  %3784 = icmp ult i64 %3782, %3780
  %3785 = or i1 %3783, %3784
  %3786 = zext i1 %3785 to i8
  store i8 %3786, i8* %29, align 1
  %3787 = trunc i64 %3782 to i32
  %3788 = and i32 %3787, 255
  %3789 = tail call i32 @llvm.ctpop.i32(i32 %3788)
  %3790 = trunc i32 %3789 to i8
  %3791 = and i8 %3790, 1
  %3792 = xor i8 %3791, 1
  store i8 %3792, i8* %36, align 1
  %3793 = xor i64 %3781, %3782
  %3794 = lshr i64 %3793, 4
  %3795 = trunc i64 %3794 to i8
  %3796 = and i8 %3795, 1
  store i8 %3796, i8* %42, align 1
  %3797 = icmp eq i64 %3782, 0
  %3798 = zext i1 %3797 to i8
  store i8 %3798, i8* %45, align 1
  %3799 = lshr i64 %3782, 63
  %3800 = trunc i64 %3799 to i8
  store i8 %3800, i8* %48, align 1
  %3801 = lshr i64 %3781, 63
  %3802 = lshr i64 %3779, 57
  %3803 = and i64 %3802, 1
  %3804 = xor i64 %3799, %3801
  %3805 = xor i64 %3799, %3803
  %3806 = add nuw nsw i64 %3804, %3805
  %3807 = icmp eq i64 %3806, 2
  %3808 = zext i1 %3807 to i8
  store i8 %3808, i8* %54, align 1
  %3809 = load i64, i64* %RBP.i, align 8
  %3810 = add i64 %3809, -44
  %3811 = add i64 %3732, 34
  store i64 %3811, i64* %3, align 8
  %3812 = inttoptr i64 %3810 to i32*
  %3813 = load i32, i32* %3812, align 4
  %3814 = sext i32 %3813 to i64
  store i64 %3814, i64* %RDI.i1834, align 8
  %3815 = shl nsw i64 %3814, 2
  %3816 = add i64 %3815, %3782
  %3817 = add i64 %3732, 38
  store i64 %3817, i64* %3, align 8
  %3818 = inttoptr i64 %3816 to i32*
  store i32 %3775, i32* %3818, align 4
  %3819 = load i64, i64* %RBP.i, align 8
  %3820 = add i64 %3819, -48
  %3821 = load i64, i64* %3, align 8
  %3822 = add i64 %3821, 4
  store i64 %3822, i64* %3, align 8
  %3823 = inttoptr i64 %3820 to i32*
  %3824 = load i32, i32* %3823, align 4
  %3825 = sext i32 %3824 to i64
  %3826 = shl nsw i64 %3825, 6
  store i64 %3826, i64* %RDI.i1834, align 8
  %3827 = load i64, i64* %R10.i790, align 8
  %3828 = add i64 %3826, %3827
  store i64 %3828, i64* %R10.i790, align 8
  %3829 = icmp ult i64 %3828, %3827
  %3830 = icmp ult i64 %3828, %3826
  %3831 = or i1 %3829, %3830
  %3832 = zext i1 %3831 to i8
  store i8 %3832, i8* %29, align 1
  %3833 = trunc i64 %3828 to i32
  %3834 = and i32 %3833, 255
  %3835 = tail call i32 @llvm.ctpop.i32(i32 %3834)
  %3836 = trunc i32 %3835 to i8
  %3837 = and i8 %3836, 1
  %3838 = xor i8 %3837, 1
  store i8 %3838, i8* %36, align 1
  %3839 = xor i64 %3827, %3828
  %3840 = lshr i64 %3839, 4
  %3841 = trunc i64 %3840 to i8
  %3842 = and i8 %3841, 1
  store i8 %3842, i8* %42, align 1
  %3843 = icmp eq i64 %3828, 0
  %3844 = zext i1 %3843 to i8
  store i8 %3844, i8* %45, align 1
  %3845 = lshr i64 %3828, 63
  %3846 = trunc i64 %3845 to i8
  store i8 %3846, i8* %48, align 1
  %3847 = lshr i64 %3827, 63
  %3848 = lshr i64 %3825, 57
  %3849 = and i64 %3848, 1
  %3850 = xor i64 %3845, %3847
  %3851 = xor i64 %3845, %3849
  %3852 = add nuw nsw i64 %3850, %3851
  %3853 = icmp eq i64 %3852, 2
  %3854 = zext i1 %3853 to i8
  store i8 %3854, i8* %54, align 1
  %3855 = add i64 %3819, -44
  %3856 = add i64 %3821, 15
  store i64 %3856, i64* %3, align 8
  %3857 = inttoptr i64 %3855 to i32*
  %3858 = load i32, i32* %3857, align 4
  %3859 = sext i32 %3858 to i64
  store i64 %3859, i64* %RDI.i1834, align 8
  %3860 = shl nsw i64 %3859, 2
  %3861 = add i64 %3860, %3828
  %3862 = add i64 %3821, 19
  store i64 %3862, i64* %3, align 8
  %3863 = inttoptr i64 %3861 to i32*
  %3864 = load i32, i32* %3863, align 4
  %3865 = zext i32 %3864 to i64
  store i64 %3865, i64* %R15.i1641, align 8
  %3866 = add i64 %3821, 23
  store i64 %3866, i64* %3, align 8
  %3867 = load i32, i32* %3823, align 4
  %3868 = sext i32 %3867 to i64
  %3869 = shl nsw i64 %3868, 6
  store i64 %3869, i64* %RDI.i1834, align 8
  %3870 = load i64, i64* %R8.i797, align 8
  %3871 = add i64 %3869, %3870
  store i64 %3871, i64* %R8.i797, align 8
  %3872 = icmp ult i64 %3871, %3870
  %3873 = icmp ult i64 %3871, %3869
  %3874 = or i1 %3872, %3873
  %3875 = zext i1 %3874 to i8
  store i8 %3875, i8* %29, align 1
  %3876 = trunc i64 %3871 to i32
  %3877 = and i32 %3876, 255
  %3878 = tail call i32 @llvm.ctpop.i32(i32 %3877)
  %3879 = trunc i32 %3878 to i8
  %3880 = and i8 %3879, 1
  %3881 = xor i8 %3880, 1
  store i8 %3881, i8* %36, align 1
  %3882 = xor i64 %3870, %3871
  %3883 = lshr i64 %3882, 4
  %3884 = trunc i64 %3883 to i8
  %3885 = and i8 %3884, 1
  store i8 %3885, i8* %42, align 1
  %3886 = icmp eq i64 %3871, 0
  %3887 = zext i1 %3886 to i8
  store i8 %3887, i8* %45, align 1
  %3888 = lshr i64 %3871, 63
  %3889 = trunc i64 %3888 to i8
  store i8 %3889, i8* %48, align 1
  %3890 = lshr i64 %3870, 63
  %3891 = lshr i64 %3868, 57
  %3892 = and i64 %3891, 1
  %3893 = xor i64 %3888, %3890
  %3894 = xor i64 %3888, %3892
  %3895 = add nuw nsw i64 %3893, %3894
  %3896 = icmp eq i64 %3895, 2
  %3897 = zext i1 %3896 to i8
  store i8 %3897, i8* %54, align 1
  %3898 = load i64, i64* %RBP.i, align 8
  %3899 = add i64 %3898, -44
  %3900 = add i64 %3821, 34
  store i64 %3900, i64* %3, align 8
  %3901 = inttoptr i64 %3899 to i32*
  %3902 = load i32, i32* %3901, align 4
  %3903 = sext i32 %3902 to i64
  store i64 %3903, i64* %RDI.i1834, align 8
  %3904 = shl nsw i64 %3903, 2
  %3905 = add i64 %3904, %3871
  %3906 = add i64 %3821, 38
  store i64 %3906, i64* %3, align 8
  %3907 = inttoptr i64 %3905 to i32*
  store i32 %3864, i32* %3907, align 4
  %3908 = load i64, i64* %RBP.i, align 8
  %3909 = add i64 %3908, -48
  %3910 = load i64, i64* %3, align 8
  %3911 = add i64 %3910, 4
  store i64 %3911, i64* %3, align 8
  %3912 = inttoptr i64 %3909 to i32*
  %3913 = load i32, i32* %3912, align 4
  %3914 = sext i32 %3913 to i64
  %3915 = shl nsw i64 %3914, 6
  store i64 %3915, i64* %RDI.i1834, align 8
  %3916 = load i64, i64* %RSI.i1479, align 8
  %3917 = add i64 %3915, %3916
  store i64 %3917, i64* %RSI.i1479, align 8
  %3918 = icmp ult i64 %3917, %3916
  %3919 = icmp ult i64 %3917, %3915
  %3920 = or i1 %3918, %3919
  %3921 = zext i1 %3920 to i8
  store i8 %3921, i8* %29, align 1
  %3922 = trunc i64 %3917 to i32
  %3923 = and i32 %3922, 255
  %3924 = tail call i32 @llvm.ctpop.i32(i32 %3923)
  %3925 = trunc i32 %3924 to i8
  %3926 = and i8 %3925, 1
  %3927 = xor i8 %3926, 1
  store i8 %3927, i8* %36, align 1
  %3928 = xor i64 %3916, %3917
  %3929 = lshr i64 %3928, 4
  %3930 = trunc i64 %3929 to i8
  %3931 = and i8 %3930, 1
  store i8 %3931, i8* %42, align 1
  %3932 = icmp eq i64 %3917, 0
  %3933 = zext i1 %3932 to i8
  store i8 %3933, i8* %45, align 1
  %3934 = lshr i64 %3917, 63
  %3935 = trunc i64 %3934 to i8
  store i8 %3935, i8* %48, align 1
  %3936 = lshr i64 %3916, 63
  %3937 = lshr i64 %3914, 57
  %3938 = and i64 %3937, 1
  %3939 = xor i64 %3934, %3936
  %3940 = xor i64 %3934, %3938
  %3941 = add nuw nsw i64 %3939, %3940
  %3942 = icmp eq i64 %3941, 2
  %3943 = zext i1 %3942 to i8
  store i8 %3943, i8* %54, align 1
  %3944 = add i64 %3908, -44
  %3945 = add i64 %3910, 15
  store i64 %3945, i64* %3, align 8
  %3946 = inttoptr i64 %3944 to i32*
  %3947 = load i32, i32* %3946, align 4
  %3948 = sext i32 %3947 to i64
  store i64 %3948, i64* %RDI.i1834, align 8
  %3949 = shl nsw i64 %3948, 2
  %3950 = add i64 %3949, %3917
  %3951 = add i64 %3910, 19
  store i64 %3951, i64* %3, align 8
  %3952 = inttoptr i64 %3950 to i32*
  %3953 = load i32, i32* %3952, align 4
  %3954 = zext i32 %3953 to i64
  store i64 %3954, i64* %R15.i1641, align 8
  %3955 = add i64 %3910, 23
  store i64 %3955, i64* %3, align 8
  %3956 = load i32, i32* %3912, align 4
  %3957 = sext i32 %3956 to i64
  %3958 = shl nsw i64 %3957, 6
  store i64 %3958, i64* %RSI.i1479, align 8
  %3959 = load i64, i64* %RDX.i1929, align 8
  %3960 = add i64 %3958, %3959
  store i64 %3960, i64* %RDX.i1929, align 8
  %3961 = icmp ult i64 %3960, %3959
  %3962 = icmp ult i64 %3960, %3958
  %3963 = or i1 %3961, %3962
  %3964 = zext i1 %3963 to i8
  store i8 %3964, i8* %29, align 1
  %3965 = trunc i64 %3960 to i32
  %3966 = and i32 %3965, 255
  %3967 = tail call i32 @llvm.ctpop.i32(i32 %3966)
  %3968 = trunc i32 %3967 to i8
  %3969 = and i8 %3968, 1
  %3970 = xor i8 %3969, 1
  store i8 %3970, i8* %36, align 1
  %3971 = xor i64 %3959, %3960
  %3972 = lshr i64 %3971, 4
  %3973 = trunc i64 %3972 to i8
  %3974 = and i8 %3973, 1
  store i8 %3974, i8* %42, align 1
  %3975 = icmp eq i64 %3960, 0
  %3976 = zext i1 %3975 to i8
  store i8 %3976, i8* %45, align 1
  %3977 = lshr i64 %3960, 63
  %3978 = trunc i64 %3977 to i8
  store i8 %3978, i8* %48, align 1
  %3979 = lshr i64 %3959, 63
  %3980 = lshr i64 %3957, 57
  %3981 = and i64 %3980, 1
  %3982 = xor i64 %3977, %3979
  %3983 = xor i64 %3977, %3981
  %3984 = add nuw nsw i64 %3982, %3983
  %3985 = icmp eq i64 %3984, 2
  %3986 = zext i1 %3985 to i8
  store i8 %3986, i8* %54, align 1
  %3987 = load i64, i64* %RBP.i, align 8
  %3988 = add i64 %3987, -44
  %3989 = add i64 %3910, 34
  store i64 %3989, i64* %3, align 8
  %3990 = inttoptr i64 %3988 to i32*
  %3991 = load i32, i32* %3990, align 4
  %3992 = sext i32 %3991 to i64
  store i64 %3992, i64* %RSI.i1479, align 8
  %3993 = shl nsw i64 %3992, 2
  %3994 = add i64 %3993, %3960
  %3995 = add i64 %3910, 38
  store i64 %3995, i64* %3, align 8
  %3996 = inttoptr i64 %3994 to i32*
  store i32 %3953, i32* %3996, align 4
  %3997 = load i64, i64* %RBP.i, align 8
  %3998 = add i64 %3997, -48
  %3999 = load i64, i64* %3, align 8
  %4000 = add i64 %3999, 4
  store i64 %4000, i64* %3, align 8
  %4001 = inttoptr i64 %3998 to i32*
  %4002 = load i32, i32* %4001, align 4
  %4003 = sext i32 %4002 to i64
  %4004 = shl nsw i64 %4003, 6
  store i64 %4004, i64* %RDX.i1929, align 8
  %4005 = load i64, i64* %RCX.i2011, align 8
  %4006 = add i64 %4004, %4005
  store i64 %4006, i64* %RCX.i2011, align 8
  %4007 = icmp ult i64 %4006, %4005
  %4008 = icmp ult i64 %4006, %4004
  %4009 = or i1 %4007, %4008
  %4010 = zext i1 %4009 to i8
  store i8 %4010, i8* %29, align 1
  %4011 = trunc i64 %4006 to i32
  %4012 = and i32 %4011, 255
  %4013 = tail call i32 @llvm.ctpop.i32(i32 %4012)
  %4014 = trunc i32 %4013 to i8
  %4015 = and i8 %4014, 1
  %4016 = xor i8 %4015, 1
  store i8 %4016, i8* %36, align 1
  %4017 = xor i64 %4005, %4006
  %4018 = lshr i64 %4017, 4
  %4019 = trunc i64 %4018 to i8
  %4020 = and i8 %4019, 1
  store i8 %4020, i8* %42, align 1
  %4021 = icmp eq i64 %4006, 0
  %4022 = zext i1 %4021 to i8
  store i8 %4022, i8* %45, align 1
  %4023 = lshr i64 %4006, 63
  %4024 = trunc i64 %4023 to i8
  store i8 %4024, i8* %48, align 1
  %4025 = lshr i64 %4005, 63
  %4026 = lshr i64 %4003, 57
  %4027 = and i64 %4026, 1
  %4028 = xor i64 %4023, %4025
  %4029 = xor i64 %4023, %4027
  %4030 = add nuw nsw i64 %4028, %4029
  %4031 = icmp eq i64 %4030, 2
  %4032 = zext i1 %4031 to i8
  store i8 %4032, i8* %54, align 1
  %4033 = add i64 %3997, -44
  %4034 = add i64 %3999, 15
  store i64 %4034, i64* %3, align 8
  %4035 = inttoptr i64 %4033 to i32*
  %4036 = load i32, i32* %4035, align 4
  %4037 = sext i32 %4036 to i64
  store i64 %4037, i64* %RDX.i1929, align 8
  %4038 = shl nsw i64 %4037, 2
  %4039 = add i64 %4038, %4006
  %4040 = add i64 %3999, 19
  store i64 %4040, i64* %3, align 8
  %4041 = inttoptr i64 %4039 to i32*
  %4042 = load i32, i32* %4041, align 4
  %4043 = zext i32 %4042 to i64
  store i64 %4043, i64* %R15.i1641, align 8
  %4044 = add i64 %3999, 23
  store i64 %4044, i64* %3, align 8
  %4045 = load i32, i32* %4001, align 4
  %4046 = sext i32 %4045 to i64
  %4047 = add i64 %3999, 27
  store i64 %4047, i64* %3, align 8
  %4048 = shl nsw i64 %4046, 6
  store i64 %4048, i64* %RCX.i2011, align 8
  %.lobit63 = lshr i32 %4045, 31
  %4049 = trunc i32 %.lobit63 to i8
  store i8 %4049, i8* %29, align 1
  %4050 = trunc i64 %4048 to i32
  %4051 = and i32 %4050, 192
  %4052 = tail call i32 @llvm.ctpop.i32(i32 %4051)
  %4053 = trunc i32 %4052 to i8
  %4054 = and i8 %4053, 1
  %4055 = xor i8 %4054, 1
  store i8 %4055, i8* %36, align 1
  store i8 0, i8* %42, align 1
  %4056 = icmp eq i32 %4045, 0
  %4057 = zext i1 %4056 to i8
  store i8 %4057, i8* %45, align 1
  %4058 = lshr i64 %4046, 57
  %4059 = trunc i64 %4058 to i8
  %4060 = and i8 %4059, 1
  store i8 %4060, i8* %48, align 1
  store i8 0, i8* %54, align 1
  %4061 = load i64, i64* %RAX.i1963.phi.trans.insert, align 8
  %4062 = add i64 %4048, %4061
  store i64 %4062, i64* %RAX.i1963.phi.trans.insert, align 8
  %4063 = icmp ult i64 %4062, %4061
  %4064 = icmp ult i64 %4062, %4048
  %4065 = or i1 %4063, %4064
  %4066 = zext i1 %4065 to i8
  store i8 %4066, i8* %29, align 1
  %4067 = trunc i64 %4062 to i32
  %4068 = and i32 %4067, 255
  %4069 = tail call i32 @llvm.ctpop.i32(i32 %4068)
  %4070 = trunc i32 %4069 to i8
  %4071 = and i8 %4070, 1
  %4072 = xor i8 %4071, 1
  store i8 %4072, i8* %36, align 1
  %4073 = xor i64 %4061, %4062
  %4074 = lshr i64 %4073, 4
  %4075 = trunc i64 %4074 to i8
  %4076 = and i8 %4075, 1
  store i8 %4076, i8* %42, align 1
  %4077 = icmp eq i64 %4062, 0
  %4078 = zext i1 %4077 to i8
  store i8 %4078, i8* %45, align 1
  %4079 = lshr i64 %4062, 63
  %4080 = trunc i64 %4079 to i8
  store i8 %4080, i8* %48, align 1
  %4081 = lshr i64 %4061, 63
  %4082 = lshr i64 %4046, 57
  %4083 = and i64 %4082, 1
  %4084 = xor i64 %4079, %4081
  %4085 = xor i64 %4079, %4083
  %4086 = add nuw nsw i64 %4084, %4085
  %4087 = icmp eq i64 %4086, 2
  %4088 = zext i1 %4087 to i8
  store i8 %4088, i8* %54, align 1
  %4089 = load i64, i64* %RBP.i, align 8
  %4090 = add i64 %4089, -44
  %4091 = add i64 %3999, 34
  store i64 %4091, i64* %3, align 8
  %4092 = inttoptr i64 %4090 to i32*
  %4093 = load i32, i32* %4092, align 4
  %4094 = sext i32 %4093 to i64
  store i64 %4094, i64* %RCX.i2011, align 8
  %4095 = shl nsw i64 %4094, 2
  %4096 = add i64 %4095, %4062
  %4097 = add i64 %3999, 38
  store i64 %4097, i64* %3, align 8
  %4098 = inttoptr i64 %4096 to i32*
  store i32 %4042, i32* %4098, align 4
  %4099 = load i64, i64* %RBP.i, align 8
  %4100 = add i64 %4099, -48
  %4101 = load i64, i64* %3, align 8
  %4102 = add i64 %4101, 3
  store i64 %4102, i64* %3, align 8
  %4103 = inttoptr i64 %4100 to i32*
  %4104 = load i32, i32* %4103, align 4
  %4105 = add i32 %4104, 1
  %4106 = zext i32 %4105 to i64
  store i64 %4106, i64* %RAX.i1963.phi.trans.insert, align 8
  %4107 = icmp eq i32 %4104, -1
  %4108 = icmp eq i32 %4105, 0
  %4109 = or i1 %4107, %4108
  %4110 = zext i1 %4109 to i8
  store i8 %4110, i8* %29, align 1
  %4111 = and i32 %4105, 255
  %4112 = tail call i32 @llvm.ctpop.i32(i32 %4111)
  %4113 = trunc i32 %4112 to i8
  %4114 = and i8 %4113, 1
  %4115 = xor i8 %4114, 1
  store i8 %4115, i8* %36, align 1
  %4116 = xor i32 %4105, %4104
  %4117 = lshr i32 %4116, 4
  %4118 = trunc i32 %4117 to i8
  %4119 = and i8 %4118, 1
  store i8 %4119, i8* %42, align 1
  %4120 = zext i1 %4108 to i8
  store i8 %4120, i8* %45, align 1
  %4121 = lshr i32 %4105, 31
  %4122 = trunc i32 %4121 to i8
  store i8 %4122, i8* %48, align 1
  %4123 = lshr i32 %4104, 31
  %4124 = xor i32 %4121, %4123
  %4125 = add nuw nsw i32 %4124, %4121
  %4126 = icmp eq i32 %4125, 2
  %4127 = zext i1 %4126 to i8
  store i8 %4127, i8* %54, align 1
  %4128 = add i64 %4101, 9
  store i64 %4128, i64* %3, align 8
  store i32 %4105, i32* %4103, align 4
  %4129 = load i64, i64* %3, align 8
  %4130 = add i64 %4129, -309
  store i64 %4130, i64* %3, align 8
  br label %block_.L_48a3e1

block_.L_48a51b:                                  ; preds = %block_.L_48a3e1
  %4131 = add i64 %3617, -44
  %4132 = add i64 %3646, 8
  store i64 %4132, i64* %3, align 8
  %4133 = inttoptr i64 %4131 to i32*
  %4134 = load i32, i32* %4133, align 4
  %4135 = add i32 %4134, 1
  %4136 = zext i32 %4135 to i64
  store i64 %4136, i64* %RAX.i1963.phi.trans.insert, align 8
  %4137 = icmp eq i32 %4134, -1
  %4138 = icmp eq i32 %4135, 0
  %4139 = or i1 %4137, %4138
  %4140 = zext i1 %4139 to i8
  store i8 %4140, i8* %29, align 1
  %4141 = and i32 %4135, 255
  %4142 = tail call i32 @llvm.ctpop.i32(i32 %4141)
  %4143 = trunc i32 %4142 to i8
  %4144 = and i8 %4143, 1
  %4145 = xor i8 %4144, 1
  store i8 %4145, i8* %36, align 1
  %4146 = xor i32 %4135, %4134
  %4147 = lshr i32 %4146, 4
  %4148 = trunc i32 %4147 to i8
  %4149 = and i8 %4148, 1
  store i8 %4149, i8* %42, align 1
  %4150 = zext i1 %4138 to i8
  store i8 %4150, i8* %45, align 1
  %4151 = lshr i32 %4135, 31
  %4152 = trunc i32 %4151 to i8
  store i8 %4152, i8* %48, align 1
  %4153 = lshr i32 %4134, 31
  %4154 = xor i32 %4151, %4153
  %4155 = add nuw nsw i32 %4154, %4151
  %4156 = icmp eq i32 %4155, 2
  %4157 = zext i1 %4156 to i8
  store i8 %4157, i8* %54, align 1
  %4158 = add i64 %3646, 14
  store i64 %4158, i64* %3, align 8
  store i32 %4135, i32* %4133, align 4
  %4159 = load i64, i64* %3, align 8
  %4160 = add i64 %4159, -345
  store i64 %4160, i64* %3, align 8
  br label %block_.L_48a3d0

block_.L_48a52e:                                  ; preds = %block_.L_48a3d0
  %4161 = add i64 %3612, 1239
  br label %block_.L_48aa05

block_.L_48a533:                                  ; preds = %block_.L_489b36
  %4162 = add i64 %192, -36
  %4163 = add i64 %211, 7
  store i64 %4163, i64* %3, align 8
  %4164 = inttoptr i64 %4162 to i32*
  store i32 0, i32* %4164, align 4
  %4165 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %RDX.i598 = getelementptr inbounds %union.anon, %union.anon* %4165, i64 0, i32 0
  %.pre195 = load i64, i64* %3, align 8
  br label %block_.L_48a53a

block_.L_48a53a:                                  ; preds = %block_.L_48a612, %block_.L_48a533
  %4166 = phi i64 [ %4506, %block_.L_48a612 ], [ %.pre195, %block_.L_48a533 ]
  %4167 = load i64, i64* %RBP.i, align 8
  %4168 = add i64 %4167, -36
  %4169 = add i64 %4166, 3
  store i64 %4169, i64* %3, align 8
  %4170 = inttoptr i64 %4168 to i32*
  %4171 = load i32, i32* %4170, align 4
  %4172 = zext i32 %4171 to i64
  store i64 %4172, i64* %RAX.i1963.phi.trans.insert, align 8
  %4173 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*), align 8
  store i64 %4173, i64* %RCX.i2011, align 8
  %4174 = add i64 %4173, 72692
  %4175 = add i64 %4166, 17
  store i64 %4175, i64* %3, align 8
  %4176 = inttoptr i64 %4174 to i32*
  %4177 = load i32, i32* %4176, align 4
  %4178 = add i32 %4177, 4
  %4179 = zext i32 %4178 to i64
  store i64 %4179, i64* %RDX.i598, align 8
  %4180 = lshr i32 %4178, 31
  %4181 = sub i32 %4171, %4178
  %4182 = icmp ult i32 %4171, %4178
  %4183 = zext i1 %4182 to i8
  store i8 %4183, i8* %29, align 1
  %4184 = and i32 %4181, 255
  %4185 = tail call i32 @llvm.ctpop.i32(i32 %4184)
  %4186 = trunc i32 %4185 to i8
  %4187 = and i8 %4186, 1
  %4188 = xor i8 %4187, 1
  store i8 %4188, i8* %36, align 1
  %4189 = xor i32 %4178, %4171
  %4190 = xor i32 %4189, %4181
  %4191 = lshr i32 %4190, 4
  %4192 = trunc i32 %4191 to i8
  %4193 = and i8 %4192, 1
  store i8 %4193, i8* %42, align 1
  %4194 = icmp eq i32 %4181, 0
  %4195 = zext i1 %4194 to i8
  store i8 %4195, i8* %45, align 1
  %4196 = lshr i32 %4181, 31
  %4197 = trunc i32 %4196 to i8
  store i8 %4197, i8* %48, align 1
  %4198 = lshr i32 %4171, 31
  %4199 = xor i32 %4180, %4198
  %4200 = xor i32 %4196, %4198
  %4201 = add nuw nsw i32 %4200, %4199
  %4202 = icmp eq i32 %4201, 2
  %4203 = zext i1 %4202 to i8
  store i8 %4203, i8* %54, align 1
  %4204 = icmp ne i8 %4197, 0
  %4205 = xor i1 %4204, %4202
  %.v243 = select i1 %4205, i64 28, i64 235
  %4206 = add i64 %4166, %.v243
  store i64 %4206, i64* %3, align 8
  br i1 %4205, label %block_48a556, label %block_.L_48a625

block_48a556:                                     ; preds = %block_.L_48a53a
  %4207 = add i64 %4167, -40
  %4208 = add i64 %4206, 7
  store i64 %4208, i64* %3, align 8
  %4209 = inttoptr i64 %4207 to i32*
  store i32 0, i32* %4209, align 4
  %.pre204 = load i64, i64* %3, align 8
  br label %block_.L_48a55d

block_.L_48a55d:                                  ; preds = %block_.L_48a5ff, %block_48a556
  %4210 = phi i64 [ %4476, %block_.L_48a5ff ], [ %.pre204, %block_48a556 ]
  %4211 = load i64, i64* %RBP.i, align 8
  %4212 = add i64 %4211, -40
  %4213 = add i64 %4210, 4
  store i64 %4213, i64* %3, align 8
  %4214 = inttoptr i64 %4212 to i32*
  %4215 = load i32, i32* %4214, align 4
  %4216 = add i32 %4215, -4
  %4217 = icmp ult i32 %4215, 4
  %4218 = zext i1 %4217 to i8
  store i8 %4218, i8* %29, align 1
  %4219 = and i32 %4216, 255
  %4220 = tail call i32 @llvm.ctpop.i32(i32 %4219)
  %4221 = trunc i32 %4220 to i8
  %4222 = and i8 %4221, 1
  %4223 = xor i8 %4222, 1
  store i8 %4223, i8* %36, align 1
  %4224 = xor i32 %4216, %4215
  %4225 = lshr i32 %4224, 4
  %4226 = trunc i32 %4225 to i8
  %4227 = and i8 %4226, 1
  store i8 %4227, i8* %42, align 1
  %4228 = icmp eq i32 %4216, 0
  %4229 = zext i1 %4228 to i8
  store i8 %4229, i8* %45, align 1
  %4230 = lshr i32 %4216, 31
  %4231 = trunc i32 %4230 to i8
  store i8 %4231, i8* %48, align 1
  %4232 = lshr i32 %4215, 31
  %4233 = xor i32 %4230, %4232
  %4234 = add nuw nsw i32 %4233, %4232
  %4235 = icmp eq i32 %4234, 2
  %4236 = zext i1 %4235 to i8
  store i8 %4236, i8* %54, align 1
  %4237 = icmp ne i8 %4231, 0
  %4238 = xor i1 %4237, %4235
  %.v221 = select i1 %4238, i64 10, i64 181
  %4239 = add i64 %4210, %.v221
  store i64 %4239, i64* %3, align 8
  br i1 %4238, label %block_48a567, label %block_.L_48a612

block_48a567:                                     ; preds = %block_.L_48a55d
  %4240 = add i64 %4211, -44
  %4241 = add i64 %4239, 7
  store i64 %4241, i64* %3, align 8
  %4242 = inttoptr i64 %4240 to i32*
  store i32 0, i32* %4242, align 4
  %.pre205 = load i64, i64* %3, align 8
  br label %block_.L_48a56e

block_.L_48a56e:                                  ; preds = %block_.L_48a5ec, %block_48a567
  %4243 = phi i64 [ %4446, %block_.L_48a5ec ], [ %.pre205, %block_48a567 ]
  %4244 = load i64, i64* %RBP.i, align 8
  %4245 = add i64 %4244, -44
  %4246 = add i64 %4243, 4
  store i64 %4246, i64* %3, align 8
  %4247 = inttoptr i64 %4245 to i32*
  %4248 = load i32, i32* %4247, align 4
  %4249 = add i32 %4248, -2
  %4250 = icmp ult i32 %4248, 2
  %4251 = zext i1 %4250 to i8
  store i8 %4251, i8* %29, align 1
  %4252 = and i32 %4249, 255
  %4253 = tail call i32 @llvm.ctpop.i32(i32 %4252)
  %4254 = trunc i32 %4253 to i8
  %4255 = and i8 %4254, 1
  %4256 = xor i8 %4255, 1
  store i8 %4256, i8* %36, align 1
  %4257 = xor i32 %4249, %4248
  %4258 = lshr i32 %4257, 4
  %4259 = trunc i32 %4258 to i8
  %4260 = and i8 %4259, 1
  store i8 %4260, i8* %42, align 1
  %4261 = icmp eq i32 %4249, 0
  %4262 = zext i1 %4261 to i8
  store i8 %4262, i8* %45, align 1
  %4263 = lshr i32 %4249, 31
  %4264 = trunc i32 %4263 to i8
  store i8 %4264, i8* %48, align 1
  %4265 = lshr i32 %4248, 31
  %4266 = xor i32 %4263, %4265
  %4267 = add nuw nsw i32 %4266, %4265
  %4268 = icmp eq i32 %4267, 2
  %4269 = zext i1 %4268 to i8
  store i8 %4269, i8* %54, align 1
  %4270 = icmp ne i8 %4264, 0
  %4271 = xor i1 %4270, %4268
  %.v222 = select i1 %4271, i64 10, i64 145
  %4272 = add i64 %4243, %.v222
  store i64 %4272, i64* %3, align 8
  br i1 %4271, label %block_48a578, label %block_.L_48a5ff

block_48a578:                                     ; preds = %block_.L_48a56e
  %4273 = add i64 %4244, -48
  %4274 = add i64 %4272, 7
  store i64 %4274, i64* %3, align 8
  %4275 = inttoptr i64 %4273 to i32*
  store i32 0, i32* %4275, align 4
  %.pre206 = load i64, i64* %3, align 8
  br label %block_.L_48a57f

block_.L_48a57f:                                  ; preds = %block_48a589, %block_48a578
  %4276 = phi i64 [ %4416, %block_48a589 ], [ %.pre206, %block_48a578 ]
  %4277 = load i64, i64* %RBP.i, align 8
  %4278 = add i64 %4277, -48
  %4279 = add i64 %4276, 4
  store i64 %4279, i64* %3, align 8
  %4280 = inttoptr i64 %4278 to i32*
  %4281 = load i32, i32* %4280, align 4
  %4282 = add i32 %4281, -65
  %4283 = icmp ult i32 %4281, 65
  %4284 = zext i1 %4283 to i8
  store i8 %4284, i8* %29, align 1
  %4285 = and i32 %4282, 255
  %4286 = tail call i32 @llvm.ctpop.i32(i32 %4285)
  %4287 = trunc i32 %4286 to i8
  %4288 = and i8 %4287, 1
  %4289 = xor i8 %4288, 1
  store i8 %4289, i8* %36, align 1
  %4290 = xor i32 %4282, %4281
  %4291 = lshr i32 %4290, 4
  %4292 = trunc i32 %4291 to i8
  %4293 = and i8 %4292, 1
  store i8 %4293, i8* %42, align 1
  %4294 = icmp eq i32 %4282, 0
  %4295 = zext i1 %4294 to i8
  store i8 %4295, i8* %45, align 1
  %4296 = lshr i32 %4282, 31
  %4297 = trunc i32 %4296 to i8
  store i8 %4297, i8* %48, align 1
  %4298 = lshr i32 %4281, 31
  %4299 = xor i32 %4296, %4298
  %4300 = add nuw nsw i32 %4299, %4298
  %4301 = icmp eq i32 %4300, 2
  %4302 = zext i1 %4301 to i8
  store i8 %4302, i8* %54, align 1
  %4303 = icmp ne i8 %4297, 0
  %4304 = xor i1 %4303, %4301
  %.v223 = select i1 %4304, i64 10, i64 109
  %4305 = add i64 %4276, %.v223
  store i64 %4305, i64* %3, align 8
  br i1 %4304, label %block_48a589, label %block_.L_48a5ec

block_48a589:                                     ; preds = %block_.L_48a57f
  %4306 = load i64, i64* bitcast (%G_0x6cc5f8_type* @G_0x6cc5f8 to i64*), align 8
  store i64 %4306, i64* %RAX.i1963.phi.trans.insert, align 8
  %4307 = add i64 %4277, -36
  %4308 = add i64 %4305, 12
  store i64 %4308, i64* %3, align 8
  %4309 = inttoptr i64 %4307 to i32*
  %4310 = load i32, i32* %4309, align 4
  %4311 = sext i32 %4310 to i64
  store i64 %4311, i64* %RCX.i2011, align 8
  %4312 = shl nsw i64 %4311, 3
  %4313 = add i64 %4312, %4306
  %4314 = add i64 %4305, 16
  store i64 %4314, i64* %3, align 8
  %4315 = inttoptr i64 %4313 to i64*
  %4316 = load i64, i64* %4315, align 8
  store i64 %4316, i64* %RAX.i1963.phi.trans.insert, align 8
  %4317 = add i64 %4277, -40
  %4318 = add i64 %4305, 20
  store i64 %4318, i64* %3, align 8
  %4319 = inttoptr i64 %4317 to i32*
  %4320 = load i32, i32* %4319, align 4
  %4321 = sext i32 %4320 to i64
  store i64 %4321, i64* %RCX.i2011, align 8
  %4322 = shl nsw i64 %4321, 3
  %4323 = add i64 %4322, %4316
  %4324 = add i64 %4305, 24
  store i64 %4324, i64* %3, align 8
  %4325 = inttoptr i64 %4323 to i64*
  %4326 = load i64, i64* %4325, align 8
  store i64 %4326, i64* %RAX.i1963.phi.trans.insert, align 8
  %4327 = add i64 %4277, -44
  %4328 = add i64 %4305, 28
  store i64 %4328, i64* %3, align 8
  %4329 = inttoptr i64 %4327 to i32*
  %4330 = load i32, i32* %4329, align 4
  %4331 = sext i32 %4330 to i64
  store i64 %4331, i64* %RCX.i2011, align 8
  %4332 = shl nsw i64 %4331, 3
  %4333 = add i64 %4332, %4326
  %4334 = add i64 %4305, 32
  store i64 %4334, i64* %3, align 8
  %4335 = inttoptr i64 %4333 to i64*
  %4336 = load i64, i64* %4335, align 8
  store i64 %4336, i64* %RAX.i1963.phi.trans.insert, align 8
  %4337 = add i64 %4305, 36
  store i64 %4337, i64* %3, align 8
  %4338 = load i32, i32* %4280, align 4
  %4339 = sext i32 %4338 to i64
  store i64 %4339, i64* %RCX.i2011, align 8
  %4340 = shl nsw i64 %4339, 2
  %4341 = add i64 %4340, %4336
  %4342 = add i64 %4305, 39
  store i64 %4342, i64* %3, align 8
  %4343 = inttoptr i64 %4341 to i32*
  %4344 = load i32, i32* %4343, align 4
  %4345 = zext i32 %4344 to i64
  store i64 %4345, i64* %RDX.i598, align 8
  %4346 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*), align 8
  store i64 %4346, i64* %RAX.i1963.phi.trans.insert, align 8
  %4347 = add i64 %4346, 14136
  %4348 = add i64 %4305, 54
  store i64 %4348, i64* %3, align 8
  %4349 = inttoptr i64 %4347 to i64*
  %4350 = load i64, i64* %4349, align 8
  store i64 %4350, i64* %RAX.i1963.phi.trans.insert, align 8
  %4351 = add i64 %4305, 58
  store i64 %4351, i64* %3, align 8
  %4352 = load i32, i32* %4309, align 4
  %4353 = sext i32 %4352 to i64
  store i64 %4353, i64* %RCX.i2011, align 8
  %4354 = shl nsw i64 %4353, 3
  %4355 = add i64 %4354, %4350
  %4356 = add i64 %4305, 62
  store i64 %4356, i64* %3, align 8
  %4357 = inttoptr i64 %4355 to i64*
  %4358 = load i64, i64* %4357, align 8
  store i64 %4358, i64* %RAX.i1963.phi.trans.insert, align 8
  %4359 = add i64 %4305, 66
  store i64 %4359, i64* %3, align 8
  %4360 = load i32, i32* %4319, align 4
  %4361 = sext i32 %4360 to i64
  store i64 %4361, i64* %RCX.i2011, align 8
  %4362 = shl nsw i64 %4361, 3
  %4363 = add i64 %4362, %4358
  %4364 = add i64 %4305, 70
  store i64 %4364, i64* %3, align 8
  %4365 = inttoptr i64 %4363 to i64*
  %4366 = load i64, i64* %4365, align 8
  store i64 %4366, i64* %RAX.i1963.phi.trans.insert, align 8
  %4367 = add i64 %4305, 74
  store i64 %4367, i64* %3, align 8
  %4368 = load i32, i32* %4329, align 4
  %4369 = sext i32 %4368 to i64
  store i64 %4369, i64* %RCX.i2011, align 8
  %4370 = shl nsw i64 %4369, 3
  %4371 = add i64 %4370, %4366
  %4372 = add i64 %4305, 78
  store i64 %4372, i64* %3, align 8
  %4373 = inttoptr i64 %4371 to i64*
  %4374 = load i64, i64* %4373, align 8
  store i64 %4374, i64* %RAX.i1963.phi.trans.insert, align 8
  %4375 = load i64, i64* %RBP.i, align 8
  %4376 = add i64 %4375, -48
  %4377 = add i64 %4305, 82
  store i64 %4377, i64* %3, align 8
  %4378 = inttoptr i64 %4376 to i32*
  %4379 = load i32, i32* %4378, align 4
  %4380 = sext i32 %4379 to i64
  store i64 %4380, i64* %RCX.i2011, align 8
  %4381 = shl nsw i64 %4380, 2
  %4382 = add i64 %4381, %4374
  %4383 = add i64 %4305, 85
  store i64 %4383, i64* %3, align 8
  %4384 = inttoptr i64 %4382 to i32*
  store i32 %4344, i32* %4384, align 4
  %4385 = load i64, i64* %RBP.i, align 8
  %4386 = add i64 %4385, -48
  %4387 = load i64, i64* %3, align 8
  %4388 = add i64 %4387, 3
  store i64 %4388, i64* %3, align 8
  %4389 = inttoptr i64 %4386 to i32*
  %4390 = load i32, i32* %4389, align 4
  %4391 = add i32 %4390, 1
  %4392 = zext i32 %4391 to i64
  store i64 %4392, i64* %RAX.i1963.phi.trans.insert, align 8
  %4393 = icmp eq i32 %4390, -1
  %4394 = icmp eq i32 %4391, 0
  %4395 = or i1 %4393, %4394
  %4396 = zext i1 %4395 to i8
  store i8 %4396, i8* %29, align 1
  %4397 = and i32 %4391, 255
  %4398 = tail call i32 @llvm.ctpop.i32(i32 %4397)
  %4399 = trunc i32 %4398 to i8
  %4400 = and i8 %4399, 1
  %4401 = xor i8 %4400, 1
  store i8 %4401, i8* %36, align 1
  %4402 = xor i32 %4391, %4390
  %4403 = lshr i32 %4402, 4
  %4404 = trunc i32 %4403 to i8
  %4405 = and i8 %4404, 1
  store i8 %4405, i8* %42, align 1
  %4406 = zext i1 %4394 to i8
  store i8 %4406, i8* %45, align 1
  %4407 = lshr i32 %4391, 31
  %4408 = trunc i32 %4407 to i8
  store i8 %4408, i8* %48, align 1
  %4409 = lshr i32 %4390, 31
  %4410 = xor i32 %4407, %4409
  %4411 = add nuw nsw i32 %4410, %4407
  %4412 = icmp eq i32 %4411, 2
  %4413 = zext i1 %4412 to i8
  store i8 %4413, i8* %54, align 1
  %4414 = add i64 %4387, 9
  store i64 %4414, i64* %3, align 8
  store i32 %4391, i32* %4389, align 4
  %4415 = load i64, i64* %3, align 8
  %4416 = add i64 %4415, -104
  store i64 %4416, i64* %3, align 8
  br label %block_.L_48a57f

block_.L_48a5ec:                                  ; preds = %block_.L_48a57f
  %4417 = add i64 %4277, -44
  %4418 = add i64 %4305, 8
  store i64 %4418, i64* %3, align 8
  %4419 = inttoptr i64 %4417 to i32*
  %4420 = load i32, i32* %4419, align 4
  %4421 = add i32 %4420, 1
  %4422 = zext i32 %4421 to i64
  store i64 %4422, i64* %RAX.i1963.phi.trans.insert, align 8
  %4423 = icmp eq i32 %4420, -1
  %4424 = icmp eq i32 %4421, 0
  %4425 = or i1 %4423, %4424
  %4426 = zext i1 %4425 to i8
  store i8 %4426, i8* %29, align 1
  %4427 = and i32 %4421, 255
  %4428 = tail call i32 @llvm.ctpop.i32(i32 %4427)
  %4429 = trunc i32 %4428 to i8
  %4430 = and i8 %4429, 1
  %4431 = xor i8 %4430, 1
  store i8 %4431, i8* %36, align 1
  %4432 = xor i32 %4421, %4420
  %4433 = lshr i32 %4432, 4
  %4434 = trunc i32 %4433 to i8
  %4435 = and i8 %4434, 1
  store i8 %4435, i8* %42, align 1
  %4436 = zext i1 %4424 to i8
  store i8 %4436, i8* %45, align 1
  %4437 = lshr i32 %4421, 31
  %4438 = trunc i32 %4437 to i8
  store i8 %4438, i8* %48, align 1
  %4439 = lshr i32 %4420, 31
  %4440 = xor i32 %4437, %4439
  %4441 = add nuw nsw i32 %4440, %4437
  %4442 = icmp eq i32 %4441, 2
  %4443 = zext i1 %4442 to i8
  store i8 %4443, i8* %54, align 1
  %4444 = add i64 %4305, 14
  store i64 %4444, i64* %3, align 8
  store i32 %4421, i32* %4419, align 4
  %4445 = load i64, i64* %3, align 8
  %4446 = add i64 %4445, -140
  store i64 %4446, i64* %3, align 8
  br label %block_.L_48a56e

block_.L_48a5ff:                                  ; preds = %block_.L_48a56e
  %4447 = add i64 %4244, -40
  %4448 = add i64 %4272, 8
  store i64 %4448, i64* %3, align 8
  %4449 = inttoptr i64 %4447 to i32*
  %4450 = load i32, i32* %4449, align 4
  %4451 = add i32 %4450, 1
  %4452 = zext i32 %4451 to i64
  store i64 %4452, i64* %RAX.i1963.phi.trans.insert, align 8
  %4453 = icmp eq i32 %4450, -1
  %4454 = icmp eq i32 %4451, 0
  %4455 = or i1 %4453, %4454
  %4456 = zext i1 %4455 to i8
  store i8 %4456, i8* %29, align 1
  %4457 = and i32 %4451, 255
  %4458 = tail call i32 @llvm.ctpop.i32(i32 %4457)
  %4459 = trunc i32 %4458 to i8
  %4460 = and i8 %4459, 1
  %4461 = xor i8 %4460, 1
  store i8 %4461, i8* %36, align 1
  %4462 = xor i32 %4451, %4450
  %4463 = lshr i32 %4462, 4
  %4464 = trunc i32 %4463 to i8
  %4465 = and i8 %4464, 1
  store i8 %4465, i8* %42, align 1
  %4466 = zext i1 %4454 to i8
  store i8 %4466, i8* %45, align 1
  %4467 = lshr i32 %4451, 31
  %4468 = trunc i32 %4467 to i8
  store i8 %4468, i8* %48, align 1
  %4469 = lshr i32 %4450, 31
  %4470 = xor i32 %4467, %4469
  %4471 = add nuw nsw i32 %4470, %4467
  %4472 = icmp eq i32 %4471, 2
  %4473 = zext i1 %4472 to i8
  store i8 %4473, i8* %54, align 1
  %4474 = add i64 %4272, 14
  store i64 %4474, i64* %3, align 8
  store i32 %4451, i32* %4449, align 4
  %4475 = load i64, i64* %3, align 8
  %4476 = add i64 %4475, -176
  store i64 %4476, i64* %3, align 8
  br label %block_.L_48a55d

block_.L_48a612:                                  ; preds = %block_.L_48a55d
  %4477 = add i64 %4211, -36
  %4478 = add i64 %4239, 8
  store i64 %4478, i64* %3, align 8
  %4479 = inttoptr i64 %4477 to i32*
  %4480 = load i32, i32* %4479, align 4
  %4481 = add i32 %4480, 1
  %4482 = zext i32 %4481 to i64
  store i64 %4482, i64* %RAX.i1963.phi.trans.insert, align 8
  %4483 = icmp eq i32 %4480, -1
  %4484 = icmp eq i32 %4481, 0
  %4485 = or i1 %4483, %4484
  %4486 = zext i1 %4485 to i8
  store i8 %4486, i8* %29, align 1
  %4487 = and i32 %4481, 255
  %4488 = tail call i32 @llvm.ctpop.i32(i32 %4487)
  %4489 = trunc i32 %4488 to i8
  %4490 = and i8 %4489, 1
  %4491 = xor i8 %4490, 1
  store i8 %4491, i8* %36, align 1
  %4492 = xor i32 %4481, %4480
  %4493 = lshr i32 %4492, 4
  %4494 = trunc i32 %4493 to i8
  %4495 = and i8 %4494, 1
  store i8 %4495, i8* %42, align 1
  %4496 = zext i1 %4484 to i8
  store i8 %4496, i8* %45, align 1
  %4497 = lshr i32 %4481, 31
  %4498 = trunc i32 %4497 to i8
  store i8 %4498, i8* %48, align 1
  %4499 = lshr i32 %4480, 31
  %4500 = xor i32 %4497, %4499
  %4501 = add nuw nsw i32 %4500, %4497
  %4502 = icmp eq i32 %4501, 2
  %4503 = zext i1 %4502 to i8
  store i8 %4503, i8* %54, align 1
  %4504 = add i64 %4239, 14
  store i64 %4504, i64* %3, align 8
  store i32 %4481, i32* %4479, align 4
  %4505 = load i64, i64* %3, align 8
  %4506 = add i64 %4505, -230
  store i64 %4506, i64* %3, align 8
  br label %block_.L_48a53a

block_.L_48a625:                                  ; preds = %block_.L_48a53a
  %4507 = load i32, i32* bitcast (%G_0x6d1f8c_type* @G_0x6d1f8c to i32*), align 8
  %4508 = add i32 %4507, -5
  %4509 = icmp ult i32 %4507, 5
  %4510 = zext i1 %4509 to i8
  store i8 %4510, i8* %29, align 1
  %4511 = and i32 %4508, 255
  %4512 = tail call i32 @llvm.ctpop.i32(i32 %4511)
  %4513 = trunc i32 %4512 to i8
  %4514 = and i8 %4513, 1
  %4515 = xor i8 %4514, 1
  store i8 %4515, i8* %36, align 1
  %4516 = xor i32 %4508, %4507
  %4517 = lshr i32 %4516, 4
  %4518 = trunc i32 %4517 to i8
  %4519 = and i8 %4518, 1
  store i8 %4519, i8* %42, align 1
  %4520 = icmp eq i32 %4508, 0
  %4521 = zext i1 %4520 to i8
  store i8 %4521, i8* %45, align 1
  %4522 = lshr i32 %4508, 31
  %4523 = trunc i32 %4522 to i8
  store i8 %4523, i8* %48, align 1
  %4524 = lshr i32 %4507, 31
  %4525 = xor i32 %4522, %4524
  %4526 = add nuw nsw i32 %4525, %4524
  %4527 = icmp eq i32 %4526, 2
  %4528 = zext i1 %4527 to i8
  store i8 %4528, i8* %54, align 1
  %4529 = icmp ne i8 %4523, 0
  %4530 = xor i1 %4529, %4527
  %.demorgan217 = or i1 %4520, %4530
  %.v244 = select i1 %.demorgan217, i64 14, i64 343
  %4531 = add i64 %4206, %.v244
  store i64 %4531, i64* %3, align 8
  br i1 %.demorgan217, label %block_48a633, label %block_.L_48a77c

block_48a633:                                     ; preds = %block_.L_48a625
  store i64 %4173, i64* %RAX.i1963.phi.trans.insert, align 8
  %4532 = add i64 %4173, 24
  %4533 = add i64 %4531, 12
  store i64 %4533, i64* %3, align 8
  %4534 = inttoptr i64 %4532 to i32*
  %4535 = load i32, i32* %4534, align 4
  %4536 = add i32 %4535, -3
  %4537 = icmp ult i32 %4535, 3
  %4538 = zext i1 %4537 to i8
  store i8 %4538, i8* %29, align 1
  %4539 = and i32 %4536, 255
  %4540 = tail call i32 @llvm.ctpop.i32(i32 %4539)
  %4541 = trunc i32 %4540 to i8
  %4542 = and i8 %4541, 1
  %4543 = xor i8 %4542, 1
  store i8 %4543, i8* %36, align 1
  %4544 = xor i32 %4536, %4535
  %4545 = lshr i32 %4544, 4
  %4546 = trunc i32 %4545 to i8
  %4547 = and i8 %4546, 1
  store i8 %4547, i8* %42, align 1
  %4548 = icmp eq i32 %4536, 0
  %4549 = zext i1 %4548 to i8
  store i8 %4549, i8* %45, align 1
  %4550 = lshr i32 %4536, 31
  %4551 = trunc i32 %4550 to i8
  store i8 %4551, i8* %48, align 1
  %4552 = lshr i32 %4535, 31
  %4553 = xor i32 %4550, %4552
  %4554 = add nuw nsw i32 %4553, %4552
  %4555 = icmp eq i32 %4554, 2
  %4556 = zext i1 %4555 to i8
  store i8 %4556, i8* %54, align 1
  %.v248 = select i1 %4548, i64 329, i64 18
  %4557 = add i64 %4531, %.v248
  store i64 %4557, i64* %3, align 8
  br i1 %4548, label %block_.L_48a77c, label %block_48a645

block_48a645:                                     ; preds = %block_48a633
  store i64 %4173, i64* %RAX.i1963.phi.trans.insert, align 8
  %4558 = add i64 %4173, 40
  %4559 = add i64 %4557, 11
  store i64 %4559, i64* %3, align 8
  %4560 = inttoptr i64 %4558 to i32*
  %4561 = load i32, i32* %4560, align 4
  %4562 = zext i32 %4561 to i64
  store i64 %4562, i64* %RCX.i2011, align 8
  store i64 %4173, i64* %RAX.i1963.phi.trans.insert, align 8
  %4563 = add i64 %4173, 72668
  %4564 = add i64 %4557, 25
  store i64 %4564, i64* %3, align 8
  %4565 = inttoptr i64 %4563 to i32*
  %4566 = load i32, i32* %4565, align 4
  %4567 = add i32 %4566, %4561
  %4568 = zext i32 %4567 to i64
  store i64 %4568, i64* %RCX.i2011, align 8
  %4569 = and i32 %4567, 255
  %4570 = tail call i32 @llvm.ctpop.i32(i32 %4569)
  %4571 = trunc i32 %4570 to i8
  %4572 = and i8 %4571, 1
  %4573 = xor i8 %4572, 1
  %4574 = icmp eq i32 %4567, 0
  %4575 = zext i1 %4574 to i8
  %4576 = lshr i32 %4567, 31
  %4577 = trunc i32 %4576 to i8
  store i8 0, i8* %29, align 1
  store i8 %4573, i8* %36, align 1
  store i8 0, i8* %42, align 1
  store i8 %4575, i8* %45, align 1
  store i8 %4577, i8* %48, align 1
  store i8 0, i8* %54, align 1
  %.v249 = select i1 %4574, i64 34, i64 55
  %4578 = add i64 %4557, %.v249
  store i64 %4578, i64* %3, align 8
  br i1 %4574, label %block_48a667, label %block_.L_48a67c

block_48a667:                                     ; preds = %block_48a645
  store i64 %4173, i64* %RAX.i1963.phi.trans.insert, align 8
  %4579 = add i64 %4173, 72704
  %4580 = add i64 %4578, 15
  store i64 %4580, i64* %3, align 8
  %4581 = inttoptr i64 %4579 to i32*
  %4582 = load i32, i32* %4581, align 4
  store i8 0, i8* %29, align 1
  %4583 = and i32 %4582, 255
  %4584 = tail call i32 @llvm.ctpop.i32(i32 %4583)
  %4585 = trunc i32 %4584 to i8
  %4586 = and i8 %4585, 1
  %4587 = xor i8 %4586, 1
  store i8 %4587, i8* %36, align 1
  store i8 0, i8* %42, align 1
  %4588 = icmp eq i32 %4582, 0
  %4589 = zext i1 %4588 to i8
  store i8 %4589, i8* %45, align 1
  %4590 = lshr i32 %4582, 31
  %4591 = trunc i32 %4590 to i8
  store i8 %4591, i8* %48, align 1
  store i8 0, i8* %54, align 1
  %.v252 = select i1 %4588, i64 21, i64 277
  %4592 = add i64 %4578, %.v252
  store i64 %4592, i64* %3, align 8
  br i1 %4588, label %block_.L_48a67c, label %block_.L_48a77c

block_.L_48a67c:                                  ; preds = %block_48a667, %block_48a645
  %4593 = phi i64 [ %4592, %block_48a667 ], [ %4578, %block_48a645 ]
  %4594 = add i64 %4167, -32
  %4595 = add i64 %4593, 4
  store i64 %4595, i64* %3, align 8
  %4596 = inttoptr i64 %4594 to i64*
  %4597 = load i64, i64* %4596, align 8
  store i64 %4597, i64* %RAX.i1963.phi.trans.insert, align 8
  %4598 = add i64 %4597, 460
  %4599 = add i64 %4593, 14
  store i64 %4599, i64* %3, align 8
  %4600 = inttoptr i64 %4598 to i32*
  store i32 0, i32* %4600, align 4
  %4601 = load i64, i64* %RBP.i, align 8
  %4602 = add i64 %4601, -32
  %4603 = load i64, i64* %3, align 8
  %4604 = add i64 %4603, 4
  store i64 %4604, i64* %3, align 8
  %4605 = inttoptr i64 %4602 to i64*
  %4606 = load i64, i64* %4605, align 8
  store i64 %4606, i64* %RAX.i1963.phi.trans.insert, align 8
  %4607 = add i64 %4606, 464
  %4608 = add i64 %4603, 15
  store i64 %4608, i64* %3, align 8
  %4609 = inttoptr i64 %4607 to i64*
  store i64 0, i64* %4609, align 8
  %4610 = load i64, i64* %RBP.i, align 8
  %4611 = add i64 %4610, -44
  %4612 = load i64, i64* %3, align 8
  %4613 = add i64 %4612, 7
  store i64 %4613, i64* %3, align 8
  %4614 = inttoptr i64 %4611 to i32*
  store i32 0, i32* %4614, align 4
  %DX.i416 = bitcast %union.anon* %4165 to i16*
  %RSI.i408 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %.pre196 = load i64, i64* %3, align 8
  br label %block_.L_48a6a0

block_.L_48a6a0:                                  ; preds = %block_.L_48a764, %block_.L_48a67c
  %4615 = phi i64 [ %4927, %block_.L_48a764 ], [ %.pre196, %block_.L_48a67c ]
  %4616 = load i64, i64* %RBP.i, align 8
  %4617 = add i64 %4616, -44
  %4618 = add i64 %4615, 4
  store i64 %4618, i64* %3, align 8
  %4619 = inttoptr i64 %4617 to i32*
  %4620 = load i32, i32* %4619, align 4
  %4621 = add i32 %4620, -16
  %4622 = icmp ult i32 %4620, 16
  %4623 = zext i1 %4622 to i8
  store i8 %4623, i8* %29, align 1
  %4624 = and i32 %4621, 255
  %4625 = tail call i32 @llvm.ctpop.i32(i32 %4624)
  %4626 = trunc i32 %4625 to i8
  %4627 = and i8 %4626, 1
  %4628 = xor i8 %4627, 1
  store i8 %4628, i8* %36, align 1
  %4629 = xor i32 %4620, 16
  %4630 = xor i32 %4629, %4621
  %4631 = lshr i32 %4630, 4
  %4632 = trunc i32 %4631 to i8
  %4633 = and i8 %4632, 1
  store i8 %4633, i8* %42, align 1
  %4634 = icmp eq i32 %4621, 0
  %4635 = zext i1 %4634 to i8
  store i8 %4635, i8* %45, align 1
  %4636 = lshr i32 %4621, 31
  %4637 = trunc i32 %4636 to i8
  store i8 %4637, i8* %48, align 1
  %4638 = lshr i32 %4620, 31
  %4639 = xor i32 %4636, %4638
  %4640 = add nuw nsw i32 %4639, %4638
  %4641 = icmp eq i32 %4640, 2
  %4642 = zext i1 %4641 to i8
  store i8 %4642, i8* %54, align 1
  %4643 = icmp ne i8 %4637, 0
  %4644 = xor i1 %4643, %4641
  %.v250 = select i1 %4644, i64 10, i64 215
  %4645 = add i64 %4615, %.v250
  store i64 %4645, i64* %3, align 8
  br i1 %4644, label %block_48a6aa, label %block_.L_48a777

block_48a6aa:                                     ; preds = %block_.L_48a6a0
  %4646 = add i64 %4616, -48
  %4647 = add i64 %4645, 7
  store i64 %4647, i64* %3, align 8
  %4648 = inttoptr i64 %4646 to i32*
  store i32 0, i32* %4648, align 4
  %.pre197 = load i64, i64* %3, align 8
  br label %block_.L_48a6b1

block_.L_48a6b1:                                  ; preds = %block_.L_48a751, %block_48a6aa
  %4649 = phi i64 [ %4897, %block_.L_48a751 ], [ %.pre197, %block_48a6aa ]
  %4650 = load i64, i64* %RBP.i, align 8
  %4651 = add i64 %4650, -48
  %4652 = add i64 %4649, 4
  store i64 %4652, i64* %3, align 8
  %4653 = inttoptr i64 %4651 to i32*
  %4654 = load i32, i32* %4653, align 4
  %4655 = add i32 %4654, -16
  %4656 = icmp ult i32 %4654, 16
  %4657 = zext i1 %4656 to i8
  store i8 %4657, i8* %29, align 1
  %4658 = and i32 %4655, 255
  %4659 = tail call i32 @llvm.ctpop.i32(i32 %4658)
  %4660 = trunc i32 %4659 to i8
  %4661 = and i8 %4660, 1
  %4662 = xor i8 %4661, 1
  store i8 %4662, i8* %36, align 1
  %4663 = xor i32 %4654, 16
  %4664 = xor i32 %4663, %4655
  %4665 = lshr i32 %4664, 4
  %4666 = trunc i32 %4665 to i8
  %4667 = and i8 %4666, 1
  store i8 %4667, i8* %42, align 1
  %4668 = icmp eq i32 %4655, 0
  %4669 = zext i1 %4668 to i8
  store i8 %4669, i8* %45, align 1
  %4670 = lshr i32 %4655, 31
  %4671 = trunc i32 %4670 to i8
  store i8 %4671, i8* %48, align 1
  %4672 = lshr i32 %4654, 31
  %4673 = xor i32 %4670, %4672
  %4674 = add nuw nsw i32 %4673, %4672
  %4675 = icmp eq i32 %4674, 2
  %4676 = zext i1 %4675 to i8
  store i8 %4676, i8* %54, align 1
  %4677 = icmp ne i8 %4671, 0
  %4678 = xor i1 %4677, %4675
  %.v219 = select i1 %4678, i64 10, i64 179
  %4679 = add i64 %4649, %.v219
  store i64 %4679, i64* %3, align 8
  br i1 %4678, label %block_48a6bb, label %block_.L_48a764

block_48a6bb:                                     ; preds = %block_.L_48a6b1
  %4680 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*), align 8
  store i64 %4680, i64* %RAX.i1963.phi.trans.insert, align 8
  %4681 = add i64 %4680, 72724
  %4682 = add i64 %4679, 15
  store i64 %4682, i64* %3, align 8
  %4683 = inttoptr i64 %4681 to i32*
  %4684 = load i32, i32* %4683, align 4
  store i8 0, i8* %29, align 1
  %4685 = and i32 %4684, 255
  %4686 = tail call i32 @llvm.ctpop.i32(i32 %4685)
  %4687 = trunc i32 %4686 to i8
  %4688 = and i8 %4687, 1
  %4689 = xor i8 %4688, 1
  store i8 %4689, i8* %36, align 1
  store i8 0, i8* %42, align 1
  %4690 = icmp eq i32 %4684, 0
  %4691 = zext i1 %4690 to i8
  store i8 %4691, i8* %45, align 1
  %4692 = lshr i32 %4684, 31
  %4693 = trunc i32 %4692 to i8
  store i8 %4693, i8* %48, align 1
  store i8 0, i8* %54, align 1
  %.v251 = select i1 %4690, i64 21, i64 118
  %4694 = add i64 %4679, %.v251
  %4695 = add i64 %4694, 10
  store i64 %4695, i64* %3, align 8
  br i1 %4690, label %block_48a6d0, label %block_.L_48a731

block_48a6d0:                                     ; preds = %block_48a6bb
  store i64 ptrtoint (%G__0x6f7ea0_type* @G__0x6f7ea0 to i64), i64* %RAX.i1963.phi.trans.insert, align 8
  %4696 = add i64 %4650, -44
  %4697 = add i64 %4694, 14
  store i64 %4697, i64* %3, align 8
  %4698 = inttoptr i64 %4696 to i32*
  %4699 = load i32, i32* %4698, align 4
  %4700 = sext i32 %4699 to i64
  %4701 = shl nsw i64 %4700, 5
  store i64 %4701, i64* %RCX.i2011, align 8
  %4702 = add i64 %4701, ptrtoint (%G__0x6f7ea0_type* @G__0x6f7ea0 to i64)
  store i64 %4702, i64* %RAX.i1963.phi.trans.insert, align 8
  %4703 = icmp ult i64 %4702, ptrtoint (%G__0x6f7ea0_type* @G__0x6f7ea0 to i64)
  %4704 = icmp ult i64 %4702, %4701
  %4705 = or i1 %4703, %4704
  %4706 = zext i1 %4705 to i8
  store i8 %4706, i8* %29, align 1
  %4707 = trunc i64 %4702 to i32
  %4708 = and i32 %4707, 248
  %4709 = tail call i32 @llvm.ctpop.i32(i32 %4708)
  %4710 = trunc i32 %4709 to i8
  %4711 = and i8 %4710, 1
  %4712 = xor i8 %4711, 1
  store i8 %4712, i8* %36, align 1
  %4713 = xor i64 %4702, ptrtoint (%G__0x6f7ea0_type* @G__0x6f7ea0 to i64)
  %4714 = lshr i64 %4713, 4
  %4715 = trunc i64 %4714 to i8
  %4716 = and i8 %4715, 1
  store i8 %4716, i8* %42, align 1
  %4717 = icmp eq i64 %4702, 0
  %4718 = zext i1 %4717 to i8
  store i8 %4718, i8* %45, align 1
  %4719 = lshr i64 %4702, 63
  %4720 = trunc i64 %4719 to i8
  store i8 %4720, i8* %48, align 1
  %4721 = lshr i64 %4700, 58
  %4722 = and i64 %4721, 1
  %4723 = xor i64 %4719, lshr (i64 ptrtoint (%G__0x6f7ea0_type* @G__0x6f7ea0 to i64), i64 63)
  %4724 = xor i64 %4719, %4722
  %4725 = add nuw nsw i64 %4723, %4724
  %4726 = icmp eq i64 %4725, 2
  %4727 = zext i1 %4726 to i8
  store i8 %4727, i8* %54, align 1
  %4728 = add i64 %4694, 25
  store i64 %4728, i64* %3, align 8
  %4729 = load i32, i32* %4653, align 4
  %4730 = sext i32 %4729 to i64
  store i64 %4730, i64* %RCX.i2011, align 8
  %4731 = shl nsw i64 %4730, 1
  %4732 = add i64 %4731, %4702
  %4733 = add i64 %4694, 29
  store i64 %4733, i64* %3, align 8
  %4734 = inttoptr i64 %4732 to i16*
  %4735 = load i16, i16* %4734, align 2
  store i16 %4735, i16* %DX.i416, align 2
  %4736 = load i64, i64* bitcast (%G_0x70fcf0_type* @G_0x70fcf0 to i64*), align 8
  store i64 %4736, i64* %RAX.i1963.phi.trans.insert, align 8
  %4737 = add i64 %4736, 6424
  %4738 = add i64 %4694, 44
  store i64 %4738, i64* %3, align 8
  %4739 = inttoptr i64 %4737 to i64*
  %4740 = load i64, i64* %4739, align 8
  store i64 %4740, i64* %RAX.i1963.phi.trans.insert, align 8
  store i64 %4680, i64* %RCX.i2011, align 8
  %4741 = add i64 %4680, 156
  %4742 = add i64 %4694, 58
  store i64 %4742, i64* %3, align 8
  %4743 = inttoptr i64 %4741 to i32*
  %4744 = load i32, i32* %4743, align 4
  %4745 = zext i32 %4744 to i64
  store i64 %4745, i64* %RSI.i408, align 8
  %4746 = add i64 %4694, 61
  store i64 %4746, i64* %3, align 8
  %4747 = load i32, i32* %4698, align 4
  %4748 = add i32 %4747, %4744
  %4749 = zext i32 %4748 to i64
  store i64 %4749, i64* %RSI.i408, align 8
  %4750 = icmp ult i32 %4748, %4744
  %4751 = icmp ult i32 %4748, %4747
  %4752 = or i1 %4750, %4751
  %4753 = zext i1 %4752 to i8
  store i8 %4753, i8* %29, align 1
  %4754 = and i32 %4748, 255
  %4755 = tail call i32 @llvm.ctpop.i32(i32 %4754)
  %4756 = trunc i32 %4755 to i8
  %4757 = and i8 %4756, 1
  %4758 = xor i8 %4757, 1
  store i8 %4758, i8* %36, align 1
  %4759 = xor i32 %4747, %4744
  %4760 = xor i32 %4759, %4748
  %4761 = lshr i32 %4760, 4
  %4762 = trunc i32 %4761 to i8
  %4763 = and i8 %4762, 1
  store i8 %4763, i8* %42, align 1
  %4764 = icmp eq i32 %4748, 0
  %4765 = zext i1 %4764 to i8
  store i8 %4765, i8* %45, align 1
  %4766 = lshr i32 %4748, 31
  %4767 = trunc i32 %4766 to i8
  store i8 %4767, i8* %48, align 1
  %4768 = lshr i32 %4744, 31
  %4769 = lshr i32 %4747, 31
  %4770 = xor i32 %4766, %4768
  %4771 = xor i32 %4766, %4769
  %4772 = add nuw nsw i32 %4770, %4771
  %4773 = icmp eq i32 %4772, 2
  %4774 = zext i1 %4773 to i8
  store i8 %4774, i8* %54, align 1
  %4775 = sext i32 %4748 to i64
  store i64 %4775, i64* %RCX.i2011, align 8
  %4776 = shl nsw i64 %4775, 3
  %4777 = add i64 %4740, %4776
  %4778 = add i64 %4694, 68
  store i64 %4778, i64* %3, align 8
  %4779 = inttoptr i64 %4777 to i64*
  %4780 = load i64, i64* %4779, align 8
  store i64 %4780, i64* %RAX.i1963.phi.trans.insert, align 8
  %4781 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*), align 8
  store i64 %4781, i64* %RCX.i2011, align 8
  %4782 = add i64 %4781, 152
  %4783 = add i64 %4694, 82
  store i64 %4783, i64* %3, align 8
  %4784 = inttoptr i64 %4782 to i32*
  %4785 = load i32, i32* %4784, align 4
  %4786 = zext i32 %4785 to i64
  store i64 %4786, i64* %RSI.i408, align 8
  %4787 = load i64, i64* %RBP.i, align 8
  %4788 = add i64 %4787, -48
  %4789 = add i64 %4694, 85
  store i64 %4789, i64* %3, align 8
  %4790 = inttoptr i64 %4788 to i32*
  %4791 = load i32, i32* %4790, align 4
  %4792 = add i32 %4791, %4785
  %4793 = zext i32 %4792 to i64
  store i64 %4793, i64* %RSI.i408, align 8
  %4794 = icmp ult i32 %4792, %4785
  %4795 = icmp ult i32 %4792, %4791
  %4796 = or i1 %4794, %4795
  %4797 = zext i1 %4796 to i8
  store i8 %4797, i8* %29, align 1
  %4798 = and i32 %4792, 255
  %4799 = tail call i32 @llvm.ctpop.i32(i32 %4798)
  %4800 = trunc i32 %4799 to i8
  %4801 = and i8 %4800, 1
  %4802 = xor i8 %4801, 1
  store i8 %4802, i8* %36, align 1
  %4803 = xor i32 %4791, %4785
  %4804 = xor i32 %4803, %4792
  %4805 = lshr i32 %4804, 4
  %4806 = trunc i32 %4805 to i8
  %4807 = and i8 %4806, 1
  store i8 %4807, i8* %42, align 1
  %4808 = icmp eq i32 %4792, 0
  %4809 = zext i1 %4808 to i8
  store i8 %4809, i8* %45, align 1
  %4810 = lshr i32 %4792, 31
  %4811 = trunc i32 %4810 to i8
  store i8 %4811, i8* %48, align 1
  %4812 = lshr i32 %4785, 31
  %4813 = lshr i32 %4791, 31
  %4814 = xor i32 %4810, %4812
  %4815 = xor i32 %4810, %4813
  %4816 = add nuw nsw i32 %4814, %4815
  %4817 = icmp eq i32 %4816, 2
  %4818 = zext i1 %4817 to i8
  store i8 %4818, i8* %54, align 1
  %4819 = sext i32 %4792 to i64
  store i64 %4819, i64* %RCX.i2011, align 8
  %4820 = shl nsw i64 %4819, 1
  %4821 = add i64 %4780, %4820
  %4822 = load i16, i16* %DX.i416, align 2
  %4823 = add i64 %4694, 92
  store i64 %4823, i64* %3, align 8
  %4824 = inttoptr i64 %4821 to i16*
  store i16 %4822, i16* %4824, align 2
  %4825 = load i64, i64* %3, align 8
  %4826 = add i64 %4825, 37
  store i64 %4826, i64* %3, align 8
  br label %block_.L_48a751

block_.L_48a731:                                  ; preds = %block_48a6bb
  store i64 ptrtoint (%G__0x722ff0_type* @G__0x722ff0 to i64), i64* %RAX.i1963.phi.trans.insert, align 8
  %4827 = add i64 %4694, 14
  store i64 %4827, i64* %3, align 8
  %4828 = load i32, i32* %4653, align 4
  %4829 = sext i32 %4828 to i64
  %4830 = shl nsw i64 %4829, 6
  store i64 %4830, i64* %RCX.i2011, align 8
  %4831 = add i64 %4830, ptrtoint (%G__0x722ff0_type* @G__0x722ff0 to i64)
  store i64 %4831, i64* %RAX.i1963.phi.trans.insert, align 8
  %4832 = icmp ult i64 %4831, ptrtoint (%G__0x722ff0_type* @G__0x722ff0 to i64)
  %4833 = icmp ult i64 %4831, %4830
  %4834 = or i1 %4832, %4833
  %4835 = zext i1 %4834 to i8
  store i8 %4835, i8* %29, align 1
  %4836 = trunc i64 %4831 to i32
  %4837 = and i32 %4836, 248
  %4838 = tail call i32 @llvm.ctpop.i32(i32 %4837)
  %4839 = trunc i32 %4838 to i8
  %4840 = and i8 %4839, 1
  %4841 = xor i8 %4840, 1
  store i8 %4841, i8* %36, align 1
  %4842 = xor i64 %4831, ptrtoint (%G__0x722ff0_type* @G__0x722ff0 to i64)
  %4843 = lshr i64 %4842, 4
  %4844 = trunc i64 %4843 to i8
  %4845 = and i8 %4844, 1
  store i8 %4845, i8* %42, align 1
  %4846 = icmp eq i64 %4831, 0
  %4847 = zext i1 %4846 to i8
  store i8 %4847, i8* %45, align 1
  %4848 = lshr i64 %4831, 63
  %4849 = trunc i64 %4848 to i8
  store i8 %4849, i8* %48, align 1
  %4850 = lshr i64 %4829, 57
  %4851 = and i64 %4850, 1
  %4852 = xor i64 %4848, lshr (i64 ptrtoint (%G__0x722ff0_type* @G__0x722ff0 to i64), i64 63)
  %4853 = xor i64 %4848, %4851
  %4854 = add nuw nsw i64 %4852, %4853
  %4855 = icmp eq i64 %4854, 2
  %4856 = zext i1 %4855 to i8
  store i8 %4856, i8* %54, align 1
  %4857 = add i64 %4650, -44
  %4858 = add i64 %4694, 25
  store i64 %4858, i64* %3, align 8
  %4859 = inttoptr i64 %4857 to i32*
  %4860 = load i32, i32* %4859, align 4
  %4861 = sext i32 %4860 to i64
  store i64 %4861, i64* %RCX.i2011, align 8
  %4862 = shl nsw i64 %4861, 2
  %4863 = add i64 %4862, %4831
  %4864 = add i64 %4694, 32
  store i64 %4864, i64* %3, align 8
  %4865 = inttoptr i64 %4863 to i32*
  store i32 0, i32* %4865, align 4
  %.pre198 = load i64, i64* %3, align 8
  br label %block_.L_48a751

block_.L_48a751:                                  ; preds = %block_.L_48a731, %block_48a6d0
  %4866 = phi i64 [ %.pre198, %block_.L_48a731 ], [ %4826, %block_48a6d0 ]
  %4867 = load i64, i64* %RBP.i, align 8
  %4868 = add i64 %4867, -48
  %4869 = add i64 %4866, 8
  store i64 %4869, i64* %3, align 8
  %4870 = inttoptr i64 %4868 to i32*
  %4871 = load i32, i32* %4870, align 4
  %4872 = add i32 %4871, 1
  %4873 = zext i32 %4872 to i64
  store i64 %4873, i64* %RAX.i1963.phi.trans.insert, align 8
  %4874 = icmp eq i32 %4871, -1
  %4875 = icmp eq i32 %4872, 0
  %4876 = or i1 %4874, %4875
  %4877 = zext i1 %4876 to i8
  store i8 %4877, i8* %29, align 1
  %4878 = and i32 %4872, 255
  %4879 = tail call i32 @llvm.ctpop.i32(i32 %4878)
  %4880 = trunc i32 %4879 to i8
  %4881 = and i8 %4880, 1
  %4882 = xor i8 %4881, 1
  store i8 %4882, i8* %36, align 1
  %4883 = xor i32 %4872, %4871
  %4884 = lshr i32 %4883, 4
  %4885 = trunc i32 %4884 to i8
  %4886 = and i8 %4885, 1
  store i8 %4886, i8* %42, align 1
  %4887 = zext i1 %4875 to i8
  store i8 %4887, i8* %45, align 1
  %4888 = lshr i32 %4872, 31
  %4889 = trunc i32 %4888 to i8
  store i8 %4889, i8* %48, align 1
  %4890 = lshr i32 %4871, 31
  %4891 = xor i32 %4888, %4890
  %4892 = add nuw nsw i32 %4891, %4888
  %4893 = icmp eq i32 %4892, 2
  %4894 = zext i1 %4893 to i8
  store i8 %4894, i8* %54, align 1
  %4895 = add i64 %4866, 14
  store i64 %4895, i64* %3, align 8
  store i32 %4872, i32* %4870, align 4
  %4896 = load i64, i64* %3, align 8
  %4897 = add i64 %4896, -174
  store i64 %4897, i64* %3, align 8
  br label %block_.L_48a6b1

block_.L_48a764:                                  ; preds = %block_.L_48a6b1
  %4898 = add i64 %4650, -44
  %4899 = add i64 %4679, 8
  store i64 %4899, i64* %3, align 8
  %4900 = inttoptr i64 %4898 to i32*
  %4901 = load i32, i32* %4900, align 4
  %4902 = add i32 %4901, 1
  %4903 = zext i32 %4902 to i64
  store i64 %4903, i64* %RAX.i1963.phi.trans.insert, align 8
  %4904 = icmp eq i32 %4901, -1
  %4905 = icmp eq i32 %4902, 0
  %4906 = or i1 %4904, %4905
  %4907 = zext i1 %4906 to i8
  store i8 %4907, i8* %29, align 1
  %4908 = and i32 %4902, 255
  %4909 = tail call i32 @llvm.ctpop.i32(i32 %4908)
  %4910 = trunc i32 %4909 to i8
  %4911 = and i8 %4910, 1
  %4912 = xor i8 %4911, 1
  store i8 %4912, i8* %36, align 1
  %4913 = xor i32 %4902, %4901
  %4914 = lshr i32 %4913, 4
  %4915 = trunc i32 %4914 to i8
  %4916 = and i8 %4915, 1
  store i8 %4916, i8* %42, align 1
  %4917 = zext i1 %4905 to i8
  store i8 %4917, i8* %45, align 1
  %4918 = lshr i32 %4902, 31
  %4919 = trunc i32 %4918 to i8
  store i8 %4919, i8* %48, align 1
  %4920 = lshr i32 %4901, 31
  %4921 = xor i32 %4918, %4920
  %4922 = add nuw nsw i32 %4921, %4918
  %4923 = icmp eq i32 %4922, 2
  %4924 = zext i1 %4923 to i8
  store i8 %4924, i8* %54, align 1
  %4925 = add i64 %4679, 14
  store i64 %4925, i64* %3, align 8
  store i32 %4902, i32* %4900, align 4
  %4926 = load i64, i64* %3, align 8
  %4927 = add i64 %4926, -210
  store i64 %4927, i64* %3, align 8
  br label %block_.L_48a6a0

block_.L_48a777:                                  ; preds = %block_.L_48a6a0
  %4928 = add i64 %4645, 292
  br label %block_.L_48a89b

block_.L_48a77c:                                  ; preds = %block_48a667, %block_.L_48a625, %block_48a633
  %4929 = phi i64 [ %4592, %block_48a667 ], [ %4557, %block_48a633 ], [ %4531, %block_.L_48a625 ]
  %4930 = load i32, i32* bitcast (%G_0x70d1a8_type* @G_0x70d1a8 to i32*), align 8
  %4931 = zext i32 %4930 to i64
  store i64 %4931, i64* %RAX.i1963.phi.trans.insert, align 8
  %4932 = add i64 %4167, -32
  %4933 = add i64 %4929, 11
  store i64 %4933, i64* %3, align 8
  %4934 = inttoptr i64 %4932 to i64*
  %4935 = load i64, i64* %4934, align 8
  %4936 = add i64 %4935, 460
  %4937 = add i64 %4929, 17
  store i64 %4937, i64* %3, align 8
  %4938 = inttoptr i64 %4936 to i32*
  store i32 %4930, i32* %4938, align 4
  %4939 = load i64, i64* %3, align 8
  %4940 = load i32, i32* bitcast (%G_0x726848_type* @G_0x726848 to i32*), align 8
  %4941 = sext i32 %4940 to i64
  store i64 %4941, i64* %RCX.i2011, align 8
  %4942 = load i64, i64* %RBP.i, align 8
  %4943 = add i64 %4942, -32
  %4944 = add i64 %4939, 12
  store i64 %4944, i64* %3, align 8
  %4945 = inttoptr i64 %4943 to i64*
  %4946 = load i64, i64* %4945, align 8
  store i64 %4946, i64* %RDX.i598, align 8
  %4947 = add i64 %4946, 464
  %4948 = add i64 %4939, 19
  store i64 %4948, i64* %3, align 8
  %4949 = inttoptr i64 %4947 to i64*
  store i64 %4941, i64* %4949, align 8
  %4950 = load i64, i64* %RBP.i, align 8
  %4951 = add i64 %4950, -44
  %4952 = load i64, i64* %3, align 8
  %4953 = add i64 %4952, 7
  store i64 %4953, i64* %3, align 8
  %4954 = inttoptr i64 %4951 to i32*
  store i32 0, i32* %4954, align 4
  %RSI.i247 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %DX.i297 = bitcast %union.anon* %4165 to i16*
  %.pre199 = load i64, i64* %3, align 8
  br label %block_.L_48a7a7

block_.L_48a7a7:                                  ; preds = %block_.L_48a883, %block_.L_48a77c
  %4955 = phi i64 [ %5324, %block_.L_48a883 ], [ %.pre199, %block_.L_48a77c ]
  %4956 = load i64, i64* %RBP.i, align 8
  %4957 = add i64 %4956, -44
  %4958 = add i64 %4955, 4
  store i64 %4958, i64* %3, align 8
  %4959 = inttoptr i64 %4957 to i32*
  %4960 = load i32, i32* %4959, align 4
  %4961 = add i32 %4960, -16
  %4962 = icmp ult i32 %4960, 16
  %4963 = zext i1 %4962 to i8
  store i8 %4963, i8* %29, align 1
  %4964 = and i32 %4961, 255
  %4965 = tail call i32 @llvm.ctpop.i32(i32 %4964)
  %4966 = trunc i32 %4965 to i8
  %4967 = and i8 %4966, 1
  %4968 = xor i8 %4967, 1
  store i8 %4968, i8* %36, align 1
  %4969 = xor i32 %4960, 16
  %4970 = xor i32 %4969, %4961
  %4971 = lshr i32 %4970, 4
  %4972 = trunc i32 %4971 to i8
  %4973 = and i8 %4972, 1
  store i8 %4973, i8* %42, align 1
  %4974 = icmp eq i32 %4961, 0
  %4975 = zext i1 %4974 to i8
  store i8 %4975, i8* %45, align 1
  %4976 = lshr i32 %4961, 31
  %4977 = trunc i32 %4976 to i8
  store i8 %4977, i8* %48, align 1
  %4978 = lshr i32 %4960, 31
  %4979 = xor i32 %4976, %4978
  %4980 = add nuw nsw i32 %4979, %4978
  %4981 = icmp eq i32 %4980, 2
  %4982 = zext i1 %4981 to i8
  store i8 %4982, i8* %54, align 1
  %4983 = icmp ne i8 %4977, 0
  %4984 = xor i1 %4983, %4981
  %.v245 = select i1 %4984, i64 10, i64 239
  %4985 = add i64 %4955, %.v245
  store i64 %4985, i64* %3, align 8
  br i1 %4984, label %block_48a7b1, label %block_.L_48a896

block_48a7b1:                                     ; preds = %block_.L_48a7a7
  %4986 = add i64 %4956, -48
  %4987 = add i64 %4985, 7
  store i64 %4987, i64* %3, align 8
  %4988 = inttoptr i64 %4986 to i32*
  store i32 0, i32* %4988, align 4
  %.pre202 = load i64, i64* %3, align 8
  br label %block_.L_48a7b8

block_.L_48a7b8:                                  ; preds = %block_.L_48a870, %block_48a7b1
  %4989 = phi i64 [ %5294, %block_.L_48a870 ], [ %.pre202, %block_48a7b1 ]
  %4990 = load i64, i64* %RBP.i, align 8
  %4991 = add i64 %4990, -48
  %4992 = add i64 %4989, 4
  store i64 %4992, i64* %3, align 8
  %4993 = inttoptr i64 %4991 to i32*
  %4994 = load i32, i32* %4993, align 4
  %4995 = add i32 %4994, -16
  %4996 = icmp ult i32 %4994, 16
  %4997 = zext i1 %4996 to i8
  store i8 %4997, i8* %29, align 1
  %4998 = and i32 %4995, 255
  %4999 = tail call i32 @llvm.ctpop.i32(i32 %4998)
  %5000 = trunc i32 %4999 to i8
  %5001 = and i8 %5000, 1
  %5002 = xor i8 %5001, 1
  store i8 %5002, i8* %36, align 1
  %5003 = xor i32 %4994, 16
  %5004 = xor i32 %5003, %4995
  %5005 = lshr i32 %5004, 4
  %5006 = trunc i32 %5005 to i8
  %5007 = and i8 %5006, 1
  store i8 %5007, i8* %42, align 1
  %5008 = icmp eq i32 %4995, 0
  %5009 = zext i1 %5008 to i8
  store i8 %5009, i8* %45, align 1
  %5010 = lshr i32 %4995, 31
  %5011 = trunc i32 %5010 to i8
  store i8 %5011, i8* %48, align 1
  %5012 = lshr i32 %4994, 31
  %5013 = xor i32 %5010, %5012
  %5014 = add nuw nsw i32 %5013, %5012
  %5015 = icmp eq i32 %5014, 2
  %5016 = zext i1 %5015 to i8
  store i8 %5016, i8* %54, align 1
  %5017 = icmp ne i8 %5011, 0
  %5018 = xor i1 %5017, %5015
  %.v220 = select i1 %5018, i64 10, i64 203
  %5019 = add i64 %4989, %.v220
  store i64 %5019, i64* %3, align 8
  br i1 %5018, label %block_48a7c2, label %block_.L_48a883

block_48a7c2:                                     ; preds = %block_.L_48a7b8
  %5020 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*), align 8
  store i64 %5020, i64* %RAX.i1963.phi.trans.insert, align 8
  %5021 = add i64 %5020, 72724
  %5022 = add i64 %5019, 15
  store i64 %5022, i64* %3, align 8
  %5023 = inttoptr i64 %5021 to i32*
  %5024 = load i32, i32* %5023, align 4
  store i8 0, i8* %29, align 1
  %5025 = and i32 %5024, 255
  %5026 = tail call i32 @llvm.ctpop.i32(i32 %5025)
  %5027 = trunc i32 %5026 to i8
  %5028 = and i8 %5027, 1
  %5029 = xor i8 %5028, 1
  store i8 %5029, i8* %36, align 1
  store i8 0, i8* %42, align 1
  %5030 = icmp eq i32 %5024, 0
  %5031 = zext i1 %5030 to i8
  store i8 %5031, i8* %45, align 1
  %5032 = lshr i32 %5024, 31
  %5033 = trunc i32 %5032 to i8
  store i8 %5033, i8* %48, align 1
  store i8 0, i8* %54, align 1
  %.v247 = select i1 %5030, i64 21, i64 118
  %5034 = add i64 %5019, %.v247
  %5035 = add i64 %5034, 10
  store i64 %5035, i64* %3, align 8
  br i1 %5030, label %block_48a7d7, label %block_.L_48a838

block_48a7d7:                                     ; preds = %block_48a7c2
  store i64 ptrtoint (%G__0x723430_type* @G__0x723430 to i64), i64* %RAX.i1963.phi.trans.insert, align 8
  %5036 = add i64 %4990, -44
  %5037 = add i64 %5034, 14
  store i64 %5037, i64* %3, align 8
  %5038 = inttoptr i64 %5036 to i32*
  %5039 = load i32, i32* %5038, align 4
  %5040 = sext i32 %5039 to i64
  %5041 = shl nsw i64 %5040, 5
  store i64 %5041, i64* %RCX.i2011, align 8
  %5042 = add i64 %5041, ptrtoint (%G__0x723430_type* @G__0x723430 to i64)
  store i64 %5042, i64* %RAX.i1963.phi.trans.insert, align 8
  %5043 = icmp ult i64 %5042, ptrtoint (%G__0x723430_type* @G__0x723430 to i64)
  %5044 = icmp ult i64 %5042, %5041
  %5045 = or i1 %5043, %5044
  %5046 = zext i1 %5045 to i8
  store i8 %5046, i8* %29, align 1
  %5047 = trunc i64 %5042 to i32
  %5048 = and i32 %5047, 248
  %5049 = tail call i32 @llvm.ctpop.i32(i32 %5048)
  %5050 = trunc i32 %5049 to i8
  %5051 = and i8 %5050, 1
  %5052 = xor i8 %5051, 1
  store i8 %5052, i8* %36, align 1
  %5053 = xor i64 %5042, ptrtoint (%G__0x723430_type* @G__0x723430 to i64)
  %5054 = lshr i64 %5053, 4
  %5055 = trunc i64 %5054 to i8
  %5056 = and i8 %5055, 1
  store i8 %5056, i8* %42, align 1
  %5057 = icmp eq i64 %5042, 0
  %5058 = zext i1 %5057 to i8
  store i8 %5058, i8* %45, align 1
  %5059 = lshr i64 %5042, 63
  %5060 = trunc i64 %5059 to i8
  store i8 %5060, i8* %48, align 1
  %5061 = lshr i64 %5040, 58
  %5062 = and i64 %5061, 1
  %5063 = xor i64 %5059, lshr (i64 ptrtoint (%G__0x723430_type* @G__0x723430 to i64), i64 63)
  %5064 = xor i64 %5059, %5062
  %5065 = add nuw nsw i64 %5063, %5064
  %5066 = icmp eq i64 %5065, 2
  %5067 = zext i1 %5066 to i8
  store i8 %5067, i8* %54, align 1
  %5068 = add i64 %5034, 25
  store i64 %5068, i64* %3, align 8
  %5069 = load i32, i32* %4993, align 4
  %5070 = sext i32 %5069 to i64
  store i64 %5070, i64* %RCX.i2011, align 8
  %5071 = shl nsw i64 %5070, 1
  %5072 = add i64 %5071, %5042
  %5073 = add i64 %5034, 29
  store i64 %5073, i64* %3, align 8
  %5074 = inttoptr i64 %5072 to i16*
  %5075 = load i16, i16* %5074, align 2
  store i16 %5075, i16* %DX.i297, align 2
  %5076 = load i64, i64* bitcast (%G_0x70fcf0_type* @G_0x70fcf0 to i64*), align 8
  store i64 %5076, i64* %RAX.i1963.phi.trans.insert, align 8
  %5077 = add i64 %5076, 6424
  %5078 = add i64 %5034, 44
  store i64 %5078, i64* %3, align 8
  %5079 = inttoptr i64 %5077 to i64*
  %5080 = load i64, i64* %5079, align 8
  store i64 %5080, i64* %RAX.i1963.phi.trans.insert, align 8
  store i64 %5020, i64* %RCX.i2011, align 8
  %5081 = add i64 %5020, 156
  %5082 = add i64 %5034, 58
  store i64 %5082, i64* %3, align 8
  %5083 = inttoptr i64 %5081 to i32*
  %5084 = load i32, i32* %5083, align 4
  %5085 = zext i32 %5084 to i64
  store i64 %5085, i64* %RSI.i247, align 8
  %5086 = add i64 %5034, 61
  store i64 %5086, i64* %3, align 8
  %5087 = load i32, i32* %5038, align 4
  %5088 = add i32 %5087, %5084
  %5089 = zext i32 %5088 to i64
  store i64 %5089, i64* %RSI.i247, align 8
  %5090 = icmp ult i32 %5088, %5084
  %5091 = icmp ult i32 %5088, %5087
  %5092 = or i1 %5090, %5091
  %5093 = zext i1 %5092 to i8
  store i8 %5093, i8* %29, align 1
  %5094 = and i32 %5088, 255
  %5095 = tail call i32 @llvm.ctpop.i32(i32 %5094)
  %5096 = trunc i32 %5095 to i8
  %5097 = and i8 %5096, 1
  %5098 = xor i8 %5097, 1
  store i8 %5098, i8* %36, align 1
  %5099 = xor i32 %5087, %5084
  %5100 = xor i32 %5099, %5088
  %5101 = lshr i32 %5100, 4
  %5102 = trunc i32 %5101 to i8
  %5103 = and i8 %5102, 1
  store i8 %5103, i8* %42, align 1
  %5104 = icmp eq i32 %5088, 0
  %5105 = zext i1 %5104 to i8
  store i8 %5105, i8* %45, align 1
  %5106 = lshr i32 %5088, 31
  %5107 = trunc i32 %5106 to i8
  store i8 %5107, i8* %48, align 1
  %5108 = lshr i32 %5084, 31
  %5109 = lshr i32 %5087, 31
  %5110 = xor i32 %5106, %5108
  %5111 = xor i32 %5106, %5109
  %5112 = add nuw nsw i32 %5110, %5111
  %5113 = icmp eq i32 %5112, 2
  %5114 = zext i1 %5113 to i8
  store i8 %5114, i8* %54, align 1
  %5115 = sext i32 %5088 to i64
  store i64 %5115, i64* %RCX.i2011, align 8
  %5116 = shl nsw i64 %5115, 3
  %5117 = add i64 %5080, %5116
  %5118 = add i64 %5034, 68
  store i64 %5118, i64* %3, align 8
  %5119 = inttoptr i64 %5117 to i64*
  %5120 = load i64, i64* %5119, align 8
  store i64 %5120, i64* %RAX.i1963.phi.trans.insert, align 8
  %5121 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*), align 8
  store i64 %5121, i64* %RCX.i2011, align 8
  %5122 = add i64 %5121, 152
  %5123 = add i64 %5034, 82
  store i64 %5123, i64* %3, align 8
  %5124 = inttoptr i64 %5122 to i32*
  %5125 = load i32, i32* %5124, align 4
  %5126 = zext i32 %5125 to i64
  store i64 %5126, i64* %RSI.i247, align 8
  %5127 = load i64, i64* %RBP.i, align 8
  %5128 = add i64 %5127, -48
  %5129 = add i64 %5034, 85
  store i64 %5129, i64* %3, align 8
  %5130 = inttoptr i64 %5128 to i32*
  %5131 = load i32, i32* %5130, align 4
  %5132 = add i32 %5131, %5125
  %5133 = zext i32 %5132 to i64
  store i64 %5133, i64* %RSI.i247, align 8
  %5134 = icmp ult i32 %5132, %5125
  %5135 = icmp ult i32 %5132, %5131
  %5136 = or i1 %5134, %5135
  %5137 = zext i1 %5136 to i8
  store i8 %5137, i8* %29, align 1
  %5138 = and i32 %5132, 255
  %5139 = tail call i32 @llvm.ctpop.i32(i32 %5138)
  %5140 = trunc i32 %5139 to i8
  %5141 = and i8 %5140, 1
  %5142 = xor i8 %5141, 1
  store i8 %5142, i8* %36, align 1
  %5143 = xor i32 %5131, %5125
  %5144 = xor i32 %5143, %5132
  %5145 = lshr i32 %5144, 4
  %5146 = trunc i32 %5145 to i8
  %5147 = and i8 %5146, 1
  store i8 %5147, i8* %42, align 1
  %5148 = icmp eq i32 %5132, 0
  %5149 = zext i1 %5148 to i8
  store i8 %5149, i8* %45, align 1
  %5150 = lshr i32 %5132, 31
  %5151 = trunc i32 %5150 to i8
  store i8 %5151, i8* %48, align 1
  %5152 = lshr i32 %5125, 31
  %5153 = lshr i32 %5131, 31
  %5154 = xor i32 %5150, %5152
  %5155 = xor i32 %5150, %5153
  %5156 = add nuw nsw i32 %5154, %5155
  %5157 = icmp eq i32 %5156, 2
  %5158 = zext i1 %5157 to i8
  store i8 %5158, i8* %54, align 1
  %5159 = sext i32 %5132 to i64
  store i64 %5159, i64* %RCX.i2011, align 8
  %5160 = shl nsw i64 %5159, 1
  %5161 = add i64 %5120, %5160
  %5162 = load i16, i16* %DX.i297, align 2
  %5163 = add i64 %5034, 92
  store i64 %5163, i64* %3, align 8
  %5164 = inttoptr i64 %5161 to i16*
  store i16 %5162, i16* %5164, align 2
  %5165 = load i64, i64* %3, align 8
  %5166 = add i64 %5165, 61
  store i64 %5166, i64* %3, align 8
  br label %block_.L_48a870

block_.L_48a838:                                  ; preds = %block_48a7c2
  store i64 ptrtoint (%G__0x722ff0_type* @G__0x722ff0 to i64), i64* %RAX.i1963.phi.trans.insert, align 8
  store i64 ptrtoint (%G__0x6d0290_type* @G__0x6d0290 to i64), i64* %RCX.i2011, align 8
  %5167 = add i64 %5034, 24
  store i64 %5167, i64* %3, align 8
  %5168 = load i32, i32* %4993, align 4
  %5169 = sext i32 %5168 to i64
  %5170 = shl nsw i64 %5169, 6
  store i64 %5170, i64* %RDX.i598, align 8
  %5171 = add i64 %5170, ptrtoint (%G__0x6d0290_type* @G__0x6d0290 to i64)
  store i64 %5171, i64* %RCX.i2011, align 8
  %5172 = icmp ult i64 %5171, ptrtoint (%G__0x6d0290_type* @G__0x6d0290 to i64)
  %5173 = icmp ult i64 %5171, %5170
  %5174 = or i1 %5172, %5173
  %5175 = zext i1 %5174 to i8
  store i8 %5175, i8* %29, align 1
  %5176 = trunc i64 %5171 to i32
  %5177 = and i32 %5176, 248
  %5178 = tail call i32 @llvm.ctpop.i32(i32 %5177)
  %5179 = trunc i32 %5178 to i8
  %5180 = and i8 %5179, 1
  %5181 = xor i8 %5180, 1
  store i8 %5181, i8* %36, align 1
  %5182 = xor i64 %5171, ptrtoint (%G__0x6d0290_type* @G__0x6d0290 to i64)
  %5183 = lshr i64 %5182, 4
  %5184 = trunc i64 %5183 to i8
  %5185 = and i8 %5184, 1
  store i8 %5185, i8* %42, align 1
  %5186 = icmp eq i64 %5171, 0
  %5187 = zext i1 %5186 to i8
  store i8 %5187, i8* %45, align 1
  %5188 = lshr i64 %5171, 63
  %5189 = trunc i64 %5188 to i8
  store i8 %5189, i8* %48, align 1
  %5190 = lshr i64 %5169, 57
  %5191 = and i64 %5190, 1
  %5192 = xor i64 %5188, lshr (i64 ptrtoint (%G__0x6d0290_type* @G__0x6d0290 to i64), i64 63)
  %5193 = xor i64 %5188, %5191
  %5194 = add nuw nsw i64 %5192, %5193
  %5195 = icmp eq i64 %5194, 2
  %5196 = zext i1 %5195 to i8
  store i8 %5196, i8* %54, align 1
  %5197 = add i64 %4990, -44
  %5198 = add i64 %5034, 35
  store i64 %5198, i64* %3, align 8
  %5199 = inttoptr i64 %5197 to i32*
  %5200 = load i32, i32* %5199, align 4
  %5201 = sext i32 %5200 to i64
  store i64 %5201, i64* %RDX.i598, align 8
  %5202 = shl nsw i64 %5201, 2
  %5203 = add i64 %5202, %5171
  %5204 = add i64 %5034, 38
  store i64 %5204, i64* %3, align 8
  %5205 = inttoptr i64 %5203 to i32*
  %5206 = load i32, i32* %5205, align 4
  %5207 = zext i32 %5206 to i64
  store i64 %5207, i64* %RSI.i247, align 8
  %5208 = add i64 %5034, 42
  store i64 %5208, i64* %3, align 8
  %5209 = load i32, i32* %4993, align 4
  %5210 = sext i32 %5209 to i64
  %5211 = add i64 %5034, 46
  store i64 %5211, i64* %3, align 8
  %5212 = shl nsw i64 %5210, 6
  store i64 %5212, i64* %RCX.i2011, align 8
  %.lobit85 = lshr i32 %5209, 31
  %5213 = trunc i32 %.lobit85 to i8
  store i8 %5213, i8* %29, align 1
  %5214 = trunc i64 %5212 to i32
  %5215 = and i32 %5214, 192
  %5216 = tail call i32 @llvm.ctpop.i32(i32 %5215)
  %5217 = trunc i32 %5216 to i8
  %5218 = and i8 %5217, 1
  %5219 = xor i8 %5218, 1
  store i8 %5219, i8* %36, align 1
  store i8 0, i8* %42, align 1
  %5220 = icmp eq i32 %5209, 0
  %5221 = zext i1 %5220 to i8
  store i8 %5221, i8* %45, align 1
  %5222 = lshr i64 %5210, 57
  %5223 = trunc i64 %5222 to i8
  %5224 = and i8 %5223, 1
  store i8 %5224, i8* %48, align 1
  store i8 0, i8* %54, align 1
  %5225 = load i64, i64* %RAX.i1963.phi.trans.insert, align 8
  %5226 = add i64 %5212, %5225
  store i64 %5226, i64* %RAX.i1963.phi.trans.insert, align 8
  %5227 = icmp ult i64 %5226, %5225
  %5228 = icmp ult i64 %5226, %5212
  %5229 = or i1 %5227, %5228
  %5230 = zext i1 %5229 to i8
  store i8 %5230, i8* %29, align 1
  %5231 = trunc i64 %5226 to i32
  %5232 = and i32 %5231, 255
  %5233 = tail call i32 @llvm.ctpop.i32(i32 %5232)
  %5234 = trunc i32 %5233 to i8
  %5235 = and i8 %5234, 1
  %5236 = xor i8 %5235, 1
  store i8 %5236, i8* %36, align 1
  %5237 = xor i64 %5225, %5226
  %5238 = lshr i64 %5237, 4
  %5239 = trunc i64 %5238 to i8
  %5240 = and i8 %5239, 1
  store i8 %5240, i8* %42, align 1
  %5241 = icmp eq i64 %5226, 0
  %5242 = zext i1 %5241 to i8
  store i8 %5242, i8* %45, align 1
  %5243 = lshr i64 %5226, 63
  %5244 = trunc i64 %5243 to i8
  store i8 %5244, i8* %48, align 1
  %5245 = lshr i64 %5225, 63
  %5246 = lshr i64 %5210, 57
  %5247 = and i64 %5246, 1
  %5248 = xor i64 %5243, %5245
  %5249 = xor i64 %5243, %5247
  %5250 = add nuw nsw i64 %5248, %5249
  %5251 = icmp eq i64 %5250, 2
  %5252 = zext i1 %5251 to i8
  store i8 %5252, i8* %54, align 1
  %5253 = load i64, i64* %RBP.i, align 8
  %5254 = add i64 %5253, -44
  %5255 = add i64 %5034, 53
  store i64 %5255, i64* %3, align 8
  %5256 = inttoptr i64 %5254 to i32*
  %5257 = load i32, i32* %5256, align 4
  %5258 = sext i32 %5257 to i64
  store i64 %5258, i64* %RCX.i2011, align 8
  %5259 = shl nsw i64 %5258, 2
  %5260 = add i64 %5259, %5226
  %5261 = add i64 %5034, 56
  store i64 %5261, i64* %3, align 8
  %5262 = inttoptr i64 %5260 to i32*
  store i32 %5206, i32* %5262, align 4
  %.pre203 = load i64, i64* %3, align 8
  br label %block_.L_48a870

block_.L_48a870:                                  ; preds = %block_.L_48a838, %block_48a7d7
  %5263 = phi i64 [ %.pre203, %block_.L_48a838 ], [ %5166, %block_48a7d7 ]
  %5264 = load i64, i64* %RBP.i, align 8
  %5265 = add i64 %5264, -48
  %5266 = add i64 %5263, 8
  store i64 %5266, i64* %3, align 8
  %5267 = inttoptr i64 %5265 to i32*
  %5268 = load i32, i32* %5267, align 4
  %5269 = add i32 %5268, 1
  %5270 = zext i32 %5269 to i64
  store i64 %5270, i64* %RAX.i1963.phi.trans.insert, align 8
  %5271 = icmp eq i32 %5268, -1
  %5272 = icmp eq i32 %5269, 0
  %5273 = or i1 %5271, %5272
  %5274 = zext i1 %5273 to i8
  store i8 %5274, i8* %29, align 1
  %5275 = and i32 %5269, 255
  %5276 = tail call i32 @llvm.ctpop.i32(i32 %5275)
  %5277 = trunc i32 %5276 to i8
  %5278 = and i8 %5277, 1
  %5279 = xor i8 %5278, 1
  store i8 %5279, i8* %36, align 1
  %5280 = xor i32 %5269, %5268
  %5281 = lshr i32 %5280, 4
  %5282 = trunc i32 %5281 to i8
  %5283 = and i8 %5282, 1
  store i8 %5283, i8* %42, align 1
  %5284 = zext i1 %5272 to i8
  store i8 %5284, i8* %45, align 1
  %5285 = lshr i32 %5269, 31
  %5286 = trunc i32 %5285 to i8
  store i8 %5286, i8* %48, align 1
  %5287 = lshr i32 %5268, 31
  %5288 = xor i32 %5285, %5287
  %5289 = add nuw nsw i32 %5288, %5285
  %5290 = icmp eq i32 %5289, 2
  %5291 = zext i1 %5290 to i8
  store i8 %5291, i8* %54, align 1
  %5292 = add i64 %5263, 14
  store i64 %5292, i64* %3, align 8
  store i32 %5269, i32* %5267, align 4
  %5293 = load i64, i64* %3, align 8
  %5294 = add i64 %5293, -198
  store i64 %5294, i64* %3, align 8
  br label %block_.L_48a7b8

block_.L_48a883:                                  ; preds = %block_.L_48a7b8
  %5295 = add i64 %4990, -44
  %5296 = add i64 %5019, 8
  store i64 %5296, i64* %3, align 8
  %5297 = inttoptr i64 %5295 to i32*
  %5298 = load i32, i32* %5297, align 4
  %5299 = add i32 %5298, 1
  %5300 = zext i32 %5299 to i64
  store i64 %5300, i64* %RAX.i1963.phi.trans.insert, align 8
  %5301 = icmp eq i32 %5298, -1
  %5302 = icmp eq i32 %5299, 0
  %5303 = or i1 %5301, %5302
  %5304 = zext i1 %5303 to i8
  store i8 %5304, i8* %29, align 1
  %5305 = and i32 %5299, 255
  %5306 = tail call i32 @llvm.ctpop.i32(i32 %5305)
  %5307 = trunc i32 %5306 to i8
  %5308 = and i8 %5307, 1
  %5309 = xor i8 %5308, 1
  store i8 %5309, i8* %36, align 1
  %5310 = xor i32 %5299, %5298
  %5311 = lshr i32 %5310, 4
  %5312 = trunc i32 %5311 to i8
  %5313 = and i8 %5312, 1
  store i8 %5313, i8* %42, align 1
  %5314 = zext i1 %5302 to i8
  store i8 %5314, i8* %45, align 1
  %5315 = lshr i32 %5299, 31
  %5316 = trunc i32 %5315 to i8
  store i8 %5316, i8* %48, align 1
  %5317 = lshr i32 %5298, 31
  %5318 = xor i32 %5315, %5317
  %5319 = add nuw nsw i32 %5318, %5315
  %5320 = icmp eq i32 %5319, 2
  %5321 = zext i1 %5320 to i8
  store i8 %5321, i8* %54, align 1
  %5322 = add i64 %5019, 14
  store i64 %5322, i64* %3, align 8
  store i32 %5299, i32* %5297, align 4
  %5323 = load i64, i64* %3, align 8
  %5324 = add i64 %5323, -234
  store i64 %5324, i64* %3, align 8
  br label %block_.L_48a7a7

block_.L_48a896:                                  ; preds = %block_.L_48a7a7
  %5325 = add i64 %4985, 5
  store i64 %5325, i64* %3, align 8
  br label %block_.L_48a89b

block_.L_48a89b:                                  ; preds = %block_.L_48a896, %block_.L_48a777
  %5326 = phi i64 [ %4616, %block_.L_48a777 ], [ %4956, %block_.L_48a896 ]
  %storemerge72 = phi i64 [ %4928, %block_.L_48a777 ], [ %5325, %block_.L_48a896 ]
  %5327 = add i64 %5326, -44
  %5328 = add i64 %storemerge72, 7
  store i64 %5328, i64* %3, align 8
  %5329 = inttoptr i64 %5327 to i32*
  store i32 0, i32* %5329, align 4
  %RSI.i192 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %R8.i188 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0, i32 0
  %R9.i183 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 19, i32 0, i32 0
  %R10.i181 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 21, i32 0, i32 0
  %R11.i176 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 23, i32 0, i32 0
  %.pre200 = load i64, i64* %3, align 8
  %5330 = tail call i32 @llvm.ctpop.i32(i32 and (i32 trunc (i64 add (i64 ptrtoint (%G__0x70ead0_type* @G__0x70ead0 to i64), i64 1024) to i32), i32 255))
  %5331 = trunc i32 %5330 to i8
  %5332 = and i8 %5331, 1
  %5333 = xor i8 %5332, 1
  br label %block_.L_48a8a2

block_.L_48a8a2:                                  ; preds = %block_.L_48a9ed, %block_.L_48a89b
  %5334 = phi i64 [ %5912, %block_.L_48a9ed ], [ %.pre200, %block_.L_48a89b ]
  %5335 = load i64, i64* %RBP.i, align 8
  %5336 = add i64 %5335, -44
  %5337 = add i64 %5334, 4
  store i64 %5337, i64* %3, align 8
  %5338 = inttoptr i64 %5336 to i32*
  %5339 = load i32, i32* %5338, align 4
  %5340 = add i32 %5339, -16
  %5341 = icmp ult i32 %5339, 16
  %5342 = zext i1 %5341 to i8
  store i8 %5342, i8* %29, align 1
  %5343 = and i32 %5340, 255
  %5344 = tail call i32 @llvm.ctpop.i32(i32 %5343)
  %5345 = trunc i32 %5344 to i8
  %5346 = and i8 %5345, 1
  %5347 = xor i8 %5346, 1
  store i8 %5347, i8* %36, align 1
  %5348 = xor i32 %5339, 16
  %5349 = xor i32 %5348, %5340
  %5350 = lshr i32 %5349, 4
  %5351 = trunc i32 %5350 to i8
  %5352 = and i8 %5351, 1
  store i8 %5352, i8* %42, align 1
  %5353 = icmp eq i32 %5340, 0
  %5354 = zext i1 %5353 to i8
  store i8 %5354, i8* %45, align 1
  %5355 = lshr i32 %5340, 31
  %5356 = trunc i32 %5355 to i8
  store i8 %5356, i8* %48, align 1
  %5357 = lshr i32 %5339, 31
  %5358 = xor i32 %5355, %5357
  %5359 = add nuw nsw i32 %5358, %5357
  %5360 = icmp eq i32 %5359, 2
  %5361 = zext i1 %5360 to i8
  store i8 %5361, i8* %54, align 1
  %5362 = icmp ne i8 %5356, 0
  %5363 = xor i1 %5362, %5360
  %.v246 = select i1 %5363, i64 10, i64 350
  %5364 = add i64 %5334, %.v246
  store i64 %5364, i64* %3, align 8
  br i1 %5363, label %block_48a8ac, label %block_.L_48aa00

block_48a8ac:                                     ; preds = %block_.L_48a8a2
  %5365 = add i64 %5335, -48
  %5366 = add i64 %5364, 7
  store i64 %5366, i64* %3, align 8
  %5367 = inttoptr i64 %5365 to i32*
  store i32 0, i32* %5367, align 4
  %.pre201 = load i64, i64* %3, align 8
  br label %block_.L_48a8b3

block_.L_48a8b3:                                  ; preds = %block_48a8bd, %block_48a8ac
  %5368 = phi i64 [ %5882, %block_48a8bd ], [ %.pre201, %block_48a8ac ]
  %5369 = load i64, i64* %RBP.i, align 8
  %5370 = add i64 %5369, -48
  %5371 = add i64 %5368, 4
  store i64 %5371, i64* %3, align 8
  %5372 = inttoptr i64 %5370 to i32*
  %5373 = load i32, i32* %5372, align 4
  %5374 = add i32 %5373, -16
  %5375 = icmp ult i32 %5373, 16
  %5376 = zext i1 %5375 to i8
  store i8 %5376, i8* %29, align 1
  %5377 = and i32 %5374, 255
  %5378 = tail call i32 @llvm.ctpop.i32(i32 %5377)
  %5379 = trunc i32 %5378 to i8
  %5380 = and i8 %5379, 1
  %5381 = xor i8 %5380, 1
  store i8 %5381, i8* %36, align 1
  %5382 = xor i32 %5373, 16
  %5383 = xor i32 %5382, %5374
  %5384 = lshr i32 %5383, 4
  %5385 = trunc i32 %5384 to i8
  %5386 = and i8 %5385, 1
  store i8 %5386, i8* %42, align 1
  %5387 = icmp eq i32 %5374, 0
  %5388 = zext i1 %5387 to i8
  store i8 %5388, i8* %45, align 1
  %5389 = lshr i32 %5374, 31
  %5390 = trunc i32 %5389 to i8
  store i8 %5390, i8* %48, align 1
  %5391 = lshr i32 %5373, 31
  %5392 = xor i32 %5389, %5391
  %5393 = add nuw nsw i32 %5392, %5391
  %5394 = icmp eq i32 %5393, 2
  %5395 = zext i1 %5394 to i8
  store i8 %5395, i8* %54, align 1
  %5396 = icmp ne i8 %5390, 0
  %5397 = xor i1 %5396, %5394
  %.v218 = select i1 %5397, i64 10, i64 314
  %5398 = add i64 %5368, %.v218
  store i64 %5398, i64* %3, align 8
  br i1 %5397, label %block_48a8bd, label %block_.L_48a9ed

block_48a8bd:                                     ; preds = %block_.L_48a8b3
  store i64 ptrtoint (%G__0x6d40f0_type* @G__0x6d40f0 to i64), i64* %RAX.i1963.phi.trans.insert, align 8
  store i64 ptrtoint (%G__0x724340_type* @G__0x724340 to i64), i64* %RCX.i2011, align 8
  store i64 ptrtoint (%G__0x6f6fa0_type* @G__0x6f6fa0 to i64), i64* %RDX.i598, align 8
  store i64 ptrtoint (%G__0x710370_type* @G__0x710370 to i64), i64* %RSI.i192, align 8
  store i64 ptrtoint (%G__0x725610_type* @G__0x725610 to i64), i64* %RDI.i1834, align 8
  store i64 add (i64 ptrtoint (%G__0x725610_type* @G__0x725610 to i64), i64 2048), i64* %R8.i188, align 8
  store i64 ptrtoint (%G__0x70ead0_type* @G__0x70ead0 to i64), i64* %R9.i183, align 8
  store i64 add (i64 ptrtoint (%G__0x70ead0_type* @G__0x70ead0 to i64), i64 2048), i64* %R10.i181, align 8
  store i64 add (i64 ptrtoint (%G__0x725610_type* @G__0x725610 to i64), i64 1024), i64* %R11.i176, align 8
  store i64 add (i64 ptrtoint (%G__0x70ead0_type* @G__0x70ead0 to i64), i64 1024), i64* %RBX.i1676, align 8
  store i8 zext (i1 icmp ugt (i64 ptrtoint (%G__0x70ead0_type* @G__0x70ead0 to i64), i64 -1025) to i8), i8* %29, align 1
  store i8 %5333, i8* %36, align 1
  store i8 and (i8 trunc (i64 lshr (i64 xor (i64 add (i64 ptrtoint (%G__0x70ead0_type* @G__0x70ead0 to i64), i64 1024), i64 ptrtoint (%G__0x70ead0_type* @G__0x70ead0 to i64)), i64 4) to i8), i8 1), i8* %42, align 1
  store i8 zext (i1 icmp eq (i64 add (i64 ptrtoint (%G__0x70ead0_type* @G__0x70ead0 to i64), i64 1024), i64 0) to i8), i8* %45, align 1
  store i8 trunc (i64 lshr (i64 add (i64 ptrtoint (%G__0x70ead0_type* @G__0x70ead0 to i64), i64 1024), i64 63) to i8), i8* %48, align 1
  store i8 zext (i1 icmp eq (i64 add (i64 xor (i64 lshr (i64 add (i64 ptrtoint (%G__0x70ead0_type* @G__0x70ead0 to i64), i64 1024), i64 63), i64 lshr (i64 ptrtoint (%G__0x70ead0_type* @G__0x70ead0 to i64), i64 63)), i64 lshr (i64 add (i64 ptrtoint (%G__0x70ead0_type* @G__0x70ead0 to i64), i64 1024), i64 63)), i64 2) to i8), i8* %54, align 1
  %5399 = add i64 %5398, 104
  store i64 %5399, i64* %3, align 8
  %5400 = load i32, i32* %5372, align 4
  %5401 = sext i32 %5400 to i64
  %5402 = shl nsw i64 %5401, 6
  store i64 %5402, i64* %R14.i1659, align 8
  %5403 = add i64 %5402, ptrtoint (%G__0x70ead0_type* @G__0x70ead0 to i64)
  store i64 %5403, i64* %R9.i183, align 8
  %5404 = icmp ult i64 %5403, ptrtoint (%G__0x70ead0_type* @G__0x70ead0 to i64)
  %5405 = icmp ult i64 %5403, %5402
  %5406 = or i1 %5404, %5405
  %5407 = zext i1 %5406 to i8
  store i8 %5407, i8* %29, align 1
  %5408 = trunc i64 %5403 to i32
  %5409 = and i32 %5408, 248
  %5410 = tail call i32 @llvm.ctpop.i32(i32 %5409)
  %5411 = trunc i32 %5410 to i8
  %5412 = and i8 %5411, 1
  %5413 = xor i8 %5412, 1
  store i8 %5413, i8* %36, align 1
  %5414 = xor i64 %5403, ptrtoint (%G__0x70ead0_type* @G__0x70ead0 to i64)
  %5415 = lshr i64 %5414, 4
  %5416 = trunc i64 %5415 to i8
  %5417 = and i8 %5416, 1
  store i8 %5417, i8* %42, align 1
  %5418 = icmp eq i64 %5403, 0
  %5419 = zext i1 %5418 to i8
  store i8 %5419, i8* %45, align 1
  %5420 = lshr i64 %5403, 63
  %5421 = trunc i64 %5420 to i8
  store i8 %5421, i8* %48, align 1
  %5422 = lshr i64 %5401, 57
  %5423 = and i64 %5422, 1
  %5424 = xor i64 %5420, lshr (i64 ptrtoint (%G__0x70ead0_type* @G__0x70ead0 to i64), i64 63)
  %5425 = xor i64 %5420, %5423
  %5426 = add nuw nsw i64 %5424, %5425
  %5427 = icmp eq i64 %5426, 2
  %5428 = zext i1 %5427 to i8
  store i8 %5428, i8* %54, align 1
  %5429 = load i64, i64* %RBP.i, align 8
  %5430 = add i64 %5429, -44
  %5431 = add i64 %5398, 115
  store i64 %5431, i64* %3, align 8
  %5432 = inttoptr i64 %5430 to i32*
  %5433 = load i32, i32* %5432, align 4
  %5434 = sext i32 %5433 to i64
  store i64 %5434, i64* %R14.i1659, align 8
  %5435 = shl nsw i64 %5434, 2
  %5436 = add i64 %5435, %5403
  %5437 = add i64 %5398, 119
  store i64 %5437, i64* %3, align 8
  %5438 = inttoptr i64 %5436 to i32*
  %5439 = load i32, i32* %5438, align 4
  %5440 = zext i32 %5439 to i64
  store i64 %5440, i64* %R15.i1641, align 8
  %5441 = add i64 %5429, -48
  %5442 = add i64 %5398, 123
  store i64 %5442, i64* %3, align 8
  %5443 = inttoptr i64 %5441 to i32*
  %5444 = load i32, i32* %5443, align 4
  %5445 = sext i32 %5444 to i64
  %5446 = shl nsw i64 %5445, 6
  store i64 %5446, i64* %R9.i183, align 8
  %5447 = load i64, i64* %RDI.i1834, align 8
  %5448 = add i64 %5446, %5447
  store i64 %5448, i64* %RDI.i1834, align 8
  %5449 = icmp ult i64 %5448, %5447
  %5450 = icmp ult i64 %5448, %5446
  %5451 = or i1 %5449, %5450
  %5452 = zext i1 %5451 to i8
  store i8 %5452, i8* %29, align 1
  %5453 = trunc i64 %5448 to i32
  %5454 = and i32 %5453, 255
  %5455 = tail call i32 @llvm.ctpop.i32(i32 %5454)
  %5456 = trunc i32 %5455 to i8
  %5457 = and i8 %5456, 1
  %5458 = xor i8 %5457, 1
  store i8 %5458, i8* %36, align 1
  %5459 = xor i64 %5447, %5448
  %5460 = lshr i64 %5459, 4
  %5461 = trunc i64 %5460 to i8
  %5462 = and i8 %5461, 1
  store i8 %5462, i8* %42, align 1
  %5463 = icmp eq i64 %5448, 0
  %5464 = zext i1 %5463 to i8
  store i8 %5464, i8* %45, align 1
  %5465 = lshr i64 %5448, 63
  %5466 = trunc i64 %5465 to i8
  store i8 %5466, i8* %48, align 1
  %5467 = lshr i64 %5447, 63
  %5468 = lshr i64 %5445, 57
  %5469 = and i64 %5468, 1
  %5470 = xor i64 %5465, %5467
  %5471 = xor i64 %5465, %5469
  %5472 = add nuw nsw i64 %5470, %5471
  %5473 = icmp eq i64 %5472, 2
  %5474 = zext i1 %5473 to i8
  store i8 %5474, i8* %54, align 1
  %5475 = add i64 %5398, 134
  store i64 %5475, i64* %3, align 8
  %5476 = load i32, i32* %5432, align 4
  %5477 = sext i32 %5476 to i64
  store i64 %5477, i64* %R9.i183, align 8
  %5478 = shl nsw i64 %5477, 2
  %5479 = add i64 %5478, %5448
  %5480 = add i64 %5398, 138
  store i64 %5480, i64* %3, align 8
  %5481 = inttoptr i64 %5479 to i32*
  store i32 %5439, i32* %5481, align 4
  %5482 = load i64, i64* %RBP.i, align 8
  %5483 = add i64 %5482, -48
  %5484 = load i64, i64* %3, align 8
  %5485 = add i64 %5484, 4
  store i64 %5485, i64* %3, align 8
  %5486 = inttoptr i64 %5483 to i32*
  %5487 = load i32, i32* %5486, align 4
  %5488 = sext i32 %5487 to i64
  %5489 = shl nsw i64 %5488, 6
  store i64 %5489, i64* %RDI.i1834, align 8
  %5490 = load i64, i64* %RBX.i1676, align 8
  %5491 = add i64 %5489, %5490
  store i64 %5491, i64* %RBX.i1676, align 8
  %5492 = icmp ult i64 %5491, %5490
  %5493 = icmp ult i64 %5491, %5489
  %5494 = or i1 %5492, %5493
  %5495 = zext i1 %5494 to i8
  store i8 %5495, i8* %29, align 1
  %5496 = trunc i64 %5491 to i32
  %5497 = and i32 %5496, 255
  %5498 = tail call i32 @llvm.ctpop.i32(i32 %5497)
  %5499 = trunc i32 %5498 to i8
  %5500 = and i8 %5499, 1
  %5501 = xor i8 %5500, 1
  store i8 %5501, i8* %36, align 1
  %5502 = xor i64 %5490, %5491
  %5503 = lshr i64 %5502, 4
  %5504 = trunc i64 %5503 to i8
  %5505 = and i8 %5504, 1
  store i8 %5505, i8* %42, align 1
  %5506 = icmp eq i64 %5491, 0
  %5507 = zext i1 %5506 to i8
  store i8 %5507, i8* %45, align 1
  %5508 = lshr i64 %5491, 63
  %5509 = trunc i64 %5508 to i8
  store i8 %5509, i8* %48, align 1
  %5510 = lshr i64 %5490, 63
  %5511 = lshr i64 %5488, 57
  %5512 = and i64 %5511, 1
  %5513 = xor i64 %5508, %5510
  %5514 = xor i64 %5508, %5512
  %5515 = add nuw nsw i64 %5513, %5514
  %5516 = icmp eq i64 %5515, 2
  %5517 = zext i1 %5516 to i8
  store i8 %5517, i8* %54, align 1
  %5518 = add i64 %5482, -44
  %5519 = add i64 %5484, 15
  store i64 %5519, i64* %3, align 8
  %5520 = inttoptr i64 %5518 to i32*
  %5521 = load i32, i32* %5520, align 4
  %5522 = sext i32 %5521 to i64
  store i64 %5522, i64* %RDI.i1834, align 8
  %5523 = shl nsw i64 %5522, 2
  %5524 = add i64 %5523, %5491
  %5525 = add i64 %5484, 19
  store i64 %5525, i64* %3, align 8
  %5526 = inttoptr i64 %5524 to i32*
  %5527 = load i32, i32* %5526, align 4
  %5528 = zext i32 %5527 to i64
  store i64 %5528, i64* %R15.i1641, align 8
  %5529 = add i64 %5484, 23
  store i64 %5529, i64* %3, align 8
  %5530 = load i32, i32* %5486, align 4
  %5531 = sext i32 %5530 to i64
  %5532 = shl nsw i64 %5531, 6
  store i64 %5532, i64* %RDI.i1834, align 8
  %5533 = load i64, i64* %R11.i176, align 8
  %5534 = add i64 %5532, %5533
  store i64 %5534, i64* %R11.i176, align 8
  %5535 = icmp ult i64 %5534, %5533
  %5536 = icmp ult i64 %5534, %5532
  %5537 = or i1 %5535, %5536
  %5538 = zext i1 %5537 to i8
  store i8 %5538, i8* %29, align 1
  %5539 = trunc i64 %5534 to i32
  %5540 = and i32 %5539, 255
  %5541 = tail call i32 @llvm.ctpop.i32(i32 %5540)
  %5542 = trunc i32 %5541 to i8
  %5543 = and i8 %5542, 1
  %5544 = xor i8 %5543, 1
  store i8 %5544, i8* %36, align 1
  %5545 = xor i64 %5533, %5534
  %5546 = lshr i64 %5545, 4
  %5547 = trunc i64 %5546 to i8
  %5548 = and i8 %5547, 1
  store i8 %5548, i8* %42, align 1
  %5549 = icmp eq i64 %5534, 0
  %5550 = zext i1 %5549 to i8
  store i8 %5550, i8* %45, align 1
  %5551 = lshr i64 %5534, 63
  %5552 = trunc i64 %5551 to i8
  store i8 %5552, i8* %48, align 1
  %5553 = lshr i64 %5533, 63
  %5554 = lshr i64 %5531, 57
  %5555 = and i64 %5554, 1
  %5556 = xor i64 %5551, %5553
  %5557 = xor i64 %5551, %5555
  %5558 = add nuw nsw i64 %5556, %5557
  %5559 = icmp eq i64 %5558, 2
  %5560 = zext i1 %5559 to i8
  store i8 %5560, i8* %54, align 1
  %5561 = load i64, i64* %RBP.i, align 8
  %5562 = add i64 %5561, -44
  %5563 = add i64 %5484, 34
  store i64 %5563, i64* %3, align 8
  %5564 = inttoptr i64 %5562 to i32*
  %5565 = load i32, i32* %5564, align 4
  %5566 = sext i32 %5565 to i64
  store i64 %5566, i64* %RDI.i1834, align 8
  %5567 = shl nsw i64 %5566, 2
  %5568 = add i64 %5567, %5534
  %5569 = add i64 %5484, 38
  store i64 %5569, i64* %3, align 8
  %5570 = inttoptr i64 %5568 to i32*
  store i32 %5527, i32* %5570, align 4
  %5571 = load i64, i64* %RBP.i, align 8
  %5572 = add i64 %5571, -48
  %5573 = load i64, i64* %3, align 8
  %5574 = add i64 %5573, 4
  store i64 %5574, i64* %3, align 8
  %5575 = inttoptr i64 %5572 to i32*
  %5576 = load i32, i32* %5575, align 4
  %5577 = sext i32 %5576 to i64
  %5578 = shl nsw i64 %5577, 6
  store i64 %5578, i64* %RDI.i1834, align 8
  %5579 = load i64, i64* %R10.i181, align 8
  %5580 = add i64 %5578, %5579
  store i64 %5580, i64* %R10.i181, align 8
  %5581 = icmp ult i64 %5580, %5579
  %5582 = icmp ult i64 %5580, %5578
  %5583 = or i1 %5581, %5582
  %5584 = zext i1 %5583 to i8
  store i8 %5584, i8* %29, align 1
  %5585 = trunc i64 %5580 to i32
  %5586 = and i32 %5585, 255
  %5587 = tail call i32 @llvm.ctpop.i32(i32 %5586)
  %5588 = trunc i32 %5587 to i8
  %5589 = and i8 %5588, 1
  %5590 = xor i8 %5589, 1
  store i8 %5590, i8* %36, align 1
  %5591 = xor i64 %5579, %5580
  %5592 = lshr i64 %5591, 4
  %5593 = trunc i64 %5592 to i8
  %5594 = and i8 %5593, 1
  store i8 %5594, i8* %42, align 1
  %5595 = icmp eq i64 %5580, 0
  %5596 = zext i1 %5595 to i8
  store i8 %5596, i8* %45, align 1
  %5597 = lshr i64 %5580, 63
  %5598 = trunc i64 %5597 to i8
  store i8 %5598, i8* %48, align 1
  %5599 = lshr i64 %5579, 63
  %5600 = lshr i64 %5577, 57
  %5601 = and i64 %5600, 1
  %5602 = xor i64 %5597, %5599
  %5603 = xor i64 %5597, %5601
  %5604 = add nuw nsw i64 %5602, %5603
  %5605 = icmp eq i64 %5604, 2
  %5606 = zext i1 %5605 to i8
  store i8 %5606, i8* %54, align 1
  %5607 = add i64 %5571, -44
  %5608 = add i64 %5573, 15
  store i64 %5608, i64* %3, align 8
  %5609 = inttoptr i64 %5607 to i32*
  %5610 = load i32, i32* %5609, align 4
  %5611 = sext i32 %5610 to i64
  store i64 %5611, i64* %RDI.i1834, align 8
  %5612 = shl nsw i64 %5611, 2
  %5613 = add i64 %5612, %5580
  %5614 = add i64 %5573, 19
  store i64 %5614, i64* %3, align 8
  %5615 = inttoptr i64 %5613 to i32*
  %5616 = load i32, i32* %5615, align 4
  %5617 = zext i32 %5616 to i64
  store i64 %5617, i64* %R15.i1641, align 8
  %5618 = add i64 %5573, 23
  store i64 %5618, i64* %3, align 8
  %5619 = load i32, i32* %5575, align 4
  %5620 = sext i32 %5619 to i64
  %5621 = shl nsw i64 %5620, 6
  store i64 %5621, i64* %RDI.i1834, align 8
  %5622 = load i64, i64* %R8.i188, align 8
  %5623 = add i64 %5621, %5622
  store i64 %5623, i64* %R8.i188, align 8
  %5624 = icmp ult i64 %5623, %5622
  %5625 = icmp ult i64 %5623, %5621
  %5626 = or i1 %5624, %5625
  %5627 = zext i1 %5626 to i8
  store i8 %5627, i8* %29, align 1
  %5628 = trunc i64 %5623 to i32
  %5629 = and i32 %5628, 255
  %5630 = tail call i32 @llvm.ctpop.i32(i32 %5629)
  %5631 = trunc i32 %5630 to i8
  %5632 = and i8 %5631, 1
  %5633 = xor i8 %5632, 1
  store i8 %5633, i8* %36, align 1
  %5634 = xor i64 %5622, %5623
  %5635 = lshr i64 %5634, 4
  %5636 = trunc i64 %5635 to i8
  %5637 = and i8 %5636, 1
  store i8 %5637, i8* %42, align 1
  %5638 = icmp eq i64 %5623, 0
  %5639 = zext i1 %5638 to i8
  store i8 %5639, i8* %45, align 1
  %5640 = lshr i64 %5623, 63
  %5641 = trunc i64 %5640 to i8
  store i8 %5641, i8* %48, align 1
  %5642 = lshr i64 %5622, 63
  %5643 = lshr i64 %5620, 57
  %5644 = and i64 %5643, 1
  %5645 = xor i64 %5640, %5642
  %5646 = xor i64 %5640, %5644
  %5647 = add nuw nsw i64 %5645, %5646
  %5648 = icmp eq i64 %5647, 2
  %5649 = zext i1 %5648 to i8
  store i8 %5649, i8* %54, align 1
  %5650 = load i64, i64* %RBP.i, align 8
  %5651 = add i64 %5650, -44
  %5652 = add i64 %5573, 34
  store i64 %5652, i64* %3, align 8
  %5653 = inttoptr i64 %5651 to i32*
  %5654 = load i32, i32* %5653, align 4
  %5655 = sext i32 %5654 to i64
  store i64 %5655, i64* %RDI.i1834, align 8
  %5656 = shl nsw i64 %5655, 2
  %5657 = add i64 %5656, %5623
  %5658 = add i64 %5573, 38
  store i64 %5658, i64* %3, align 8
  %5659 = inttoptr i64 %5657 to i32*
  store i32 %5616, i32* %5659, align 4
  %5660 = load i64, i64* %RBP.i, align 8
  %5661 = add i64 %5660, -48
  %5662 = load i64, i64* %3, align 8
  %5663 = add i64 %5662, 4
  store i64 %5663, i64* %3, align 8
  %5664 = inttoptr i64 %5661 to i32*
  %5665 = load i32, i32* %5664, align 4
  %5666 = sext i32 %5665 to i64
  %5667 = shl nsw i64 %5666, 6
  store i64 %5667, i64* %RDI.i1834, align 8
  %5668 = load i64, i64* %RSI.i192, align 8
  %5669 = add i64 %5667, %5668
  store i64 %5669, i64* %RSI.i192, align 8
  %5670 = icmp ult i64 %5669, %5668
  %5671 = icmp ult i64 %5669, %5667
  %5672 = or i1 %5670, %5671
  %5673 = zext i1 %5672 to i8
  store i8 %5673, i8* %29, align 1
  %5674 = trunc i64 %5669 to i32
  %5675 = and i32 %5674, 255
  %5676 = tail call i32 @llvm.ctpop.i32(i32 %5675)
  %5677 = trunc i32 %5676 to i8
  %5678 = and i8 %5677, 1
  %5679 = xor i8 %5678, 1
  store i8 %5679, i8* %36, align 1
  %5680 = xor i64 %5668, %5669
  %5681 = lshr i64 %5680, 4
  %5682 = trunc i64 %5681 to i8
  %5683 = and i8 %5682, 1
  store i8 %5683, i8* %42, align 1
  %5684 = icmp eq i64 %5669, 0
  %5685 = zext i1 %5684 to i8
  store i8 %5685, i8* %45, align 1
  %5686 = lshr i64 %5669, 63
  %5687 = trunc i64 %5686 to i8
  store i8 %5687, i8* %48, align 1
  %5688 = lshr i64 %5668, 63
  %5689 = lshr i64 %5666, 57
  %5690 = and i64 %5689, 1
  %5691 = xor i64 %5686, %5688
  %5692 = xor i64 %5686, %5690
  %5693 = add nuw nsw i64 %5691, %5692
  %5694 = icmp eq i64 %5693, 2
  %5695 = zext i1 %5694 to i8
  store i8 %5695, i8* %54, align 1
  %5696 = add i64 %5660, -44
  %5697 = add i64 %5662, 15
  store i64 %5697, i64* %3, align 8
  %5698 = inttoptr i64 %5696 to i32*
  %5699 = load i32, i32* %5698, align 4
  %5700 = sext i32 %5699 to i64
  store i64 %5700, i64* %RDI.i1834, align 8
  %5701 = shl nsw i64 %5700, 2
  %5702 = add i64 %5701, %5669
  %5703 = add i64 %5662, 19
  store i64 %5703, i64* %3, align 8
  %5704 = inttoptr i64 %5702 to i32*
  %5705 = load i32, i32* %5704, align 4
  %5706 = zext i32 %5705 to i64
  store i64 %5706, i64* %R15.i1641, align 8
  %5707 = add i64 %5662, 23
  store i64 %5707, i64* %3, align 8
  %5708 = load i32, i32* %5664, align 4
  %5709 = sext i32 %5708 to i64
  %5710 = shl nsw i64 %5709, 6
  store i64 %5710, i64* %RSI.i192, align 8
  %5711 = load i64, i64* %RDX.i598, align 8
  %5712 = add i64 %5710, %5711
  store i64 %5712, i64* %RDX.i598, align 8
  %5713 = icmp ult i64 %5712, %5711
  %5714 = icmp ult i64 %5712, %5710
  %5715 = or i1 %5713, %5714
  %5716 = zext i1 %5715 to i8
  store i8 %5716, i8* %29, align 1
  %5717 = trunc i64 %5712 to i32
  %5718 = and i32 %5717, 255
  %5719 = tail call i32 @llvm.ctpop.i32(i32 %5718)
  %5720 = trunc i32 %5719 to i8
  %5721 = and i8 %5720, 1
  %5722 = xor i8 %5721, 1
  store i8 %5722, i8* %36, align 1
  %5723 = xor i64 %5711, %5712
  %5724 = lshr i64 %5723, 4
  %5725 = trunc i64 %5724 to i8
  %5726 = and i8 %5725, 1
  store i8 %5726, i8* %42, align 1
  %5727 = icmp eq i64 %5712, 0
  %5728 = zext i1 %5727 to i8
  store i8 %5728, i8* %45, align 1
  %5729 = lshr i64 %5712, 63
  %5730 = trunc i64 %5729 to i8
  store i8 %5730, i8* %48, align 1
  %5731 = lshr i64 %5711, 63
  %5732 = lshr i64 %5709, 57
  %5733 = and i64 %5732, 1
  %5734 = xor i64 %5729, %5731
  %5735 = xor i64 %5729, %5733
  %5736 = add nuw nsw i64 %5734, %5735
  %5737 = icmp eq i64 %5736, 2
  %5738 = zext i1 %5737 to i8
  store i8 %5738, i8* %54, align 1
  %5739 = load i64, i64* %RBP.i, align 8
  %5740 = add i64 %5739, -44
  %5741 = add i64 %5662, 34
  store i64 %5741, i64* %3, align 8
  %5742 = inttoptr i64 %5740 to i32*
  %5743 = load i32, i32* %5742, align 4
  %5744 = sext i32 %5743 to i64
  store i64 %5744, i64* %RSI.i192, align 8
  %5745 = shl nsw i64 %5744, 2
  %5746 = add i64 %5745, %5712
  %5747 = add i64 %5662, 38
  store i64 %5747, i64* %3, align 8
  %5748 = inttoptr i64 %5746 to i32*
  store i32 %5705, i32* %5748, align 4
  %5749 = load i64, i64* %RBP.i, align 8
  %5750 = add i64 %5749, -48
  %5751 = load i64, i64* %3, align 8
  %5752 = add i64 %5751, 4
  store i64 %5752, i64* %3, align 8
  %5753 = inttoptr i64 %5750 to i32*
  %5754 = load i32, i32* %5753, align 4
  %5755 = sext i32 %5754 to i64
  %5756 = shl nsw i64 %5755, 6
  store i64 %5756, i64* %RDX.i598, align 8
  %5757 = load i64, i64* %RCX.i2011, align 8
  %5758 = add i64 %5756, %5757
  store i64 %5758, i64* %RCX.i2011, align 8
  %5759 = icmp ult i64 %5758, %5757
  %5760 = icmp ult i64 %5758, %5756
  %5761 = or i1 %5759, %5760
  %5762 = zext i1 %5761 to i8
  store i8 %5762, i8* %29, align 1
  %5763 = trunc i64 %5758 to i32
  %5764 = and i32 %5763, 255
  %5765 = tail call i32 @llvm.ctpop.i32(i32 %5764)
  %5766 = trunc i32 %5765 to i8
  %5767 = and i8 %5766, 1
  %5768 = xor i8 %5767, 1
  store i8 %5768, i8* %36, align 1
  %5769 = xor i64 %5757, %5758
  %5770 = lshr i64 %5769, 4
  %5771 = trunc i64 %5770 to i8
  %5772 = and i8 %5771, 1
  store i8 %5772, i8* %42, align 1
  %5773 = icmp eq i64 %5758, 0
  %5774 = zext i1 %5773 to i8
  store i8 %5774, i8* %45, align 1
  %5775 = lshr i64 %5758, 63
  %5776 = trunc i64 %5775 to i8
  store i8 %5776, i8* %48, align 1
  %5777 = lshr i64 %5757, 63
  %5778 = lshr i64 %5755, 57
  %5779 = and i64 %5778, 1
  %5780 = xor i64 %5775, %5777
  %5781 = xor i64 %5775, %5779
  %5782 = add nuw nsw i64 %5780, %5781
  %5783 = icmp eq i64 %5782, 2
  %5784 = zext i1 %5783 to i8
  store i8 %5784, i8* %54, align 1
  %5785 = add i64 %5749, -44
  %5786 = add i64 %5751, 15
  store i64 %5786, i64* %3, align 8
  %5787 = inttoptr i64 %5785 to i32*
  %5788 = load i32, i32* %5787, align 4
  %5789 = sext i32 %5788 to i64
  store i64 %5789, i64* %RDX.i598, align 8
  %5790 = shl nsw i64 %5789, 2
  %5791 = add i64 %5790, %5758
  %5792 = add i64 %5751, 19
  store i64 %5792, i64* %3, align 8
  %5793 = inttoptr i64 %5791 to i32*
  %5794 = load i32, i32* %5793, align 4
  %5795 = zext i32 %5794 to i64
  store i64 %5795, i64* %R15.i1641, align 8
  %5796 = add i64 %5751, 23
  store i64 %5796, i64* %3, align 8
  %5797 = load i32, i32* %5753, align 4
  %5798 = sext i32 %5797 to i64
  %5799 = add i64 %5751, 27
  store i64 %5799, i64* %3, align 8
  %5800 = shl nsw i64 %5798, 6
  store i64 %5800, i64* %RCX.i2011, align 8
  %.lobit82 = lshr i32 %5797, 31
  %5801 = trunc i32 %.lobit82 to i8
  store i8 %5801, i8* %29, align 1
  %5802 = trunc i64 %5800 to i32
  %5803 = and i32 %5802, 192
  %5804 = tail call i32 @llvm.ctpop.i32(i32 %5803)
  %5805 = trunc i32 %5804 to i8
  %5806 = and i8 %5805, 1
  %5807 = xor i8 %5806, 1
  store i8 %5807, i8* %36, align 1
  store i8 0, i8* %42, align 1
  %5808 = icmp eq i32 %5797, 0
  %5809 = zext i1 %5808 to i8
  store i8 %5809, i8* %45, align 1
  %5810 = lshr i64 %5798, 57
  %5811 = trunc i64 %5810 to i8
  %5812 = and i8 %5811, 1
  store i8 %5812, i8* %48, align 1
  store i8 0, i8* %54, align 1
  %5813 = load i64, i64* %RAX.i1963.phi.trans.insert, align 8
  %5814 = add i64 %5800, %5813
  store i64 %5814, i64* %RAX.i1963.phi.trans.insert, align 8
  %5815 = icmp ult i64 %5814, %5813
  %5816 = icmp ult i64 %5814, %5800
  %5817 = or i1 %5815, %5816
  %5818 = zext i1 %5817 to i8
  store i8 %5818, i8* %29, align 1
  %5819 = trunc i64 %5814 to i32
  %5820 = and i32 %5819, 255
  %5821 = tail call i32 @llvm.ctpop.i32(i32 %5820)
  %5822 = trunc i32 %5821 to i8
  %5823 = and i8 %5822, 1
  %5824 = xor i8 %5823, 1
  store i8 %5824, i8* %36, align 1
  %5825 = xor i64 %5813, %5814
  %5826 = lshr i64 %5825, 4
  %5827 = trunc i64 %5826 to i8
  %5828 = and i8 %5827, 1
  store i8 %5828, i8* %42, align 1
  %5829 = icmp eq i64 %5814, 0
  %5830 = zext i1 %5829 to i8
  store i8 %5830, i8* %45, align 1
  %5831 = lshr i64 %5814, 63
  %5832 = trunc i64 %5831 to i8
  store i8 %5832, i8* %48, align 1
  %5833 = lshr i64 %5813, 63
  %5834 = lshr i64 %5798, 57
  %5835 = and i64 %5834, 1
  %5836 = xor i64 %5831, %5833
  %5837 = xor i64 %5831, %5835
  %5838 = add nuw nsw i64 %5836, %5837
  %5839 = icmp eq i64 %5838, 2
  %5840 = zext i1 %5839 to i8
  store i8 %5840, i8* %54, align 1
  %5841 = load i64, i64* %RBP.i, align 8
  %5842 = add i64 %5841, -44
  %5843 = add i64 %5751, 34
  store i64 %5843, i64* %3, align 8
  %5844 = inttoptr i64 %5842 to i32*
  %5845 = load i32, i32* %5844, align 4
  %5846 = sext i32 %5845 to i64
  store i64 %5846, i64* %RCX.i2011, align 8
  %5847 = shl nsw i64 %5846, 2
  %5848 = add i64 %5847, %5814
  %5849 = add i64 %5751, 38
  store i64 %5849, i64* %3, align 8
  %5850 = inttoptr i64 %5848 to i32*
  store i32 %5794, i32* %5850, align 4
  %5851 = load i64, i64* %RBP.i, align 8
  %5852 = add i64 %5851, -48
  %5853 = load i64, i64* %3, align 8
  %5854 = add i64 %5853, 3
  store i64 %5854, i64* %3, align 8
  %5855 = inttoptr i64 %5852 to i32*
  %5856 = load i32, i32* %5855, align 4
  %5857 = add i32 %5856, 1
  %5858 = zext i32 %5857 to i64
  store i64 %5858, i64* %RAX.i1963.phi.trans.insert, align 8
  %5859 = icmp eq i32 %5856, -1
  %5860 = icmp eq i32 %5857, 0
  %5861 = or i1 %5859, %5860
  %5862 = zext i1 %5861 to i8
  store i8 %5862, i8* %29, align 1
  %5863 = and i32 %5857, 255
  %5864 = tail call i32 @llvm.ctpop.i32(i32 %5863)
  %5865 = trunc i32 %5864 to i8
  %5866 = and i8 %5865, 1
  %5867 = xor i8 %5866, 1
  store i8 %5867, i8* %36, align 1
  %5868 = xor i32 %5857, %5856
  %5869 = lshr i32 %5868, 4
  %5870 = trunc i32 %5869 to i8
  %5871 = and i8 %5870, 1
  store i8 %5871, i8* %42, align 1
  %5872 = zext i1 %5860 to i8
  store i8 %5872, i8* %45, align 1
  %5873 = lshr i32 %5857, 31
  %5874 = trunc i32 %5873 to i8
  store i8 %5874, i8* %48, align 1
  %5875 = lshr i32 %5856, 31
  %5876 = xor i32 %5873, %5875
  %5877 = add nuw nsw i32 %5876, %5873
  %5878 = icmp eq i32 %5877, 2
  %5879 = zext i1 %5878 to i8
  store i8 %5879, i8* %54, align 1
  %5880 = add i64 %5853, 9
  store i64 %5880, i64* %3, align 8
  store i32 %5857, i32* %5855, align 4
  %5881 = load i64, i64* %3, align 8
  %5882 = add i64 %5881, -309
  store i64 %5882, i64* %3, align 8
  br label %block_.L_48a8b3

block_.L_48a9ed:                                  ; preds = %block_.L_48a8b3
  %5883 = add i64 %5369, -44
  %5884 = add i64 %5398, 8
  store i64 %5884, i64* %3, align 8
  %5885 = inttoptr i64 %5883 to i32*
  %5886 = load i32, i32* %5885, align 4
  %5887 = add i32 %5886, 1
  %5888 = zext i32 %5887 to i64
  store i64 %5888, i64* %RAX.i1963.phi.trans.insert, align 8
  %5889 = icmp eq i32 %5886, -1
  %5890 = icmp eq i32 %5887, 0
  %5891 = or i1 %5889, %5890
  %5892 = zext i1 %5891 to i8
  store i8 %5892, i8* %29, align 1
  %5893 = and i32 %5887, 255
  %5894 = tail call i32 @llvm.ctpop.i32(i32 %5893)
  %5895 = trunc i32 %5894 to i8
  %5896 = and i8 %5895, 1
  %5897 = xor i8 %5896, 1
  store i8 %5897, i8* %36, align 1
  %5898 = xor i32 %5887, %5886
  %5899 = lshr i32 %5898, 4
  %5900 = trunc i32 %5899 to i8
  %5901 = and i8 %5900, 1
  store i8 %5901, i8* %42, align 1
  %5902 = zext i1 %5890 to i8
  store i8 %5902, i8* %45, align 1
  %5903 = lshr i32 %5887, 31
  %5904 = trunc i32 %5903 to i8
  store i8 %5904, i8* %48, align 1
  %5905 = lshr i32 %5886, 31
  %5906 = xor i32 %5903, %5905
  %5907 = add nuw nsw i32 %5906, %5903
  %5908 = icmp eq i32 %5907, 2
  %5909 = zext i1 %5908 to i8
  store i8 %5909, i8* %54, align 1
  %5910 = add i64 %5398, 14
  store i64 %5910, i64* %3, align 8
  store i32 %5887, i32* %5885, align 4
  %5911 = load i64, i64* %3, align 8
  %5912 = add i64 %5911, -345
  store i64 %5912, i64* %3, align 8
  br label %block_.L_48a8a2

block_.L_48aa00:                                  ; preds = %block_.L_48a8a2
  %5913 = add i64 %5364, 5
  store i64 %5913, i64* %3, align 8
  br label %block_.L_48aa05

block_.L_48aa05:                                  ; preds = %block_.L_48aa00, %block_.L_48a52e
  %storemerge64 = phi i64 [ %4161, %block_.L_48a52e ], [ %5913, %block_.L_48aa00 ]
  %MEMORY.45 = phi %struct.Memory* [ %call2_48a080, %block_.L_48a52e ], [ %MEMORY.1, %block_.L_48aa00 ]
  %5914 = load i64, i64* %6, align 8
  %5915 = add i64 %5914, 88
  store i64 %5915, i64* %6, align 8
  %5916 = icmp ugt i64 %5914, -89
  %5917 = zext i1 %5916 to i8
  store i8 %5917, i8* %29, align 1
  %5918 = trunc i64 %5915 to i32
  %5919 = and i32 %5918, 255
  %5920 = tail call i32 @llvm.ctpop.i32(i32 %5919)
  %5921 = trunc i32 %5920 to i8
  %5922 = and i8 %5921, 1
  %5923 = xor i8 %5922, 1
  store i8 %5923, i8* %36, align 1
  %5924 = xor i64 %5914, 16
  %5925 = xor i64 %5924, %5915
  %5926 = lshr i64 %5925, 4
  %5927 = trunc i64 %5926 to i8
  %5928 = and i8 %5927, 1
  store i8 %5928, i8* %42, align 1
  %5929 = icmp eq i64 %5915, 0
  %5930 = zext i1 %5929 to i8
  store i8 %5930, i8* %45, align 1
  %5931 = lshr i64 %5915, 63
  %5932 = trunc i64 %5931 to i8
  store i8 %5932, i8* %48, align 1
  %5933 = lshr i64 %5914, 63
  %5934 = xor i64 %5931, %5933
  %5935 = add nuw nsw i64 %5934, %5931
  %5936 = icmp eq i64 %5935, 2
  %5937 = zext i1 %5936 to i8
  store i8 %5937, i8* %54, align 1
  %5938 = add i64 %storemerge64, 5
  store i64 %5938, i64* %3, align 8
  %5939 = add i64 %5914, 96
  %5940 = inttoptr i64 %5915 to i64*
  %5941 = load i64, i64* %5940, align 8
  store i64 %5941, i64* %RBX.i1676, align 8
  store i64 %5939, i64* %6, align 8
  %5942 = add i64 %storemerge64, 7
  store i64 %5942, i64* %3, align 8
  %5943 = add i64 %5914, 104
  %5944 = inttoptr i64 %5939 to i64*
  %5945 = load i64, i64* %5944, align 8
  store i64 %5945, i64* %R14.i1659, align 8
  store i64 %5943, i64* %6, align 8
  %5946 = add i64 %storemerge64, 9
  store i64 %5946, i64* %3, align 8
  %5947 = add i64 %5914, 112
  %5948 = inttoptr i64 %5943 to i64*
  %5949 = load i64, i64* %5948, align 8
  store i64 %5949, i64* %R15.i1641, align 8
  store i64 %5947, i64* %6, align 8
  %5950 = add i64 %storemerge64, 10
  store i64 %5950, i64* %3, align 8
  %5951 = add i64 %5914, 120
  %5952 = inttoptr i64 %5947 to i64*
  %5953 = load i64, i64* %5952, align 8
  store i64 %5953, i64* %RBP.i, align 8
  store i64 %5951, i64* %6, align 8
  %5954 = add i64 %storemerge64, 11
  store i64 %5954, i64* %3, align 8
  %5955 = inttoptr i64 %5951 to i64*
  %5956 = load i64, i64* %5955, align 8
  store i64 %5956, i64* %3, align 8
  %5957 = add i64 %5914, 128
  store i64 %5957, i64* %6, align 8
  ret %struct.Memory* %MEMORY.45
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
define %struct.Memory* @routine_pushq__r15(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %R15 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 31, i32 0, i32 0
  %3 = load i64, i64* %R15, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 2
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
define %struct.Memory* @routine_pushq__r14(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %R14 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 29, i32 0, i32 0
  %3 = load i64, i64* %R14, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 2
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
define %struct.Memory* @routine_pushq__rbx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 3, i32 0, i32 0
  %3 = load i64, i64* %RBX, align 8
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

; Function Attrs: nounwind
define %struct.Memory* @routine_subq__0x58___rsp(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %3 = load i64, i64* %RSP, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 4
  store i64 %5, i64* %PC, align 8
  %6 = add i64 %3, -88
  store i64 %6, i64* %RSP, align 8
  %7 = icmp ult i64 %3, 88
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
define %struct.Memory* @routine_movq__rdi__MINUS0x20__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -32
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

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__0x1__0x18__rdi_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %RDI, align 8
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
define %struct.Memory* @routine_sete__al(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %AL = bitcast %union.anon* %3 to i8*
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 3
  store i64 %5, i64* %PC, align 8
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %7 = load i8, i8* %6, align 1
  store i8 %7, i8* %AL, align 1
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
define %struct.Memory* @routine_movl__ecx__MINUS0x38__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %ECX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -56
  %6 = load i32, i32* %ECX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__0x0__0x11ad0__rdi_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %RDI, align 8
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
define %struct.Memory* @routine_je_.L_489b2c(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl__0x4___ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 5
  store i64 %4, i64* %PC, align 8
  store i64 4, i64* %RCX, align 8
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
define %struct.Memory* @routine_movl__eax__MINUS0x40__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -64
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__esi___eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0
  %ESI = bitcast %union.anon* %3 to i32*
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %4 = load i32, i32* %ESI, align 4
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
define %struct.Memory* @routine_movl_MINUS0x40__rbp____esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -64
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 3
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
define %struct.Memory* @routine_cmovnel__ecx___esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %ECX = bitcast %union.anon* %3 to i32*
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %4 = load i32, i32* %ECX, align 4
  %5 = zext i32 %4 to i64
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 3
  store i64 %7, i64* %PC, align 8
  %8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %9 = load i8, i8* %8, align 1
  %10 = icmp eq i8 %9, 0
  %11 = load i64, i64* %RSI, align 8
  %12 = select i1 %10, i64 %5, i64 %11
  %13 = and i64 %12, 4294967295
  store i64 %13, i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__esi__MINUS0x44__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0
  %ESI = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -68
  %6 = load i32, i32* %ESI, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_489b36(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl__eax__MINUS0x44__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -68
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x44__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -68
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
define %struct.Memory* @routine_movl__eax__MINUS0x3c__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -60
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_MINUS0x20__rbp____rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -32
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RCX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__0x0__0x23c__rcx_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = add i64 %3, 572
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
define %struct.Memory* @routine_je_.L_48a533(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jge_.L_489ba1(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movslq_MINUS0x30__rbp____rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -48
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
define %struct.Memory* @routine_movl_0x6cea10___rax_4____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = shl i64 %3, 2
  %5 = add i64 %4, 7137808
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 7
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %5 to i32*
  %9 = load i32, i32* %8, align 4
  %10 = zext i32 %9 to i64
  store i64 %10, i64* %RCX, align 8
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
define %struct.Memory* @routine_movl__ecx__0x1d8__rax__rdx_4_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %ECX = bitcast %union.anon* %3 to i32*
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %4 = load i64, i64* %RAX, align 8
  %5 = load i64, i64* %RDX, align 8
  %6 = shl i64 %5, 2
  %7 = add i64 %4, 472
  %8 = add i64 %7, %6
  %9 = load i32, i32* %ECX, align 4
  %10 = load i64, i64* %PC, align 8
  %11 = add i64 %10, 7
  store i64 %11, i64* %PC, align 8
  %12 = inttoptr i64 %8 to i32*
  store i32 %9, i32* %12, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movswl_0x710780___rax_2____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = shl i64 %3, 1
  %5 = add i64 %4, 7407488
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 8
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %5 to i16*
  %9 = load i16, i16* %8, align 2
  %10 = sext i16 %9 to i64
  %11 = and i64 %10, 4294967295
  store i64 %11, i64* %RCX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__ecx__0x1e8__rax__rdx_4_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %ECX = bitcast %union.anon* %3 to i32*
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %4 = load i64, i64* %RAX, align 8
  %5 = load i64, i64* %RDX, align 8
  %6 = shl i64 %5, 2
  %7 = add i64 %4, 488
  %8 = add i64 %7, %6
  %9 = load i32, i32* %ECX, align 4
  %10 = load i64, i64* %PC, align 8
  %11 = add i64 %10, 7
  store i64 %11, i64* %PC, align 8
  %12 = inttoptr i64 %8 to i32*
  store i32 %9, i32* %12, align 4
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
define %struct.Memory* @routine_jmpq_.L_489b54(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__0x0__MINUS0x38__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -56
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
define %struct.Memory* @routine_je_.L_489cdd(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jge_.L_489cd8(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jge_.L_489cc5(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl_MINUS0x2c__rbp____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -44
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
define %struct.Memory* @routine_movl__eax__MINUS0x48__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -72
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__ecx___eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %ECX = bitcast %union.anon* %3 to i32*
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %4 = load i32, i32* %ECX, align 4
  %5 = zext i32 %4 to i64
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 2
  store i64 %7, i64* %PC, align 8
  store i64 %5, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x48__rbp____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -72
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 3
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = zext i32 %8 to i64
  store i64 %9, i64* %RCX, align 8
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
define %struct.Memory* @routine_movl_MINUS0x30__rbp____esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -48
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

; Function Attrs: nounwind
define %struct.Memory* @routine_addl__eax___esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
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
  %10 = add i32 %5, %9
  %11 = zext i32 %10 to i64
  store i64 %11, i64* %RSI, align 8
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
define %struct.Memory* @routine_movl__esi__MINUS0x28__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0
  %ESI = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -40
  %6 = load i32, i32* %ESI, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
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
define %struct.Memory* @routine_shll__0x1___edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %RDX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 2
  store i64 %5, i64* %PC, align 8
  %6 = trunc i64 %3 to i32
  %7 = shl i32 %6, 1
  %8 = icmp slt i32 %6, 0
  %9 = icmp slt i32 %7, 0
  %10 = xor i1 %8, %9
  %11 = zext i32 %7 to i64
  store i64 %11, i64* %RDX, align 8
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
define %struct.Memory* @routine_movl__edx__MINUS0x50__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %EDX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -80
  %6 = load i32, i32* %EDX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x50__rbp____esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -80
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
define %struct.Memory* @routine_addl__edx___esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %EDX = bitcast %union.anon* %3 to i32*
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %4 = load i64, i64* %RSI, align 8
  %5 = load i32, i32* %EDX, align 4
  %6 = zext i32 %5 to i64
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 2
  store i64 %8, i64* %PC, align 8
  %9 = trunc i64 %4 to i32
  %10 = add i32 %5, %9
  %11 = zext i32 %10 to i64
  store i64 %11, i64* %RSI, align 8
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
define %struct.Memory* @routine_movw_0x7236c4___rdi_2____r8w(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0
  %R8W = bitcast %union.anon* %3 to i16*
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %4 = load i64, i64* %RDI, align 8
  %5 = shl i64 %4, 1
  %6 = add i64 %5, 7485124
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 9
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %6 to i16*
  %10 = load i16, i16* %9, align 2
  store i16 %10, i16* %R8W, align 2
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
define %struct.Memory* @routine_movq_0x1950__rdi____rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %RDI, align 8
  %4 = add i64 %3, 6480
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
define %struct.Memory* @routine_movq_0x6cb900___r9(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %R9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 19, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 8
  store i64 %4, i64* %PC, align 8
  %5 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*), align 8
  store i64 %5, i64* %R9, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_0x90__r9____edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %R9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 19, i32 0, i32 0
  %3 = load i64, i64* %R9, align 8
  %4 = add i64 %3, 144
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = zext i32 %8 to i64
  store i64 %9, i64* %RDX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_addl_MINUS0x30__rbp____edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RDX, align 8
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -48
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
define %struct.Memory* @routine_movslq__edx___r9(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %EDX = bitcast %union.anon* %3 to i32*
  %R9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 19, i32 0, i32 0
  %4 = load i32, i32* %EDX, align 4
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 3
  store i64 %6, i64* %PC, align 8
  %7 = sext i32 %4 to i64
  store i64 %7, i64* %R9, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq___rdi__r9_8____rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %R9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 19, i32 0, i32 0
  %3 = load i64, i64* %RDI, align 8
  %4 = load i64, i64* %R9, align 8
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
define %struct.Memory* @routine_movl_0x94__r9____edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %R9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 19, i32 0, i32 0
  %3 = load i64, i64* %R9, align 8
  %4 = add i64 %3, 148
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = zext i32 %8 to i64
  store i64 %9, i64* %RDX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_addl_MINUS0x2c__rbp____edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RDX, align 8
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
define %struct.Memory* @routine_movw__r8w____rdi__r9_2_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0
  %R8W = bitcast %union.anon* %3 to i16*
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %R9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 19, i32 0, i32 0
  %4 = load i64, i64* %RDI, align 8
  %5 = load i64, i64* %R9, align 8
  %6 = shl i64 %5, 1
  %7 = add i64 %6, %4
  %8 = load i16, i16* %R8W, align 2
  %9 = load i64, i64* %PC, align 8
  %10 = add i64 %9, 5
  store i64 %10, i64* %PC, align 8
  %11 = inttoptr i64 %7 to i16*
  store i16 %8, i16* %11, align 2
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movw_0x725268___rdi_2____r8w(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0
  %R8W = bitcast %union.anon* %3 to i16*
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %4 = load i64, i64* %RDI, align 8
  %5 = shl i64 %4, 1
  %6 = add i64 %5, 7492200
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 9
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %6 to i16*
  %10 = load i16, i16* %9, align 2
  store i16 %10, i16* %R8W, align 2
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_0x8__rdi____rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %RDI, align 8
  %4 = add i64 %3, 8
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RDI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_489bc3(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_489cca(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
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
define %struct.Memory* @routine_jmpq_.L_489bb2(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_489dbc(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jge_.L_489db7(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jge_.L_489da4(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__edx__MINUS0x5c__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %EDX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -92
  %6 = load i32, i32* %EDX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x5c__rbp____esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -92
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
define %struct.Memory* @routine_jmpq_.L_489cf5(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_489da9(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_489ce4(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jge_.L_489f0f(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jge_.L_489efc(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movswl___rax__rcx_2____edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
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
  %11 = sext i16 %10 to i64
  %12 = and i64 %11, 4294967295
  store i64 %12, i64* %RDX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jl_.L_489e98(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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

; Function Attrs: nounwind
define %struct.Memory* @routine_addq__0x18___rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 4
  store i64 %5, i64* %PC, align 8
  %6 = add i64 %3, 24
  store i64 %6, i64* %RAX, align 8
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
define %struct.Memory* @routine_movl_MINUS0x3c__rbp____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -60
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
define %struct.Memory* @routine_addl__0x0___ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 3
  store i64 %5, i64* %PC, align 8
  %6 = trunc i64 %3 to i32
  %7 = and i64 %3, 4294967295
  store i64 %7, i64* %RCX, align 8
  %8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %8, align 1
  %9 = and i32 %6, 255
  %10 = tail call i32 @llvm.ctpop.i32(i32 %9)
  %11 = trunc i32 %10 to i8
  %12 = and i8 %11, 1
  %13 = xor i8 %12, 1
  %14 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %13, i8* %14, align 1
  %15 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %15, align 1
  %16 = icmp eq i32 %6, 0
  %17 = zext i1 %16 to i8
  %18 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %17, i8* %18, align 1
  %19 = lshr i32 %6, 31
  %20 = trunc i32 %19 to i8
  %21 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %20, i8* %21, align 1
  %22 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %22, align 1
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
define %struct.Memory* @routine_movq_0x1950__rdx____rdx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %RDX, align 8
  %4 = add i64 %3, 6480
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RDX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq___rdx____rdx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = bitcast i64* %RDX to i64**
  %4 = load i64*, i64** %3, align 8
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 3
  store i64 %6, i64* %PC, align 8
  %7 = load i64, i64* %4, align 8
  store i64 %7, i64* %RDX, align 8
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
define %struct.Memory* @routine_movl_0x90__rsi____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %RSI, align 8
  %4 = add i64 %3, 144
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
define %struct.Memory* @routine_addl_MINUS0x30__rbp____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -48
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
define %struct.Memory* @routine_movslq__ecx___rsi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %ECX = bitcast %union.anon* %3 to i32*
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %4 = load i32, i32* %ECX, align 4
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
define %struct.Memory* @routine_movl_0x94__rsi____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %RSI, align 8
  %4 = add i64 %3, 148
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
define %struct.Memory* @routine_movswq___rdx__rsi_2____rdx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %RDX, align 8
  %4 = load i64, i64* %RSI, align 8
  %5 = shl i64 %4, 1
  %6 = add i64 %5, %3
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 5
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %6 to i16*
  %10 = load i16, i16* %9, align 2
  %11 = sext i16 %10 to i64
  store i64 %11, i64* %RDX, align 8
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
define %struct.Memory* @routine_movq__rax__MINUS0x68__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -104
  %5 = load i64, i64* %RAX, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 4
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %4 to i64*
  store i64 %5, i64* %8, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_489ea8(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__0xffffffffffffffff___rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 7
  store i64 %4, i64* %PC, align 8
  store i64 -1, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_MINUS0x68__rbp____rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -104
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RAX, align 8
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
define %struct.Memory* @routine_movq_0x1958__rcx____rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = add i64 %3, 6488
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RCX, align 8
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_0x90__rdx____esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %RDX, align 8
  %4 = add i64 %3, 144
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
define %struct.Memory* @routine_addl_MINUS0x30__rbp____esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RSI, align 8
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -48
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
define %struct.Memory* @routine_movl_0x94__rdx____esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %RDX, align 8
  %4 = add i64 %3, 148
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
define %struct.Memory* @routine_movq__rax____rcx__rdx_8_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = load i64, i64* %RDX, align 8
  %5 = shl i64 %4, 3
  %6 = add i64 %5, %3
  %7 = load i64, i64* %RAX, align 8
  %8 = load i64, i64* %PC, align 8
  %9 = add i64 %8, 4
  store i64 %9, i64* %PC, align 8
  %10 = inttoptr i64 %6 to i64*
  store i64 %7, i64* %10, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_489dd4(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_489f01(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_489dc3(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_je_.L_48a074(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jge_.L_48a06f(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jge_.L_48a05c(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movq_0x8__rax____rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = add i64 %3, 8
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jl_.L_489ff7(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movq__rax__MINUS0x70__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -112
  %5 = load i64, i64* %RAX, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 4
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %4 to i64*
  store i64 %5, i64* %8, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_48a007(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_MINUS0x70__rbp____rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -112
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RAX, align 8
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
define %struct.Memory* @routine_jmpq_.L_489f31(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_48a061(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_489f20(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_48a074(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_callq_.StoreMV8x8(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_callq_.RestoreMV8x8(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_cmpl__0x4__MINUS0x24__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
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
define %struct.Memory* @routine_jge_.L_48a165(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jge_.L_48a152(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_cmpl__0x2__MINUS0x2c__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
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
define %struct.Memory* @routine_jge_.L_48a13f(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_cmpl__0x41__MINUS0x30__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
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
  %9 = add i32 %8, -65
  %10 = icmp ult i32 %8, 65
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
define %struct.Memory* @routine_jge_.L_48a12c(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movq_0x6cc650___rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 8
  store i64 %4, i64* %PC, align 8
  %5 = load i64, i64* bitcast (%G_0x6cc650_type* @G_0x6cc650 to i64*), align 8
  store i64 %5, i64* %RAX, align 8
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
define %struct.Memory* @routine_movq_0x3738__rax____rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = add i64 %3, 14136
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RAX, align 8
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
define %struct.Memory* @routine_jmpq_.L_48a0bf(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_48a131(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_48a0ae(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_48a144(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jmpq_.L_48a09d(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_48a157(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
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
define %struct.Memory* @routine_jmpq_.L_48a08c(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__0x5__0x6ce9f8(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 8
  store i64 %4, i64* %PC, align 8
  %5 = load i32, i32* bitcast (%G_0x6ce9f8_type* @G_0x6ce9f8 to i32*), align 8
  %6 = add i32 %5, -5
  %7 = icmp ult i32 %5, 5
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
define %struct.Memory* @routine_jg_.L_48a2aa(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jne_.L_48a1aa(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_cmpl__0x0__0x11c00__rax_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
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
define %struct.Memory* @routine_jne_.L_48a2aa(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jge_.L_48a2a5(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_cmpl__0x10__MINUS0x30__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
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
define %struct.Memory* @routine_jge_.L_48a292(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jne_.L_48a25f(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movq__0x721aa0___rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x721aa0_type* @G__0x721aa0 to i64), i64* %RAX, align 8
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
define %struct.Memory* @routine_movq_0x1918__rax____rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = add i64 %3, 6424
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_0x9c__rcx____esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = add i64 %3, 156
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
define %struct.Memory* @routine_movl_0x98__rcx____esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = add i64 %3, 152
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
define %struct.Memory* @routine_jmpq_.L_48a27f(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__0x722ff0___rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x722ff0_type* @G__0x722ff0 to i64), i64* %RAX, align 8
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
define %struct.Memory* @routine_jmpq_.L_48a284(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_48a1df(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_48a297(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_48a1ce(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_48a3c9(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_0x6d32c0___eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 7
  store i64 %4, i64* %PC, align 8
  %5 = load i32, i32* bitcast (%G_0x6d32c0_type* @G_0x6d32c0 to i32*), align 8
  %6 = zext i32 %5 to i64
  store i64 %6, i64* %RAX, align 8
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
define %struct.Memory* @routine_movq_0x710778___rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 8
  store i64 %4, i64* %PC, align 8
  %5 = load i64, i64* bitcast (%G_0x710778_type* @G_0x710778 to i64*), align 8
  store i64 %5, i64* %RCX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_MINUS0x20__rbp____rdx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -32
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RDX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__rcx__0x1d0__rdx_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %RDX, align 8
  %4 = add i64 %3, 464
  %5 = load i64, i64* %RCX, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 7
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %4 to i64*
  store i64 %5, i64* %8, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jge_.L_48a3c4(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jge_.L_48a3b1(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jne_.L_48a366(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movq__0x711840___rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x711840_type* @G__0x711840 to i64), i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_48a39e(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__0x6cea50___rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x6cea50_type* @G__0x6cea50 to i64), i64* %RCX, align 8
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
define %struct.Memory* @routine_jmpq_.L_48a3a3(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_48a2e6(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_48a3b6(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_48a2d5(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jge_.L_48a52e(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jge_.L_48a51b(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movq__0x7247d0___rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x7247d0_type* @G__0x7247d0 to i64), i64* %RCX, align 8
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
define %struct.Memory* @routine_movq__0x6ce5a0___rsi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x6ce5a0_type* @G__0x6ce5a0 to i64), i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__0x725610___rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x725610_type* @G__0x725610 to i64), i64* %RDI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__rdi___r8(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %R8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0, i32 0
  %3 = load i64, i64* %RDI, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 3
  store i64 %5, i64* %PC, align 8
  store i64 %3, i64* %R8, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_addq__0x800___r8(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %R8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0, i32 0
  %3 = load i64, i64* %R8, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 7
  store i64 %5, i64* %PC, align 8
  %6 = add i64 %3, 2048
  store i64 %6, i64* %R8, align 8
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
define %struct.Memory* @routine_movq__0x70d650___r9(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %R9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 19, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x70d650_type* @G__0x70d650 to i64), i64* %R9, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__r9___r10(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %R9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 19, i32 0, i32 0
  %R10 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 21, i32 0, i32 0
  %3 = load i64, i64* %R9, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 3
  store i64 %5, i64* %PC, align 8
  store i64 %3, i64* %R10, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_addq__0x800___r10(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %R10 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 21, i32 0, i32 0
  %3 = load i64, i64* %R10, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 7
  store i64 %5, i64* %PC, align 8
  %6 = add i64 %3, 2048
  store i64 %6, i64* %R10, align 8
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
define %struct.Memory* @routine_movq__rdi___r11(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %R11 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 23, i32 0, i32 0
  %3 = load i64, i64* %RDI, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 3
  store i64 %5, i64* %PC, align 8
  store i64 %3, i64* %R11, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_addq__0x400___r11(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %R11 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 23, i32 0, i32 0
  %3 = load i64, i64* %R11, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 7
  store i64 %5, i64* %PC, align 8
  %6 = add i64 %3, 1024
  store i64 %6, i64* %R11, align 8
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
define %struct.Memory* @routine_movq__r9___rbx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 3, i32 0, i32 0
  %R9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 19, i32 0, i32 0
  %3 = load i64, i64* %R9, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 3
  store i64 %5, i64* %PC, align 8
  store i64 %3, i64* %RBX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_addq__0x400___rbx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 3, i32 0, i32 0
  %3 = load i64, i64* %RBX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 7
  store i64 %5, i64* %PC, align 8
  %6 = add i64 %3, 1024
  store i64 %6, i64* %RBX, align 8
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
define %struct.Memory* @routine_movslq_MINUS0x30__rbp____r14(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %R14 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 29, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -48
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = sext i32 %8 to i64
  store i64 %9, i64* %R14, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_shlq__0x6___r14(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %R14 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 29, i32 0, i32 0
  %3 = load i64, i64* %R14, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 4
  store i64 %5, i64* %PC, align 8
  %6 = shl i64 %3, 6
  store i64 %6, i64* %R14, align 8
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
define %struct.Memory* @routine_addq__r14___r9(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %R9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 19, i32 0, i32 0
  %R14 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 29, i32 0, i32 0
  %3 = load i64, i64* %R9, align 8
  %4 = load i64, i64* %R14, align 8
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
define %struct.Memory* @routine_movslq_MINUS0x2c__rbp____r14(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %R14 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 29, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -44
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = sext i32 %8 to i64
  store i64 %9, i64* %R14, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl___r9__r14_4____r15d(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %R9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 19, i32 0, i32 0
  %R14 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 29, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 31, i32 0, i32 0
  %4 = load i64, i64* %R9, align 8
  %5 = load i64, i64* %R14, align 8
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
define %struct.Memory* @routine_movslq_MINUS0x30__rbp____r9(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %R9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 19, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -48
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
define %struct.Memory* @routine_shlq__0x6___r9(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %R9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 19, i32 0, i32 0
  %3 = load i64, i64* %R9, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 4
  store i64 %5, i64* %PC, align 8
  %6 = shl i64 %3, 6
  store i64 %6, i64* %R9, align 8
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
define %struct.Memory* @routine_addq__r9___rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %R9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 19, i32 0, i32 0
  %3 = load i64, i64* %RDI, align 8
  %4 = load i64, i64* %R9, align 8
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
define %struct.Memory* @routine_movslq_MINUS0x2c__rbp____r9(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %R9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 19, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -44
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
define %struct.Memory* @routine_movl__r15d____rdi__r9_4_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 31, i32 0
  %R15D = bitcast %union.anon* %3 to i32*
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %R9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 19, i32 0, i32 0
  %4 = load i64, i64* %RDI, align 8
  %5 = load i64, i64* %R9, align 8
  %6 = shl i64 %5, 2
  %7 = add i64 %6, %4
  %8 = load i32, i32* %R15D, align 4
  %9 = load i64, i64* %PC, align 8
  %10 = add i64 %9, 4
  store i64 %10, i64* %PC, align 8
  %11 = inttoptr i64 %7 to i32*
  store i32 %8, i32* %11, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movslq_MINUS0x30__rbp____rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -48
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
define %struct.Memory* @routine_addq__rdi___rbx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 3, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %RBX, align 8
  %4 = load i64, i64* %RDI, align 8
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 3
  store i64 %6, i64* %PC, align 8
  %7 = add i64 %4, %3
  store i64 %7, i64* %RBX, align 8
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
define %struct.Memory* @routine_movslq_MINUS0x2c__rbp____rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -44
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
define %struct.Memory* @routine_movl___rbx__rdi_4____r15d(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 3, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 31, i32 0, i32 0
  %4 = load i64, i64* %RBX, align 8
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
define %struct.Memory* @routine_addq__rdi___r11(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %R11 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 23, i32 0, i32 0
  %3 = load i64, i64* %R11, align 8
  %4 = load i64, i64* %RDI, align 8
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 3
  store i64 %6, i64* %PC, align 8
  %7 = add i64 %4, %3
  store i64 %7, i64* %R11, align 8
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
define %struct.Memory* @routine_movl__r15d____r11__rdi_4_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 31, i32 0
  %R15D = bitcast %union.anon* %3 to i32*
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %R11 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 23, i32 0, i32 0
  %4 = load i64, i64* %R11, align 8
  %5 = load i64, i64* %RDI, align 8
  %6 = shl i64 %5, 2
  %7 = add i64 %6, %4
  %8 = load i32, i32* %R15D, align 4
  %9 = load i64, i64* %PC, align 8
  %10 = add i64 %9, 4
  store i64 %10, i64* %PC, align 8
  %11 = inttoptr i64 %7 to i32*
  store i32 %8, i32* %11, align 4
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_addq__rdi___r10(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %R10 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 21, i32 0, i32 0
  %3 = load i64, i64* %R10, align 8
  %4 = load i64, i64* %RDI, align 8
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
define %struct.Memory* @routine_movl___r10__rdi_4____r15d(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %R10 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 21, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 31, i32 0, i32 0
  %4 = load i64, i64* %R10, align 8
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
define %struct.Memory* @routine_movl__r15d____r8__rdi_4_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 31, i32 0
  %R15D = bitcast %union.anon* %3 to i32*
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %R8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0, i32 0
  %4 = load i64, i64* %R8, align 8
  %5 = load i64, i64* %RDI, align 8
  %6 = shl i64 %5, 2
  %7 = add i64 %6, %4
  %8 = load i32, i32* %R15D, align 4
  %9 = load i64, i64* %PC, align 8
  %10 = add i64 %9, 4
  store i64 %10, i64* %PC, align 8
  %11 = inttoptr i64 %7 to i32*
  store i32 %8, i32* %11, align 4
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
define %struct.Memory* @routine_movl___rsi__rdi_4____r15d(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 31, i32 0, i32 0
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
define %struct.Memory* @routine_movslq_MINUS0x30__rbp____rsi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -48
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
define %struct.Memory* @routine_movslq_MINUS0x2c__rbp____rsi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -44
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
define %struct.Memory* @routine_movl__r15d____rdx__rsi_4_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 31, i32 0
  %R15D = bitcast %union.anon* %3 to i32*
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %4 = load i64, i64* %RDX, align 8
  %5 = load i64, i64* %RSI, align 8
  %6 = shl i64 %5, 2
  %7 = add i64 %6, %4
  %8 = load i32, i32* %R15D, align 4
  %9 = load i64, i64* %PC, align 8
  %10 = add i64 %9, 4
  store i64 %10, i64* %PC, align 8
  %11 = inttoptr i64 %7 to i32*
  store i32 %8, i32* %11, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl___rcx__rdx_4____r15d(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 31, i32 0, i32 0
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
define %struct.Memory* @routine_movl__r15d____rax__rcx_4_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 31, i32 0
  %R15D = bitcast %union.anon* %3 to i32*
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %4 = load i64, i64* %RAX, align 8
  %5 = load i64, i64* %RCX, align 8
  %6 = shl i64 %5, 2
  %7 = add i64 %6, %4
  %8 = load i32, i32* %R15D, align 4
  %9 = load i64, i64* %PC, align 8
  %10 = add i64 %9, 4
  store i64 %10, i64* %PC, align 8
  %11 = inttoptr i64 %7 to i32*
  store i32 %8, i32* %11, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_48a3e1(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_48a520(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_48a3d0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_48aa05(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_0x11bf4__rcx____edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = add i64 %3, 72692
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
define %struct.Memory* @routine_addl__0x4___edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %RDX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 3
  store i64 %5, i64* %PC, align 8
  %6 = trunc i64 %3 to i32
  %7 = add i32 %6, 4
  %8 = zext i32 %7 to i64
  store i64 %8, i64* %RDX, align 8
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
define %struct.Memory* @routine_jge_.L_48a625(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jge_.L_48a612(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jge_.L_48a5ff(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jge_.L_48a5ec(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movq_0x6cc5f8___rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 8
  store i64 %4, i64* %PC, align 8
  %5 = load i64, i64* bitcast (%G_0x6cc5f8_type* @G_0x6cc5f8 to i64*), align 8
  store i64 %5, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_48a57f(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_48a5f1(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_48a56e(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_48a604(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_48a55d(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_48a617(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_48a53a(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__0x5__0x6d1f8c(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 8
  store i64 %4, i64* %PC, align 8
  %5 = load i32, i32* bitcast (%G_0x6d1f8c_type* @G_0x6d1f8c to i32*), align 8
  %6 = add i32 %5, -5
  %7 = icmp ult i32 %5, 5
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
define %struct.Memory* @routine_jg_.L_48a77c(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_je_.L_48a77c(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jne_.L_48a67c(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jne_.L_48a77c(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jge_.L_48a777(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jge_.L_48a764(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jne_.L_48a731(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movq__0x6f7ea0___rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x6f7ea0_type* @G__0x6f7ea0 to i64), i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_48a751(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_48a756(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_48a6b1(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_48a769(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_48a6a0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_48a89b(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_0x70d1a8___eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 7
  store i64 %4, i64* %PC, align 8
  %5 = load i32, i32* bitcast (%G_0x70d1a8_type* @G_0x70d1a8 to i32*), align 8
  %6 = zext i32 %5 to i64
  store i64 %6, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movslq_0x726848___rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 8
  store i64 %4, i64* %PC, align 8
  %5 = load i32, i32* bitcast (%G_0x726848_type* @G_0x726848 to i32*), align 8
  %6 = sext i32 %5 to i64
  store i64 %6, i64* %RCX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jge_.L_48a896(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jge_.L_48a883(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jne_.L_48a838(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movq__0x723430___rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x723430_type* @G__0x723430 to i64), i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_48a870(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__0x6d0290___rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x6d0290_type* @G__0x6d0290 to i64), i64* %RCX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_48a875(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_48a7b8(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_48a888(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_48a7a7(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jge_.L_48aa00(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jge_.L_48a9ed(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movq__0x724340___rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x724340_type* @G__0x724340 to i64), i64* %RCX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__0x710370___rsi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x710370_type* @G__0x710370 to i64), i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__0x70ead0___r9(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %R9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 19, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x70ead0_type* @G__0x70ead0 to i64), i64* %R9, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_48a8b3(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_48a9f2(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_48a8a2(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_addq__0x58___rsp(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %3 = load i64, i64* %RSP, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 4
  store i64 %5, i64* %PC, align 8
  %6 = add i64 %3, 88
  store i64 %6, i64* %RSP, align 8
  %7 = icmp ugt i64 %3, -89
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
define %struct.Memory* @routine_popq__rbx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 3, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 1
  store i64 %4, i64* %PC, align 8
  %5 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %6 = load i64, i64* %5, align 8
  %7 = add i64 %6, 8
  %8 = inttoptr i64 %6 to i64*
  %9 = load i64, i64* %8, align 8
  store i64 %9, i64* %RBX, align 8
  store i64 %7, i64* %5, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_popq__r14(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %R14 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 29, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 2
  store i64 %4, i64* %PC, align 8
  %5 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %6 = load i64, i64* %5, align 8
  %7 = add i64 %6, 8
  %8 = inttoptr i64 %6 to i64*
  %9 = load i64, i64* %8, align 8
  store i64 %9, i64* %R14, align 8
  store i64 %7, i64* %5, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_popq__r15(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %R15 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 31, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 2
  store i64 %4, i64* %PC, align 8
  %5 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %6 = load i64, i64* %5, align 8
  %7 = add i64 %6, 8
  %8 = inttoptr i64 %6 to i64*
  %9 = load i64, i64* %8, align 8
  store i64 %9, i64* %R15, align 8
  store i64 %7, i64* %5, align 8
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
