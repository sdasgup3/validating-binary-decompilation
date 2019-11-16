; ModuleID = 'mcsema/test.proposed.inline.ll'
source_filename = "llvm-link"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu-elf"

%__bss_start_type = type <{ [8 x i8] }>
%G_0x6cb900_type = type <{ [8 x i8] }>
%G_0x6f6f90_type = type <{ [8 x i8] }>
%G_0x70fcf0_type = type <{ [8 x i8] }>
%G_0x726418_type = type <{ [8 x i8] }>
%G__0x6d40f0_type = type <{ [8 x i8] }>
%G__0x6f6fa0_type = type <{ [8 x i8] }>
%G__0x722ff0_type = type <{ [8 x i8] }>
%G__0x723720_type = type <{ [8 x i8] }>
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
@G_0x726418 = local_unnamed_addr global %G_0x726418_type zeroinitializer
@G__0x6d40f0 = global %G__0x6d40f0_type zeroinitializer
@G__0x6f6fa0 = global %G__0x6f6fa0_type zeroinitializer
@G__0x722ff0 = global %G__0x722ff0_type zeroinitializer
@G__0x723720 = global %G__0x723720_type zeroinitializer
@G__0x725610 = global %G__0x725610_type zeroinitializer

declare %struct.Memory* @__remill_error(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr

; Function Attrs: nounwind readnone
declare i32 @llvm.ctpop.i32(i32) #0

declare %struct.Memory* @sub_43fcc0.ChromaPrediction4x4(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_43df10.LumaPrediction4x4(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_406250.dct_luma(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_40bde0.dct_luma_sp(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_4aa740.dct_luma8x8(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_40f540.copyblock_sp(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

; Function Attrs: alwaysinline
define %struct.Memory* @LumaResidualCoding8x8(%struct.State* noalias, i64, %struct.Memory* noalias) local_unnamed_addr #1 {
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
  %11 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 29, i32 0
  %R14.i341 = getelementptr inbounds %union.anon, %union.anon* %11, i64 0, i32 0
  %12 = load i64, i64* %R14.i341, align 8
  %13 = add i64 %10, 5
  store i64 %13, i64* %3, align 8
  %14 = add i64 %7, -16
  %15 = inttoptr i64 %14 to i64*
  store i64 %12, i64* %15, align 8
  %16 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 3, i32 0
  %RBX.i2043 = getelementptr inbounds %union.anon, %union.anon* %16, i64 0, i32 0
  %17 = load i64, i64* %RBX.i2043, align 8
  %18 = load i64, i64* %3, align 8
  %19 = add i64 %18, 1
  store i64 %19, i64* %3, align 8
  %20 = add i64 %7, -24
  %21 = inttoptr i64 %20 to i64*
  store i64 %17, i64* %21, align 8
  %22 = load i64, i64* %3, align 8
  %23 = add i64 %7, -200
  store i64 %23, i64* %6, align 8
  %24 = icmp ult i64 %20, 176
  %25 = zext i1 %24 to i8
  %26 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %25, i8* %26, align 1
  %27 = trunc i64 %23 to i32
  %28 = and i32 %27, 255
  %29 = tail call i32 @llvm.ctpop.i32(i32 %28)
  %30 = trunc i32 %29 to i8
  %31 = and i8 %30, 1
  %32 = xor i8 %31, 1
  %33 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %32, i8* %33, align 1
  %34 = xor i64 %20, 16
  %35 = xor i64 %34, %23
  %36 = lshr i64 %35, 4
  %37 = trunc i64 %36 to i8
  %38 = and i8 %37, 1
  %39 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %38, i8* %39, align 1
  %40 = icmp eq i64 %23, 0
  %41 = zext i1 %40 to i8
  %42 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %41, i8* %42, align 1
  %43 = lshr i64 %23, 63
  %44 = trunc i64 %43 to i8
  %45 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %44, i8* %45, align 1
  %46 = lshr i64 %20, 63
  %47 = xor i64 %43, %46
  %48 = add nuw nsw i64 %47, %46
  %49 = icmp eq i64 %48, 2
  %50 = zext i1 %49 to i8
  %51 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %50, i8* %51, align 1
  %52 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %AX.i2105 = bitcast %union.anon* %52 to i16*
  %53 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %CX.i = bitcast %union.anon* %53 to i16*
  %54 = load i16, i16* %CX.i, align 2
  store i16 %54, i16* %AX.i2105, align 2
  %55 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 21, i32 0
  %R10W.i2102 = bitcast %union.anon* %55 to i16*
  %56 = load i64, i64* %RBP.i, align 8
  %57 = add i64 %56, 24
  %58 = add i64 %22, 15
  store i64 %58, i64* %3, align 8
  %59 = inttoptr i64 %57 to i16*
  %60 = load i16, i16* %59, align 2
  store i16 %60, i16* %R10W.i2102, align 2
  %61 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 23, i32 0
  %R11W.i2099 = bitcast %union.anon* %61 to i16*
  %62 = add i64 %56, 16
  %63 = add i64 %22, 20
  store i64 %63, i64* %3, align 8
  %64 = inttoptr i64 %62 to i16*
  %65 = load i16, i16* %64, align 2
  store i16 %65, i16* %R11W.i2099, align 2
  %ECX.i2096 = bitcast %union.anon* %53 to i32*
  %RCX.i2097 = getelementptr inbounds %union.anon, %union.anon* %53, i64 0, i32 0
  store i8 0, i8* %26, align 1
  store i8 1, i8* %33, align 1
  store i8 1, i8* %42, align 1
  store i8 0, i8* %45, align 1
  store i8 0, i8* %51, align 1
  store i8 0, i8* %39, align 1
  %BL.i2093 = bitcast %union.anon* %16 to i8*
  %CL.i2094 = bitcast %union.anon* %53 to i8*
  store i8 0, i8* %BL.i2093, align 1
  store i64 1, i64* %RCX.i2097, align 8
  %R14D.i2089 = bitcast %union.anon* %11 to i32*
  store i64 2, i64* %R14.i341, align 8
  %66 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0
  %RDI.i2086 = getelementptr inbounds %union.anon, %union.anon* %66, i64 0, i32 0
  %67 = add i64 %56, -24
  %68 = load i64, i64* %RDI.i2086, align 8
  %69 = add i64 %22, 39
  store i64 %69, i64* %3, align 8
  %70 = inttoptr i64 %67 to i64*
  store i64 %68, i64* %70, align 8
  %71 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0
  %RSI.i2083 = getelementptr inbounds %union.anon, %union.anon* %71, i64 0, i32 0
  %72 = load i64, i64* %RBP.i, align 8
  %73 = add i64 %72, -32
  %74 = load i64, i64* %RSI.i2083, align 8
  %75 = load i64, i64* %3, align 8
  %76 = add i64 %75, 4
  store i64 %76, i64* %3, align 8
  %77 = inttoptr i64 %73 to i64*
  store i64 %74, i64* %77, align 8
  %78 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %EDX.i2080 = bitcast %union.anon* %78 to i32*
  %79 = load i64, i64* %RBP.i, align 8
  %80 = add i64 %79, -36
  %81 = load i32, i32* %EDX.i2080, align 4
  %82 = load i64, i64* %3, align 8
  %83 = add i64 %82, 3
  store i64 %83, i64* %3, align 8
  %84 = inttoptr i64 %80 to i32*
  store i32 %81, i32* %84, align 4
  %85 = load i64, i64* %RBP.i, align 8
  %86 = add i64 %85, -38
  %87 = load i16, i16* %AX.i2105, align 2
  %88 = load i64, i64* %3, align 8
  %89 = add i64 %88, 4
  store i64 %89, i64* %3, align 8
  %90 = inttoptr i64 %86 to i16*
  store i16 %87, i16* %90, align 2
  %91 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0
  %R8D.i2074 = bitcast %union.anon* %91 to i32*
  %92 = load i64, i64* %RBP.i, align 8
  %93 = add i64 %92, -44
  %94 = load i32, i32* %R8D.i2074, align 4
  %95 = load i64, i64* %3, align 8
  %96 = add i64 %95, 4
  store i64 %96, i64* %3, align 8
  %97 = inttoptr i64 %93 to i32*
  store i32 %94, i32* %97, align 4
  %98 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 19, i32 0
  %R9D.i2071 = bitcast %union.anon* %98 to i32*
  %99 = load i64, i64* %RBP.i, align 8
  %100 = add i64 %99, -48
  %101 = load i32, i32* %R9D.i2071, align 4
  %102 = load i64, i64* %3, align 8
  %103 = add i64 %102, 4
  store i64 %103, i64* %3, align 8
  %104 = inttoptr i64 %100 to i32*
  store i32 %101, i32* %104, align 4
  %105 = load i64, i64* %RBP.i, align 8
  %106 = add i64 %105, -50
  %107 = load i16, i16* %R11W.i2099, align 2
  %108 = load i64, i64* %3, align 8
  %109 = add i64 %108, 5
  store i64 %109, i64* %3, align 8
  %110 = inttoptr i64 %106 to i16*
  store i16 %107, i16* %110, align 2
  %111 = load i64, i64* %RBP.i, align 8
  %112 = add i64 %111, -52
  %113 = load i16, i16* %R10W.i2102, align 2
  %114 = load i64, i64* %3, align 8
  %115 = add i64 %114, 5
  store i64 %115, i64* %3, align 8
  %116 = inttoptr i64 %112 to i16*
  store i16 %113, i16* %116, align 2
  %117 = load i64, i64* %RBP.i, align 8
  %118 = add i64 %117, -80
  %119 = load i64, i64* %3, align 8
  %120 = add i64 %119, 7
  store i64 %120, i64* %3, align 8
  %121 = inttoptr i64 %118 to i32*
  store i32 0, i32* %121, align 4
  %122 = load i64, i64* %RBP.i, align 8
  %123 = add i64 %122, -88
  %124 = load i64, i64* %3, align 8
  %125 = add i64 %124, 7
  store i64 %125, i64* %3, align 8
  %126 = inttoptr i64 %123 to i32*
  store i32 0, i32* %126, align 4
  %RAX.i2060 = getelementptr inbounds %union.anon, %union.anon* %52, i64 0, i32 0
  %127 = load i64, i64* %RBP.i, align 8
  %128 = add i64 %127, -36
  %129 = load i64, i64* %3, align 8
  %130 = add i64 %129, 3
  store i64 %130, i64* %3, align 8
  %131 = inttoptr i64 %128 to i32*
  %132 = load i32, i32* %131, align 4
  %133 = zext i32 %132 to i64
  store i64 %133, i64* %RAX.i2060, align 8
  %134 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %135 = bitcast %union.anon* %52 to i32*
  %136 = sext i32 %132 to i64
  %137 = lshr i64 %136, 32
  store i64 %137, i64* %134, align 8
  %138 = load i32, i32* %R14D.i2089, align 4
  %139 = add i64 %129, 7
  store i64 %139, i64* %3, align 8
  %140 = sext i32 %138 to i64
  %141 = shl nuw i64 %137, 32
  %142 = or i64 %141, %133
  %143 = sdiv i64 %142, %140
  %144 = shl i64 %143, 32
  %145 = ashr exact i64 %144, 32
  %146 = icmp eq i64 %143, %145
  br i1 %146, label %149, label %147

; <label>:147:                                    ; preds = %entry
  %148 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %139, %struct.Memory* %2)
  %.pre = load i64, i64* %RAX.i2060, align 8
  %.pre130 = load i64, i64* %3, align 8
  %.pre131 = load i64, i64* %RBP.i, align 8
  br label %routine_idivl__r14d.exit2055

; <label>:149:                                    ; preds = %entry
  %150 = srem i64 %142, %140
  %151 = and i64 %143, 4294967295
  store i64 %151, i64* %RAX.i2060, align 8
  %152 = getelementptr inbounds %union.anon, %union.anon* %78, i64 0, i32 0
  %153 = and i64 %150, 4294967295
  store i64 %153, i64* %152, align 8
  store i8 0, i8* %26, align 1
  store i8 0, i8* %33, align 1
  store i8 0, i8* %39, align 1
  store i8 0, i8* %42, align 1
  store i8 0, i8* %45, align 1
  store i8 0, i8* %51, align 1
  br label %routine_idivl__r14d.exit2055

routine_idivl__r14d.exit2055:                     ; preds = %149, %147
  %154 = phi i64 [ %.pre131, %147 ], [ %127, %149 ]
  %155 = phi i64 [ %.pre130, %147 ], [ %139, %149 ]
  %156 = phi i64 [ %.pre, %147 ], [ %151, %149 ]
  %157 = phi %struct.Memory* [ %148, %147 ], [ %2, %149 ]
  %.tr = trunc i64 %156 to i32
  %158 = shl i32 %.tr, 3
  %159 = zext i32 %158 to i64
  store i64 %159, i64* %RAX.i2060, align 8
  %160 = lshr i64 %156, 29
  %161 = trunc i64 %160 to i8
  %162 = and i8 %161, 1
  store i8 %162, i8* %26, align 1
  %163 = and i32 %158, 248
  %164 = tail call i32 @llvm.ctpop.i32(i32 %163)
  %165 = trunc i32 %164 to i8
  %166 = and i8 %165, 1
  %167 = xor i8 %166, 1
  store i8 %167, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %168 = icmp eq i32 %158, 0
  %169 = zext i1 %168 to i8
  store i8 %169, i8* %42, align 1
  %170 = lshr i32 %.tr, 28
  %171 = trunc i32 %170 to i8
  %172 = and i8 %171, 1
  store i8 %172, i8* %45, align 1
  store i8 0, i8* %51, align 1
  %173 = add i64 %154, -92
  %174 = add i64 %155, 6
  store i64 %174, i64* %3, align 8
  %175 = inttoptr i64 %173 to i32*
  store i32 %158, i32* %175, align 4
  %176 = load i64, i64* %RBP.i, align 8
  %177 = add i64 %176, -36
  %178 = load i64, i64* %3, align 8
  %179 = add i64 %178, 3
  store i64 %179, i64* %3, align 8
  %180 = inttoptr i64 %177 to i32*
  %181 = load i32, i32* %180, align 4
  %182 = zext i32 %181 to i64
  store i64 %182, i64* %RAX.i2060, align 8
  %183 = sext i32 %181 to i64
  %184 = lshr i64 %183, 32
  store i64 %184, i64* %134, align 8
  %185 = load i32, i32* %R14D.i2089, align 4
  %186 = add i64 %178, 7
  store i64 %186, i64* %3, align 8
  %187 = sext i32 %185 to i64
  %188 = shl nuw i64 %184, 32
  %189 = or i64 %188, %182
  %190 = sdiv i64 %189, %187
  %191 = shl i64 %190, 32
  %192 = ashr exact i64 %191, 32
  %193 = icmp eq i64 %190, %192
  br i1 %193, label %196, label %194

; <label>:194:                                    ; preds = %routine_idivl__r14d.exit2055
  %195 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %186, %struct.Memory* %157)
  %RDX.i2040.phi.trans.insert = getelementptr inbounds %union.anon, %union.anon* %78, i64 0, i32 0
  %.pre132 = load i64, i64* %RDX.i2040.phi.trans.insert, align 8
  %.pre133 = load i64, i64* %3, align 8
  %.pre134 = load i64, i64* %RBP.i, align 8
  br label %routine_idivl__r14d.exit

; <label>:196:                                    ; preds = %routine_idivl__r14d.exit2055
  %197 = srem i64 %189, %187
  %198 = and i64 %190, 4294967295
  store i64 %198, i64* %RAX.i2060, align 8
  %199 = getelementptr inbounds %union.anon, %union.anon* %78, i64 0, i32 0
  %200 = and i64 %197, 4294967295
  store i64 %200, i64* %199, align 8
  store i8 0, i8* %26, align 1
  store i8 0, i8* %33, align 1
  store i8 0, i8* %39, align 1
  store i8 0, i8* %42, align 1
  store i8 0, i8* %45, align 1
  store i8 0, i8* %51, align 1
  br label %routine_idivl__r14d.exit

routine_idivl__r14d.exit:                         ; preds = %196, %194
  %RDX.i2040.pre-phi = phi i64* [ %199, %196 ], [ %RDX.i2040.phi.trans.insert, %194 ]
  %201 = phi i64 [ %176, %196 ], [ %.pre134, %194 ]
  %202 = phi i64 [ %186, %196 ], [ %.pre133, %194 ]
  %203 = phi i64 [ %200, %196 ], [ %.pre132, %194 ]
  %204 = phi %struct.Memory* [ %157, %196 ], [ %195, %194 ]
  %.tr53 = trunc i64 %203 to i32
  %205 = shl i32 %.tr53, 3
  %206 = zext i32 %205 to i64
  store i64 %206, i64* %RDX.i2040.pre-phi, align 8
  %207 = lshr i64 %203, 29
  %208 = trunc i64 %207 to i8
  %209 = and i8 %208, 1
  store i8 %209, i8* %26, align 1
  %210 = and i32 %205, 248
  %211 = tail call i32 @llvm.ctpop.i32(i32 %210)
  %212 = trunc i32 %211 to i8
  %213 = and i8 %212, 1
  %214 = xor i8 %213, 1
  store i8 %214, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %215 = icmp eq i32 %205, 0
  %216 = zext i1 %215 to i8
  store i8 %216, i8* %42, align 1
  %217 = lshr i32 %.tr53, 28
  %218 = trunc i32 %217 to i8
  %219 = and i8 %218, 1
  store i8 %219, i8* %45, align 1
  store i8 0, i8* %51, align 1
  %220 = add i64 %201, -96
  %221 = add i64 %202, 6
  store i64 %221, i64* %3, align 8
  %222 = inttoptr i64 %220 to i32*
  store i32 %205, i32* %222, align 4
  %223 = load i64, i64* %RBP.i, align 8
  %224 = add i64 %223, -36
  %225 = load i64, i64* %3, align 8
  %226 = add i64 %225, 3
  store i64 %226, i64* %3, align 8
  %227 = inttoptr i64 %224 to i32*
  %228 = load i32, i32* %227, align 4
  %229 = zext i32 %228 to i64
  store i64 %229, i64* %RDX.i2040.pre-phi, align 8
  %230 = add i64 %223, -152
  %231 = load i32, i32* %ECX.i2096, align 4
  %232 = add i64 %225, 9
  store i64 %232, i64* %3, align 8
  %233 = inttoptr i64 %230 to i32*
  store i32 %231, i32* %233, align 4
  %234 = load i32, i32* %EDX.i2080, align 4
  %235 = zext i32 %234 to i64
  %236 = load i64, i64* %3, align 8
  store i64 %235, i64* %RCX.i2097, align 8
  %237 = load i64, i64* %RBP.i, align 8
  %238 = add i64 %237, -152
  %239 = add i64 %236, 8
  store i64 %239, i64* %3, align 8
  %240 = inttoptr i64 %238 to i32*
  %241 = load i32, i32* %240, align 4
  %242 = zext i32 %241 to i64
  store i64 %242, i64* %RDX.i2040.pre-phi, align 8
  %243 = add i64 %236, 10
  store i64 %243, i64* %3, align 8
  %244 = trunc i32 %234 to i5
  switch i5 %244, label %250 [
    i5 0, label %routine_shll__cl___edx.exit2023
    i5 1, label %245
  ]

; <label>:245:                                    ; preds = %routine_idivl__r14d.exit
  %246 = shl i32 %241, 1
  %247 = icmp slt i32 %241, 0
  %248 = icmp slt i32 %246, 0
  %249 = xor i1 %247, %248
  br label %259

; <label>:250:                                    ; preds = %routine_idivl__r14d.exit
  %251 = and i32 %234, 31
  %252 = zext i32 %251 to i64
  %253 = add nuw nsw i64 %252, 4294967295
  %254 = and i64 %253, 4294967295
  %255 = shl i64 %242, %254
  %256 = trunc i64 %255 to i32
  %257 = icmp slt i32 %256, 0
  %258 = shl i32 %256, 1
  br label %259

; <label>:259:                                    ; preds = %250, %245
  %260 = phi i1 [ %247, %245 ], [ %257, %250 ]
  %261 = phi i1 [ %249, %245 ], [ false, %250 ]
  %262 = phi i32 [ %246, %245 ], [ %258, %250 ]
  %263 = zext i32 %262 to i64
  store i64 %263, i64* %RDX.i2040.pre-phi, align 8
  %264 = zext i1 %260 to i8
  store i8 %264, i8* %26, align 1
  %265 = and i32 %262, 254
  %266 = tail call i32 @llvm.ctpop.i32(i32 %265)
  %267 = trunc i32 %266 to i8
  %268 = and i8 %267, 1
  %269 = xor i8 %268, 1
  store i8 %269, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %270 = icmp eq i32 %262, 0
  %271 = zext i1 %270 to i8
  store i8 %271, i8* %42, align 1
  %272 = lshr i32 %262, 31
  %273 = trunc i32 %272 to i8
  store i8 %273, i8* %45, align 1
  %274 = zext i1 %261 to i8
  store i8 %274, i8* %51, align 1
  br label %routine_shll__cl___edx.exit2023

routine_shll__cl___edx.exit2023:                  ; preds = %259, %routine_idivl__r14d.exit
  %275 = phi i32 [ %262, %259 ], [ %241, %routine_idivl__r14d.exit ]
  %276 = add i64 %237, -100
  %277 = add i64 %236, 13
  store i64 %277, i64* %3, align 8
  %278 = inttoptr i64 %276 to i32*
  store i32 %275, i32* %278, align 4
  %279 = load i64, i64* %RBP.i, align 8
  %280 = add i64 %279, -112
  %281 = load i64, i64* %3, align 8
  %282 = add i64 %281, 7
  store i64 %282, i64* %3, align 8
  %283 = inttoptr i64 %280 to i32*
  store i32 0, i32* %283, align 4
  %284 = load i64, i64* %RBP.i, align 8
  %285 = add i64 %284, -44
  %286 = load i64, i64* %3, align 8
  %287 = add i64 %286, 4
  store i64 %287, i64* %3, align 8
  %288 = inttoptr i64 %285 to i32*
  %289 = load i32, i32* %288, align 4
  store i8 0, i8* %26, align 1
  %290 = and i32 %289, 255
  %291 = tail call i32 @llvm.ctpop.i32(i32 %290)
  %292 = trunc i32 %291 to i8
  %293 = and i8 %292, 1
  %294 = xor i8 %293, 1
  store i8 %294, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %295 = icmp eq i32 %289, 0
  %296 = zext i1 %295 to i8
  store i8 %296, i8* %42, align 1
  %297 = lshr i32 %289, 31
  %298 = trunc i32 %297 to i8
  store i8 %298, i8* %45, align 1
  store i8 0, i8* %51, align 1
  %299 = add i64 %284, -153
  %300 = load i8, i8* %BL.i2093, align 1
  %301 = add i64 %286, 10
  store i64 %301, i64* %3, align 8
  %302 = inttoptr i64 %299 to i8*
  store i8 %300, i8* %302, align 1
  %303 = load i64, i64* %3, align 8
  %304 = add i64 %303, 47
  %305 = add i64 %303, 6
  %306 = load i8, i8* %42, align 1
  %307 = icmp eq i8 %306, 0
  %308 = select i1 %307, i64 %304, i64 %305
  store i64 %308, i64* %3, align 8
  br i1 %307, label %routine_shll__cl___edx.exit2023.block_.L_43ef69_crit_edge, label %block_43ef40

routine_shll__cl___edx.exit2023.block_.L_43ef69_crit_edge: ; preds = %routine_shll__cl___edx.exit2023
  %.pre177 = bitcast %union.anon* %52 to i8*
  br label %block_.L_43ef69

block_43ef40:                                     ; preds = %routine_shll__cl___edx.exit2023
  store i64 0, i64* %RAX.i2060, align 8
  store i8 0, i8* %26, align 1
  store i8 1, i8* %33, align 1
  store i8 1, i8* %42, align 1
  store i8 0, i8* %45, align 1
  store i8 0, i8* %51, align 1
  store i8 0, i8* %39, align 1
  %AL.i2005 = bitcast %union.anon* %52 to i8*
  store i8 0, i8* %CL.i2094, align 1
  %309 = load i64, i64* %RBP.i, align 8
  %310 = add i64 %309, -48
  %311 = add i64 %308, 8
  store i64 %311, i64* %3, align 8
  %312 = inttoptr i64 %310 to i32*
  %313 = load i32, i32* %312, align 4
  store i8 0, i8* %26, align 1
  %314 = and i32 %313, 255
  %315 = tail call i32 @llvm.ctpop.i32(i32 %314)
  %316 = trunc i32 %315 to i8
  %317 = and i8 %316, 1
  %318 = xor i8 %317, 1
  store i8 %318, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %319 = icmp eq i32 %313, 0
  %320 = zext i1 %319 to i8
  store i8 %320, i8* %42, align 1
  %321 = lshr i32 %313, 31
  %322 = trunc i32 %321 to i8
  store i8 %322, i8* %45, align 1
  store i8 0, i8* %51, align 1
  %323 = add i64 %309, -153
  %324 = add i64 %308, 14
  store i64 %324, i64* %3, align 8
  %325 = inttoptr i64 %323 to i8*
  store i8 0, i8* %325, align 1
  %326 = load i64, i64* %3, align 8
  %327 = add i64 %326, 27
  %328 = add i64 %326, 6
  %329 = load i8, i8* %42, align 1
  %330 = icmp eq i8 %329, 0
  %331 = select i1 %330, i64 %327, i64 %328
  store i64 %331, i64* %3, align 8
  br i1 %330, label %block_.L_43ef69, label %block_43ef54

block_43ef54:                                     ; preds = %block_43ef40
  %332 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*), align 8
  store i64 %332, i64* %RAX.i2060, align 8
  %333 = add i64 %332, 24
  %334 = add i64 %331, 12
  store i64 %334, i64* %3, align 8
  %335 = inttoptr i64 %333 to i32*
  %336 = load i32, i32* %335, align 4
  %337 = add i32 %336, -1
  %338 = icmp eq i32 %336, 0
  %339 = zext i1 %338 to i8
  store i8 %339, i8* %26, align 1
  %340 = and i32 %337, 255
  %341 = tail call i32 @llvm.ctpop.i32(i32 %340)
  %342 = trunc i32 %341 to i8
  %343 = and i8 %342, 1
  %344 = xor i8 %343, 1
  store i8 %344, i8* %33, align 1
  %345 = xor i32 %337, %336
  %346 = lshr i32 %345, 4
  %347 = trunc i32 %346 to i8
  %348 = and i8 %347, 1
  store i8 %348, i8* %39, align 1
  %349 = icmp eq i32 %337, 0
  %350 = zext i1 %349 to i8
  store i8 %350, i8* %42, align 1
  %351 = lshr i32 %337, 31
  %352 = trunc i32 %351 to i8
  store i8 %352, i8* %45, align 1
  %353 = lshr i32 %336, 31
  %354 = xor i32 %351, %353
  %355 = add nuw nsw i32 %354, %353
  %356 = icmp eq i32 %355, 2
  %357 = zext i1 %356 to i8
  store i8 %357, i8* %51, align 1
  %358 = xor i1 %349, true
  %359 = zext i1 %358 to i8
  store i8 %359, i8* %CL.i2094, align 1
  %360 = load i64, i64* %RBP.i, align 8
  %361 = add i64 %360, -153
  %362 = add i64 %331, 21
  store i64 %362, i64* %3, align 8
  %363 = inttoptr i64 %361 to i8*
  store i8 %359, i8* %363, align 1
  %.pre135 = load i64, i64* %3, align 8
  br label %block_.L_43ef69

block_.L_43ef69:                                  ; preds = %routine_shll__cl___edx.exit2023.block_.L_43ef69_crit_edge, %block_43ef54, %block_43ef40
  %AL.i1987.pre-phi = phi i8* [ %.pre177, %routine_shll__cl___edx.exit2023.block_.L_43ef69_crit_edge ], [ %AL.i2005, %block_43ef54 ], [ %AL.i2005, %block_43ef40 ]
  %364 = phi i64 [ %304, %routine_shll__cl___edx.exit2023.block_.L_43ef69_crit_edge ], [ %.pre135, %block_43ef54 ], [ %327, %block_43ef40 ]
  %365 = load i64, i64* %RBP.i, align 8
  %366 = add i64 %365, -153
  %367 = add i64 %364, 6
  store i64 %367, i64* %3, align 8
  %368 = inttoptr i64 %366 to i8*
  %369 = load i8, i8* %368, align 1
  %370 = and i8 %369, 1
  store i8 %370, i8* %AL.i1987.pre-phi, align 1
  store i8 0, i8* %26, align 1
  %371 = zext i8 %370 to i32
  %372 = tail call i32 @llvm.ctpop.i32(i32 %371)
  %373 = trunc i32 %372 to i8
  %374 = xor i8 %373, 1
  store i8 %374, i8* %33, align 1
  %375 = xor i8 %370, 1
  store i8 %375, i8* %42, align 1
  store i8 0, i8* %45, align 1
  store i8 0, i8* %51, align 1
  store i8 0, i8* %39, align 1
  %376 = zext i8 %370 to i64
  store i64 %376, i64* %RCX.i2097, align 8
  %377 = add i64 %365, -116
  %378 = zext i8 %370 to i32
  %379 = add i64 %364, 14
  store i64 %379, i64* %3, align 8
  %380 = inttoptr i64 %377 to i32*
  store i32 %378, i32* %380, align 4
  %381 = load i64, i64* %3, align 8
  %382 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*), align 8
  store i64 %382, i64* %RDX.i2040.pre-phi, align 8
  %383 = add i64 %382, 14168
  %384 = add i64 %381, 15
  store i64 %384, i64* %3, align 8
  %385 = inttoptr i64 %383 to i64*
  %386 = load i64, i64* %385, align 8
  store i64 %386, i64* %RDX.i2040.pre-phi, align 8
  store i64 %382, i64* %RSI.i2083, align 8
  %387 = add i64 %382, 12
  %388 = add i64 %381, 27
  store i64 %388, i64* %3, align 8
  %389 = inttoptr i64 %387 to i32*
  %390 = load i32, i32* %389, align 4
  %391 = sext i32 %390 to i64
  %392 = mul nsw i64 %391, 632
  store i64 %392, i64* %RSI.i2083, align 8
  %393 = lshr i64 %392, 63
  %394 = add i64 %392, %386
  store i64 %394, i64* %RDX.i2040.pre-phi, align 8
  %395 = icmp ult i64 %394, %386
  %396 = icmp ult i64 %394, %392
  %397 = or i1 %395, %396
  %398 = zext i1 %397 to i8
  store i8 %398, i8* %26, align 1
  %399 = trunc i64 %394 to i32
  %400 = and i32 %399, 255
  %401 = tail call i32 @llvm.ctpop.i32(i32 %400)
  %402 = trunc i32 %401 to i8
  %403 = and i8 %402, 1
  %404 = xor i8 %403, 1
  store i8 %404, i8* %33, align 1
  %405 = xor i64 %392, %386
  %406 = xor i64 %405, %394
  %407 = lshr i64 %406, 4
  %408 = trunc i64 %407 to i8
  %409 = and i8 %408, 1
  store i8 %409, i8* %39, align 1
  %410 = icmp eq i64 %394, 0
  %411 = zext i1 %410 to i8
  store i8 %411, i8* %42, align 1
  %412 = lshr i64 %394, 63
  %413 = trunc i64 %412 to i8
  store i8 %413, i8* %45, align 1
  %414 = lshr i64 %386, 63
  %415 = xor i64 %412, %414
  %416 = xor i64 %412, %393
  %417 = add nuw nsw i64 %415, %416
  %418 = icmp eq i64 %417, 2
  %419 = zext i1 %418 to i8
  store i8 %419, i8* %51, align 1
  %420 = load i64, i64* %RBP.i, align 8
  %421 = add i64 %420, -128
  %422 = add i64 %381, 41
  store i64 %422, i64* %3, align 8
  %423 = inttoptr i64 %421 to i64*
  store i64 %394, i64* %423, align 8
  %424 = load i64, i64* %RBP.i, align 8
  %425 = add i64 %424, -128
  %426 = load i64, i64* %3, align 8
  %427 = add i64 %426, 4
  store i64 %427, i64* %3, align 8
  %428 = inttoptr i64 %425 to i64*
  %429 = load i64, i64* %428, align 8
  store i64 %429, i64* %RDX.i2040.pre-phi, align 8
  %430 = add i64 %429, 572
  %431 = add i64 %426, 10
  store i64 %431, i64* %3, align 8
  %432 = inttoptr i64 %430 to i32*
  %433 = load i32, i32* %432, align 4
  %434 = zext i32 %433 to i64
  store i64 %434, i64* %RCX.i2097, align 8
  %435 = add i64 %424, -132
  %436 = add i64 %426, 16
  store i64 %436, i64* %3, align 8
  %437 = inttoptr i64 %435 to i32*
  store i32 %433, i32* %437, align 4
  %438 = load i64, i64* %3, align 8
  %439 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*), align 8
  store i64 %439, i64* %RDX.i2040.pre-phi, align 8
  %440 = add i64 %439, 24
  %441 = add i64 %438, 12
  store i64 %441, i64* %3, align 8
  %442 = inttoptr i64 %440 to i32*
  %443 = load i32, i32* %442, align 4
  %444 = add i32 %443, -1
  %445 = icmp eq i32 %443, 0
  %446 = zext i1 %445 to i8
  store i8 %446, i8* %26, align 1
  %447 = and i32 %444, 255
  %448 = tail call i32 @llvm.ctpop.i32(i32 %447)
  %449 = trunc i32 %448 to i8
  %450 = and i8 %449, 1
  %451 = xor i8 %450, 1
  store i8 %451, i8* %33, align 1
  %452 = xor i32 %444, %443
  %453 = lshr i32 %452, 4
  %454 = trunc i32 %453 to i8
  %455 = and i8 %454, 1
  store i8 %455, i8* %39, align 1
  %456 = icmp eq i32 %444, 0
  %457 = zext i1 %456 to i8
  store i8 %457, i8* %42, align 1
  %458 = lshr i32 %444, 31
  %459 = trunc i32 %458 to i8
  store i8 %459, i8* %45, align 1
  %460 = lshr i32 %443, 31
  %461 = xor i32 %458, %460
  %462 = add nuw nsw i32 %461, %460
  %463 = icmp eq i32 %462, 2
  %464 = zext i1 %463 to i8
  store i8 %464, i8* %51, align 1
  %.v199 = select i1 %456, i64 18, i64 25
  %465 = add i64 %438, %.v199
  store i64 %465, i64* %3, align 8
  br i1 %456, label %block_43efc2, label %block_.L_43efc9

block_43efc2:                                     ; preds = %block_.L_43ef69
  %466 = load i64, i64* %RBP.i, align 8
  %467 = add i64 %466, -112
  %468 = add i64 %465, 7
  store i64 %468, i64* %3, align 8
  %469 = inttoptr i64 %467 to i32*
  store i32 1, i32* %469, align 4
  %.pre136 = load i64, i64* %3, align 8
  br label %block_.L_43efc9

block_.L_43efc9:                                  ; preds = %block_.L_43ef69, %block_43efc2
  %470 = phi i64 [ %.pre136, %block_43efc2 ], [ %465, %block_.L_43ef69 ]
  %471 = load i64, i64* %RBP.i, align 8
  %472 = add i64 %471, -108
  %473 = add i64 %470, 7
  store i64 %473, i64* %3, align 8
  %474 = inttoptr i64 %472 to i32*
  store i32 0, i32* %474, align 4
  %475 = load i64, i64* %RBP.i, align 8
  %476 = add i64 %475, -92
  %477 = load i64, i64* %3, align 8
  %478 = add i64 %477, 3
  store i64 %478, i64* %3, align 8
  %479 = inttoptr i64 %476 to i32*
  %480 = load i32, i32* %479, align 4
  %481 = zext i32 %480 to i64
  store i64 %481, i64* %RAX.i2060, align 8
  %482 = add i64 %475, -56
  %483 = add i64 %477, 6
  store i64 %483, i64* %3, align 8
  %484 = inttoptr i64 %482 to i32*
  store i32 %480, i32* %484, align 4
  %485 = getelementptr inbounds %union.anon, %union.anon* %91, i64 0, i32 0
  %486 = getelementptr inbounds %union.anon, %union.anon* %98, i64 0, i32 0
  %R10D.i1599 = bitcast %union.anon* %55 to i32*
  %487 = getelementptr inbounds %union.anon, %union.anon* %55, i64 0, i32 0
  %488 = bitcast i64* %6 to i32**
  %R11.i1593 = getelementptr inbounds %union.anon, %union.anon* %61, i64 0, i32 0
  %ESI.i714 = bitcast %union.anon* %71 to i32*
  %EDI.i590 = bitcast %union.anon* %66 to i32*
  %489 = tail call i32 @llvm.ctpop.i32(i32 and (i32 trunc (i64 add (i64 ptrtoint (%G__0x725610_type* @G__0x725610 to i64), i64 1024) to i32), i32 255))
  %490 = trunc i32 %489 to i8
  %491 = and i8 %490, 1
  %492 = xor i8 %491, 1
  %.pre137 = load i64, i64* %3, align 8
  br label %block_.L_43efd6

block_.L_43efd6:                                  ; preds = %block_.L_43f918, %block_.L_43efc9
  %493 = phi i64 [ %.pre137, %block_.L_43efc9 ], [ %5127, %block_.L_43f918 ]
  %MEMORY.2 = phi %struct.Memory* [ %204, %block_.L_43efc9 ], [ %MEMORY.3, %block_.L_43f918 ]
  %494 = load i64, i64* %RBP.i, align 8
  %495 = add i64 %494, -56
  %496 = add i64 %493, 3
  store i64 %496, i64* %3, align 8
  %497 = inttoptr i64 %495 to i32*
  %498 = load i32, i32* %497, align 4
  %499 = zext i32 %498 to i64
  store i64 %499, i64* %RAX.i2060, align 8
  %500 = add i64 %494, -92
  %501 = add i64 %493, 6
  store i64 %501, i64* %3, align 8
  %502 = inttoptr i64 %500 to i32*
  %503 = load i32, i32* %502, align 4
  %504 = add i32 %503, 8
  %505 = zext i32 %504 to i64
  store i64 %505, i64* %RCX.i2097, align 8
  %506 = lshr i32 %504, 31
  %507 = sub i32 %498, %504
  %508 = icmp ult i32 %498, %504
  %509 = zext i1 %508 to i8
  store i8 %509, i8* %26, align 1
  %510 = and i32 %507, 255
  %511 = tail call i32 @llvm.ctpop.i32(i32 %510)
  %512 = trunc i32 %511 to i8
  %513 = and i8 %512, 1
  %514 = xor i8 %513, 1
  store i8 %514, i8* %33, align 1
  %515 = xor i32 %504, %498
  %516 = xor i32 %515, %507
  %517 = lshr i32 %516, 4
  %518 = trunc i32 %517 to i8
  %519 = and i8 %518, 1
  store i8 %519, i8* %39, align 1
  %520 = icmp eq i32 %507, 0
  %521 = zext i1 %520 to i8
  store i8 %521, i8* %42, align 1
  %522 = lshr i32 %507, 31
  %523 = trunc i32 %522 to i8
  store i8 %523, i8* %45, align 1
  %524 = lshr i32 %498, 31
  %525 = xor i32 %506, %524
  %526 = xor i32 %522, %524
  %527 = add nuw nsw i32 %526, %525
  %528 = icmp eq i32 %527, 2
  %529 = zext i1 %528 to i8
  store i8 %529, i8* %51, align 1
  %530 = icmp ne i8 %523, 0
  %531 = xor i1 %530, %528
  %.v200 = select i1 %531, i64 17, i64 2398
  %532 = add i64 %493, %.v200
  store i64 %532, i64* %3, align 8
  br i1 %531, label %block_43efe7, label %block_.L_43f934

block_43efe7:                                     ; preds = %block_.L_43efd6
  %533 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*), align 8
  store i64 %533, i64* %RAX.i2060, align 8
  %534 = add i64 %533, 172
  %535 = add i64 %532, 14
  store i64 %535, i64* %3, align 8
  %536 = inttoptr i64 %534 to i32*
  %537 = load i32, i32* %536, align 4
  %538 = zext i32 %537 to i64
  store i64 %538, i64* %RCX.i2097, align 8
  %539 = add i64 %532, 17
  store i64 %539, i64* %3, align 8
  %540 = load i32, i32* %497, align 4
  %541 = add i32 %540, %537
  %542 = zext i32 %541 to i64
  store i64 %542, i64* %RCX.i2097, align 8
  %543 = icmp ult i32 %541, %537
  %544 = icmp ult i32 %541, %540
  %545 = or i1 %543, %544
  %546 = zext i1 %545 to i8
  store i8 %546, i8* %26, align 1
  %547 = and i32 %541, 255
  %548 = tail call i32 @llvm.ctpop.i32(i32 %547)
  %549 = trunc i32 %548 to i8
  %550 = and i8 %549, 1
  %551 = xor i8 %550, 1
  store i8 %551, i8* %33, align 1
  %552 = xor i32 %540, %537
  %553 = xor i32 %552, %541
  %554 = lshr i32 %553, 4
  %555 = trunc i32 %554 to i8
  %556 = and i8 %555, 1
  store i8 %556, i8* %39, align 1
  %557 = icmp eq i32 %541, 0
  %558 = zext i1 %557 to i8
  store i8 %558, i8* %42, align 1
  %559 = lshr i32 %541, 31
  %560 = trunc i32 %559 to i8
  store i8 %560, i8* %45, align 1
  %561 = lshr i32 %537, 31
  %562 = lshr i32 %540, 31
  %563 = xor i32 %559, %561
  %564 = xor i32 %559, %562
  %565 = add nuw nsw i32 %563, %564
  %566 = icmp eq i32 %565, 2
  %567 = zext i1 %566 to i8
  store i8 %567, i8* %51, align 1
  %568 = add i64 %494, -64
  %569 = add i64 %532, 20
  store i64 %569, i64* %3, align 8
  %570 = inttoptr i64 %568 to i32*
  store i32 %541, i32* %570, align 4
  %571 = load i64, i64* %RBP.i, align 8
  %572 = add i64 %571, -104
  %573 = load i64, i64* %3, align 8
  %574 = add i64 %573, 7
  store i64 %574, i64* %3, align 8
  %575 = inttoptr i64 %572 to i32*
  store i32 0, i32* %575, align 4
  %576 = load i64, i64* %RBP.i, align 8
  %577 = add i64 %576, -96
  %578 = load i64, i64* %3, align 8
  %579 = add i64 %578, 3
  store i64 %579, i64* %3, align 8
  %580 = inttoptr i64 %577 to i32*
  %581 = load i32, i32* %580, align 4
  %582 = zext i32 %581 to i64
  store i64 %582, i64* %RCX.i2097, align 8
  %583 = add i64 %576, -60
  %584 = add i64 %578, 6
  store i64 %584, i64* %3, align 8
  %585 = inttoptr i64 %583 to i32*
  store i32 %581, i32* %585, align 4
  %.pre154 = load i64, i64* %3, align 8
  br label %block_.L_43f008

block_.L_43f008:                                  ; preds = %block_.L_43f8fc, %block_43efe7
  %586 = phi i64 [ %.pre154, %block_43efe7 ], [ %5069, %block_.L_43f8fc ]
  %MEMORY.3 = phi %struct.Memory* [ %MEMORY.2, %block_43efe7 ], [ %MEMORY.28, %block_.L_43f8fc ]
  %587 = load i64, i64* %RBP.i, align 8
  %588 = add i64 %587, -60
  %589 = add i64 %586, 3
  store i64 %589, i64* %3, align 8
  %590 = inttoptr i64 %588 to i32*
  %591 = load i32, i32* %590, align 4
  %592 = zext i32 %591 to i64
  store i64 %592, i64* %RAX.i2060, align 8
  %593 = add i64 %587, -96
  %594 = add i64 %586, 6
  store i64 %594, i64* %3, align 8
  %595 = inttoptr i64 %593 to i32*
  %596 = load i32, i32* %595, align 4
  %597 = add i32 %596, 8
  %598 = zext i32 %597 to i64
  store i64 %598, i64* %RCX.i2097, align 8
  %599 = lshr i32 %597, 31
  %600 = sub i32 %591, %597
  %601 = icmp ult i32 %591, %597
  %602 = zext i1 %601 to i8
  store i8 %602, i8* %26, align 1
  %603 = and i32 %600, 255
  %604 = tail call i32 @llvm.ctpop.i32(i32 %603)
  %605 = trunc i32 %604 to i8
  %606 = and i8 %605, 1
  %607 = xor i8 %606, 1
  store i8 %607, i8* %33, align 1
  %608 = xor i32 %597, %591
  %609 = xor i32 %608, %600
  %610 = lshr i32 %609, 4
  %611 = trunc i32 %610 to i8
  %612 = and i8 %611, 1
  store i8 %612, i8* %39, align 1
  %613 = icmp eq i32 %600, 0
  %614 = zext i1 %613 to i8
  store i8 %614, i8* %42, align 1
  %615 = lshr i32 %600, 31
  %616 = trunc i32 %615 to i8
  store i8 %616, i8* %45, align 1
  %617 = lshr i32 %591, 31
  %618 = xor i32 %599, %617
  %619 = xor i32 %615, %617
  %620 = add nuw nsw i32 %619, %618
  %621 = icmp eq i32 %620, 2
  %622 = zext i1 %621 to i8
  store i8 %622, i8* %51, align 1
  %623 = icmp ne i8 %616, 0
  %624 = xor i1 %623, %621
  %.v180 = select i1 %624, i64 17, i64 2320
  %625 = add i64 %586, %.v180
  store i64 %625, i64* %3, align 8
  br i1 %624, label %block_43f019, label %block_.L_43f918

block_43f019:                                     ; preds = %block_.L_43f008
  %626 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*), align 8
  store i64 %626, i64* %RAX.i2060, align 8
  %627 = add i64 %626, 168
  %628 = add i64 %625, 14
  store i64 %628, i64* %3, align 8
  %629 = inttoptr i64 %627 to i32*
  %630 = load i32, i32* %629, align 4
  %631 = zext i32 %630 to i64
  store i64 %631, i64* %RCX.i2097, align 8
  %632 = add i64 %625, 17
  store i64 %632, i64* %3, align 8
  %633 = load i32, i32* %590, align 4
  %634 = add i32 %633, %630
  %635 = zext i32 %634 to i64
  store i64 %635, i64* %RCX.i2097, align 8
  %636 = icmp ult i32 %634, %630
  %637 = icmp ult i32 %634, %633
  %638 = or i1 %636, %637
  %639 = zext i1 %638 to i8
  store i8 %639, i8* %26, align 1
  %640 = and i32 %634, 255
  %641 = tail call i32 @llvm.ctpop.i32(i32 %640)
  %642 = trunc i32 %641 to i8
  %643 = and i8 %642, 1
  %644 = xor i8 %643, 1
  store i8 %644, i8* %33, align 1
  %645 = xor i32 %633, %630
  %646 = xor i32 %645, %634
  %647 = lshr i32 %646, 4
  %648 = trunc i32 %647 to i8
  %649 = and i8 %648, 1
  store i8 %649, i8* %39, align 1
  %650 = icmp eq i32 %634, 0
  %651 = zext i1 %650 to i8
  store i8 %651, i8* %42, align 1
  %652 = lshr i32 %634, 31
  %653 = trunc i32 %652 to i8
  store i8 %653, i8* %45, align 1
  %654 = lshr i32 %630, 31
  %655 = lshr i32 %633, 31
  %656 = xor i32 %652, %654
  %657 = xor i32 %652, %655
  %658 = add nuw nsw i32 %656, %657
  %659 = icmp eq i32 %658, 2
  %660 = zext i1 %659 to i8
  store i8 %660, i8* %51, align 1
  %661 = add i64 %587, -68
  %662 = add i64 %625, 20
  store i64 %662, i64* %3, align 8
  %663 = inttoptr i64 %661 to i32*
  store i32 %634, i32* %663, align 4
  %664 = load i64, i64* %RBP.i, align 8
  %665 = add i64 %664, -60
  %666 = load i64, i64* %3, align 8
  %667 = add i64 %666, 3
  store i64 %667, i64* %3, align 8
  %668 = inttoptr i64 %665 to i32*
  %669 = load i32, i32* %668, align 4
  %670 = sext i32 %669 to i64
  %671 = ashr i64 %670, 1
  %672 = lshr i64 %671, 1
  %673 = trunc i64 %671 to i8
  %674 = and i8 %673, 1
  %675 = trunc i64 %672 to i32
  %676 = and i64 %672, 4294967295
  store i64 %676, i64* %RCX.i2097, align 8
  store i8 %674, i8* %26, align 1
  %677 = and i32 %675, 255
  %678 = tail call i32 @llvm.ctpop.i32(i32 %677)
  %679 = trunc i32 %678 to i8
  %680 = and i8 %679, 1
  %681 = xor i8 %680, 1
  store i8 %681, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %682 = icmp eq i32 %675, 0
  %683 = zext i1 %682 to i8
  store i8 %683, i8* %42, align 1
  %684 = lshr i64 %671, 32
  %685 = trunc i64 %684 to i8
  %686 = and i8 %685, 1
  store i8 %686, i8* %45, align 1
  store i8 0, i8* %51, align 1
  %687 = add i64 %664, -56
  %688 = add i64 %666, 9
  store i64 %688, i64* %3, align 8
  %689 = trunc i64 %672 to i32
  %690 = inttoptr i64 %687 to i32*
  %691 = load i32, i32* %690, align 4
  %692 = add i32 %691, %689
  %693 = zext i32 %692 to i64
  store i64 %693, i64* %RCX.i2097, align 8
  %694 = icmp ult i32 %692, %689
  %695 = icmp ult i32 %692, %691
  %696 = or i1 %694, %695
  %697 = zext i1 %696 to i8
  store i8 %697, i8* %26, align 1
  %698 = and i32 %692, 255
  %699 = tail call i32 @llvm.ctpop.i32(i32 %698)
  %700 = trunc i32 %699 to i8
  %701 = and i8 %700, 1
  %702 = xor i8 %701, 1
  store i8 %702, i8* %33, align 1
  %703 = xor i32 %691, %689
  %704 = xor i32 %703, %692
  %705 = lshr i32 %704, 4
  %706 = trunc i32 %705 to i8
  %707 = and i8 %706, 1
  store i8 %707, i8* %39, align 1
  %708 = icmp eq i32 %692, 0
  %709 = zext i1 %708 to i8
  store i8 %709, i8* %42, align 1
  %710 = lshr i32 %692, 31
  %711 = trunc i32 %710 to i8
  store i8 %711, i8* %45, align 1
  %712 = lshr i64 %671, 32
  %713 = trunc i64 %712 to i32
  %714 = and i32 %713, 1
  %715 = lshr i32 %691, 31
  %716 = xor i32 %710, %714
  %717 = xor i32 %710, %715
  %718 = add nuw nsw i32 %716, %717
  %719 = icmp eq i32 %718, 2
  %720 = zext i1 %719 to i8
  store i8 %720, i8* %51, align 1
  %721 = add i64 %664, -84
  %722 = add i64 %666, 12
  store i64 %722, i64* %3, align 8
  %723 = inttoptr i64 %721 to i32*
  store i32 %692, i32* %723, align 4
  %724 = load i64, i64* %3, align 8
  %725 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*), align 8
  store i64 %725, i64* %RAX.i2060, align 8
  %726 = add i64 %725, 72724
  %727 = add i64 %724, 15
  store i64 %727, i64* %3, align 8
  %728 = inttoptr i64 %726 to i32*
  %729 = load i32, i32* %728, align 4
  store i8 0, i8* %26, align 1
  %730 = and i32 %729, 255
  %731 = tail call i32 @llvm.ctpop.i32(i32 %730)
  %732 = trunc i32 %731 to i8
  %733 = and i8 %732, 1
  %734 = xor i8 %733, 1
  store i8 %734, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %735 = icmp eq i32 %729, 0
  %736 = zext i1 %735 to i8
  store i8 %736, i8* %42, align 1
  %737 = lshr i32 %729, 31
  %738 = trunc i32 %737 to i8
  store i8 %738, i8* %45, align 1
  store i8 0, i8* %51, align 1
  %.v217 = select i1 %735, i64 433, i64 21
  %739 = add i64 %724, %.v217
  store i64 %739, i64* %3, align 8
  br i1 %735, label %block_43f019.block_.L_43f1ea_crit_edge, label %block_43f04e

block_43f019.block_.L_43f1ea_crit_edge:           ; preds = %block_43f019
  %.pre159 = load i64, i64* %RBP.i, align 8
  br label %block_.L_43f1ea

block_43f04e:                                     ; preds = %block_43f019
  store i64 0, i64* %RDI.i2086, align 8
  store i8 0, i8* %26, align 1
  store i8 1, i8* %33, align 1
  store i8 1, i8* %42, align 1
  store i8 0, i8* %45, align 1
  store i8 0, i8* %51, align 1
  store i8 0, i8* %39, align 1
  %740 = load i64, i64* %RBP.i, align 8
  %741 = add i64 %740, -60
  %742 = add i64 %739, 5
  store i64 %742, i64* %3, align 8
  %743 = inttoptr i64 %741 to i32*
  %744 = load i32, i32* %743, align 4
  %745 = zext i32 %744 to i64
  store i64 %745, i64* %RSI.i2083, align 8
  %746 = add i64 %740, -56
  %747 = add i64 %739, 8
  store i64 %747, i64* %3, align 8
  %748 = inttoptr i64 %746 to i32*
  %749 = load i32, i32* %748, align 4
  %750 = zext i32 %749 to i64
  store i64 %750, i64* %RDX.i2040.pre-phi, align 8
  %751 = add i64 %740, -38
  %752 = add i64 %739, 12
  store i64 %752, i64* %3, align 8
  %753 = inttoptr i64 %751 to i16*
  %754 = load i16, i16* %753, align 2
  %755 = sext i16 %754 to i64
  %756 = and i64 %755, 4294967295
  store i64 %756, i64* %RCX.i2097, align 8
  %757 = add i64 %740, -44
  %758 = add i64 %739, 16
  store i64 %758, i64* %3, align 8
  %759 = inttoptr i64 %757 to i32*
  %760 = load i32, i32* %759, align 4
  %761 = zext i32 %760 to i64
  store i64 %761, i64* %485, align 8
  %762 = add i64 %740, -48
  %763 = add i64 %739, 20
  store i64 %763, i64* %3, align 8
  %764 = inttoptr i64 %762 to i32*
  %765 = load i32, i32* %764, align 4
  %766 = zext i32 %765 to i64
  store i64 %766, i64* %486, align 8
  %767 = add i64 %740, -50
  %768 = add i64 %739, 24
  store i64 %768, i64* %3, align 8
  %769 = inttoptr i64 %767 to i16*
  %770 = load i16, i16* %769, align 2
  store i16 %770, i16* %AX.i2105, align 2
  %771 = sext i16 %770 to i64
  %772 = and i64 %771, 4294967295
  store i64 %772, i64* %487, align 8
  %773 = load i32*, i32** %488, align 8
  %774 = sext i16 %770 to i32
  %775 = add i64 %739, 32
  store i64 %775, i64* %3, align 8
  store i32 %774, i32* %773, align 4
  %776 = load i64, i64* %RBP.i, align 8
  %777 = add i64 %776, -52
  %778 = load i64, i64* %3, align 8
  %779 = add i64 %778, 5
  store i64 %779, i64* %3, align 8
  %780 = inttoptr i64 %777 to i16*
  %781 = load i16, i16* %780, align 2
  %782 = sext i16 %781 to i64
  %783 = and i64 %782, 4294967295
  store i64 %783, i64* %487, align 8
  %784 = load i64, i64* %6, align 8
  %785 = add i64 %784, 8
  %786 = sext i16 %781 to i32
  %787 = add i64 %778, 10
  store i64 %787, i64* %3, align 8
  %788 = inttoptr i64 %785 to i32*
  store i32 %786, i32* %788, align 4
  %789 = load i64, i64* %3, align 8
  %790 = add i64 %789, 3144
  %791 = add i64 %789, 5
  %792 = load i64, i64* %6, align 8
  %793 = add i64 %792, -8
  %794 = inttoptr i64 %793 to i64*
  store i64 %791, i64* %794, align 8
  store i64 %793, i64* %6, align 8
  store i64 %790, i64* %3, align 8
  %call2_43f078 = tail call %struct.Memory* @sub_43fcc0.ChromaPrediction4x4(%struct.State* nonnull %0, i64 %790, %struct.Memory* %MEMORY.3)
  %795 = load i64, i64* %RBP.i, align 8
  %796 = add i64 %795, -76
  %797 = load i64, i64* %3, align 8
  %798 = add i64 %797, 7
  store i64 %798, i64* %3, align 8
  %799 = inttoptr i64 %796 to i32*
  store i32 0, i32* %799, align 4
  %.pre155 = load i64, i64* %3, align 8
  br label %block_.L_43f084

block_.L_43f084:                                  ; preds = %block_.L_43f105, %block_43f04e
  %800 = phi i64 [ %1115, %block_.L_43f105 ], [ %.pre155, %block_43f04e ]
  %801 = load i64, i64* %RBP.i, align 8
  %802 = add i64 %801, -76
  %803 = add i64 %800, 4
  store i64 %803, i64* %3, align 8
  %804 = inttoptr i64 %802 to i32*
  %805 = load i32, i32* %804, align 4
  %806 = add i32 %805, -4
  %807 = icmp ult i32 %805, 4
  %808 = zext i1 %807 to i8
  store i8 %808, i8* %26, align 1
  %809 = and i32 %806, 255
  %810 = tail call i32 @llvm.ctpop.i32(i32 %809)
  %811 = trunc i32 %810 to i8
  %812 = and i8 %811, 1
  %813 = xor i8 %812, 1
  store i8 %813, i8* %33, align 1
  %814 = xor i32 %806, %805
  %815 = lshr i32 %814, 4
  %816 = trunc i32 %815 to i8
  %817 = and i8 %816, 1
  store i8 %817, i8* %39, align 1
  %818 = icmp eq i32 %806, 0
  %819 = zext i1 %818 to i8
  store i8 %819, i8* %42, align 1
  %820 = lshr i32 %806, 31
  %821 = trunc i32 %820 to i8
  store i8 %821, i8* %45, align 1
  %822 = lshr i32 %805, 31
  %823 = xor i32 %820, %822
  %824 = add nuw nsw i32 %823, %822
  %825 = icmp eq i32 %824, 2
  %826 = zext i1 %825 to i8
  store i8 %826, i8* %51, align 1
  %827 = icmp ne i8 %821, 0
  %828 = xor i1 %827, %825
  %.v218 = select i1 %828, i64 10, i64 148
  %829 = add i64 %800, %.v218
  store i64 %829, i64* %3, align 8
  br i1 %828, label %block_43f08e, label %block_.L_43f118

block_43f08e:                                     ; preds = %block_.L_43f084
  %830 = add i64 %801, -72
  %831 = add i64 %829, 7
  store i64 %831, i64* %3, align 8
  %832 = inttoptr i64 %830 to i32*
  store i32 0, i32* %832, align 4
  %.pre158 = load i64, i64* %3, align 8
  br label %block_.L_43f095

block_.L_43f095:                                  ; preds = %block_43f09f, %block_43f08e
  %833 = phi i64 [ %1085, %block_43f09f ], [ %.pre158, %block_43f08e ]
  %834 = load i64, i64* %RBP.i, align 8
  %835 = add i64 %834, -72
  %836 = add i64 %833, 4
  store i64 %836, i64* %3, align 8
  %837 = inttoptr i64 %835 to i32*
  %838 = load i32, i32* %837, align 4
  %839 = add i32 %838, -4
  %840 = icmp ult i32 %838, 4
  %841 = zext i1 %840 to i8
  store i8 %841, i8* %26, align 1
  %842 = and i32 %839, 255
  %843 = tail call i32 @llvm.ctpop.i32(i32 %842)
  %844 = trunc i32 %843 to i8
  %845 = and i8 %844, 1
  %846 = xor i8 %845, 1
  store i8 %846, i8* %33, align 1
  %847 = xor i32 %839, %838
  %848 = lshr i32 %847, 4
  %849 = trunc i32 %848 to i8
  %850 = and i8 %849, 1
  store i8 %850, i8* %39, align 1
  %851 = icmp eq i32 %839, 0
  %852 = zext i1 %851 to i8
  store i8 %852, i8* %42, align 1
  %853 = lshr i32 %839, 31
  %854 = trunc i32 %853 to i8
  store i8 %854, i8* %45, align 1
  %855 = lshr i32 %838, 31
  %856 = xor i32 %853, %855
  %857 = add nuw nsw i32 %856, %855
  %858 = icmp eq i32 %857, 2
  %859 = zext i1 %858 to i8
  store i8 %859, i8* %51, align 1
  %860 = icmp ne i8 %854, 0
  %861 = xor i1 %860, %858
  %.v198 = select i1 %861, i64 10, i64 112
  %862 = add i64 %833, %.v198
  store i64 %862, i64* %3, align 8
  br i1 %861, label %block_43f09f, label %block_.L_43f105

block_43f09f:                                     ; preds = %block_.L_43f095
  store i64 add (i64 ptrtoint (%G__0x725610_type* @G__0x725610 to i64), i64 1024), i64* %RAX.i2060, align 8
  %863 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*), align 8
  %864 = add i64 %863, 12600
  store i64 %864, i64* %RCX.i2097, align 8
  %865 = icmp ugt i64 %863, -12601
  %866 = zext i1 %865 to i8
  store i8 %866, i8* %26, align 1
  %867 = trunc i64 %864 to i32
  %868 = and i32 %867, 255
  %869 = tail call i32 @llvm.ctpop.i32(i32 %868)
  %870 = trunc i32 %869 to i8
  %871 = and i8 %870, 1
  %872 = xor i8 %871, 1
  store i8 %872, i8* %33, align 1
  %873 = xor i64 %863, 16
  %874 = xor i64 %873, %864
  %875 = lshr i64 %874, 4
  %876 = trunc i64 %875 to i8
  %877 = and i8 %876, 1
  store i8 %877, i8* %39, align 1
  %878 = icmp eq i64 %864, 0
  %879 = zext i1 %878 to i8
  store i8 %879, i8* %42, align 1
  %880 = lshr i64 %864, 63
  %881 = trunc i64 %880 to i8
  store i8 %881, i8* %45, align 1
  %882 = lshr i64 %863, 63
  %883 = xor i64 %880, %882
  %884 = add nuw nsw i64 %883, %880
  %885 = icmp eq i64 %884, 2
  %886 = zext i1 %885 to i8
  store i8 %886, i8* %51, align 1
  %887 = add i64 %862, 34
  store i64 %887, i64* %3, align 8
  %888 = load i32, i32* %837, align 4
  %889 = zext i32 %888 to i64
  store i64 %889, i64* %RDX.i2040.pre-phi, align 8
  %890 = add i64 %834, -60
  %891 = add i64 %862, 37
  store i64 %891, i64* %3, align 8
  %892 = inttoptr i64 %890 to i32*
  %893 = load i32, i32* %892, align 4
  %894 = add i32 %893, %888
  %895 = zext i32 %894 to i64
  store i64 %895, i64* %RDX.i2040.pre-phi, align 8
  %896 = sext i32 %894 to i64
  %897 = shl nsw i64 %896, 5
  store i64 %897, i64* %RSI.i2083, align 8
  %898 = load i64, i64* %RCX.i2097, align 8
  %899 = add i64 %897, %898
  store i64 %899, i64* %RCX.i2097, align 8
  %900 = icmp ult i64 %899, %898
  %901 = icmp ult i64 %899, %897
  %902 = or i1 %900, %901
  %903 = zext i1 %902 to i8
  store i8 %903, i8* %26, align 1
  %904 = trunc i64 %899 to i32
  %905 = and i32 %904, 255
  %906 = tail call i32 @llvm.ctpop.i32(i32 %905)
  %907 = trunc i32 %906 to i8
  %908 = and i8 %907, 1
  %909 = xor i8 %908, 1
  store i8 %909, i8* %33, align 1
  %910 = xor i64 %898, %899
  %911 = lshr i64 %910, 4
  %912 = trunc i64 %911 to i8
  %913 = and i8 %912, 1
  store i8 %913, i8* %39, align 1
  %914 = icmp eq i64 %899, 0
  %915 = zext i1 %914 to i8
  store i8 %915, i8* %42, align 1
  %916 = lshr i64 %899, 63
  %917 = trunc i64 %916 to i8
  store i8 %917, i8* %45, align 1
  %918 = lshr i64 %898, 63
  %919 = lshr i64 %896, 58
  %920 = and i64 %919, 1
  %921 = xor i64 %916, %918
  %922 = xor i64 %916, %920
  %923 = add nuw nsw i64 %921, %922
  %924 = icmp eq i64 %923, 2
  %925 = zext i1 %924 to i8
  store i8 %925, i8* %51, align 1
  %926 = load i64, i64* %RBP.i, align 8
  %927 = add i64 %926, -76
  %928 = add i64 %862, 50
  store i64 %928, i64* %3, align 8
  %929 = inttoptr i64 %927 to i32*
  %930 = load i32, i32* %929, align 4
  %931 = zext i32 %930 to i64
  store i64 %931, i64* %RDX.i2040.pre-phi, align 8
  %932 = add i64 %926, -56
  %933 = add i64 %862, 53
  store i64 %933, i64* %3, align 8
  %934 = inttoptr i64 %932 to i32*
  %935 = load i32, i32* %934, align 4
  %936 = add i32 %935, %930
  %937 = zext i32 %936 to i64
  store i64 %937, i64* %RDX.i2040.pre-phi, align 8
  %938 = icmp ult i32 %936, %930
  %939 = icmp ult i32 %936, %935
  %940 = or i1 %938, %939
  %941 = zext i1 %940 to i8
  store i8 %941, i8* %26, align 1
  %942 = and i32 %936, 255
  %943 = tail call i32 @llvm.ctpop.i32(i32 %942)
  %944 = trunc i32 %943 to i8
  %945 = and i8 %944, 1
  %946 = xor i8 %945, 1
  store i8 %946, i8* %33, align 1
  %947 = xor i32 %935, %930
  %948 = xor i32 %947, %936
  %949 = lshr i32 %948, 4
  %950 = trunc i32 %949 to i8
  %951 = and i8 %950, 1
  store i8 %951, i8* %39, align 1
  %952 = icmp eq i32 %936, 0
  %953 = zext i1 %952 to i8
  store i8 %953, i8* %42, align 1
  %954 = lshr i32 %936, 31
  %955 = trunc i32 %954 to i8
  store i8 %955, i8* %45, align 1
  %956 = lshr i32 %930, 31
  %957 = lshr i32 %935, 31
  %958 = xor i32 %954, %956
  %959 = xor i32 %954, %957
  %960 = add nuw nsw i32 %958, %959
  %961 = icmp eq i32 %960, 2
  %962 = zext i1 %961 to i8
  store i8 %962, i8* %51, align 1
  %963 = sext i32 %936 to i64
  store i64 %963, i64* %RSI.i2083, align 8
  %964 = shl nsw i64 %963, 1
  %965 = add i64 %899, %964
  %966 = add i64 %862, 60
  store i64 %966, i64* %3, align 8
  %967 = inttoptr i64 %965 to i16*
  %968 = load i16, i16* %967, align 2
  %969 = zext i16 %968 to i64
  store i64 %969, i64* %RDX.i2040.pre-phi, align 8
  %970 = add i64 %926, -72
  %971 = add i64 %862, 63
  store i64 %971, i64* %3, align 8
  %972 = inttoptr i64 %970 to i32*
  %973 = load i32, i32* %972, align 4
  %974 = zext i32 %973 to i64
  store i64 %974, i64* %RDI.i2086, align 8
  %975 = add i64 %926, -60
  %976 = add i64 %862, 66
  store i64 %976, i64* %3, align 8
  %977 = inttoptr i64 %975 to i32*
  %978 = load i32, i32* %977, align 4
  %979 = add i32 %978, %973
  %980 = zext i32 %979 to i64
  store i64 %980, i64* %RDI.i2086, align 8
  %981 = sext i32 %979 to i64
  %982 = shl nsw i64 %981, 6
  store i64 %982, i64* %RCX.i2097, align 8
  %983 = load i64, i64* %RAX.i2060, align 8
  %984 = add i64 %982, %983
  store i64 %984, i64* %RAX.i2060, align 8
  %985 = icmp ult i64 %984, %983
  %986 = icmp ult i64 %984, %982
  %987 = or i1 %985, %986
  %988 = zext i1 %987 to i8
  store i8 %988, i8* %26, align 1
  %989 = trunc i64 %984 to i32
  %990 = and i32 %989, 255
  %991 = tail call i32 @llvm.ctpop.i32(i32 %990)
  %992 = trunc i32 %991 to i8
  %993 = and i8 %992, 1
  %994 = xor i8 %993, 1
  store i8 %994, i8* %33, align 1
  %995 = xor i64 %983, %984
  %996 = lshr i64 %995, 4
  %997 = trunc i64 %996 to i8
  %998 = and i8 %997, 1
  store i8 %998, i8* %39, align 1
  %999 = icmp eq i64 %984, 0
  %1000 = zext i1 %999 to i8
  store i8 %1000, i8* %42, align 1
  %1001 = lshr i64 %984, 63
  %1002 = trunc i64 %1001 to i8
  store i8 %1002, i8* %45, align 1
  %1003 = lshr i64 %983, 63
  %1004 = lshr i64 %981, 57
  %1005 = and i64 %1004, 1
  %1006 = xor i64 %1001, %1003
  %1007 = xor i64 %1001, %1005
  %1008 = add nuw nsw i64 %1006, %1007
  %1009 = icmp eq i64 %1008, 2
  %1010 = zext i1 %1009 to i8
  store i8 %1010, i8* %51, align 1
  %1011 = load i64, i64* %RBP.i, align 8
  %1012 = add i64 %1011, -76
  %1013 = add i64 %862, 79
  store i64 %1013, i64* %3, align 8
  %1014 = inttoptr i64 %1012 to i32*
  %1015 = load i32, i32* %1014, align 4
  %1016 = zext i32 %1015 to i64
  store i64 %1016, i64* %RDI.i2086, align 8
  %1017 = add i64 %1011, -56
  %1018 = add i64 %862, 82
  store i64 %1018, i64* %3, align 8
  %1019 = inttoptr i64 %1017 to i32*
  %1020 = load i32, i32* %1019, align 4
  %1021 = add i32 %1020, %1015
  %1022 = zext i32 %1021 to i64
  store i64 %1022, i64* %RDI.i2086, align 8
  %1023 = icmp ult i32 %1021, %1015
  %1024 = icmp ult i32 %1021, %1020
  %1025 = or i1 %1023, %1024
  %1026 = zext i1 %1025 to i8
  store i8 %1026, i8* %26, align 1
  %1027 = and i32 %1021, 255
  %1028 = tail call i32 @llvm.ctpop.i32(i32 %1027)
  %1029 = trunc i32 %1028 to i8
  %1030 = and i8 %1029, 1
  %1031 = xor i8 %1030, 1
  store i8 %1031, i8* %33, align 1
  %1032 = xor i32 %1020, %1015
  %1033 = xor i32 %1032, %1021
  %1034 = lshr i32 %1033, 4
  %1035 = trunc i32 %1034 to i8
  %1036 = and i8 %1035, 1
  store i8 %1036, i8* %39, align 1
  %1037 = icmp eq i32 %1021, 0
  %1038 = zext i1 %1037 to i8
  store i8 %1038, i8* %42, align 1
  %1039 = lshr i32 %1021, 31
  %1040 = trunc i32 %1039 to i8
  store i8 %1040, i8* %45, align 1
  %1041 = lshr i32 %1015, 31
  %1042 = lshr i32 %1020, 31
  %1043 = xor i32 %1039, %1041
  %1044 = xor i32 %1039, %1042
  %1045 = add nuw nsw i32 %1043, %1044
  %1046 = icmp eq i32 %1045, 2
  %1047 = zext i1 %1046 to i8
  store i8 %1047, i8* %51, align 1
  %1048 = sext i32 %1021 to i64
  store i64 %1048, i64* %RCX.i2097, align 8
  %1049 = shl nsw i64 %1048, 2
  %1050 = add i64 %984, %1049
  %1051 = load i32, i32* %EDX.i2080, align 4
  %1052 = add i64 %862, 88
  store i64 %1052, i64* %3, align 8
  %1053 = inttoptr i64 %1050 to i32*
  store i32 %1051, i32* %1053, align 4
  %1054 = load i64, i64* %RBP.i, align 8
  %1055 = add i64 %1054, -72
  %1056 = load i64, i64* %3, align 8
  %1057 = add i64 %1056, 3
  store i64 %1057, i64* %3, align 8
  %1058 = inttoptr i64 %1055 to i32*
  %1059 = load i32, i32* %1058, align 4
  %1060 = add i32 %1059, 1
  %1061 = zext i32 %1060 to i64
  store i64 %1061, i64* %RAX.i2060, align 8
  %1062 = icmp eq i32 %1059, -1
  %1063 = icmp eq i32 %1060, 0
  %1064 = or i1 %1062, %1063
  %1065 = zext i1 %1064 to i8
  store i8 %1065, i8* %26, align 1
  %1066 = and i32 %1060, 255
  %1067 = tail call i32 @llvm.ctpop.i32(i32 %1066)
  %1068 = trunc i32 %1067 to i8
  %1069 = and i8 %1068, 1
  %1070 = xor i8 %1069, 1
  store i8 %1070, i8* %33, align 1
  %1071 = xor i32 %1060, %1059
  %1072 = lshr i32 %1071, 4
  %1073 = trunc i32 %1072 to i8
  %1074 = and i8 %1073, 1
  store i8 %1074, i8* %39, align 1
  %1075 = zext i1 %1063 to i8
  store i8 %1075, i8* %42, align 1
  %1076 = lshr i32 %1060, 31
  %1077 = trunc i32 %1076 to i8
  store i8 %1077, i8* %45, align 1
  %1078 = lshr i32 %1059, 31
  %1079 = xor i32 %1076, %1078
  %1080 = add nuw nsw i32 %1079, %1076
  %1081 = icmp eq i32 %1080, 2
  %1082 = zext i1 %1081 to i8
  store i8 %1082, i8* %51, align 1
  %1083 = add i64 %1056, 9
  store i64 %1083, i64* %3, align 8
  store i32 %1060, i32* %1058, align 4
  %1084 = load i64, i64* %3, align 8
  %1085 = add i64 %1084, -107
  store i64 %1085, i64* %3, align 8
  br label %block_.L_43f095

block_.L_43f105:                                  ; preds = %block_.L_43f095
  %1086 = add i64 %834, -76
  %1087 = add i64 %862, 8
  store i64 %1087, i64* %3, align 8
  %1088 = inttoptr i64 %1086 to i32*
  %1089 = load i32, i32* %1088, align 4
  %1090 = add i32 %1089, 1
  %1091 = zext i32 %1090 to i64
  store i64 %1091, i64* %RAX.i2060, align 8
  %1092 = icmp eq i32 %1089, -1
  %1093 = icmp eq i32 %1090, 0
  %1094 = or i1 %1092, %1093
  %1095 = zext i1 %1094 to i8
  store i8 %1095, i8* %26, align 1
  %1096 = and i32 %1090, 255
  %1097 = tail call i32 @llvm.ctpop.i32(i32 %1096)
  %1098 = trunc i32 %1097 to i8
  %1099 = and i8 %1098, 1
  %1100 = xor i8 %1099, 1
  store i8 %1100, i8* %33, align 1
  %1101 = xor i32 %1090, %1089
  %1102 = lshr i32 %1101, 4
  %1103 = trunc i32 %1102 to i8
  %1104 = and i8 %1103, 1
  store i8 %1104, i8* %39, align 1
  %1105 = zext i1 %1093 to i8
  store i8 %1105, i8* %42, align 1
  %1106 = lshr i32 %1090, 31
  %1107 = trunc i32 %1106 to i8
  store i8 %1107, i8* %45, align 1
  %1108 = lshr i32 %1089, 31
  %1109 = xor i32 %1106, %1108
  %1110 = add nuw nsw i32 %1109, %1106
  %1111 = icmp eq i32 %1110, 2
  %1112 = zext i1 %1111 to i8
  store i8 %1112, i8* %51, align 1
  %1113 = add i64 %862, 14
  store i64 %1113, i64* %3, align 8
  store i32 %1090, i32* %1088, align 4
  %1114 = load i64, i64* %3, align 8
  %1115 = add i64 %1114, -143
  store i64 %1115, i64* %3, align 8
  br label %block_.L_43f084

block_.L_43f118:                                  ; preds = %block_.L_43f084
  store i64 1, i64* %RDI.i2086, align 8
  %1116 = add i64 %801, -60
  %1117 = add i64 %829, 8
  store i64 %1117, i64* %3, align 8
  %1118 = inttoptr i64 %1116 to i32*
  %1119 = load i32, i32* %1118, align 4
  %1120 = zext i32 %1119 to i64
  store i64 %1120, i64* %RSI.i2083, align 8
  %1121 = add i64 %801, -56
  %1122 = add i64 %829, 11
  store i64 %1122, i64* %3, align 8
  %1123 = inttoptr i64 %1121 to i32*
  %1124 = load i32, i32* %1123, align 4
  %1125 = zext i32 %1124 to i64
  store i64 %1125, i64* %RDX.i2040.pre-phi, align 8
  %1126 = add i64 %801, -38
  %1127 = add i64 %829, 15
  store i64 %1127, i64* %3, align 8
  %1128 = inttoptr i64 %1126 to i16*
  %1129 = load i16, i16* %1128, align 2
  %1130 = sext i16 %1129 to i64
  %1131 = and i64 %1130, 4294967295
  store i64 %1131, i64* %RCX.i2097, align 8
  %1132 = add i64 %801, -44
  %1133 = add i64 %829, 19
  store i64 %1133, i64* %3, align 8
  %1134 = inttoptr i64 %1132 to i32*
  %1135 = load i32, i32* %1134, align 4
  %1136 = zext i32 %1135 to i64
  store i64 %1136, i64* %485, align 8
  %1137 = add i64 %801, -48
  %1138 = add i64 %829, 23
  store i64 %1138, i64* %3, align 8
  %1139 = inttoptr i64 %1137 to i32*
  %1140 = load i32, i32* %1139, align 4
  %1141 = zext i32 %1140 to i64
  store i64 %1141, i64* %486, align 8
  %1142 = add i64 %801, -50
  %1143 = add i64 %829, 27
  store i64 %1143, i64* %3, align 8
  %1144 = inttoptr i64 %1142 to i16*
  %1145 = load i16, i16* %1144, align 2
  store i16 %1145, i16* %AX.i2105, align 2
  %1146 = sext i16 %1145 to i64
  %1147 = and i64 %1146, 4294967295
  store i64 %1147, i64* %487, align 8
  %1148 = load i32*, i32** %488, align 8
  %1149 = sext i16 %1145 to i32
  %1150 = add i64 %829, 35
  store i64 %1150, i64* %3, align 8
  store i32 %1149, i32* %1148, align 4
  %1151 = load i64, i64* %RBP.i, align 8
  %1152 = add i64 %1151, -52
  %1153 = load i64, i64* %3, align 8
  %1154 = add i64 %1153, 5
  store i64 %1154, i64* %3, align 8
  %1155 = inttoptr i64 %1152 to i16*
  %1156 = load i16, i16* %1155, align 2
  %1157 = sext i16 %1156 to i64
  %1158 = and i64 %1157, 4294967295
  store i64 %1158, i64* %487, align 8
  %1159 = load i64, i64* %6, align 8
  %1160 = add i64 %1159, 8
  %1161 = sext i16 %1156 to i32
  %1162 = add i64 %1153, 10
  store i64 %1162, i64* %3, align 8
  %1163 = inttoptr i64 %1160 to i32*
  store i32 %1161, i32* %1163, align 4
  %1164 = load i64, i64* %3, align 8
  %1165 = add i64 %1164, 2939
  %1166 = add i64 %1164, 5
  %1167 = load i64, i64* %6, align 8
  %1168 = add i64 %1167, -8
  %1169 = inttoptr i64 %1168 to i64*
  store i64 %1166, i64* %1169, align 8
  store i64 %1168, i64* %6, align 8
  store i64 %1165, i64* %3, align 8
  %call2_43f145 = tail call %struct.Memory* @sub_43fcc0.ChromaPrediction4x4(%struct.State* nonnull %0, i64 %1165, %struct.Memory* %MEMORY.3)
  %1170 = load i64, i64* %RBP.i, align 8
  %1171 = add i64 %1170, -76
  %1172 = load i64, i64* %3, align 8
  %1173 = add i64 %1172, 7
  store i64 %1173, i64* %3, align 8
  %1174 = inttoptr i64 %1171 to i32*
  store i32 0, i32* %1174, align 4
  %.pre156 = load i64, i64* %3, align 8
  br label %block_.L_43f151

block_.L_43f151:                                  ; preds = %block_.L_43f1d2, %block_.L_43f118
  %1175 = phi i64 [ %1490, %block_.L_43f1d2 ], [ %.pre156, %block_.L_43f118 ]
  %1176 = load i64, i64* %RBP.i, align 8
  %1177 = add i64 %1176, -76
  %1178 = add i64 %1175, 4
  store i64 %1178, i64* %3, align 8
  %1179 = inttoptr i64 %1177 to i32*
  %1180 = load i32, i32* %1179, align 4
  %1181 = add i32 %1180, -4
  %1182 = icmp ult i32 %1180, 4
  %1183 = zext i1 %1182 to i8
  store i8 %1183, i8* %26, align 1
  %1184 = and i32 %1181, 255
  %1185 = tail call i32 @llvm.ctpop.i32(i32 %1184)
  %1186 = trunc i32 %1185 to i8
  %1187 = and i8 %1186, 1
  %1188 = xor i8 %1187, 1
  store i8 %1188, i8* %33, align 1
  %1189 = xor i32 %1181, %1180
  %1190 = lshr i32 %1189, 4
  %1191 = trunc i32 %1190 to i8
  %1192 = and i8 %1191, 1
  store i8 %1192, i8* %39, align 1
  %1193 = icmp eq i32 %1181, 0
  %1194 = zext i1 %1193 to i8
  store i8 %1194, i8* %42, align 1
  %1195 = lshr i32 %1181, 31
  %1196 = trunc i32 %1195 to i8
  store i8 %1196, i8* %45, align 1
  %1197 = lshr i32 %1180, 31
  %1198 = xor i32 %1195, %1197
  %1199 = add nuw nsw i32 %1198, %1197
  %1200 = icmp eq i32 %1199, 2
  %1201 = zext i1 %1200 to i8
  store i8 %1201, i8* %51, align 1
  %1202 = icmp ne i8 %1196, 0
  %1203 = xor i1 %1202, %1200
  %.v219 = select i1 %1203, i64 10, i64 148
  %1204 = add i64 %1175, %.v219
  store i64 %1204, i64* %3, align 8
  br i1 %1203, label %block_43f15b, label %block_.L_43f1e5

block_43f15b:                                     ; preds = %block_.L_43f151
  %1205 = add i64 %1176, -72
  %1206 = add i64 %1204, 7
  store i64 %1206, i64* %3, align 8
  %1207 = inttoptr i64 %1205 to i32*
  store i32 0, i32* %1207, align 4
  %.pre157 = load i64, i64* %3, align 8
  br label %block_.L_43f162

block_.L_43f162:                                  ; preds = %block_43f16c, %block_43f15b
  %1208 = phi i64 [ %1460, %block_43f16c ], [ %.pre157, %block_43f15b ]
  %1209 = load i64, i64* %RBP.i, align 8
  %1210 = add i64 %1209, -72
  %1211 = add i64 %1208, 4
  store i64 %1211, i64* %3, align 8
  %1212 = inttoptr i64 %1210 to i32*
  %1213 = load i32, i32* %1212, align 4
  %1214 = add i32 %1213, -4
  %1215 = icmp ult i32 %1213, 4
  %1216 = zext i1 %1215 to i8
  store i8 %1216, i8* %26, align 1
  %1217 = and i32 %1214, 255
  %1218 = tail call i32 @llvm.ctpop.i32(i32 %1217)
  %1219 = trunc i32 %1218 to i8
  %1220 = and i8 %1219, 1
  %1221 = xor i8 %1220, 1
  store i8 %1221, i8* %33, align 1
  %1222 = xor i32 %1214, %1213
  %1223 = lshr i32 %1222, 4
  %1224 = trunc i32 %1223 to i8
  %1225 = and i8 %1224, 1
  store i8 %1225, i8* %39, align 1
  %1226 = icmp eq i32 %1214, 0
  %1227 = zext i1 %1226 to i8
  store i8 %1227, i8* %42, align 1
  %1228 = lshr i32 %1214, 31
  %1229 = trunc i32 %1228 to i8
  store i8 %1229, i8* %45, align 1
  %1230 = lshr i32 %1213, 31
  %1231 = xor i32 %1228, %1230
  %1232 = add nuw nsw i32 %1231, %1230
  %1233 = icmp eq i32 %1232, 2
  %1234 = zext i1 %1233 to i8
  store i8 %1234, i8* %51, align 1
  %1235 = icmp ne i8 %1229, 0
  %1236 = xor i1 %1235, %1233
  %.v197 = select i1 %1236, i64 10, i64 112
  %1237 = add i64 %1208, %.v197
  store i64 %1237, i64* %3, align 8
  br i1 %1236, label %block_43f16c, label %block_.L_43f1d2

block_43f16c:                                     ; preds = %block_.L_43f162
  store i64 add (i64 ptrtoint (%G__0x725610_type* @G__0x725610 to i64), i64 2048), i64* %RAX.i2060, align 8
  %1238 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*), align 8
  %1239 = add i64 %1238, 12600
  store i64 %1239, i64* %RCX.i2097, align 8
  %1240 = icmp ugt i64 %1238, -12601
  %1241 = zext i1 %1240 to i8
  store i8 %1241, i8* %26, align 1
  %1242 = trunc i64 %1239 to i32
  %1243 = and i32 %1242, 255
  %1244 = tail call i32 @llvm.ctpop.i32(i32 %1243)
  %1245 = trunc i32 %1244 to i8
  %1246 = and i8 %1245, 1
  %1247 = xor i8 %1246, 1
  store i8 %1247, i8* %33, align 1
  %1248 = xor i64 %1238, 16
  %1249 = xor i64 %1248, %1239
  %1250 = lshr i64 %1249, 4
  %1251 = trunc i64 %1250 to i8
  %1252 = and i8 %1251, 1
  store i8 %1252, i8* %39, align 1
  %1253 = icmp eq i64 %1239, 0
  %1254 = zext i1 %1253 to i8
  store i8 %1254, i8* %42, align 1
  %1255 = lshr i64 %1239, 63
  %1256 = trunc i64 %1255 to i8
  store i8 %1256, i8* %45, align 1
  %1257 = lshr i64 %1238, 63
  %1258 = xor i64 %1255, %1257
  %1259 = add nuw nsw i64 %1258, %1255
  %1260 = icmp eq i64 %1259, 2
  %1261 = zext i1 %1260 to i8
  store i8 %1261, i8* %51, align 1
  %1262 = add i64 %1237, 34
  store i64 %1262, i64* %3, align 8
  %1263 = load i32, i32* %1212, align 4
  %1264 = zext i32 %1263 to i64
  store i64 %1264, i64* %RDX.i2040.pre-phi, align 8
  %1265 = add i64 %1209, -60
  %1266 = add i64 %1237, 37
  store i64 %1266, i64* %3, align 8
  %1267 = inttoptr i64 %1265 to i32*
  %1268 = load i32, i32* %1267, align 4
  %1269 = add i32 %1268, %1263
  %1270 = zext i32 %1269 to i64
  store i64 %1270, i64* %RDX.i2040.pre-phi, align 8
  %1271 = sext i32 %1269 to i64
  %1272 = shl nsw i64 %1271, 5
  store i64 %1272, i64* %RSI.i2083, align 8
  %1273 = load i64, i64* %RCX.i2097, align 8
  %1274 = add i64 %1272, %1273
  store i64 %1274, i64* %RCX.i2097, align 8
  %1275 = icmp ult i64 %1274, %1273
  %1276 = icmp ult i64 %1274, %1272
  %1277 = or i1 %1275, %1276
  %1278 = zext i1 %1277 to i8
  store i8 %1278, i8* %26, align 1
  %1279 = trunc i64 %1274 to i32
  %1280 = and i32 %1279, 255
  %1281 = tail call i32 @llvm.ctpop.i32(i32 %1280)
  %1282 = trunc i32 %1281 to i8
  %1283 = and i8 %1282, 1
  %1284 = xor i8 %1283, 1
  store i8 %1284, i8* %33, align 1
  %1285 = xor i64 %1273, %1274
  %1286 = lshr i64 %1285, 4
  %1287 = trunc i64 %1286 to i8
  %1288 = and i8 %1287, 1
  store i8 %1288, i8* %39, align 1
  %1289 = icmp eq i64 %1274, 0
  %1290 = zext i1 %1289 to i8
  store i8 %1290, i8* %42, align 1
  %1291 = lshr i64 %1274, 63
  %1292 = trunc i64 %1291 to i8
  store i8 %1292, i8* %45, align 1
  %1293 = lshr i64 %1273, 63
  %1294 = lshr i64 %1271, 58
  %1295 = and i64 %1294, 1
  %1296 = xor i64 %1291, %1293
  %1297 = xor i64 %1291, %1295
  %1298 = add nuw nsw i64 %1296, %1297
  %1299 = icmp eq i64 %1298, 2
  %1300 = zext i1 %1299 to i8
  store i8 %1300, i8* %51, align 1
  %1301 = load i64, i64* %RBP.i, align 8
  %1302 = add i64 %1301, -76
  %1303 = add i64 %1237, 50
  store i64 %1303, i64* %3, align 8
  %1304 = inttoptr i64 %1302 to i32*
  %1305 = load i32, i32* %1304, align 4
  %1306 = zext i32 %1305 to i64
  store i64 %1306, i64* %RDX.i2040.pre-phi, align 8
  %1307 = add i64 %1301, -56
  %1308 = add i64 %1237, 53
  store i64 %1308, i64* %3, align 8
  %1309 = inttoptr i64 %1307 to i32*
  %1310 = load i32, i32* %1309, align 4
  %1311 = add i32 %1310, %1305
  %1312 = zext i32 %1311 to i64
  store i64 %1312, i64* %RDX.i2040.pre-phi, align 8
  %1313 = icmp ult i32 %1311, %1305
  %1314 = icmp ult i32 %1311, %1310
  %1315 = or i1 %1313, %1314
  %1316 = zext i1 %1315 to i8
  store i8 %1316, i8* %26, align 1
  %1317 = and i32 %1311, 255
  %1318 = tail call i32 @llvm.ctpop.i32(i32 %1317)
  %1319 = trunc i32 %1318 to i8
  %1320 = and i8 %1319, 1
  %1321 = xor i8 %1320, 1
  store i8 %1321, i8* %33, align 1
  %1322 = xor i32 %1310, %1305
  %1323 = xor i32 %1322, %1311
  %1324 = lshr i32 %1323, 4
  %1325 = trunc i32 %1324 to i8
  %1326 = and i8 %1325, 1
  store i8 %1326, i8* %39, align 1
  %1327 = icmp eq i32 %1311, 0
  %1328 = zext i1 %1327 to i8
  store i8 %1328, i8* %42, align 1
  %1329 = lshr i32 %1311, 31
  %1330 = trunc i32 %1329 to i8
  store i8 %1330, i8* %45, align 1
  %1331 = lshr i32 %1305, 31
  %1332 = lshr i32 %1310, 31
  %1333 = xor i32 %1329, %1331
  %1334 = xor i32 %1329, %1332
  %1335 = add nuw nsw i32 %1333, %1334
  %1336 = icmp eq i32 %1335, 2
  %1337 = zext i1 %1336 to i8
  store i8 %1337, i8* %51, align 1
  %1338 = sext i32 %1311 to i64
  store i64 %1338, i64* %RSI.i2083, align 8
  %1339 = shl nsw i64 %1338, 1
  %1340 = add i64 %1274, %1339
  %1341 = add i64 %1237, 60
  store i64 %1341, i64* %3, align 8
  %1342 = inttoptr i64 %1340 to i16*
  %1343 = load i16, i16* %1342, align 2
  %1344 = zext i16 %1343 to i64
  store i64 %1344, i64* %RDX.i2040.pre-phi, align 8
  %1345 = add i64 %1301, -72
  %1346 = add i64 %1237, 63
  store i64 %1346, i64* %3, align 8
  %1347 = inttoptr i64 %1345 to i32*
  %1348 = load i32, i32* %1347, align 4
  %1349 = zext i32 %1348 to i64
  store i64 %1349, i64* %RDI.i2086, align 8
  %1350 = add i64 %1301, -60
  %1351 = add i64 %1237, 66
  store i64 %1351, i64* %3, align 8
  %1352 = inttoptr i64 %1350 to i32*
  %1353 = load i32, i32* %1352, align 4
  %1354 = add i32 %1353, %1348
  %1355 = zext i32 %1354 to i64
  store i64 %1355, i64* %RDI.i2086, align 8
  %1356 = sext i32 %1354 to i64
  %1357 = shl nsw i64 %1356, 6
  store i64 %1357, i64* %RCX.i2097, align 8
  %1358 = load i64, i64* %RAX.i2060, align 8
  %1359 = add i64 %1357, %1358
  store i64 %1359, i64* %RAX.i2060, align 8
  %1360 = icmp ult i64 %1359, %1358
  %1361 = icmp ult i64 %1359, %1357
  %1362 = or i1 %1360, %1361
  %1363 = zext i1 %1362 to i8
  store i8 %1363, i8* %26, align 1
  %1364 = trunc i64 %1359 to i32
  %1365 = and i32 %1364, 255
  %1366 = tail call i32 @llvm.ctpop.i32(i32 %1365)
  %1367 = trunc i32 %1366 to i8
  %1368 = and i8 %1367, 1
  %1369 = xor i8 %1368, 1
  store i8 %1369, i8* %33, align 1
  %1370 = xor i64 %1358, %1359
  %1371 = lshr i64 %1370, 4
  %1372 = trunc i64 %1371 to i8
  %1373 = and i8 %1372, 1
  store i8 %1373, i8* %39, align 1
  %1374 = icmp eq i64 %1359, 0
  %1375 = zext i1 %1374 to i8
  store i8 %1375, i8* %42, align 1
  %1376 = lshr i64 %1359, 63
  %1377 = trunc i64 %1376 to i8
  store i8 %1377, i8* %45, align 1
  %1378 = lshr i64 %1358, 63
  %1379 = lshr i64 %1356, 57
  %1380 = and i64 %1379, 1
  %1381 = xor i64 %1376, %1378
  %1382 = xor i64 %1376, %1380
  %1383 = add nuw nsw i64 %1381, %1382
  %1384 = icmp eq i64 %1383, 2
  %1385 = zext i1 %1384 to i8
  store i8 %1385, i8* %51, align 1
  %1386 = load i64, i64* %RBP.i, align 8
  %1387 = add i64 %1386, -76
  %1388 = add i64 %1237, 79
  store i64 %1388, i64* %3, align 8
  %1389 = inttoptr i64 %1387 to i32*
  %1390 = load i32, i32* %1389, align 4
  %1391 = zext i32 %1390 to i64
  store i64 %1391, i64* %RDI.i2086, align 8
  %1392 = add i64 %1386, -56
  %1393 = add i64 %1237, 82
  store i64 %1393, i64* %3, align 8
  %1394 = inttoptr i64 %1392 to i32*
  %1395 = load i32, i32* %1394, align 4
  %1396 = add i32 %1395, %1390
  %1397 = zext i32 %1396 to i64
  store i64 %1397, i64* %RDI.i2086, align 8
  %1398 = icmp ult i32 %1396, %1390
  %1399 = icmp ult i32 %1396, %1395
  %1400 = or i1 %1398, %1399
  %1401 = zext i1 %1400 to i8
  store i8 %1401, i8* %26, align 1
  %1402 = and i32 %1396, 255
  %1403 = tail call i32 @llvm.ctpop.i32(i32 %1402)
  %1404 = trunc i32 %1403 to i8
  %1405 = and i8 %1404, 1
  %1406 = xor i8 %1405, 1
  store i8 %1406, i8* %33, align 1
  %1407 = xor i32 %1395, %1390
  %1408 = xor i32 %1407, %1396
  %1409 = lshr i32 %1408, 4
  %1410 = trunc i32 %1409 to i8
  %1411 = and i8 %1410, 1
  store i8 %1411, i8* %39, align 1
  %1412 = icmp eq i32 %1396, 0
  %1413 = zext i1 %1412 to i8
  store i8 %1413, i8* %42, align 1
  %1414 = lshr i32 %1396, 31
  %1415 = trunc i32 %1414 to i8
  store i8 %1415, i8* %45, align 1
  %1416 = lshr i32 %1390, 31
  %1417 = lshr i32 %1395, 31
  %1418 = xor i32 %1414, %1416
  %1419 = xor i32 %1414, %1417
  %1420 = add nuw nsw i32 %1418, %1419
  %1421 = icmp eq i32 %1420, 2
  %1422 = zext i1 %1421 to i8
  store i8 %1422, i8* %51, align 1
  %1423 = sext i32 %1396 to i64
  store i64 %1423, i64* %RCX.i2097, align 8
  %1424 = shl nsw i64 %1423, 2
  %1425 = add i64 %1359, %1424
  %1426 = load i32, i32* %EDX.i2080, align 4
  %1427 = add i64 %1237, 88
  store i64 %1427, i64* %3, align 8
  %1428 = inttoptr i64 %1425 to i32*
  store i32 %1426, i32* %1428, align 4
  %1429 = load i64, i64* %RBP.i, align 8
  %1430 = add i64 %1429, -72
  %1431 = load i64, i64* %3, align 8
  %1432 = add i64 %1431, 3
  store i64 %1432, i64* %3, align 8
  %1433 = inttoptr i64 %1430 to i32*
  %1434 = load i32, i32* %1433, align 4
  %1435 = add i32 %1434, 1
  %1436 = zext i32 %1435 to i64
  store i64 %1436, i64* %RAX.i2060, align 8
  %1437 = icmp eq i32 %1434, -1
  %1438 = icmp eq i32 %1435, 0
  %1439 = or i1 %1437, %1438
  %1440 = zext i1 %1439 to i8
  store i8 %1440, i8* %26, align 1
  %1441 = and i32 %1435, 255
  %1442 = tail call i32 @llvm.ctpop.i32(i32 %1441)
  %1443 = trunc i32 %1442 to i8
  %1444 = and i8 %1443, 1
  %1445 = xor i8 %1444, 1
  store i8 %1445, i8* %33, align 1
  %1446 = xor i32 %1435, %1434
  %1447 = lshr i32 %1446, 4
  %1448 = trunc i32 %1447 to i8
  %1449 = and i8 %1448, 1
  store i8 %1449, i8* %39, align 1
  %1450 = zext i1 %1438 to i8
  store i8 %1450, i8* %42, align 1
  %1451 = lshr i32 %1435, 31
  %1452 = trunc i32 %1451 to i8
  store i8 %1452, i8* %45, align 1
  %1453 = lshr i32 %1434, 31
  %1454 = xor i32 %1451, %1453
  %1455 = add nuw nsw i32 %1454, %1451
  %1456 = icmp eq i32 %1455, 2
  %1457 = zext i1 %1456 to i8
  store i8 %1457, i8* %51, align 1
  %1458 = add i64 %1431, 9
  store i64 %1458, i64* %3, align 8
  store i32 %1435, i32* %1433, align 4
  %1459 = load i64, i64* %3, align 8
  %1460 = add i64 %1459, -107
  store i64 %1460, i64* %3, align 8
  br label %block_.L_43f162

block_.L_43f1d2:                                  ; preds = %block_.L_43f162
  %1461 = add i64 %1209, -76
  %1462 = add i64 %1237, 8
  store i64 %1462, i64* %3, align 8
  %1463 = inttoptr i64 %1461 to i32*
  %1464 = load i32, i32* %1463, align 4
  %1465 = add i32 %1464, 1
  %1466 = zext i32 %1465 to i64
  store i64 %1466, i64* %RAX.i2060, align 8
  %1467 = icmp eq i32 %1464, -1
  %1468 = icmp eq i32 %1465, 0
  %1469 = or i1 %1467, %1468
  %1470 = zext i1 %1469 to i8
  store i8 %1470, i8* %26, align 1
  %1471 = and i32 %1465, 255
  %1472 = tail call i32 @llvm.ctpop.i32(i32 %1471)
  %1473 = trunc i32 %1472 to i8
  %1474 = and i8 %1473, 1
  %1475 = xor i8 %1474, 1
  store i8 %1475, i8* %33, align 1
  %1476 = xor i32 %1465, %1464
  %1477 = lshr i32 %1476, 4
  %1478 = trunc i32 %1477 to i8
  %1479 = and i8 %1478, 1
  store i8 %1479, i8* %39, align 1
  %1480 = zext i1 %1468 to i8
  store i8 %1480, i8* %42, align 1
  %1481 = lshr i32 %1465, 31
  %1482 = trunc i32 %1481 to i8
  store i8 %1482, i8* %45, align 1
  %1483 = lshr i32 %1464, 31
  %1484 = xor i32 %1481, %1483
  %1485 = add nuw nsw i32 %1484, %1481
  %1486 = icmp eq i32 %1485, 2
  %1487 = zext i1 %1486 to i8
  store i8 %1487, i8* %51, align 1
  %1488 = add i64 %1237, 14
  store i64 %1488, i64* %3, align 8
  store i32 %1465, i32* %1463, align 4
  %1489 = load i64, i64* %3, align 8
  %1490 = add i64 %1489, -143
  store i64 %1490, i64* %3, align 8
  br label %block_.L_43f151

block_.L_43f1e5:                                  ; preds = %block_.L_43f151
  %1491 = add i64 %1204, 5
  store i64 %1491, i64* %3, align 8
  br label %block_.L_43f1ea

block_.L_43f1ea:                                  ; preds = %block_43f019.block_.L_43f1ea_crit_edge, %block_.L_43f1e5
  %1492 = phi i64 [ %739, %block_43f019.block_.L_43f1ea_crit_edge ], [ %1491, %block_.L_43f1e5 ]
  %1493 = phi i64 [ %.pre159, %block_43f019.block_.L_43f1ea_crit_edge ], [ %1176, %block_.L_43f1e5 ]
  %1494 = add i64 %1493, -60
  %1495 = add i64 %1492, 3
  store i64 %1495, i64* %3, align 8
  %1496 = inttoptr i64 %1494 to i32*
  %1497 = load i32, i32* %1496, align 4
  %1498 = zext i32 %1497 to i64
  store i64 %1498, i64* %RDI.i2086, align 8
  %1499 = add i64 %1493, -56
  %1500 = add i64 %1492, 6
  store i64 %1500, i64* %3, align 8
  %1501 = inttoptr i64 %1499 to i32*
  %1502 = load i32, i32* %1501, align 4
  %1503 = zext i32 %1502 to i64
  store i64 %1503, i64* %RSI.i2083, align 8
  %1504 = add i64 %1493, -38
  %1505 = add i64 %1492, 10
  store i64 %1505, i64* %3, align 8
  %1506 = inttoptr i64 %1504 to i16*
  %1507 = load i16, i16* %1506, align 2
  %1508 = sext i16 %1507 to i64
  %1509 = and i64 %1508, 4294967295
  store i64 %1509, i64* %RDX.i2040.pre-phi, align 8
  %1510 = add i64 %1493, -44
  %1511 = add i64 %1492, 13
  store i64 %1511, i64* %3, align 8
  %1512 = inttoptr i64 %1510 to i32*
  %1513 = load i32, i32* %1512, align 4
  %1514 = zext i32 %1513 to i64
  store i64 %1514, i64* %RCX.i2097, align 8
  %1515 = add i64 %1493, -48
  %1516 = add i64 %1492, 17
  store i64 %1516, i64* %3, align 8
  %1517 = inttoptr i64 %1515 to i32*
  %1518 = load i32, i32* %1517, align 4
  %1519 = zext i32 %1518 to i64
  store i64 %1519, i64* %485, align 8
  %1520 = add i64 %1493, -50
  %1521 = add i64 %1492, 21
  store i64 %1521, i64* %3, align 8
  %1522 = inttoptr i64 %1520 to i16*
  %1523 = load i16, i16* %1522, align 2
  store i16 %1523, i16* %AX.i2105, align 2
  %1524 = sext i16 %1523 to i64
  %1525 = and i64 %1524, 4294967295
  store i64 %1525, i64* %486, align 8
  %1526 = add i64 %1493, -52
  %1527 = add i64 %1492, 30
  store i64 %1527, i64* %3, align 8
  %1528 = inttoptr i64 %1526 to i16*
  %1529 = load i16, i16* %1528, align 2
  %1530 = sext i16 %1529 to i64
  %1531 = and i64 %1530, 4294967295
  store i64 %1531, i64* %487, align 8
  %1532 = load i32*, i32** %488, align 8
  %1533 = sext i16 %1529 to i32
  %1534 = add i64 %1492, 34
  store i64 %1534, i64* %3, align 8
  store i32 %1533, i32* %1532, align 4
  %1535 = load i64, i64* %3, align 8
  %1536 = add i64 %1535, -4860
  %1537 = add i64 %1535, 5
  %1538 = load i64, i64* %6, align 8
  %1539 = add i64 %1538, -8
  %1540 = inttoptr i64 %1539 to i64*
  store i64 %1537, i64* %1540, align 8
  store i64 %1539, i64* %6, align 8
  store i64 %1536, i64* %3, align 8
  %call2_43f20c = tail call %struct.Memory* @sub_43df10.LumaPrediction4x4(%struct.State* nonnull %0, i64 %1536, %struct.Memory* %MEMORY.3)
  %1541 = load i64, i64* %3, align 8
  %1542 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*), align 8
  store i64 %1542, i64* %R11.i1593, align 8
  %1543 = add i64 %1542, 72724
  %1544 = add i64 %1541, 16
  store i64 %1544, i64* %3, align 8
  %1545 = inttoptr i64 %1543 to i32*
  %1546 = load i32, i32* %1545, align 4
  store i8 0, i8* %26, align 1
  %1547 = and i32 %1546, 255
  %1548 = tail call i32 @llvm.ctpop.i32(i32 %1547)
  %1549 = trunc i32 %1548 to i8
  %1550 = and i8 %1549, 1
  %1551 = xor i8 %1550, 1
  store i8 %1551, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %1552 = icmp eq i32 %1546, 0
  %1553 = zext i1 %1552 to i8
  store i8 %1553, i8* %42, align 1
  %1554 = lshr i32 %1546, 31
  %1555 = trunc i32 %1554 to i8
  store i8 %1555, i8* %45, align 1
  store i8 0, i8* %51, align 1
  %.v220 = select i1 %1552, i64 176, i64 22
  %1556 = add i64 %1541, %.v220
  store i64 %1556, i64* %3, align 8
  %.pre163 = load i64, i64* %RBP.i, align 8
  br i1 %1552, label %block_.L_43f2c1, label %block_43f227

block_43f227:                                     ; preds = %block_.L_43f1ea
  %1557 = add i64 %.pre163, -76
  %1558 = add i64 %1556, 7
  store i64 %1558, i64* %3, align 8
  %1559 = inttoptr i64 %1557 to i32*
  store i32 0, i32* %1559, align 4
  %.pre160 = load i64, i64* %3, align 8
  br label %block_.L_43f22e

block_.L_43f22e:                                  ; preds = %block_.L_43f2a9, %block_43f227
  %1560 = phi i64 [ %1875, %block_.L_43f2a9 ], [ %.pre160, %block_43f227 ]
  %1561 = load i64, i64* %RBP.i, align 8
  %1562 = add i64 %1561, -76
  %1563 = add i64 %1560, 4
  store i64 %1563, i64* %3, align 8
  %1564 = inttoptr i64 %1562 to i32*
  %1565 = load i32, i32* %1564, align 4
  %1566 = add i32 %1565, -4
  %1567 = icmp ult i32 %1565, 4
  %1568 = zext i1 %1567 to i8
  store i8 %1568, i8* %26, align 1
  %1569 = and i32 %1566, 255
  %1570 = tail call i32 @llvm.ctpop.i32(i32 %1569)
  %1571 = trunc i32 %1570 to i8
  %1572 = and i8 %1571, 1
  %1573 = xor i8 %1572, 1
  store i8 %1573, i8* %33, align 1
  %1574 = xor i32 %1566, %1565
  %1575 = lshr i32 %1574, 4
  %1576 = trunc i32 %1575 to i8
  %1577 = and i8 %1576, 1
  store i8 %1577, i8* %39, align 1
  %1578 = icmp eq i32 %1566, 0
  %1579 = zext i1 %1578 to i8
  store i8 %1579, i8* %42, align 1
  %1580 = lshr i32 %1566, 31
  %1581 = trunc i32 %1580 to i8
  store i8 %1581, i8* %45, align 1
  %1582 = lshr i32 %1565, 31
  %1583 = xor i32 %1580, %1582
  %1584 = add nuw nsw i32 %1583, %1582
  %1585 = icmp eq i32 %1584, 2
  %1586 = zext i1 %1585 to i8
  store i8 %1586, i8* %51, align 1
  %1587 = icmp ne i8 %1581, 0
  %1588 = xor i1 %1587, %1585
  %.v221 = select i1 %1588, i64 10, i64 142
  %1589 = add i64 %1560, %.v221
  store i64 %1589, i64* %3, align 8
  br i1 %1588, label %block_43f238, label %block_.L_43f2bc

block_43f238:                                     ; preds = %block_.L_43f22e
  %1590 = add i64 %1561, -72
  %1591 = add i64 %1589, 7
  store i64 %1591, i64* %3, align 8
  %1592 = inttoptr i64 %1590 to i32*
  store i32 0, i32* %1592, align 4
  %.pre161 = load i64, i64* %3, align 8
  br label %block_.L_43f23f

block_.L_43f23f:                                  ; preds = %block_43f249, %block_43f238
  %1593 = phi i64 [ %1845, %block_43f249 ], [ %.pre161, %block_43f238 ]
  %1594 = load i64, i64* %RBP.i, align 8
  %1595 = add i64 %1594, -72
  %1596 = add i64 %1593, 4
  store i64 %1596, i64* %3, align 8
  %1597 = inttoptr i64 %1595 to i32*
  %1598 = load i32, i32* %1597, align 4
  %1599 = add i32 %1598, -4
  %1600 = icmp ult i32 %1598, 4
  %1601 = zext i1 %1600 to i8
  store i8 %1601, i8* %26, align 1
  %1602 = and i32 %1599, 255
  %1603 = tail call i32 @llvm.ctpop.i32(i32 %1602)
  %1604 = trunc i32 %1603 to i8
  %1605 = and i8 %1604, 1
  %1606 = xor i8 %1605, 1
  store i8 %1606, i8* %33, align 1
  %1607 = xor i32 %1599, %1598
  %1608 = lshr i32 %1607, 4
  %1609 = trunc i32 %1608 to i8
  %1610 = and i8 %1609, 1
  store i8 %1610, i8* %39, align 1
  %1611 = icmp eq i32 %1599, 0
  %1612 = zext i1 %1611 to i8
  store i8 %1612, i8* %42, align 1
  %1613 = lshr i32 %1599, 31
  %1614 = trunc i32 %1613 to i8
  store i8 %1614, i8* %45, align 1
  %1615 = lshr i32 %1598, 31
  %1616 = xor i32 %1613, %1615
  %1617 = add nuw nsw i32 %1616, %1615
  %1618 = icmp eq i32 %1617, 2
  %1619 = zext i1 %1618 to i8
  store i8 %1619, i8* %51, align 1
  %1620 = icmp ne i8 %1614, 0
  %1621 = xor i1 %1620, %1618
  %.v196 = select i1 %1621, i64 10, i64 106
  %1622 = add i64 %1593, %.v196
  store i64 %1622, i64* %3, align 8
  br i1 %1621, label %block_43f249, label %block_.L_43f2a9

block_43f249:                                     ; preds = %block_.L_43f23f
  store i64 ptrtoint (%G__0x725610_type* @G__0x725610 to i64), i64* %RAX.i2060, align 8
  %1623 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*), align 8
  %1624 = add i64 %1623, 12600
  store i64 %1624, i64* %RCX.i2097, align 8
  %1625 = icmp ugt i64 %1623, -12601
  %1626 = zext i1 %1625 to i8
  store i8 %1626, i8* %26, align 1
  %1627 = trunc i64 %1624 to i32
  %1628 = and i32 %1627, 255
  %1629 = tail call i32 @llvm.ctpop.i32(i32 %1628)
  %1630 = trunc i32 %1629 to i8
  %1631 = and i8 %1630, 1
  %1632 = xor i8 %1631, 1
  store i8 %1632, i8* %33, align 1
  %1633 = xor i64 %1623, 16
  %1634 = xor i64 %1633, %1624
  %1635 = lshr i64 %1634, 4
  %1636 = trunc i64 %1635 to i8
  %1637 = and i8 %1636, 1
  store i8 %1637, i8* %39, align 1
  %1638 = icmp eq i64 %1624, 0
  %1639 = zext i1 %1638 to i8
  store i8 %1639, i8* %42, align 1
  %1640 = lshr i64 %1624, 63
  %1641 = trunc i64 %1640 to i8
  store i8 %1641, i8* %45, align 1
  %1642 = lshr i64 %1623, 63
  %1643 = xor i64 %1640, %1642
  %1644 = add nuw nsw i64 %1643, %1640
  %1645 = icmp eq i64 %1644, 2
  %1646 = zext i1 %1645 to i8
  store i8 %1646, i8* %51, align 1
  %1647 = add i64 %1622, 28
  store i64 %1647, i64* %3, align 8
  %1648 = load i32, i32* %1597, align 4
  %1649 = zext i32 %1648 to i64
  store i64 %1649, i64* %RDX.i2040.pre-phi, align 8
  %1650 = add i64 %1594, -60
  %1651 = add i64 %1622, 31
  store i64 %1651, i64* %3, align 8
  %1652 = inttoptr i64 %1650 to i32*
  %1653 = load i32, i32* %1652, align 4
  %1654 = add i32 %1653, %1648
  %1655 = zext i32 %1654 to i64
  store i64 %1655, i64* %RDX.i2040.pre-phi, align 8
  %1656 = sext i32 %1654 to i64
  %1657 = shl nsw i64 %1656, 5
  store i64 %1657, i64* %RSI.i2083, align 8
  %1658 = load i64, i64* %RCX.i2097, align 8
  %1659 = add i64 %1657, %1658
  store i64 %1659, i64* %RCX.i2097, align 8
  %1660 = icmp ult i64 %1659, %1658
  %1661 = icmp ult i64 %1659, %1657
  %1662 = or i1 %1660, %1661
  %1663 = zext i1 %1662 to i8
  store i8 %1663, i8* %26, align 1
  %1664 = trunc i64 %1659 to i32
  %1665 = and i32 %1664, 255
  %1666 = tail call i32 @llvm.ctpop.i32(i32 %1665)
  %1667 = trunc i32 %1666 to i8
  %1668 = and i8 %1667, 1
  %1669 = xor i8 %1668, 1
  store i8 %1669, i8* %33, align 1
  %1670 = xor i64 %1658, %1659
  %1671 = lshr i64 %1670, 4
  %1672 = trunc i64 %1671 to i8
  %1673 = and i8 %1672, 1
  store i8 %1673, i8* %39, align 1
  %1674 = icmp eq i64 %1659, 0
  %1675 = zext i1 %1674 to i8
  store i8 %1675, i8* %42, align 1
  %1676 = lshr i64 %1659, 63
  %1677 = trunc i64 %1676 to i8
  store i8 %1677, i8* %45, align 1
  %1678 = lshr i64 %1658, 63
  %1679 = lshr i64 %1656, 58
  %1680 = and i64 %1679, 1
  %1681 = xor i64 %1676, %1678
  %1682 = xor i64 %1676, %1680
  %1683 = add nuw nsw i64 %1681, %1682
  %1684 = icmp eq i64 %1683, 2
  %1685 = zext i1 %1684 to i8
  store i8 %1685, i8* %51, align 1
  %1686 = load i64, i64* %RBP.i, align 8
  %1687 = add i64 %1686, -76
  %1688 = add i64 %1622, 44
  store i64 %1688, i64* %3, align 8
  %1689 = inttoptr i64 %1687 to i32*
  %1690 = load i32, i32* %1689, align 4
  %1691 = zext i32 %1690 to i64
  store i64 %1691, i64* %RDX.i2040.pre-phi, align 8
  %1692 = add i64 %1686, -56
  %1693 = add i64 %1622, 47
  store i64 %1693, i64* %3, align 8
  %1694 = inttoptr i64 %1692 to i32*
  %1695 = load i32, i32* %1694, align 4
  %1696 = add i32 %1695, %1690
  %1697 = zext i32 %1696 to i64
  store i64 %1697, i64* %RDX.i2040.pre-phi, align 8
  %1698 = icmp ult i32 %1696, %1690
  %1699 = icmp ult i32 %1696, %1695
  %1700 = or i1 %1698, %1699
  %1701 = zext i1 %1700 to i8
  store i8 %1701, i8* %26, align 1
  %1702 = and i32 %1696, 255
  %1703 = tail call i32 @llvm.ctpop.i32(i32 %1702)
  %1704 = trunc i32 %1703 to i8
  %1705 = and i8 %1704, 1
  %1706 = xor i8 %1705, 1
  store i8 %1706, i8* %33, align 1
  %1707 = xor i32 %1695, %1690
  %1708 = xor i32 %1707, %1696
  %1709 = lshr i32 %1708, 4
  %1710 = trunc i32 %1709 to i8
  %1711 = and i8 %1710, 1
  store i8 %1711, i8* %39, align 1
  %1712 = icmp eq i32 %1696, 0
  %1713 = zext i1 %1712 to i8
  store i8 %1713, i8* %42, align 1
  %1714 = lshr i32 %1696, 31
  %1715 = trunc i32 %1714 to i8
  store i8 %1715, i8* %45, align 1
  %1716 = lshr i32 %1690, 31
  %1717 = lshr i32 %1695, 31
  %1718 = xor i32 %1714, %1716
  %1719 = xor i32 %1714, %1717
  %1720 = add nuw nsw i32 %1718, %1719
  %1721 = icmp eq i32 %1720, 2
  %1722 = zext i1 %1721 to i8
  store i8 %1722, i8* %51, align 1
  %1723 = sext i32 %1696 to i64
  store i64 %1723, i64* %RSI.i2083, align 8
  %1724 = shl nsw i64 %1723, 1
  %1725 = add i64 %1659, %1724
  %1726 = add i64 %1622, 54
  store i64 %1726, i64* %3, align 8
  %1727 = inttoptr i64 %1725 to i16*
  %1728 = load i16, i16* %1727, align 2
  %1729 = zext i16 %1728 to i64
  store i64 %1729, i64* %RDX.i2040.pre-phi, align 8
  %1730 = add i64 %1686, -72
  %1731 = add i64 %1622, 57
  store i64 %1731, i64* %3, align 8
  %1732 = inttoptr i64 %1730 to i32*
  %1733 = load i32, i32* %1732, align 4
  %1734 = zext i32 %1733 to i64
  store i64 %1734, i64* %RDI.i2086, align 8
  %1735 = add i64 %1686, -60
  %1736 = add i64 %1622, 60
  store i64 %1736, i64* %3, align 8
  %1737 = inttoptr i64 %1735 to i32*
  %1738 = load i32, i32* %1737, align 4
  %1739 = add i32 %1738, %1733
  %1740 = zext i32 %1739 to i64
  store i64 %1740, i64* %RDI.i2086, align 8
  %1741 = sext i32 %1739 to i64
  %1742 = shl nsw i64 %1741, 6
  store i64 %1742, i64* %RCX.i2097, align 8
  %1743 = load i64, i64* %RAX.i2060, align 8
  %1744 = add i64 %1742, %1743
  store i64 %1744, i64* %RAX.i2060, align 8
  %1745 = icmp ult i64 %1744, %1743
  %1746 = icmp ult i64 %1744, %1742
  %1747 = or i1 %1745, %1746
  %1748 = zext i1 %1747 to i8
  store i8 %1748, i8* %26, align 1
  %1749 = trunc i64 %1744 to i32
  %1750 = and i32 %1749, 255
  %1751 = tail call i32 @llvm.ctpop.i32(i32 %1750)
  %1752 = trunc i32 %1751 to i8
  %1753 = and i8 %1752, 1
  %1754 = xor i8 %1753, 1
  store i8 %1754, i8* %33, align 1
  %1755 = xor i64 %1743, %1744
  %1756 = lshr i64 %1755, 4
  %1757 = trunc i64 %1756 to i8
  %1758 = and i8 %1757, 1
  store i8 %1758, i8* %39, align 1
  %1759 = icmp eq i64 %1744, 0
  %1760 = zext i1 %1759 to i8
  store i8 %1760, i8* %42, align 1
  %1761 = lshr i64 %1744, 63
  %1762 = trunc i64 %1761 to i8
  store i8 %1762, i8* %45, align 1
  %1763 = lshr i64 %1743, 63
  %1764 = lshr i64 %1741, 57
  %1765 = and i64 %1764, 1
  %1766 = xor i64 %1761, %1763
  %1767 = xor i64 %1761, %1765
  %1768 = add nuw nsw i64 %1766, %1767
  %1769 = icmp eq i64 %1768, 2
  %1770 = zext i1 %1769 to i8
  store i8 %1770, i8* %51, align 1
  %1771 = load i64, i64* %RBP.i, align 8
  %1772 = add i64 %1771, -76
  %1773 = add i64 %1622, 73
  store i64 %1773, i64* %3, align 8
  %1774 = inttoptr i64 %1772 to i32*
  %1775 = load i32, i32* %1774, align 4
  %1776 = zext i32 %1775 to i64
  store i64 %1776, i64* %RDI.i2086, align 8
  %1777 = add i64 %1771, -56
  %1778 = add i64 %1622, 76
  store i64 %1778, i64* %3, align 8
  %1779 = inttoptr i64 %1777 to i32*
  %1780 = load i32, i32* %1779, align 4
  %1781 = add i32 %1780, %1775
  %1782 = zext i32 %1781 to i64
  store i64 %1782, i64* %RDI.i2086, align 8
  %1783 = icmp ult i32 %1781, %1775
  %1784 = icmp ult i32 %1781, %1780
  %1785 = or i1 %1783, %1784
  %1786 = zext i1 %1785 to i8
  store i8 %1786, i8* %26, align 1
  %1787 = and i32 %1781, 255
  %1788 = tail call i32 @llvm.ctpop.i32(i32 %1787)
  %1789 = trunc i32 %1788 to i8
  %1790 = and i8 %1789, 1
  %1791 = xor i8 %1790, 1
  store i8 %1791, i8* %33, align 1
  %1792 = xor i32 %1780, %1775
  %1793 = xor i32 %1792, %1781
  %1794 = lshr i32 %1793, 4
  %1795 = trunc i32 %1794 to i8
  %1796 = and i8 %1795, 1
  store i8 %1796, i8* %39, align 1
  %1797 = icmp eq i32 %1781, 0
  %1798 = zext i1 %1797 to i8
  store i8 %1798, i8* %42, align 1
  %1799 = lshr i32 %1781, 31
  %1800 = trunc i32 %1799 to i8
  store i8 %1800, i8* %45, align 1
  %1801 = lshr i32 %1775, 31
  %1802 = lshr i32 %1780, 31
  %1803 = xor i32 %1799, %1801
  %1804 = xor i32 %1799, %1802
  %1805 = add nuw nsw i32 %1803, %1804
  %1806 = icmp eq i32 %1805, 2
  %1807 = zext i1 %1806 to i8
  store i8 %1807, i8* %51, align 1
  %1808 = sext i32 %1781 to i64
  store i64 %1808, i64* %RCX.i2097, align 8
  %1809 = shl nsw i64 %1808, 2
  %1810 = add i64 %1744, %1809
  %1811 = load i32, i32* %EDX.i2080, align 4
  %1812 = add i64 %1622, 82
  store i64 %1812, i64* %3, align 8
  %1813 = inttoptr i64 %1810 to i32*
  store i32 %1811, i32* %1813, align 4
  %1814 = load i64, i64* %RBP.i, align 8
  %1815 = add i64 %1814, -72
  %1816 = load i64, i64* %3, align 8
  %1817 = add i64 %1816, 3
  store i64 %1817, i64* %3, align 8
  %1818 = inttoptr i64 %1815 to i32*
  %1819 = load i32, i32* %1818, align 4
  %1820 = add i32 %1819, 1
  %1821 = zext i32 %1820 to i64
  store i64 %1821, i64* %RAX.i2060, align 8
  %1822 = icmp eq i32 %1819, -1
  %1823 = icmp eq i32 %1820, 0
  %1824 = or i1 %1822, %1823
  %1825 = zext i1 %1824 to i8
  store i8 %1825, i8* %26, align 1
  %1826 = and i32 %1820, 255
  %1827 = tail call i32 @llvm.ctpop.i32(i32 %1826)
  %1828 = trunc i32 %1827 to i8
  %1829 = and i8 %1828, 1
  %1830 = xor i8 %1829, 1
  store i8 %1830, i8* %33, align 1
  %1831 = xor i32 %1820, %1819
  %1832 = lshr i32 %1831, 4
  %1833 = trunc i32 %1832 to i8
  %1834 = and i8 %1833, 1
  store i8 %1834, i8* %39, align 1
  %1835 = zext i1 %1823 to i8
  store i8 %1835, i8* %42, align 1
  %1836 = lshr i32 %1820, 31
  %1837 = trunc i32 %1836 to i8
  store i8 %1837, i8* %45, align 1
  %1838 = lshr i32 %1819, 31
  %1839 = xor i32 %1836, %1838
  %1840 = add nuw nsw i32 %1839, %1836
  %1841 = icmp eq i32 %1840, 2
  %1842 = zext i1 %1841 to i8
  store i8 %1842, i8* %51, align 1
  %1843 = add i64 %1816, 9
  store i64 %1843, i64* %3, align 8
  store i32 %1820, i32* %1818, align 4
  %1844 = load i64, i64* %3, align 8
  %1845 = add i64 %1844, -101
  store i64 %1845, i64* %3, align 8
  br label %block_.L_43f23f

block_.L_43f2a9:                                  ; preds = %block_.L_43f23f
  %1846 = add i64 %1594, -76
  %1847 = add i64 %1622, 8
  store i64 %1847, i64* %3, align 8
  %1848 = inttoptr i64 %1846 to i32*
  %1849 = load i32, i32* %1848, align 4
  %1850 = add i32 %1849, 1
  %1851 = zext i32 %1850 to i64
  store i64 %1851, i64* %RAX.i2060, align 8
  %1852 = icmp eq i32 %1849, -1
  %1853 = icmp eq i32 %1850, 0
  %1854 = or i1 %1852, %1853
  %1855 = zext i1 %1854 to i8
  store i8 %1855, i8* %26, align 1
  %1856 = and i32 %1850, 255
  %1857 = tail call i32 @llvm.ctpop.i32(i32 %1856)
  %1858 = trunc i32 %1857 to i8
  %1859 = and i8 %1858, 1
  %1860 = xor i8 %1859, 1
  store i8 %1860, i8* %33, align 1
  %1861 = xor i32 %1850, %1849
  %1862 = lshr i32 %1861, 4
  %1863 = trunc i32 %1862 to i8
  %1864 = and i8 %1863, 1
  store i8 %1864, i8* %39, align 1
  %1865 = zext i1 %1853 to i8
  store i8 %1865, i8* %42, align 1
  %1866 = lshr i32 %1850, 31
  %1867 = trunc i32 %1866 to i8
  store i8 %1867, i8* %45, align 1
  %1868 = lshr i32 %1849, 31
  %1869 = xor i32 %1866, %1868
  %1870 = add nuw nsw i32 %1869, %1866
  %1871 = icmp eq i32 %1870, 2
  %1872 = zext i1 %1871 to i8
  store i8 %1872, i8* %51, align 1
  %1873 = add i64 %1622, 14
  store i64 %1873, i64* %3, align 8
  store i32 %1850, i32* %1848, align 4
  %1874 = load i64, i64* %3, align 8
  %1875 = add i64 %1874, -137
  store i64 %1875, i64* %3, align 8
  br label %block_.L_43f22e

block_.L_43f2bc:                                  ; preds = %block_.L_43f22e
  %1876 = add i64 %1589, 5
  store i64 %1876, i64* %3, align 8
  %.pre162 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*), align 8
  br label %block_.L_43f2c1

block_.L_43f2c1:                                  ; preds = %block_.L_43f1ea, %block_.L_43f2bc
  %1877 = phi i64 [ %1561, %block_.L_43f2bc ], [ %.pre163, %block_.L_43f1ea ]
  %1878 = phi i64 [ %.pre162, %block_.L_43f2bc ], [ %1542, %block_.L_43f1ea ]
  %1879 = phi i64 [ %1876, %block_.L_43f2bc ], [ %1556, %block_.L_43f1ea ]
  store i64 %1878, i64* %RAX.i2060, align 8
  %1880 = add i64 %1878, 72724
  %1881 = add i64 %1879, 15
  store i64 %1881, i64* %3, align 8
  %1882 = inttoptr i64 %1880 to i32*
  %1883 = load i32, i32* %1882, align 4
  store i8 0, i8* %26, align 1
  %1884 = and i32 %1883, 255
  %1885 = tail call i32 @llvm.ctpop.i32(i32 %1884)
  %1886 = trunc i32 %1885 to i8
  %1887 = and i8 %1886, 1
  %1888 = xor i8 %1887, 1
  store i8 %1888, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %1889 = icmp eq i32 %1883, 0
  %1890 = zext i1 %1889 to i8
  store i8 %1890, i8* %42, align 1
  %1891 = lshr i32 %1883, 31
  %1892 = trunc i32 %1891 to i8
  store i8 %1892, i8* %45, align 1
  store i8 0, i8* %51, align 1
  %.v182 = select i1 %1889, i64 21, i64 556
  %1893 = add i64 %1879, %.v182
  store i64 %1893, i64* %3, align 8
  br i1 %1889, label %block_43f2d6, label %block_.L_43f4ed

block_43f2d6:                                     ; preds = %block_.L_43f2c1
  %1894 = add i64 %1877, -132
  %1895 = add i64 %1893, 7
  store i64 %1895, i64* %3, align 8
  %1896 = inttoptr i64 %1894 to i32*
  %1897 = load i32, i32* %1896, align 4
  store i8 0, i8* %26, align 1
  %1898 = and i32 %1897, 255
  %1899 = tail call i32 @llvm.ctpop.i32(i32 %1898)
  %1900 = trunc i32 %1899 to i8
  %1901 = and i8 %1900, 1
  %1902 = xor i8 %1901, 1
  store i8 %1902, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %1903 = icmp eq i32 %1897, 0
  %1904 = zext i1 %1903 to i8
  store i8 %1904, i8* %42, align 1
  %1905 = lshr i32 %1897, 31
  %1906 = trunc i32 %1905 to i8
  store i8 %1906, i8* %45, align 1
  store i8 0, i8* %51, align 1
  %.v181 = select i1 %1903, i64 13, i64 337
  %1907 = add i64 %1893, %.v181
  %1908 = add i64 %1877, -76
  %1909 = add i64 %1907, 7
  store i64 %1909, i64* %3, align 8
  %1910 = inttoptr i64 %1908 to i32*
  store i32 0, i32* %1910, align 4
  %.pre164 = load i64, i64* %3, align 8
  br i1 %1903, label %block_.L_43f2ea.preheader, label %block_.L_43f42e.preheader

block_.L_43f42e.preheader:                        ; preds = %block_43f2d6
  br label %block_.L_43f42e

block_.L_43f2ea.preheader:                        ; preds = %block_43f2d6
  br label %block_.L_43f2ea

block_.L_43f2ea:                                  ; preds = %block_.L_43f2ea.preheader, %block_.L_43f382
  %1911 = phi i64 [ %2300, %block_.L_43f382 ], [ %.pre164, %block_.L_43f2ea.preheader ]
  %1912 = load i64, i64* %RBP.i, align 8
  %1913 = add i64 %1912, -76
  %1914 = add i64 %1911, 4
  store i64 %1914, i64* %3, align 8
  %1915 = inttoptr i64 %1913 to i32*
  %1916 = load i32, i32* %1915, align 4
  %1917 = add i32 %1916, -4
  %1918 = icmp ult i32 %1916, 4
  %1919 = zext i1 %1918 to i8
  store i8 %1919, i8* %26, align 1
  %1920 = and i32 %1917, 255
  %1921 = tail call i32 @llvm.ctpop.i32(i32 %1920)
  %1922 = trunc i32 %1921 to i8
  %1923 = and i8 %1922, 1
  %1924 = xor i8 %1923, 1
  store i8 %1924, i8* %33, align 1
  %1925 = xor i32 %1917, %1916
  %1926 = lshr i32 %1925, 4
  %1927 = trunc i32 %1926 to i8
  %1928 = and i8 %1927, 1
  store i8 %1928, i8* %39, align 1
  %1929 = icmp eq i32 %1917, 0
  %1930 = zext i1 %1929 to i8
  store i8 %1930, i8* %42, align 1
  %1931 = lshr i32 %1917, 31
  %1932 = trunc i32 %1931 to i8
  store i8 %1932, i8* %45, align 1
  %1933 = lshr i32 %1916, 31
  %1934 = xor i32 %1931, %1933
  %1935 = add nuw nsw i32 %1934, %1933
  %1936 = icmp eq i32 %1935, 2
  %1937 = zext i1 %1936 to i8
  store i8 %1937, i8* %51, align 1
  %1938 = icmp ne i8 %1932, 0
  %1939 = xor i1 %1938, %1936
  %.v186 = select i1 %1939, i64 10, i64 171
  %1940 = add i64 %1911, %.v186
  store i64 %1940, i64* %3, align 8
  br i1 %1939, label %block_43f2f4, label %block_.L_43f395

block_43f2f4:                                     ; preds = %block_.L_43f2ea
  %1941 = add i64 %1912, -72
  %1942 = add i64 %1940, 7
  store i64 %1942, i64* %3, align 8
  %1943 = inttoptr i64 %1941 to i32*
  store i32 0, i32* %1943, align 4
  %.pre167 = load i64, i64* %3, align 8
  br label %block_.L_43f2fb

block_.L_43f2fb:                                  ; preds = %block_43f305, %block_43f2f4
  %1944 = phi i64 [ %2270, %block_43f305 ], [ %.pre167, %block_43f2f4 ]
  %1945 = load i64, i64* %RBP.i, align 8
  %1946 = add i64 %1945, -72
  %1947 = add i64 %1944, 4
  store i64 %1947, i64* %3, align 8
  %1948 = inttoptr i64 %1946 to i32*
  %1949 = load i32, i32* %1948, align 4
  %1950 = add i32 %1949, -4
  %1951 = icmp ult i32 %1949, 4
  %1952 = zext i1 %1951 to i8
  store i8 %1952, i8* %26, align 1
  %1953 = and i32 %1950, 255
  %1954 = tail call i32 @llvm.ctpop.i32(i32 %1953)
  %1955 = trunc i32 %1954 to i8
  %1956 = and i8 %1955, 1
  %1957 = xor i8 %1956, 1
  store i8 %1957, i8* %33, align 1
  %1958 = xor i32 %1950, %1949
  %1959 = lshr i32 %1958, 4
  %1960 = trunc i32 %1959 to i8
  %1961 = and i8 %1960, 1
  store i8 %1961, i8* %39, align 1
  %1962 = icmp eq i32 %1950, 0
  %1963 = zext i1 %1962 to i8
  store i8 %1963, i8* %42, align 1
  %1964 = lshr i32 %1950, 31
  %1965 = trunc i32 %1964 to i8
  store i8 %1965, i8* %45, align 1
  %1966 = lshr i32 %1949, 31
  %1967 = xor i32 %1964, %1966
  %1968 = add nuw nsw i32 %1967, %1966
  %1969 = icmp eq i32 %1968, 2
  %1970 = zext i1 %1969 to i8
  store i8 %1970, i8* %51, align 1
  %1971 = icmp ne i8 %1965, 0
  %1972 = xor i1 %1971, %1969
  %.v187 = select i1 %1972, i64 10, i64 135
  %1973 = add i64 %1944, %.v187
  store i64 %1973, i64* %3, align 8
  br i1 %1972, label %block_43f305, label %block_.L_43f382

block_43f305:                                     ; preds = %block_.L_43f2fb
  %1974 = load i64, i64* bitcast (%G_0x726418_type* @G_0x726418 to i64*), align 8
  store i64 %1974, i64* %RAX.i2060, align 8
  %1975 = add i64 %1945, -64
  %1976 = add i64 %1973, 11
  store i64 %1976, i64* %3, align 8
  %1977 = inttoptr i64 %1975 to i32*
  %1978 = load i32, i32* %1977, align 4
  %1979 = zext i32 %1978 to i64
  store i64 %1979, i64* %RCX.i2097, align 8
  %1980 = add i64 %1945, -76
  %1981 = add i64 %1973, 14
  store i64 %1981, i64* %3, align 8
  %1982 = inttoptr i64 %1980 to i32*
  %1983 = load i32, i32* %1982, align 4
  %1984 = add i32 %1983, %1978
  %1985 = zext i32 %1984 to i64
  store i64 %1985, i64* %RCX.i2097, align 8
  %1986 = icmp ult i32 %1984, %1978
  %1987 = icmp ult i32 %1984, %1983
  %1988 = or i1 %1986, %1987
  %1989 = zext i1 %1988 to i8
  store i8 %1989, i8* %26, align 1
  %1990 = and i32 %1984, 255
  %1991 = tail call i32 @llvm.ctpop.i32(i32 %1990)
  %1992 = trunc i32 %1991 to i8
  %1993 = and i8 %1992, 1
  %1994 = xor i8 %1993, 1
  store i8 %1994, i8* %33, align 1
  %1995 = xor i32 %1983, %1978
  %1996 = xor i32 %1995, %1984
  %1997 = lshr i32 %1996, 4
  %1998 = trunc i32 %1997 to i8
  %1999 = and i8 %1998, 1
  store i8 %1999, i8* %39, align 1
  %2000 = icmp eq i32 %1984, 0
  %2001 = zext i1 %2000 to i8
  store i8 %2001, i8* %42, align 1
  %2002 = lshr i32 %1984, 31
  %2003 = trunc i32 %2002 to i8
  store i8 %2003, i8* %45, align 1
  %2004 = lshr i32 %1978, 31
  %2005 = lshr i32 %1983, 31
  %2006 = xor i32 %2002, %2004
  %2007 = xor i32 %2002, %2005
  %2008 = add nuw nsw i32 %2006, %2007
  %2009 = icmp eq i32 %2008, 2
  %2010 = zext i1 %2009 to i8
  store i8 %2010, i8* %51, align 1
  %2011 = sext i32 %1984 to i64
  store i64 %2011, i64* %RDX.i2040.pre-phi, align 8
  %2012 = shl nsw i64 %2011, 3
  %2013 = add i64 %1974, %2012
  %2014 = add i64 %1973, 21
  store i64 %2014, i64* %3, align 8
  %2015 = inttoptr i64 %2013 to i64*
  %2016 = load i64, i64* %2015, align 8
  store i64 %2016, i64* %RAX.i2060, align 8
  %2017 = add i64 %1945, -68
  %2018 = add i64 %1973, 24
  store i64 %2018, i64* %3, align 8
  %2019 = inttoptr i64 %2017 to i32*
  %2020 = load i32, i32* %2019, align 4
  %2021 = zext i32 %2020 to i64
  store i64 %2021, i64* %RCX.i2097, align 8
  %2022 = add i64 %1973, 27
  store i64 %2022, i64* %3, align 8
  %2023 = load i32, i32* %1948, align 4
  %2024 = add i32 %2023, %2020
  %2025 = zext i32 %2024 to i64
  store i64 %2025, i64* %RCX.i2097, align 8
  %2026 = icmp ult i32 %2024, %2020
  %2027 = icmp ult i32 %2024, %2023
  %2028 = or i1 %2026, %2027
  %2029 = zext i1 %2028 to i8
  store i8 %2029, i8* %26, align 1
  %2030 = and i32 %2024, 255
  %2031 = tail call i32 @llvm.ctpop.i32(i32 %2030)
  %2032 = trunc i32 %2031 to i8
  %2033 = and i8 %2032, 1
  %2034 = xor i8 %2033, 1
  store i8 %2034, i8* %33, align 1
  %2035 = xor i32 %2023, %2020
  %2036 = xor i32 %2035, %2024
  %2037 = lshr i32 %2036, 4
  %2038 = trunc i32 %2037 to i8
  %2039 = and i8 %2038, 1
  store i8 %2039, i8* %39, align 1
  %2040 = icmp eq i32 %2024, 0
  %2041 = zext i1 %2040 to i8
  store i8 %2041, i8* %42, align 1
  %2042 = lshr i32 %2024, 31
  %2043 = trunc i32 %2042 to i8
  store i8 %2043, i8* %45, align 1
  %2044 = lshr i32 %2020, 31
  %2045 = lshr i32 %2023, 31
  %2046 = xor i32 %2042, %2044
  %2047 = xor i32 %2042, %2045
  %2048 = add nuw nsw i32 %2046, %2047
  %2049 = icmp eq i32 %2048, 2
  %2050 = zext i1 %2049 to i8
  store i8 %2050, i8* %51, align 1
  %2051 = sext i32 %2024 to i64
  store i64 %2051, i64* %RDX.i2040.pre-phi, align 8
  %2052 = shl nsw i64 %2051, 1
  %2053 = add i64 %2016, %2052
  %2054 = add i64 %1973, 34
  store i64 %2054, i64* %3, align 8
  %2055 = inttoptr i64 %2053 to i16*
  %2056 = load i16, i16* %2055, align 2
  %2057 = zext i16 %2056 to i64
  store i64 %2057, i64* %RCX.i2097, align 8
  %2058 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*), align 8
  %2059 = add i64 %2058, 12600
  store i64 %2059, i64* %RAX.i2060, align 8
  %2060 = icmp ugt i64 %2058, -12601
  %2061 = zext i1 %2060 to i8
  store i8 %2061, i8* %26, align 1
  %2062 = trunc i64 %2059 to i32
  %2063 = and i32 %2062, 255
  %2064 = tail call i32 @llvm.ctpop.i32(i32 %2063)
  %2065 = trunc i32 %2064 to i8
  %2066 = and i8 %2065, 1
  %2067 = xor i8 %2066, 1
  store i8 %2067, i8* %33, align 1
  %2068 = xor i64 %2058, 16
  %2069 = xor i64 %2068, %2059
  %2070 = lshr i64 %2069, 4
  %2071 = trunc i64 %2070 to i8
  %2072 = and i8 %2071, 1
  store i8 %2072, i8* %39, align 1
  %2073 = icmp eq i64 %2059, 0
  %2074 = zext i1 %2073 to i8
  store i8 %2074, i8* %42, align 1
  %2075 = lshr i64 %2059, 63
  %2076 = trunc i64 %2075 to i8
  store i8 %2076, i8* %45, align 1
  %2077 = lshr i64 %2058, 63
  %2078 = xor i64 %2075, %2077
  %2079 = add nuw nsw i64 %2078, %2075
  %2080 = icmp eq i64 %2079, 2
  %2081 = zext i1 %2080 to i8
  store i8 %2081, i8* %51, align 1
  %2082 = load i64, i64* %RBP.i, align 8
  %2083 = add i64 %2082, -72
  %2084 = add i64 %1973, 51
  store i64 %2084, i64* %3, align 8
  %2085 = inttoptr i64 %2083 to i32*
  %2086 = load i32, i32* %2085, align 4
  %2087 = zext i32 %2086 to i64
  store i64 %2087, i64* %RSI.i2083, align 8
  %2088 = add i64 %2082, -60
  %2089 = add i64 %1973, 54
  store i64 %2089, i64* %3, align 8
  %2090 = inttoptr i64 %2088 to i32*
  %2091 = load i32, i32* %2090, align 4
  %2092 = add i32 %2091, %2086
  %2093 = zext i32 %2092 to i64
  store i64 %2093, i64* %RSI.i2083, align 8
  %2094 = sext i32 %2092 to i64
  %2095 = shl nsw i64 %2094, 5
  store i64 %2095, i64* %RDX.i2040.pre-phi, align 8
  %2096 = load i64, i64* %RAX.i2060, align 8
  %2097 = add i64 %2095, %2096
  store i64 %2097, i64* %RAX.i2060, align 8
  %2098 = icmp ult i64 %2097, %2096
  %2099 = icmp ult i64 %2097, %2095
  %2100 = or i1 %2098, %2099
  %2101 = zext i1 %2100 to i8
  store i8 %2101, i8* %26, align 1
  %2102 = trunc i64 %2097 to i32
  %2103 = and i32 %2102, 255
  %2104 = tail call i32 @llvm.ctpop.i32(i32 %2103)
  %2105 = trunc i32 %2104 to i8
  %2106 = and i8 %2105, 1
  %2107 = xor i8 %2106, 1
  store i8 %2107, i8* %33, align 1
  %2108 = xor i64 %2096, %2097
  %2109 = lshr i64 %2108, 4
  %2110 = trunc i64 %2109 to i8
  %2111 = and i8 %2110, 1
  store i8 %2111, i8* %39, align 1
  %2112 = icmp eq i64 %2097, 0
  %2113 = zext i1 %2112 to i8
  store i8 %2113, i8* %42, align 1
  %2114 = lshr i64 %2097, 63
  %2115 = trunc i64 %2114 to i8
  store i8 %2115, i8* %45, align 1
  %2116 = lshr i64 %2096, 63
  %2117 = lshr i64 %2094, 58
  %2118 = and i64 %2117, 1
  %2119 = xor i64 %2114, %2116
  %2120 = xor i64 %2114, %2118
  %2121 = add nuw nsw i64 %2119, %2120
  %2122 = icmp eq i64 %2121, 2
  %2123 = zext i1 %2122 to i8
  store i8 %2123, i8* %51, align 1
  %2124 = load i64, i64* %RBP.i, align 8
  %2125 = add i64 %2124, -76
  %2126 = add i64 %1973, 67
  store i64 %2126, i64* %3, align 8
  %2127 = inttoptr i64 %2125 to i32*
  %2128 = load i32, i32* %2127, align 4
  %2129 = zext i32 %2128 to i64
  store i64 %2129, i64* %RSI.i2083, align 8
  %2130 = add i64 %2124, -56
  %2131 = add i64 %1973, 70
  store i64 %2131, i64* %3, align 8
  %2132 = inttoptr i64 %2130 to i32*
  %2133 = load i32, i32* %2132, align 4
  %2134 = add i32 %2133, %2128
  %2135 = zext i32 %2134 to i64
  store i64 %2135, i64* %RSI.i2083, align 8
  %2136 = icmp ult i32 %2134, %2128
  %2137 = icmp ult i32 %2134, %2133
  %2138 = or i1 %2136, %2137
  %2139 = zext i1 %2138 to i8
  store i8 %2139, i8* %26, align 1
  %2140 = and i32 %2134, 255
  %2141 = tail call i32 @llvm.ctpop.i32(i32 %2140)
  %2142 = trunc i32 %2141 to i8
  %2143 = and i8 %2142, 1
  %2144 = xor i8 %2143, 1
  store i8 %2144, i8* %33, align 1
  %2145 = xor i32 %2133, %2128
  %2146 = xor i32 %2145, %2134
  %2147 = lshr i32 %2146, 4
  %2148 = trunc i32 %2147 to i8
  %2149 = and i8 %2148, 1
  store i8 %2149, i8* %39, align 1
  %2150 = icmp eq i32 %2134, 0
  %2151 = zext i1 %2150 to i8
  store i8 %2151, i8* %42, align 1
  %2152 = lshr i32 %2134, 31
  %2153 = trunc i32 %2152 to i8
  store i8 %2153, i8* %45, align 1
  %2154 = lshr i32 %2128, 31
  %2155 = lshr i32 %2133, 31
  %2156 = xor i32 %2152, %2154
  %2157 = xor i32 %2152, %2155
  %2158 = add nuw nsw i32 %2156, %2157
  %2159 = icmp eq i32 %2158, 2
  %2160 = zext i1 %2159 to i8
  store i8 %2160, i8* %51, align 1
  %2161 = sext i32 %2134 to i64
  store i64 %2161, i64* %RDX.i2040.pre-phi, align 8
  %2162 = shl nsw i64 %2161, 1
  %2163 = add i64 %2097, %2162
  %2164 = add i64 %1973, 77
  store i64 %2164, i64* %3, align 8
  %2165 = inttoptr i64 %2163 to i16*
  %2166 = load i16, i16* %2165, align 2
  %2167 = zext i16 %2166 to i64
  store i64 %2167, i64* %RSI.i2083, align 8
  %2168 = load i64, i64* %RCX.i2097, align 8
  %2169 = zext i16 %2166 to i64
  %2170 = sub i64 %2168, %2169
  %2171 = and i64 %2170, 4294967295
  store i64 %2171, i64* %RCX.i2097, align 8
  %2172 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*), align 8
  %2173 = add i64 %2172, 13112
  store i64 %2173, i64* %RAX.i2060, align 8
  %2174 = icmp ugt i64 %2172, -13113
  %2175 = zext i1 %2174 to i8
  store i8 %2175, i8* %26, align 1
  %2176 = trunc i64 %2173 to i32
  %2177 = and i32 %2176, 255
  %2178 = tail call i32 @llvm.ctpop.i32(i32 %2177)
  %2179 = trunc i32 %2178 to i8
  %2180 = and i8 %2179, 1
  %2181 = xor i8 %2180, 1
  store i8 %2181, i8* %33, align 1
  %2182 = xor i64 %2172, 16
  %2183 = xor i64 %2182, %2173
  %2184 = lshr i64 %2183, 4
  %2185 = trunc i64 %2184 to i8
  %2186 = and i8 %2185, 1
  store i8 %2186, i8* %39, align 1
  %2187 = icmp eq i64 %2173, 0
  %2188 = zext i1 %2187 to i8
  store i8 %2188, i8* %42, align 1
  %2189 = lshr i64 %2173, 63
  %2190 = trunc i64 %2189 to i8
  store i8 %2190, i8* %45, align 1
  %2191 = lshr i64 %2172, 63
  %2192 = xor i64 %2189, %2191
  %2193 = add nuw nsw i64 %2192, %2189
  %2194 = icmp eq i64 %2193, 2
  %2195 = zext i1 %2194 to i8
  store i8 %2195, i8* %51, align 1
  %2196 = load i64, i64* %RBP.i, align 8
  %2197 = add i64 %2196, -72
  %2198 = add i64 %1973, 97
  store i64 %2198, i64* %3, align 8
  %2199 = inttoptr i64 %2197 to i32*
  %2200 = load i32, i32* %2199, align 4
  %2201 = sext i32 %2200 to i64
  %2202 = shl nsw i64 %2201, 6
  store i64 %2202, i64* %RDX.i2040.pre-phi, align 8
  %2203 = add i64 %2202, %2173
  store i64 %2203, i64* %RAX.i2060, align 8
  %2204 = icmp ult i64 %2203, %2173
  %2205 = icmp ult i64 %2203, %2202
  %2206 = or i1 %2204, %2205
  %2207 = zext i1 %2206 to i8
  store i8 %2207, i8* %26, align 1
  %2208 = trunc i64 %2203 to i32
  %2209 = and i32 %2208, 255
  %2210 = tail call i32 @llvm.ctpop.i32(i32 %2209)
  %2211 = trunc i32 %2210 to i8
  %2212 = and i8 %2211, 1
  %2213 = xor i8 %2212, 1
  store i8 %2213, i8* %33, align 1
  %2214 = xor i64 %2173, %2203
  %2215 = lshr i64 %2214, 4
  %2216 = trunc i64 %2215 to i8
  %2217 = and i8 %2216, 1
  store i8 %2217, i8* %39, align 1
  %2218 = icmp eq i64 %2203, 0
  %2219 = zext i1 %2218 to i8
  store i8 %2219, i8* %42, align 1
  %2220 = lshr i64 %2203, 63
  %2221 = trunc i64 %2220 to i8
  store i8 %2221, i8* %45, align 1
  %2222 = lshr i64 %2201, 57
  %2223 = and i64 %2222, 1
  %2224 = xor i64 %2220, %2189
  %2225 = xor i64 %2220, %2223
  %2226 = add nuw nsw i64 %2224, %2225
  %2227 = icmp eq i64 %2226, 2
  %2228 = zext i1 %2227 to i8
  store i8 %2228, i8* %51, align 1
  %2229 = add i64 %2196, -76
  %2230 = add i64 %1973, 108
  store i64 %2230, i64* %3, align 8
  %2231 = inttoptr i64 %2229 to i32*
  %2232 = load i32, i32* %2231, align 4
  %2233 = sext i32 %2232 to i64
  store i64 %2233, i64* %RDX.i2040.pre-phi, align 8
  %2234 = shl nsw i64 %2233, 2
  %2235 = add i64 %2234, %2203
  %2236 = load i32, i32* %ECX.i2096, align 4
  %2237 = add i64 %1973, 111
  store i64 %2237, i64* %3, align 8
  %2238 = inttoptr i64 %2235 to i32*
  store i32 %2236, i32* %2238, align 4
  %2239 = load i64, i64* %RBP.i, align 8
  %2240 = add i64 %2239, -72
  %2241 = load i64, i64* %3, align 8
  %2242 = add i64 %2241, 3
  store i64 %2242, i64* %3, align 8
  %2243 = inttoptr i64 %2240 to i32*
  %2244 = load i32, i32* %2243, align 4
  %2245 = add i32 %2244, 1
  %2246 = zext i32 %2245 to i64
  store i64 %2246, i64* %RAX.i2060, align 8
  %2247 = icmp eq i32 %2244, -1
  %2248 = icmp eq i32 %2245, 0
  %2249 = or i1 %2247, %2248
  %2250 = zext i1 %2249 to i8
  store i8 %2250, i8* %26, align 1
  %2251 = and i32 %2245, 255
  %2252 = tail call i32 @llvm.ctpop.i32(i32 %2251)
  %2253 = trunc i32 %2252 to i8
  %2254 = and i8 %2253, 1
  %2255 = xor i8 %2254, 1
  store i8 %2255, i8* %33, align 1
  %2256 = xor i32 %2245, %2244
  %2257 = lshr i32 %2256, 4
  %2258 = trunc i32 %2257 to i8
  %2259 = and i8 %2258, 1
  store i8 %2259, i8* %39, align 1
  %2260 = zext i1 %2248 to i8
  store i8 %2260, i8* %42, align 1
  %2261 = lshr i32 %2245, 31
  %2262 = trunc i32 %2261 to i8
  store i8 %2262, i8* %45, align 1
  %2263 = lshr i32 %2244, 31
  %2264 = xor i32 %2261, %2263
  %2265 = add nuw nsw i32 %2264, %2261
  %2266 = icmp eq i32 %2265, 2
  %2267 = zext i1 %2266 to i8
  store i8 %2267, i8* %51, align 1
  %2268 = add i64 %2241, 9
  store i64 %2268, i64* %3, align 8
  store i32 %2245, i32* %2243, align 4
  %2269 = load i64, i64* %3, align 8
  %2270 = add i64 %2269, -130
  store i64 %2270, i64* %3, align 8
  br label %block_.L_43f2fb

block_.L_43f382:                                  ; preds = %block_.L_43f2fb
  %2271 = add i64 %1945, -76
  %2272 = add i64 %1973, 8
  store i64 %2272, i64* %3, align 8
  %2273 = inttoptr i64 %2271 to i32*
  %2274 = load i32, i32* %2273, align 4
  %2275 = add i32 %2274, 1
  %2276 = zext i32 %2275 to i64
  store i64 %2276, i64* %RAX.i2060, align 8
  %2277 = icmp eq i32 %2274, -1
  %2278 = icmp eq i32 %2275, 0
  %2279 = or i1 %2277, %2278
  %2280 = zext i1 %2279 to i8
  store i8 %2280, i8* %26, align 1
  %2281 = and i32 %2275, 255
  %2282 = tail call i32 @llvm.ctpop.i32(i32 %2281)
  %2283 = trunc i32 %2282 to i8
  %2284 = and i8 %2283, 1
  %2285 = xor i8 %2284, 1
  store i8 %2285, i8* %33, align 1
  %2286 = xor i32 %2275, %2274
  %2287 = lshr i32 %2286, 4
  %2288 = trunc i32 %2287 to i8
  %2289 = and i8 %2288, 1
  store i8 %2289, i8* %39, align 1
  %2290 = zext i1 %2278 to i8
  store i8 %2290, i8* %42, align 1
  %2291 = lshr i32 %2275, 31
  %2292 = trunc i32 %2291 to i8
  store i8 %2292, i8* %45, align 1
  %2293 = lshr i32 %2274, 31
  %2294 = xor i32 %2291, %2293
  %2295 = add nuw nsw i32 %2294, %2291
  %2296 = icmp eq i32 %2295, 2
  %2297 = zext i1 %2296 to i8
  store i8 %2297, i8* %51, align 1
  %2298 = add i64 %1973, 14
  store i64 %2298, i64* %3, align 8
  store i32 %2275, i32* %2273, align 4
  %2299 = load i64, i64* %3, align 8
  %2300 = add i64 %2299, -166
  store i64 %2300, i64* %3, align 8
  br label %block_.L_43f2ea

block_.L_43f395:                                  ; preds = %block_.L_43f2ea
  %2301 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*), align 8
  store i64 %2301, i64* %RAX.i2060, align 8
  %2302 = add i64 %2301, 72392
  %2303 = add i64 %1940, 15
  store i64 %2303, i64* %3, align 8
  %2304 = inttoptr i64 %2302 to i32*
  %2305 = load i32, i32* %2304, align 4
  %2306 = add i32 %2305, -1
  %2307 = icmp eq i32 %2305, 0
  %2308 = zext i1 %2307 to i8
  store i8 %2308, i8* %26, align 1
  %2309 = and i32 %2306, 255
  %2310 = tail call i32 @llvm.ctpop.i32(i32 %2309)
  %2311 = trunc i32 %2310 to i8
  %2312 = and i8 %2311, 1
  %2313 = xor i8 %2312, 1
  store i8 %2313, i8* %33, align 1
  %2314 = xor i32 %2306, %2305
  %2315 = lshr i32 %2314, 4
  %2316 = trunc i32 %2315 to i8
  %2317 = and i8 %2316, 1
  store i8 %2317, i8* %39, align 1
  %2318 = icmp eq i32 %2306, 0
  %2319 = zext i1 %2318 to i8
  store i8 %2319, i8* %42, align 1
  %2320 = lshr i32 %2306, 31
  %2321 = trunc i32 %2320 to i8
  store i8 %2321, i8* %45, align 1
  %2322 = lshr i32 %2305, 31
  %2323 = xor i32 %2320, %2322
  %2324 = add nuw nsw i32 %2323, %2322
  %2325 = icmp eq i32 %2324, 2
  %2326 = zext i1 %2325 to i8
  store i8 %2326, i8* %51, align 1
  %.v185 = select i1 %2318, i64 141, i64 21
  %2327 = add i64 %1940, %.v185
  store i64 %2327, i64* %3, align 8
  br i1 %2318, label %block_.L_43f422, label %block_43f3aa

block_43f3aa:                                     ; preds = %block_.L_43f395
  %2328 = add i64 %1912, -116
  %2329 = add i64 %2327, 4
  store i64 %2329, i64* %3, align 8
  %2330 = inttoptr i64 %2328 to i32*
  %2331 = load i32, i32* %2330, align 4
  store i8 0, i8* %26, align 1
  %2332 = and i32 %2331, 255
  %2333 = tail call i32 @llvm.ctpop.i32(i32 %2332)
  %2334 = trunc i32 %2333 to i8
  %2335 = and i8 %2334, 1
  %2336 = xor i8 %2335, 1
  store i8 %2336, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %2337 = icmp eq i32 %2331, 0
  %2338 = zext i1 %2337 to i8
  store i8 %2338, i8* %42, align 1
  %2339 = lshr i32 %2331, 31
  %2340 = trunc i32 %2339 to i8
  store i8 %2340, i8* %45, align 1
  store i8 0, i8* %51, align 1
  %.v184 = select i1 %2337, i64 10, i64 120
  %2341 = add i64 %2327, %.v184
  store i64 %2341, i64* %3, align 8
  br i1 %2337, label %block_43f3b4, label %block_.L_43f422

block_43f3b4:                                     ; preds = %block_43f3aa
  store i64 %2301, i64* %RAX.i2060, align 8
  %2342 = add i64 %2301, 24
  %2343 = add i64 %2341, 12
  store i64 %2343, i64* %3, align 8
  %2344 = inttoptr i64 %2342 to i32*
  %2345 = load i32, i32* %2344, align 4
  %2346 = add i32 %2345, -3
  %2347 = icmp ult i32 %2345, 3
  %2348 = zext i1 %2347 to i8
  store i8 %2348, i8* %26, align 1
  %2349 = and i32 %2346, 255
  %2350 = tail call i32 @llvm.ctpop.i32(i32 %2349)
  %2351 = trunc i32 %2350 to i8
  %2352 = and i8 %2351, 1
  %2353 = xor i8 %2352, 1
  store i8 %2353, i8* %33, align 1
  %2354 = xor i32 %2346, %2345
  %2355 = lshr i32 %2354, 4
  %2356 = trunc i32 %2355 to i8
  %2357 = and i8 %2356, 1
  store i8 %2357, i8* %39, align 1
  %2358 = icmp eq i32 %2346, 0
  %2359 = zext i1 %2358 to i8
  store i8 %2359, i8* %42, align 1
  %2360 = lshr i32 %2346, 31
  %2361 = trunc i32 %2360 to i8
  store i8 %2361, i8* %45, align 1
  %2362 = lshr i32 %2345, 31
  %2363 = xor i32 %2360, %2362
  %2364 = add nuw nsw i32 %2363, %2362
  %2365 = icmp eq i32 %2364, 2
  %2366 = zext i1 %2365 to i8
  store i8 %2366, i8* %51, align 1
  %.v183 = select i1 %2358, i64 43, i64 18
  %2367 = add i64 %2341, %.v183
  %2368 = add i64 %1912, -88
  %2369 = add i64 %2367, 4
  store i64 %2369, i64* %3, align 8
  store i64 %2368, i64* %RDX.i2040.pre-phi, align 8
  br i1 %2358, label %block_.L_43f3df, label %block_43f3c6

block_43f3c6:                                     ; preds = %block_43f3b4
  store i64 0, i64* %RCX.i2097, align 8
  store i8 0, i8* %26, align 1
  store i8 1, i8* %33, align 1
  store i8 1, i8* %42, align 1
  store i8 0, i8* %45, align 1
  store i8 0, i8* %51, align 1
  store i8 0, i8* %39, align 1
  %2370 = add i64 %1912, -60
  %2371 = add i64 %2367, 9
  store i64 %2371, i64* %3, align 8
  %2372 = inttoptr i64 %2370 to i32*
  %2373 = load i32, i32* %2372, align 4
  %2374 = zext i32 %2373 to i64
  store i64 %2374, i64* %RDI.i2086, align 8
  %2375 = add i64 %1912, -56
  %2376 = add i64 %2367, 12
  store i64 %2376, i64* %3, align 8
  %2377 = inttoptr i64 %2375 to i32*
  %2378 = load i32, i32* %2377, align 4
  %2379 = zext i32 %2378 to i64
  store i64 %2379, i64* %RSI.i2083, align 8
  %2380 = add i64 %2367, -233846
  %2381 = add i64 %2367, 17
  %2382 = load i64, i64* %6, align 8
  %2383 = add i64 %2382, -8
  %2384 = inttoptr i64 %2383 to i64*
  store i64 %2381, i64* %2384, align 8
  store i64 %2383, i64* %6, align 8
  store i64 %2380, i64* %3, align 8
  %call2_43f3d2 = tail call %struct.Memory* @sub_406250.dct_luma(%struct.State* nonnull %0, i64 %2380, %struct.Memory* %call2_43f20c)
  %2385 = load i64, i64* %RBP.i, align 8
  %2386 = add i64 %2385, -80
  %2387 = load i32, i32* %135, align 4
  %2388 = load i64, i64* %3, align 8
  %2389 = add i64 %2388, 3
  store i64 %2389, i64* %3, align 8
  %2390 = inttoptr i64 %2386 to i32*
  store i32 %2387, i32* %2390, align 4
  %2391 = load i64, i64* %3, align 8
  %2392 = add i64 %2391, 23
  store i64 %2392, i64* %3, align 8
  br label %block_.L_43f3f1

block_.L_43f3df:                                  ; preds = %block_43f3b4
  %2393 = add i64 %1912, -60
  %2394 = add i64 %2367, 7
  store i64 %2394, i64* %3, align 8
  %2395 = inttoptr i64 %2393 to i32*
  %2396 = load i32, i32* %2395, align 4
  %2397 = zext i32 %2396 to i64
  store i64 %2397, i64* %RDI.i2086, align 8
  %2398 = add i64 %1912, -56
  %2399 = add i64 %2367, 10
  store i64 %2399, i64* %3, align 8
  %2400 = inttoptr i64 %2398 to i32*
  %2401 = load i32, i32* %2400, align 4
  %2402 = zext i32 %2401 to i64
  store i64 %2402, i64* %RSI.i2083, align 8
  %2403 = add i64 %2367, -210431
  %2404 = add i64 %2367, 15
  %2405 = load i64, i64* %6, align 8
  %2406 = add i64 %2405, -8
  %2407 = inttoptr i64 %2406 to i64*
  store i64 %2404, i64* %2407, align 8
  store i64 %2406, i64* %6, align 8
  store i64 %2403, i64* %3, align 8
  %call2_43f3e9 = tail call %struct.Memory* @sub_40bde0.dct_luma_sp(%struct.State* nonnull %0, i64 %2403, %struct.Memory* %call2_43f20c)
  %2408 = load i64, i64* %RBP.i, align 8
  %2409 = add i64 %2408, -80
  %2410 = load i32, i32* %135, align 4
  %2411 = load i64, i64* %3, align 8
  %2412 = add i64 %2411, 3
  store i64 %2412, i64* %3, align 8
  %2413 = inttoptr i64 %2409 to i32*
  store i32 %2410, i32* %2413, align 4
  %.pre165 = load i64, i64* %3, align 8
  br label %block_.L_43f3f1

block_.L_43f3f1:                                  ; preds = %block_.L_43f3df, %block_43f3c6
  %2414 = phi i64 [ %.pre165, %block_.L_43f3df ], [ %2392, %block_43f3c6 ]
  %MEMORY.14 = phi %struct.Memory* [ %call2_43f3e9, %block_.L_43f3df ], [ %call2_43f3d2, %block_43f3c6 ]
  %2415 = load i64, i64* %RBP.i, align 8
  %2416 = add i64 %2415, -80
  %2417 = add i64 %2414, 4
  store i64 %2417, i64* %3, align 8
  %2418 = inttoptr i64 %2416 to i32*
  %2419 = load i32, i32* %2418, align 4
  store i8 0, i8* %26, align 1
  %2420 = and i32 %2419, 255
  %2421 = tail call i32 @llvm.ctpop.i32(i32 %2420)
  %2422 = trunc i32 %2421 to i8
  %2423 = and i8 %2422, 1
  %2424 = xor i8 %2423, 1
  store i8 %2424, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %2425 = icmp eq i32 %2419, 0
  %2426 = zext i1 %2425 to i8
  store i8 %2426, i8* %42, align 1
  %2427 = lshr i32 %2419, 31
  %2428 = trunc i32 %2427 to i8
  store i8 %2428, i8* %45, align 1
  store i8 0, i8* %51, align 1
  %.v226 = select i1 %2425, i64 44, i64 10
  %2429 = add i64 %2414, %.v226
  store i64 %2429, i64* %3, align 8
  br i1 %2425, label %block_.L_43f41d, label %block_43f3fb

block_43f3fb:                                     ; preds = %block_.L_43f3f1
  store i64 1, i64* %RAX.i2060, align 8
  %2430 = add i64 %2415, -84
  %2431 = add i64 %2429, 8
  store i64 %2431, i64* %3, align 8
  %2432 = inttoptr i64 %2430 to i32*
  %2433 = load i32, i32* %2432, align 4
  %2434 = zext i32 %2433 to i64
  store i64 %2434, i64* %RCX.i2097, align 8
  %2435 = add i64 %2429, 10
  store i64 %2435, i64* %3, align 8
  %2436 = trunc i32 %2433 to i5
  switch i5 %2436, label %2437 [
    i5 0, label %routine_shll__cl___eax.exit1330
    i5 1, label %2446
  ]

; <label>:2437:                                   ; preds = %block_43f3fb
  %2438 = and i32 %2433, 31
  %2439 = zext i32 %2438 to i64
  %2440 = add nuw nsw i64 %2439, 4294967295
  %2441 = and i64 %2440, 4294967295
  %2442 = shl i64 1, %2441
  %2443 = trunc i64 %2442 to i32
  %2444 = icmp slt i32 %2443, 0
  %2445 = shl i32 %2443, 1
  br label %2446

; <label>:2446:                                   ; preds = %block_43f3fb, %2437
  %2447 = phi i1 [ %2444, %2437 ], [ false, %block_43f3fb ]
  %2448 = phi i32 [ %2445, %2437 ], [ 2, %block_43f3fb ]
  %2449 = zext i32 %2448 to i64
  store i64 %2449, i64* %RAX.i2060, align 8
  %2450 = zext i1 %2447 to i8
  store i8 %2450, i8* %26, align 1
  %2451 = and i32 %2448, 254
  %2452 = tail call i32 @llvm.ctpop.i32(i32 %2451)
  %2453 = trunc i32 %2452 to i8
  %2454 = and i8 %2453, 1
  %2455 = xor i8 %2454, 1
  store i8 %2455, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %2456 = icmp eq i32 %2448, 0
  %2457 = zext i1 %2456 to i8
  store i8 %2457, i8* %42, align 1
  %2458 = lshr i32 %2448, 31
  %2459 = trunc i32 %2458 to i8
  store i8 %2459, i8* %45, align 1
  store i8 0, i8* %51, align 1
  br label %routine_shll__cl___eax.exit1330

routine_shll__cl___eax.exit1330:                  ; preds = %2446, %block_43f3fb
  %2460 = phi i32 [ %2448, %2446 ], [ 1, %block_43f3fb ]
  %2461 = sext i32 %2460 to i64
  store i64 %2461, i64* %RDX.i2040.pre-phi, align 8
  %2462 = add i64 %2415, -32
  %2463 = add i64 %2429, 17
  store i64 %2463, i64* %3, align 8
  %2464 = inttoptr i64 %2462 to i64*
  %2465 = load i64, i64* %2464, align 8
  store i64 %2465, i64* %RSI.i2083, align 8
  %2466 = add i64 %2429, 20
  store i64 %2466, i64* %3, align 8
  %2467 = inttoptr i64 %2465 to i64*
  %2468 = load i64, i64* %2467, align 8
  %2469 = or i64 %2468, %2461
  store i64 %2469, i64* %RDX.i2040.pre-phi, align 8
  store i8 0, i8* %26, align 1
  %2470 = trunc i64 %2469 to i32
  %2471 = and i32 %2470, 255
  %2472 = tail call i32 @llvm.ctpop.i32(i32 %2471)
  %2473 = trunc i32 %2472 to i8
  %2474 = and i8 %2473, 1
  %2475 = xor i8 %2474, 1
  store i8 %2475, i8* %33, align 1
  %2476 = icmp eq i64 %2469, 0
  %2477 = zext i1 %2476 to i8
  store i8 %2477, i8* %42, align 1
  %2478 = lshr i64 %2469, 63
  %2479 = trunc i64 %2478 to i8
  store i8 %2479, i8* %45, align 1
  store i8 0, i8* %51, align 1
  store i8 0, i8* %39, align 1
  %2480 = add i64 %2429, 23
  store i64 %2480, i64* %3, align 8
  store i64 %2469, i64* %2467, align 8
  %2481 = load i64, i64* %RBP.i, align 8
  %2482 = add i64 %2481, -100
  %2483 = load i64, i64* %3, align 8
  %2484 = add i64 %2483, 3
  store i64 %2484, i64* %3, align 8
  %2485 = inttoptr i64 %2482 to i32*
  %2486 = load i32, i32* %2485, align 4
  %2487 = zext i32 %2486 to i64
  store i64 %2487, i64* %RAX.i2060, align 8
  %2488 = add i64 %2481, -24
  %2489 = add i64 %2483, 7
  store i64 %2489, i64* %3, align 8
  %2490 = inttoptr i64 %2488 to i64*
  %2491 = load i64, i64* %2490, align 8
  store i64 %2491, i64* %RDX.i2040.pre-phi, align 8
  %2492 = add i64 %2483, 9
  store i64 %2492, i64* %3, align 8
  %2493 = inttoptr i64 %2491 to i32*
  %2494 = load i32, i32* %2493, align 4
  %2495 = or i32 %2494, %2486
  %2496 = zext i32 %2495 to i64
  store i64 %2496, i64* %RAX.i2060, align 8
  store i8 0, i8* %26, align 1
  %2497 = and i32 %2495, 255
  %2498 = tail call i32 @llvm.ctpop.i32(i32 %2497)
  %2499 = trunc i32 %2498 to i8
  %2500 = and i8 %2499, 1
  %2501 = xor i8 %2500, 1
  store i8 %2501, i8* %33, align 1
  %2502 = icmp eq i32 %2495, 0
  %2503 = zext i1 %2502 to i8
  store i8 %2503, i8* %42, align 1
  %2504 = lshr i32 %2495, 31
  %2505 = trunc i32 %2504 to i8
  store i8 %2505, i8* %45, align 1
  store i8 0, i8* %51, align 1
  store i8 0, i8* %39, align 1
  %2506 = add i64 %2483, 11
  store i64 %2506, i64* %3, align 8
  store i32 %2495, i32* %2493, align 4
  %.pre166 = load i64, i64* %3, align 8
  br label %block_.L_43f41d

block_.L_43f41d:                                  ; preds = %routine_shll__cl___eax.exit1330, %block_.L_43f3f1
  %2507 = phi i64 [ %.pre166, %routine_shll__cl___eax.exit1330 ], [ %2429, %block_.L_43f3f1 ]
  %2508 = add i64 %2507, 5
  store i64 %2508, i64* %3, align 8
  br label %block_.L_43f422

block_.L_43f422:                                  ; preds = %block_43f3aa, %block_.L_43f41d, %block_.L_43f395
  %2509 = phi i64 [ %2327, %block_.L_43f395 ], [ %2341, %block_43f3aa ], [ %2508, %block_.L_43f41d ]
  %MEMORY.16 = phi %struct.Memory* [ %call2_43f20c, %block_.L_43f395 ], [ %call2_43f20c, %block_43f3aa ], [ %MEMORY.14, %block_.L_43f41d ]
  %2510 = add i64 %2509, 198
  br label %block_.L_43f4e8

block_.L_43f42e:                                  ; preds = %block_.L_43f42e.preheader, %block_.L_43f4d0
  %2511 = phi i64 [ %2942, %block_.L_43f4d0 ], [ %.pre164, %block_.L_43f42e.preheader ]
  %2512 = load i64, i64* %RBP.i, align 8
  %2513 = add i64 %2512, -76
  %2514 = add i64 %2511, 4
  store i64 %2514, i64* %3, align 8
  %2515 = inttoptr i64 %2513 to i32*
  %2516 = load i32, i32* %2515, align 4
  %2517 = add i32 %2516, -4
  %2518 = icmp ult i32 %2516, 4
  %2519 = zext i1 %2518 to i8
  store i8 %2519, i8* %26, align 1
  %2520 = and i32 %2517, 255
  %2521 = tail call i32 @llvm.ctpop.i32(i32 %2520)
  %2522 = trunc i32 %2521 to i8
  %2523 = and i8 %2522, 1
  %2524 = xor i8 %2523, 1
  store i8 %2524, i8* %33, align 1
  %2525 = xor i32 %2517, %2516
  %2526 = lshr i32 %2525, 4
  %2527 = trunc i32 %2526 to i8
  %2528 = and i8 %2527, 1
  store i8 %2528, i8* %39, align 1
  %2529 = icmp eq i32 %2517, 0
  %2530 = zext i1 %2529 to i8
  store i8 %2530, i8* %42, align 1
  %2531 = lshr i32 %2517, 31
  %2532 = trunc i32 %2531 to i8
  store i8 %2532, i8* %45, align 1
  %2533 = lshr i32 %2516, 31
  %2534 = xor i32 %2531, %2533
  %2535 = add nuw nsw i32 %2534, %2533
  %2536 = icmp eq i32 %2535, 2
  %2537 = zext i1 %2536 to i8
  store i8 %2537, i8* %51, align 1
  %2538 = icmp ne i8 %2532, 0
  %2539 = xor i1 %2538, %2536
  %.v225 = select i1 %2539, i64 10, i64 181
  %2540 = add i64 %2511, %.v225
  store i64 %2540, i64* %3, align 8
  br i1 %2539, label %block_43f438, label %block_.L_43f4e3

block_43f438:                                     ; preds = %block_.L_43f42e
  %2541 = add i64 %2512, -72
  %2542 = add i64 %2540, 7
  store i64 %2542, i64* %3, align 8
  %2543 = inttoptr i64 %2541 to i32*
  store i32 0, i32* %2543, align 4
  %.pre169 = load i64, i64* %3, align 8
  br label %block_.L_43f43f

block_.L_43f43f:                                  ; preds = %block_43f449, %block_43f438
  %2544 = phi i64 [ %2912, %block_43f449 ], [ %.pre169, %block_43f438 ]
  %2545 = load i64, i64* %RBP.i, align 8
  %2546 = add i64 %2545, -72
  %2547 = add i64 %2544, 4
  store i64 %2547, i64* %3, align 8
  %2548 = inttoptr i64 %2546 to i32*
  %2549 = load i32, i32* %2548, align 4
  %2550 = add i32 %2549, -4
  %2551 = icmp ult i32 %2549, 4
  %2552 = zext i1 %2551 to i8
  store i8 %2552, i8* %26, align 1
  %2553 = and i32 %2550, 255
  %2554 = tail call i32 @llvm.ctpop.i32(i32 %2553)
  %2555 = trunc i32 %2554 to i8
  %2556 = and i8 %2555, 1
  %2557 = xor i8 %2556, 1
  store i8 %2557, i8* %33, align 1
  %2558 = xor i32 %2550, %2549
  %2559 = lshr i32 %2558, 4
  %2560 = trunc i32 %2559 to i8
  %2561 = and i8 %2560, 1
  store i8 %2561, i8* %39, align 1
  %2562 = icmp eq i32 %2550, 0
  %2563 = zext i1 %2562 to i8
  store i8 %2563, i8* %42, align 1
  %2564 = lshr i32 %2550, 31
  %2565 = trunc i32 %2564 to i8
  store i8 %2565, i8* %45, align 1
  %2566 = lshr i32 %2549, 31
  %2567 = xor i32 %2564, %2566
  %2568 = add nuw nsw i32 %2567, %2566
  %2569 = icmp eq i32 %2568, 2
  %2570 = zext i1 %2569 to i8
  store i8 %2570, i8* %51, align 1
  %2571 = icmp ne i8 %2565, 0
  %2572 = xor i1 %2571, %2569
  %.v188 = select i1 %2572, i64 10, i64 145
  %2573 = add i64 %2544, %.v188
  store i64 %2573, i64* %3, align 8
  br i1 %2572, label %block_43f449, label %block_.L_43f4d0

block_43f449:                                     ; preds = %block_.L_43f43f
  %2574 = load i64, i64* bitcast (%G_0x726418_type* @G_0x726418 to i64*), align 8
  store i64 %2574, i64* %RAX.i2060, align 8
  %2575 = add i64 %2545, -64
  %2576 = add i64 %2573, 11
  store i64 %2576, i64* %3, align 8
  %2577 = inttoptr i64 %2575 to i32*
  %2578 = load i32, i32* %2577, align 4
  %2579 = zext i32 %2578 to i64
  store i64 %2579, i64* %RCX.i2097, align 8
  %2580 = add i64 %2545, -76
  %2581 = add i64 %2573, 14
  store i64 %2581, i64* %3, align 8
  %2582 = inttoptr i64 %2580 to i32*
  %2583 = load i32, i32* %2582, align 4
  %2584 = add i32 %2583, %2578
  %2585 = zext i32 %2584 to i64
  store i64 %2585, i64* %RCX.i2097, align 8
  %2586 = icmp ult i32 %2584, %2578
  %2587 = icmp ult i32 %2584, %2583
  %2588 = or i1 %2586, %2587
  %2589 = zext i1 %2588 to i8
  store i8 %2589, i8* %26, align 1
  %2590 = and i32 %2584, 255
  %2591 = tail call i32 @llvm.ctpop.i32(i32 %2590)
  %2592 = trunc i32 %2591 to i8
  %2593 = and i8 %2592, 1
  %2594 = xor i8 %2593, 1
  store i8 %2594, i8* %33, align 1
  %2595 = xor i32 %2583, %2578
  %2596 = xor i32 %2595, %2584
  %2597 = lshr i32 %2596, 4
  %2598 = trunc i32 %2597 to i8
  %2599 = and i8 %2598, 1
  store i8 %2599, i8* %39, align 1
  %2600 = icmp eq i32 %2584, 0
  %2601 = zext i1 %2600 to i8
  store i8 %2601, i8* %42, align 1
  %2602 = lshr i32 %2584, 31
  %2603 = trunc i32 %2602 to i8
  store i8 %2603, i8* %45, align 1
  %2604 = lshr i32 %2578, 31
  %2605 = lshr i32 %2583, 31
  %2606 = xor i32 %2602, %2604
  %2607 = xor i32 %2602, %2605
  %2608 = add nuw nsw i32 %2606, %2607
  %2609 = icmp eq i32 %2608, 2
  %2610 = zext i1 %2609 to i8
  store i8 %2610, i8* %51, align 1
  %2611 = sext i32 %2584 to i64
  store i64 %2611, i64* %RDX.i2040.pre-phi, align 8
  %2612 = shl nsw i64 %2611, 3
  %2613 = add i64 %2574, %2612
  %2614 = add i64 %2573, 21
  store i64 %2614, i64* %3, align 8
  %2615 = inttoptr i64 %2613 to i64*
  %2616 = load i64, i64* %2615, align 8
  store i64 %2616, i64* %RAX.i2060, align 8
  %2617 = add i64 %2545, -68
  %2618 = add i64 %2573, 24
  store i64 %2618, i64* %3, align 8
  %2619 = inttoptr i64 %2617 to i32*
  %2620 = load i32, i32* %2619, align 4
  %2621 = zext i32 %2620 to i64
  store i64 %2621, i64* %RCX.i2097, align 8
  %2622 = add i64 %2573, 27
  store i64 %2622, i64* %3, align 8
  %2623 = load i32, i32* %2548, align 4
  %2624 = add i32 %2623, %2620
  %2625 = zext i32 %2624 to i64
  store i64 %2625, i64* %RCX.i2097, align 8
  %2626 = icmp ult i32 %2624, %2620
  %2627 = icmp ult i32 %2624, %2623
  %2628 = or i1 %2626, %2627
  %2629 = zext i1 %2628 to i8
  store i8 %2629, i8* %26, align 1
  %2630 = and i32 %2624, 255
  %2631 = tail call i32 @llvm.ctpop.i32(i32 %2630)
  %2632 = trunc i32 %2631 to i8
  %2633 = and i8 %2632, 1
  %2634 = xor i8 %2633, 1
  store i8 %2634, i8* %33, align 1
  %2635 = xor i32 %2623, %2620
  %2636 = xor i32 %2635, %2624
  %2637 = lshr i32 %2636, 4
  %2638 = trunc i32 %2637 to i8
  %2639 = and i8 %2638, 1
  store i8 %2639, i8* %39, align 1
  %2640 = icmp eq i32 %2624, 0
  %2641 = zext i1 %2640 to i8
  store i8 %2641, i8* %42, align 1
  %2642 = lshr i32 %2624, 31
  %2643 = trunc i32 %2642 to i8
  store i8 %2643, i8* %45, align 1
  %2644 = lshr i32 %2620, 31
  %2645 = lshr i32 %2623, 31
  %2646 = xor i32 %2642, %2644
  %2647 = xor i32 %2642, %2645
  %2648 = add nuw nsw i32 %2646, %2647
  %2649 = icmp eq i32 %2648, 2
  %2650 = zext i1 %2649 to i8
  store i8 %2650, i8* %51, align 1
  %2651 = sext i32 %2624 to i64
  store i64 %2651, i64* %RDX.i2040.pre-phi, align 8
  %2652 = shl nsw i64 %2651, 1
  %2653 = add i64 %2616, %2652
  %2654 = add i64 %2573, 34
  store i64 %2654, i64* %3, align 8
  %2655 = inttoptr i64 %2653 to i16*
  %2656 = load i16, i16* %2655, align 2
  %2657 = zext i16 %2656 to i64
  store i64 %2657, i64* %RCX.i2097, align 8
  %2658 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*), align 8
  %2659 = add i64 %2658, 12600
  store i64 %2659, i64* %RAX.i2060, align 8
  %2660 = icmp ugt i64 %2658, -12601
  %2661 = zext i1 %2660 to i8
  store i8 %2661, i8* %26, align 1
  %2662 = trunc i64 %2659 to i32
  %2663 = and i32 %2662, 255
  %2664 = tail call i32 @llvm.ctpop.i32(i32 %2663)
  %2665 = trunc i32 %2664 to i8
  %2666 = and i8 %2665, 1
  %2667 = xor i8 %2666, 1
  store i8 %2667, i8* %33, align 1
  %2668 = xor i64 %2658, 16
  %2669 = xor i64 %2668, %2659
  %2670 = lshr i64 %2669, 4
  %2671 = trunc i64 %2670 to i8
  %2672 = and i8 %2671, 1
  store i8 %2672, i8* %39, align 1
  %2673 = icmp eq i64 %2659, 0
  %2674 = zext i1 %2673 to i8
  store i8 %2674, i8* %42, align 1
  %2675 = lshr i64 %2659, 63
  %2676 = trunc i64 %2675 to i8
  store i8 %2676, i8* %45, align 1
  %2677 = lshr i64 %2658, 63
  %2678 = xor i64 %2675, %2677
  %2679 = add nuw nsw i64 %2678, %2675
  %2680 = icmp eq i64 %2679, 2
  %2681 = zext i1 %2680 to i8
  store i8 %2681, i8* %51, align 1
  %2682 = load i64, i64* %RBP.i, align 8
  %2683 = add i64 %2682, -72
  %2684 = add i64 %2573, 51
  store i64 %2684, i64* %3, align 8
  %2685 = inttoptr i64 %2683 to i32*
  %2686 = load i32, i32* %2685, align 4
  %2687 = zext i32 %2686 to i64
  store i64 %2687, i64* %RSI.i2083, align 8
  %2688 = add i64 %2682, -60
  %2689 = add i64 %2573, 54
  store i64 %2689, i64* %3, align 8
  %2690 = inttoptr i64 %2688 to i32*
  %2691 = load i32, i32* %2690, align 4
  %2692 = add i32 %2691, %2686
  %2693 = zext i32 %2692 to i64
  store i64 %2693, i64* %RSI.i2083, align 8
  %2694 = sext i32 %2692 to i64
  %2695 = shl nsw i64 %2694, 5
  store i64 %2695, i64* %RDX.i2040.pre-phi, align 8
  %2696 = load i64, i64* %RAX.i2060, align 8
  %2697 = add i64 %2695, %2696
  store i64 %2697, i64* %RAX.i2060, align 8
  %2698 = icmp ult i64 %2697, %2696
  %2699 = icmp ult i64 %2697, %2695
  %2700 = or i1 %2698, %2699
  %2701 = zext i1 %2700 to i8
  store i8 %2701, i8* %26, align 1
  %2702 = trunc i64 %2697 to i32
  %2703 = and i32 %2702, 255
  %2704 = tail call i32 @llvm.ctpop.i32(i32 %2703)
  %2705 = trunc i32 %2704 to i8
  %2706 = and i8 %2705, 1
  %2707 = xor i8 %2706, 1
  store i8 %2707, i8* %33, align 1
  %2708 = xor i64 %2696, %2697
  %2709 = lshr i64 %2708, 4
  %2710 = trunc i64 %2709 to i8
  %2711 = and i8 %2710, 1
  store i8 %2711, i8* %39, align 1
  %2712 = icmp eq i64 %2697, 0
  %2713 = zext i1 %2712 to i8
  store i8 %2713, i8* %42, align 1
  %2714 = lshr i64 %2697, 63
  %2715 = trunc i64 %2714 to i8
  store i8 %2715, i8* %45, align 1
  %2716 = lshr i64 %2696, 63
  %2717 = lshr i64 %2694, 58
  %2718 = and i64 %2717, 1
  %2719 = xor i64 %2714, %2716
  %2720 = xor i64 %2714, %2718
  %2721 = add nuw nsw i64 %2719, %2720
  %2722 = icmp eq i64 %2721, 2
  %2723 = zext i1 %2722 to i8
  store i8 %2723, i8* %51, align 1
  %2724 = load i64, i64* %RBP.i, align 8
  %2725 = add i64 %2724, -76
  %2726 = add i64 %2573, 67
  store i64 %2726, i64* %3, align 8
  %2727 = inttoptr i64 %2725 to i32*
  %2728 = load i32, i32* %2727, align 4
  %2729 = zext i32 %2728 to i64
  store i64 %2729, i64* %RSI.i2083, align 8
  %2730 = add i64 %2724, -56
  %2731 = add i64 %2573, 70
  store i64 %2731, i64* %3, align 8
  %2732 = inttoptr i64 %2730 to i32*
  %2733 = load i32, i32* %2732, align 4
  %2734 = add i32 %2733, %2728
  %2735 = zext i32 %2734 to i64
  store i64 %2735, i64* %RSI.i2083, align 8
  %2736 = icmp ult i32 %2734, %2728
  %2737 = icmp ult i32 %2734, %2733
  %2738 = or i1 %2736, %2737
  %2739 = zext i1 %2738 to i8
  store i8 %2739, i8* %26, align 1
  %2740 = and i32 %2734, 255
  %2741 = tail call i32 @llvm.ctpop.i32(i32 %2740)
  %2742 = trunc i32 %2741 to i8
  %2743 = and i8 %2742, 1
  %2744 = xor i8 %2743, 1
  store i8 %2744, i8* %33, align 1
  %2745 = xor i32 %2733, %2728
  %2746 = xor i32 %2745, %2734
  %2747 = lshr i32 %2746, 4
  %2748 = trunc i32 %2747 to i8
  %2749 = and i8 %2748, 1
  store i8 %2749, i8* %39, align 1
  %2750 = icmp eq i32 %2734, 0
  %2751 = zext i1 %2750 to i8
  store i8 %2751, i8* %42, align 1
  %2752 = lshr i32 %2734, 31
  %2753 = trunc i32 %2752 to i8
  store i8 %2753, i8* %45, align 1
  %2754 = lshr i32 %2728, 31
  %2755 = lshr i32 %2733, 31
  %2756 = xor i32 %2752, %2754
  %2757 = xor i32 %2752, %2755
  %2758 = add nuw nsw i32 %2756, %2757
  %2759 = icmp eq i32 %2758, 2
  %2760 = zext i1 %2759 to i8
  store i8 %2760, i8* %51, align 1
  %2761 = sext i32 %2734 to i64
  store i64 %2761, i64* %RDX.i2040.pre-phi, align 8
  %2762 = shl nsw i64 %2761, 1
  %2763 = add i64 %2697, %2762
  %2764 = add i64 %2573, 77
  store i64 %2764, i64* %3, align 8
  %2765 = inttoptr i64 %2763 to i16*
  %2766 = load i16, i16* %2765, align 2
  %2767 = zext i16 %2766 to i64
  store i64 %2767, i64* %RSI.i2083, align 8
  %2768 = load i64, i64* %RCX.i2097, align 8
  %2769 = zext i16 %2766 to i64
  %2770 = sub i64 %2768, %2769
  %2771 = and i64 %2770, 4294967295
  store i64 %2771, i64* %RCX.i2097, align 8
  %2772 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*), align 8
  %2773 = add i64 %2772, 13112
  store i64 %2773, i64* %RAX.i2060, align 8
  %2774 = icmp ugt i64 %2772, -13113
  %2775 = zext i1 %2774 to i8
  store i8 %2775, i8* %26, align 1
  %2776 = trunc i64 %2773 to i32
  %2777 = and i32 %2776, 255
  %2778 = tail call i32 @llvm.ctpop.i32(i32 %2777)
  %2779 = trunc i32 %2778 to i8
  %2780 = and i8 %2779, 1
  %2781 = xor i8 %2780, 1
  store i8 %2781, i8* %33, align 1
  %2782 = xor i64 %2772, 16
  %2783 = xor i64 %2782, %2773
  %2784 = lshr i64 %2783, 4
  %2785 = trunc i64 %2784 to i8
  %2786 = and i8 %2785, 1
  store i8 %2786, i8* %39, align 1
  %2787 = icmp eq i64 %2773, 0
  %2788 = zext i1 %2787 to i8
  store i8 %2788, i8* %42, align 1
  %2789 = lshr i64 %2773, 63
  %2790 = trunc i64 %2789 to i8
  store i8 %2790, i8* %45, align 1
  %2791 = lshr i64 %2772, 63
  %2792 = xor i64 %2789, %2791
  %2793 = add nuw nsw i64 %2792, %2789
  %2794 = icmp eq i64 %2793, 2
  %2795 = zext i1 %2794 to i8
  store i8 %2795, i8* %51, align 1
  %2796 = load i64, i64* %RBP.i, align 8
  %2797 = add i64 %2796, -72
  %2798 = add i64 %2573, 96
  store i64 %2798, i64* %3, align 8
  %2799 = inttoptr i64 %2797 to i32*
  %2800 = load i32, i32* %2799, align 4
  %2801 = zext i32 %2800 to i64
  store i64 %2801, i64* %RSI.i2083, align 8
  %2802 = add i64 %2796, -104
  %2803 = add i64 %2573, 99
  store i64 %2803, i64* %3, align 8
  %2804 = inttoptr i64 %2802 to i32*
  %2805 = load i32, i32* %2804, align 4
  %2806 = add i32 %2805, %2800
  %2807 = zext i32 %2806 to i64
  store i64 %2807, i64* %RSI.i2083, align 8
  %2808 = sext i32 %2806 to i64
  %2809 = shl nsw i64 %2808, 6
  store i64 %2809, i64* %RDX.i2040.pre-phi, align 8
  %2810 = load i64, i64* %RAX.i2060, align 8
  %2811 = add i64 %2809, %2810
  store i64 %2811, i64* %RAX.i2060, align 8
  %2812 = icmp ult i64 %2811, %2810
  %2813 = icmp ult i64 %2811, %2809
  %2814 = or i1 %2812, %2813
  %2815 = zext i1 %2814 to i8
  store i8 %2815, i8* %26, align 1
  %2816 = trunc i64 %2811 to i32
  %2817 = and i32 %2816, 255
  %2818 = tail call i32 @llvm.ctpop.i32(i32 %2817)
  %2819 = trunc i32 %2818 to i8
  %2820 = and i8 %2819, 1
  %2821 = xor i8 %2820, 1
  store i8 %2821, i8* %33, align 1
  %2822 = xor i64 %2810, %2811
  %2823 = lshr i64 %2822, 4
  %2824 = trunc i64 %2823 to i8
  %2825 = and i8 %2824, 1
  store i8 %2825, i8* %39, align 1
  %2826 = icmp eq i64 %2811, 0
  %2827 = zext i1 %2826 to i8
  store i8 %2827, i8* %42, align 1
  %2828 = lshr i64 %2811, 63
  %2829 = trunc i64 %2828 to i8
  store i8 %2829, i8* %45, align 1
  %2830 = lshr i64 %2810, 63
  %2831 = lshr i64 %2808, 57
  %2832 = and i64 %2831, 1
  %2833 = xor i64 %2828, %2830
  %2834 = xor i64 %2828, %2832
  %2835 = add nuw nsw i64 %2833, %2834
  %2836 = icmp eq i64 %2835, 2
  %2837 = zext i1 %2836 to i8
  store i8 %2837, i8* %51, align 1
  %2838 = load i64, i64* %RBP.i, align 8
  %2839 = add i64 %2838, -76
  %2840 = add i64 %2573, 112
  store i64 %2840, i64* %3, align 8
  %2841 = inttoptr i64 %2839 to i32*
  %2842 = load i32, i32* %2841, align 4
  %2843 = zext i32 %2842 to i64
  store i64 %2843, i64* %RSI.i2083, align 8
  %2844 = add i64 %2838, -108
  %2845 = add i64 %2573, 115
  store i64 %2845, i64* %3, align 8
  %2846 = inttoptr i64 %2844 to i32*
  %2847 = load i32, i32* %2846, align 4
  %2848 = add i32 %2847, %2842
  %2849 = zext i32 %2848 to i64
  store i64 %2849, i64* %RSI.i2083, align 8
  %2850 = icmp ult i32 %2848, %2842
  %2851 = icmp ult i32 %2848, %2847
  %2852 = or i1 %2850, %2851
  %2853 = zext i1 %2852 to i8
  store i8 %2853, i8* %26, align 1
  %2854 = and i32 %2848, 255
  %2855 = tail call i32 @llvm.ctpop.i32(i32 %2854)
  %2856 = trunc i32 %2855 to i8
  %2857 = and i8 %2856, 1
  %2858 = xor i8 %2857, 1
  store i8 %2858, i8* %33, align 1
  %2859 = xor i32 %2847, %2842
  %2860 = xor i32 %2859, %2848
  %2861 = lshr i32 %2860, 4
  %2862 = trunc i32 %2861 to i8
  %2863 = and i8 %2862, 1
  store i8 %2863, i8* %39, align 1
  %2864 = icmp eq i32 %2848, 0
  %2865 = zext i1 %2864 to i8
  store i8 %2865, i8* %42, align 1
  %2866 = lshr i32 %2848, 31
  %2867 = trunc i32 %2866 to i8
  store i8 %2867, i8* %45, align 1
  %2868 = lshr i32 %2842, 31
  %2869 = lshr i32 %2847, 31
  %2870 = xor i32 %2866, %2868
  %2871 = xor i32 %2866, %2869
  %2872 = add nuw nsw i32 %2870, %2871
  %2873 = icmp eq i32 %2872, 2
  %2874 = zext i1 %2873 to i8
  store i8 %2874, i8* %51, align 1
  %2875 = sext i32 %2848 to i64
  store i64 %2875, i64* %RDX.i2040.pre-phi, align 8
  %2876 = shl nsw i64 %2875, 2
  %2877 = add i64 %2811, %2876
  %2878 = load i32, i32* %ECX.i2096, align 4
  %2879 = add i64 %2573, 121
  store i64 %2879, i64* %3, align 8
  %2880 = inttoptr i64 %2877 to i32*
  store i32 %2878, i32* %2880, align 4
  %2881 = load i64, i64* %RBP.i, align 8
  %2882 = add i64 %2881, -72
  %2883 = load i64, i64* %3, align 8
  %2884 = add i64 %2883, 3
  store i64 %2884, i64* %3, align 8
  %2885 = inttoptr i64 %2882 to i32*
  %2886 = load i32, i32* %2885, align 4
  %2887 = add i32 %2886, 1
  %2888 = zext i32 %2887 to i64
  store i64 %2888, i64* %RAX.i2060, align 8
  %2889 = icmp eq i32 %2886, -1
  %2890 = icmp eq i32 %2887, 0
  %2891 = or i1 %2889, %2890
  %2892 = zext i1 %2891 to i8
  store i8 %2892, i8* %26, align 1
  %2893 = and i32 %2887, 255
  %2894 = tail call i32 @llvm.ctpop.i32(i32 %2893)
  %2895 = trunc i32 %2894 to i8
  %2896 = and i8 %2895, 1
  %2897 = xor i8 %2896, 1
  store i8 %2897, i8* %33, align 1
  %2898 = xor i32 %2887, %2886
  %2899 = lshr i32 %2898, 4
  %2900 = trunc i32 %2899 to i8
  %2901 = and i8 %2900, 1
  store i8 %2901, i8* %39, align 1
  %2902 = zext i1 %2890 to i8
  store i8 %2902, i8* %42, align 1
  %2903 = lshr i32 %2887, 31
  %2904 = trunc i32 %2903 to i8
  store i8 %2904, i8* %45, align 1
  %2905 = lshr i32 %2886, 31
  %2906 = xor i32 %2903, %2905
  %2907 = add nuw nsw i32 %2906, %2903
  %2908 = icmp eq i32 %2907, 2
  %2909 = zext i1 %2908 to i8
  store i8 %2909, i8* %51, align 1
  %2910 = add i64 %2883, 9
  store i64 %2910, i64* %3, align 8
  store i32 %2887, i32* %2885, align 4
  %2911 = load i64, i64* %3, align 8
  %2912 = add i64 %2911, -140
  store i64 %2912, i64* %3, align 8
  br label %block_.L_43f43f

block_.L_43f4d0:                                  ; preds = %block_.L_43f43f
  %2913 = add i64 %2545, -76
  %2914 = add i64 %2573, 8
  store i64 %2914, i64* %3, align 8
  %2915 = inttoptr i64 %2913 to i32*
  %2916 = load i32, i32* %2915, align 4
  %2917 = add i32 %2916, 1
  %2918 = zext i32 %2917 to i64
  store i64 %2918, i64* %RAX.i2060, align 8
  %2919 = icmp eq i32 %2916, -1
  %2920 = icmp eq i32 %2917, 0
  %2921 = or i1 %2919, %2920
  %2922 = zext i1 %2921 to i8
  store i8 %2922, i8* %26, align 1
  %2923 = and i32 %2917, 255
  %2924 = tail call i32 @llvm.ctpop.i32(i32 %2923)
  %2925 = trunc i32 %2924 to i8
  %2926 = and i8 %2925, 1
  %2927 = xor i8 %2926, 1
  store i8 %2927, i8* %33, align 1
  %2928 = xor i32 %2917, %2916
  %2929 = lshr i32 %2928, 4
  %2930 = trunc i32 %2929 to i8
  %2931 = and i8 %2930, 1
  store i8 %2931, i8* %39, align 1
  %2932 = zext i1 %2920 to i8
  store i8 %2932, i8* %42, align 1
  %2933 = lshr i32 %2917, 31
  %2934 = trunc i32 %2933 to i8
  store i8 %2934, i8* %45, align 1
  %2935 = lshr i32 %2916, 31
  %2936 = xor i32 %2933, %2935
  %2937 = add nuw nsw i32 %2936, %2933
  %2938 = icmp eq i32 %2937, 2
  %2939 = zext i1 %2938 to i8
  store i8 %2939, i8* %51, align 1
  %2940 = add i64 %2573, 14
  store i64 %2940, i64* %3, align 8
  store i32 %2917, i32* %2915, align 4
  %2941 = load i64, i64* %3, align 8
  %2942 = add i64 %2941, -176
  store i64 %2942, i64* %3, align 8
  br label %block_.L_43f42e

block_.L_43f4e3:                                  ; preds = %block_.L_43f42e
  %2943 = add i64 %2540, 5
  store i64 %2943, i64* %3, align 8
  br label %block_.L_43f4e8

block_.L_43f4e8:                                  ; preds = %block_.L_43f4e3, %block_.L_43f422
  %storemerge = phi i64 [ %2510, %block_.L_43f422 ], [ %2943, %block_.L_43f4e3 ]
  %MEMORY.19 = phi %struct.Memory* [ %MEMORY.16, %block_.L_43f422 ], [ %call2_43f20c, %block_.L_43f4e3 ]
  %2944 = add i64 %storemerge, 1044
  br label %block_.L_43f8fc

block_.L_43f4ed:                                  ; preds = %block_.L_43f2c1
  %2945 = add i64 %1877, -76
  %2946 = add i64 %1893, 7
  store i64 %2946, i64* %3, align 8
  %2947 = inttoptr i64 %2945 to i32*
  store i32 0, i32* %2947, align 4
  %.pre170 = load i64, i64* %3, align 8
  br label %block_.L_43f4f4

block_.L_43f4f4:                                  ; preds = %block_.L_43f7c0, %block_.L_43f4ed
  %2948 = phi i64 [ %4508, %block_.L_43f7c0 ], [ %.pre170, %block_.L_43f4ed ]
  %2949 = load i64, i64* %RBP.i, align 8
  %2950 = add i64 %2949, -76
  %2951 = add i64 %2948, 4
  store i64 %2951, i64* %3, align 8
  %2952 = inttoptr i64 %2950 to i32*
  %2953 = load i32, i32* %2952, align 4
  %2954 = add i32 %2953, -4
  %2955 = icmp ult i32 %2953, 4
  %2956 = zext i1 %2955 to i8
  store i8 %2956, i8* %26, align 1
  %2957 = and i32 %2954, 255
  %2958 = tail call i32 @llvm.ctpop.i32(i32 %2957)
  %2959 = trunc i32 %2958 to i8
  %2960 = and i8 %2959, 1
  %2961 = xor i8 %2960, 1
  store i8 %2961, i8* %33, align 1
  %2962 = xor i32 %2954, %2953
  %2963 = lshr i32 %2962, 4
  %2964 = trunc i32 %2963 to i8
  %2965 = and i8 %2964, 1
  store i8 %2965, i8* %39, align 1
  %2966 = icmp eq i32 %2954, 0
  %2967 = zext i1 %2966 to i8
  store i8 %2967, i8* %42, align 1
  %2968 = lshr i32 %2954, 31
  %2969 = trunc i32 %2968 to i8
  store i8 %2969, i8* %45, align 1
  %2970 = lshr i32 %2953, 31
  %2971 = xor i32 %2968, %2970
  %2972 = add nuw nsw i32 %2971, %2970
  %2973 = icmp eq i32 %2972, 2
  %2974 = zext i1 %2973 to i8
  store i8 %2974, i8* %51, align 1
  %2975 = icmp ne i8 %2969, 0
  %2976 = xor i1 %2975, %2973
  %.v193 = select i1 %2976, i64 10, i64 735
  %2977 = add i64 %2948, %.v193
  store i64 %2977, i64* %3, align 8
  br i1 %2976, label %block_43f4fe, label %block_.L_43f7d3

block_43f4fe:                                     ; preds = %block_.L_43f4f4
  %2978 = add i64 %2949, -72
  %2979 = add i64 %2977, 7
  store i64 %2979, i64* %3, align 8
  %2980 = inttoptr i64 %2978 to i32*
  store i32 0, i32* %2980, align 4
  %.pre175 = load i64, i64* %3, align 8
  br label %block_.L_43f505

block_.L_43f505:                                  ; preds = %block_.L_43f7ad, %block_43f4fe
  %2981 = phi i64 [ %4478, %block_.L_43f7ad ], [ %.pre175, %block_43f4fe ]
  %2982 = load i64, i64* %RBP.i, align 8
  %2983 = add i64 %2982, -72
  %2984 = add i64 %2981, 4
  store i64 %2984, i64* %3, align 8
  %2985 = inttoptr i64 %2983 to i32*
  %2986 = load i32, i32* %2985, align 4
  %2987 = add i32 %2986, -4
  %2988 = icmp ult i32 %2986, 4
  %2989 = zext i1 %2988 to i8
  store i8 %2989, i8* %26, align 1
  %2990 = and i32 %2987, 255
  %2991 = tail call i32 @llvm.ctpop.i32(i32 %2990)
  %2992 = trunc i32 %2991 to i8
  %2993 = and i8 %2992, 1
  %2994 = xor i8 %2993, 1
  store i8 %2994, i8* %33, align 1
  %2995 = xor i32 %2987, %2986
  %2996 = lshr i32 %2995, 4
  %2997 = trunc i32 %2996 to i8
  %2998 = and i8 %2997, 1
  store i8 %2998, i8* %39, align 1
  %2999 = icmp eq i32 %2987, 0
  %3000 = zext i1 %2999 to i8
  store i8 %3000, i8* %42, align 1
  %3001 = lshr i32 %2987, 31
  %3002 = trunc i32 %3001 to i8
  store i8 %3002, i8* %45, align 1
  %3003 = lshr i32 %2986, 31
  %3004 = xor i32 %3001, %3003
  %3005 = add nuw nsw i32 %3004, %3003
  %3006 = icmp eq i32 %3005, 2
  %3007 = zext i1 %3006 to i8
  store i8 %3007, i8* %51, align 1
  %3008 = icmp ne i8 %3002, 0
  %3009 = xor i1 %3008, %3006
  %.v195 = select i1 %3009, i64 10, i64 699
  %3010 = add i64 %2981, %.v195
  store i64 %3010, i64* %3, align 8
  br i1 %3009, label %block_43f50f, label %block_.L_43f7c0

block_43f50f:                                     ; preds = %block_.L_43f505
  store i64 ptrtoint (%G__0x723720_type* @G__0x723720 to i64), i64* %RAX.i2060, align 8
  store i64 ptrtoint (%G__0x6d40f0_type* @G__0x6d40f0 to i64), i64* %RCX.i2097, align 8
  store i64 ptrtoint (%G__0x6f6fa0_type* @G__0x6f6fa0 to i64), i64* %RDX.i2040.pre-phi, align 8
  store i64 ptrtoint (%G__0x725610_type* @G__0x725610 to i64), i64* %RSI.i2083, align 8
  store i64 add (i64 ptrtoint (%G__0x725610_type* @G__0x725610 to i64), i64 2048), i64* %RDI.i2086, align 8
  store i64 add (i64 ptrtoint (%G__0x725610_type* @G__0x725610 to i64), i64 1024), i64* %485, align 8
  store i8 zext (i1 icmp ugt (i64 ptrtoint (%G__0x725610_type* @G__0x725610 to i64), i64 -1025) to i8), i8* %26, align 1
  store i8 %492, i8* %33, align 1
  store i8 and (i8 trunc (i64 lshr (i64 xor (i64 add (i64 ptrtoint (%G__0x725610_type* @G__0x725610 to i64), i64 1024), i64 ptrtoint (%G__0x725610_type* @G__0x725610 to i64)), i64 4) to i8), i8 1), i8* %39, align 1
  store i8 zext (i1 icmp eq (i64 add (i64 ptrtoint (%G__0x725610_type* @G__0x725610 to i64), i64 1024), i64 0) to i8), i8* %42, align 1
  store i8 trunc (i64 lshr (i64 add (i64 ptrtoint (%G__0x725610_type* @G__0x725610 to i64), i64 1024), i64 63) to i8), i8* %45, align 1
  store i8 zext (i1 icmp eq (i64 add (i64 xor (i64 lshr (i64 add (i64 ptrtoint (%G__0x725610_type* @G__0x725610 to i64), i64 1024), i64 63), i64 lshr (i64 ptrtoint (%G__0x725610_type* @G__0x725610 to i64), i64 63)), i64 lshr (i64 add (i64 ptrtoint (%G__0x725610_type* @G__0x725610 to i64), i64 1024), i64 63)), i64 2) to i8), i8* %51, align 1
  %3011 = load i64, i64* bitcast (%G_0x6f6f90_type* @G_0x6f6f90 to i64*), align 8
  store i64 %3011, i64* %486, align 8
  %3012 = add i64 %3010, 71
  store i64 %3012, i64* %3, align 8
  %3013 = inttoptr i64 %3011 to i64*
  %3014 = load i64, i64* %3013, align 8
  store i64 %3014, i64* %486, align 8
  %3015 = add i64 %2982, -64
  %3016 = add i64 %3010, 75
  store i64 %3016, i64* %3, align 8
  %3017 = inttoptr i64 %3015 to i32*
  %3018 = load i32, i32* %3017, align 4
  %3019 = zext i32 %3018 to i64
  store i64 %3019, i64* %487, align 8
  %3020 = add i64 %2982, -76
  %3021 = add i64 %3010, 79
  store i64 %3021, i64* %3, align 8
  %3022 = inttoptr i64 %3020 to i32*
  %3023 = load i32, i32* %3022, align 4
  %3024 = add i32 %3023, %3018
  %3025 = zext i32 %3024 to i64
  store i64 %3025, i64* %487, align 8
  %3026 = icmp ult i32 %3024, %3018
  %3027 = icmp ult i32 %3024, %3023
  %3028 = or i1 %3026, %3027
  %3029 = zext i1 %3028 to i8
  store i8 %3029, i8* %26, align 1
  %3030 = and i32 %3024, 255
  %3031 = tail call i32 @llvm.ctpop.i32(i32 %3030)
  %3032 = trunc i32 %3031 to i8
  %3033 = and i8 %3032, 1
  %3034 = xor i8 %3033, 1
  store i8 %3034, i8* %33, align 1
  %3035 = xor i32 %3023, %3018
  %3036 = xor i32 %3035, %3024
  %3037 = lshr i32 %3036, 4
  %3038 = trunc i32 %3037 to i8
  %3039 = and i8 %3038, 1
  store i8 %3039, i8* %39, align 1
  %3040 = icmp eq i32 %3024, 0
  %3041 = zext i1 %3040 to i8
  store i8 %3041, i8* %42, align 1
  %3042 = lshr i32 %3024, 31
  %3043 = trunc i32 %3042 to i8
  store i8 %3043, i8* %45, align 1
  %3044 = lshr i32 %3018, 31
  %3045 = lshr i32 %3023, 31
  %3046 = xor i32 %3042, %3044
  %3047 = xor i32 %3042, %3045
  %3048 = add nuw nsw i32 %3046, %3047
  %3049 = icmp eq i32 %3048, 2
  %3050 = zext i1 %3049 to i8
  store i8 %3050, i8* %51, align 1
  %3051 = sext i32 %3024 to i64
  store i64 %3051, i64* %R11.i1593, align 8
  %3052 = shl nsw i64 %3051, 3
  %3053 = add i64 %3014, %3052
  %3054 = add i64 %3010, 86
  store i64 %3054, i64* %3, align 8
  %3055 = inttoptr i64 %3053 to i64*
  %3056 = load i64, i64* %3055, align 8
  store i64 %3056, i64* %486, align 8
  %3057 = load i64, i64* %RBP.i, align 8
  %3058 = add i64 %3057, -68
  %3059 = add i64 %3010, 90
  store i64 %3059, i64* %3, align 8
  %3060 = inttoptr i64 %3058 to i32*
  %3061 = load i32, i32* %3060, align 4
  %3062 = zext i32 %3061 to i64
  store i64 %3062, i64* %487, align 8
  %3063 = add i64 %3057, -72
  %3064 = add i64 %3010, 94
  store i64 %3064, i64* %3, align 8
  %3065 = inttoptr i64 %3063 to i32*
  %3066 = load i32, i32* %3065, align 4
  %3067 = add i32 %3066, %3061
  %3068 = zext i32 %3067 to i64
  store i64 %3068, i64* %487, align 8
  %3069 = icmp ult i32 %3067, %3061
  %3070 = icmp ult i32 %3067, %3066
  %3071 = or i1 %3069, %3070
  %3072 = zext i1 %3071 to i8
  store i8 %3072, i8* %26, align 1
  %3073 = and i32 %3067, 255
  %3074 = tail call i32 @llvm.ctpop.i32(i32 %3073)
  %3075 = trunc i32 %3074 to i8
  %3076 = and i8 %3075, 1
  %3077 = xor i8 %3076, 1
  store i8 %3077, i8* %33, align 1
  %3078 = xor i32 %3066, %3061
  %3079 = xor i32 %3078, %3067
  %3080 = lshr i32 %3079, 4
  %3081 = trunc i32 %3080 to i8
  %3082 = and i8 %3081, 1
  store i8 %3082, i8* %39, align 1
  %3083 = icmp eq i32 %3067, 0
  %3084 = zext i1 %3083 to i8
  store i8 %3084, i8* %42, align 1
  %3085 = lshr i32 %3067, 31
  %3086 = trunc i32 %3085 to i8
  store i8 %3086, i8* %45, align 1
  %3087 = lshr i32 %3061, 31
  %3088 = lshr i32 %3066, 31
  %3089 = xor i32 %3085, %3087
  %3090 = xor i32 %3085, %3088
  %3091 = add nuw nsw i32 %3089, %3090
  %3092 = icmp eq i32 %3091, 2
  %3093 = zext i1 %3092 to i8
  store i8 %3093, i8* %51, align 1
  %3094 = sext i32 %3067 to i64
  store i64 %3094, i64* %R11.i1593, align 8
  %3095 = shl nsw i64 %3094, 1
  %3096 = add i64 %3056, %3095
  %3097 = add i64 %3010, 102
  store i64 %3097, i64* %3, align 8
  %3098 = inttoptr i64 %3096 to i16*
  %3099 = load i16, i16* %3098, align 2
  %3100 = zext i16 %3099 to i64
  store i64 %3100, i64* %487, align 8
  %3101 = add i64 %3010, 105
  store i64 %3101, i64* %3, align 8
  %3102 = load i32, i32* %3065, align 4
  %3103 = zext i32 %3102 to i64
  store i64 %3103, i64* %RBX.i2043, align 8
  %3104 = add i64 %3057, -60
  %3105 = add i64 %3010, 108
  store i64 %3105, i64* %3, align 8
  %3106 = inttoptr i64 %3104 to i32*
  %3107 = load i32, i32* %3106, align 4
  %3108 = add i32 %3107, %3102
  %3109 = zext i32 %3108 to i64
  store i64 %3109, i64* %RBX.i2043, align 8
  %3110 = sext i32 %3108 to i64
  %3111 = shl nsw i64 %3110, 6
  store i64 %3111, i64* %486, align 8
  %3112 = load i64, i64* %485, align 8
  %3113 = add i64 %3111, %3112
  store i64 %3113, i64* %485, align 8
  %3114 = icmp ult i64 %3113, %3112
  %3115 = icmp ult i64 %3113, %3111
  %3116 = or i1 %3114, %3115
  %3117 = zext i1 %3116 to i8
  store i8 %3117, i8* %26, align 1
  %3118 = trunc i64 %3113 to i32
  %3119 = and i32 %3118, 255
  %3120 = tail call i32 @llvm.ctpop.i32(i32 %3119)
  %3121 = trunc i32 %3120 to i8
  %3122 = and i8 %3121, 1
  %3123 = xor i8 %3122, 1
  store i8 %3123, i8* %33, align 1
  %3124 = xor i64 %3112, %3113
  %3125 = lshr i64 %3124, 4
  %3126 = trunc i64 %3125 to i8
  %3127 = and i8 %3126, 1
  store i8 %3127, i8* %39, align 1
  %3128 = icmp eq i64 %3113, 0
  %3129 = zext i1 %3128 to i8
  store i8 %3129, i8* %42, align 1
  %3130 = lshr i64 %3113, 63
  %3131 = trunc i64 %3130 to i8
  store i8 %3131, i8* %45, align 1
  %3132 = lshr i64 %3112, 63
  %3133 = lshr i64 %3110, 57
  %3134 = and i64 %3133, 1
  %3135 = xor i64 %3130, %3132
  %3136 = xor i64 %3130, %3134
  %3137 = add nuw nsw i64 %3135, %3136
  %3138 = icmp eq i64 %3137, 2
  %3139 = zext i1 %3138 to i8
  store i8 %3139, i8* %51, align 1
  %3140 = load i64, i64* %RBP.i, align 8
  %3141 = add i64 %3140, -76
  %3142 = add i64 %3010, 121
  store i64 %3142, i64* %3, align 8
  %3143 = inttoptr i64 %3141 to i32*
  %3144 = load i32, i32* %3143, align 4
  %3145 = zext i32 %3144 to i64
  store i64 %3145, i64* %RBX.i2043, align 8
  %3146 = add i64 %3140, -56
  %3147 = add i64 %3010, 124
  store i64 %3147, i64* %3, align 8
  %3148 = inttoptr i64 %3146 to i32*
  %3149 = load i32, i32* %3148, align 4
  %3150 = add i32 %3149, %3144
  %3151 = zext i32 %3150 to i64
  store i64 %3151, i64* %RBX.i2043, align 8
  %3152 = icmp ult i32 %3150, %3144
  %3153 = icmp ult i32 %3150, %3149
  %3154 = or i1 %3152, %3153
  %3155 = zext i1 %3154 to i8
  store i8 %3155, i8* %26, align 1
  %3156 = and i32 %3150, 255
  %3157 = tail call i32 @llvm.ctpop.i32(i32 %3156)
  %3158 = trunc i32 %3157 to i8
  %3159 = and i8 %3158, 1
  %3160 = xor i8 %3159, 1
  store i8 %3160, i8* %33, align 1
  %3161 = xor i32 %3149, %3144
  %3162 = xor i32 %3161, %3150
  %3163 = lshr i32 %3162, 4
  %3164 = trunc i32 %3163 to i8
  %3165 = and i8 %3164, 1
  store i8 %3165, i8* %39, align 1
  %3166 = icmp eq i32 %3150, 0
  %3167 = zext i1 %3166 to i8
  store i8 %3167, i8* %42, align 1
  %3168 = lshr i32 %3150, 31
  %3169 = trunc i32 %3168 to i8
  store i8 %3169, i8* %45, align 1
  %3170 = lshr i32 %3144, 31
  %3171 = lshr i32 %3149, 31
  %3172 = xor i32 %3168, %3170
  %3173 = xor i32 %3168, %3171
  %3174 = add nuw nsw i32 %3172, %3173
  %3175 = icmp eq i32 %3174, 2
  %3176 = zext i1 %3175 to i8
  store i8 %3176, i8* %51, align 1
  %3177 = sext i32 %3150 to i64
  store i64 %3177, i64* %486, align 8
  %3178 = load i32, i32* %R10D.i1599, align 4
  %3179 = shl nsw i64 %3177, 2
  %3180 = add i64 %3113, %3179
  %3181 = add i64 %3010, 131
  store i64 %3181, i64* %3, align 8
  %3182 = inttoptr i64 %3180 to i32*
  %3183 = load i32, i32* %3182, align 4
  %3184 = sub i32 %3178, %3183
  %3185 = zext i32 %3184 to i64
  store i64 %3185, i64* %487, align 8
  %3186 = icmp ult i32 %3178, %3183
  %3187 = zext i1 %3186 to i8
  store i8 %3187, i8* %26, align 1
  %3188 = and i32 %3184, 255
  %3189 = tail call i32 @llvm.ctpop.i32(i32 %3188)
  %3190 = trunc i32 %3189 to i8
  %3191 = and i8 %3190, 1
  %3192 = xor i8 %3191, 1
  store i8 %3192, i8* %33, align 1
  %3193 = xor i32 %3183, %3178
  %3194 = xor i32 %3193, %3184
  %3195 = lshr i32 %3194, 4
  %3196 = trunc i32 %3195 to i8
  %3197 = and i8 %3196, 1
  store i8 %3197, i8* %39, align 1
  %3198 = icmp eq i32 %3184, 0
  %3199 = zext i1 %3198 to i8
  store i8 %3199, i8* %42, align 1
  %3200 = lshr i32 %3184, 31
  %3201 = trunc i32 %3200 to i8
  store i8 %3201, i8* %45, align 1
  %3202 = lshr i32 %3178, 31
  %3203 = lshr i32 %3183, 31
  %3204 = xor i32 %3203, %3202
  %3205 = xor i32 %3200, %3202
  %3206 = add nuw nsw i32 %3205, %3204
  %3207 = icmp eq i32 %3206, 2
  %3208 = zext i1 %3207 to i8
  store i8 %3208, i8* %51, align 1
  %3209 = add i64 %3140, -144
  %3210 = add i64 %3010, 138
  store i64 %3210, i64* %3, align 8
  %3211 = inttoptr i64 %3209 to i32*
  store i32 %3184, i32* %3211, align 4
  %3212 = load i64, i64* %3, align 8
  %3213 = load i64, i64* bitcast (%G_0x726418_type* @G_0x726418 to i64*), align 8
  store i64 %3213, i64* %485, align 8
  %3214 = load i64, i64* %RBP.i, align 8
  %3215 = add i64 %3214, -64
  %3216 = add i64 %3212, 12
  store i64 %3216, i64* %3, align 8
  %3217 = inttoptr i64 %3215 to i32*
  %3218 = load i32, i32* %3217, align 4
  %3219 = zext i32 %3218 to i64
  store i64 %3219, i64* %487, align 8
  %3220 = add i64 %3214, -76
  %3221 = add i64 %3212, 16
  store i64 %3221, i64* %3, align 8
  %3222 = inttoptr i64 %3220 to i32*
  %3223 = load i32, i32* %3222, align 4
  %3224 = add i32 %3223, %3218
  %3225 = zext i32 %3224 to i64
  store i64 %3225, i64* %487, align 8
  %3226 = icmp ult i32 %3224, %3218
  %3227 = icmp ult i32 %3224, %3223
  %3228 = or i1 %3226, %3227
  %3229 = zext i1 %3228 to i8
  store i8 %3229, i8* %26, align 1
  %3230 = and i32 %3224, 255
  %3231 = tail call i32 @llvm.ctpop.i32(i32 %3230)
  %3232 = trunc i32 %3231 to i8
  %3233 = and i8 %3232, 1
  %3234 = xor i8 %3233, 1
  store i8 %3234, i8* %33, align 1
  %3235 = xor i32 %3223, %3218
  %3236 = xor i32 %3235, %3224
  %3237 = lshr i32 %3236, 4
  %3238 = trunc i32 %3237 to i8
  %3239 = and i8 %3238, 1
  store i8 %3239, i8* %39, align 1
  %3240 = icmp eq i32 %3224, 0
  %3241 = zext i1 %3240 to i8
  store i8 %3241, i8* %42, align 1
  %3242 = lshr i32 %3224, 31
  %3243 = trunc i32 %3242 to i8
  store i8 %3243, i8* %45, align 1
  %3244 = lshr i32 %3218, 31
  %3245 = lshr i32 %3223, 31
  %3246 = xor i32 %3242, %3244
  %3247 = xor i32 %3242, %3245
  %3248 = add nuw nsw i32 %3246, %3247
  %3249 = icmp eq i32 %3248, 2
  %3250 = zext i1 %3249 to i8
  store i8 %3250, i8* %51, align 1
  %3251 = sext i32 %3224 to i64
  store i64 %3251, i64* %486, align 8
  %3252 = shl nsw i64 %3251, 3
  %3253 = add i64 %3213, %3252
  %3254 = add i64 %3212, 23
  store i64 %3254, i64* %3, align 8
  %3255 = inttoptr i64 %3253 to i64*
  %3256 = load i64, i64* %3255, align 8
  store i64 %3256, i64* %485, align 8
  %3257 = add i64 %3214, -68
  %3258 = add i64 %3212, 27
  store i64 %3258, i64* %3, align 8
  %3259 = inttoptr i64 %3257 to i32*
  %3260 = load i32, i32* %3259, align 4
  %3261 = zext i32 %3260 to i64
  store i64 %3261, i64* %487, align 8
  %3262 = add i64 %3214, -72
  %3263 = add i64 %3212, 31
  store i64 %3263, i64* %3, align 8
  %3264 = inttoptr i64 %3262 to i32*
  %3265 = load i32, i32* %3264, align 4
  %3266 = add i32 %3265, %3260
  %3267 = zext i32 %3266 to i64
  store i64 %3267, i64* %487, align 8
  %3268 = icmp ult i32 %3266, %3260
  %3269 = icmp ult i32 %3266, %3265
  %3270 = or i1 %3268, %3269
  %3271 = zext i1 %3270 to i8
  store i8 %3271, i8* %26, align 1
  %3272 = and i32 %3266, 255
  %3273 = tail call i32 @llvm.ctpop.i32(i32 %3272)
  %3274 = trunc i32 %3273 to i8
  %3275 = and i8 %3274, 1
  %3276 = xor i8 %3275, 1
  store i8 %3276, i8* %33, align 1
  %3277 = xor i32 %3265, %3260
  %3278 = xor i32 %3277, %3266
  %3279 = lshr i32 %3278, 4
  %3280 = trunc i32 %3279 to i8
  %3281 = and i8 %3280, 1
  store i8 %3281, i8* %39, align 1
  %3282 = icmp eq i32 %3266, 0
  %3283 = zext i1 %3282 to i8
  store i8 %3283, i8* %42, align 1
  %3284 = lshr i32 %3266, 31
  %3285 = trunc i32 %3284 to i8
  store i8 %3285, i8* %45, align 1
  %3286 = lshr i32 %3260, 31
  %3287 = lshr i32 %3265, 31
  %3288 = xor i32 %3284, %3286
  %3289 = xor i32 %3284, %3287
  %3290 = add nuw nsw i32 %3288, %3289
  %3291 = icmp eq i32 %3290, 2
  %3292 = zext i1 %3291 to i8
  store i8 %3292, i8* %51, align 1
  %3293 = sext i32 %3266 to i64
  store i64 %3293, i64* %486, align 8
  %3294 = shl nsw i64 %3293, 1
  %3295 = add i64 %3256, %3294
  %3296 = add i64 %3212, 39
  store i64 %3296, i64* %3, align 8
  %3297 = inttoptr i64 %3295 to i16*
  %3298 = load i16, i16* %3297, align 2
  %3299 = zext i16 %3298 to i64
  store i64 %3299, i64* %487, align 8
  %3300 = load i64, i64* %RBP.i, align 8
  %3301 = add i64 %3300, -72
  %3302 = add i64 %3212, 42
  store i64 %3302, i64* %3, align 8
  %3303 = inttoptr i64 %3301 to i32*
  %3304 = load i32, i32* %3303, align 4
  %3305 = zext i32 %3304 to i64
  store i64 %3305, i64* %RBX.i2043, align 8
  %3306 = add i64 %3300, -60
  %3307 = add i64 %3212, 45
  store i64 %3307, i64* %3, align 8
  %3308 = inttoptr i64 %3306 to i32*
  %3309 = load i32, i32* %3308, align 4
  %3310 = add i32 %3309, %3304
  %3311 = zext i32 %3310 to i64
  store i64 %3311, i64* %RBX.i2043, align 8
  %3312 = sext i32 %3310 to i64
  %3313 = shl nsw i64 %3312, 6
  store i64 %3313, i64* %485, align 8
  %3314 = load i64, i64* %RSI.i2083, align 8
  %3315 = add i64 %3313, %3314
  store i64 %3315, i64* %RSI.i2083, align 8
  %3316 = icmp ult i64 %3315, %3314
  %3317 = icmp ult i64 %3315, %3313
  %3318 = or i1 %3316, %3317
  %3319 = zext i1 %3318 to i8
  store i8 %3319, i8* %26, align 1
  %3320 = trunc i64 %3315 to i32
  %3321 = and i32 %3320, 255
  %3322 = tail call i32 @llvm.ctpop.i32(i32 %3321)
  %3323 = trunc i32 %3322 to i8
  %3324 = and i8 %3323, 1
  %3325 = xor i8 %3324, 1
  store i8 %3325, i8* %33, align 1
  %3326 = xor i64 %3314, %3315
  %3327 = lshr i64 %3326, 4
  %3328 = trunc i64 %3327 to i8
  %3329 = and i8 %3328, 1
  store i8 %3329, i8* %39, align 1
  %3330 = icmp eq i64 %3315, 0
  %3331 = zext i1 %3330 to i8
  store i8 %3331, i8* %42, align 1
  %3332 = lshr i64 %3315, 63
  %3333 = trunc i64 %3332 to i8
  store i8 %3333, i8* %45, align 1
  %3334 = lshr i64 %3314, 63
  %3335 = lshr i64 %3312, 57
  %3336 = and i64 %3335, 1
  %3337 = xor i64 %3332, %3334
  %3338 = xor i64 %3332, %3336
  %3339 = add nuw nsw i64 %3337, %3338
  %3340 = icmp eq i64 %3339, 2
  %3341 = zext i1 %3340 to i8
  store i8 %3341, i8* %51, align 1
  %3342 = load i64, i64* %RBP.i, align 8
  %3343 = add i64 %3342, -76
  %3344 = add i64 %3212, 58
  store i64 %3344, i64* %3, align 8
  %3345 = inttoptr i64 %3343 to i32*
  %3346 = load i32, i32* %3345, align 4
  %3347 = zext i32 %3346 to i64
  store i64 %3347, i64* %RBX.i2043, align 8
  %3348 = add i64 %3342, -56
  %3349 = add i64 %3212, 61
  store i64 %3349, i64* %3, align 8
  %3350 = inttoptr i64 %3348 to i32*
  %3351 = load i32, i32* %3350, align 4
  %3352 = add i32 %3351, %3346
  %3353 = zext i32 %3352 to i64
  store i64 %3353, i64* %RBX.i2043, align 8
  %3354 = icmp ult i32 %3352, %3346
  %3355 = icmp ult i32 %3352, %3351
  %3356 = or i1 %3354, %3355
  %3357 = zext i1 %3356 to i8
  store i8 %3357, i8* %26, align 1
  %3358 = and i32 %3352, 255
  %3359 = tail call i32 @llvm.ctpop.i32(i32 %3358)
  %3360 = trunc i32 %3359 to i8
  %3361 = and i8 %3360, 1
  %3362 = xor i8 %3361, 1
  store i8 %3362, i8* %33, align 1
  %3363 = xor i32 %3351, %3346
  %3364 = xor i32 %3363, %3352
  %3365 = lshr i32 %3364, 4
  %3366 = trunc i32 %3365 to i8
  %3367 = and i8 %3366, 1
  store i8 %3367, i8* %39, align 1
  %3368 = icmp eq i32 %3352, 0
  %3369 = zext i1 %3368 to i8
  store i8 %3369, i8* %42, align 1
  %3370 = lshr i32 %3352, 31
  %3371 = trunc i32 %3370 to i8
  store i8 %3371, i8* %45, align 1
  %3372 = lshr i32 %3346, 31
  %3373 = lshr i32 %3351, 31
  %3374 = xor i32 %3370, %3372
  %3375 = xor i32 %3370, %3373
  %3376 = add nuw nsw i32 %3374, %3375
  %3377 = icmp eq i32 %3376, 2
  %3378 = zext i1 %3377 to i8
  store i8 %3378, i8* %51, align 1
  %3379 = sext i32 %3352 to i64
  store i64 %3379, i64* %485, align 8
  %3380 = load i32, i32* %R10D.i1599, align 4
  %3381 = shl nsw i64 %3379, 2
  %3382 = add i64 %3315, %3381
  %3383 = add i64 %3212, 68
  store i64 %3383, i64* %3, align 8
  %3384 = inttoptr i64 %3382 to i32*
  %3385 = load i32, i32* %3384, align 4
  %3386 = sub i32 %3380, %3385
  %3387 = zext i32 %3386 to i64
  store i64 %3387, i64* %487, align 8
  %3388 = icmp ult i32 %3380, %3385
  %3389 = zext i1 %3388 to i8
  store i8 %3389, i8* %26, align 1
  %3390 = and i32 %3386, 255
  %3391 = tail call i32 @llvm.ctpop.i32(i32 %3390)
  %3392 = trunc i32 %3391 to i8
  %3393 = and i8 %3392, 1
  %3394 = xor i8 %3393, 1
  store i8 %3394, i8* %33, align 1
  %3395 = xor i32 %3385, %3380
  %3396 = xor i32 %3395, %3386
  %3397 = lshr i32 %3396, 4
  %3398 = trunc i32 %3397 to i8
  %3399 = and i8 %3398, 1
  store i8 %3399, i8* %39, align 1
  %3400 = icmp eq i32 %3386, 0
  %3401 = zext i1 %3400 to i8
  store i8 %3401, i8* %42, align 1
  %3402 = lshr i32 %3386, 31
  %3403 = trunc i32 %3402 to i8
  store i8 %3403, i8* %45, align 1
  %3404 = lshr i32 %3380, 31
  %3405 = lshr i32 %3385, 31
  %3406 = xor i32 %3405, %3404
  %3407 = xor i32 %3402, %3404
  %3408 = add nuw nsw i32 %3407, %3406
  %3409 = icmp eq i32 %3408, 2
  %3410 = zext i1 %3409 to i8
  store i8 %3410, i8* %51, align 1
  %3411 = add i64 %3342, -140
  %3412 = add i64 %3212, 75
  store i64 %3412, i64* %3, align 8
  %3413 = inttoptr i64 %3411 to i32*
  store i32 %3386, i32* %3413, align 4
  %3414 = load i64, i64* %3, align 8
  %3415 = load i64, i64* bitcast (%G_0x6f6f90_type* @G_0x6f6f90 to i64*), align 8
  store i64 %3415, i64* %RSI.i2083, align 8
  %3416 = add i64 %3415, 8
  %3417 = add i64 %3414, 12
  store i64 %3417, i64* %3, align 8
  %3418 = inttoptr i64 %3416 to i64*
  %3419 = load i64, i64* %3418, align 8
  store i64 %3419, i64* %RSI.i2083, align 8
  %3420 = load i64, i64* %RBP.i, align 8
  %3421 = add i64 %3420, -64
  %3422 = add i64 %3414, 16
  store i64 %3422, i64* %3, align 8
  %3423 = inttoptr i64 %3421 to i32*
  %3424 = load i32, i32* %3423, align 4
  %3425 = zext i32 %3424 to i64
  store i64 %3425, i64* %487, align 8
  %3426 = add i64 %3420, -76
  %3427 = add i64 %3414, 20
  store i64 %3427, i64* %3, align 8
  %3428 = inttoptr i64 %3426 to i32*
  %3429 = load i32, i32* %3428, align 4
  %3430 = add i32 %3429, %3424
  %3431 = zext i32 %3430 to i64
  store i64 %3431, i64* %487, align 8
  %3432 = icmp ult i32 %3430, %3424
  %3433 = icmp ult i32 %3430, %3429
  %3434 = or i1 %3432, %3433
  %3435 = zext i1 %3434 to i8
  store i8 %3435, i8* %26, align 1
  %3436 = and i32 %3430, 255
  %3437 = tail call i32 @llvm.ctpop.i32(i32 %3436)
  %3438 = trunc i32 %3437 to i8
  %3439 = and i8 %3438, 1
  %3440 = xor i8 %3439, 1
  store i8 %3440, i8* %33, align 1
  %3441 = xor i32 %3429, %3424
  %3442 = xor i32 %3441, %3430
  %3443 = lshr i32 %3442, 4
  %3444 = trunc i32 %3443 to i8
  %3445 = and i8 %3444, 1
  store i8 %3445, i8* %39, align 1
  %3446 = icmp eq i32 %3430, 0
  %3447 = zext i1 %3446 to i8
  store i8 %3447, i8* %42, align 1
  %3448 = lshr i32 %3430, 31
  %3449 = trunc i32 %3448 to i8
  store i8 %3449, i8* %45, align 1
  %3450 = lshr i32 %3424, 31
  %3451 = lshr i32 %3429, 31
  %3452 = xor i32 %3448, %3450
  %3453 = xor i32 %3448, %3451
  %3454 = add nuw nsw i32 %3452, %3453
  %3455 = icmp eq i32 %3454, 2
  %3456 = zext i1 %3455 to i8
  store i8 %3456, i8* %51, align 1
  %3457 = sext i32 %3430 to i64
  store i64 %3457, i64* %485, align 8
  %3458 = shl nsw i64 %3457, 3
  %3459 = add i64 %3419, %3458
  %3460 = add i64 %3414, 27
  store i64 %3460, i64* %3, align 8
  %3461 = inttoptr i64 %3459 to i64*
  %3462 = load i64, i64* %3461, align 8
  store i64 %3462, i64* %RSI.i2083, align 8
  %3463 = add i64 %3420, -68
  %3464 = add i64 %3414, 31
  store i64 %3464, i64* %3, align 8
  %3465 = inttoptr i64 %3463 to i32*
  %3466 = load i32, i32* %3465, align 4
  %3467 = zext i32 %3466 to i64
  store i64 %3467, i64* %487, align 8
  %3468 = add i64 %3420, -72
  %3469 = add i64 %3414, 35
  store i64 %3469, i64* %3, align 8
  %3470 = inttoptr i64 %3468 to i32*
  %3471 = load i32, i32* %3470, align 4
  %3472 = add i32 %3471, %3466
  %3473 = zext i32 %3472 to i64
  store i64 %3473, i64* %487, align 8
  %3474 = icmp ult i32 %3472, %3466
  %3475 = icmp ult i32 %3472, %3471
  %3476 = or i1 %3474, %3475
  %3477 = zext i1 %3476 to i8
  store i8 %3477, i8* %26, align 1
  %3478 = and i32 %3472, 255
  %3479 = tail call i32 @llvm.ctpop.i32(i32 %3478)
  %3480 = trunc i32 %3479 to i8
  %3481 = and i8 %3480, 1
  %3482 = xor i8 %3481, 1
  store i8 %3482, i8* %33, align 1
  %3483 = xor i32 %3471, %3466
  %3484 = xor i32 %3483, %3472
  %3485 = lshr i32 %3484, 4
  %3486 = trunc i32 %3485 to i8
  %3487 = and i8 %3486, 1
  store i8 %3487, i8* %39, align 1
  %3488 = icmp eq i32 %3472, 0
  %3489 = zext i1 %3488 to i8
  store i8 %3489, i8* %42, align 1
  %3490 = lshr i32 %3472, 31
  %3491 = trunc i32 %3490 to i8
  store i8 %3491, i8* %45, align 1
  %3492 = lshr i32 %3466, 31
  %3493 = lshr i32 %3471, 31
  %3494 = xor i32 %3490, %3492
  %3495 = xor i32 %3490, %3493
  %3496 = add nuw nsw i32 %3494, %3495
  %3497 = icmp eq i32 %3496, 2
  %3498 = zext i1 %3497 to i8
  store i8 %3498, i8* %51, align 1
  %3499 = sext i32 %3472 to i64
  store i64 %3499, i64* %485, align 8
  %3500 = shl nsw i64 %3499, 1
  %3501 = add i64 %3462, %3500
  %3502 = add i64 %3414, 43
  store i64 %3502, i64* %3, align 8
  %3503 = inttoptr i64 %3501 to i16*
  %3504 = load i16, i16* %3503, align 2
  %3505 = zext i16 %3504 to i64
  store i64 %3505, i64* %487, align 8
  %3506 = load i64, i64* %RBP.i, align 8
  %3507 = add i64 %3506, -72
  %3508 = add i64 %3414, 46
  store i64 %3508, i64* %3, align 8
  %3509 = inttoptr i64 %3507 to i32*
  %3510 = load i32, i32* %3509, align 4
  %3511 = zext i32 %3510 to i64
  store i64 %3511, i64* %RBX.i2043, align 8
  %3512 = add i64 %3506, -60
  %3513 = add i64 %3414, 49
  store i64 %3513, i64* %3, align 8
  %3514 = inttoptr i64 %3512 to i32*
  %3515 = load i32, i32* %3514, align 4
  %3516 = add i32 %3515, %3510
  %3517 = zext i32 %3516 to i64
  store i64 %3517, i64* %RBX.i2043, align 8
  %3518 = sext i32 %3516 to i64
  %3519 = shl nsw i64 %3518, 6
  store i64 %3519, i64* %RSI.i2083, align 8
  %3520 = load i64, i64* %RDI.i2086, align 8
  %3521 = add i64 %3519, %3520
  store i64 %3521, i64* %RDI.i2086, align 8
  %3522 = icmp ult i64 %3521, %3520
  %3523 = icmp ult i64 %3521, %3519
  %3524 = or i1 %3522, %3523
  %3525 = zext i1 %3524 to i8
  store i8 %3525, i8* %26, align 1
  %3526 = trunc i64 %3521 to i32
  %3527 = and i32 %3526, 255
  %3528 = tail call i32 @llvm.ctpop.i32(i32 %3527)
  %3529 = trunc i32 %3528 to i8
  %3530 = and i8 %3529, 1
  %3531 = xor i8 %3530, 1
  store i8 %3531, i8* %33, align 1
  %3532 = xor i64 %3520, %3521
  %3533 = lshr i64 %3532, 4
  %3534 = trunc i64 %3533 to i8
  %3535 = and i8 %3534, 1
  store i8 %3535, i8* %39, align 1
  %3536 = icmp eq i64 %3521, 0
  %3537 = zext i1 %3536 to i8
  store i8 %3537, i8* %42, align 1
  %3538 = lshr i64 %3521, 63
  %3539 = trunc i64 %3538 to i8
  store i8 %3539, i8* %45, align 1
  %3540 = lshr i64 %3520, 63
  %3541 = lshr i64 %3518, 57
  %3542 = and i64 %3541, 1
  %3543 = xor i64 %3538, %3540
  %3544 = xor i64 %3538, %3542
  %3545 = add nuw nsw i64 %3543, %3544
  %3546 = icmp eq i64 %3545, 2
  %3547 = zext i1 %3546 to i8
  store i8 %3547, i8* %51, align 1
  %3548 = load i64, i64* %RBP.i, align 8
  %3549 = add i64 %3548, -76
  %3550 = add i64 %3414, 62
  store i64 %3550, i64* %3, align 8
  %3551 = inttoptr i64 %3549 to i32*
  %3552 = load i32, i32* %3551, align 4
  %3553 = zext i32 %3552 to i64
  store i64 %3553, i64* %RBX.i2043, align 8
  %3554 = add i64 %3548, -56
  %3555 = add i64 %3414, 65
  store i64 %3555, i64* %3, align 8
  %3556 = inttoptr i64 %3554 to i32*
  %3557 = load i32, i32* %3556, align 4
  %3558 = add i32 %3557, %3552
  %3559 = zext i32 %3558 to i64
  store i64 %3559, i64* %RBX.i2043, align 8
  %3560 = icmp ult i32 %3558, %3552
  %3561 = icmp ult i32 %3558, %3557
  %3562 = or i1 %3560, %3561
  %3563 = zext i1 %3562 to i8
  store i8 %3563, i8* %26, align 1
  %3564 = and i32 %3558, 255
  %3565 = tail call i32 @llvm.ctpop.i32(i32 %3564)
  %3566 = trunc i32 %3565 to i8
  %3567 = and i8 %3566, 1
  %3568 = xor i8 %3567, 1
  store i8 %3568, i8* %33, align 1
  %3569 = xor i32 %3557, %3552
  %3570 = xor i32 %3569, %3558
  %3571 = lshr i32 %3570, 4
  %3572 = trunc i32 %3571 to i8
  %3573 = and i8 %3572, 1
  store i8 %3573, i8* %39, align 1
  %3574 = icmp eq i32 %3558, 0
  %3575 = zext i1 %3574 to i8
  store i8 %3575, i8* %42, align 1
  %3576 = lshr i32 %3558, 31
  %3577 = trunc i32 %3576 to i8
  store i8 %3577, i8* %45, align 1
  %3578 = lshr i32 %3552, 31
  %3579 = lshr i32 %3557, 31
  %3580 = xor i32 %3576, %3578
  %3581 = xor i32 %3576, %3579
  %3582 = add nuw nsw i32 %3580, %3581
  %3583 = icmp eq i32 %3582, 2
  %3584 = zext i1 %3583 to i8
  store i8 %3584, i8* %51, align 1
  %3585 = sext i32 %3558 to i64
  store i64 %3585, i64* %RSI.i2083, align 8
  %3586 = load i32, i32* %R10D.i1599, align 4
  %3587 = shl nsw i64 %3585, 2
  %3588 = add i64 %3521, %3587
  %3589 = add i64 %3414, 72
  store i64 %3589, i64* %3, align 8
  %3590 = inttoptr i64 %3588 to i32*
  %3591 = load i32, i32* %3590, align 4
  %3592 = sub i32 %3586, %3591
  %3593 = zext i32 %3592 to i64
  store i64 %3593, i64* %487, align 8
  %3594 = icmp ult i32 %3586, %3591
  %3595 = zext i1 %3594 to i8
  store i8 %3595, i8* %26, align 1
  %3596 = and i32 %3592, 255
  %3597 = tail call i32 @llvm.ctpop.i32(i32 %3596)
  %3598 = trunc i32 %3597 to i8
  %3599 = and i8 %3598, 1
  %3600 = xor i8 %3599, 1
  store i8 %3600, i8* %33, align 1
  %3601 = xor i32 %3591, %3586
  %3602 = xor i32 %3601, %3592
  %3603 = lshr i32 %3602, 4
  %3604 = trunc i32 %3603 to i8
  %3605 = and i8 %3604, 1
  store i8 %3605, i8* %39, align 1
  %3606 = icmp eq i32 %3592, 0
  %3607 = zext i1 %3606 to i8
  store i8 %3607, i8* %42, align 1
  %3608 = lshr i32 %3592, 31
  %3609 = trunc i32 %3608 to i8
  store i8 %3609, i8* %45, align 1
  %3610 = lshr i32 %3586, 31
  %3611 = lshr i32 %3591, 31
  %3612 = xor i32 %3611, %3610
  %3613 = xor i32 %3608, %3610
  %3614 = add nuw nsw i32 %3613, %3612
  %3615 = icmp eq i32 %3614, 2
  %3616 = zext i1 %3615 to i8
  store i8 %3616, i8* %51, align 1
  %3617 = add i64 %3548, -136
  %3618 = add i64 %3414, 79
  store i64 %3618, i64* %3, align 8
  %3619 = inttoptr i64 %3617 to i32*
  store i32 %3592, i32* %3619, align 4
  %3620 = load i64, i64* %RBP.i, align 8
  %3621 = add i64 %3620, -136
  %3622 = load i64, i64* %3, align 8
  %3623 = add i64 %3622, 7
  store i64 %3623, i64* %3, align 8
  %3624 = inttoptr i64 %3621 to i32*
  %3625 = load i32, i32* %3624, align 4
  %3626 = zext i32 %3625 to i64
  store i64 %3626, i64* %487, align 8
  %3627 = add i64 %3620, -144
  %3628 = add i64 %3622, 14
  store i64 %3628, i64* %3, align 8
  %3629 = inttoptr i64 %3627 to i32*
  %3630 = load i32, i32* %3629, align 4
  %3631 = sub i32 %3625, %3630
  %3632 = zext i32 %3631 to i64
  store i64 %3632, i64* %487, align 8
  %3633 = icmp ult i32 %3625, %3630
  %3634 = zext i1 %3633 to i8
  store i8 %3634, i8* %26, align 1
  %3635 = and i32 %3631, 255
  %3636 = tail call i32 @llvm.ctpop.i32(i32 %3635)
  %3637 = trunc i32 %3636 to i8
  %3638 = and i8 %3637, 1
  %3639 = xor i8 %3638, 1
  store i8 %3639, i8* %33, align 1
  %3640 = xor i32 %3630, %3625
  %3641 = xor i32 %3640, %3631
  %3642 = lshr i32 %3641, 4
  %3643 = trunc i32 %3642 to i8
  %3644 = and i8 %3643, 1
  store i8 %3644, i8* %39, align 1
  %3645 = icmp eq i32 %3631, 0
  %3646 = zext i1 %3645 to i8
  store i8 %3646, i8* %42, align 1
  %3647 = lshr i32 %3631, 31
  %3648 = trunc i32 %3647 to i8
  store i8 %3648, i8* %45, align 1
  %3649 = lshr i32 %3625, 31
  %3650 = lshr i32 %3630, 31
  %3651 = xor i32 %3650, %3649
  %3652 = xor i32 %3647, %3649
  %3653 = add nuw nsw i32 %3652, %3651
  %3654 = icmp eq i32 %3653, 2
  %3655 = zext i1 %3654 to i8
  store i8 %3655, i8* %51, align 1
  %3656 = add i64 %3620, -72
  %3657 = add i64 %3622, 17
  store i64 %3657, i64* %3, align 8
  %3658 = inttoptr i64 %3656 to i32*
  %3659 = load i32, i32* %3658, align 4
  %3660 = zext i32 %3659 to i64
  store i64 %3660, i64* %RBX.i2043, align 8
  %3661 = add i64 %3620, -60
  %3662 = add i64 %3622, 20
  store i64 %3662, i64* %3, align 8
  %3663 = inttoptr i64 %3661 to i32*
  %3664 = load i32, i32* %3663, align 4
  %3665 = add i32 %3664, %3659
  %3666 = zext i32 %3665 to i64
  store i64 %3666, i64* %RBX.i2043, align 8
  %3667 = sext i32 %3665 to i64
  %3668 = shl nsw i64 %3667, 6
  store i64 %3668, i64* %RSI.i2083, align 8
  %3669 = load i64, i64* %RDX.i2040.pre-phi, align 8
  %3670 = add i64 %3668, %3669
  store i64 %3670, i64* %RDI.i2086, align 8
  %3671 = icmp ult i64 %3670, %3669
  %3672 = icmp ult i64 %3670, %3668
  %3673 = or i1 %3671, %3672
  %3674 = zext i1 %3673 to i8
  store i8 %3674, i8* %26, align 1
  %3675 = trunc i64 %3670 to i32
  %3676 = and i32 %3675, 255
  %3677 = tail call i32 @llvm.ctpop.i32(i32 %3676)
  %3678 = trunc i32 %3677 to i8
  %3679 = and i8 %3678, 1
  %3680 = xor i8 %3679, 1
  store i8 %3680, i8* %33, align 1
  %3681 = xor i64 %3669, %3670
  %3682 = lshr i64 %3681, 4
  %3683 = trunc i64 %3682 to i8
  %3684 = and i8 %3683, 1
  store i8 %3684, i8* %39, align 1
  %3685 = icmp eq i64 %3670, 0
  %3686 = zext i1 %3685 to i8
  store i8 %3686, i8* %42, align 1
  %3687 = lshr i64 %3670, 63
  %3688 = trunc i64 %3687 to i8
  store i8 %3688, i8* %45, align 1
  %3689 = lshr i64 %3669, 63
  %3690 = lshr i64 %3667, 57
  %3691 = and i64 %3690, 1
  %3692 = xor i64 %3687, %3689
  %3693 = xor i64 %3687, %3691
  %3694 = add nuw nsw i64 %3692, %3693
  %3695 = icmp eq i64 %3694, 2
  %3696 = zext i1 %3695 to i8
  store i8 %3696, i8* %51, align 1
  %3697 = load i64, i64* %RBP.i, align 8
  %3698 = add i64 %3697, -76
  %3699 = add i64 %3622, 36
  store i64 %3699, i64* %3, align 8
  %3700 = inttoptr i64 %3698 to i32*
  %3701 = load i32, i32* %3700, align 4
  %3702 = zext i32 %3701 to i64
  store i64 %3702, i64* %RBX.i2043, align 8
  %3703 = add i64 %3697, -56
  %3704 = add i64 %3622, 39
  store i64 %3704, i64* %3, align 8
  %3705 = inttoptr i64 %3703 to i32*
  %3706 = load i32, i32* %3705, align 4
  %3707 = add i32 %3706, %3701
  %3708 = zext i32 %3707 to i64
  store i64 %3708, i64* %RBX.i2043, align 8
  %3709 = icmp ult i32 %3707, %3701
  %3710 = icmp ult i32 %3707, %3706
  %3711 = or i1 %3709, %3710
  %3712 = zext i1 %3711 to i8
  store i8 %3712, i8* %26, align 1
  %3713 = and i32 %3707, 255
  %3714 = tail call i32 @llvm.ctpop.i32(i32 %3713)
  %3715 = trunc i32 %3714 to i8
  %3716 = and i8 %3715, 1
  %3717 = xor i8 %3716, 1
  store i8 %3717, i8* %33, align 1
  %3718 = xor i32 %3706, %3701
  %3719 = xor i32 %3718, %3707
  %3720 = lshr i32 %3719, 4
  %3721 = trunc i32 %3720 to i8
  %3722 = and i8 %3721, 1
  store i8 %3722, i8* %39, align 1
  %3723 = icmp eq i32 %3707, 0
  %3724 = zext i1 %3723 to i8
  store i8 %3724, i8* %42, align 1
  %3725 = lshr i32 %3707, 31
  %3726 = trunc i32 %3725 to i8
  store i8 %3726, i8* %45, align 1
  %3727 = lshr i32 %3701, 31
  %3728 = lshr i32 %3706, 31
  %3729 = xor i32 %3725, %3727
  %3730 = xor i32 %3725, %3728
  %3731 = add nuw nsw i32 %3729, %3730
  %3732 = icmp eq i32 %3731, 2
  %3733 = zext i1 %3732 to i8
  store i8 %3733, i8* %51, align 1
  %3734 = sext i32 %3707 to i64
  store i64 %3734, i64* %RSI.i2083, align 8
  %3735 = shl nsw i64 %3734, 2
  %3736 = add i64 %3670, %3735
  %3737 = load i32, i32* %R10D.i1599, align 4
  %3738 = add i64 %3622, 46
  store i64 %3738, i64* %3, align 8
  %3739 = inttoptr i64 %3736 to i32*
  store i32 %3737, i32* %3739, align 4
  %3740 = load i64, i64* %RBP.i, align 8
  %3741 = add i64 %3740, -144
  %3742 = load i64, i64* %3, align 8
  %3743 = add i64 %3742, 7
  store i64 %3743, i64* %3, align 8
  %3744 = inttoptr i64 %3741 to i32*
  %3745 = load i32, i32* %3744, align 4
  %3746 = zext i32 %3745 to i64
  store i64 %3746, i64* %487, align 8
  %3747 = add i64 %3740, -72
  %3748 = add i64 %3742, 10
  store i64 %3748, i64* %3, align 8
  %3749 = inttoptr i64 %3747 to i32*
  %3750 = load i32, i32* %3749, align 4
  %3751 = zext i32 %3750 to i64
  store i64 %3751, i64* %RBX.i2043, align 8
  %3752 = add i64 %3740, -60
  %3753 = add i64 %3742, 13
  store i64 %3753, i64* %3, align 8
  %3754 = inttoptr i64 %3752 to i32*
  %3755 = load i32, i32* %3754, align 4
  %3756 = add i32 %3755, %3750
  %3757 = zext i32 %3756 to i64
  store i64 %3757, i64* %RBX.i2043, align 8
  %3758 = sext i32 %3756 to i64
  %3759 = shl nsw i64 %3758, 6
  store i64 %3759, i64* %RSI.i2083, align 8
  %3760 = load i64, i64* %RDX.i2040.pre-phi, align 8
  %3761 = add i64 %3759, %3760
  store i64 %3761, i64* %RDX.i2040.pre-phi, align 8
  %3762 = icmp ult i64 %3761, %3760
  %3763 = icmp ult i64 %3761, %3759
  %3764 = or i1 %3762, %3763
  %3765 = zext i1 %3764 to i8
  store i8 %3765, i8* %26, align 1
  %3766 = trunc i64 %3761 to i32
  %3767 = and i32 %3766, 255
  %3768 = tail call i32 @llvm.ctpop.i32(i32 %3767)
  %3769 = trunc i32 %3768 to i8
  %3770 = and i8 %3769, 1
  %3771 = xor i8 %3770, 1
  store i8 %3771, i8* %33, align 1
  %3772 = xor i64 %3760, %3761
  %3773 = lshr i64 %3772, 4
  %3774 = trunc i64 %3773 to i8
  %3775 = and i8 %3774, 1
  store i8 %3775, i8* %39, align 1
  %3776 = icmp eq i64 %3761, 0
  %3777 = zext i1 %3776 to i8
  store i8 %3777, i8* %42, align 1
  %3778 = lshr i64 %3761, 63
  %3779 = trunc i64 %3778 to i8
  store i8 %3779, i8* %45, align 1
  %3780 = lshr i64 %3760, 63
  %3781 = lshr i64 %3758, 57
  %3782 = and i64 %3781, 1
  %3783 = xor i64 %3778, %3780
  %3784 = xor i64 %3778, %3782
  %3785 = add nuw nsw i64 %3783, %3784
  %3786 = icmp eq i64 %3785, 2
  %3787 = zext i1 %3786 to i8
  store i8 %3787, i8* %51, align 1
  %3788 = load i64, i64* %RBP.i, align 8
  %3789 = add i64 %3788, -76
  %3790 = add i64 %3742, 26
  store i64 %3790, i64* %3, align 8
  %3791 = inttoptr i64 %3789 to i32*
  %3792 = load i32, i32* %3791, align 4
  %3793 = zext i32 %3792 to i64
  store i64 %3793, i64* %RBX.i2043, align 8
  %3794 = add i64 %3788, -56
  %3795 = add i64 %3742, 29
  store i64 %3795, i64* %3, align 8
  %3796 = inttoptr i64 %3794 to i32*
  %3797 = load i32, i32* %3796, align 4
  %3798 = add i32 %3797, %3792
  %3799 = zext i32 %3798 to i64
  store i64 %3799, i64* %RBX.i2043, align 8
  %3800 = icmp ult i32 %3798, %3792
  %3801 = icmp ult i32 %3798, %3797
  %3802 = or i1 %3800, %3801
  %3803 = zext i1 %3802 to i8
  store i8 %3803, i8* %26, align 1
  %3804 = and i32 %3798, 255
  %3805 = tail call i32 @llvm.ctpop.i32(i32 %3804)
  %3806 = trunc i32 %3805 to i8
  %3807 = and i8 %3806, 1
  %3808 = xor i8 %3807, 1
  store i8 %3808, i8* %33, align 1
  %3809 = xor i32 %3797, %3792
  %3810 = xor i32 %3809, %3798
  %3811 = lshr i32 %3810, 4
  %3812 = trunc i32 %3811 to i8
  %3813 = and i8 %3812, 1
  store i8 %3813, i8* %39, align 1
  %3814 = icmp eq i32 %3798, 0
  %3815 = zext i1 %3814 to i8
  store i8 %3815, i8* %42, align 1
  %3816 = lshr i32 %3798, 31
  %3817 = trunc i32 %3816 to i8
  store i8 %3817, i8* %45, align 1
  %3818 = lshr i32 %3792, 31
  %3819 = lshr i32 %3797, 31
  %3820 = xor i32 %3816, %3818
  %3821 = xor i32 %3816, %3819
  %3822 = add nuw nsw i32 %3820, %3821
  %3823 = icmp eq i32 %3822, 2
  %3824 = zext i1 %3823 to i8
  store i8 %3824, i8* %51, align 1
  %3825 = sext i32 %3798 to i64
  store i64 %3825, i64* %RSI.i2083, align 8
  %3826 = shl nsw i64 %3825, 2
  %3827 = add i64 %3761, %3826
  %3828 = add i64 %3742, 35
  store i64 %3828, i64* %3, align 8
  %3829 = inttoptr i64 %3827 to i32*
  %3830 = load i32, i32* %3829, align 4
  %3831 = zext i32 %3830 to i64
  %3832 = shl nuw i64 %3831, 32
  %3833 = ashr i64 %3832, 33
  %3834 = and i64 %3833, 4294967295
  store i64 %3834, i64* %RBX.i2043, align 8
  %3835 = load i32, i32* %R10D.i1599, align 4
  %3836 = trunc i64 %3833 to i32
  %3837 = add i32 %3836, %3835
  %3838 = zext i32 %3837 to i64
  store i64 %3838, i64* %487, align 8
  %3839 = icmp ult i32 %3837, %3835
  %3840 = icmp ult i32 %3837, %3836
  %3841 = or i1 %3839, %3840
  %3842 = zext i1 %3841 to i8
  store i8 %3842, i8* %26, align 1
  %3843 = and i32 %3837, 255
  %3844 = tail call i32 @llvm.ctpop.i32(i32 %3843)
  %3845 = trunc i32 %3844 to i8
  %3846 = and i8 %3845, 1
  %3847 = xor i8 %3846, 1
  store i8 %3847, i8* %33, align 1
  %3848 = xor i32 %3836, %3835
  %3849 = xor i32 %3848, %3837
  %3850 = lshr i32 %3849, 4
  %3851 = trunc i32 %3850 to i8
  %3852 = and i8 %3851, 1
  store i8 %3852, i8* %39, align 1
  %3853 = icmp eq i32 %3837, 0
  %3854 = zext i1 %3853 to i8
  store i8 %3854, i8* %42, align 1
  %3855 = lshr i32 %3837, 31
  %3856 = trunc i32 %3855 to i8
  store i8 %3856, i8* %45, align 1
  %3857 = lshr i32 %3835, 31
  %3858 = lshr i64 %3833, 31
  %3859 = trunc i64 %3858 to i32
  %3860 = and i32 %3859, 1
  %3861 = xor i32 %3855, %3857
  %3862 = xor i32 %3855, %3860
  %3863 = add nuw nsw i32 %3861, %3862
  %3864 = icmp eq i32 %3863, 2
  %3865 = zext i1 %3864 to i8
  store i8 %3865, i8* %51, align 1
  %3866 = load i64, i64* %RBP.i, align 8
  %3867 = add i64 %3866, -148
  %3868 = add i64 %3742, 47
  store i64 %3868, i64* %3, align 8
  %3869 = inttoptr i64 %3867 to i32*
  store i32 %3837, i32* %3869, align 4
  %3870 = load i64, i64* %RBP.i, align 8
  %3871 = add i64 %3870, -140
  %3872 = load i64, i64* %3, align 8
  %3873 = add i64 %3872, 7
  store i64 %3873, i64* %3, align 8
  %3874 = inttoptr i64 %3871 to i32*
  %3875 = load i32, i32* %3874, align 4
  %3876 = zext i32 %3875 to i64
  store i64 %3876, i64* %487, align 8
  %3877 = add i64 %3870, -148
  %3878 = add i64 %3872, 14
  store i64 %3878, i64* %3, align 8
  %3879 = inttoptr i64 %3877 to i32*
  %3880 = load i32, i32* %3879, align 4
  %3881 = sub i32 %3875, %3880
  %3882 = zext i32 %3881 to i64
  store i64 %3882, i64* %487, align 8
  %3883 = icmp ult i32 %3875, %3880
  %3884 = zext i1 %3883 to i8
  store i8 %3884, i8* %26, align 1
  %3885 = and i32 %3881, 255
  %3886 = tail call i32 @llvm.ctpop.i32(i32 %3885)
  %3887 = trunc i32 %3886 to i8
  %3888 = and i8 %3887, 1
  %3889 = xor i8 %3888, 1
  store i8 %3889, i8* %33, align 1
  %3890 = xor i32 %3880, %3875
  %3891 = xor i32 %3890, %3881
  %3892 = lshr i32 %3891, 4
  %3893 = trunc i32 %3892 to i8
  %3894 = and i8 %3893, 1
  store i8 %3894, i8* %39, align 1
  %3895 = icmp eq i32 %3881, 0
  %3896 = zext i1 %3895 to i8
  store i8 %3896, i8* %42, align 1
  %3897 = lshr i32 %3881, 31
  %3898 = trunc i32 %3897 to i8
  store i8 %3898, i8* %45, align 1
  %3899 = lshr i32 %3875, 31
  %3900 = lshr i32 %3880, 31
  %3901 = xor i32 %3900, %3899
  %3902 = xor i32 %3897, %3899
  %3903 = add nuw nsw i32 %3902, %3901
  %3904 = icmp eq i32 %3903, 2
  %3905 = zext i1 %3904 to i8
  store i8 %3905, i8* %51, align 1
  %3906 = add i64 %3870, -72
  %3907 = add i64 %3872, 17
  store i64 %3907, i64* %3, align 8
  %3908 = inttoptr i64 %3906 to i32*
  %3909 = load i32, i32* %3908, align 4
  %3910 = zext i32 %3909 to i64
  store i64 %3910, i64* %RBX.i2043, align 8
  %3911 = add i64 %3870, -60
  %3912 = add i64 %3872, 20
  store i64 %3912, i64* %3, align 8
  %3913 = inttoptr i64 %3911 to i32*
  %3914 = load i32, i32* %3913, align 4
  %3915 = add i32 %3914, %3909
  %3916 = zext i32 %3915 to i64
  store i64 %3916, i64* %RBX.i2043, align 8
  %3917 = sext i32 %3915 to i64
  %3918 = shl nsw i64 %3917, 6
  store i64 %3918, i64* %RDX.i2040.pre-phi, align 8
  %3919 = load i64, i64* %RCX.i2097, align 8
  %3920 = add i64 %3918, %3919
  store i64 %3920, i64* %RSI.i2083, align 8
  %3921 = icmp ult i64 %3920, %3919
  %3922 = icmp ult i64 %3920, %3918
  %3923 = or i1 %3921, %3922
  %3924 = zext i1 %3923 to i8
  store i8 %3924, i8* %26, align 1
  %3925 = trunc i64 %3920 to i32
  %3926 = and i32 %3925, 255
  %3927 = tail call i32 @llvm.ctpop.i32(i32 %3926)
  %3928 = trunc i32 %3927 to i8
  %3929 = and i8 %3928, 1
  %3930 = xor i8 %3929, 1
  store i8 %3930, i8* %33, align 1
  %3931 = xor i64 %3919, %3920
  %3932 = lshr i64 %3931, 4
  %3933 = trunc i64 %3932 to i8
  %3934 = and i8 %3933, 1
  store i8 %3934, i8* %39, align 1
  %3935 = icmp eq i64 %3920, 0
  %3936 = zext i1 %3935 to i8
  store i8 %3936, i8* %42, align 1
  %3937 = lshr i64 %3920, 63
  %3938 = trunc i64 %3937 to i8
  store i8 %3938, i8* %45, align 1
  %3939 = lshr i64 %3919, 63
  %3940 = lshr i64 %3917, 57
  %3941 = and i64 %3940, 1
  %3942 = xor i64 %3937, %3939
  %3943 = xor i64 %3937, %3941
  %3944 = add nuw nsw i64 %3942, %3943
  %3945 = icmp eq i64 %3944, 2
  %3946 = zext i1 %3945 to i8
  store i8 %3946, i8* %51, align 1
  %3947 = load i64, i64* %RBP.i, align 8
  %3948 = add i64 %3947, -76
  %3949 = add i64 %3872, 36
  store i64 %3949, i64* %3, align 8
  %3950 = inttoptr i64 %3948 to i32*
  %3951 = load i32, i32* %3950, align 4
  %3952 = zext i32 %3951 to i64
  store i64 %3952, i64* %RBX.i2043, align 8
  %3953 = add i64 %3947, -56
  %3954 = add i64 %3872, 39
  store i64 %3954, i64* %3, align 8
  %3955 = inttoptr i64 %3953 to i32*
  %3956 = load i32, i32* %3955, align 4
  %3957 = add i32 %3956, %3951
  %3958 = zext i32 %3957 to i64
  store i64 %3958, i64* %RBX.i2043, align 8
  %3959 = icmp ult i32 %3957, %3951
  %3960 = icmp ult i32 %3957, %3956
  %3961 = or i1 %3959, %3960
  %3962 = zext i1 %3961 to i8
  store i8 %3962, i8* %26, align 1
  %3963 = and i32 %3957, 255
  %3964 = tail call i32 @llvm.ctpop.i32(i32 %3963)
  %3965 = trunc i32 %3964 to i8
  %3966 = and i8 %3965, 1
  %3967 = xor i8 %3966, 1
  store i8 %3967, i8* %33, align 1
  %3968 = xor i32 %3956, %3951
  %3969 = xor i32 %3968, %3957
  %3970 = lshr i32 %3969, 4
  %3971 = trunc i32 %3970 to i8
  %3972 = and i8 %3971, 1
  store i8 %3972, i8* %39, align 1
  %3973 = icmp eq i32 %3957, 0
  %3974 = zext i1 %3973 to i8
  store i8 %3974, i8* %42, align 1
  %3975 = lshr i32 %3957, 31
  %3976 = trunc i32 %3975 to i8
  store i8 %3976, i8* %45, align 1
  %3977 = lshr i32 %3951, 31
  %3978 = lshr i32 %3956, 31
  %3979 = xor i32 %3975, %3977
  %3980 = xor i32 %3975, %3978
  %3981 = add nuw nsw i32 %3979, %3980
  %3982 = icmp eq i32 %3981, 2
  %3983 = zext i1 %3982 to i8
  store i8 %3983, i8* %51, align 1
  %3984 = sext i32 %3957 to i64
  store i64 %3984, i64* %RDX.i2040.pre-phi, align 8
  %3985 = shl nsw i64 %3984, 2
  %3986 = add i64 %3920, %3985
  %3987 = load i32, i32* %R10D.i1599, align 4
  %3988 = add i64 %3872, 46
  store i64 %3988, i64* %3, align 8
  %3989 = inttoptr i64 %3986 to i32*
  store i32 %3987, i32* %3989, align 4
  %3990 = load i64, i64* %RBP.i, align 8
  %3991 = add i64 %3990, -148
  %3992 = load i64, i64* %3, align 8
  %3993 = add i64 %3992, 7
  store i64 %3993, i64* %3, align 8
  %3994 = inttoptr i64 %3991 to i32*
  %3995 = load i32, i32* %3994, align 4
  %3996 = zext i32 %3995 to i64
  store i64 %3996, i64* %487, align 8
  %3997 = add i64 %3990, -72
  %3998 = add i64 %3992, 10
  store i64 %3998, i64* %3, align 8
  %3999 = inttoptr i64 %3997 to i32*
  %4000 = load i32, i32* %3999, align 4
  %4001 = zext i32 %4000 to i64
  store i64 %4001, i64* %RBX.i2043, align 8
  %4002 = add i64 %3990, -60
  %4003 = add i64 %3992, 13
  store i64 %4003, i64* %3, align 8
  %4004 = inttoptr i64 %4002 to i32*
  %4005 = load i32, i32* %4004, align 4
  %4006 = add i32 %4005, %4000
  %4007 = zext i32 %4006 to i64
  store i64 %4007, i64* %RBX.i2043, align 8
  %4008 = sext i32 %4006 to i64
  %4009 = shl nsw i64 %4008, 6
  store i64 %4009, i64* %RDX.i2040.pre-phi, align 8
  %4010 = load i64, i64* %RCX.i2097, align 8
  %4011 = add i64 %4009, %4010
  store i64 %4011, i64* %RCX.i2097, align 8
  %4012 = icmp ult i64 %4011, %4010
  %4013 = icmp ult i64 %4011, %4009
  %4014 = or i1 %4012, %4013
  %4015 = zext i1 %4014 to i8
  store i8 %4015, i8* %26, align 1
  %4016 = trunc i64 %4011 to i32
  %4017 = and i32 %4016, 255
  %4018 = tail call i32 @llvm.ctpop.i32(i32 %4017)
  %4019 = trunc i32 %4018 to i8
  %4020 = and i8 %4019, 1
  %4021 = xor i8 %4020, 1
  store i8 %4021, i8* %33, align 1
  %4022 = xor i64 %4010, %4011
  %4023 = lshr i64 %4022, 4
  %4024 = trunc i64 %4023 to i8
  %4025 = and i8 %4024, 1
  store i8 %4025, i8* %39, align 1
  %4026 = icmp eq i64 %4011, 0
  %4027 = zext i1 %4026 to i8
  store i8 %4027, i8* %42, align 1
  %4028 = lshr i64 %4011, 63
  %4029 = trunc i64 %4028 to i8
  store i8 %4029, i8* %45, align 1
  %4030 = lshr i64 %4010, 63
  %4031 = lshr i64 %4008, 57
  %4032 = and i64 %4031, 1
  %4033 = xor i64 %4028, %4030
  %4034 = xor i64 %4028, %4032
  %4035 = add nuw nsw i64 %4033, %4034
  %4036 = icmp eq i64 %4035, 2
  %4037 = zext i1 %4036 to i8
  store i8 %4037, i8* %51, align 1
  %4038 = load i64, i64* %RBP.i, align 8
  %4039 = add i64 %4038, -76
  %4040 = add i64 %3992, 26
  store i64 %4040, i64* %3, align 8
  %4041 = inttoptr i64 %4039 to i32*
  %4042 = load i32, i32* %4041, align 4
  %4043 = zext i32 %4042 to i64
  store i64 %4043, i64* %RBX.i2043, align 8
  %4044 = add i64 %4038, -56
  %4045 = add i64 %3992, 29
  store i64 %4045, i64* %3, align 8
  %4046 = inttoptr i64 %4044 to i32*
  %4047 = load i32, i32* %4046, align 4
  %4048 = add i32 %4047, %4042
  %4049 = zext i32 %4048 to i64
  store i64 %4049, i64* %RBX.i2043, align 8
  %4050 = icmp ult i32 %4048, %4042
  %4051 = icmp ult i32 %4048, %4047
  %4052 = or i1 %4050, %4051
  %4053 = zext i1 %4052 to i8
  store i8 %4053, i8* %26, align 1
  %4054 = and i32 %4048, 255
  %4055 = tail call i32 @llvm.ctpop.i32(i32 %4054)
  %4056 = trunc i32 %4055 to i8
  %4057 = and i8 %4056, 1
  %4058 = xor i8 %4057, 1
  store i8 %4058, i8* %33, align 1
  %4059 = xor i32 %4047, %4042
  %4060 = xor i32 %4059, %4048
  %4061 = lshr i32 %4060, 4
  %4062 = trunc i32 %4061 to i8
  %4063 = and i8 %4062, 1
  store i8 %4063, i8* %39, align 1
  %4064 = icmp eq i32 %4048, 0
  %4065 = zext i1 %4064 to i8
  store i8 %4065, i8* %42, align 1
  %4066 = lshr i32 %4048, 31
  %4067 = trunc i32 %4066 to i8
  store i8 %4067, i8* %45, align 1
  %4068 = lshr i32 %4042, 31
  %4069 = lshr i32 %4047, 31
  %4070 = xor i32 %4066, %4068
  %4071 = xor i32 %4066, %4069
  %4072 = add nuw nsw i32 %4070, %4071
  %4073 = icmp eq i32 %4072, 2
  %4074 = zext i1 %4073 to i8
  store i8 %4074, i8* %51, align 1
  %4075 = sext i32 %4048 to i64
  store i64 %4075, i64* %RDX.i2040.pre-phi, align 8
  %4076 = shl nsw i64 %4075, 2
  %4077 = add i64 %4011, %4076
  %4078 = add i64 %3992, 35
  store i64 %4078, i64* %3, align 8
  %4079 = inttoptr i64 %4077 to i32*
  %4080 = load i32, i32* %4079, align 4
  %4081 = zext i32 %4080 to i64
  %4082 = shl nuw i64 %4081, 32
  %4083 = ashr i64 %4082, 33
  %4084 = and i64 %4083, 4294967295
  store i64 %4084, i64* %RBX.i2043, align 8
  %4085 = load i32, i32* %R10D.i1599, align 4
  %4086 = trunc i64 %4083 to i32
  %4087 = add i32 %4086, %4085
  %4088 = zext i32 %4087 to i64
  store i64 %4088, i64* %487, align 8
  %4089 = icmp ult i32 %4087, %4085
  %4090 = icmp ult i32 %4087, %4086
  %4091 = or i1 %4089, %4090
  %4092 = zext i1 %4091 to i8
  store i8 %4092, i8* %26, align 1
  %4093 = and i32 %4087, 255
  %4094 = tail call i32 @llvm.ctpop.i32(i32 %4093)
  %4095 = trunc i32 %4094 to i8
  %4096 = and i8 %4095, 1
  %4097 = xor i8 %4096, 1
  store i8 %4097, i8* %33, align 1
  %4098 = xor i32 %4086, %4085
  %4099 = xor i32 %4098, %4087
  %4100 = lshr i32 %4099, 4
  %4101 = trunc i32 %4100 to i8
  %4102 = and i8 %4101, 1
  store i8 %4102, i8* %39, align 1
  %4103 = icmp eq i32 %4087, 0
  %4104 = zext i1 %4103 to i8
  store i8 %4104, i8* %42, align 1
  %4105 = lshr i32 %4087, 31
  %4106 = trunc i32 %4105 to i8
  store i8 %4106, i8* %45, align 1
  %4107 = lshr i32 %4085, 31
  %4108 = lshr i64 %4083, 31
  %4109 = trunc i64 %4108 to i32
  %4110 = and i32 %4109, 1
  %4111 = xor i32 %4105, %4107
  %4112 = xor i32 %4105, %4110
  %4113 = add nuw nsw i32 %4111, %4112
  %4114 = icmp eq i32 %4113, 2
  %4115 = zext i1 %4114 to i8
  store i8 %4115, i8* %51, align 1
  %4116 = load i64, i64* %RBP.i, align 8
  %4117 = add i64 %4116, -72
  %4118 = add i64 %3992, 43
  store i64 %4118, i64* %3, align 8
  %4119 = inttoptr i64 %4117 to i32*
  %4120 = load i32, i32* %4119, align 4
  %4121 = zext i32 %4120 to i64
  store i64 %4121, i64* %RBX.i2043, align 8
  %4122 = add i64 %4116, -60
  %4123 = add i64 %3992, 46
  store i64 %4123, i64* %3, align 8
  %4124 = inttoptr i64 %4122 to i32*
  %4125 = load i32, i32* %4124, align 4
  %4126 = add i32 %4125, %4120
  %4127 = zext i32 %4126 to i64
  store i64 %4127, i64* %RBX.i2043, align 8
  %4128 = sext i32 %4126 to i64
  %4129 = shl nsw i64 %4128, 6
  store i64 %4129, i64* %RCX.i2097, align 8
  %4130 = load i64, i64* %RAX.i2060, align 8
  %4131 = add i64 %4129, %4130
  store i64 %4131, i64* %RAX.i2060, align 8
  %4132 = icmp ult i64 %4131, %4130
  %4133 = icmp ult i64 %4131, %4129
  %4134 = or i1 %4132, %4133
  %4135 = zext i1 %4134 to i8
  store i8 %4135, i8* %26, align 1
  %4136 = trunc i64 %4131 to i32
  %4137 = and i32 %4136, 255
  %4138 = tail call i32 @llvm.ctpop.i32(i32 %4137)
  %4139 = trunc i32 %4138 to i8
  %4140 = and i8 %4139, 1
  %4141 = xor i8 %4140, 1
  store i8 %4141, i8* %33, align 1
  %4142 = xor i64 %4130, %4131
  %4143 = lshr i64 %4142, 4
  %4144 = trunc i64 %4143 to i8
  %4145 = and i8 %4144, 1
  store i8 %4145, i8* %39, align 1
  %4146 = icmp eq i64 %4131, 0
  %4147 = zext i1 %4146 to i8
  store i8 %4147, i8* %42, align 1
  %4148 = lshr i64 %4131, 63
  %4149 = trunc i64 %4148 to i8
  store i8 %4149, i8* %45, align 1
  %4150 = lshr i64 %4130, 63
  %4151 = lshr i64 %4128, 57
  %4152 = and i64 %4151, 1
  %4153 = xor i64 %4148, %4150
  %4154 = xor i64 %4148, %4152
  %4155 = add nuw nsw i64 %4153, %4154
  %4156 = icmp eq i64 %4155, 2
  %4157 = zext i1 %4156 to i8
  store i8 %4157, i8* %51, align 1
  %4158 = load i64, i64* %RBP.i, align 8
  %4159 = add i64 %4158, -76
  %4160 = add i64 %3992, 59
  store i64 %4160, i64* %3, align 8
  %4161 = inttoptr i64 %4159 to i32*
  %4162 = load i32, i32* %4161, align 4
  %4163 = zext i32 %4162 to i64
  store i64 %4163, i64* %RBX.i2043, align 8
  %4164 = add i64 %4158, -56
  %4165 = add i64 %3992, 62
  store i64 %4165, i64* %3, align 8
  %4166 = inttoptr i64 %4164 to i32*
  %4167 = load i32, i32* %4166, align 4
  %4168 = add i32 %4167, %4162
  %4169 = zext i32 %4168 to i64
  store i64 %4169, i64* %RBX.i2043, align 8
  %4170 = icmp ult i32 %4168, %4162
  %4171 = icmp ult i32 %4168, %4167
  %4172 = or i1 %4170, %4171
  %4173 = zext i1 %4172 to i8
  store i8 %4173, i8* %26, align 1
  %4174 = and i32 %4168, 255
  %4175 = tail call i32 @llvm.ctpop.i32(i32 %4174)
  %4176 = trunc i32 %4175 to i8
  %4177 = and i8 %4176, 1
  %4178 = xor i8 %4177, 1
  store i8 %4178, i8* %33, align 1
  %4179 = xor i32 %4167, %4162
  %4180 = xor i32 %4179, %4168
  %4181 = lshr i32 %4180, 4
  %4182 = trunc i32 %4181 to i8
  %4183 = and i8 %4182, 1
  store i8 %4183, i8* %39, align 1
  %4184 = icmp eq i32 %4168, 0
  %4185 = zext i1 %4184 to i8
  store i8 %4185, i8* %42, align 1
  %4186 = lshr i32 %4168, 31
  %4187 = trunc i32 %4186 to i8
  store i8 %4187, i8* %45, align 1
  %4188 = lshr i32 %4162, 31
  %4189 = lshr i32 %4167, 31
  %4190 = xor i32 %4186, %4188
  %4191 = xor i32 %4186, %4189
  %4192 = add nuw nsw i32 %4190, %4191
  %4193 = icmp eq i32 %4192, 2
  %4194 = zext i1 %4193 to i8
  store i8 %4194, i8* %51, align 1
  %4195 = sext i32 %4168 to i64
  store i64 %4195, i64* %RCX.i2097, align 8
  %4196 = shl nsw i64 %4195, 2
  %4197 = add i64 %4131, %4196
  %4198 = load i32, i32* %R10D.i1599, align 4
  %4199 = add i64 %3992, 69
  store i64 %4199, i64* %3, align 8
  %4200 = inttoptr i64 %4197 to i32*
  store i32 %4198, i32* %4200, align 4
  %4201 = load i64, i64* %RBP.i, align 8
  %4202 = add i64 %4201, -132
  %4203 = load i64, i64* %3, align 8
  %4204 = add i64 %4203, 7
  store i64 %4204, i64* %3, align 8
  %4205 = inttoptr i64 %4202 to i32*
  %4206 = load i32, i32* %4205, align 4
  store i8 0, i8* %26, align 1
  %4207 = and i32 %4206, 255
  %4208 = tail call i32 @llvm.ctpop.i32(i32 %4207)
  %4209 = trunc i32 %4208 to i8
  %4210 = and i8 %4209, 1
  %4211 = xor i8 %4210, 1
  store i8 %4211, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %4212 = icmp eq i32 %4206, 0
  %4213 = zext i1 %4212 to i8
  store i8 %4213, i8* %42, align 1
  %4214 = lshr i32 %4206, 31
  %4215 = trunc i32 %4214 to i8
  store i8 %4215, i8* %45, align 1
  store i8 0, i8* %51, align 1
  %.v224 = select i1 %4212, i64 13, i64 88
  %4216 = add i64 %4203, %.v224
  store i64 ptrtoint (%G__0x723720_type* @G__0x723720 to i64), i64* %RAX.i2060, align 8
  %4217 = add i64 %4201, -72
  %4218 = add i64 %4216, 13
  store i64 %4218, i64* %3, align 8
  %4219 = inttoptr i64 %4217 to i32*
  %4220 = load i32, i32* %4219, align 4
  %4221 = zext i32 %4220 to i64
  store i64 %4221, i64* %RCX.i2097, align 8
  %4222 = add i64 %4201, -60
  %4223 = add i64 %4216, 16
  store i64 %4223, i64* %3, align 8
  %4224 = inttoptr i64 %4222 to i32*
  %4225 = load i32, i32* %4224, align 4
  %4226 = add i32 %4225, %4220
  %4227 = zext i32 %4226 to i64
  store i64 %4227, i64* %RCX.i2097, align 8
  %4228 = sext i32 %4226 to i64
  %4229 = shl nsw i64 %4228, 6
  store i64 %4229, i64* %RDX.i2040.pre-phi, align 8
  %4230 = add i64 %4229, ptrtoint (%G__0x723720_type* @G__0x723720 to i64)
  store i64 %4230, i64* %RAX.i2060, align 8
  %4231 = icmp ult i64 %4230, ptrtoint (%G__0x723720_type* @G__0x723720 to i64)
  %4232 = icmp ult i64 %4230, %4229
  %4233 = or i1 %4231, %4232
  %4234 = zext i1 %4233 to i8
  store i8 %4234, i8* %26, align 1
  %4235 = trunc i64 %4230 to i32
  %4236 = and i32 %4235, 248
  %4237 = tail call i32 @llvm.ctpop.i32(i32 %4236)
  %4238 = trunc i32 %4237 to i8
  %4239 = and i8 %4238, 1
  %4240 = xor i8 %4239, 1
  store i8 %4240, i8* %33, align 1
  %4241 = xor i64 %4230, ptrtoint (%G__0x723720_type* @G__0x723720 to i64)
  %4242 = lshr i64 %4241, 4
  %4243 = trunc i64 %4242 to i8
  %4244 = and i8 %4243, 1
  store i8 %4244, i8* %39, align 1
  %4245 = icmp eq i64 %4230, 0
  %4246 = zext i1 %4245 to i8
  store i8 %4246, i8* %42, align 1
  %4247 = lshr i64 %4230, 63
  %4248 = trunc i64 %4247 to i8
  store i8 %4248, i8* %45, align 1
  %4249 = lshr i64 %4228, 57
  %4250 = and i64 %4249, 1
  %4251 = xor i64 %4247, lshr (i64 ptrtoint (%G__0x723720_type* @G__0x723720 to i64), i64 63)
  %4252 = xor i64 %4247, %4250
  %4253 = add nuw nsw i64 %4251, %4252
  %4254 = icmp eq i64 %4253, 2
  %4255 = zext i1 %4254 to i8
  store i8 %4255, i8* %51, align 1
  %4256 = load i64, i64* %RBP.i, align 8
  %4257 = add i64 %4256, -76
  %4258 = add i64 %4216, 29
  store i64 %4258, i64* %3, align 8
  %4259 = inttoptr i64 %4257 to i32*
  %4260 = load i32, i32* %4259, align 4
  %4261 = zext i32 %4260 to i64
  store i64 %4261, i64* %RCX.i2097, align 8
  %4262 = add i64 %4256, -56
  %4263 = add i64 %4216, 32
  store i64 %4263, i64* %3, align 8
  %4264 = inttoptr i64 %4262 to i32*
  %4265 = load i32, i32* %4264, align 4
  %4266 = add i32 %4265, %4260
  %4267 = zext i32 %4266 to i64
  store i64 %4267, i64* %RCX.i2097, align 8
  %4268 = icmp ult i32 %4266, %4260
  %4269 = icmp ult i32 %4266, %4265
  %4270 = or i1 %4268, %4269
  %4271 = zext i1 %4270 to i8
  store i8 %4271, i8* %26, align 1
  %4272 = and i32 %4266, 255
  %4273 = tail call i32 @llvm.ctpop.i32(i32 %4272)
  %4274 = trunc i32 %4273 to i8
  %4275 = and i8 %4274, 1
  %4276 = xor i8 %4275, 1
  store i8 %4276, i8* %33, align 1
  %4277 = xor i32 %4265, %4260
  %4278 = xor i32 %4277, %4266
  %4279 = lshr i32 %4278, 4
  %4280 = trunc i32 %4279 to i8
  %4281 = and i8 %4280, 1
  store i8 %4281, i8* %39, align 1
  %4282 = icmp eq i32 %4266, 0
  %4283 = zext i1 %4282 to i8
  store i8 %4283, i8* %42, align 1
  %4284 = lshr i32 %4266, 31
  %4285 = trunc i32 %4284 to i8
  store i8 %4285, i8* %45, align 1
  %4286 = lshr i32 %4260, 31
  %4287 = lshr i32 %4265, 31
  %4288 = xor i32 %4284, %4286
  %4289 = xor i32 %4284, %4287
  %4290 = add nuw nsw i32 %4288, %4289
  %4291 = icmp eq i32 %4290, 2
  %4292 = zext i1 %4291 to i8
  store i8 %4292, i8* %51, align 1
  %4293 = sext i32 %4266 to i64
  store i64 %4293, i64* %RDX.i2040.pre-phi, align 8
  %4294 = shl nsw i64 %4293, 2
  %4295 = add i64 %4230, %4294
  %4296 = add i64 %4216, 38
  store i64 %4296, i64* %3, align 8
  %4297 = inttoptr i64 %4295 to i32*
  %4298 = load i32, i32* %4297, align 4
  %4299 = zext i32 %4298 to i64
  store i64 %4299, i64* %RCX.i2097, align 8
  %4300 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*), align 8
  %4301 = add i64 %4216, 52
  store i64 %4301, i64* %3, align 8
  %4302 = add i64 %4300, 13112
  store i64 %4302, i64* %RAX.i2060, align 8
  %4303 = icmp ugt i64 %4300, -13113
  %4304 = zext i1 %4303 to i8
  store i8 %4304, i8* %26, align 1
  %4305 = trunc i64 %4302 to i32
  %4306 = and i32 %4305, 255
  %4307 = tail call i32 @llvm.ctpop.i32(i32 %4306)
  %4308 = trunc i32 %4307 to i8
  %4309 = and i8 %4308, 1
  %4310 = xor i8 %4309, 1
  store i8 %4310, i8* %33, align 1
  %4311 = xor i64 %4300, 16
  %4312 = xor i64 %4311, %4302
  %4313 = lshr i64 %4312, 4
  %4314 = trunc i64 %4313 to i8
  %4315 = and i8 %4314, 1
  store i8 %4315, i8* %39, align 1
  %4316 = icmp eq i64 %4302, 0
  %4317 = zext i1 %4316 to i8
  store i8 %4317, i8* %42, align 1
  %4318 = lshr i64 %4302, 63
  %4319 = trunc i64 %4318 to i8
  store i8 %4319, i8* %45, align 1
  %4320 = lshr i64 %4300, 63
  %4321 = xor i64 %4318, %4320
  %4322 = add nuw nsw i64 %4321, %4318
  %4323 = icmp eq i64 %4322, 2
  %4324 = zext i1 %4323 to i8
  store i8 %4324, i8* %51, align 1
  %4325 = add i64 %4256, -72
  br i1 %4212, label %block_43f712, label %block_.L_43f75d

block_43f712:                                     ; preds = %block_43f50f
  %4326 = add i64 %4216, 56
  store i64 %4326, i64* %3, align 8
  %4327 = inttoptr i64 %4325 to i32*
  %4328 = load i32, i32* %4327, align 4
  %4329 = sext i32 %4328 to i64
  %4330 = shl nsw i64 %4329, 6
  store i64 %4330, i64* %RDX.i2040.pre-phi, align 8
  %4331 = add i64 %4330, %4302
  store i64 %4331, i64* %RAX.i2060, align 8
  %4332 = icmp ult i64 %4331, %4302
  %4333 = icmp ult i64 %4331, %4330
  %4334 = or i1 %4332, %4333
  %4335 = zext i1 %4334 to i8
  store i8 %4335, i8* %26, align 1
  %4336 = trunc i64 %4331 to i32
  %4337 = and i32 %4336, 255
  %4338 = tail call i32 @llvm.ctpop.i32(i32 %4337)
  %4339 = trunc i32 %4338 to i8
  %4340 = and i8 %4339, 1
  %4341 = xor i8 %4340, 1
  store i8 %4341, i8* %33, align 1
  %4342 = xor i64 %4302, %4331
  %4343 = lshr i64 %4342, 4
  %4344 = trunc i64 %4343 to i8
  %4345 = and i8 %4344, 1
  store i8 %4345, i8* %39, align 1
  %4346 = icmp eq i64 %4331, 0
  %4347 = zext i1 %4346 to i8
  store i8 %4347, i8* %42, align 1
  %4348 = lshr i64 %4331, 63
  %4349 = trunc i64 %4348 to i8
  store i8 %4349, i8* %45, align 1
  %4350 = lshr i64 %4329, 57
  %4351 = and i64 %4350, 1
  %4352 = xor i64 %4348, %4318
  %4353 = xor i64 %4348, %4351
  %4354 = add nuw nsw i64 %4352, %4353
  %4355 = icmp eq i64 %4354, 2
  %4356 = zext i1 %4355 to i8
  store i8 %4356, i8* %51, align 1
  %4357 = add i64 %4216, 67
  store i64 %4357, i64* %3, align 8
  %4358 = load i32, i32* %4259, align 4
  %4359 = sext i32 %4358 to i64
  store i64 %4359, i64* %RDX.i2040.pre-phi, align 8
  %4360 = shl nsw i64 %4359, 2
  %4361 = add i64 %4360, %4331
  %4362 = add i64 %4216, 70
  store i64 %4362, i64* %3, align 8
  %4363 = inttoptr i64 %4361 to i32*
  store i32 %4298, i32* %4363, align 4
  %4364 = load i64, i64* %3, align 8
  %4365 = add i64 %4364, 85
  store i64 %4365, i64* %3, align 8
  br label %block_.L_43f7ad

block_.L_43f75d:                                  ; preds = %block_43f50f
  %4366 = add i64 %4216, 55
  store i64 %4366, i64* %3, align 8
  %4367 = inttoptr i64 %4325 to i32*
  %4368 = load i32, i32* %4367, align 4
  %4369 = zext i32 %4368 to i64
  store i64 %4369, i64* %RSI.i2083, align 8
  %4370 = add i64 %4256, -104
  %4371 = add i64 %4216, 58
  store i64 %4371, i64* %3, align 8
  %4372 = inttoptr i64 %4370 to i32*
  %4373 = load i32, i32* %4372, align 4
  %4374 = add i32 %4373, %4368
  %4375 = zext i32 %4374 to i64
  store i64 %4375, i64* %RSI.i2083, align 8
  %4376 = sext i32 %4374 to i64
  %4377 = shl nsw i64 %4376, 6
  store i64 %4377, i64* %RDX.i2040.pre-phi, align 8
  %4378 = add i64 %4377, %4302
  store i64 %4378, i64* %RAX.i2060, align 8
  %4379 = icmp ult i64 %4378, %4302
  %4380 = icmp ult i64 %4378, %4377
  %4381 = or i1 %4379, %4380
  %4382 = zext i1 %4381 to i8
  store i8 %4382, i8* %26, align 1
  %4383 = trunc i64 %4378 to i32
  %4384 = and i32 %4383, 255
  %4385 = tail call i32 @llvm.ctpop.i32(i32 %4384)
  %4386 = trunc i32 %4385 to i8
  %4387 = and i8 %4386, 1
  %4388 = xor i8 %4387, 1
  store i8 %4388, i8* %33, align 1
  %4389 = xor i64 %4302, %4378
  %4390 = lshr i64 %4389, 4
  %4391 = trunc i64 %4390 to i8
  %4392 = and i8 %4391, 1
  store i8 %4392, i8* %39, align 1
  %4393 = icmp eq i64 %4378, 0
  %4394 = zext i1 %4393 to i8
  store i8 %4394, i8* %42, align 1
  %4395 = lshr i64 %4378, 63
  %4396 = trunc i64 %4395 to i8
  store i8 %4396, i8* %45, align 1
  %4397 = lshr i64 %4376, 57
  %4398 = and i64 %4397, 1
  %4399 = xor i64 %4395, %4318
  %4400 = xor i64 %4395, %4398
  %4401 = add nuw nsw i64 %4399, %4400
  %4402 = icmp eq i64 %4401, 2
  %4403 = zext i1 %4402 to i8
  store i8 %4403, i8* %51, align 1
  %4404 = load i64, i64* %RBP.i, align 8
  %4405 = add i64 %4404, -76
  %4406 = add i64 %4216, 71
  store i64 %4406, i64* %3, align 8
  %4407 = inttoptr i64 %4405 to i32*
  %4408 = load i32, i32* %4407, align 4
  %4409 = zext i32 %4408 to i64
  store i64 %4409, i64* %RSI.i2083, align 8
  %4410 = add i64 %4404, -108
  %4411 = add i64 %4216, 74
  store i64 %4411, i64* %3, align 8
  %4412 = inttoptr i64 %4410 to i32*
  %4413 = load i32, i32* %4412, align 4
  %4414 = add i32 %4413, %4408
  %4415 = zext i32 %4414 to i64
  store i64 %4415, i64* %RSI.i2083, align 8
  %4416 = icmp ult i32 %4414, %4408
  %4417 = icmp ult i32 %4414, %4413
  %4418 = or i1 %4416, %4417
  %4419 = zext i1 %4418 to i8
  store i8 %4419, i8* %26, align 1
  %4420 = and i32 %4414, 255
  %4421 = tail call i32 @llvm.ctpop.i32(i32 %4420)
  %4422 = trunc i32 %4421 to i8
  %4423 = and i8 %4422, 1
  %4424 = xor i8 %4423, 1
  store i8 %4424, i8* %33, align 1
  %4425 = xor i32 %4413, %4408
  %4426 = xor i32 %4425, %4414
  %4427 = lshr i32 %4426, 4
  %4428 = trunc i32 %4427 to i8
  %4429 = and i8 %4428, 1
  store i8 %4429, i8* %39, align 1
  %4430 = icmp eq i32 %4414, 0
  %4431 = zext i1 %4430 to i8
  store i8 %4431, i8* %42, align 1
  %4432 = lshr i32 %4414, 31
  %4433 = trunc i32 %4432 to i8
  store i8 %4433, i8* %45, align 1
  %4434 = lshr i32 %4408, 31
  %4435 = lshr i32 %4413, 31
  %4436 = xor i32 %4432, %4434
  %4437 = xor i32 %4432, %4435
  %4438 = add nuw nsw i32 %4436, %4437
  %4439 = icmp eq i32 %4438, 2
  %4440 = zext i1 %4439 to i8
  store i8 %4440, i8* %51, align 1
  %4441 = sext i32 %4414 to i64
  store i64 %4441, i64* %RDX.i2040.pre-phi, align 8
  %4442 = shl nsw i64 %4441, 2
  %4443 = add i64 %4378, %4442
  %4444 = load i32, i32* %ECX.i2096, align 4
  %4445 = add i64 %4216, 80
  store i64 %4445, i64* %3, align 8
  %4446 = inttoptr i64 %4443 to i32*
  store i32 %4444, i32* %4446, align 4
  %.pre176 = load i64, i64* %3, align 8
  br label %block_.L_43f7ad

block_.L_43f7ad:                                  ; preds = %block_.L_43f75d, %block_43f712
  %4447 = phi i64 [ %.pre176, %block_.L_43f75d ], [ %4365, %block_43f712 ]
  %4448 = load i64, i64* %RBP.i, align 8
  %4449 = add i64 %4448, -72
  %4450 = add i64 %4447, 8
  store i64 %4450, i64* %3, align 8
  %4451 = inttoptr i64 %4449 to i32*
  %4452 = load i32, i32* %4451, align 4
  %4453 = add i32 %4452, 1
  %4454 = zext i32 %4453 to i64
  store i64 %4454, i64* %RAX.i2060, align 8
  %4455 = icmp eq i32 %4452, -1
  %4456 = icmp eq i32 %4453, 0
  %4457 = or i1 %4455, %4456
  %4458 = zext i1 %4457 to i8
  store i8 %4458, i8* %26, align 1
  %4459 = and i32 %4453, 255
  %4460 = tail call i32 @llvm.ctpop.i32(i32 %4459)
  %4461 = trunc i32 %4460 to i8
  %4462 = and i8 %4461, 1
  %4463 = xor i8 %4462, 1
  store i8 %4463, i8* %33, align 1
  %4464 = xor i32 %4453, %4452
  %4465 = lshr i32 %4464, 4
  %4466 = trunc i32 %4465 to i8
  %4467 = and i8 %4466, 1
  store i8 %4467, i8* %39, align 1
  %4468 = zext i1 %4456 to i8
  store i8 %4468, i8* %42, align 1
  %4469 = lshr i32 %4453, 31
  %4470 = trunc i32 %4469 to i8
  store i8 %4470, i8* %45, align 1
  %4471 = lshr i32 %4452, 31
  %4472 = xor i32 %4469, %4471
  %4473 = add nuw nsw i32 %4472, %4469
  %4474 = icmp eq i32 %4473, 2
  %4475 = zext i1 %4474 to i8
  store i8 %4475, i8* %51, align 1
  %4476 = add i64 %4447, 14
  store i64 %4476, i64* %3, align 8
  store i32 %4453, i32* %4451, align 4
  %4477 = load i64, i64* %3, align 8
  %4478 = add i64 %4477, -694
  store i64 %4478, i64* %3, align 8
  br label %block_.L_43f505

block_.L_43f7c0:                                  ; preds = %block_.L_43f505
  %4479 = add i64 %2982, -76
  %4480 = add i64 %3010, 8
  store i64 %4480, i64* %3, align 8
  %4481 = inttoptr i64 %4479 to i32*
  %4482 = load i32, i32* %4481, align 4
  %4483 = add i32 %4482, 1
  %4484 = zext i32 %4483 to i64
  store i64 %4484, i64* %RAX.i2060, align 8
  %4485 = icmp eq i32 %4482, -1
  %4486 = icmp eq i32 %4483, 0
  %4487 = or i1 %4485, %4486
  %4488 = zext i1 %4487 to i8
  store i8 %4488, i8* %26, align 1
  %4489 = and i32 %4483, 255
  %4490 = tail call i32 @llvm.ctpop.i32(i32 %4489)
  %4491 = trunc i32 %4490 to i8
  %4492 = and i8 %4491, 1
  %4493 = xor i8 %4492, 1
  store i8 %4493, i8* %33, align 1
  %4494 = xor i32 %4483, %4482
  %4495 = lshr i32 %4494, 4
  %4496 = trunc i32 %4495 to i8
  %4497 = and i8 %4496, 1
  store i8 %4497, i8* %39, align 1
  %4498 = zext i1 %4486 to i8
  store i8 %4498, i8* %42, align 1
  %4499 = lshr i32 %4483, 31
  %4500 = trunc i32 %4499 to i8
  store i8 %4500, i8* %45, align 1
  %4501 = lshr i32 %4482, 31
  %4502 = xor i32 %4499, %4501
  %4503 = add nuw nsw i32 %4502, %4499
  %4504 = icmp eq i32 %4503, 2
  %4505 = zext i1 %4504 to i8
  store i8 %4505, i8* %51, align 1
  %4506 = add i64 %3010, 14
  store i64 %4506, i64* %3, align 8
  store i32 %4483, i32* %4481, align 4
  %4507 = load i64, i64* %3, align 8
  %4508 = add i64 %4507, -730
  store i64 %4508, i64* %3, align 8
  br label %block_.L_43f4f4

block_.L_43f7d3:                                  ; preds = %block_.L_43f4f4
  %4509 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*), align 8
  store i64 %4509, i64* %RAX.i2060, align 8
  %4510 = add i64 %4509, 72392
  %4511 = add i64 %2977, 15
  store i64 %4511, i64* %3, align 8
  %4512 = inttoptr i64 %4510 to i32*
  %4513 = load i32, i32* %4512, align 4
  %4514 = add i32 %4513, -1
  %4515 = icmp eq i32 %4513, 0
  %4516 = zext i1 %4515 to i8
  store i8 %4516, i8* %26, align 1
  %4517 = and i32 %4514, 255
  %4518 = tail call i32 @llvm.ctpop.i32(i32 %4517)
  %4519 = trunc i32 %4518 to i8
  %4520 = and i8 %4519, 1
  %4521 = xor i8 %4520, 1
  store i8 %4521, i8* %33, align 1
  %4522 = xor i32 %4514, %4513
  %4523 = lshr i32 %4522, 4
  %4524 = trunc i32 %4523 to i8
  %4525 = and i8 %4524, 1
  store i8 %4525, i8* %39, align 1
  %4526 = icmp eq i32 %4514, 0
  %4527 = zext i1 %4526 to i8
  store i8 %4527, i8* %42, align 1
  %4528 = lshr i32 %4514, 31
  %4529 = trunc i32 %4528 to i8
  store i8 %4529, i8* %45, align 1
  %4530 = lshr i32 %4513, 31
  %4531 = xor i32 %4528, %4530
  %4532 = add nuw nsw i32 %4531, %4530
  %4533 = icmp eq i32 %4532, 2
  %4534 = zext i1 %4533 to i8
  store i8 %4534, i8* %51, align 1
  %.v192 = select i1 %4526, i64 292, i64 21
  %4535 = add i64 %2977, %.v192
  store i64 %4535, i64* %3, align 8
  br i1 %4526, label %block_.L_43f8f7, label %block_43f7e8

block_43f7e8:                                     ; preds = %block_.L_43f7d3
  %4536 = add i64 %2949, -116
  %4537 = add i64 %4535, 4
  store i64 %4537, i64* %3, align 8
  %4538 = inttoptr i64 %4536 to i32*
  %4539 = load i32, i32* %4538, align 4
  store i8 0, i8* %26, align 1
  %4540 = and i32 %4539, 255
  %4541 = tail call i32 @llvm.ctpop.i32(i32 %4540)
  %4542 = trunc i32 %4541 to i8
  %4543 = and i8 %4542, 1
  %4544 = xor i8 %4543, 1
  store i8 %4544, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %4545 = icmp eq i32 %4539, 0
  %4546 = zext i1 %4545 to i8
  store i8 %4546, i8* %42, align 1
  %4547 = lshr i32 %4539, 31
  %4548 = trunc i32 %4547 to i8
  store i8 %4548, i8* %45, align 1
  store i8 0, i8* %51, align 1
  %.v191 = select i1 %4545, i64 10, i64 271
  %4549 = add i64 %4535, %.v191
  store i64 %4549, i64* %3, align 8
  br i1 %4545, label %block_43f7f2, label %block_.L_43f8f7

block_43f7f2:                                     ; preds = %block_43f7e8
  %4550 = add i64 %2949, -132
  %4551 = add i64 %4549, 7
  store i64 %4551, i64* %3, align 8
  %4552 = inttoptr i64 %4550 to i32*
  %4553 = load i32, i32* %4552, align 4
  store i8 0, i8* %26, align 1
  %4554 = and i32 %4553, 255
  %4555 = tail call i32 @llvm.ctpop.i32(i32 %4554)
  %4556 = trunc i32 %4555 to i8
  %4557 = and i8 %4556, 1
  %4558 = xor i8 %4557, 1
  store i8 %4558, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %4559 = icmp eq i32 %4553, 0
  %4560 = zext i1 %4559 to i8
  store i8 %4560, i8* %42, align 1
  %4561 = lshr i32 %4553, 31
  %4562 = trunc i32 %4561 to i8
  store i8 %4562, i8* %45, align 1
  store i8 0, i8* %51, align 1
  %.v190 = select i1 %4559, i64 13, i64 261
  %4563 = add i64 %4549, %.v190
  store i64 %4563, i64* %3, align 8
  br i1 %4559, label %block_43f7ff, label %block_.L_43f8f7

block_43f7ff:                                     ; preds = %block_43f7f2
  store i64 %4509, i64* %RAX.i2060, align 8
  %4564 = add i64 %4509, 24
  %4565 = add i64 %4563, 12
  store i64 %4565, i64* %3, align 8
  %4566 = inttoptr i64 %4564 to i32*
  %4567 = load i32, i32* %4566, align 4
  %4568 = add i32 %4567, -3
  %4569 = icmp ult i32 %4567, 3
  %4570 = zext i1 %4569 to i8
  store i8 %4570, i8* %26, align 1
  %4571 = and i32 %4568, 255
  %4572 = tail call i32 @llvm.ctpop.i32(i32 %4571)
  %4573 = trunc i32 %4572 to i8
  %4574 = and i8 %4573, 1
  %4575 = xor i8 %4574, 1
  store i8 %4575, i8* %33, align 1
  %4576 = xor i32 %4568, %4567
  %4577 = lshr i32 %4576, 4
  %4578 = trunc i32 %4577 to i8
  %4579 = and i8 %4578, 1
  store i8 %4579, i8* %39, align 1
  %4580 = icmp eq i32 %4568, 0
  %4581 = zext i1 %4580 to i8
  store i8 %4581, i8* %42, align 1
  %4582 = lshr i32 %4568, 31
  %4583 = trunc i32 %4582 to i8
  store i8 %4583, i8* %45, align 1
  %4584 = lshr i32 %4567, 31
  %4585 = xor i32 %4582, %4584
  %4586 = add nuw nsw i32 %4585, %4584
  %4587 = icmp eq i32 %4586, 2
  %4588 = zext i1 %4587 to i8
  store i8 %4588, i8* %51, align 1
  %.v189 = select i1 %4580, i64 43, i64 18
  %4589 = add i64 %4563, %.v189
  %4590 = add i64 %2949, -88
  %4591 = add i64 %4589, 4
  store i64 %4591, i64* %3, align 8
  store i64 %4590, i64* %RDX.i2040.pre-phi, align 8
  br i1 %4580, label %block_.L_43f82a, label %block_43f811

block_43f811:                                     ; preds = %block_43f7ff
  store i64 0, i64* %RCX.i2097, align 8
  store i8 0, i8* %26, align 1
  store i8 1, i8* %33, align 1
  store i8 1, i8* %42, align 1
  store i8 0, i8* %45, align 1
  store i8 0, i8* %51, align 1
  store i8 0, i8* %39, align 1
  %4592 = add i64 %2949, -60
  %4593 = add i64 %4589, 9
  store i64 %4593, i64* %3, align 8
  %4594 = inttoptr i64 %4592 to i32*
  %4595 = load i32, i32* %4594, align 4
  %4596 = zext i32 %4595 to i64
  store i64 %4596, i64* %RDI.i2086, align 8
  %4597 = add i64 %2949, -56
  %4598 = add i64 %4589, 12
  store i64 %4598, i64* %3, align 8
  %4599 = inttoptr i64 %4597 to i32*
  %4600 = load i32, i32* %4599, align 4
  %4601 = zext i32 %4600 to i64
  store i64 %4601, i64* %RSI.i2083, align 8
  %4602 = add i64 %4589, -234945
  %4603 = add i64 %4589, 17
  %4604 = load i64, i64* %6, align 8
  %4605 = add i64 %4604, -8
  %4606 = inttoptr i64 %4605 to i64*
  store i64 %4603, i64* %4606, align 8
  store i64 %4605, i64* %6, align 8
  store i64 %4602, i64* %3, align 8
  %call2_43f81d = tail call %struct.Memory* @sub_406250.dct_luma(%struct.State* nonnull %0, i64 %4602, %struct.Memory* %call2_43f20c)
  %4607 = load i64, i64* %RBP.i, align 8
  %4608 = add i64 %4607, -80
  %4609 = load i32, i32* %135, align 4
  %4610 = load i64, i64* %3, align 8
  %4611 = add i64 %4610, 3
  store i64 %4611, i64* %3, align 8
  %4612 = inttoptr i64 %4608 to i32*
  store i32 %4609, i32* %4612, align 4
  %4613 = load i64, i64* %3, align 8
  %4614 = add i64 %4613, 23
  store i64 %4614, i64* %3, align 8
  br label %block_.L_43f83c

block_.L_43f82a:                                  ; preds = %block_43f7ff
  %4615 = add i64 %2949, -60
  %4616 = add i64 %4589, 7
  store i64 %4616, i64* %3, align 8
  %4617 = inttoptr i64 %4615 to i32*
  %4618 = load i32, i32* %4617, align 4
  %4619 = zext i32 %4618 to i64
  store i64 %4619, i64* %RDI.i2086, align 8
  %4620 = add i64 %2949, -56
  %4621 = add i64 %4589, 10
  store i64 %4621, i64* %3, align 8
  %4622 = inttoptr i64 %4620 to i32*
  %4623 = load i32, i32* %4622, align 4
  %4624 = zext i32 %4623 to i64
  store i64 %4624, i64* %RSI.i2083, align 8
  %4625 = add i64 %4589, -211530
  %4626 = add i64 %4589, 15
  %4627 = load i64, i64* %6, align 8
  %4628 = add i64 %4627, -8
  %4629 = inttoptr i64 %4628 to i64*
  store i64 %4626, i64* %4629, align 8
  store i64 %4628, i64* %6, align 8
  store i64 %4625, i64* %3, align 8
  %call2_43f834 = tail call %struct.Memory* @sub_40bde0.dct_luma_sp(%struct.State* nonnull %0, i64 %4625, %struct.Memory* %call2_43f20c)
  %4630 = load i64, i64* %RBP.i, align 8
  %4631 = add i64 %4630, -80
  %4632 = load i32, i32* %135, align 4
  %4633 = load i64, i64* %3, align 8
  %4634 = add i64 %4633, 3
  store i64 %4634, i64* %3, align 8
  %4635 = inttoptr i64 %4631 to i32*
  store i32 %4632, i32* %4635, align 4
  %.pre171 = load i64, i64* %3, align 8
  br label %block_.L_43f83c

block_.L_43f83c:                                  ; preds = %block_.L_43f82a, %block_43f811
  %4636 = phi i64 [ %.pre171, %block_.L_43f82a ], [ %4614, %block_43f811 ]
  %MEMORY.23 = phi %struct.Memory* [ %call2_43f834, %block_.L_43f82a ], [ %call2_43f81d, %block_43f811 ]
  %4637 = load i64, i64* %RBP.i, align 8
  %4638 = add i64 %4637, -76
  %4639 = add i64 %4636, 7
  store i64 %4639, i64* %3, align 8
  %4640 = inttoptr i64 %4638 to i32*
  store i32 0, i32* %4640, align 4
  %.pre172 = load i64, i64* %3, align 8
  br label %block_.L_43f843

block_.L_43f843:                                  ; preds = %block_.L_43f8b3, %block_.L_43f83c
  %4641 = phi i64 [ %4915, %block_.L_43f8b3 ], [ %.pre172, %block_.L_43f83c ]
  %4642 = load i64, i64* %RBP.i, align 8
  %4643 = add i64 %4642, -76
  %4644 = add i64 %4641, 4
  store i64 %4644, i64* %3, align 8
  %4645 = inttoptr i64 %4643 to i32*
  %4646 = load i32, i32* %4645, align 4
  %4647 = add i32 %4646, -4
  %4648 = icmp ult i32 %4646, 4
  %4649 = zext i1 %4648 to i8
  store i8 %4649, i8* %26, align 1
  %4650 = and i32 %4647, 255
  %4651 = tail call i32 @llvm.ctpop.i32(i32 %4650)
  %4652 = trunc i32 %4651 to i8
  %4653 = and i8 %4652, 1
  %4654 = xor i8 %4653, 1
  store i8 %4654, i8* %33, align 1
  %4655 = xor i32 %4647, %4646
  %4656 = lshr i32 %4655, 4
  %4657 = trunc i32 %4656 to i8
  %4658 = and i8 %4657, 1
  store i8 %4658, i8* %39, align 1
  %4659 = icmp eq i32 %4647, 0
  %4660 = zext i1 %4659 to i8
  store i8 %4660, i8* %42, align 1
  %4661 = lshr i32 %4647, 31
  %4662 = trunc i32 %4661 to i8
  store i8 %4662, i8* %45, align 1
  %4663 = lshr i32 %4646, 31
  %4664 = xor i32 %4661, %4663
  %4665 = add nuw nsw i32 %4664, %4663
  %4666 = icmp eq i32 %4665, 2
  %4667 = zext i1 %4666 to i8
  store i8 %4667, i8* %51, align 1
  %4668 = icmp ne i8 %4662, 0
  %4669 = xor i1 %4668, %4666
  %.v222 = select i1 %4669, i64 10, i64 131
  %4670 = add i64 %4641, %.v222
  store i64 %4670, i64* %3, align 8
  br i1 %4669, label %block_43f84d, label %block_.L_43f8c6

block_43f84d:                                     ; preds = %block_.L_43f843
  %4671 = add i64 %4642, -72
  %4672 = add i64 %4670, 7
  store i64 %4672, i64* %3, align 8
  %4673 = inttoptr i64 %4671 to i32*
  store i32 0, i32* %4673, align 4
  %.pre174 = load i64, i64* %3, align 8
  br label %block_.L_43f854

block_.L_43f854:                                  ; preds = %block_43f85e, %block_43f84d
  %4674 = phi i64 [ %4885, %block_43f85e ], [ %.pre174, %block_43f84d ]
  %4675 = load i64, i64* %RBP.i, align 8
  %4676 = add i64 %4675, -72
  %4677 = add i64 %4674, 4
  store i64 %4677, i64* %3, align 8
  %4678 = inttoptr i64 %4676 to i32*
  %4679 = load i32, i32* %4678, align 4
  %4680 = add i32 %4679, -4
  %4681 = icmp ult i32 %4679, 4
  %4682 = zext i1 %4681 to i8
  store i8 %4682, i8* %26, align 1
  %4683 = and i32 %4680, 255
  %4684 = tail call i32 @llvm.ctpop.i32(i32 %4683)
  %4685 = trunc i32 %4684 to i8
  %4686 = and i8 %4685, 1
  %4687 = xor i8 %4686, 1
  store i8 %4687, i8* %33, align 1
  %4688 = xor i32 %4680, %4679
  %4689 = lshr i32 %4688, 4
  %4690 = trunc i32 %4689 to i8
  %4691 = and i8 %4690, 1
  store i8 %4691, i8* %39, align 1
  %4692 = icmp eq i32 %4680, 0
  %4693 = zext i1 %4692 to i8
  store i8 %4693, i8* %42, align 1
  %4694 = lshr i32 %4680, 31
  %4695 = trunc i32 %4694 to i8
  store i8 %4695, i8* %45, align 1
  %4696 = lshr i32 %4679, 31
  %4697 = xor i32 %4694, %4696
  %4698 = add nuw nsw i32 %4697, %4696
  %4699 = icmp eq i32 %4698, 2
  %4700 = zext i1 %4699 to i8
  store i8 %4700, i8* %51, align 1
  %4701 = icmp ne i8 %4695, 0
  %4702 = xor i1 %4701, %4699
  %.v194 = select i1 %4702, i64 10, i64 95
  %4703 = add i64 %4674, %.v194
  store i64 %4703, i64* %3, align 8
  br i1 %4702, label %block_43f85e, label %block_.L_43f8b3

block_43f85e:                                     ; preds = %block_.L_43f854
  store i64 ptrtoint (%G__0x722ff0_type* @G__0x722ff0 to i64), i64* %RAX.i2060, align 8
  %4704 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*), align 8
  %4705 = add i64 %4704, 13112
  store i64 %4705, i64* %RCX.i2097, align 8
  %4706 = icmp ugt i64 %4704, -13113
  %4707 = zext i1 %4706 to i8
  store i8 %4707, i8* %26, align 1
  %4708 = trunc i64 %4705 to i32
  %4709 = and i32 %4708, 255
  %4710 = tail call i32 @llvm.ctpop.i32(i32 %4709)
  %4711 = trunc i32 %4710 to i8
  %4712 = and i8 %4711, 1
  %4713 = xor i8 %4712, 1
  store i8 %4713, i8* %33, align 1
  %4714 = xor i64 %4704, 16
  %4715 = xor i64 %4714, %4705
  %4716 = lshr i64 %4715, 4
  %4717 = trunc i64 %4716 to i8
  %4718 = and i8 %4717, 1
  store i8 %4718, i8* %39, align 1
  %4719 = icmp eq i64 %4705, 0
  %4720 = zext i1 %4719 to i8
  store i8 %4720, i8* %42, align 1
  %4721 = lshr i64 %4705, 63
  %4722 = trunc i64 %4721 to i8
  store i8 %4722, i8* %45, align 1
  %4723 = lshr i64 %4704, 63
  %4724 = xor i64 %4721, %4723
  %4725 = add nuw nsw i64 %4724, %4721
  %4726 = icmp eq i64 %4725, 2
  %4727 = zext i1 %4726 to i8
  store i8 %4727, i8* %51, align 1
  %4728 = add i64 %4703, 29
  store i64 %4728, i64* %3, align 8
  %4729 = load i32, i32* %4678, align 4
  %4730 = sext i32 %4729 to i64
  %4731 = shl nsw i64 %4730, 6
  store i64 %4731, i64* %RDX.i2040.pre-phi, align 8
  %4732 = add i64 %4731, %4705
  store i64 %4732, i64* %RCX.i2097, align 8
  %4733 = icmp ult i64 %4732, %4705
  %4734 = icmp ult i64 %4732, %4731
  %4735 = or i1 %4733, %4734
  %4736 = zext i1 %4735 to i8
  store i8 %4736, i8* %26, align 1
  %4737 = trunc i64 %4732 to i32
  %4738 = and i32 %4737, 255
  %4739 = tail call i32 @llvm.ctpop.i32(i32 %4738)
  %4740 = trunc i32 %4739 to i8
  %4741 = and i8 %4740, 1
  %4742 = xor i8 %4741, 1
  store i8 %4742, i8* %33, align 1
  %4743 = xor i64 %4705, %4732
  %4744 = lshr i64 %4743, 4
  %4745 = trunc i64 %4744 to i8
  %4746 = and i8 %4745, 1
  store i8 %4746, i8* %39, align 1
  %4747 = icmp eq i64 %4732, 0
  %4748 = zext i1 %4747 to i8
  store i8 %4748, i8* %42, align 1
  %4749 = lshr i64 %4732, 63
  %4750 = trunc i64 %4749 to i8
  store i8 %4750, i8* %45, align 1
  %4751 = lshr i64 %4730, 57
  %4752 = and i64 %4751, 1
  %4753 = xor i64 %4749, %4721
  %4754 = xor i64 %4749, %4752
  %4755 = add nuw nsw i64 %4753, %4754
  %4756 = icmp eq i64 %4755, 2
  %4757 = zext i1 %4756 to i8
  store i8 %4757, i8* %51, align 1
  %4758 = load i64, i64* %RBP.i, align 8
  %4759 = add i64 %4758, -76
  %4760 = add i64 %4703, 40
  store i64 %4760, i64* %3, align 8
  %4761 = inttoptr i64 %4759 to i32*
  %4762 = load i32, i32* %4761, align 4
  %4763 = sext i32 %4762 to i64
  store i64 %4763, i64* %RDX.i2040.pre-phi, align 8
  %4764 = shl nsw i64 %4763, 2
  %4765 = add i64 %4764, %4732
  %4766 = add i64 %4703, 43
  store i64 %4766, i64* %3, align 8
  %4767 = inttoptr i64 %4765 to i32*
  %4768 = load i32, i32* %4767, align 4
  %4769 = zext i32 %4768 to i64
  store i64 %4769, i64* %RSI.i2083, align 8
  %4770 = add i64 %4758, -72
  %4771 = add i64 %4703, 46
  store i64 %4771, i64* %3, align 8
  %4772 = inttoptr i64 %4770 to i32*
  %4773 = load i32, i32* %4772, align 4
  %4774 = zext i32 %4773 to i64
  store i64 %4774, i64* %RDI.i2086, align 8
  %4775 = add i64 %4758, -60
  %4776 = add i64 %4703, 49
  store i64 %4776, i64* %3, align 8
  %4777 = inttoptr i64 %4775 to i32*
  %4778 = load i32, i32* %4777, align 4
  %4779 = add i32 %4778, %4773
  %4780 = zext i32 %4779 to i64
  store i64 %4780, i64* %RDI.i2086, align 8
  %4781 = sext i32 %4779 to i64
  %4782 = shl nsw i64 %4781, 6
  store i64 %4782, i64* %RCX.i2097, align 8
  %4783 = load i64, i64* %RAX.i2060, align 8
  %4784 = add i64 %4782, %4783
  store i64 %4784, i64* %RAX.i2060, align 8
  %4785 = icmp ult i64 %4784, %4783
  %4786 = icmp ult i64 %4784, %4782
  %4787 = or i1 %4785, %4786
  %4788 = zext i1 %4787 to i8
  store i8 %4788, i8* %26, align 1
  %4789 = trunc i64 %4784 to i32
  %4790 = and i32 %4789, 255
  %4791 = tail call i32 @llvm.ctpop.i32(i32 %4790)
  %4792 = trunc i32 %4791 to i8
  %4793 = and i8 %4792, 1
  %4794 = xor i8 %4793, 1
  store i8 %4794, i8* %33, align 1
  %4795 = xor i64 %4783, %4784
  %4796 = lshr i64 %4795, 4
  %4797 = trunc i64 %4796 to i8
  %4798 = and i8 %4797, 1
  store i8 %4798, i8* %39, align 1
  %4799 = icmp eq i64 %4784, 0
  %4800 = zext i1 %4799 to i8
  store i8 %4800, i8* %42, align 1
  %4801 = lshr i64 %4784, 63
  %4802 = trunc i64 %4801 to i8
  store i8 %4802, i8* %45, align 1
  %4803 = lshr i64 %4783, 63
  %4804 = lshr i64 %4781, 57
  %4805 = and i64 %4804, 1
  %4806 = xor i64 %4801, %4803
  %4807 = xor i64 %4801, %4805
  %4808 = add nuw nsw i64 %4806, %4807
  %4809 = icmp eq i64 %4808, 2
  %4810 = zext i1 %4809 to i8
  store i8 %4810, i8* %51, align 1
  %4811 = load i64, i64* %RBP.i, align 8
  %4812 = add i64 %4811, -76
  %4813 = add i64 %4703, 62
  store i64 %4813, i64* %3, align 8
  %4814 = inttoptr i64 %4812 to i32*
  %4815 = load i32, i32* %4814, align 4
  %4816 = zext i32 %4815 to i64
  store i64 %4816, i64* %RDI.i2086, align 8
  %4817 = add i64 %4811, -56
  %4818 = add i64 %4703, 65
  store i64 %4818, i64* %3, align 8
  %4819 = inttoptr i64 %4817 to i32*
  %4820 = load i32, i32* %4819, align 4
  %4821 = add i32 %4820, %4815
  %4822 = zext i32 %4821 to i64
  store i64 %4822, i64* %RDI.i2086, align 8
  %4823 = icmp ult i32 %4821, %4815
  %4824 = icmp ult i32 %4821, %4820
  %4825 = or i1 %4823, %4824
  %4826 = zext i1 %4825 to i8
  store i8 %4826, i8* %26, align 1
  %4827 = and i32 %4821, 255
  %4828 = tail call i32 @llvm.ctpop.i32(i32 %4827)
  %4829 = trunc i32 %4828 to i8
  %4830 = and i8 %4829, 1
  %4831 = xor i8 %4830, 1
  store i8 %4831, i8* %33, align 1
  %4832 = xor i32 %4820, %4815
  %4833 = xor i32 %4832, %4821
  %4834 = lshr i32 %4833, 4
  %4835 = trunc i32 %4834 to i8
  %4836 = and i8 %4835, 1
  store i8 %4836, i8* %39, align 1
  %4837 = icmp eq i32 %4821, 0
  %4838 = zext i1 %4837 to i8
  store i8 %4838, i8* %42, align 1
  %4839 = lshr i32 %4821, 31
  %4840 = trunc i32 %4839 to i8
  store i8 %4840, i8* %45, align 1
  %4841 = lshr i32 %4815, 31
  %4842 = lshr i32 %4820, 31
  %4843 = xor i32 %4839, %4841
  %4844 = xor i32 %4839, %4842
  %4845 = add nuw nsw i32 %4843, %4844
  %4846 = icmp eq i32 %4845, 2
  %4847 = zext i1 %4846 to i8
  store i8 %4847, i8* %51, align 1
  %4848 = sext i32 %4821 to i64
  store i64 %4848, i64* %RCX.i2097, align 8
  %4849 = shl nsw i64 %4848, 2
  %4850 = add i64 %4784, %4849
  %4851 = load i32, i32* %ESI.i714, align 4
  %4852 = add i64 %4703, 71
  store i64 %4852, i64* %3, align 8
  %4853 = inttoptr i64 %4850 to i32*
  store i32 %4851, i32* %4853, align 4
  %4854 = load i64, i64* %RBP.i, align 8
  %4855 = add i64 %4854, -72
  %4856 = load i64, i64* %3, align 8
  %4857 = add i64 %4856, 3
  store i64 %4857, i64* %3, align 8
  %4858 = inttoptr i64 %4855 to i32*
  %4859 = load i32, i32* %4858, align 4
  %4860 = add i32 %4859, 1
  %4861 = zext i32 %4860 to i64
  store i64 %4861, i64* %RAX.i2060, align 8
  %4862 = icmp eq i32 %4859, -1
  %4863 = icmp eq i32 %4860, 0
  %4864 = or i1 %4862, %4863
  %4865 = zext i1 %4864 to i8
  store i8 %4865, i8* %26, align 1
  %4866 = and i32 %4860, 255
  %4867 = tail call i32 @llvm.ctpop.i32(i32 %4866)
  %4868 = trunc i32 %4867 to i8
  %4869 = and i8 %4868, 1
  %4870 = xor i8 %4869, 1
  store i8 %4870, i8* %33, align 1
  %4871 = xor i32 %4860, %4859
  %4872 = lshr i32 %4871, 4
  %4873 = trunc i32 %4872 to i8
  %4874 = and i8 %4873, 1
  store i8 %4874, i8* %39, align 1
  %4875 = zext i1 %4863 to i8
  store i8 %4875, i8* %42, align 1
  %4876 = lshr i32 %4860, 31
  %4877 = trunc i32 %4876 to i8
  store i8 %4877, i8* %45, align 1
  %4878 = lshr i32 %4859, 31
  %4879 = xor i32 %4876, %4878
  %4880 = add nuw nsw i32 %4879, %4876
  %4881 = icmp eq i32 %4880, 2
  %4882 = zext i1 %4881 to i8
  store i8 %4882, i8* %51, align 1
  %4883 = add i64 %4856, 9
  store i64 %4883, i64* %3, align 8
  store i32 %4860, i32* %4858, align 4
  %4884 = load i64, i64* %3, align 8
  %4885 = add i64 %4884, -90
  store i64 %4885, i64* %3, align 8
  br label %block_.L_43f854

block_.L_43f8b3:                                  ; preds = %block_.L_43f854
  %4886 = add i64 %4675, -76
  %4887 = add i64 %4703, 8
  store i64 %4887, i64* %3, align 8
  %4888 = inttoptr i64 %4886 to i32*
  %4889 = load i32, i32* %4888, align 4
  %4890 = add i32 %4889, 1
  %4891 = zext i32 %4890 to i64
  store i64 %4891, i64* %RAX.i2060, align 8
  %4892 = icmp eq i32 %4889, -1
  %4893 = icmp eq i32 %4890, 0
  %4894 = or i1 %4892, %4893
  %4895 = zext i1 %4894 to i8
  store i8 %4895, i8* %26, align 1
  %4896 = and i32 %4890, 255
  %4897 = tail call i32 @llvm.ctpop.i32(i32 %4896)
  %4898 = trunc i32 %4897 to i8
  %4899 = and i8 %4898, 1
  %4900 = xor i8 %4899, 1
  store i8 %4900, i8* %33, align 1
  %4901 = xor i32 %4890, %4889
  %4902 = lshr i32 %4901, 4
  %4903 = trunc i32 %4902 to i8
  %4904 = and i8 %4903, 1
  store i8 %4904, i8* %39, align 1
  %4905 = zext i1 %4893 to i8
  store i8 %4905, i8* %42, align 1
  %4906 = lshr i32 %4890, 31
  %4907 = trunc i32 %4906 to i8
  store i8 %4907, i8* %45, align 1
  %4908 = lshr i32 %4889, 31
  %4909 = xor i32 %4906, %4908
  %4910 = add nuw nsw i32 %4909, %4906
  %4911 = icmp eq i32 %4910, 2
  %4912 = zext i1 %4911 to i8
  store i8 %4912, i8* %51, align 1
  %4913 = add i64 %4703, 14
  store i64 %4913, i64* %3, align 8
  store i32 %4890, i32* %4888, align 4
  %4914 = load i64, i64* %3, align 8
  %4915 = add i64 %4914, -126
  store i64 %4915, i64* %3, align 8
  br label %block_.L_43f843

block_.L_43f8c6:                                  ; preds = %block_.L_43f843
  %4916 = add i64 %4642, -80
  %4917 = add i64 %4670, 4
  store i64 %4917, i64* %3, align 8
  %4918 = inttoptr i64 %4916 to i32*
  %4919 = load i32, i32* %4918, align 4
  store i8 0, i8* %26, align 1
  %4920 = and i32 %4919, 255
  %4921 = tail call i32 @llvm.ctpop.i32(i32 %4920)
  %4922 = trunc i32 %4921 to i8
  %4923 = and i8 %4922, 1
  %4924 = xor i8 %4923, 1
  store i8 %4924, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %4925 = icmp eq i32 %4919, 0
  %4926 = zext i1 %4925 to i8
  store i8 %4926, i8* %42, align 1
  %4927 = lshr i32 %4919, 31
  %4928 = trunc i32 %4927 to i8
  store i8 %4928, i8* %45, align 1
  store i8 0, i8* %51, align 1
  %.v223 = select i1 %4925, i64 44, i64 10
  %4929 = add i64 %4670, %.v223
  store i64 %4929, i64* %3, align 8
  br i1 %4925, label %block_.L_43f8f2, label %block_43f8d0

block_43f8d0:                                     ; preds = %block_.L_43f8c6
  store i64 1, i64* %RAX.i2060, align 8
  %4930 = add i64 %4642, -84
  %4931 = add i64 %4929, 8
  store i64 %4931, i64* %3, align 8
  %4932 = inttoptr i64 %4930 to i32*
  %4933 = load i32, i32* %4932, align 4
  %4934 = zext i32 %4933 to i64
  store i64 %4934, i64* %RCX.i2097, align 8
  %4935 = add i64 %4929, 10
  store i64 %4935, i64* %3, align 8
  %4936 = trunc i32 %4933 to i5
  switch i5 %4936, label %4937 [
    i5 0, label %routine_shll__cl___eax.exit
    i5 1, label %4946
  ]

; <label>:4937:                                   ; preds = %block_43f8d0
  %4938 = and i32 %4933, 31
  %4939 = zext i32 %4938 to i64
  %4940 = add nuw nsw i64 %4939, 4294967295
  %4941 = and i64 %4940, 4294967295
  %4942 = shl i64 1, %4941
  %4943 = trunc i64 %4942 to i32
  %4944 = icmp slt i32 %4943, 0
  %4945 = shl i32 %4943, 1
  br label %4946

; <label>:4946:                                   ; preds = %block_43f8d0, %4937
  %4947 = phi i1 [ %4944, %4937 ], [ false, %block_43f8d0 ]
  %4948 = phi i32 [ %4945, %4937 ], [ 2, %block_43f8d0 ]
  %4949 = zext i32 %4948 to i64
  store i64 %4949, i64* %RAX.i2060, align 8
  %4950 = zext i1 %4947 to i8
  store i8 %4950, i8* %26, align 1
  %4951 = and i32 %4948, 254
  %4952 = tail call i32 @llvm.ctpop.i32(i32 %4951)
  %4953 = trunc i32 %4952 to i8
  %4954 = and i8 %4953, 1
  %4955 = xor i8 %4954, 1
  store i8 %4955, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %4956 = icmp eq i32 %4948, 0
  %4957 = zext i1 %4956 to i8
  store i8 %4957, i8* %42, align 1
  %4958 = lshr i32 %4948, 31
  %4959 = trunc i32 %4958 to i8
  store i8 %4959, i8* %45, align 1
  store i8 0, i8* %51, align 1
  br label %routine_shll__cl___eax.exit

routine_shll__cl___eax.exit:                      ; preds = %4946, %block_43f8d0
  %4960 = phi i32 [ %4948, %4946 ], [ 1, %block_43f8d0 ]
  %4961 = sext i32 %4960 to i64
  store i64 %4961, i64* %RDX.i2040.pre-phi, align 8
  %4962 = add i64 %4642, -32
  %4963 = add i64 %4929, 17
  store i64 %4963, i64* %3, align 8
  %4964 = inttoptr i64 %4962 to i64*
  %4965 = load i64, i64* %4964, align 8
  store i64 %4965, i64* %RSI.i2083, align 8
  %4966 = add i64 %4929, 20
  store i64 %4966, i64* %3, align 8
  %4967 = inttoptr i64 %4965 to i64*
  %4968 = load i64, i64* %4967, align 8
  %4969 = or i64 %4968, %4961
  store i64 %4969, i64* %RDX.i2040.pre-phi, align 8
  store i8 0, i8* %26, align 1
  %4970 = trunc i64 %4969 to i32
  %4971 = and i32 %4970, 255
  %4972 = tail call i32 @llvm.ctpop.i32(i32 %4971)
  %4973 = trunc i32 %4972 to i8
  %4974 = and i8 %4973, 1
  %4975 = xor i8 %4974, 1
  store i8 %4975, i8* %33, align 1
  %4976 = icmp eq i64 %4969, 0
  %4977 = zext i1 %4976 to i8
  store i8 %4977, i8* %42, align 1
  %4978 = lshr i64 %4969, 63
  %4979 = trunc i64 %4978 to i8
  store i8 %4979, i8* %45, align 1
  store i8 0, i8* %51, align 1
  store i8 0, i8* %39, align 1
  %4980 = add i64 %4929, 23
  store i64 %4980, i64* %3, align 8
  store i64 %4969, i64* %4967, align 8
  %4981 = load i64, i64* %RBP.i, align 8
  %4982 = add i64 %4981, -100
  %4983 = load i64, i64* %3, align 8
  %4984 = add i64 %4983, 3
  store i64 %4984, i64* %3, align 8
  %4985 = inttoptr i64 %4982 to i32*
  %4986 = load i32, i32* %4985, align 4
  %4987 = zext i32 %4986 to i64
  store i64 %4987, i64* %RAX.i2060, align 8
  %4988 = add i64 %4981, -24
  %4989 = add i64 %4983, 7
  store i64 %4989, i64* %3, align 8
  %4990 = inttoptr i64 %4988 to i64*
  %4991 = load i64, i64* %4990, align 8
  store i64 %4991, i64* %RDX.i2040.pre-phi, align 8
  %4992 = add i64 %4983, 9
  store i64 %4992, i64* %3, align 8
  %4993 = inttoptr i64 %4991 to i32*
  %4994 = load i32, i32* %4993, align 4
  %4995 = or i32 %4994, %4986
  %4996 = zext i32 %4995 to i64
  store i64 %4996, i64* %RAX.i2060, align 8
  store i8 0, i8* %26, align 1
  %4997 = and i32 %4995, 255
  %4998 = tail call i32 @llvm.ctpop.i32(i32 %4997)
  %4999 = trunc i32 %4998 to i8
  %5000 = and i8 %4999, 1
  %5001 = xor i8 %5000, 1
  store i8 %5001, i8* %33, align 1
  %5002 = icmp eq i32 %4995, 0
  %5003 = zext i1 %5002 to i8
  store i8 %5003, i8* %42, align 1
  %5004 = lshr i32 %4995, 31
  %5005 = trunc i32 %5004 to i8
  store i8 %5005, i8* %45, align 1
  store i8 0, i8* %51, align 1
  store i8 0, i8* %39, align 1
  %5006 = add i64 %4983, 11
  store i64 %5006, i64* %3, align 8
  store i32 %4995, i32* %4993, align 4
  %.pre173 = load i64, i64* %3, align 8
  br label %block_.L_43f8f2

block_.L_43f8f2:                                  ; preds = %routine_shll__cl___eax.exit, %block_.L_43f8c6
  %5007 = phi i64 [ %.pre173, %routine_shll__cl___eax.exit ], [ %4929, %block_.L_43f8c6 ]
  %5008 = add i64 %5007, 5
  store i64 %5008, i64* %3, align 8
  br label %block_.L_43f8f7

block_.L_43f8f7:                                  ; preds = %block_43f7f2, %block_43f7e8, %block_.L_43f8f2, %block_.L_43f7d3
  %5009 = phi i64 [ %4535, %block_.L_43f7d3 ], [ %4549, %block_43f7e8 ], [ %4563, %block_43f7f2 ], [ %5008, %block_.L_43f8f2 ]
  %MEMORY.27 = phi %struct.Memory* [ %call2_43f20c, %block_.L_43f7d3 ], [ %call2_43f20c, %block_43f7e8 ], [ %call2_43f20c, %block_43f7f2 ], [ %MEMORY.23, %block_.L_43f8f2 ]
  %5010 = add i64 %5009, 5
  store i64 %5010, i64* %3, align 8
  br label %block_.L_43f8fc

block_.L_43f8fc:                                  ; preds = %block_.L_43f8f7, %block_.L_43f4e8
  %storemerge62 = phi i64 [ %2944, %block_.L_43f4e8 ], [ %5010, %block_.L_43f8f7 ]
  %MEMORY.28 = phi %struct.Memory* [ %MEMORY.19, %block_.L_43f4e8 ], [ %MEMORY.27, %block_.L_43f8f7 ]
  %5011 = load i64, i64* %RBP.i, align 8
  %5012 = add i64 %5011, -104
  %5013 = add i64 %storemerge62, 8
  store i64 %5013, i64* %3, align 8
  %5014 = inttoptr i64 %5012 to i32*
  %5015 = load i32, i32* %5014, align 4
  %5016 = add i32 %5015, 4
  %5017 = zext i32 %5016 to i64
  store i64 %5017, i64* %RAX.i2060, align 8
  %5018 = icmp ugt i32 %5015, -5
  %5019 = zext i1 %5018 to i8
  store i8 %5019, i8* %26, align 1
  %5020 = and i32 %5016, 255
  %5021 = tail call i32 @llvm.ctpop.i32(i32 %5020)
  %5022 = trunc i32 %5021 to i8
  %5023 = and i8 %5022, 1
  %5024 = xor i8 %5023, 1
  store i8 %5024, i8* %33, align 1
  %5025 = xor i32 %5016, %5015
  %5026 = lshr i32 %5025, 4
  %5027 = trunc i32 %5026 to i8
  %5028 = and i8 %5027, 1
  store i8 %5028, i8* %39, align 1
  %5029 = icmp eq i32 %5016, 0
  %5030 = zext i1 %5029 to i8
  store i8 %5030, i8* %42, align 1
  %5031 = lshr i32 %5016, 31
  %5032 = trunc i32 %5031 to i8
  store i8 %5032, i8* %45, align 1
  %5033 = lshr i32 %5015, 31
  %5034 = xor i32 %5031, %5033
  %5035 = add nuw nsw i32 %5034, %5031
  %5036 = icmp eq i32 %5035, 2
  %5037 = zext i1 %5036 to i8
  store i8 %5037, i8* %51, align 1
  %5038 = add i64 %storemerge62, 14
  store i64 %5038, i64* %3, align 8
  store i32 %5016, i32* %5014, align 4
  %5039 = load i64, i64* %RBP.i, align 8
  %5040 = add i64 %5039, -60
  %5041 = load i64, i64* %3, align 8
  %5042 = add i64 %5041, 3
  store i64 %5042, i64* %3, align 8
  %5043 = inttoptr i64 %5040 to i32*
  %5044 = load i32, i32* %5043, align 4
  %5045 = add i32 %5044, 4
  %5046 = zext i32 %5045 to i64
  store i64 %5046, i64* %RAX.i2060, align 8
  %5047 = icmp ugt i32 %5044, -5
  %5048 = zext i1 %5047 to i8
  store i8 %5048, i8* %26, align 1
  %5049 = and i32 %5045, 255
  %5050 = tail call i32 @llvm.ctpop.i32(i32 %5049)
  %5051 = trunc i32 %5050 to i8
  %5052 = and i8 %5051, 1
  %5053 = xor i8 %5052, 1
  store i8 %5053, i8* %33, align 1
  %5054 = xor i32 %5045, %5044
  %5055 = lshr i32 %5054, 4
  %5056 = trunc i32 %5055 to i8
  %5057 = and i8 %5056, 1
  store i8 %5057, i8* %39, align 1
  %5058 = icmp eq i32 %5045, 0
  %5059 = zext i1 %5058 to i8
  store i8 %5059, i8* %42, align 1
  %5060 = lshr i32 %5045, 31
  %5061 = trunc i32 %5060 to i8
  store i8 %5061, i8* %45, align 1
  %5062 = lshr i32 %5044, 31
  %5063 = xor i32 %5060, %5062
  %5064 = add nuw nsw i32 %5063, %5060
  %5065 = icmp eq i32 %5064, 2
  %5066 = zext i1 %5065 to i8
  store i8 %5066, i8* %51, align 1
  %5067 = add i64 %5041, 9
  store i64 %5067, i64* %3, align 8
  store i32 %5045, i32* %5043, align 4
  %5068 = load i64, i64* %3, align 8
  %5069 = add i64 %5068, -2315
  store i64 %5069, i64* %3, align 8
  br label %block_.L_43f008

block_.L_43f918:                                  ; preds = %block_.L_43f008
  %5070 = add i64 %587, -108
  %5071 = add i64 %625, 8
  store i64 %5071, i64* %3, align 8
  %5072 = inttoptr i64 %5070 to i32*
  %5073 = load i32, i32* %5072, align 4
  %5074 = add i32 %5073, 4
  %5075 = zext i32 %5074 to i64
  store i64 %5075, i64* %RAX.i2060, align 8
  %5076 = icmp ugt i32 %5073, -5
  %5077 = zext i1 %5076 to i8
  store i8 %5077, i8* %26, align 1
  %5078 = and i32 %5074, 255
  %5079 = tail call i32 @llvm.ctpop.i32(i32 %5078)
  %5080 = trunc i32 %5079 to i8
  %5081 = and i8 %5080, 1
  %5082 = xor i8 %5081, 1
  store i8 %5082, i8* %33, align 1
  %5083 = xor i32 %5074, %5073
  %5084 = lshr i32 %5083, 4
  %5085 = trunc i32 %5084 to i8
  %5086 = and i8 %5085, 1
  store i8 %5086, i8* %39, align 1
  %5087 = icmp eq i32 %5074, 0
  %5088 = zext i1 %5087 to i8
  store i8 %5088, i8* %42, align 1
  %5089 = lshr i32 %5074, 31
  %5090 = trunc i32 %5089 to i8
  store i8 %5090, i8* %45, align 1
  %5091 = lshr i32 %5073, 31
  %5092 = xor i32 %5089, %5091
  %5093 = add nuw nsw i32 %5092, %5089
  %5094 = icmp eq i32 %5093, 2
  %5095 = zext i1 %5094 to i8
  store i8 %5095, i8* %51, align 1
  %5096 = add i64 %625, 14
  store i64 %5096, i64* %3, align 8
  store i32 %5074, i32* %5072, align 4
  %5097 = load i64, i64* %RBP.i, align 8
  %5098 = add i64 %5097, -56
  %5099 = load i64, i64* %3, align 8
  %5100 = add i64 %5099, 3
  store i64 %5100, i64* %3, align 8
  %5101 = inttoptr i64 %5098 to i32*
  %5102 = load i32, i32* %5101, align 4
  %5103 = add i32 %5102, 4
  %5104 = zext i32 %5103 to i64
  store i64 %5104, i64* %RAX.i2060, align 8
  %5105 = icmp ugt i32 %5102, -5
  %5106 = zext i1 %5105 to i8
  store i8 %5106, i8* %26, align 1
  %5107 = and i32 %5103, 255
  %5108 = tail call i32 @llvm.ctpop.i32(i32 %5107)
  %5109 = trunc i32 %5108 to i8
  %5110 = and i8 %5109, 1
  %5111 = xor i8 %5110, 1
  store i8 %5111, i8* %33, align 1
  %5112 = xor i32 %5103, %5102
  %5113 = lshr i32 %5112, 4
  %5114 = trunc i32 %5113 to i8
  %5115 = and i8 %5114, 1
  store i8 %5115, i8* %39, align 1
  %5116 = icmp eq i32 %5103, 0
  %5117 = zext i1 %5116 to i8
  store i8 %5117, i8* %42, align 1
  %5118 = lshr i32 %5103, 31
  %5119 = trunc i32 %5118 to i8
  store i8 %5119, i8* %45, align 1
  %5120 = lshr i32 %5102, 31
  %5121 = xor i32 %5118, %5120
  %5122 = add nuw nsw i32 %5121, %5118
  %5123 = icmp eq i32 %5122, 2
  %5124 = zext i1 %5123 to i8
  store i8 %5124, i8* %51, align 1
  %5125 = add i64 %5099, 9
  store i64 %5125, i64* %3, align 8
  store i32 %5103, i32* %5101, align 4
  %5126 = load i64, i64* %3, align 8
  %5127 = add i64 %5126, -2393
  store i64 %5127, i64* %3, align 8
  br label %block_.L_43efd6

block_.L_43f934:                                  ; preds = %block_.L_43efd6
  %5128 = add i64 %494, -132
  %5129 = add i64 %532, 7
  store i64 %5129, i64* %3, align 8
  %5130 = inttoptr i64 %5128 to i32*
  %5131 = load i32, i32* %5130, align 4
  store i8 0, i8* %26, align 1
  %5132 = and i32 %5131, 255
  %5133 = tail call i32 @llvm.ctpop.i32(i32 %5132)
  %5134 = trunc i32 %5133 to i8
  %5135 = and i8 %5134, 1
  %5136 = xor i8 %5135, 1
  store i8 %5136, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %5137 = icmp eq i32 %5131, 0
  %5138 = zext i1 %5137 to i8
  store i8 %5138, i8* %42, align 1
  %5139 = lshr i32 %5131, 31
  %5140 = trunc i32 %5139 to i8
  store i8 %5140, i8* %45, align 1
  store i8 0, i8* %51, align 1
  %.v201 = select i1 %5137, i64 342, i64 13
  %5141 = add i64 %532, %.v201
  store i64 %5141, i64* %3, align 8
  br i1 %5137, label %block_.L_43fa8a, label %block_43f941

block_43f941:                                     ; preds = %block_.L_43f934
  %5142 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*), align 8
  store i64 %5142, i64* %RAX.i2060, align 8
  %5143 = add i64 %5142, 72392
  %5144 = add i64 %5141, 15
  store i64 %5144, i64* %3, align 8
  %5145 = inttoptr i64 %5143 to i32*
  %5146 = load i32, i32* %5145, align 4
  %5147 = add i32 %5146, -1
  %5148 = icmp eq i32 %5146, 0
  %5149 = zext i1 %5148 to i8
  store i8 %5149, i8* %26, align 1
  %5150 = and i32 %5147, 255
  %5151 = tail call i32 @llvm.ctpop.i32(i32 %5150)
  %5152 = trunc i32 %5151 to i8
  %5153 = and i8 %5152, 1
  %5154 = xor i8 %5153, 1
  store i8 %5154, i8* %33, align 1
  %5155 = xor i32 %5147, %5146
  %5156 = lshr i32 %5155, 4
  %5157 = trunc i32 %5156 to i8
  %5158 = and i8 %5157, 1
  store i8 %5158, i8* %39, align 1
  %5159 = icmp eq i32 %5147, 0
  %5160 = zext i1 %5159 to i8
  store i8 %5160, i8* %42, align 1
  %5161 = lshr i32 %5147, 31
  %5162 = trunc i32 %5161 to i8
  store i8 %5162, i8* %45, align 1
  %5163 = lshr i32 %5146, 31
  %5164 = xor i32 %5161, %5163
  %5165 = add nuw nsw i32 %5164, %5163
  %5166 = icmp eq i32 %5165, 2
  %5167 = zext i1 %5166 to i8
  store i8 %5167, i8* %51, align 1
  %.v202 = select i1 %5159, i64 324, i64 21
  %5168 = add i64 %5141, %.v202
  store i64 %5168, i64* %3, align 8
  br i1 %5159, label %block_.L_43fa85, label %block_43f956

block_43f956:                                     ; preds = %block_43f941
  %5169 = add i64 %494, -116
  %5170 = add i64 %5168, 4
  store i64 %5170, i64* %3, align 8
  %5171 = inttoptr i64 %5169 to i32*
  %5172 = load i32, i32* %5171, align 4
  store i8 0, i8* %26, align 1
  %5173 = and i32 %5172, 255
  %5174 = tail call i32 @llvm.ctpop.i32(i32 %5173)
  %5175 = trunc i32 %5174 to i8
  %5176 = and i8 %5175, 1
  %5177 = xor i8 %5176, 1
  store i8 %5177, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %5178 = icmp eq i32 %5172, 0
  %5179 = zext i1 %5178 to i8
  store i8 %5179, i8* %42, align 1
  %5180 = lshr i32 %5172, 31
  %5181 = trunc i32 %5180 to i8
  store i8 %5181, i8* %45, align 1
  store i8 0, i8* %51, align 1
  %.v203 = select i1 %5178, i64 10, i64 303
  %5182 = add i64 %5168, %.v203
  store i64 %5182, i64* %3, align 8
  br i1 %5178, label %block_43f960, label %block_.L_43fa85

block_43f960:                                     ; preds = %block_43f956
  store i64 %5142, i64* %RAX.i2060, align 8
  %5183 = add i64 %5142, 24
  %5184 = add i64 %5182, 12
  store i64 %5184, i64* %3, align 8
  %5185 = inttoptr i64 %5183 to i32*
  %5186 = load i32, i32* %5185, align 4
  %5187 = add i32 %5186, -3
  %5188 = icmp ult i32 %5186, 3
  %5189 = zext i1 %5188 to i8
  store i8 %5189, i8* %26, align 1
  %5190 = and i32 %5187, 255
  %5191 = tail call i32 @llvm.ctpop.i32(i32 %5190)
  %5192 = trunc i32 %5191 to i8
  %5193 = and i8 %5192, 1
  %5194 = xor i8 %5193, 1
  store i8 %5194, i8* %33, align 1
  %5195 = xor i32 %5187, %5186
  %5196 = lshr i32 %5195, 4
  %5197 = trunc i32 %5196 to i8
  %5198 = and i8 %5197, 1
  store i8 %5198, i8* %39, align 1
  %5199 = icmp eq i32 %5187, 0
  %5200 = zext i1 %5199 to i8
  store i8 %5200, i8* %42, align 1
  %5201 = lshr i32 %5187, 31
  %5202 = trunc i32 %5201 to i8
  store i8 %5202, i8* %45, align 1
  %5203 = lshr i32 %5186, 31
  %5204 = xor i32 %5201, %5203
  %5205 = add nuw nsw i32 %5204, %5203
  %5206 = icmp eq i32 %5205, 2
  %5207 = zext i1 %5206 to i8
  store i8 %5207, i8* %51, align 1
  %.v213 = select i1 %5199, i64 35, i64 18
  %5208 = add i64 %5182, %.v213
  store i64 %5208, i64* %3, align 8
  br i1 %5199, label %block_.L_43f983, label %block_43f972

block_43f972:                                     ; preds = %block_43f960
  %5209 = add i64 %494, -88
  store i64 %5209, i64* %RSI.i2083, align 8
  store i64 0, i64* %RDX.i2040.pre-phi, align 8
  store i8 0, i8* %26, align 1
  store i8 1, i8* %33, align 1
  store i8 1, i8* %42, align 1
  store i8 0, i8* %45, align 1
  store i8 0, i8* %51, align 1
  store i8 0, i8* %39, align 1
  %5210 = add i64 %494, -36
  %5211 = add i64 %5208, 9
  store i64 %5211, i64* %3, align 8
  %5212 = inttoptr i64 %5210 to i32*
  %5213 = load i32, i32* %5212, align 4
  %5214 = zext i32 %5213 to i64
  store i64 %5214, i64* %RDI.i2086, align 8
  %5215 = add i64 %5208, 437710
  %5216 = add i64 %5208, 14
  %5217 = load i64, i64* %6, align 8
  %5218 = add i64 %5217, -8
  %5219 = inttoptr i64 %5218 to i64*
  store i64 %5216, i64* %5219, align 8
  store i64 %5218, i64* %6, align 8
  store i64 %5215, i64* %3, align 8
  %call2_43f97b = tail call %struct.Memory* @sub_4aa740.dct_luma8x8(%struct.State* nonnull %0, i64 %5215, %struct.Memory* %MEMORY.2)
  %5220 = load i64, i64* %RBP.i, align 8
  %5221 = add i64 %5220, -80
  %5222 = load i32, i32* %135, align 4
  %5223 = load i64, i64* %3, align 8
  %5224 = add i64 %5223, 3
  store i64 %5224, i64* %3, align 8
  %5225 = inttoptr i64 %5221 to i32*
  store i32 %5222, i32* %5225, align 4
  %.pre138 = load i64, i64* %3, align 8
  %.pre139 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*), align 8
  br label %block_.L_43f983

block_.L_43f983:                                  ; preds = %block_43f972, %block_43f960
  %5226 = phi i64 [ %5142, %block_43f960 ], [ %.pre139, %block_43f972 ]
  %5227 = phi i64 [ %5208, %block_43f960 ], [ %.pre138, %block_43f972 ]
  %MEMORY.29 = phi %struct.Memory* [ %MEMORY.2, %block_43f960 ], [ %call2_43f97b, %block_43f972 ]
  store i64 %5226, i64* %RAX.i2060, align 8
  %5228 = add i64 %5226, 72724
  %5229 = add i64 %5227, 15
  store i64 %5229, i64* %3, align 8
  %5230 = inttoptr i64 %5228 to i32*
  %5231 = load i32, i32* %5230, align 4
  store i8 0, i8* %26, align 1
  %5232 = and i32 %5231, 255
  %5233 = tail call i32 @llvm.ctpop.i32(i32 %5232)
  %5234 = trunc i32 %5233 to i8
  %5235 = and i8 %5234, 1
  %5236 = xor i8 %5235, 1
  store i8 %5236, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %5237 = icmp eq i32 %5231, 0
  %5238 = zext i1 %5237 to i8
  store i8 %5238, i8* %42, align 1
  %5239 = lshr i32 %5231, 31
  %5240 = trunc i32 %5239 to i8
  store i8 %5240, i8* %45, align 1
  store i8 0, i8* %51, align 1
  %.v214 = select i1 %5237, i64 164, i64 21
  %5241 = add i64 %5227, %.v214
  store i64 %5241, i64* %3, align 8
  %.pre142 = load i64, i64* %RBP.i, align 8
  br i1 %5237, label %block_.L_43fa27, label %block_43f998

block_43f998:                                     ; preds = %block_.L_43f983
  %5242 = add i64 %.pre142, -76
  %5243 = add i64 %5241, 7
  store i64 %5243, i64* %3, align 8
  %5244 = inttoptr i64 %5242 to i32*
  store i32 0, i32* %5244, align 4
  %.pre140 = load i64, i64* %3, align 8
  br label %block_.L_43f99f

block_.L_43f99f:                                  ; preds = %block_.L_43fa0f, %block_43f998
  %5245 = phi i64 [ %5519, %block_.L_43fa0f ], [ %.pre140, %block_43f998 ]
  %5246 = load i64, i64* %RBP.i, align 8
  %5247 = add i64 %5246, -76
  %5248 = add i64 %5245, 4
  store i64 %5248, i64* %3, align 8
  %5249 = inttoptr i64 %5247 to i32*
  %5250 = load i32, i32* %5249, align 4
  %5251 = add i32 %5250, -8
  %5252 = icmp ult i32 %5250, 8
  %5253 = zext i1 %5252 to i8
  store i8 %5253, i8* %26, align 1
  %5254 = and i32 %5251, 255
  %5255 = tail call i32 @llvm.ctpop.i32(i32 %5254)
  %5256 = trunc i32 %5255 to i8
  %5257 = and i8 %5256, 1
  %5258 = xor i8 %5257, 1
  store i8 %5258, i8* %33, align 1
  %5259 = xor i32 %5251, %5250
  %5260 = lshr i32 %5259, 4
  %5261 = trunc i32 %5260 to i8
  %5262 = and i8 %5261, 1
  store i8 %5262, i8* %39, align 1
  %5263 = icmp eq i32 %5251, 0
  %5264 = zext i1 %5263 to i8
  store i8 %5264, i8* %42, align 1
  %5265 = lshr i32 %5251, 31
  %5266 = trunc i32 %5265 to i8
  store i8 %5266, i8* %45, align 1
  %5267 = lshr i32 %5250, 31
  %5268 = xor i32 %5265, %5267
  %5269 = add nuw nsw i32 %5268, %5267
  %5270 = icmp eq i32 %5269, 2
  %5271 = zext i1 %5270 to i8
  store i8 %5271, i8* %51, align 1
  %5272 = icmp ne i8 %5266, 0
  %5273 = xor i1 %5272, %5270
  %.v215 = select i1 %5273, i64 10, i64 131
  %5274 = add i64 %5245, %.v215
  store i64 %5274, i64* %3, align 8
  br i1 %5273, label %block_43f9a9, label %block_.L_43fa22

block_43f9a9:                                     ; preds = %block_.L_43f99f
  %5275 = add i64 %5246, -72
  %5276 = add i64 %5274, 7
  store i64 %5276, i64* %3, align 8
  %5277 = inttoptr i64 %5275 to i32*
  store i32 0, i32* %5277, align 4
  %.pre141 = load i64, i64* %3, align 8
  br label %block_.L_43f9b0

block_.L_43f9b0:                                  ; preds = %block_43f9ba, %block_43f9a9
  %5278 = phi i64 [ %5489, %block_43f9ba ], [ %.pre141, %block_43f9a9 ]
  %5279 = load i64, i64* %RBP.i, align 8
  %5280 = add i64 %5279, -72
  %5281 = add i64 %5278, 4
  store i64 %5281, i64* %3, align 8
  %5282 = inttoptr i64 %5280 to i32*
  %5283 = load i32, i32* %5282, align 4
  %5284 = add i32 %5283, -8
  %5285 = icmp ult i32 %5283, 8
  %5286 = zext i1 %5285 to i8
  store i8 %5286, i8* %26, align 1
  %5287 = and i32 %5284, 255
  %5288 = tail call i32 @llvm.ctpop.i32(i32 %5287)
  %5289 = trunc i32 %5288 to i8
  %5290 = and i8 %5289, 1
  %5291 = xor i8 %5290, 1
  store i8 %5291, i8* %33, align 1
  %5292 = xor i32 %5284, %5283
  %5293 = lshr i32 %5292, 4
  %5294 = trunc i32 %5293 to i8
  %5295 = and i8 %5294, 1
  store i8 %5295, i8* %39, align 1
  %5296 = icmp eq i32 %5284, 0
  %5297 = zext i1 %5296 to i8
  store i8 %5297, i8* %42, align 1
  %5298 = lshr i32 %5284, 31
  %5299 = trunc i32 %5298 to i8
  store i8 %5299, i8* %45, align 1
  %5300 = lshr i32 %5283, 31
  %5301 = xor i32 %5298, %5300
  %5302 = add nuw nsw i32 %5301, %5300
  %5303 = icmp eq i32 %5302, 2
  %5304 = zext i1 %5303 to i8
  store i8 %5304, i8* %51, align 1
  %5305 = icmp ne i8 %5299, 0
  %5306 = xor i1 %5305, %5303
  %.v179 = select i1 %5306, i64 10, i64 95
  %5307 = add i64 %5278, %.v179
  store i64 %5307, i64* %3, align 8
  br i1 %5306, label %block_43f9ba, label %block_.L_43fa0f

block_43f9ba:                                     ; preds = %block_.L_43f9b0
  store i64 ptrtoint (%G__0x722ff0_type* @G__0x722ff0 to i64), i64* %RAX.i2060, align 8
  %5308 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*), align 8
  %5309 = add i64 %5308, 13112
  store i64 %5309, i64* %RCX.i2097, align 8
  %5310 = icmp ugt i64 %5308, -13113
  %5311 = zext i1 %5310 to i8
  store i8 %5311, i8* %26, align 1
  %5312 = trunc i64 %5309 to i32
  %5313 = and i32 %5312, 255
  %5314 = tail call i32 @llvm.ctpop.i32(i32 %5313)
  %5315 = trunc i32 %5314 to i8
  %5316 = and i8 %5315, 1
  %5317 = xor i8 %5316, 1
  store i8 %5317, i8* %33, align 1
  %5318 = xor i64 %5308, 16
  %5319 = xor i64 %5318, %5309
  %5320 = lshr i64 %5319, 4
  %5321 = trunc i64 %5320 to i8
  %5322 = and i8 %5321, 1
  store i8 %5322, i8* %39, align 1
  %5323 = icmp eq i64 %5309, 0
  %5324 = zext i1 %5323 to i8
  store i8 %5324, i8* %42, align 1
  %5325 = lshr i64 %5309, 63
  %5326 = trunc i64 %5325 to i8
  store i8 %5326, i8* %45, align 1
  %5327 = lshr i64 %5308, 63
  %5328 = xor i64 %5325, %5327
  %5329 = add nuw nsw i64 %5328, %5325
  %5330 = icmp eq i64 %5329, 2
  %5331 = zext i1 %5330 to i8
  store i8 %5331, i8* %51, align 1
  %5332 = add i64 %5307, 29
  store i64 %5332, i64* %3, align 8
  %5333 = load i32, i32* %5282, align 4
  %5334 = sext i32 %5333 to i64
  %5335 = shl nsw i64 %5334, 6
  store i64 %5335, i64* %RDX.i2040.pre-phi, align 8
  %5336 = add i64 %5335, %5309
  store i64 %5336, i64* %RCX.i2097, align 8
  %5337 = icmp ult i64 %5336, %5309
  %5338 = icmp ult i64 %5336, %5335
  %5339 = or i1 %5337, %5338
  %5340 = zext i1 %5339 to i8
  store i8 %5340, i8* %26, align 1
  %5341 = trunc i64 %5336 to i32
  %5342 = and i32 %5341, 255
  %5343 = tail call i32 @llvm.ctpop.i32(i32 %5342)
  %5344 = trunc i32 %5343 to i8
  %5345 = and i8 %5344, 1
  %5346 = xor i8 %5345, 1
  store i8 %5346, i8* %33, align 1
  %5347 = xor i64 %5309, %5336
  %5348 = lshr i64 %5347, 4
  %5349 = trunc i64 %5348 to i8
  %5350 = and i8 %5349, 1
  store i8 %5350, i8* %39, align 1
  %5351 = icmp eq i64 %5336, 0
  %5352 = zext i1 %5351 to i8
  store i8 %5352, i8* %42, align 1
  %5353 = lshr i64 %5336, 63
  %5354 = trunc i64 %5353 to i8
  store i8 %5354, i8* %45, align 1
  %5355 = lshr i64 %5334, 57
  %5356 = and i64 %5355, 1
  %5357 = xor i64 %5353, %5325
  %5358 = xor i64 %5353, %5356
  %5359 = add nuw nsw i64 %5357, %5358
  %5360 = icmp eq i64 %5359, 2
  %5361 = zext i1 %5360 to i8
  store i8 %5361, i8* %51, align 1
  %5362 = load i64, i64* %RBP.i, align 8
  %5363 = add i64 %5362, -76
  %5364 = add i64 %5307, 40
  store i64 %5364, i64* %3, align 8
  %5365 = inttoptr i64 %5363 to i32*
  %5366 = load i32, i32* %5365, align 4
  %5367 = sext i32 %5366 to i64
  store i64 %5367, i64* %RDX.i2040.pre-phi, align 8
  %5368 = shl nsw i64 %5367, 2
  %5369 = add i64 %5368, %5336
  %5370 = add i64 %5307, 43
  store i64 %5370, i64* %3, align 8
  %5371 = inttoptr i64 %5369 to i32*
  %5372 = load i32, i32* %5371, align 4
  %5373 = zext i32 %5372 to i64
  store i64 %5373, i64* %RSI.i2083, align 8
  %5374 = add i64 %5362, -96
  %5375 = add i64 %5307, 46
  store i64 %5375, i64* %3, align 8
  %5376 = inttoptr i64 %5374 to i32*
  %5377 = load i32, i32* %5376, align 4
  %5378 = zext i32 %5377 to i64
  store i64 %5378, i64* %RDI.i2086, align 8
  %5379 = add i64 %5362, -72
  %5380 = add i64 %5307, 49
  store i64 %5380, i64* %3, align 8
  %5381 = inttoptr i64 %5379 to i32*
  %5382 = load i32, i32* %5381, align 4
  %5383 = add i32 %5382, %5377
  %5384 = zext i32 %5383 to i64
  store i64 %5384, i64* %RDI.i2086, align 8
  %5385 = sext i32 %5383 to i64
  %5386 = shl nsw i64 %5385, 6
  store i64 %5386, i64* %RCX.i2097, align 8
  %5387 = load i64, i64* %RAX.i2060, align 8
  %5388 = add i64 %5386, %5387
  store i64 %5388, i64* %RAX.i2060, align 8
  %5389 = icmp ult i64 %5388, %5387
  %5390 = icmp ult i64 %5388, %5386
  %5391 = or i1 %5389, %5390
  %5392 = zext i1 %5391 to i8
  store i8 %5392, i8* %26, align 1
  %5393 = trunc i64 %5388 to i32
  %5394 = and i32 %5393, 255
  %5395 = tail call i32 @llvm.ctpop.i32(i32 %5394)
  %5396 = trunc i32 %5395 to i8
  %5397 = and i8 %5396, 1
  %5398 = xor i8 %5397, 1
  store i8 %5398, i8* %33, align 1
  %5399 = xor i64 %5387, %5388
  %5400 = lshr i64 %5399, 4
  %5401 = trunc i64 %5400 to i8
  %5402 = and i8 %5401, 1
  store i8 %5402, i8* %39, align 1
  %5403 = icmp eq i64 %5388, 0
  %5404 = zext i1 %5403 to i8
  store i8 %5404, i8* %42, align 1
  %5405 = lshr i64 %5388, 63
  %5406 = trunc i64 %5405 to i8
  store i8 %5406, i8* %45, align 1
  %5407 = lshr i64 %5387, 63
  %5408 = lshr i64 %5385, 57
  %5409 = and i64 %5408, 1
  %5410 = xor i64 %5405, %5407
  %5411 = xor i64 %5405, %5409
  %5412 = add nuw nsw i64 %5410, %5411
  %5413 = icmp eq i64 %5412, 2
  %5414 = zext i1 %5413 to i8
  store i8 %5414, i8* %51, align 1
  %5415 = load i64, i64* %RBP.i, align 8
  %5416 = add i64 %5415, -92
  %5417 = add i64 %5307, 62
  store i64 %5417, i64* %3, align 8
  %5418 = inttoptr i64 %5416 to i32*
  %5419 = load i32, i32* %5418, align 4
  %5420 = zext i32 %5419 to i64
  store i64 %5420, i64* %RDI.i2086, align 8
  %5421 = add i64 %5415, -76
  %5422 = add i64 %5307, 65
  store i64 %5422, i64* %3, align 8
  %5423 = inttoptr i64 %5421 to i32*
  %5424 = load i32, i32* %5423, align 4
  %5425 = add i32 %5424, %5419
  %5426 = zext i32 %5425 to i64
  store i64 %5426, i64* %RDI.i2086, align 8
  %5427 = icmp ult i32 %5425, %5419
  %5428 = icmp ult i32 %5425, %5424
  %5429 = or i1 %5427, %5428
  %5430 = zext i1 %5429 to i8
  store i8 %5430, i8* %26, align 1
  %5431 = and i32 %5425, 255
  %5432 = tail call i32 @llvm.ctpop.i32(i32 %5431)
  %5433 = trunc i32 %5432 to i8
  %5434 = and i8 %5433, 1
  %5435 = xor i8 %5434, 1
  store i8 %5435, i8* %33, align 1
  %5436 = xor i32 %5424, %5419
  %5437 = xor i32 %5436, %5425
  %5438 = lshr i32 %5437, 4
  %5439 = trunc i32 %5438 to i8
  %5440 = and i8 %5439, 1
  store i8 %5440, i8* %39, align 1
  %5441 = icmp eq i32 %5425, 0
  %5442 = zext i1 %5441 to i8
  store i8 %5442, i8* %42, align 1
  %5443 = lshr i32 %5425, 31
  %5444 = trunc i32 %5443 to i8
  store i8 %5444, i8* %45, align 1
  %5445 = lshr i32 %5419, 31
  %5446 = lshr i32 %5424, 31
  %5447 = xor i32 %5443, %5445
  %5448 = xor i32 %5443, %5446
  %5449 = add nuw nsw i32 %5447, %5448
  %5450 = icmp eq i32 %5449, 2
  %5451 = zext i1 %5450 to i8
  store i8 %5451, i8* %51, align 1
  %5452 = sext i32 %5425 to i64
  store i64 %5452, i64* %RCX.i2097, align 8
  %5453 = shl nsw i64 %5452, 2
  %5454 = add i64 %5388, %5453
  %5455 = load i32, i32* %ESI.i714, align 4
  %5456 = add i64 %5307, 71
  store i64 %5456, i64* %3, align 8
  %5457 = inttoptr i64 %5454 to i32*
  store i32 %5455, i32* %5457, align 4
  %5458 = load i64, i64* %RBP.i, align 8
  %5459 = add i64 %5458, -72
  %5460 = load i64, i64* %3, align 8
  %5461 = add i64 %5460, 3
  store i64 %5461, i64* %3, align 8
  %5462 = inttoptr i64 %5459 to i32*
  %5463 = load i32, i32* %5462, align 4
  %5464 = add i32 %5463, 1
  %5465 = zext i32 %5464 to i64
  store i64 %5465, i64* %RAX.i2060, align 8
  %5466 = icmp eq i32 %5463, -1
  %5467 = icmp eq i32 %5464, 0
  %5468 = or i1 %5466, %5467
  %5469 = zext i1 %5468 to i8
  store i8 %5469, i8* %26, align 1
  %5470 = and i32 %5464, 255
  %5471 = tail call i32 @llvm.ctpop.i32(i32 %5470)
  %5472 = trunc i32 %5471 to i8
  %5473 = and i8 %5472, 1
  %5474 = xor i8 %5473, 1
  store i8 %5474, i8* %33, align 1
  %5475 = xor i32 %5464, %5463
  %5476 = lshr i32 %5475, 4
  %5477 = trunc i32 %5476 to i8
  %5478 = and i8 %5477, 1
  store i8 %5478, i8* %39, align 1
  %5479 = zext i1 %5467 to i8
  store i8 %5479, i8* %42, align 1
  %5480 = lshr i32 %5464, 31
  %5481 = trunc i32 %5480 to i8
  store i8 %5481, i8* %45, align 1
  %5482 = lshr i32 %5463, 31
  %5483 = xor i32 %5480, %5482
  %5484 = add nuw nsw i32 %5483, %5480
  %5485 = icmp eq i32 %5484, 2
  %5486 = zext i1 %5485 to i8
  store i8 %5486, i8* %51, align 1
  %5487 = add i64 %5460, 9
  store i64 %5487, i64* %3, align 8
  store i32 %5464, i32* %5462, align 4
  %5488 = load i64, i64* %3, align 8
  %5489 = add i64 %5488, -90
  store i64 %5489, i64* %3, align 8
  br label %block_.L_43f9b0

block_.L_43fa0f:                                  ; preds = %block_.L_43f9b0
  %5490 = add i64 %5279, -76
  %5491 = add i64 %5307, 8
  store i64 %5491, i64* %3, align 8
  %5492 = inttoptr i64 %5490 to i32*
  %5493 = load i32, i32* %5492, align 4
  %5494 = add i32 %5493, 1
  %5495 = zext i32 %5494 to i64
  store i64 %5495, i64* %RAX.i2060, align 8
  %5496 = icmp eq i32 %5493, -1
  %5497 = icmp eq i32 %5494, 0
  %5498 = or i1 %5496, %5497
  %5499 = zext i1 %5498 to i8
  store i8 %5499, i8* %26, align 1
  %5500 = and i32 %5494, 255
  %5501 = tail call i32 @llvm.ctpop.i32(i32 %5500)
  %5502 = trunc i32 %5501 to i8
  %5503 = and i8 %5502, 1
  %5504 = xor i8 %5503, 1
  store i8 %5504, i8* %33, align 1
  %5505 = xor i32 %5494, %5493
  %5506 = lshr i32 %5505, 4
  %5507 = trunc i32 %5506 to i8
  %5508 = and i8 %5507, 1
  store i8 %5508, i8* %39, align 1
  %5509 = zext i1 %5497 to i8
  store i8 %5509, i8* %42, align 1
  %5510 = lshr i32 %5494, 31
  %5511 = trunc i32 %5510 to i8
  store i8 %5511, i8* %45, align 1
  %5512 = lshr i32 %5493, 31
  %5513 = xor i32 %5510, %5512
  %5514 = add nuw nsw i32 %5513, %5510
  %5515 = icmp eq i32 %5514, 2
  %5516 = zext i1 %5515 to i8
  store i8 %5516, i8* %51, align 1
  %5517 = add i64 %5307, 14
  store i64 %5517, i64* %3, align 8
  store i32 %5494, i32* %5492, align 4
  %5518 = load i64, i64* %3, align 8
  %5519 = add i64 %5518, -126
  store i64 %5519, i64* %3, align 8
  br label %block_.L_43f99f

block_.L_43fa22:                                  ; preds = %block_.L_43f99f
  %5520 = add i64 %5274, 5
  store i64 %5520, i64* %3, align 8
  br label %block_.L_43fa27

block_.L_43fa27:                                  ; preds = %block_.L_43f983, %block_.L_43fa22
  %5521 = phi i64 [ %5520, %block_.L_43fa22 ], [ %5241, %block_.L_43f983 ]
  %5522 = phi i64 [ %5246, %block_.L_43fa22 ], [ %.pre142, %block_.L_43f983 ]
  %5523 = add i64 %5522, -80
  %5524 = add i64 %5521, 4
  store i64 %5524, i64* %3, align 8
  %5525 = inttoptr i64 %5523 to i32*
  %5526 = load i32, i32* %5525, align 4
  store i8 0, i8* %26, align 1
  %5527 = and i32 %5526, 255
  %5528 = tail call i32 @llvm.ctpop.i32(i32 %5527)
  %5529 = trunc i32 %5528 to i8
  %5530 = and i8 %5529, 1
  %5531 = xor i8 %5530, 1
  store i8 %5531, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %5532 = icmp eq i32 %5526, 0
  %5533 = zext i1 %5532 to i8
  store i8 %5533, i8* %42, align 1
  %5534 = lshr i32 %5526, 31
  %5535 = trunc i32 %5534 to i8
  store i8 %5535, i8* %45, align 1
  store i8 0, i8* %51, align 1
  %.v216 = select i1 %5532, i64 89, i64 10
  %5536 = add i64 %5521, %.v216
  store i64 %5536, i64* %3, align 8
  br i1 %5532, label %block_.L_43fa80, label %block_43fa31

block_43fa31:                                     ; preds = %block_.L_43fa27
  store i64 51, i64* %RAX.i2060, align 8
  store i64 2, i64* %RCX.i2097, align 8
  %5537 = add i64 %5522, -36
  %5538 = add i64 %5536, 13
  store i64 %5538, i64* %3, align 8
  %5539 = inttoptr i64 %5537 to i32*
  %5540 = load i32, i32* %5539, align 4
  %5541 = shl i32 %5540, 2
  %5542 = zext i32 %5541 to i64
  store i64 %5542, i64* %RDX.i2040.pre-phi, align 8
  %5543 = lshr i32 %5540, 30
  %5544 = trunc i32 %5543 to i8
  %5545 = and i8 %5544, 1
  store i8 %5545, i8* %26, align 1
  %5546 = and i32 %5541, 252
  %5547 = tail call i32 @llvm.ctpop.i32(i32 %5546)
  %5548 = trunc i32 %5547 to i8
  %5549 = and i8 %5548, 1
  %5550 = xor i8 %5549, 1
  store i8 %5550, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %5551 = icmp eq i32 %5541, 0
  %5552 = zext i1 %5551 to i8
  store i8 %5552, i8* %42, align 1
  %5553 = lshr i32 %5540, 29
  %5554 = trunc i32 %5553 to i8
  %5555 = and i8 %5554, 1
  store i8 %5555, i8* %45, align 1
  store i8 0, i8* %51, align 1
  %5556 = add i64 %5536, 19
  store i64 %5556, i64* %3, align 8
  %5557 = load i32, i32* %5539, align 4
  %5558 = zext i32 %5557 to i64
  store i64 %5558, i64* %RSI.i2083, align 8
  %5559 = add i64 %5522, -160
  %5560 = add i64 %5536, 25
  store i64 %5560, i64* %3, align 8
  %5561 = inttoptr i64 %5559 to i32*
  store i32 51, i32* %5561, align 4
  %5562 = load i32, i32* %ESI.i714, align 4
  %5563 = zext i32 %5562 to i64
  %5564 = load i64, i64* %3, align 8
  store i64 %5563, i64* %RAX.i2060, align 8
  %5565 = load i64, i64* %RBP.i, align 8
  %5566 = add i64 %5565, -164
  %5567 = load i32, i32* %EDX.i2080, align 4
  %5568 = add i64 %5564, 8
  store i64 %5568, i64* %3, align 8
  %5569 = inttoptr i64 %5566 to i32*
  store i32 %5567, i32* %5569, align 4
  %5570 = load i64, i64* %3, align 8
  %5571 = load i32, i32* %135, align 8
  %5572 = sext i32 %5571 to i64
  %5573 = lshr i64 %5572, 32
  store i64 %5573, i64* %134, align 8
  %5574 = load i32, i32* %ECX.i2096, align 4
  %5575 = add i64 %5570, 3
  store i64 %5575, i64* %3, align 8
  %5576 = zext i32 %5571 to i64
  %5577 = sext i32 %5574 to i64
  %5578 = shl nuw i64 %5573, 32
  %5579 = or i64 %5578, %5576
  %5580 = sdiv i64 %5579, %5577
  %5581 = shl i64 %5580, 32
  %5582 = ashr exact i64 %5581, 32
  %5583 = icmp eq i64 %5580, %5582
  br i1 %5583, label %5586, label %5584

; <label>:5584:                                   ; preds = %block_43fa31
  %5585 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %5575, %struct.Memory* %MEMORY.29)
  %.pre143 = load i64, i64* %RDX.i2040.pre-phi, align 8
  %.pre144 = load i64, i64* %3, align 8
  br label %routine_idivl__ecx.exit339

; <label>:5586:                                   ; preds = %block_43fa31
  %5587 = srem i64 %5579, %5577
  %5588 = and i64 %5580, 4294967295
  store i64 %5588, i64* %RAX.i2060, align 8
  %5589 = and i64 %5587, 4294967295
  store i64 %5589, i64* %RDX.i2040.pre-phi, align 8
  store i8 0, i8* %26, align 1
  store i8 0, i8* %33, align 1
  store i8 0, i8* %39, align 1
  store i8 0, i8* %42, align 1
  store i8 0, i8* %45, align 1
  store i8 0, i8* %51, align 1
  br label %routine_idivl__ecx.exit339

routine_idivl__ecx.exit339:                       ; preds = %5586, %5584
  %5590 = phi i64 [ %.pre144, %5584 ], [ %5575, %5586 ]
  %5591 = phi i64 [ %.pre143, %5584 ], [ %5589, %5586 ]
  %5592 = phi %struct.Memory* [ %5585, %5584 ], [ %MEMORY.29, %5586 ]
  %5593 = trunc i64 %5591 to i32
  %5594 = shl i32 %5593, 1
  %5595 = icmp slt i32 %5593, 0
  %5596 = icmp slt i32 %5594, 0
  %5597 = xor i1 %5595, %5596
  %5598 = zext i32 %5594 to i64
  store i64 %5598, i64* %RDX.i2040.pre-phi, align 8
  %.lobit81 = lshr i32 %5593, 31
  %5599 = trunc i32 %.lobit81 to i8
  store i8 %5599, i8* %26, align 1
  %5600 = and i32 %5594, 254
  %5601 = tail call i32 @llvm.ctpop.i32(i32 %5600)
  %5602 = trunc i32 %5601 to i8
  %5603 = and i8 %5602, 1
  %5604 = xor i8 %5603, 1
  store i8 %5604, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %5605 = icmp eq i32 %5594, 0
  %5606 = zext i1 %5605 to i8
  store i8 %5606, i8* %42, align 1
  %5607 = lshr i32 %5593, 30
  %5608 = trunc i32 %5607 to i8
  %5609 = and i8 %5608, 1
  store i8 %5609, i8* %45, align 1
  %5610 = zext i1 %5597 to i8
  store i8 %5610, i8* %51, align 1
  %5611 = load i64, i64* %RBP.i, align 8
  %5612 = add i64 %5611, -164
  %5613 = add i64 %5590, 8
  store i64 %5613, i64* %3, align 8
  %5614 = inttoptr i64 %5612 to i32*
  %5615 = load i32, i32* %5614, align 4
  %5616 = sub i32 %5615, %5594
  %5617 = zext i32 %5616 to i64
  store i64 %5617, i64* %RCX.i2097, align 8
  %5618 = icmp ult i32 %5615, %5594
  %5619 = zext i1 %5618 to i8
  store i8 %5619, i8* %26, align 1
  %5620 = and i32 %5616, 255
  %5621 = tail call i32 @llvm.ctpop.i32(i32 %5620)
  %5622 = trunc i32 %5621 to i8
  %5623 = and i8 %5622, 1
  %5624 = xor i8 %5623, 1
  store i8 %5624, i8* %33, align 1
  %5625 = xor i32 %5594, %5615
  %5626 = xor i32 %5625, %5616
  %5627 = lshr i32 %5626, 4
  %5628 = trunc i32 %5627 to i8
  %5629 = and i8 %5628, 1
  store i8 %5629, i8* %39, align 1
  %5630 = icmp eq i32 %5616, 0
  %5631 = zext i1 %5630 to i8
  store i8 %5631, i8* %42, align 1
  %5632 = lshr i32 %5616, 31
  %5633 = trunc i32 %5632 to i8
  store i8 %5633, i8* %45, align 1
  %5634 = lshr i32 %5615, 31
  %5635 = lshr i32 %5593, 30
  %5636 = and i32 %5635, 1
  %5637 = xor i32 %5636, %5634
  %5638 = xor i32 %5632, %5634
  %5639 = add nuw nsw i32 %5638, %5637
  %5640 = icmp eq i32 %5639, 2
  %5641 = zext i1 %5640 to i8
  store i8 %5641, i8* %51, align 1
  %5642 = add i64 %5611, -160
  %5643 = add i64 %5590, 16
  store i64 %5643, i64* %3, align 8
  %5644 = inttoptr i64 %5642 to i32*
  %5645 = load i32, i32* %5644, align 4
  %5646 = zext i32 %5645 to i64
  store i64 %5646, i64* %RDX.i2040.pre-phi, align 8
  %5647 = add i64 %5590, 18
  store i64 %5647, i64* %3, align 8
  %5648 = trunc i32 %5616 to i5
  switch i5 %5648, label %5654 [
    i5 0, label %routine_shll__cl___edx.exit325
    i5 1, label %5649
  ]

; <label>:5649:                                   ; preds = %routine_idivl__ecx.exit339
  %5650 = shl i32 %5645, 1
  %5651 = icmp slt i32 %5645, 0
  %5652 = icmp slt i32 %5650, 0
  %5653 = xor i1 %5651, %5652
  br label %5663

; <label>:5654:                                   ; preds = %routine_idivl__ecx.exit339
  %5655 = and i32 %5616, 31
  %5656 = zext i32 %5655 to i64
  %5657 = add nuw nsw i64 %5656, 4294967295
  %5658 = and i64 %5657, 4294967295
  %5659 = shl i64 %5646, %5658
  %5660 = trunc i64 %5659 to i32
  %5661 = icmp slt i32 %5660, 0
  %5662 = shl i32 %5660, 1
  br label %5663

; <label>:5663:                                   ; preds = %5654, %5649
  %5664 = phi i1 [ %5651, %5649 ], [ %5661, %5654 ]
  %5665 = phi i1 [ %5653, %5649 ], [ false, %5654 ]
  %5666 = phi i32 [ %5650, %5649 ], [ %5662, %5654 ]
  %5667 = zext i32 %5666 to i64
  store i64 %5667, i64* %RDX.i2040.pre-phi, align 8
  %5668 = zext i1 %5664 to i8
  store i8 %5668, i8* %26, align 1
  %5669 = and i32 %5666, 254
  %5670 = tail call i32 @llvm.ctpop.i32(i32 %5669)
  %5671 = trunc i32 %5670 to i8
  %5672 = and i8 %5671, 1
  %5673 = xor i8 %5672, 1
  store i8 %5673, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %5674 = icmp eq i32 %5666, 0
  %5675 = zext i1 %5674 to i8
  store i8 %5675, i8* %42, align 1
  %5676 = lshr i32 %5666, 31
  %5677 = trunc i32 %5676 to i8
  store i8 %5677, i8* %45, align 1
  %5678 = zext i1 %5665 to i8
  store i8 %5678, i8* %51, align 1
  br label %routine_shll__cl___edx.exit325

routine_shll__cl___edx.exit325:                   ; preds = %5663, %routine_idivl__ecx.exit339
  %5679 = phi i32 [ %5666, %5663 ], [ %5645, %routine_idivl__ecx.exit339 ]
  %5680 = sext i32 %5679 to i64
  store i64 %5680, i64* %RDI.i2086, align 8
  %5681 = add i64 %5611, -32
  %5682 = add i64 %5590, 25
  store i64 %5682, i64* %3, align 8
  %5683 = inttoptr i64 %5681 to i64*
  %5684 = load i64, i64* %5683, align 8
  store i64 %5684, i64* %485, align 8
  %5685 = add i64 %5590, 28
  store i64 %5685, i64* %3, align 8
  %5686 = inttoptr i64 %5684 to i64*
  %5687 = load i64, i64* %5686, align 8
  %5688 = or i64 %5687, %5680
  store i64 %5688, i64* %RDI.i2086, align 8
  store i8 0, i8* %26, align 1
  %5689 = trunc i64 %5688 to i32
  %5690 = and i32 %5689, 255
  %5691 = tail call i32 @llvm.ctpop.i32(i32 %5690)
  %5692 = trunc i32 %5691 to i8
  %5693 = and i8 %5692, 1
  %5694 = xor i8 %5693, 1
  store i8 %5694, i8* %33, align 1
  %5695 = icmp eq i64 %5688, 0
  %5696 = zext i1 %5695 to i8
  store i8 %5696, i8* %42, align 1
  %5697 = lshr i64 %5688, 63
  %5698 = trunc i64 %5697 to i8
  store i8 %5698, i8* %45, align 1
  store i8 0, i8* %51, align 1
  store i8 0, i8* %39, align 1
  %5699 = add i64 %5590, 31
  store i64 %5699, i64* %3, align 8
  store i64 %5688, i64* %5686, align 8
  %5700 = load i64, i64* %RBP.i, align 8
  %5701 = add i64 %5700, -100
  %5702 = load i64, i64* %3, align 8
  %5703 = add i64 %5702, 3
  store i64 %5703, i64* %3, align 8
  %5704 = inttoptr i64 %5701 to i32*
  %5705 = load i32, i32* %5704, align 4
  %5706 = zext i32 %5705 to i64
  store i64 %5706, i64* %RDX.i2040.pre-phi, align 8
  %5707 = add i64 %5700, -24
  %5708 = add i64 %5702, 7
  store i64 %5708, i64* %3, align 8
  %5709 = inttoptr i64 %5707 to i64*
  %5710 = load i64, i64* %5709, align 8
  store i64 %5710, i64* %RDI.i2086, align 8
  %5711 = add i64 %5702, 9
  store i64 %5711, i64* %3, align 8
  %5712 = inttoptr i64 %5710 to i32*
  %5713 = load i32, i32* %5712, align 4
  %5714 = or i32 %5713, %5705
  %5715 = zext i32 %5714 to i64
  store i64 %5715, i64* %RDX.i2040.pre-phi, align 8
  store i8 0, i8* %26, align 1
  %5716 = and i32 %5714, 255
  %5717 = tail call i32 @llvm.ctpop.i32(i32 %5716)
  %5718 = trunc i32 %5717 to i8
  %5719 = and i8 %5718, 1
  %5720 = xor i8 %5719, 1
  store i8 %5720, i8* %33, align 1
  %5721 = icmp eq i32 %5714, 0
  %5722 = zext i1 %5721 to i8
  store i8 %5722, i8* %42, align 1
  %5723 = lshr i32 %5714, 31
  %5724 = trunc i32 %5723 to i8
  store i8 %5724, i8* %45, align 1
  store i8 0, i8* %51, align 1
  store i8 0, i8* %39, align 1
  %5725 = add i64 %5702, 11
  store i64 %5725, i64* %3, align 8
  store i32 %5714, i32* %5712, align 4
  %.pre145 = load i64, i64* %3, align 8
  br label %block_.L_43fa80

block_.L_43fa80:                                  ; preds = %routine_shll__cl___edx.exit325, %block_.L_43fa27
  %5726 = phi i64 [ %5536, %block_.L_43fa27 ], [ %.pre145, %routine_shll__cl___edx.exit325 ]
  %MEMORY.33 = phi %struct.Memory* [ %MEMORY.29, %block_.L_43fa27 ], [ %5592, %routine_shll__cl___edx.exit325 ]
  %5727 = add i64 %5726, 5
  store i64 %5727, i64* %3, align 8
  br label %block_.L_43fa85

block_.L_43fa85:                                  ; preds = %block_43f956, %block_.L_43fa80, %block_43f941
  %5728 = phi i64 [ %5168, %block_43f941 ], [ %5182, %block_43f956 ], [ %5727, %block_.L_43fa80 ]
  %MEMORY.34 = phi %struct.Memory* [ %MEMORY.2, %block_43f941 ], [ %MEMORY.2, %block_43f956 ], [ %MEMORY.33, %block_.L_43fa80 ]
  %5729 = add i64 %5728, 5
  store i64 %5729, i64* %3, align 8
  br label %block_.L_43fa8a

block_.L_43fa8a:                                  ; preds = %block_.L_43fa85, %block_.L_43f934
  %5730 = phi i64 [ %5141, %block_.L_43f934 ], [ %5729, %block_.L_43fa85 ]
  %MEMORY.35 = phi %struct.Memory* [ %MEMORY.2, %block_.L_43f934 ], [ %MEMORY.34, %block_.L_43fa85 ]
  %5731 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*), align 8
  store i64 %5731, i64* %RAX.i2060, align 8
  %5732 = add i64 %5731, 72392
  %5733 = add i64 %5730, 15
  store i64 %5733, i64* %3, align 8
  %5734 = inttoptr i64 %5732 to i32*
  %5735 = load i32, i32* %5734, align 4
  %5736 = add i32 %5735, -1
  %5737 = icmp eq i32 %5735, 0
  %5738 = zext i1 %5737 to i8
  store i8 %5738, i8* %26, align 1
  %5739 = and i32 %5736, 255
  %5740 = tail call i32 @llvm.ctpop.i32(i32 %5739)
  %5741 = trunc i32 %5740 to i8
  %5742 = and i8 %5741, 1
  %5743 = xor i8 %5742, 1
  store i8 %5743, i8* %33, align 1
  %5744 = xor i32 %5736, %5735
  %5745 = lshr i32 %5744, 4
  %5746 = trunc i32 %5745 to i8
  %5747 = and i8 %5746, 1
  store i8 %5747, i8* %39, align 1
  %5748 = icmp eq i32 %5736, 0
  %5749 = zext i1 %5748 to i8
  store i8 %5749, i8* %42, align 1
  %5750 = lshr i32 %5736, 31
  %5751 = trunc i32 %5750 to i8
  store i8 %5751, i8* %45, align 1
  %5752 = lshr i32 %5735, 31
  %5753 = xor i32 %5750, %5752
  %5754 = add nuw nsw i32 %5753, %5752
  %5755 = icmp eq i32 %5754, 2
  %5756 = zext i1 %5755 to i8
  store i8 %5756, i8* %51, align 1
  %.v204 = select i1 %5748, i64 546, i64 21
  %5757 = add i64 %5730, %.v204
  store i64 %5757, i64* %3, align 8
  %.pre153 = load i64, i64* %RBP.i, align 8
  br i1 %5748, label %block_.L_43fcac, label %block_43fa9f

block_43fa9f:                                     ; preds = %block_.L_43fa8a
  %5758 = add i64 %.pre153, -116
  %5759 = add i64 %5757, 4
  store i64 %5759, i64* %3, align 8
  %5760 = inttoptr i64 %5758 to i32*
  %5761 = load i32, i32* %5760, align 4
  store i8 0, i8* %26, align 1
  %5762 = and i32 %5761, 255
  %5763 = tail call i32 @llvm.ctpop.i32(i32 %5762)
  %5764 = trunc i32 %5763 to i8
  %5765 = and i8 %5764, 1
  %5766 = xor i8 %5765, 1
  store i8 %5766, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %5767 = icmp eq i32 %5761, 0
  %5768 = zext i1 %5767 to i8
  store i8 %5768, i8* %42, align 1
  %5769 = lshr i32 %5761, 31
  %5770 = trunc i32 %5769 to i8
  store i8 %5770, i8* %45, align 1
  store i8 0, i8* %51, align 1
  %.v205 = select i1 %5767, i64 10, i64 525
  %5771 = add i64 %5757, %.v205
  store i64 %5771, i64* %3, align 8
  br i1 %5767, label %block_43faa9, label %block_.L_43fcac

block_43faa9:                                     ; preds = %block_43fa9f
  %5772 = add i64 %.pre153, -88
  %5773 = add i64 %5771, 4
  store i64 %5773, i64* %3, align 8
  %5774 = inttoptr i64 %5772 to i32*
  %5775 = load i32, i32* %5774, align 4
  %5776 = add i32 %5775, -4
  %5777 = icmp ult i32 %5775, 4
  %5778 = zext i1 %5777 to i8
  store i8 %5778, i8* %26, align 1
  %5779 = and i32 %5776, 255
  %5780 = tail call i32 @llvm.ctpop.i32(i32 %5779)
  %5781 = trunc i32 %5780 to i8
  %5782 = and i8 %5781, 1
  %5783 = xor i8 %5782, 1
  store i8 %5783, i8* %33, align 1
  %5784 = xor i32 %5776, %5775
  %5785 = lshr i32 %5784, 4
  %5786 = trunc i32 %5785 to i8
  %5787 = and i8 %5786, 1
  store i8 %5787, i8* %39, align 1
  %5788 = icmp eq i32 %5776, 0
  %5789 = zext i1 %5788 to i8
  store i8 %5789, i8* %42, align 1
  %5790 = lshr i32 %5776, 31
  %5791 = trunc i32 %5790 to i8
  store i8 %5791, i8* %45, align 1
  %5792 = lshr i32 %5775, 31
  %5793 = xor i32 %5790, %5792
  %5794 = add nuw nsw i32 %5793, %5792
  %5795 = icmp eq i32 %5794, 2
  %5796 = zext i1 %5795 to i8
  store i8 %5796, i8* %51, align 1
  %5797 = icmp ne i8 %5791, 0
  %5798 = xor i1 %5797, %5795
  %.demorgan = or i1 %5788, %5798
  %.v206 = select i1 %.demorgan, i64 10, i64 515
  %5799 = add i64 %5771, %.v206
  store i64 %5799, i64* %3, align 8
  br i1 %.demorgan, label %block_43fab3, label %block_.L_43fcac

block_43fab3:                                     ; preds = %block_43faa9
  store i64 %5731, i64* %RAX.i2060, align 8
  %5800 = add i64 %5731, 40
  %5801 = add i64 %5799, 11
  store i64 %5801, i64* %3, align 8
  %5802 = inttoptr i64 %5800 to i32*
  %5803 = load i32, i32* %5802, align 4
  %5804 = zext i32 %5803 to i64
  store i64 %5804, i64* %RCX.i2097, align 8
  store i64 %5731, i64* %RAX.i2060, align 8
  %5805 = add i64 %5731, 72668
  %5806 = add i64 %5799, 25
  store i64 %5806, i64* %3, align 8
  %5807 = inttoptr i64 %5805 to i32*
  %5808 = load i32, i32* %5807, align 4
  %5809 = add i32 %5808, %5803
  %5810 = zext i32 %5809 to i64
  store i64 %5810, i64* %RCX.i2097, align 8
  %5811 = and i32 %5809, 255
  %5812 = tail call i32 @llvm.ctpop.i32(i32 %5811)
  %5813 = trunc i32 %5812 to i8
  %5814 = and i8 %5813, 1
  %5815 = xor i8 %5814, 1
  %5816 = icmp eq i32 %5809, 0
  %5817 = zext i1 %5816 to i8
  %5818 = lshr i32 %5809, 31
  %5819 = trunc i32 %5818 to i8
  store i8 0, i8* %26, align 1
  store i8 %5815, i8* %33, align 1
  store i8 0, i8* %39, align 1
  store i8 %5817, i8* %42, align 1
  store i8 %5819, i8* %45, align 1
  store i8 0, i8* %51, align 1
  %.v207 = select i1 %5816, i64 34, i64 55
  %5820 = add i64 %5799, %.v207
  store i64 %5820, i64* %3, align 8
  br i1 %5816, label %block_43fad5, label %block_.L_43faea

block_43fad5:                                     ; preds = %block_43fab3
  store i64 %5731, i64* %RAX.i2060, align 8
  %5821 = add i64 %5731, 72704
  %5822 = add i64 %5820, 15
  store i64 %5822, i64* %3, align 8
  %5823 = inttoptr i64 %5821 to i32*
  %5824 = load i32, i32* %5823, align 4
  store i8 0, i8* %26, align 1
  %5825 = and i32 %5824, 255
  %5826 = tail call i32 @llvm.ctpop.i32(i32 %5825)
  %5827 = trunc i32 %5826 to i8
  %5828 = and i8 %5827, 1
  %5829 = xor i8 %5828, 1
  store i8 %5829, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %5830 = icmp eq i32 %5824, 0
  %5831 = zext i1 %5830 to i8
  store i8 %5831, i8* %42, align 1
  %5832 = lshr i32 %5824, 31
  %5833 = trunc i32 %5832 to i8
  store i8 %5833, i8* %45, align 1
  store i8 0, i8* %51, align 1
  %.v212 = select i1 %5830, i64 21, i64 471
  %5834 = add i64 %5820, %.v212
  store i64 %5834, i64* %3, align 8
  br i1 %5830, label %block_.L_43faea, label %block_.L_43fcac

block_.L_43faea:                                  ; preds = %block_43fad5, %block_43fab3
  %5835 = phi i64 [ %5834, %block_43fad5 ], [ %5820, %block_43fab3 ]
  store i64 51, i64* %RAX.i2060, align 8
  store i64 2, i64* %RCX.i2097, align 8
  store i64 63, i64* %RDX.i2040.pre-phi, align 8
  %5836 = add i64 %5835, 22
  store i64 %5836, i64* %3, align 8
  store i32 0, i32* %5774, align 4
  %5837 = load i64, i64* %RDX.i2040.pre-phi, align 8
  %5838 = load i64, i64* %RBP.i, align 8
  %5839 = add i64 %5838, -100
  %5840 = load i64, i64* %3, align 8
  %5841 = add i64 %5840, 3
  store i64 %5841, i64* %3, align 8
  %5842 = trunc i64 %5837 to i32
  %5843 = inttoptr i64 %5839 to i32*
  %5844 = load i32, i32* %5843, align 4
  %5845 = sub i32 %5842, %5844
  %5846 = zext i32 %5845 to i64
  store i64 %5846, i64* %RDX.i2040.pre-phi, align 8
  %5847 = icmp ult i32 %5842, %5844
  %5848 = zext i1 %5847 to i8
  store i8 %5848, i8* %26, align 1
  %5849 = and i32 %5845, 255
  %5850 = tail call i32 @llvm.ctpop.i32(i32 %5849)
  %5851 = trunc i32 %5850 to i8
  %5852 = and i8 %5851, 1
  %5853 = xor i8 %5852, 1
  store i8 %5853, i8* %33, align 1
  %5854 = xor i32 %5844, %5842
  %5855 = xor i32 %5854, %5845
  %5856 = lshr i32 %5855, 4
  %5857 = trunc i32 %5856 to i8
  %5858 = and i8 %5857, 1
  store i8 %5858, i8* %39, align 1
  %5859 = icmp eq i32 %5845, 0
  %5860 = zext i1 %5859 to i8
  store i8 %5860, i8* %42, align 1
  %5861 = lshr i32 %5845, 31
  %5862 = trunc i32 %5861 to i8
  store i8 %5862, i8* %45, align 1
  %5863 = lshr i32 %5842, 31
  %5864 = lshr i32 %5844, 31
  %5865 = xor i32 %5864, %5863
  %5866 = xor i32 %5861, %5863
  %5867 = add nuw nsw i32 %5866, %5865
  %5868 = icmp eq i32 %5867, 2
  %5869 = zext i1 %5868 to i8
  store i8 %5869, i8* %51, align 1
  %5870 = add i64 %5838, -24
  %5871 = add i64 %5840, 7
  store i64 %5871, i64* %3, align 8
  %5872 = inttoptr i64 %5870 to i64*
  %5873 = load i64, i64* %5872, align 8
  store i64 %5873, i64* %RSI.i2083, align 8
  %5874 = add i64 %5840, 9
  store i64 %5874, i64* %3, align 8
  %5875 = inttoptr i64 %5873 to i32*
  %5876 = load i32, i32* %5875, align 4
  %5877 = and i32 %5876, %5845
  %5878 = zext i32 %5877 to i64
  store i64 %5878, i64* %RDX.i2040.pre-phi, align 8
  store i8 0, i8* %26, align 1
  %5879 = and i32 %5877, 255
  %5880 = tail call i32 @llvm.ctpop.i32(i32 %5879)
  %5881 = trunc i32 %5880 to i8
  %5882 = and i8 %5881, 1
  %5883 = xor i8 %5882, 1
  store i8 %5883, i8* %33, align 1
  %5884 = icmp eq i32 %5877, 0
  %5885 = zext i1 %5884 to i8
  store i8 %5885, i8* %42, align 1
  %5886 = lshr i32 %5877, 31
  %5887 = trunc i32 %5886 to i8
  store i8 %5887, i8* %45, align 1
  store i8 0, i8* %51, align 1
  store i8 0, i8* %39, align 1
  %5888 = add i64 %5840, 11
  store i64 %5888, i64* %3, align 8
  store i32 %5877, i32* %5875, align 4
  %5889 = load i64, i64* %RBP.i, align 8
  %5890 = add i64 %5889, -36
  %5891 = load i64, i64* %3, align 8
  %5892 = add i64 %5891, 3
  store i64 %5892, i64* %3, align 8
  %5893 = inttoptr i64 %5890 to i32*
  %5894 = load i32, i32* %5893, align 4
  %5895 = shl i32 %5894, 2
  %5896 = zext i32 %5895 to i64
  store i64 %5896, i64* %RDX.i2040.pre-phi, align 8
  %5897 = lshr i32 %5894, 30
  %5898 = trunc i32 %5897 to i8
  %5899 = and i8 %5898, 1
  store i8 %5899, i8* %26, align 1
  %5900 = and i32 %5895, 252
  %5901 = tail call i32 @llvm.ctpop.i32(i32 %5900)
  %5902 = trunc i32 %5901 to i8
  %5903 = and i8 %5902, 1
  %5904 = xor i8 %5903, 1
  store i8 %5904, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %5905 = icmp eq i32 %5895, 0
  %5906 = zext i1 %5905 to i8
  store i8 %5906, i8* %42, align 1
  %5907 = lshr i32 %5894, 29
  %5908 = trunc i32 %5907 to i8
  %5909 = and i8 %5908, 1
  store i8 %5909, i8* %45, align 1
  store i8 0, i8* %51, align 1
  %5910 = add i64 %5891, 9
  store i64 %5910, i64* %3, align 8
  %5911 = load i32, i32* %5893, align 4
  %5912 = zext i32 %5911 to i64
  store i64 %5912, i64* %RDI.i2086, align 8
  %5913 = add i64 %5889, -168
  %5914 = load i32, i32* %135, align 4
  %5915 = add i64 %5891, 15
  store i64 %5915, i64* %3, align 8
  %5916 = inttoptr i64 %5913 to i32*
  store i32 %5914, i32* %5916, align 4
  %5917 = load i32, i32* %EDI.i590, align 4
  %5918 = zext i32 %5917 to i64
  %5919 = load i64, i64* %3, align 8
  store i64 %5918, i64* %RAX.i2060, align 8
  %5920 = load i64, i64* %RBP.i, align 8
  %5921 = add i64 %5920, -172
  %5922 = load i32, i32* %EDX.i2080, align 4
  %5923 = add i64 %5919, 8
  store i64 %5923, i64* %3, align 8
  %5924 = inttoptr i64 %5921 to i32*
  store i32 %5922, i32* %5924, align 4
  %5925 = load i64, i64* %3, align 8
  %5926 = load i32, i32* %135, align 8
  %5927 = sext i32 %5926 to i64
  %5928 = lshr i64 %5927, 32
  store i64 %5928, i64* %134, align 8
  %5929 = load i32, i32* %ECX.i2096, align 4
  %5930 = add i64 %5925, 3
  store i64 %5930, i64* %3, align 8
  %5931 = zext i32 %5926 to i64
  %5932 = sext i32 %5929 to i64
  %5933 = shl nuw i64 %5928, 32
  %5934 = or i64 %5933, %5931
  %5935 = sdiv i64 %5934, %5932
  %5936 = shl i64 %5935, 32
  %5937 = ashr exact i64 %5936, 32
  %5938 = icmp eq i64 %5935, %5937
  br i1 %5938, label %5941, label %5939

; <label>:5939:                                   ; preds = %block_.L_43faea
  %5940 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %5930, %struct.Memory* %MEMORY.35)
  %.pre146 = load i64, i64* %RDX.i2040.pre-phi, align 8
  %.pre147 = load i64, i64* %3, align 8
  br label %routine_idivl__ecx.exit

; <label>:5941:                                   ; preds = %block_.L_43faea
  %5942 = srem i64 %5934, %5932
  %5943 = and i64 %5935, 4294967295
  store i64 %5943, i64* %RAX.i2060, align 8
  %5944 = and i64 %5942, 4294967295
  store i64 %5944, i64* %RDX.i2040.pre-phi, align 8
  store i8 0, i8* %26, align 1
  store i8 0, i8* %33, align 1
  store i8 0, i8* %39, align 1
  store i8 0, i8* %42, align 1
  store i8 0, i8* %45, align 1
  store i8 0, i8* %51, align 1
  br label %routine_idivl__ecx.exit

routine_idivl__ecx.exit:                          ; preds = %5941, %5939
  %5945 = phi i64 [ %.pre147, %5939 ], [ %5930, %5941 ]
  %5946 = phi i64 [ %.pre146, %5939 ], [ %5944, %5941 ]
  %5947 = phi %struct.Memory* [ %5940, %5939 ], [ %MEMORY.35, %5941 ]
  %5948 = trunc i64 %5946 to i32
  %5949 = shl i32 %5948, 1
  %5950 = icmp slt i32 %5948, 0
  %5951 = icmp slt i32 %5949, 0
  %5952 = xor i1 %5950, %5951
  %5953 = zext i32 %5949 to i64
  store i64 %5953, i64* %RDX.i2040.pre-phi, align 8
  %.lobit83 = lshr i32 %5948, 31
  %5954 = trunc i32 %.lobit83 to i8
  store i8 %5954, i8* %26, align 1
  %5955 = and i32 %5949, 254
  %5956 = tail call i32 @llvm.ctpop.i32(i32 %5955)
  %5957 = trunc i32 %5956 to i8
  %5958 = and i8 %5957, 1
  %5959 = xor i8 %5958, 1
  store i8 %5959, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %5960 = icmp eq i32 %5949, 0
  %5961 = zext i1 %5960 to i8
  store i8 %5961, i8* %42, align 1
  %5962 = lshr i32 %5948, 30
  %5963 = trunc i32 %5962 to i8
  %5964 = and i8 %5963, 1
  store i8 %5964, i8* %45, align 1
  %5965 = zext i1 %5952 to i8
  store i8 %5965, i8* %51, align 1
  %5966 = load i64, i64* %RBP.i, align 8
  %5967 = add i64 %5966, -172
  %5968 = add i64 %5945, 8
  store i64 %5968, i64* %3, align 8
  %5969 = inttoptr i64 %5967 to i32*
  %5970 = load i32, i32* %5969, align 4
  %5971 = sub i32 %5970, %5949
  %5972 = zext i32 %5971 to i64
  store i64 %5972, i64* %RCX.i2097, align 8
  %5973 = icmp ult i32 %5970, %5949
  %5974 = zext i1 %5973 to i8
  store i8 %5974, i8* %26, align 1
  %5975 = and i32 %5971, 255
  %5976 = tail call i32 @llvm.ctpop.i32(i32 %5975)
  %5977 = trunc i32 %5976 to i8
  %5978 = and i8 %5977, 1
  %5979 = xor i8 %5978, 1
  store i8 %5979, i8* %33, align 1
  %5980 = xor i32 %5949, %5970
  %5981 = xor i32 %5980, %5971
  %5982 = lshr i32 %5981, 4
  %5983 = trunc i32 %5982 to i8
  %5984 = and i8 %5983, 1
  store i8 %5984, i8* %39, align 1
  %5985 = icmp eq i32 %5971, 0
  %5986 = zext i1 %5985 to i8
  store i8 %5986, i8* %42, align 1
  %5987 = lshr i32 %5971, 31
  %5988 = trunc i32 %5987 to i8
  store i8 %5988, i8* %45, align 1
  %5989 = lshr i32 %5970, 31
  %5990 = lshr i32 %5948, 30
  %5991 = and i32 %5990, 1
  %5992 = xor i32 %5991, %5989
  %5993 = xor i32 %5987, %5989
  %5994 = add nuw nsw i32 %5993, %5992
  %5995 = icmp eq i32 %5994, 2
  %5996 = zext i1 %5995 to i8
  store i8 %5996, i8* %51, align 1
  %5997 = add i64 %5966, -168
  %5998 = add i64 %5945, 16
  store i64 %5998, i64* %3, align 8
  %5999 = inttoptr i64 %5997 to i32*
  %6000 = load i32, i32* %5999, align 4
  %6001 = zext i32 %6000 to i64
  store i64 %6001, i64* %RDX.i2040.pre-phi, align 8
  %6002 = add i64 %5945, 18
  store i64 %6002, i64* %3, align 8
  %6003 = trunc i32 %5971 to i5
  switch i5 %6003, label %6009 [
    i5 0, label %routine_shll__cl___edx.exit
    i5 1, label %6004
  ]

; <label>:6004:                                   ; preds = %routine_idivl__ecx.exit
  %6005 = shl i32 %6000, 1
  %6006 = icmp slt i32 %6000, 0
  %6007 = icmp slt i32 %6005, 0
  %6008 = xor i1 %6006, %6007
  br label %6018

; <label>:6009:                                   ; preds = %routine_idivl__ecx.exit
  %6010 = and i32 %5971, 31
  %6011 = zext i32 %6010 to i64
  %6012 = add nuw nsw i64 %6011, 4294967295
  %6013 = and i64 %6012, 4294967295
  %6014 = shl i64 %6001, %6013
  %6015 = trunc i64 %6014 to i32
  %6016 = icmp slt i32 %6015, 0
  %6017 = shl i32 %6015, 1
  br label %6018

; <label>:6018:                                   ; preds = %6009, %6004
  %6019 = phi i1 [ %6006, %6004 ], [ %6016, %6009 ]
  %6020 = phi i1 [ %6008, %6004 ], [ false, %6009 ]
  %6021 = phi i32 [ %6005, %6004 ], [ %6017, %6009 ]
  %6022 = zext i32 %6021 to i64
  store i64 %6022, i64* %RDX.i2040.pre-phi, align 8
  %6023 = zext i1 %6019 to i8
  store i8 %6023, i8* %26, align 1
  %6024 = and i32 %6021, 254
  %6025 = tail call i32 @llvm.ctpop.i32(i32 %6024)
  %6026 = trunc i32 %6025 to i8
  %6027 = and i8 %6026, 1
  %6028 = xor i8 %6027, 1
  store i8 %6028, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %6029 = icmp eq i32 %6021, 0
  %6030 = zext i1 %6029 to i8
  store i8 %6030, i8* %42, align 1
  %6031 = lshr i32 %6021, 31
  %6032 = trunc i32 %6031 to i8
  store i8 %6032, i8* %45, align 1
  %6033 = zext i1 %6020 to i8
  store i8 %6033, i8* %51, align 1
  br label %routine_shll__cl___edx.exit

routine_shll__cl___edx.exit:                      ; preds = %6018, %routine_idivl__ecx.exit
  %6034 = phi i64 [ %6022, %6018 ], [ %6001, %routine_idivl__ecx.exit ]
  %6035 = xor i64 %6034, -1
  %6036 = trunc i64 %6035 to i32
  %6037 = and i64 %6035, 4294967295
  store i64 %6037, i64* %RDX.i2040.pre-phi, align 8
  store i8 0, i8* %26, align 1
  %6038 = and i32 %6036, 255
  %6039 = tail call i32 @llvm.ctpop.i32(i32 %6038)
  %6040 = trunc i32 %6039 to i8
  %6041 = and i8 %6040, 1
  %6042 = xor i8 %6041, 1
  store i8 %6042, i8* %33, align 1
  %6043 = icmp eq i32 %6036, 0
  %6044 = zext i1 %6043 to i8
  store i8 %6044, i8* %42, align 1
  %6045 = lshr i32 %6036, 31
  %6046 = trunc i32 %6045 to i8
  store i8 %6046, i8* %45, align 1
  store i8 0, i8* %51, align 1
  store i8 0, i8* %39, align 1
  %sext = shl i64 %6035, 32
  %6047 = ashr exact i64 %sext, 32
  store i64 %6047, i64* %RSI.i2083, align 8
  %6048 = add i64 %5966, -32
  %6049 = add i64 %5945, 28
  store i64 %6049, i64* %3, align 8
  %6050 = inttoptr i64 %6048 to i64*
  %6051 = load i64, i64* %6050, align 8
  store i64 %6051, i64* %485, align 8
  %6052 = add i64 %5945, 31
  store i64 %6052, i64* %3, align 8
  %6053 = inttoptr i64 %6051 to i64*
  %6054 = load i64, i64* %6053, align 8
  %6055 = and i64 %6054, %6047
  store i64 %6055, i64* %RSI.i2083, align 8
  store i8 0, i8* %26, align 1
  %6056 = trunc i64 %6055 to i32
  %6057 = and i32 %6056, 255
  %6058 = tail call i32 @llvm.ctpop.i32(i32 %6057)
  %6059 = trunc i32 %6058 to i8
  %6060 = and i8 %6059, 1
  %6061 = xor i8 %6060, 1
  store i8 %6061, i8* %33, align 1
  %6062 = icmp eq i64 %6055, 0
  %6063 = zext i1 %6062 to i8
  store i8 %6063, i8* %42, align 1
  %6064 = lshr i64 %6055, 63
  %6065 = trunc i64 %6064 to i8
  store i8 %6065, i8* %45, align 1
  store i8 0, i8* %51, align 1
  store i8 0, i8* %39, align 1
  %6066 = add i64 %5945, 34
  store i64 %6066, i64* %3, align 8
  store i64 %6055, i64* %6053, align 8
  %6067 = load i64, i64* %RBP.i, align 8
  %6068 = add i64 %6067, -96
  %6069 = load i64, i64* %3, align 8
  %6070 = add i64 %6069, 3
  store i64 %6070, i64* %3, align 8
  %6071 = inttoptr i64 %6068 to i32*
  %6072 = load i32, i32* %6071, align 4
  %6073 = zext i32 %6072 to i64
  store i64 %6073, i64* %RDX.i2040.pre-phi, align 8
  %6074 = add i64 %6067, -72
  %6075 = add i64 %6069, 6
  store i64 %6075, i64* %3, align 8
  %6076 = inttoptr i64 %6074 to i32*
  store i32 %6072, i32* %6076, align 4
  %DX.i142 = bitcast %union.anon* %78 to i16*
  %.pre148 = load i64, i64* %3, align 8
  br label %block_.L_43fb4e

block_.L_43fb4e:                                  ; preds = %block_.L_43fc23, %routine_shll__cl___edx.exit
  %6077 = phi i64 [ %6436, %block_.L_43fc23 ], [ %.pre148, %routine_shll__cl___edx.exit ]
  %6078 = load i64, i64* %RBP.i, align 8
  %6079 = add i64 %6078, -72
  %6080 = add i64 %6077, 3
  store i64 %6080, i64* %3, align 8
  %6081 = inttoptr i64 %6079 to i32*
  %6082 = load i32, i32* %6081, align 4
  %6083 = zext i32 %6082 to i64
  store i64 %6083, i64* %RAX.i2060, align 8
  %6084 = add i64 %6078, -96
  %6085 = add i64 %6077, 6
  store i64 %6085, i64* %3, align 8
  %6086 = inttoptr i64 %6084 to i32*
  %6087 = load i32, i32* %6086, align 4
  %6088 = add i32 %6087, 8
  %6089 = zext i32 %6088 to i64
  store i64 %6089, i64* %RCX.i2097, align 8
  %6090 = lshr i32 %6088, 31
  %6091 = sub i32 %6082, %6088
  %6092 = icmp ult i32 %6082, %6088
  %6093 = zext i1 %6092 to i8
  store i8 %6093, i8* %26, align 1
  %6094 = and i32 %6091, 255
  %6095 = tail call i32 @llvm.ctpop.i32(i32 %6094)
  %6096 = trunc i32 %6095 to i8
  %6097 = and i8 %6096, 1
  %6098 = xor i8 %6097, 1
  store i8 %6098, i8* %33, align 1
  %6099 = xor i32 %6088, %6082
  %6100 = xor i32 %6099, %6091
  %6101 = lshr i32 %6100, 4
  %6102 = trunc i32 %6101 to i8
  %6103 = and i8 %6102, 1
  store i8 %6103, i8* %39, align 1
  %6104 = icmp eq i32 %6091, 0
  %6105 = zext i1 %6104 to i8
  store i8 %6105, i8* %42, align 1
  %6106 = lshr i32 %6091, 31
  %6107 = trunc i32 %6106 to i8
  store i8 %6107, i8* %45, align 1
  %6108 = lshr i32 %6082, 31
  %6109 = xor i32 %6090, %6108
  %6110 = xor i32 %6106, %6108
  %6111 = add nuw nsw i32 %6110, %6109
  %6112 = icmp eq i32 %6111, 2
  %6113 = zext i1 %6112 to i8
  store i8 %6113, i8* %51, align 1
  %6114 = icmp ne i8 %6107, 0
  %6115 = xor i1 %6114, %6112
  %.v208 = select i1 %6115, i64 17, i64 232
  %6116 = add i64 %6077, %.v208
  store i64 %6116, i64* %3, align 8
  br i1 %6115, label %block_43fb5f, label %block_.L_43fc36

block_43fb5f:                                     ; preds = %block_.L_43fb4e
  %6117 = add i64 %6078, -92
  %6118 = add i64 %6116, 3
  store i64 %6118, i64* %3, align 8
  %6119 = inttoptr i64 %6117 to i32*
  %6120 = load i32, i32* %6119, align 4
  %6121 = zext i32 %6120 to i64
  store i64 %6121, i64* %RAX.i2060, align 8
  %6122 = add i64 %6078, -76
  %6123 = add i64 %6116, 6
  store i64 %6123, i64* %3, align 8
  %6124 = inttoptr i64 %6122 to i32*
  store i32 %6120, i32* %6124, align 4
  %.pre151 = load i64, i64* %3, align 8
  br label %block_.L_43fb65

block_.L_43fb65:                                  ; preds = %block_.L_43fc10, %block_43fb5f
  %6125 = phi i64 [ %6406, %block_.L_43fc10 ], [ %.pre151, %block_43fb5f ]
  %6126 = load i64, i64* %RBP.i, align 8
  %6127 = add i64 %6126, -76
  %6128 = add i64 %6125, 3
  store i64 %6128, i64* %3, align 8
  %6129 = inttoptr i64 %6127 to i32*
  %6130 = load i32, i32* %6129, align 4
  %6131 = zext i32 %6130 to i64
  store i64 %6131, i64* %RAX.i2060, align 8
  %6132 = add i64 %6126, -92
  %6133 = add i64 %6125, 6
  store i64 %6133, i64* %3, align 8
  %6134 = inttoptr i64 %6132 to i32*
  %6135 = load i32, i32* %6134, align 4
  %6136 = add i32 %6135, 8
  %6137 = zext i32 %6136 to i64
  store i64 %6137, i64* %RCX.i2097, align 8
  %6138 = lshr i32 %6136, 31
  %6139 = sub i32 %6130, %6136
  %6140 = icmp ult i32 %6130, %6136
  %6141 = zext i1 %6140 to i8
  store i8 %6141, i8* %26, align 1
  %6142 = and i32 %6139, 255
  %6143 = tail call i32 @llvm.ctpop.i32(i32 %6142)
  %6144 = trunc i32 %6143 to i8
  %6145 = and i8 %6144, 1
  %6146 = xor i8 %6145, 1
  store i8 %6146, i8* %33, align 1
  %6147 = xor i32 %6136, %6130
  %6148 = xor i32 %6147, %6139
  %6149 = lshr i32 %6148, 4
  %6150 = trunc i32 %6149 to i8
  %6151 = and i8 %6150, 1
  store i8 %6151, i8* %39, align 1
  %6152 = icmp eq i32 %6139, 0
  %6153 = zext i1 %6152 to i8
  store i8 %6153, i8* %42, align 1
  %6154 = lshr i32 %6139, 31
  %6155 = trunc i32 %6154 to i8
  store i8 %6155, i8* %45, align 1
  %6156 = lshr i32 %6130, 31
  %6157 = xor i32 %6138, %6156
  %6158 = xor i32 %6154, %6156
  %6159 = add nuw nsw i32 %6158, %6157
  %6160 = icmp eq i32 %6159, 2
  %6161 = zext i1 %6160 to i8
  store i8 %6161, i8* %51, align 1
  %6162 = icmp ne i8 %6155, 0
  %6163 = xor i1 %6162, %6160
  %.v178 = select i1 %6163, i64 17, i64 190
  %6164 = add i64 %6125, %.v178
  store i64 %6164, i64* %3, align 8
  br i1 %6163, label %block_43fb76, label %block_.L_43fc23

block_43fb76:                                     ; preds = %block_.L_43fb65
  %6165 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*), align 8
  store i64 %6165, i64* %RAX.i2060, align 8
  %6166 = add i64 %6165, 72724
  %6167 = add i64 %6164, 15
  store i64 %6167, i64* %3, align 8
  %6168 = inttoptr i64 %6166 to i32*
  %6169 = load i32, i32* %6168, align 4
  store i8 0, i8* %26, align 1
  %6170 = and i32 %6169, 255
  %6171 = tail call i32 @llvm.ctpop.i32(i32 %6170)
  %6172 = trunc i32 %6171 to i8
  %6173 = and i8 %6172, 1
  %6174 = xor i8 %6173, 1
  store i8 %6174, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %6175 = icmp eq i32 %6169, 0
  %6176 = zext i1 %6175 to i8
  store i8 %6176, i8* %42, align 1
  %6177 = lshr i32 %6169, 31
  %6178 = trunc i32 %6177 to i8
  store i8 %6178, i8* %45, align 1
  store i8 0, i8* %51, align 1
  %.v211 = select i1 %6175, i64 21, i64 122
  %6179 = add i64 %6164, %.v211
  store i64 %6179, i64* %3, align 8
  br i1 %6175, label %block_43fb8b, label %block_.L_43fbf0

block_43fb8b:                                     ; preds = %block_43fb76
  %6180 = add i64 %6165, 12600
  store i64 %6180, i64* %RAX.i2060, align 8
  %6181 = icmp ugt i64 %6165, -12601
  %6182 = zext i1 %6181 to i8
  store i8 %6182, i8* %26, align 1
  %6183 = trunc i64 %6180 to i32
  %6184 = and i32 %6183, 255
  %6185 = tail call i32 @llvm.ctpop.i32(i32 %6184)
  %6186 = trunc i32 %6185 to i8
  %6187 = and i8 %6186, 1
  %6188 = xor i8 %6187, 1
  store i8 %6188, i8* %33, align 1
  %6189 = xor i64 %6165, 16
  %6190 = xor i64 %6189, %6180
  %6191 = lshr i64 %6190, 4
  %6192 = trunc i64 %6191 to i8
  %6193 = and i8 %6192, 1
  store i8 %6193, i8* %39, align 1
  %6194 = icmp eq i64 %6180, 0
  %6195 = zext i1 %6194 to i8
  store i8 %6195, i8* %42, align 1
  %6196 = lshr i64 %6180, 63
  %6197 = trunc i64 %6196 to i8
  store i8 %6197, i8* %45, align 1
  %6198 = lshr i64 %6165, 63
  %6199 = xor i64 %6196, %6198
  %6200 = add nuw nsw i64 %6199, %6196
  %6201 = icmp eq i64 %6200, 2
  %6202 = zext i1 %6201 to i8
  store i8 %6202, i8* %51, align 1
  %6203 = add i64 %6126, -72
  %6204 = add i64 %6179, 18
  store i64 %6204, i64* %3, align 8
  %6205 = inttoptr i64 %6203 to i32*
  %6206 = load i32, i32* %6205, align 4
  %6207 = sext i32 %6206 to i64
  %6208 = shl nsw i64 %6207, 5
  store i64 %6208, i64* %RCX.i2097, align 8
  %6209 = add i64 %6208, %6180
  store i64 %6209, i64* %RAX.i2060, align 8
  %6210 = icmp ult i64 %6209, %6180
  %6211 = icmp ult i64 %6209, %6208
  %6212 = or i1 %6210, %6211
  %6213 = zext i1 %6212 to i8
  store i8 %6213, i8* %26, align 1
  %6214 = trunc i64 %6209 to i32
  %6215 = and i32 %6214, 255
  %6216 = tail call i32 @llvm.ctpop.i32(i32 %6215)
  %6217 = trunc i32 %6216 to i8
  %6218 = and i8 %6217, 1
  %6219 = xor i8 %6218, 1
  store i8 %6219, i8* %33, align 1
  %6220 = xor i64 %6180, %6209
  %6221 = lshr i64 %6220, 4
  %6222 = trunc i64 %6221 to i8
  %6223 = and i8 %6222, 1
  store i8 %6223, i8* %39, align 1
  %6224 = icmp eq i64 %6209, 0
  %6225 = zext i1 %6224 to i8
  store i8 %6225, i8* %42, align 1
  %6226 = lshr i64 %6209, 63
  %6227 = trunc i64 %6226 to i8
  store i8 %6227, i8* %45, align 1
  %6228 = lshr i64 %6207, 58
  %6229 = and i64 %6228, 1
  %6230 = xor i64 %6226, %6196
  %6231 = xor i64 %6226, %6229
  %6232 = add nuw nsw i64 %6230, %6231
  %6233 = icmp eq i64 %6232, 2
  %6234 = zext i1 %6233 to i8
  store i8 %6234, i8* %51, align 1
  %6235 = load i64, i64* %RBP.i, align 8
  %6236 = add i64 %6235, -76
  %6237 = add i64 %6179, 29
  store i64 %6237, i64* %3, align 8
  %6238 = inttoptr i64 %6236 to i32*
  %6239 = load i32, i32* %6238, align 4
  %6240 = sext i32 %6239 to i64
  store i64 %6240, i64* %RCX.i2097, align 8
  %6241 = shl nsw i64 %6240, 1
  %6242 = add i64 %6241, %6209
  %6243 = add i64 %6179, 33
  store i64 %6243, i64* %3, align 8
  %6244 = inttoptr i64 %6242 to i16*
  %6245 = load i16, i16* %6244, align 2
  store i16 %6245, i16* %DX.i142, align 2
  %6246 = load i64, i64* bitcast (%G_0x70fcf0_type* @G_0x70fcf0 to i64*), align 8
  store i64 %6246, i64* %RAX.i2060, align 8
  %6247 = add i64 %6246, 6424
  %6248 = add i64 %6179, 48
  store i64 %6248, i64* %3, align 8
  %6249 = inttoptr i64 %6247 to i64*
  %6250 = load i64, i64* %6249, align 8
  store i64 %6250, i64* %RAX.i2060, align 8
  %6251 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*), align 8
  store i64 %6251, i64* %RCX.i2097, align 8
  %6252 = add i64 %6251, 156
  %6253 = add i64 %6179, 62
  store i64 %6253, i64* %3, align 8
  %6254 = inttoptr i64 %6252 to i32*
  %6255 = load i32, i32* %6254, align 4
  %6256 = zext i32 %6255 to i64
  store i64 %6256, i64* %RSI.i2083, align 8
  %6257 = add i64 %6179, 65
  store i64 %6257, i64* %3, align 8
  %6258 = load i32, i32* %6238, align 4
  %6259 = add i32 %6258, %6255
  %6260 = zext i32 %6259 to i64
  store i64 %6260, i64* %RSI.i2083, align 8
  %6261 = icmp ult i32 %6259, %6255
  %6262 = icmp ult i32 %6259, %6258
  %6263 = or i1 %6261, %6262
  %6264 = zext i1 %6263 to i8
  store i8 %6264, i8* %26, align 1
  %6265 = and i32 %6259, 255
  %6266 = tail call i32 @llvm.ctpop.i32(i32 %6265)
  %6267 = trunc i32 %6266 to i8
  %6268 = and i8 %6267, 1
  %6269 = xor i8 %6268, 1
  store i8 %6269, i8* %33, align 1
  %6270 = xor i32 %6258, %6255
  %6271 = xor i32 %6270, %6259
  %6272 = lshr i32 %6271, 4
  %6273 = trunc i32 %6272 to i8
  %6274 = and i8 %6273, 1
  store i8 %6274, i8* %39, align 1
  %6275 = icmp eq i32 %6259, 0
  %6276 = zext i1 %6275 to i8
  store i8 %6276, i8* %42, align 1
  %6277 = lshr i32 %6259, 31
  %6278 = trunc i32 %6277 to i8
  store i8 %6278, i8* %45, align 1
  %6279 = lshr i32 %6255, 31
  %6280 = lshr i32 %6258, 31
  %6281 = xor i32 %6277, %6279
  %6282 = xor i32 %6277, %6280
  %6283 = add nuw nsw i32 %6281, %6282
  %6284 = icmp eq i32 %6283, 2
  %6285 = zext i1 %6284 to i8
  store i8 %6285, i8* %51, align 1
  %6286 = sext i32 %6259 to i64
  store i64 %6286, i64* %RCX.i2097, align 8
  %6287 = shl nsw i64 %6286, 3
  %6288 = add i64 %6250, %6287
  %6289 = add i64 %6179, 72
  store i64 %6289, i64* %3, align 8
  %6290 = inttoptr i64 %6288 to i64*
  %6291 = load i64, i64* %6290, align 8
  store i64 %6291, i64* %RAX.i2060, align 8
  store i64 %6251, i64* %RCX.i2097, align 8
  %6292 = add i64 %6251, 152
  %6293 = add i64 %6179, 86
  store i64 %6293, i64* %3, align 8
  %6294 = inttoptr i64 %6292 to i32*
  %6295 = load i32, i32* %6294, align 4
  %6296 = zext i32 %6295 to i64
  store i64 %6296, i64* %RSI.i2083, align 8
  %6297 = add i64 %6235, -72
  %6298 = add i64 %6179, 89
  store i64 %6298, i64* %3, align 8
  %6299 = inttoptr i64 %6297 to i32*
  %6300 = load i32, i32* %6299, align 4
  %6301 = add i32 %6300, %6295
  %6302 = zext i32 %6301 to i64
  store i64 %6302, i64* %RSI.i2083, align 8
  %6303 = icmp ult i32 %6301, %6295
  %6304 = icmp ult i32 %6301, %6300
  %6305 = or i1 %6303, %6304
  %6306 = zext i1 %6305 to i8
  store i8 %6306, i8* %26, align 1
  %6307 = and i32 %6301, 255
  %6308 = tail call i32 @llvm.ctpop.i32(i32 %6307)
  %6309 = trunc i32 %6308 to i8
  %6310 = and i8 %6309, 1
  %6311 = xor i8 %6310, 1
  store i8 %6311, i8* %33, align 1
  %6312 = xor i32 %6300, %6295
  %6313 = xor i32 %6312, %6301
  %6314 = lshr i32 %6313, 4
  %6315 = trunc i32 %6314 to i8
  %6316 = and i8 %6315, 1
  store i8 %6316, i8* %39, align 1
  %6317 = icmp eq i32 %6301, 0
  %6318 = zext i1 %6317 to i8
  store i8 %6318, i8* %42, align 1
  %6319 = lshr i32 %6301, 31
  %6320 = trunc i32 %6319 to i8
  store i8 %6320, i8* %45, align 1
  %6321 = lshr i32 %6295, 31
  %6322 = lshr i32 %6300, 31
  %6323 = xor i32 %6319, %6321
  %6324 = xor i32 %6319, %6322
  %6325 = add nuw nsw i32 %6323, %6324
  %6326 = icmp eq i32 %6325, 2
  %6327 = zext i1 %6326 to i8
  store i8 %6327, i8* %51, align 1
  %6328 = sext i32 %6301 to i64
  store i64 %6328, i64* %RCX.i2097, align 8
  %6329 = shl nsw i64 %6328, 1
  %6330 = add i64 %6291, %6329
  %6331 = load i16, i16* %DX.i142, align 2
  %6332 = add i64 %6179, 96
  store i64 %6332, i64* %3, align 8
  %6333 = inttoptr i64 %6330 to i16*
  store i16 %6331, i16* %6333, align 2
  %6334 = load i64, i64* %3, align 8
  %6335 = add i64 %6334, 37
  store i64 %6335, i64* %3, align 8
  br label %block_.L_43fc10

block_.L_43fbf0:                                  ; preds = %block_43fb76
  store i64 ptrtoint (%G__0x722ff0_type* @G__0x722ff0 to i64), i64* %RAX.i2060, align 8
  %6336 = add i64 %6126, -72
  %6337 = add i64 %6179, 14
  store i64 %6337, i64* %3, align 8
  %6338 = inttoptr i64 %6336 to i32*
  %6339 = load i32, i32* %6338, align 4
  %6340 = sext i32 %6339 to i64
  %6341 = shl nsw i64 %6340, 6
  store i64 %6341, i64* %RCX.i2097, align 8
  %6342 = add i64 %6341, ptrtoint (%G__0x722ff0_type* @G__0x722ff0 to i64)
  store i64 %6342, i64* %RAX.i2060, align 8
  %6343 = icmp ult i64 %6342, ptrtoint (%G__0x722ff0_type* @G__0x722ff0 to i64)
  %6344 = icmp ult i64 %6342, %6341
  %6345 = or i1 %6343, %6344
  %6346 = zext i1 %6345 to i8
  store i8 %6346, i8* %26, align 1
  %6347 = trunc i64 %6342 to i32
  %6348 = and i32 %6347, 248
  %6349 = tail call i32 @llvm.ctpop.i32(i32 %6348)
  %6350 = trunc i32 %6349 to i8
  %6351 = and i8 %6350, 1
  %6352 = xor i8 %6351, 1
  store i8 %6352, i8* %33, align 1
  %6353 = xor i64 %6342, ptrtoint (%G__0x722ff0_type* @G__0x722ff0 to i64)
  %6354 = lshr i64 %6353, 4
  %6355 = trunc i64 %6354 to i8
  %6356 = and i8 %6355, 1
  store i8 %6356, i8* %39, align 1
  %6357 = icmp eq i64 %6342, 0
  %6358 = zext i1 %6357 to i8
  store i8 %6358, i8* %42, align 1
  %6359 = lshr i64 %6342, 63
  %6360 = trunc i64 %6359 to i8
  store i8 %6360, i8* %45, align 1
  %6361 = lshr i64 %6340, 57
  %6362 = and i64 %6361, 1
  %6363 = xor i64 %6359, lshr (i64 ptrtoint (%G__0x722ff0_type* @G__0x722ff0 to i64), i64 63)
  %6364 = xor i64 %6359, %6362
  %6365 = add nuw nsw i64 %6363, %6364
  %6366 = icmp eq i64 %6365, 2
  %6367 = zext i1 %6366 to i8
  store i8 %6367, i8* %51, align 1
  %6368 = add i64 %6179, 25
  store i64 %6368, i64* %3, align 8
  %6369 = load i32, i32* %6129, align 4
  %6370 = sext i32 %6369 to i64
  store i64 %6370, i64* %RCX.i2097, align 8
  %6371 = shl nsw i64 %6370, 2
  %6372 = add i64 %6371, %6342
  %6373 = add i64 %6179, 32
  store i64 %6373, i64* %3, align 8
  %6374 = inttoptr i64 %6372 to i32*
  store i32 0, i32* %6374, align 4
  %.pre152 = load i64, i64* %3, align 8
  br label %block_.L_43fc10

block_.L_43fc10:                                  ; preds = %block_.L_43fbf0, %block_43fb8b
  %6375 = phi i64 [ %.pre152, %block_.L_43fbf0 ], [ %6335, %block_43fb8b ]
  %6376 = load i64, i64* %RBP.i, align 8
  %6377 = add i64 %6376, -76
  %6378 = add i64 %6375, 8
  store i64 %6378, i64* %3, align 8
  %6379 = inttoptr i64 %6377 to i32*
  %6380 = load i32, i32* %6379, align 4
  %6381 = add i32 %6380, 1
  %6382 = zext i32 %6381 to i64
  store i64 %6382, i64* %RAX.i2060, align 8
  %6383 = icmp eq i32 %6380, -1
  %6384 = icmp eq i32 %6381, 0
  %6385 = or i1 %6383, %6384
  %6386 = zext i1 %6385 to i8
  store i8 %6386, i8* %26, align 1
  %6387 = and i32 %6381, 255
  %6388 = tail call i32 @llvm.ctpop.i32(i32 %6387)
  %6389 = trunc i32 %6388 to i8
  %6390 = and i8 %6389, 1
  %6391 = xor i8 %6390, 1
  store i8 %6391, i8* %33, align 1
  %6392 = xor i32 %6381, %6380
  %6393 = lshr i32 %6392, 4
  %6394 = trunc i32 %6393 to i8
  %6395 = and i8 %6394, 1
  store i8 %6395, i8* %39, align 1
  %6396 = zext i1 %6384 to i8
  store i8 %6396, i8* %42, align 1
  %6397 = lshr i32 %6381, 31
  %6398 = trunc i32 %6397 to i8
  store i8 %6398, i8* %45, align 1
  %6399 = lshr i32 %6380, 31
  %6400 = xor i32 %6397, %6399
  %6401 = add nuw nsw i32 %6400, %6397
  %6402 = icmp eq i32 %6401, 2
  %6403 = zext i1 %6402 to i8
  store i8 %6403, i8* %51, align 1
  %6404 = add i64 %6375, 14
  store i64 %6404, i64* %3, align 8
  store i32 %6381, i32* %6379, align 4
  %6405 = load i64, i64* %3, align 8
  %6406 = add i64 %6405, -185
  store i64 %6406, i64* %3, align 8
  br label %block_.L_43fb65

block_.L_43fc23:                                  ; preds = %block_.L_43fb65
  %6407 = add i64 %6126, -72
  %6408 = add i64 %6164, 8
  store i64 %6408, i64* %3, align 8
  %6409 = inttoptr i64 %6407 to i32*
  %6410 = load i32, i32* %6409, align 4
  %6411 = add i32 %6410, 1
  %6412 = zext i32 %6411 to i64
  store i64 %6412, i64* %RAX.i2060, align 8
  %6413 = icmp eq i32 %6410, -1
  %6414 = icmp eq i32 %6411, 0
  %6415 = or i1 %6413, %6414
  %6416 = zext i1 %6415 to i8
  store i8 %6416, i8* %26, align 1
  %6417 = and i32 %6411, 255
  %6418 = tail call i32 @llvm.ctpop.i32(i32 %6417)
  %6419 = trunc i32 %6418 to i8
  %6420 = and i8 %6419, 1
  %6421 = xor i8 %6420, 1
  store i8 %6421, i8* %33, align 1
  %6422 = xor i32 %6411, %6410
  %6423 = lshr i32 %6422, 4
  %6424 = trunc i32 %6423 to i8
  %6425 = and i8 %6424, 1
  store i8 %6425, i8* %39, align 1
  %6426 = zext i1 %6414 to i8
  store i8 %6426, i8* %42, align 1
  %6427 = lshr i32 %6411, 31
  %6428 = trunc i32 %6427 to i8
  store i8 %6428, i8* %45, align 1
  %6429 = lshr i32 %6410, 31
  %6430 = xor i32 %6427, %6429
  %6431 = add nuw nsw i32 %6430, %6427
  %6432 = icmp eq i32 %6431, 2
  %6433 = zext i1 %6432 to i8
  store i8 %6433, i8* %51, align 1
  %6434 = add i64 %6164, 14
  store i64 %6434, i64* %3, align 8
  store i32 %6411, i32* %6409, align 4
  %6435 = load i64, i64* %3, align 8
  %6436 = add i64 %6435, -227
  store i64 %6436, i64* %3, align 8
  br label %block_.L_43fb4e

block_.L_43fc36:                                  ; preds = %block_.L_43fb4e
  %6437 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*), align 8
  store i64 %6437, i64* %RAX.i2060, align 8
  %6438 = add i64 %6437, 24
  %6439 = add i64 %6116, 12
  store i64 %6439, i64* %3, align 8
  %6440 = inttoptr i64 %6438 to i32*
  %6441 = load i32, i32* %6440, align 4
  %6442 = add i32 %6441, -3
  %6443 = icmp ult i32 %6441, 3
  %6444 = zext i1 %6443 to i8
  store i8 %6444, i8* %26, align 1
  %6445 = and i32 %6442, 255
  %6446 = tail call i32 @llvm.ctpop.i32(i32 %6445)
  %6447 = trunc i32 %6446 to i8
  %6448 = and i8 %6447, 1
  %6449 = xor i8 %6448, 1
  store i8 %6449, i8* %33, align 1
  %6450 = xor i32 %6442, %6441
  %6451 = lshr i32 %6450, 4
  %6452 = trunc i32 %6451 to i8
  %6453 = and i8 %6452, 1
  store i8 %6453, i8* %39, align 1
  %6454 = icmp eq i32 %6442, 0
  %6455 = zext i1 %6454 to i8
  store i8 %6455, i8* %42, align 1
  %6456 = lshr i32 %6442, 31
  %6457 = trunc i32 %6456 to i8
  store i8 %6457, i8* %45, align 1
  %6458 = lshr i32 %6441, 31
  %6459 = xor i32 %6456, %6458
  %6460 = add nuw nsw i32 %6459, %6458
  %6461 = icmp eq i32 %6460, 2
  %6462 = zext i1 %6461 to i8
  store i8 %6462, i8* %51, align 1
  %.v209 = select i1 %6454, i64 18, i64 113
  %6463 = add i64 %6116, %.v209
  store i64 %6463, i64* %3, align 8
  br i1 %6454, label %block_43fc48, label %block_.L_43fca7

block_43fc48:                                     ; preds = %block_.L_43fc36
  %6464 = add i64 %6463, 3
  store i64 %6464, i64* %3, align 8
  %6465 = load i32, i32* %6086, align 4
  %6466 = zext i32 %6465 to i64
  store i64 %6466, i64* %RAX.i2060, align 8
  %6467 = add i64 %6463, 6
  store i64 %6467, i64* %3, align 8
  store i32 %6465, i32* %6081, align 4
  %.pre149 = load i64, i64* %3, align 8
  br label %block_.L_43fc4e

block_.L_43fc4e:                                  ; preds = %block_.L_43fc8f, %block_43fc48
  %6468 = phi i64 [ %6627, %block_.L_43fc8f ], [ %.pre149, %block_43fc48 ]
  %6469 = load i64, i64* %RBP.i, align 8
  %6470 = add i64 %6469, -72
  %6471 = add i64 %6468, 3
  store i64 %6471, i64* %3, align 8
  %6472 = inttoptr i64 %6470 to i32*
  %6473 = load i32, i32* %6472, align 4
  %6474 = zext i32 %6473 to i64
  store i64 %6474, i64* %RAX.i2060, align 8
  %6475 = add i64 %6469, -96
  %6476 = add i64 %6468, 6
  store i64 %6476, i64* %3, align 8
  %6477 = inttoptr i64 %6475 to i32*
  %6478 = load i32, i32* %6477, align 4
  %6479 = add i32 %6478, 8
  %6480 = zext i32 %6479 to i64
  store i64 %6480, i64* %RCX.i2097, align 8
  %6481 = lshr i32 %6479, 31
  %6482 = sub i32 %6473, %6479
  %6483 = icmp ult i32 %6473, %6479
  %6484 = zext i1 %6483 to i8
  store i8 %6484, i8* %26, align 1
  %6485 = and i32 %6482, 255
  %6486 = tail call i32 @llvm.ctpop.i32(i32 %6485)
  %6487 = trunc i32 %6486 to i8
  %6488 = and i8 %6487, 1
  %6489 = xor i8 %6488, 1
  store i8 %6489, i8* %33, align 1
  %6490 = xor i32 %6479, %6473
  %6491 = xor i32 %6490, %6482
  %6492 = lshr i32 %6491, 4
  %6493 = trunc i32 %6492 to i8
  %6494 = and i8 %6493, 1
  store i8 %6494, i8* %39, align 1
  %6495 = icmp eq i32 %6482, 0
  %6496 = zext i1 %6495 to i8
  store i8 %6496, i8* %42, align 1
  %6497 = lshr i32 %6482, 31
  %6498 = trunc i32 %6497 to i8
  store i8 %6498, i8* %45, align 1
  %6499 = lshr i32 %6473, 31
  %6500 = xor i32 %6481, %6499
  %6501 = xor i32 %6497, %6499
  %6502 = add nuw nsw i32 %6501, %6500
  %6503 = icmp eq i32 %6502, 2
  %6504 = zext i1 %6503 to i8
  store i8 %6504, i8* %51, align 1
  %6505 = icmp ne i8 %6498, 0
  %6506 = xor i1 %6505, %6503
  %.v210 = select i1 %6506, i64 17, i64 84
  %6507 = add i64 %6468, %.v210
  store i64 %6507, i64* %3, align 8
  br i1 %6506, label %block_43fc5f, label %block_.L_43fca2

block_43fc5f:                                     ; preds = %block_.L_43fc4e
  %6508 = add i64 %6469, -92
  %6509 = add i64 %6507, 3
  store i64 %6509, i64* %3, align 8
  %6510 = inttoptr i64 %6508 to i32*
  %6511 = load i32, i32* %6510, align 4
  %6512 = zext i32 %6511 to i64
  store i64 %6512, i64* %RAX.i2060, align 8
  %6513 = add i64 %6469, -76
  %6514 = add i64 %6507, 6
  store i64 %6514, i64* %3, align 8
  %6515 = inttoptr i64 %6513 to i32*
  store i32 %6511, i32* %6515, align 4
  %.pre150 = load i64, i64* %3, align 8
  br label %block_.L_43fc65

block_.L_43fc65:                                  ; preds = %block_43fc76, %block_43fc5f
  %6516 = phi i64 [ %6599, %block_43fc76 ], [ %.pre150, %block_43fc5f ]
  %6517 = load i64, i64* %RBP.i, align 8
  %6518 = add i64 %6517, -76
  %6519 = add i64 %6516, 3
  store i64 %6519, i64* %3, align 8
  %6520 = inttoptr i64 %6518 to i32*
  %6521 = load i32, i32* %6520, align 4
  %6522 = zext i32 %6521 to i64
  store i64 %6522, i64* %RAX.i2060, align 8
  %6523 = add i64 %6517, -92
  %6524 = add i64 %6516, 6
  store i64 %6524, i64* %3, align 8
  %6525 = inttoptr i64 %6523 to i32*
  %6526 = load i32, i32* %6525, align 4
  %6527 = add i32 %6526, 8
  %6528 = zext i32 %6527 to i64
  store i64 %6528, i64* %RCX.i2097, align 8
  %6529 = lshr i32 %6527, 31
  %6530 = sub i32 %6521, %6527
  %6531 = icmp ult i32 %6521, %6527
  %6532 = zext i1 %6531 to i8
  store i8 %6532, i8* %26, align 1
  %6533 = and i32 %6530, 255
  %6534 = tail call i32 @llvm.ctpop.i32(i32 %6533)
  %6535 = trunc i32 %6534 to i8
  %6536 = and i8 %6535, 1
  %6537 = xor i8 %6536, 1
  store i8 %6537, i8* %33, align 1
  %6538 = xor i32 %6527, %6521
  %6539 = xor i32 %6538, %6530
  %6540 = lshr i32 %6539, 4
  %6541 = trunc i32 %6540 to i8
  %6542 = and i8 %6541, 1
  store i8 %6542, i8* %39, align 1
  %6543 = icmp eq i32 %6530, 0
  %6544 = zext i1 %6543 to i8
  store i8 %6544, i8* %42, align 1
  %6545 = lshr i32 %6530, 31
  %6546 = trunc i32 %6545 to i8
  store i8 %6546, i8* %45, align 1
  %6547 = lshr i32 %6521, 31
  %6548 = xor i32 %6529, %6547
  %6549 = xor i32 %6545, %6547
  %6550 = add nuw nsw i32 %6549, %6548
  %6551 = icmp eq i32 %6550, 2
  %6552 = zext i1 %6551 to i8
  store i8 %6552, i8* %51, align 1
  %6553 = icmp ne i8 %6546, 0
  %6554 = xor i1 %6553, %6551
  %.v = select i1 %6554, i64 17, i64 42
  %6555 = add i64 %6516, %.v
  store i64 %6555, i64* %3, align 8
  %6556 = add i64 %6517, -72
  br i1 %6554, label %block_43fc76, label %block_.L_43fc8f

block_43fc76:                                     ; preds = %block_.L_43fc65
  %6557 = add i64 %6555, 3
  store i64 %6557, i64* %3, align 8
  %6558 = inttoptr i64 %6556 to i32*
  %6559 = load i32, i32* %6558, align 4
  %6560 = zext i32 %6559 to i64
  store i64 %6560, i64* %RDI.i2086, align 8
  %6561 = add i64 %6555, 6
  store i64 %6561, i64* %3, align 8
  %6562 = load i32, i32* %6520, align 4
  %6563 = zext i32 %6562 to i64
  store i64 %6563, i64* %RSI.i2083, align 8
  %6564 = add i64 %6555, -198454
  %6565 = add i64 %6555, 11
  %6566 = load i64, i64* %6, align 8
  %6567 = add i64 %6566, -8
  %6568 = inttoptr i64 %6567 to i64*
  store i64 %6565, i64* %6568, align 8
  store i64 %6567, i64* %6, align 8
  store i64 %6564, i64* %3, align 8
  %call2_43fc7c = tail call %struct.Memory* @sub_40f540.copyblock_sp(%struct.State* nonnull %0, i64 %6564, %struct.Memory* %5947)
  %6569 = load i64, i64* %RBP.i, align 8
  %6570 = add i64 %6569, -76
  %6571 = load i64, i64* %3, align 8
  %6572 = add i64 %6571, 3
  store i64 %6572, i64* %3, align 8
  %6573 = inttoptr i64 %6570 to i32*
  %6574 = load i32, i32* %6573, align 4
  %6575 = add i32 %6574, 4
  %6576 = zext i32 %6575 to i64
  store i64 %6576, i64* %RAX.i2060, align 8
  %6577 = icmp ugt i32 %6574, -5
  %6578 = zext i1 %6577 to i8
  store i8 %6578, i8* %26, align 1
  %6579 = and i32 %6575, 255
  %6580 = tail call i32 @llvm.ctpop.i32(i32 %6579)
  %6581 = trunc i32 %6580 to i8
  %6582 = and i8 %6581, 1
  %6583 = xor i8 %6582, 1
  store i8 %6583, i8* %33, align 1
  %6584 = xor i32 %6575, %6574
  %6585 = lshr i32 %6584, 4
  %6586 = trunc i32 %6585 to i8
  %6587 = and i8 %6586, 1
  store i8 %6587, i8* %39, align 1
  %6588 = icmp eq i32 %6575, 0
  %6589 = zext i1 %6588 to i8
  store i8 %6589, i8* %42, align 1
  %6590 = lshr i32 %6575, 31
  %6591 = trunc i32 %6590 to i8
  store i8 %6591, i8* %45, align 1
  %6592 = lshr i32 %6574, 31
  %6593 = xor i32 %6590, %6592
  %6594 = add nuw nsw i32 %6593, %6590
  %6595 = icmp eq i32 %6594, 2
  %6596 = zext i1 %6595 to i8
  store i8 %6596, i8* %51, align 1
  %6597 = add i64 %6571, 9
  store i64 %6597, i64* %3, align 8
  store i32 %6575, i32* %6573, align 4
  %6598 = load i64, i64* %3, align 8
  %6599 = add i64 %6598, -37
  store i64 %6599, i64* %3, align 8
  br label %block_.L_43fc65

block_.L_43fc8f:                                  ; preds = %block_.L_43fc65
  %6600 = add i64 %6555, 8
  store i64 %6600, i64* %3, align 8
  %6601 = inttoptr i64 %6556 to i32*
  %6602 = load i32, i32* %6601, align 4
  %6603 = add i32 %6602, 4
  %6604 = zext i32 %6603 to i64
  store i64 %6604, i64* %RAX.i2060, align 8
  %6605 = icmp ugt i32 %6602, -5
  %6606 = zext i1 %6605 to i8
  store i8 %6606, i8* %26, align 1
  %6607 = and i32 %6603, 255
  %6608 = tail call i32 @llvm.ctpop.i32(i32 %6607)
  %6609 = trunc i32 %6608 to i8
  %6610 = and i8 %6609, 1
  %6611 = xor i8 %6610, 1
  store i8 %6611, i8* %33, align 1
  %6612 = xor i32 %6603, %6602
  %6613 = lshr i32 %6612, 4
  %6614 = trunc i32 %6613 to i8
  %6615 = and i8 %6614, 1
  store i8 %6615, i8* %39, align 1
  %6616 = icmp eq i32 %6603, 0
  %6617 = zext i1 %6616 to i8
  store i8 %6617, i8* %42, align 1
  %6618 = lshr i32 %6603, 31
  %6619 = trunc i32 %6618 to i8
  store i8 %6619, i8* %45, align 1
  %6620 = lshr i32 %6602, 31
  %6621 = xor i32 %6618, %6620
  %6622 = add nuw nsw i32 %6621, %6618
  %6623 = icmp eq i32 %6622, 2
  %6624 = zext i1 %6623 to i8
  store i8 %6624, i8* %51, align 1
  %6625 = add i64 %6555, 14
  store i64 %6625, i64* %3, align 8
  store i32 %6603, i32* %6601, align 4
  %6626 = load i64, i64* %3, align 8
  %6627 = add i64 %6626, -79
  store i64 %6627, i64* %3, align 8
  br label %block_.L_43fc4e

block_.L_43fca2:                                  ; preds = %block_.L_43fc4e
  %6628 = add i64 %6507, 5
  store i64 %6628, i64* %3, align 8
  br label %block_.L_43fca7

block_.L_43fca7:                                  ; preds = %block_.L_43fc36, %block_.L_43fca2
  %6629 = phi i64 [ %6469, %block_.L_43fca2 ], [ %6078, %block_.L_43fc36 ]
  %6630 = phi i64 [ %6628, %block_.L_43fca2 ], [ %6463, %block_.L_43fc36 ]
  %6631 = add i64 %6630, 5
  store i64 %6631, i64* %3, align 8
  br label %block_.L_43fcac

block_.L_43fcac:                                  ; preds = %block_.L_43fa8a, %block_43fad5, %block_43faa9, %block_43fa9f, %block_.L_43fca7
  %6632 = phi i64 [ %5771, %block_43fa9f ], [ %5799, %block_43faa9 ], [ %6631, %block_.L_43fca7 ], [ %5834, %block_43fad5 ], [ %5757, %block_.L_43fa8a ]
  %6633 = phi i64 [ %.pre153, %block_43fa9f ], [ %.pre153, %block_43faa9 ], [ %6629, %block_.L_43fca7 ], [ %.pre153, %block_43fad5 ], [ %.pre153, %block_.L_43fa8a ]
  %MEMORY.43 = phi %struct.Memory* [ %MEMORY.35, %block_43fa9f ], [ %MEMORY.35, %block_43faa9 ], [ %5947, %block_.L_43fca7 ], [ %MEMORY.35, %block_43fad5 ], [ %MEMORY.35, %block_.L_43fa8a ]
  %6634 = add i64 %6633, -88
  %6635 = add i64 %6632, 3
  store i64 %6635, i64* %3, align 8
  %6636 = inttoptr i64 %6634 to i32*
  %6637 = load i32, i32* %6636, align 4
  %6638 = zext i32 %6637 to i64
  store i64 %6638, i64* %RAX.i2060, align 8
  %6639 = load i64, i64* %6, align 8
  %6640 = add i64 %6639, 176
  store i64 %6640, i64* %6, align 8
  %6641 = icmp ugt i64 %6639, -177
  %6642 = zext i1 %6641 to i8
  store i8 %6642, i8* %26, align 1
  %6643 = trunc i64 %6640 to i32
  %6644 = and i32 %6643, 255
  %6645 = tail call i32 @llvm.ctpop.i32(i32 %6644)
  %6646 = trunc i32 %6645 to i8
  %6647 = and i8 %6646, 1
  %6648 = xor i8 %6647, 1
  store i8 %6648, i8* %33, align 1
  %6649 = xor i64 %6639, 16
  %6650 = xor i64 %6649, %6640
  %6651 = lshr i64 %6650, 4
  %6652 = trunc i64 %6651 to i8
  %6653 = and i8 %6652, 1
  store i8 %6653, i8* %39, align 1
  %6654 = icmp eq i64 %6640, 0
  %6655 = zext i1 %6654 to i8
  store i8 %6655, i8* %42, align 1
  %6656 = lshr i64 %6640, 63
  %6657 = trunc i64 %6656 to i8
  store i8 %6657, i8* %45, align 1
  %6658 = lshr i64 %6639, 63
  %6659 = xor i64 %6656, %6658
  %6660 = add nuw nsw i64 %6659, %6656
  %6661 = icmp eq i64 %6660, 2
  %6662 = zext i1 %6661 to i8
  store i8 %6662, i8* %51, align 1
  %6663 = add i64 %6632, 11
  store i64 %6663, i64* %3, align 8
  %6664 = add i64 %6639, 184
  %6665 = inttoptr i64 %6640 to i64*
  %6666 = load i64, i64* %6665, align 8
  store i64 %6666, i64* %RBX.i2043, align 8
  store i64 %6664, i64* %6, align 8
  %6667 = add i64 %6632, 13
  store i64 %6667, i64* %3, align 8
  %6668 = add i64 %6639, 192
  %6669 = inttoptr i64 %6664 to i64*
  %6670 = load i64, i64* %6669, align 8
  store i64 %6670, i64* %R14.i341, align 8
  store i64 %6668, i64* %6, align 8
  %6671 = add i64 %6632, 14
  store i64 %6671, i64* %3, align 8
  %6672 = add i64 %6639, 200
  %6673 = inttoptr i64 %6668 to i64*
  %6674 = load i64, i64* %6673, align 8
  store i64 %6674, i64* %RBP.i, align 8
  store i64 %6672, i64* %6, align 8
  %6675 = add i64 %6632, 15
  store i64 %6675, i64* %3, align 8
  %6676 = inttoptr i64 %6672 to i64*
  %6677 = load i64, i64* %6676, align 8
  store i64 %6677, i64* %3, align 8
  %6678 = add i64 %6639, 208
  store i64 %6678, i64* %6, align 8
  ret %struct.Memory* %MEMORY.43
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
define %struct.Memory* @routine_subq__0xb0___rsp(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %3 = load i64, i64* %RSP, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 7
  store i64 %5, i64* %PC, align 8
  %6 = add i64 %3, -176
  store i64 %6, i64* %RSP, align 8
  %7 = icmp ult i64 %3, 176
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
define %struct.Memory* @routine_movw__cx___ax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %AX = bitcast %union.anon* %3 to i16*
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %CX = bitcast %union.anon* %4 to i16*
  %5 = load i16, i16* %CX, align 2
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 3
  store i64 %7, i64* %PC, align 8
  store i16 %5, i16* %AX, align 2
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movw_0x18__rbp____r10w(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 21, i32 0
  %R10W = bitcast %union.anon* %3 to i16*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, 24
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 5
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %5 to i16*
  %9 = load i16, i16* %8, align 2
  store i16 %9, i16* %R10W, align 2
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movw_0x10__rbp____r11w(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 23, i32 0
  %R11W = bitcast %union.anon* %3 to i16*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, 16
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 5
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %5 to i16*
  %9 = load i16, i16* %8, align 2
  store i16 %9, i16* %R11W, align 2
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
define %struct.Memory* @routine_movb__cl___bl(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 3, i32 0
  %BL = bitcast %union.anon* %3 to i8*
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %CL = bitcast %union.anon* %4 to i8*
  %5 = load i8, i8* %CL, align 1
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 2
  store i64 %7, i64* %PC, align 8
  store i8 %5, i8* %BL, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x1___ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 5
  store i64 %4, i64* %PC, align 8
  store i64 1, i64* %RCX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x2___r14d(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 29, i32 0, i32 0
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 6
  store i64 %5, i64* %PC, align 8
  store i64 2, i64* %3, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__rdi__MINUS0x18__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -24
  %5 = load i64, i64* %RDI, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 4
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %4 to i64*
  store i64 %5, i64* %8, align 8
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
define %struct.Memory* @routine_movw__ax__MINUS0x26__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %AX = bitcast %union.anon* %3 to i16*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -38
  %6 = load i16, i16* %AX, align 2
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 4
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i16*
  store i16 %6, i16* %9, align 2
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
define %struct.Memory* @routine_movl__r9d__MINUS0x30__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 19, i32 0
  %R9D = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -48
  %6 = load i32, i32* %R9D, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 4
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movw__r11w__MINUS0x32__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 23, i32 0
  %R11W = bitcast %union.anon* %3 to i16*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -50
  %6 = load i16, i16* %R11W, align 2
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 5
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i16*
  store i16 %6, i16* %9, align 2
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movw__r10w__MINUS0x34__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 21, i32 0
  %R10W = bitcast %union.anon* %3 to i16*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -52
  %6 = load i16, i16* %R10W, align 2
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 5
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i16*
  store i16 %6, i16* %9, align 2
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x0__MINUS0x50__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -80
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  store i32 0, i32* %7, align 4
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

define %struct.Memory* @routine_idivl__r14d(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 29, i32 0
  %R14D = bitcast %union.anon* %3 to i32*
  %4 = load i32, i32* %R14D, align 4
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

; Function Attrs: nounwind
define %struct.Memory* @routine_shll__0x3___edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %RDX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 3
  store i64 %5, i64* %PC, align 8
  %.tr = trunc i64 %3 to i32
  %6 = shl i32 %.tr, 3
  %7 = zext i32 %6 to i64
  store i64 %7, i64* %RDX, align 8
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__edx__MINUS0x60__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %EDX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -96
  %6 = load i32, i32* %EDX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x24__rbp____edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -36
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
define %struct.Memory* @routine_movl__ecx__MINUS0x98__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %ECX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -152
  %6 = load i32, i32* %ECX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__edx___ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %EDX = bitcast %union.anon* %3 to i32*
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %4 = load i32, i32* %EDX, align 4
  %5 = zext i32 %4 to i64
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 2
  store i64 %7, i64* %PC, align 8
  store i64 %5, i64* %RCX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x98__rbp____edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -152
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
define %struct.Memory* @routine_shll__cl___edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %CL = bitcast %union.anon* %3 to i8*
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %4 = load i64, i64* %RDX, align 8
  %5 = load i8, i8* %CL, align 1
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 2
  store i64 %7, i64* %PC, align 8
  %8 = trunc i8 %5 to i5
  switch i5 %8, label %15 [
    i5 0, label %_ZN12_GLOBAL__N_1L3SHLI3RnWImE2RnIjES4_EEP6MemoryS6_R5StateT_T0_T1_.exit
    i5 1, label %9
  ]

; <label>:9:                                      ; preds = %block_400488
  %10 = trunc i64 %4 to i32
  %11 = shl i32 %10, 1
  %12 = icmp slt i32 %10, 0
  %13 = icmp slt i32 %11, 0
  %14 = xor i1 %12, %13
  br label %25

; <label>:15:                                     ; preds = %block_400488
  %16 = and i8 %5, 31
  %17 = zext i8 %16 to i64
  %18 = add nuw nsw i64 %17, 4294967295
  %19 = and i64 %4, 4294967295
  %20 = and i64 %18, 4294967295
  %21 = shl i64 %19, %20
  %22 = trunc i64 %21 to i32
  %23 = icmp slt i32 %22, 0
  %24 = shl i32 %22, 1
  br label %25

; <label>:25:                                     ; preds = %15, %9
  %26 = phi i1 [ %12, %9 ], [ %23, %15 ]
  %27 = phi i1 [ %14, %9 ], [ false, %15 ]
  %28 = phi i32 [ %11, %9 ], [ %24, %15 ]
  %29 = zext i32 %28 to i64
  store i64 %29, i64* %RDX, align 8
  %30 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %31 = zext i1 %26 to i8
  store i8 %31, i8* %30, align 1
  %32 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %33 = and i32 %28, 254
  %34 = tail call i32 @llvm.ctpop.i32(i32 %33)
  %35 = trunc i32 %34 to i8
  %36 = and i8 %35, 1
  %37 = xor i8 %36, 1
  store i8 %37, i8* %32, align 1
  %38 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %38, align 1
  %39 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %40 = icmp eq i32 %28, 0
  %41 = zext i1 %40 to i8
  store i8 %41, i8* %39, align 1
  %42 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %43 = lshr i32 %28, 31
  %44 = trunc i32 %43 to i8
  store i8 %44, i8* %42, align 1
  %45 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %46 = zext i1 %27 to i8
  store i8 %46, i8* %45, align 1
  br label %_ZN12_GLOBAL__N_1L3SHLI3RnWImE2RnIjES4_EEP6MemoryS6_R5StateT_T0_T1_.exit

_ZN12_GLOBAL__N_1L3SHLI3RnWImE2RnIjES4_EEP6MemoryS6_R5StateT_T0_T1_.exit: ; preds = %25, %block_400488
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__edx__MINUS0x64__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %EDX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -100
  %6 = load i32, i32* %EDX, align 4
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

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__0x0__MINUS0x2c__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
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
define %struct.Memory* @routine_movb__bl__MINUS0x99__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 3, i32 0
  %BL = bitcast %union.anon* %3 to i8*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -153
  %6 = load i8, i8* %BL, align 1
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i8*
  store i8 %6, i8* %9, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jne_.L_43ef69(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__0x0__MINUS0x30__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
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
define %struct.Memory* @routine_movb__cl__MINUS0x99__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %CL = bitcast %union.anon* %3 to i8*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -153
  %6 = load i8, i8* %CL, align 1
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i8*
  store i8 %6, i8* %9, align 1
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
define %struct.Memory* @routine_movb_MINUS0x99__rbp____al(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %AL = bitcast %union.anon* %3 to i8*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -153
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
define %struct.Memory* @routine_movl__ecx__MINUS0x74__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %ECX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -116
  %6 = load i32, i32* %ECX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
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
define %struct.Memory* @routine_movq_0x3758__rdx____rdx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %RDX, align 8
  %4 = add i64 %3, 14168
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
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
define %struct.Memory* @routine_movslq_0xc__rsi____rsi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %RSI, align 8
  %4 = add i64 %3, 12
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
define %struct.Memory* @routine_imulq__0x278___rsi___rsi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %RSI, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 7
  store i64 %5, i64* %PC, align 8
  %6 = sext i64 %3 to i128
  %7 = and i128 %6, -18446744073709551616
  %8 = zext i64 %3 to i128
  %9 = or i128 %7, %8
  %10 = mul nsw i128 %9, 632
  %11 = trunc i128 %10 to i64
  store i64 %11, i64* %RSI, align 8
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
define %struct.Memory* @routine_movq__rdx__MINUS0x80__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -128
  %5 = load i64, i64* %RDX, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 4
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %4 to i64*
  store i64 %5, i64* %8, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_MINUS0x80__rbp____rdx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -128
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RDX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_0x23c__rdx____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %RDX, align 8
  %4 = add i64 %3, 572
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
define %struct.Memory* @routine_movl__ecx__MINUS0x84__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %ECX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -132
  %6 = load i32, i32* %ECX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__0x1__0x18__rdx_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %RDX, align 8
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
define %struct.Memory* @routine_jne_.L_43efc9(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl__0x1__MINUS0x70__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -112
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  store i32 1, i32* %7, align 4
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__eax__MINUS0x38__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -56
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
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
define %struct.Memory* @routine_movl_MINUS0x5c__rbp____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -92
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
define %struct.Memory* @routine_addl__0x8___ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 3
  store i64 %5, i64* %PC, align 8
  %6 = trunc i64 %3 to i32
  %7 = add i32 %6, 8
  %8 = zext i32 %7 to i64
  store i64 %8, i64* %RCX, align 8
  %9 = icmp ugt i32 %6, -9
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
define %struct.Memory* @routine_jge_.L_43f934(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl_0xac__rax____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = add i64 %3, 172
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
define %struct.Memory* @routine_addl_MINUS0x38__rbp____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -56
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
define %struct.Memory* @routine_movl__ecx__MINUS0x40__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %ECX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -64
  %6 = load i32, i32* %ECX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x0__MINUS0x68__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -104
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  store i32 0, i32* %7, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x60__rbp____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -96
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
define %struct.Memory* @routine_movl__ecx__MINUS0x3c__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %ECX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -60
  %6 = load i32, i32* %ECX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x3c__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -60
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
define %struct.Memory* @routine_jge_.L_43f918(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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

; Function Attrs: nounwind
define %struct.Memory* @routine_addl_MINUS0x3c__rbp____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -60
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
define %struct.Memory* @routine_movl__ecx__MINUS0x44__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %ECX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -68
  %6 = load i32, i32* %ECX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
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
define %struct.Memory* @routine_movl__ecx__MINUS0x54__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %ECX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -84
  %6 = load i32, i32* %ECX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
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
define %struct.Memory* @routine_je_.L_43f1ea(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl_MINUS0x3c__rbp____esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -60
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
define %struct.Memory* @routine_movswl_MINUS0x26__rbp____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -38
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
define %struct.Memory* @routine_movl_MINUS0x30__rbp____r9d(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 19, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -48
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
define %struct.Memory* @routine_movw_MINUS0x32__rbp____ax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %AX = bitcast %union.anon* %3 to i16*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -50
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 4
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %5 to i16*
  %9 = load i16, i16* %8, align 2
  store i16 %9, i16* %AX, align 2
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movswl__ax___r10d(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %AX = bitcast %union.anon* %3 to i16*
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 21, i32 0, i32 0
  %5 = load i16, i16* %AX, align 2
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
define %struct.Memory* @routine_movswl_MINUS0x34__rbp____r10d(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 21, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -52
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x0__MINUS0x4c__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -76
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  store i32 0, i32* %7, align 4
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__0x4__MINUS0x4c__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -76
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
define %struct.Memory* @routine_jge_.L_43f118(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl__0x0__MINUS0x48__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -72
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  store i32 0, i32* %7, align 4
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__0x4__MINUS0x48__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -72
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
define %struct.Memory* @routine_jge_.L_43f105(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl_MINUS0x48__rbp____edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -72
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
define %struct.Memory* @routine_addl_MINUS0x3c__rbp____edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RDX, align 8
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -60
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
define %struct.Memory* @routine_movl_MINUS0x4c__rbp____edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -76
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
define %struct.Memory* @routine_addl_MINUS0x38__rbp____edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RDX, align 8
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -56
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
define %struct.Memory* @routine_movl_MINUS0x48__rbp____edi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -72
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
define %struct.Memory* @routine_addl_MINUS0x3c__rbp____edi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RDI, align 8
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -60
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
define %struct.Memory* @routine_movslq__edi___rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0
  %EDI = bitcast %union.anon* %3 to i32*
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %4 = load i32, i32* %EDI, align 4
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 3
  store i64 %6, i64* %PC, align 8
  %7 = sext i32 %4 to i64
  store i64 %7, i64* %RCX, align 8
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
define %struct.Memory* @routine_movl_MINUS0x4c__rbp____edi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -76
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
define %struct.Memory* @routine_addl_MINUS0x38__rbp____edi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RDI, align 8
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -56
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
define %struct.Memory* @routine_movl_MINUS0x48__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -72
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
define %struct.Memory* @routine_jmpq_.L_43f095(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_43f10a(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jmpq_.L_43f084(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jge_.L_43f1e5(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jge_.L_43f1d2(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jmpq_.L_43f162(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_43f1d7(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_43f151(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_43f1ea(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x3c__rbp____edi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -60
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
define %struct.Memory* @routine_movswl_MINUS0x26__rbp____edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -38
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i16*
  %8 = load i16, i16* %7, align 2
  %9 = sext i16 %8 to i64
  %10 = and i64 %9, 4294967295
  store i64 %10, i64* %RDX, align 8
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
define %struct.Memory* @routine_movl_MINUS0x30__rbp____r8d(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -48
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
define %struct.Memory* @routine_movswl__ax___r9d(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %AX = bitcast %union.anon* %3 to i16*
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 19, i32 0, i32 0
  %5 = load i16, i16* %AX, align 2
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 4
  store i64 %7, i64* %PC, align 8
  %8 = sext i16 %5 to i64
  %9 = and i64 %8, 4294967295
  store i64 %9, i64* %4, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_callq_.LumaPrediction4x4(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movq_0x6cb900___r11(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %R11 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 23, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 8
  store i64 %4, i64* %PC, align 8
  %5 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*), align 8
  store i64 %5, i64* %R11, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__0x0__0x11c14__r11_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %R11 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 23, i32 0, i32 0
  %3 = load i64, i64* %R11, align 8
  %4 = add i64 %3, 72724
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 8
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
define %struct.Memory* @routine_je_.L_43f2c1(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jge_.L_43f2bc(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jge_.L_43f2a9(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jmpq_.L_43f23f(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_43f2ae(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_43f22e(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_43f2c1(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jne_.L_43f4ed(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_cmpl__0x0__MINUS0x84__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -132
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
define %struct.Memory* @routine_jne_.L_43f427(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jge_.L_43f395(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jge_.L_43f382(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movq_0x726418___rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 8
  store i64 %4, i64* %PC, align 8
  %5 = load i64, i64* bitcast (%G_0x726418_type* @G_0x726418 to i64*), align 8
  store i64 %5, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x40__rbp____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -64
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
define %struct.Memory* @routine_movl_MINUS0x44__rbp____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -68
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
define %struct.Memory* @routine_addl_MINUS0x48__rbp____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -72
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
define %struct.Memory* @routine_movzwl___rax__rdx_2____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
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
  %11 = zext i16 %10 to i64
  store i64 %11, i64* %RCX, align 8
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
define %struct.Memory* @routine_movl_MINUS0x48__rbp____esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -72
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
define %struct.Memory* @routine_addl_MINUS0x3c__rbp____esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RSI, align 8
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -60
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
define %struct.Memory* @routine_addl_MINUS0x38__rbp____esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RSI, align 8
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -56
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
define %struct.Memory* @routine_movzwl___rax__rdx_2____esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
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
define %struct.Memory* @routine_subl__esi___ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
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
define %struct.Memory* @routine_movslq_MINUS0x48__rbp____rdx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -72
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
define %struct.Memory* @routine_movslq_MINUS0x4c__rbp____rdx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -76
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
define %struct.Memory* @routine_movl__ecx____rax__rdx_4_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %ECX = bitcast %union.anon* %3 to i32*
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %4 = load i64, i64* %RAX, align 8
  %5 = load i64, i64* %RDX, align 8
  %6 = shl i64 %5, 2
  %7 = add i64 %6, %4
  %8 = load i32, i32* %ECX, align 4
  %9 = load i64, i64* %PC, align 8
  %10 = add i64 %9, 3
  store i64 %10, i64* %PC, align 8
  %11 = inttoptr i64 %7 to i32*
  store i32 %8, i32* %11, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_43f2fb(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_43f387(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_43f2ea(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__0x1__0x11ac8__rax_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
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
define %struct.Memory* @routine_je_.L_43f422(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_cmpl__0x0__MINUS0x74__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
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
define %struct.Memory* @routine_jne_.L_43f422(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_je_.L_43f3df(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_leaq_MINUS0x58__rbp____rdx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -88
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  store i64 %4, i64* %RDX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_callq_.dct_luma(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jmpq_.L_43f3f1(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_callq_.dct_luma_sp(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_cmpl__0x0__MINUS0x50__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -80
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
define %struct.Memory* @routine_je_.L_43f41d(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_shll__cl___eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %CL = bitcast %union.anon* %3 to i8*
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %4 = load i64, i64* %RAX, align 8
  %5 = load i8, i8* %CL, align 1
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 2
  store i64 %7, i64* %PC, align 8
  %8 = trunc i8 %5 to i5
  switch i5 %8, label %15 [
    i5 0, label %_ZN12_GLOBAL__N_1L3SHLI3RnWImE2RnIjES4_EEP6MemoryS6_R5StateT_T0_T1_.exit
    i5 1, label %9
  ]

; <label>:9:                                      ; preds = %block_400488
  %10 = trunc i64 %4 to i32
  %11 = shl i32 %10, 1
  %12 = icmp slt i32 %10, 0
  %13 = icmp slt i32 %11, 0
  %14 = xor i1 %12, %13
  br label %25

; <label>:15:                                     ; preds = %block_400488
  %16 = and i8 %5, 31
  %17 = zext i8 %16 to i64
  %18 = add nuw nsw i64 %17, 4294967295
  %19 = and i64 %4, 4294967295
  %20 = and i64 %18, 4294967295
  %21 = shl i64 %19, %20
  %22 = trunc i64 %21 to i32
  %23 = icmp slt i32 %22, 0
  %24 = shl i32 %22, 1
  br label %25

; <label>:25:                                     ; preds = %15, %9
  %26 = phi i1 [ %12, %9 ], [ %23, %15 ]
  %27 = phi i1 [ %14, %9 ], [ false, %15 ]
  %28 = phi i32 [ %11, %9 ], [ %24, %15 ]
  %29 = zext i32 %28 to i64
  store i64 %29, i64* %RAX, align 8
  %30 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %31 = zext i1 %26 to i8
  store i8 %31, i8* %30, align 1
  %32 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %33 = and i32 %28, 254
  %34 = tail call i32 @llvm.ctpop.i32(i32 %33)
  %35 = trunc i32 %34 to i8
  %36 = and i8 %35, 1
  %37 = xor i8 %36, 1
  store i8 %37, i8* %32, align 1
  %38 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %38, align 1
  %39 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %40 = icmp eq i32 %28, 0
  %41 = zext i1 %40 to i8
  store i8 %41, i8* %39, align 1
  %42 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %43 = lshr i32 %28, 31
  %44 = trunc i32 %43 to i8
  store i8 %44, i8* %42, align 1
  %45 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %46 = zext i1 %27 to i8
  store i8 %46, i8* %45, align 1
  br label %_ZN12_GLOBAL__N_1L3SHLI3RnWImE2RnIjES4_EEP6MemoryS6_R5StateT_T0_T1_.exit

_ZN12_GLOBAL__N_1L3SHLI3RnWImE2RnIjES4_EEP6MemoryS6_R5StateT_T0_T1_.exit: ; preds = %25, %block_400488
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movslq__eax___rdx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %4 = load i32, i32* %EAX, align 4
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 3
  store i64 %6, i64* %PC, align 8
  %7 = sext i32 %4 to i64
  store i64 %7, i64* %RDX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_MINUS0x20__rbp____rsi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -32
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_orq___rsi____rdx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %RDX, align 8
  %4 = bitcast i64* %RSI to i64**
  %5 = load i64*, i64** %4, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 3
  store i64 %7, i64* %PC, align 8
  %8 = load i64, i64* %5, align 8
  %9 = or i64 %8, %3
  store i64 %9, i64* %RDX, align 8
  %10 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %10, align 1
  %11 = trunc i64 %9 to i32
  %12 = and i32 %11, 255
  %13 = tail call i32 @llvm.ctpop.i32(i32 %12)
  %14 = trunc i32 %13 to i8
  %15 = and i8 %14, 1
  %16 = xor i8 %15, 1
  %17 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %16, i8* %17, align 1
  %18 = icmp eq i64 %9, 0
  %19 = zext i1 %18 to i8
  %20 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %19, i8* %20, align 1
  %21 = lshr i64 %9, 63
  %22 = trunc i64 %21 to i8
  %23 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %22, i8* %23, align 1
  %24 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %24, align 1
  %25 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %25, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__rdx____rsi_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = bitcast i64* %RSI to i64**
  %4 = load i64*, i64** %3, align 8
  %5 = load i64, i64* %RDX, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 3
  store i64 %7, i64* %PC, align 8
  store i64 %5, i64* %4, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x64__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -100
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
define %struct.Memory* @routine_movq_MINUS0x18__rbp____rdx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -24
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RDX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_orl___rdx____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = bitcast i64* %RDX to i32**
  %5 = load i32*, i32** %4, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 2
  store i64 %7, i64* %PC, align 8
  %8 = trunc i64 %3 to i32
  %9 = load i32, i32* %5, align 4
  %10 = or i32 %9, %8
  %11 = zext i32 %10 to i64
  store i64 %11, i64* %RAX, align 8
  %12 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %12, align 1
  %13 = and i32 %10, 255
  %14 = tail call i32 @llvm.ctpop.i32(i32 %13)
  %15 = trunc i32 %14 to i8
  %16 = and i8 %15, 1
  %17 = xor i8 %16, 1
  %18 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %17, i8* %18, align 1
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
  %26 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %26, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__eax____rdx_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %4 = bitcast i64* %RDX to i32**
  %5 = load i32*, i32** %4, align 8
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 2
  store i64 %8, i64* %PC, align 8
  store i32 %6, i32* %5, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_43f422(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_43f4e8(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jge_.L_43f4e3(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jge_.L_43f4d0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_addl_MINUS0x68__rbp____esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RSI, align 8
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -104
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

; Function Attrs: nounwind
define %struct.Memory* @routine_addl_MINUS0x6c__rbp____esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RSI, align 8
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -108
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
define %struct.Memory* @routine_jmpq_.L_43f43f(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_43f4d5(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_43f42e(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_43f8fc(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jge_.L_43f7d3(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jge_.L_43f7c0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movq__0x725610___rsi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x725610_type* @G__0x725610 to i64), i64* %RSI, align 8
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

; Function Attrs: nounwind
define %struct.Memory* @routine_addq__0x800___rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %RDI, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 7
  store i64 %5, i64* %PC, align 8
  %6 = add i64 %3, 2048
  store i64 %6, i64* %RDI, align 8
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
define %struct.Memory* @routine_addq__0x400___r8(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %R8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0, i32 0
  %3 = load i64, i64* %R8, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 7
  store i64 %5, i64* %PC, align 8
  %6 = add i64 %3, 1024
  store i64 %6, i64* %R8, align 8
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
define %struct.Memory* @routine_movq_0x6f6f90___r9(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %R9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 19, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 8
  store i64 %4, i64* %PC, align 8
  %5 = load i64, i64* bitcast (%G_0x6f6f90_type* @G_0x6f6f90 to i64*), align 8
  store i64 %5, i64* %R9, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq___r9____r9(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %R9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 19, i32 0, i32 0
  %3 = bitcast i64* %R9 to i64**
  %4 = load i64*, i64** %3, align 8
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 3
  store i64 %6, i64* %PC, align 8
  %7 = load i64, i64* %4, align 8
  store i64 %7, i64* %R9, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x40__rbp____r10d(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 21, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -64
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
define %struct.Memory* @routine_addl_MINUS0x4c__rbp____r10d(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 21, i32 0
  %R10D = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = getelementptr inbounds %union.anon, %union.anon* %3, i64 0, i32 0
  %5 = load i32, i32* %R10D, align 4
  %6 = load i64, i64* %RBP, align 8
  %7 = add i64 %6, -76
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
define %struct.Memory* @routine_movslq__r10d___r11(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 21, i32 0
  %R10D = bitcast %union.anon* %3 to i32*
  %R11 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 23, i32 0, i32 0
  %4 = load i32, i32* %R10D, align 4
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 3
  store i64 %6, i64* %PC, align 8
  %7 = sext i32 %4 to i64
  store i64 %7, i64* %R11, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq___r9__r11_8____r9(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %R9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 19, i32 0, i32 0
  %R11 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 23, i32 0, i32 0
  %3 = load i64, i64* %R9, align 8
  %4 = load i64, i64* %R11, align 8
  %5 = shl i64 %4, 3
  %6 = add i64 %5, %3
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 4
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %6 to i64*
  %10 = load i64, i64* %9, align 8
  store i64 %10, i64* %R9, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x44__rbp____r10d(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 21, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -68
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
define %struct.Memory* @routine_addl_MINUS0x48__rbp____r10d(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 21, i32 0
  %R10D = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = getelementptr inbounds %union.anon, %union.anon* %3, i64 0, i32 0
  %5 = load i32, i32* %R10D, align 4
  %6 = load i64, i64* %RBP, align 8
  %7 = add i64 %6, -72
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
define %struct.Memory* @routine_movzwl___r9__r11_2____r10d(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %R9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 19, i32 0, i32 0
  %R11 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 23, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 21, i32 0, i32 0
  %4 = load i64, i64* %R9, align 8
  %5 = load i64, i64* %R11, align 8
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x48__rbp____ebx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 3, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -72
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 3
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = zext i32 %8 to i64
  store i64 %9, i64* %RBX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_addl_MINUS0x3c__rbp____ebx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 3, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBX, align 8
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -60
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 3
  store i64 %7, i64* %PC, align 8
  %8 = trunc i64 %3 to i32
  %9 = inttoptr i64 %5 to i32*
  %10 = load i32, i32* %9, align 4
  %11 = add i32 %10, %8
  %12 = zext i32 %11 to i64
  store i64 %12, i64* %RBX, align 8
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
define %struct.Memory* @routine_movslq__ebx___r9(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 3, i32 0
  %EBX = bitcast %union.anon* %3 to i32*
  %R9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 19, i32 0, i32 0
  %4 = load i32, i32* %EBX, align 4
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 3
  store i64 %6, i64* %PC, align 8
  %7 = sext i32 %4 to i64
  store i64 %7, i64* %R9, align 8
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
define %struct.Memory* @routine_movl_MINUS0x4c__rbp____ebx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 3, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -76
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 3
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = zext i32 %8 to i64
  store i64 %9, i64* %RBX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_addl_MINUS0x38__rbp____ebx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 3, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBX, align 8
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -56
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 3
  store i64 %7, i64* %PC, align 8
  %8 = trunc i64 %3 to i32
  %9 = inttoptr i64 %5 to i32*
  %10 = load i32, i32* %9, align 4
  %11 = add i32 %10, %8
  %12 = zext i32 %11 to i64
  store i64 %12, i64* %RBX, align 8
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
define %struct.Memory* @routine_subl___r8__r9_4____r10d(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 21, i32 0
  %R10D = bitcast %union.anon* %3 to i32*
  %R8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0, i32 0
  %R9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 19, i32 0, i32 0
  %4 = getelementptr inbounds %union.anon, %union.anon* %3, i64 0, i32 0
  %5 = load i32, i32* %R10D, align 4
  %6 = load i64, i64* %R8, align 8
  %7 = load i64, i64* %R9, align 8
  %8 = shl i64 %7, 2
  %9 = add i64 %8, %6
  %10 = load i64, i64* %PC, align 8
  %11 = add i64 %10, 4
  store i64 %11, i64* %PC, align 8
  %12 = inttoptr i64 %9 to i32*
  %13 = load i32, i32* %12, align 4
  %14 = sub i32 %5, %13
  %15 = zext i32 %14 to i64
  store i64 %15, i64* %4, align 8
  %16 = icmp ult i32 %5, %13
  %17 = zext i1 %16 to i8
  %18 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %17, i8* %18, align 1
  %19 = and i32 %14, 255
  %20 = tail call i32 @llvm.ctpop.i32(i32 %19)
  %21 = trunc i32 %20 to i8
  %22 = and i8 %21, 1
  %23 = xor i8 %22, 1
  %24 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %23, i8* %24, align 1
  %25 = xor i32 %13, %5
  %26 = xor i32 %25, %14
  %27 = lshr i32 %26, 4
  %28 = trunc i32 %27 to i8
  %29 = and i8 %28, 1
  %30 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %29, i8* %30, align 1
  %31 = icmp eq i32 %14, 0
  %32 = zext i1 %31 to i8
  %33 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %32, i8* %33, align 1
  %34 = lshr i32 %14, 31
  %35 = trunc i32 %34 to i8
  %36 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %35, i8* %36, align 1
  %37 = lshr i32 %5, 31
  %38 = lshr i32 %13, 31
  %39 = xor i32 %38, %37
  %40 = xor i32 %34, %37
  %41 = add nuw nsw i32 %40, %39
  %42 = icmp eq i32 %41, 2
  %43 = zext i1 %42 to i8
  %44 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %43, i8* %44, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__r10d__MINUS0x90__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 21, i32 0
  %R10D = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -144
  %6 = load i32, i32* %R10D, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 7
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_0x726418___r8(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %R8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 8
  store i64 %4, i64* %PC, align 8
  %5 = load i64, i64* bitcast (%G_0x726418_type* @G_0x726418 to i64*), align 8
  store i64 %5, i64* %R8, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movslq__r10d___r9(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 21, i32 0
  %R10D = bitcast %union.anon* %3 to i32*
  %R9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 19, i32 0, i32 0
  %4 = load i32, i32* %R10D, align 4
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 3
  store i64 %6, i64* %PC, align 8
  %7 = sext i32 %4 to i64
  store i64 %7, i64* %R9, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq___r8__r9_8____r8(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %R8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0, i32 0
  %R9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 19, i32 0, i32 0
  %3 = load i64, i64* %R8, align 8
  %4 = load i64, i64* %R9, align 8
  %5 = shl i64 %4, 3
  %6 = add i64 %5, %3
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 4
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %6 to i64*
  %10 = load i64, i64* %9, align 8
  store i64 %10, i64* %R8, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movzwl___r8__r9_2____r10d(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %R8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0, i32 0
  %R9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 19, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 21, i32 0, i32 0
  %4 = load i64, i64* %R8, align 8
  %5 = load i64, i64* %R9, align 8
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movslq__ebx___r8(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 3, i32 0
  %EBX = bitcast %union.anon* %3 to i32*
  %R8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0, i32 0
  %4 = load i32, i32* %EBX, align 4
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 3
  store i64 %6, i64* %PC, align 8
  %7 = sext i32 %4 to i64
  store i64 %7, i64* %R8, align 8
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

; Function Attrs: nounwind
define %struct.Memory* @routine_subl___rsi__r8_4____r10d(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 21, i32 0
  %R10D = bitcast %union.anon* %3 to i32*
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %R8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0, i32 0
  %4 = getelementptr inbounds %union.anon, %union.anon* %3, i64 0, i32 0
  %5 = load i32, i32* %R10D, align 4
  %6 = load i64, i64* %RSI, align 8
  %7 = load i64, i64* %R8, align 8
  %8 = shl i64 %7, 2
  %9 = add i64 %8, %6
  %10 = load i64, i64* %PC, align 8
  %11 = add i64 %10, 4
  store i64 %11, i64* %PC, align 8
  %12 = inttoptr i64 %9 to i32*
  %13 = load i32, i32* %12, align 4
  %14 = sub i32 %5, %13
  %15 = zext i32 %14 to i64
  store i64 %15, i64* %4, align 8
  %16 = icmp ult i32 %5, %13
  %17 = zext i1 %16 to i8
  %18 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %17, i8* %18, align 1
  %19 = and i32 %14, 255
  %20 = tail call i32 @llvm.ctpop.i32(i32 %19)
  %21 = trunc i32 %20 to i8
  %22 = and i8 %21, 1
  %23 = xor i8 %22, 1
  %24 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %23, i8* %24, align 1
  %25 = xor i32 %13, %5
  %26 = xor i32 %25, %14
  %27 = lshr i32 %26, 4
  %28 = trunc i32 %27 to i8
  %29 = and i8 %28, 1
  %30 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %29, i8* %30, align 1
  %31 = icmp eq i32 %14, 0
  %32 = zext i1 %31 to i8
  %33 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %32, i8* %33, align 1
  %34 = lshr i32 %14, 31
  %35 = trunc i32 %34 to i8
  %36 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %35, i8* %36, align 1
  %37 = lshr i32 %5, 31
  %38 = lshr i32 %13, 31
  %39 = xor i32 %38, %37
  %40 = xor i32 %34, %37
  %41 = add nuw nsw i32 %40, %39
  %42 = icmp eq i32 %41, 2
  %43 = zext i1 %42 to i8
  %44 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %43, i8* %44, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__r10d__MINUS0x8c__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 21, i32 0
  %R10D = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -140
  %6 = load i32, i32* %R10D, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 7
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movslq__r10d___r8(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 21, i32 0
  %R10D = bitcast %union.anon* %3 to i32*
  %R8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0, i32 0
  %4 = load i32, i32* %R10D, align 4
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
define %struct.Memory* @routine_movzwl___rsi__r8_2____r10d(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %R8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 21, i32 0, i32 0
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movslq__ebx___rsi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 3, i32 0
  %EBX = bitcast %union.anon* %3 to i32*
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %4 = load i32, i32* %EBX, align 4
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 3
  store i64 %6, i64* %PC, align 8
  %7 = sext i32 %4 to i64
  store i64 %7, i64* %RSI, align 8
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

; Function Attrs: nounwind
define %struct.Memory* @routine_subl___rdi__rsi_4____r10d(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 21, i32 0
  %R10D = bitcast %union.anon* %3 to i32*
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %4 = getelementptr inbounds %union.anon, %union.anon* %3, i64 0, i32 0
  %5 = load i32, i32* %R10D, align 4
  %6 = load i64, i64* %RDI, align 8
  %7 = load i64, i64* %RSI, align 8
  %8 = shl i64 %7, 2
  %9 = add i64 %8, %6
  %10 = load i64, i64* %PC, align 8
  %11 = add i64 %10, 4
  store i64 %11, i64* %PC, align 8
  %12 = inttoptr i64 %9 to i32*
  %13 = load i32, i32* %12, align 4
  %14 = sub i32 %5, %13
  %15 = zext i32 %14 to i64
  store i64 %15, i64* %4, align 8
  %16 = icmp ult i32 %5, %13
  %17 = zext i1 %16 to i8
  %18 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %17, i8* %18, align 1
  %19 = and i32 %14, 255
  %20 = tail call i32 @llvm.ctpop.i32(i32 %19)
  %21 = trunc i32 %20 to i8
  %22 = and i8 %21, 1
  %23 = xor i8 %22, 1
  %24 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %23, i8* %24, align 1
  %25 = xor i32 %13, %5
  %26 = xor i32 %25, %14
  %27 = lshr i32 %26, 4
  %28 = trunc i32 %27 to i8
  %29 = and i8 %28, 1
  %30 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %29, i8* %30, align 1
  %31 = icmp eq i32 %14, 0
  %32 = zext i1 %31 to i8
  %33 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %32, i8* %33, align 1
  %34 = lshr i32 %14, 31
  %35 = trunc i32 %34 to i8
  %36 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %35, i8* %36, align 1
  %37 = lshr i32 %5, 31
  %38 = lshr i32 %13, 31
  %39 = xor i32 %38, %37
  %40 = xor i32 %34, %37
  %41 = add nuw nsw i32 %40, %39
  %42 = icmp eq i32 %41, 2
  %43 = zext i1 %42 to i8
  %44 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %43, i8* %44, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__r10d__MINUS0x88__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 21, i32 0
  %R10D = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -136
  %6 = load i32, i32* %R10D, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 7
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x88__rbp____r10d(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 21, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -136
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
define %struct.Memory* @routine_subl_MINUS0x90__rbp____r10d(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 21, i32 0
  %R10D = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = getelementptr inbounds %union.anon, %union.anon* %3, i64 0, i32 0
  %5 = load i32, i32* %R10D, align 4
  %6 = load i64, i64* %RBP, align 8
  %7 = add i64 %6, -144
  %8 = load i64, i64* %PC, align 8
  %9 = add i64 %8, 7
  store i64 %9, i64* %PC, align 8
  %10 = inttoptr i64 %7 to i32*
  %11 = load i32, i32* %10, align 4
  %12 = sub i32 %5, %11
  %13 = zext i32 %12 to i64
  store i64 %13, i64* %4, align 8
  %14 = icmp ult i32 %5, %11
  %15 = zext i1 %14 to i8
  %16 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %15, i8* %16, align 1
  %17 = and i32 %12, 255
  %18 = tail call i32 @llvm.ctpop.i32(i32 %17)
  %19 = trunc i32 %18 to i8
  %20 = and i8 %19, 1
  %21 = xor i8 %20, 1
  %22 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %21, i8* %22, align 1
  %23 = xor i32 %11, %5
  %24 = xor i32 %23, %12
  %25 = lshr i32 %24, 4
  %26 = trunc i32 %25 to i8
  %27 = and i8 %26, 1
  %28 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %27, i8* %28, align 1
  %29 = icmp eq i32 %12, 0
  %30 = zext i1 %29 to i8
  %31 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %30, i8* %31, align 1
  %32 = lshr i32 %12, 31
  %33 = trunc i32 %32 to i8
  %34 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %33, i8* %34, align 1
  %35 = lshr i32 %5, 31
  %36 = lshr i32 %11, 31
  %37 = xor i32 %36, %35
  %38 = xor i32 %32, %35
  %39 = add nuw nsw i32 %38, %37
  %40 = icmp eq i32 %39, 2
  %41 = zext i1 %40 to i8
  %42 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %41, i8* %42, align 1
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__r10d____rdi__rsi_4_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 21, i32 0
  %R10D = bitcast %union.anon* %3 to i32*
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %4 = load i64, i64* %RDI, align 8
  %5 = load i64, i64* %RSI, align 8
  %6 = shl i64 %5, 2
  %7 = add i64 %6, %4
  %8 = load i32, i32* %R10D, align 4
  %9 = load i64, i64* %PC, align 8
  %10 = add i64 %9, 4
  store i64 %10, i64* %PC, align 8
  %11 = inttoptr i64 %7 to i32*
  store i32 %8, i32* %11, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x90__rbp____r10d(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 21, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -144
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
define %struct.Memory* @routine_movl___rdx__rsi_4____ebx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 3, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
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
  store i64 %11, i64* %RBX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_sarl__0x1___ebx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 3, i32 0, i32 0
  %3 = load i64, i64* %RBX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 2
  store i64 %5, i64* %PC, align 8
  %6 = shl i64 %3, 32
  %7 = ashr i64 %6, 33
  %8 = trunc i64 %3 to i8
  %9 = and i8 %8, 1
  %10 = trunc i64 %7 to i32
  %11 = and i64 %7, 4294967295
  store i64 %11, i64* %RBX, align 8
  %12 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %9, i8* %12, align 1
  %13 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %14 = and i32 %10, 255
  %15 = tail call i32 @llvm.ctpop.i32(i32 %14)
  %16 = trunc i32 %15 to i8
  %17 = and i8 %16, 1
  %18 = xor i8 %17, 1
  store i8 %18, i8* %13, align 1
  %19 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %19, align 1
  %20 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %21 = icmp eq i32 %10, 0
  %22 = zext i1 %21 to i8
  store i8 %22, i8* %20, align 1
  %23 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %24 = lshr i64 %7, 31
  %25 = trunc i64 %24 to i8
  %26 = and i8 %25, 1
  store i8 %26, i8* %23, align 1
  %27 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %27, align 1
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_addl__ebx___r10d(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 3, i32 0
  %EBX = bitcast %union.anon* %3 to i32*
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 21, i32 0
  %R10D = bitcast %union.anon* %4 to i32*
  %5 = getelementptr inbounds %union.anon, %union.anon* %4, i64 0, i32 0
  %6 = load i32, i32* %R10D, align 4
  %7 = load i32, i32* %EBX, align 4
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__r10d__MINUS0x94__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 21, i32 0
  %R10D = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -148
  %6 = load i32, i32* %R10D, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 7
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x8c__rbp____r10d(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 21, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -140
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
define %struct.Memory* @routine_subl_MINUS0x94__rbp____r10d(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 21, i32 0
  %R10D = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = getelementptr inbounds %union.anon, %union.anon* %3, i64 0, i32 0
  %5 = load i32, i32* %R10D, align 4
  %6 = load i64, i64* %RBP, align 8
  %7 = add i64 %6, -148
  %8 = load i64, i64* %PC, align 8
  %9 = add i64 %8, 7
  store i64 %9, i64* %PC, align 8
  %10 = inttoptr i64 %7 to i32*
  %11 = load i32, i32* %10, align 4
  %12 = sub i32 %5, %11
  %13 = zext i32 %12 to i64
  store i64 %13, i64* %4, align 8
  %14 = icmp ult i32 %5, %11
  %15 = zext i1 %14 to i8
  %16 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %15, i8* %16, align 1
  %17 = and i32 %12, 255
  %18 = tail call i32 @llvm.ctpop.i32(i32 %17)
  %19 = trunc i32 %18 to i8
  %20 = and i8 %19, 1
  %21 = xor i8 %20, 1
  %22 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %21, i8* %22, align 1
  %23 = xor i32 %11, %5
  %24 = xor i32 %23, %12
  %25 = lshr i32 %24, 4
  %26 = trunc i32 %25 to i8
  %27 = and i8 %26, 1
  %28 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %27, i8* %28, align 1
  %29 = icmp eq i32 %12, 0
  %30 = zext i1 %29 to i8
  %31 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %30, i8* %31, align 1
  %32 = lshr i32 %12, 31
  %33 = trunc i32 %32 to i8
  %34 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %33, i8* %34, align 1
  %35 = lshr i32 %5, 31
  %36 = lshr i32 %11, 31
  %37 = xor i32 %36, %35
  %38 = xor i32 %32, %35
  %39 = add nuw nsw i32 %38, %37
  %40 = icmp eq i32 %39, 2
  %41 = zext i1 %40 to i8
  %42 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %41, i8* %42, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movslq__ebx___rdx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 3, i32 0
  %EBX = bitcast %union.anon* %3 to i32*
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %4 = load i32, i32* %EBX, align 4
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 3
  store i64 %6, i64* %PC, align 8
  %7 = sext i32 %4 to i64
  store i64 %7, i64* %RDX, align 8
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
define %struct.Memory* @routine_movl__r10d____rsi__rdx_4_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 21, i32 0
  %R10D = bitcast %union.anon* %3 to i32*
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %4 = load i64, i64* %RSI, align 8
  %5 = load i64, i64* %RDX, align 8
  %6 = shl i64 %5, 2
  %7 = add i64 %6, %4
  %8 = load i32, i32* %R10D, align 4
  %9 = load i64, i64* %PC, align 8
  %10 = add i64 %9, 4
  store i64 %10, i64* %PC, align 8
  %11 = inttoptr i64 %7 to i32*
  store i32 %8, i32* %11, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x94__rbp____r10d(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 21, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -148
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
define %struct.Memory* @routine_movl___rcx__rdx_4____ebx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 3, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
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
  store i64 %11, i64* %RBX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movslq__ebx___rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 3, i32 0
  %EBX = bitcast %union.anon* %3 to i32*
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %4 = load i32, i32* %EBX, align 4
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 3
  store i64 %6, i64* %PC, align 8
  %7 = sext i32 %4 to i64
  store i64 %7, i64* %RCX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__r10d____rax__rcx_4_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 21, i32 0
  %R10D = bitcast %union.anon* %3 to i32*
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %4 = load i64, i64* %RAX, align 8
  %5 = load i64, i64* %RCX, align 8
  %6 = shl i64 %5, 2
  %7 = add i64 %6, %4
  %8 = load i32, i32* %R10D, align 4
  %9 = load i64, i64* %PC, align 8
  %10 = add i64 %9, 4
  store i64 %10, i64* %PC, align 8
  %11 = inttoptr i64 %7 to i32*
  store i32 %8, i32* %11, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jne_.L_43f75d(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x4c__rbp____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -76
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
define %struct.Memory* @routine_movl___rax__rdx_4____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %RDX, align 8
  %5 = shl i64 %4, 2
  %6 = add i64 %5, %3
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %6 to i32*
  %10 = load i32, i32* %9, align 4
  %11 = zext i32 %10 to i64
  store i64 %11, i64* %RCX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_43f7ad(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_43f7b2(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_43f505(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_43f7c5(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_43f4f4(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_je_.L_43f8f7(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jne_.L_43f8f7(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_je_.L_43f82a(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jmpq_.L_43f83c(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jge_.L_43f8c6(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jge_.L_43f8b3(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jmpq_.L_43f854(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_43f8b8(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_43f843(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_je_.L_43f8f2(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jmpq_.L_43f8f7(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_43f901(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
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
define %struct.Memory* @routine_jmpq_.L_43f008(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_43f91d(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
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
define %struct.Memory* @routine_jmpq_.L_43efd6(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_je_.L_43fa8a(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_je_.L_43fa85(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jne_.L_43fa85(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_je_.L_43f983(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_leaq_MINUS0x58__rbp____rsi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -88
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  store i64 %4, i64* %RSI, align 8
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x24__rbp____edi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -36
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
define %struct.Memory* @routine_callq_.dct_luma8x8(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_je_.L_43fa27(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_cmpl__0x8__MINUS0x4c__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -76
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
define %struct.Memory* @routine_jge_.L_43fa22(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_cmpl__0x8__MINUS0x48__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -72
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
define %struct.Memory* @routine_jge_.L_43fa0f(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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

; Function Attrs: nounwind
define %struct.Memory* @routine_addl_MINUS0x48__rbp____edi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RDI, align 8
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -72
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
define %struct.Memory* @routine_movl_MINUS0x5c__rbp____edi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -92
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
define %struct.Memory* @routine_addl_MINUS0x4c__rbp____edi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RDI, align 8
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
define %struct.Memory* @routine_jmpq_.L_43f9b0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_43fa14(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_43f99f(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_43fa27(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_je_.L_43fa80(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl__0x33___eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 5
  store i64 %4, i64* %PC, align 8
  store i64 51, i64* %RAX, align 8
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
define %struct.Memory* @routine_shll__0x2___edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %RDX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 3
  store i64 %5, i64* %PC, align 8
  %.tr = trunc i64 %3 to i32
  %6 = shl i32 %.tr, 2
  %7 = zext i32 %6 to i64
  store i64 %7, i64* %RDX, align 8
  %8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %9 = lshr i64 %3, 30
  %10 = trunc i64 %9 to i8
  %11 = and i8 %10, 1
  store i8 %11, i8* %8, align 1
  %12 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %13 = and i32 %6, 252
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
  %23 = lshr i32 %.tr, 29
  %24 = trunc i32 %23 to i8
  %25 = and i8 %24, 1
  store i8 %25, i8* %22, align 1
  %26 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %26, align 1
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
define %struct.Memory* @routine_movl__edx__MINUS0xa4__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %EDX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -164
  %6 = load i32, i32* %EDX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
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
define %struct.Memory* @routine_movl_MINUS0xa4__rbp____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -164
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
define %struct.Memory* @routine_subl__edx___ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %EDX = bitcast %union.anon* %3 to i32*
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %4 = load i64, i64* %RCX, align 8
  %5 = load i32, i32* %EDX, align 4
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
define %struct.Memory* @routine_movl_MINUS0xa0__rbp____edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -160
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
define %struct.Memory* @routine_movslq__edx___rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %EDX = bitcast %union.anon* %3 to i32*
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %4 = load i32, i32* %EDX, align 4
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 3
  store i64 %6, i64* %PC, align 8
  %7 = sext i32 %4 to i64
  store i64 %7, i64* %RDI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_MINUS0x20__rbp____r8(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %R8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -32
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %R8, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_orq___r8____rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %R8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0, i32 0
  %3 = load i64, i64* %RDI, align 8
  %4 = bitcast i64* %R8 to i64**
  %5 = load i64*, i64** %4, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 3
  store i64 %7, i64* %PC, align 8
  %8 = load i64, i64* %5, align 8
  %9 = or i64 %8, %3
  store i64 %9, i64* %RDI, align 8
  %10 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %10, align 1
  %11 = trunc i64 %9 to i32
  %12 = and i32 %11, 255
  %13 = tail call i32 @llvm.ctpop.i32(i32 %12)
  %14 = trunc i32 %13 to i8
  %15 = and i8 %14, 1
  %16 = xor i8 %15, 1
  %17 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %16, i8* %17, align 1
  %18 = icmp eq i64 %9, 0
  %19 = zext i1 %18 to i8
  %20 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %19, i8* %20, align 1
  %21 = lshr i64 %9, 63
  %22 = trunc i64 %21 to i8
  %23 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %22, i8* %23, align 1
  %24 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %24, align 1
  %25 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %25, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__rdi____r8_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %R8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0, i32 0
  %3 = bitcast i64* %R8 to i64**
  %4 = load i64*, i64** %3, align 8
  %5 = load i64, i64* %RDI, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 3
  store i64 %7, i64* %PC, align 8
  store i64 %5, i64* %4, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x64__rbp____edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -100
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
define %struct.Memory* @routine_movq_MINUS0x18__rbp____rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -24
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RDI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_orl___rdi____edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %RDX, align 8
  %4 = bitcast i64* %RDI to i32**
  %5 = load i32*, i32** %4, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 2
  store i64 %7, i64* %PC, align 8
  %8 = trunc i64 %3 to i32
  %9 = load i32, i32* %5, align 4
  %10 = or i32 %9, %8
  %11 = zext i32 %10 to i64
  store i64 %11, i64* %RDX, align 8
  %12 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %12, align 1
  %13 = and i32 %10, 255
  %14 = tail call i32 @llvm.ctpop.i32(i32 %13)
  %15 = trunc i32 %14 to i8
  %16 = and i8 %15, 1
  %17 = xor i8 %16, 1
  %18 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %17, i8* %18, align 1
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
  %26 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %26, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__edx____rdi_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %EDX = bitcast %union.anon* %3 to i32*
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %4 = bitcast i64* %RDI to i32**
  %5 = load i32*, i32** %4, align 8
  %6 = load i32, i32* %EDX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 2
  store i64 %8, i64* %PC, align 8
  store i32 %6, i32* %5, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_43fa85(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_43fa8a(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_je_.L_43fcac(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jne_.L_43fcac(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_cmpl__0x4__MINUS0x58__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -88
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
define %struct.Memory* @routine_jg_.L_43fcac(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jne_.L_43faea(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl__0x3f___edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 5
  store i64 %4, i64* %PC, align 8
  store i64 63, i64* %RDX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_subl_MINUS0x64__rbp____edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RDX, align 8
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -100
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
define %struct.Memory* @routine_movq_MINUS0x18__rbp____rsi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -24
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_andl___rsi____edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %RDX, align 8
  %4 = bitcast i64* %RSI to i32**
  %5 = load i32*, i32** %4, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 2
  store i64 %7, i64* %PC, align 8
  %8 = trunc i64 %3 to i32
  %9 = load i32, i32* %5, align 4
  %10 = and i32 %9, %8
  %11 = zext i32 %10 to i64
  store i64 %11, i64* %RDX, align 8
  %12 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %12, align 1
  %13 = and i32 %10, 255
  %14 = tail call i32 @llvm.ctpop.i32(i32 %13)
  %15 = trunc i32 %14 to i8
  %16 = and i8 %15, 1
  %17 = xor i8 %16, 1
  %18 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %17, i8* %18, align 1
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
  %26 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %26, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__edx____rsi_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %EDX = bitcast %union.anon* %3 to i32*
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %4 = bitcast i64* %RSI to i32**
  %5 = load i32*, i32** %4, align 8
  %6 = load i32, i32* %EDX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 2
  store i64 %8, i64* %PC, align 8
  store i32 %6, i32* %5, align 4
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
define %struct.Memory* @routine_movl__edi___eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0
  %EDI = bitcast %union.anon* %3 to i32*
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %4 = load i32, i32* %EDI, align 4
  %5 = zext i32 %4 to i64
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 2
  store i64 %7, i64* %PC, align 8
  store i64 %5, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__edx__MINUS0xac__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %EDX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -172
  %6 = load i32, i32* %EDX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0xac__rbp____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -172
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
define %struct.Memory* @routine_movl_MINUS0xa8__rbp____edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -168
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
define %struct.Memory* @routine_xorl__0xffffffff___edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %RDX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 3
  store i64 %5, i64* %PC, align 8
  %6 = xor i64 %3, -1
  %7 = trunc i64 %6 to i32
  %8 = and i64 %6, 4294967295
  store i64 %8, i64* %RDX, align 8
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %9, align 1
  %10 = and i32 %7, 255
  %11 = tail call i32 @llvm.ctpop.i32(i32 %10)
  %12 = trunc i32 %11 to i8
  %13 = and i8 %12, 1
  %14 = xor i8 %13, 1
  %15 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %14, i8* %15, align 1
  %16 = icmp eq i32 %7, 0
  %17 = zext i1 %16 to i8
  %18 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %17, i8* %18, align 1
  %19 = lshr i32 %7, 31
  %20 = trunc i32 %19 to i8
  %21 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %20, i8* %21, align 1
  %22 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %22, align 1
  %23 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %23, align 1
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_andq___r8____rsi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %R8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0, i32 0
  %3 = load i64, i64* %RSI, align 8
  %4 = bitcast i64* %R8 to i64**
  %5 = load i64*, i64** %4, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 3
  store i64 %7, i64* %PC, align 8
  %8 = load i64, i64* %5, align 8
  %9 = and i64 %8, %3
  store i64 %9, i64* %RSI, align 8
  %10 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %10, align 1
  %11 = trunc i64 %9 to i32
  %12 = and i32 %11, 255
  %13 = tail call i32 @llvm.ctpop.i32(i32 %12)
  %14 = trunc i32 %13 to i8
  %15 = and i8 %14, 1
  %16 = xor i8 %15, 1
  %17 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %16, i8* %17, align 1
  %18 = icmp eq i64 %9, 0
  %19 = zext i1 %18 to i8
  %20 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %19, i8* %20, align 1
  %21 = lshr i64 %9, 63
  %22 = trunc i64 %21 to i8
  %23 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %22, i8* %23, align 1
  %24 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %24, align 1
  %25 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %25, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__rsi____r8_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %R8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0, i32 0
  %3 = bitcast i64* %R8 to i64**
  %4 = load i64*, i64** %3, align 8
  %5 = load i64, i64* %RSI, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 3
  store i64 %7, i64* %PC, align 8
  store i64 %5, i64* %4, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x60__rbp____edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -96
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
define %struct.Memory* @routine_movl__edx__MINUS0x48__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %EDX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -72
  %6 = load i32, i32* %EDX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jge_.L_43fc36(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jge_.L_43fc23(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jne_.L_43fbf0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movslq_MINUS0x48__rbp____rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -72
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
define %struct.Memory* @routine_movslq_MINUS0x4c__rbp____rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -76
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

; Function Attrs: nounwind
define %struct.Memory* @routine_addl_MINUS0x4c__rbp____esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RSI, align 8
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

; Function Attrs: nounwind
define %struct.Memory* @routine_addl_MINUS0x48__rbp____esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RSI, align 8
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -72
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
define %struct.Memory* @routine_jmpq_.L_43fc10(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
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
define %struct.Memory* @routine_jmpq_.L_43fc15(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_43fb65(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_43fc28(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_43fb4e(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jne_.L_43fca7(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jge_.L_43fca2(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jge_.L_43fc8f(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_callq_.copyblock_sp(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jmpq_.L_43fc65(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_43fc94(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_43fc4e(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_43fca7(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_43fcac(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
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

; Function Attrs: nounwind
define %struct.Memory* @routine_addq__0xb0___rsp(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %3 = load i64, i64* %RSP, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 7
  store i64 %5, i64* %PC, align 8
  %6 = add i64 %3, 176
  store i64 %6, i64* %RSP, align 8
  %7 = icmp ugt i64 %3, -177
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
