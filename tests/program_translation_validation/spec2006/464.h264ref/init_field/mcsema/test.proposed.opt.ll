; ModuleID = 'mcsema/test.proposed.inline.ll'
source_filename = "llvm-link"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu-elf"

%__bss_start_type = type <{ [8 x i8] }>
%G_0x6cb8f8_type = type <{ [8 x i8] }>
%G_0x6cb900_type = type <{ [8 x i8] }>
%G_0x6cb908_type = type <{ [8 x i8] }>
%G_0x6cea00_type = type <{ [8 x i8] }>
%G_0x6d0278_type = type <{ [8 x i8] }>
%G_0x6f6f88_type = type <{ [8 x i8] }>
%G_0x70fce8_type = type <{ [4 x i8] }>
%G_0x8432b__rip__type = type <{ [8 x i8] }>
%G_0x84390__rip__type = type <{ [8 x i8] }>
%G_0x843bd__rip__type = type <{ [8 x i8] }>
%G_0x84414__rip__type = type <{ [8 x i8] }>
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
@G_0x6cb908 = local_unnamed_addr global %G_0x6cb908_type zeroinitializer
@G_0x6cea00 = local_unnamed_addr global %G_0x6cea00_type zeroinitializer
@G_0x6d0278 = local_unnamed_addr global %G_0x6d0278_type zeroinitializer
@G_0x6f6f88 = local_unnamed_addr global %G_0x6f6f88_type zeroinitializer
@G_0x70fce8 = local_unnamed_addr global %G_0x70fce8_type zeroinitializer
@G_0x8432b__rip_ = global %G_0x8432b__rip__type zeroinitializer
@G_0x84390__rip_ = global %G_0x84390__rip__type zeroinitializer
@G_0x843bd__rip_ = global %G_0x843bd__rip__type zeroinitializer
@G_0x84414__rip_ = global %G_0x84414__rip__type zeroinitializer

declare %struct.Memory* @__remill_error(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr

; Function Attrs: nounwind readnone
declare i32 @llvm.ctpop.i32(i32) #0

; Function Attrs: nounwind readnone
declare double @llvm.fabs.f64(double) #0

; Function Attrs: nounwind readnone
declare double @llvm.trunc.f64(double) #0

; Function Attrs: alwaysinline
define %struct.Memory* @init_field(%struct.State* noalias, i64, %struct.Memory* noalias) local_unnamed_addr #1 {
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
  store i64 %8, i64* %6, align 8
  %10 = load i64, i64* %3, align 8
  store i64 %8, i64* %RBP.i, align 8
  %11 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %RAX.i56 = getelementptr inbounds %union.anon, %union.anon* %11, i64 0, i32 0
  store i64 2, i64* %RAX.i56, align 8
  %12 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %RCX.i72 = getelementptr inbounds %union.anon, %union.anon* %12, i64 0, i32 0
  %13 = load i64, i64* bitcast (%G_0x6f6f88_type* @G_0x6f6f88 to i64*), align 8
  store i64 %13, i64* bitcast (%G_0x6cea00_type* @G_0x6cea00 to i64*), align 8
  %14 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*), align 8
  %15 = add i64 %14, 12
  %16 = add i64 %10, 39
  store i64 %16, i64* %3, align 8
  %17 = inttoptr i64 %15 to i32*
  store i32 0, i32* %17, align 4
  %18 = load i64, i64* %3, align 8
  %19 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*), align 8
  %20 = add i64 %19, 20
  %21 = add i64 %18, 15
  store i64 %21, i64* %3, align 8
  %22 = inttoptr i64 %20 to i32*
  store i32 0, i32* %22, align 4
  %23 = load i64, i64* %3, align 8
  %24 = load i64, i64* bitcast (%G_0x6cb908_type* @G_0x6cb908 to i64*), align 8
  %25 = add i64 %24, 24
  %26 = add i64 %23, 15
  store i64 %26, i64* %3, align 8
  %27 = inttoptr i64 %25 to i32*
  store i32 0, i32* %27, align 4
  %28 = load i64, i64* %3, align 8
  %29 = load i64, i64* bitcast (%G_0x6cb8f8_type* @G_0x6cb8f8 to i64*), align 8
  store i64 %29, i64* %RCX.i72, align 8
  %30 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %RDX.i1151 = getelementptr inbounds %union.anon, %union.anon* %30, i64 0, i32 0
  %31 = add i64 %29, 20
  %32 = add i64 %28, 11
  store i64 %32, i64* %3, align 8
  %33 = inttoptr i64 %31 to i32*
  %34 = load i32, i32* %33, align 4
  %35 = shl i32 %34, 1
  %36 = icmp slt i32 %34, 0
  %37 = icmp slt i32 %35, 0
  %38 = xor i1 %36, %37
  %39 = zext i32 %35 to i64
  store i64 %39, i64* %RDX.i1151, align 8
  %40 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %.lobit = lshr i32 %34, 31
  %41 = trunc i32 %.lobit to i8
  store i8 %41, i8* %40, align 1
  %42 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %43 = and i32 %35, 254
  %44 = tail call i32 @llvm.ctpop.i32(i32 %43)
  %45 = trunc i32 %44 to i8
  %46 = and i8 %45, 1
  %47 = xor i8 %46, 1
  store i8 %47, i8* %42, align 1
  %48 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %48, align 1
  %49 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %50 = icmp eq i32 %35, 0
  %51 = zext i1 %50 to i8
  store i8 %51, i8* %49, align 1
  %52 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %53 = lshr i32 %34, 30
  %54 = trunc i32 %53 to i8
  %55 = and i8 %54, 1
  store i8 %55, i8* %52, align 1
  %56 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %57 = zext i1 %38 to i8
  store i8 %57, i8* %56, align 1
  %EDX.i1145 = bitcast %union.anon* %30 to i32*
  %58 = add i64 %28, 16
  store i64 %58, i64* %3, align 8
  store i32 %35, i32* %33, align 4
  %59 = load i64, i64* %3, align 8
  %60 = load i64, i64* bitcast (%G_0x6cb8f8_type* @G_0x6cb8f8 to i64*), align 8
  store i64 %60, i64* %RCX.i72, align 8
  %61 = add i64 %60, 1236
  %62 = add i64 %59, 14
  store i64 %62, i64* %3, align 8
  %63 = inttoptr i64 %61 to i32*
  %64 = load i32, i32* %63, align 4
  %65 = shl i32 %64, 1
  %66 = icmp slt i32 %64, 0
  %67 = icmp slt i32 %65, 0
  %68 = xor i1 %66, %67
  %69 = zext i32 %65 to i64
  store i64 %69, i64* %RDX.i1151, align 8
  %.lobit33 = lshr i32 %64, 31
  %70 = trunc i32 %.lobit33 to i8
  store i8 %70, i8* %40, align 1
  %71 = and i32 %65, 254
  %72 = tail call i32 @llvm.ctpop.i32(i32 %71)
  %73 = trunc i32 %72 to i8
  %74 = and i8 %73, 1
  %75 = xor i8 %74, 1
  store i8 %75, i8* %42, align 1
  store i8 0, i8* %48, align 1
  %76 = icmp eq i32 %65, 0
  %77 = zext i1 %76 to i8
  store i8 %77, i8* %49, align 1
  %78 = lshr i32 %64, 30
  %79 = trunc i32 %78 to i8
  %80 = and i8 %79, 1
  store i8 %80, i8* %52, align 1
  %81 = zext i1 %68 to i8
  store i8 %81, i8* %56, align 1
  %82 = add i64 %59, 22
  store i64 %82, i64* %3, align 8
  store i32 %65, i32* %63, align 4
  %83 = load i64, i64* %3, align 8
  %84 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*), align 8
  store i64 %84, i64* %RCX.i72, align 8
  %85 = add i64 %83, 10
  store i64 %85, i64* %3, align 8
  %86 = inttoptr i64 %84 to i32*
  %87 = load i32, i32* %86, align 4
  %88 = zext i32 %87 to i64
  store i64 %88, i64* %RDX.i1151, align 8
  %EAX.i1127 = bitcast %union.anon* %11 to i32*
  %89 = load i64, i64* %RBP.i, align 8
  %90 = add i64 %89, -16
  %91 = load i32, i32* %EAX.i1127, align 4
  %92 = add i64 %83, 13
  store i64 %92, i64* %3, align 8
  %93 = inttoptr i64 %90 to i32*
  store i32 %91, i32* %93, align 4
  %94 = load i32, i32* %EDX.i1145, align 4
  %95 = zext i32 %94 to i64
  %96 = load i64, i64* %3, align 8
  store i64 %95, i64* %RAX.i56, align 8
  %97 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %98 = sext i32 %94 to i64
  %99 = lshr i64 %98, 32
  store i64 %99, i64* %97, align 8
  %100 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0
  %RSI.i1120 = getelementptr inbounds %union.anon, %union.anon* %100, i64 0, i32 0
  %101 = load i64, i64* %RBP.i, align 8
  %102 = add i64 %101, -16
  %103 = add i64 %96, 6
  store i64 %103, i64* %3, align 8
  %104 = inttoptr i64 %102 to i32*
  %105 = load i32, i32* %104, align 4
  %106 = zext i32 %105 to i64
  store i64 %106, i64* %RSI.i1120, align 8
  %ESI.i1115 = bitcast %union.anon* %100 to i32*
  %107 = add i64 %96, 8
  store i64 %107, i64* %3, align 8
  %108 = sext i32 %105 to i64
  %109 = shl nuw i64 %99, 32
  %110 = or i64 %109, %95
  %111 = sdiv i64 %110, %108
  %112 = shl i64 %111, 32
  %113 = ashr exact i64 %112, 32
  %114 = icmp eq i64 %111, %113
  br i1 %114, label %117, label %115

; <label>:115:                                    ; preds = %entry
  %116 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %107, %struct.Memory* %2)
  %.pre = load i32, i32* %EAX.i1127, align 4
  %.pre50 = load i64, i64* %3, align 8
  br label %routine_idivl__esi.exit1116

; <label>:117:                                    ; preds = %entry
  %118 = srem i64 %110, %108
  %119 = and i64 %111, 4294967295
  store i64 %119, i64* %RAX.i56, align 8
  %120 = and i64 %118, 4294967295
  store i64 %120, i64* %RDX.i1151, align 8
  store i8 0, i8* %40, align 1
  store i8 0, i8* %42, align 1
  store i8 0, i8* %48, align 1
  store i8 0, i8* %49, align 1
  store i8 0, i8* %52, align 1
  store i8 0, i8* %56, align 1
  %121 = trunc i64 %111 to i32
  br label %routine_idivl__esi.exit1116

routine_idivl__esi.exit1116:                      ; preds = %117, %115
  %122 = phi i64 [ %.pre50, %115 ], [ %107, %117 ]
  %123 = phi i32 [ %.pre, %115 ], [ %121, %117 ]
  %124 = phi %struct.Memory* [ %116, %115 ], [ %2, %117 ]
  %125 = bitcast %union.anon* %12 to i32**
  %126 = load i32*, i32** %125, align 8
  %127 = add i64 %122, 2
  store i64 %127, i64* %3, align 8
  store i32 %123, i32* %126, align 4
  %128 = load i64, i64* %3, align 8
  %129 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*), align 8
  store i64 %129, i64* %RCX.i72, align 8
  %130 = add i64 %129, 72376
  %131 = add i64 %128, 14
  store i64 %131, i64* %3, align 8
  %132 = inttoptr i64 %130 to i32*
  %133 = load i32, i32* %132, align 4
  %134 = zext i32 %133 to i64
  store i64 %134, i64* %RAX.i56, align 8
  %135 = sext i32 %133 to i64
  %136 = lshr i64 %135, 32
  store i64 %136, i64* %97, align 8
  %137 = load i32, i32* %ESI.i1115, align 4
  %138 = add i64 %128, 17
  store i64 %138, i64* %3, align 8
  %139 = sext i32 %137 to i64
  %140 = shl nuw i64 %136, 32
  %141 = or i64 %140, %134
  %142 = sdiv i64 %141, %139
  %143 = shl i64 %142, 32
  %144 = ashr exact i64 %143, 32
  %145 = icmp eq i64 %142, %144
  br i1 %145, label %148, label %146

; <label>:146:                                    ; preds = %routine_idivl__esi.exit1116
  %147 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %138, %struct.Memory* %124)
  %.pre51 = load i64, i64* %RCX.i72, align 8
  %.pre52 = load i32, i32* %EAX.i1127, align 4
  %.pre53 = load i64, i64* %3, align 8
  br label %routine_idivl__esi.exit1102

; <label>:148:                                    ; preds = %routine_idivl__esi.exit1116
  %149 = srem i64 %141, %139
  %150 = and i64 %142, 4294967295
  store i64 %150, i64* %RAX.i56, align 8
  %151 = and i64 %149, 4294967295
  store i64 %151, i64* %RDX.i1151, align 8
  store i8 0, i8* %40, align 1
  store i8 0, i8* %42, align 1
  store i8 0, i8* %48, align 1
  store i8 0, i8* %49, align 1
  store i8 0, i8* %52, align 1
  store i8 0, i8* %56, align 1
  %152 = trunc i64 %142 to i32
  br label %routine_idivl__esi.exit1102

routine_idivl__esi.exit1102:                      ; preds = %148, %146
  %153 = phi i64 [ %.pre53, %146 ], [ %138, %148 ]
  %154 = phi i32 [ %.pre52, %146 ], [ %152, %148 ]
  %155 = phi i64 [ %.pre51, %146 ], [ %129, %148 ]
  %156 = phi %struct.Memory* [ %147, %146 ], [ %124, %148 ]
  %157 = add i64 %155, 72376
  %158 = add i64 %153, 6
  store i64 %158, i64* %3, align 8
  %159 = inttoptr i64 %157 to i32*
  store i32 %154, i32* %159, align 4
  %160 = load i64, i64* %3, align 8
  %161 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*), align 8
  %162 = add i64 %161, 136
  %163 = add i64 %160, 18
  store i64 %163, i64* %3, align 8
  %164 = inttoptr i64 %162 to i32*
  store i32 0, i32* %164, align 4
  %165 = load i64, i64* %3, align 8
  %166 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*), align 8
  %167 = add i64 %166, 140
  %168 = add i64 %165, 18
  store i64 %168, i64* %3, align 8
  %169 = inttoptr i64 %167 to i32*
  store i32 0, i32* %169, align 4
  %170 = load i64, i64* %3, align 8
  %171 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*), align 8
  %172 = add i64 %171, 164
  %173 = add i64 %170, 18
  store i64 %173, i64* %3, align 8
  %174 = inttoptr i64 %172 to i32*
  store i32 0, i32* %174, align 4
  %175 = load i64, i64* %3, align 8
  %176 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*), align 8
  %177 = add i64 %176, 156
  %178 = add i64 %175, 18
  store i64 %178, i64* %3, align 8
  %179 = inttoptr i64 %177 to i32*
  store i32 0, i32* %179, align 4
  %180 = load i64, i64* %3, align 8
  %181 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*), align 8
  %182 = add i64 %181, 148
  %183 = add i64 %180, 18
  store i64 %183, i64* %3, align 8
  %184 = inttoptr i64 %182 to i32*
  store i32 0, i32* %184, align 4
  %185 = load i64, i64* %3, align 8
  %186 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*), align 8
  %187 = add i64 %186, 160
  %188 = add i64 %185, 18
  store i64 %188, i64* %3, align 8
  %189 = inttoptr i64 %187 to i32*
  store i32 0, i32* %189, align 4
  %190 = load i64, i64* %3, align 8
  %191 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*), align 8
  %192 = add i64 %191, 96
  %193 = add i64 %190, 15
  store i64 %193, i64* %3, align 8
  %194 = inttoptr i64 %192 to i32*
  store i32 0, i32* %194, align 4
  %195 = load i64, i64* %3, align 8
  %196 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*), align 8
  %197 = add i64 %196, 152
  %198 = add i64 %195, 18
  store i64 %198, i64* %3, align 8
  %199 = inttoptr i64 %197 to i32*
  store i32 0, i32* %199, align 4
  %200 = load i64, i64* %3, align 8
  %201 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*), align 8
  %202 = add i64 %201, 144
  %203 = add i64 %200, 18
  store i64 %203, i64* %3, align 8
  %204 = inttoptr i64 %202 to i32*
  store i32 0, i32* %204, align 4
  %205 = load i64, i64* %3, align 8
  %206 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*), align 8
  store i64 %206, i64* %RCX.i72, align 8
  %207 = add i64 %206, 71908
  %208 = add i64 %205, 15
  store i64 %208, i64* %3, align 8
  %209 = inttoptr i64 %207 to i32*
  %210 = load i32, i32* %209, align 4
  store i8 0, i8* %40, align 1
  %211 = and i32 %210, 255
  %212 = tail call i32 @llvm.ctpop.i32(i32 %211)
  %213 = trunc i32 %212 to i8
  %214 = and i8 %213, 1
  %215 = xor i8 %214, 1
  store i8 %215, i8* %42, align 1
  store i8 0, i8* %48, align 1
  %216 = icmp eq i32 %210, 0
  %217 = zext i1 %216 to i8
  store i8 %217, i8* %49, align 1
  %218 = lshr i32 %210, 31
  %219 = trunc i32 %218 to i8
  store i8 %219, i8* %52, align 1
  store i8 0, i8* %56, align 1
  %.v98 = select i1 %216, i64 21, i64 753
  %220 = add i64 %205, %.v98
  %221 = add i64 %220, 8
  store i64 %221, i64* %3, align 8
  br i1 %216, label %block_42cf00, label %block_.L_42d1dc

block_42cf00:                                     ; preds = %routine_idivl__esi.exit1102
  store i64 %206, i64* %RAX.i56, align 8
  %222 = add i64 %220, 10
  store i64 %222, i64* %3, align 8
  %223 = inttoptr i64 %206 to i32*
  %224 = load i32, i32* %223, align 4
  %225 = zext i32 %224 to i64
  store i64 %225, i64* %RCX.i72, align 8
  %226 = load i64, i64* bitcast (%G_0x6cb8f8_type* @G_0x6cb8f8 to i64*), align 8
  store i64 %226, i64* %RAX.i56, align 8
  %227 = add i64 %226, 20
  %228 = add i64 %220, 21
  store i64 %228, i64* %3, align 8
  %229 = inttoptr i64 %227 to i32*
  %230 = load i32, i32* %229, align 4
  %231 = add i32 %230, 2
  %232 = zext i32 %231 to i64
  store i64 %232, i64* %RDX.i1151, align 8
  %233 = sext i32 %224 to i64
  %234 = sext i32 %231 to i64
  %235 = mul nsw i64 %234, %233
  %236 = trunc i64 %235 to i32
  %237 = and i64 %235, 4294967295
  store i64 %237, i64* %RCX.i72, align 8
  %238 = shl i64 %235, 32
  %239 = ashr exact i64 %238, 32
  %240 = icmp ne i64 %239, %235
  %241 = zext i1 %240 to i8
  store i8 %241, i8* %40, align 1
  %242 = and i32 %236, 255
  %243 = tail call i32 @llvm.ctpop.i32(i32 %242)
  %244 = trunc i32 %243 to i8
  %245 = and i8 %244, 1
  %246 = xor i8 %245, 1
  store i8 %246, i8* %42, align 1
  store i8 0, i8* %48, align 1
  store i8 0, i8* %49, align 1
  %247 = lshr i32 %236, 31
  %248 = trunc i32 %247 to i8
  store i8 %248, i8* %52, align 1
  store i8 %241, i8* %56, align 1
  store i64 %206, i64* %RAX.i56, align 8
  %249 = add i64 %206, 71796
  %250 = add i64 %220, 41
  store i64 %250, i64* %3, align 8
  %251 = trunc i64 %235 to i32
  %252 = inttoptr i64 %249 to i32*
  %253 = load i32, i32* %252, align 4
  %254 = add i32 %253, %251
  %255 = zext i32 %254 to i64
  store i64 %255, i64* %RCX.i72, align 8
  %256 = icmp ult i32 %254, %251
  %257 = icmp ult i32 %254, %253
  %258 = or i1 %256, %257
  %259 = zext i1 %258 to i8
  store i8 %259, i8* %40, align 1
  %260 = and i32 %254, 255
  %261 = tail call i32 @llvm.ctpop.i32(i32 %260)
  %262 = trunc i32 %261 to i8
  %263 = and i8 %262, 1
  %264 = xor i8 %263, 1
  store i8 %264, i8* %42, align 1
  %265 = xor i32 %253, %251
  %266 = xor i32 %265, %254
  %267 = lshr i32 %266, 4
  %268 = trunc i32 %267 to i8
  %269 = and i8 %268, 1
  store i8 %269, i8* %48, align 1
  %270 = icmp eq i32 %254, 0
  %271 = zext i1 %270 to i8
  store i8 %271, i8* %49, align 1
  %272 = lshr i32 %254, 31
  %273 = trunc i32 %272 to i8
  store i8 %273, i8* %52, align 1
  %274 = lshr i32 %251, 31
  %275 = lshr i32 %253, 31
  %276 = xor i32 %272, %274
  %277 = xor i32 %272, %275
  %278 = add nuw nsw i32 %276, %277
  %279 = icmp eq i32 %278, 2
  %280 = zext i1 %279 to i8
  store i8 %280, i8* %56, align 1
  %281 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*), align 8
  %ECX.i1032 = bitcast %union.anon* %12 to i32*
  %282 = add i64 %281, 71792
  %283 = add i64 %220, 55
  store i64 %283, i64* %3, align 8
  %284 = inttoptr i64 %282 to i32*
  store i32 %254, i32* %284, align 4
  %285 = load i64, i64* %3, align 8
  %286 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*), align 8
  store i64 %286, i64* %RAX.i56, align 8
  %287 = add i64 %286, 71796
  %288 = add i64 %285, 15
  store i64 %288, i64* %3, align 8
  %289 = inttoptr i64 %287 to i32*
  %290 = load i32, i32* %289, align 4
  store i8 0, i8* %40, align 1
  %291 = and i32 %290, 255
  %292 = tail call i32 @llvm.ctpop.i32(i32 %291)
  %293 = trunc i32 %292 to i8
  %294 = and i8 %293, 1
  %295 = xor i8 %294, 1
  store i8 %295, i8* %42, align 1
  store i8 0, i8* %48, align 1
  %296 = icmp eq i32 %290, 0
  %297 = zext i1 %296 to i8
  store i8 %297, i8* %49, align 1
  %298 = lshr i32 %290, 31
  %299 = trunc i32 %298 to i8
  store i8 %299, i8* %52, align 1
  store i8 0, i8* %56, align 1
  %.v117 = select i1 %296, i64 21, i64 77
  %300 = add i64 %285, %.v117
  store i64 %300, i64* %3, align 8
  br i1 %296, label %block_42cf4c, label %block_.L_42cf84

block_42cf4c:                                     ; preds = %block_42cf00
  store i64 %286, i64* %RAX.i56, align 8
  %301 = add i64 %286, 71884
  %302 = add i64 %300, 14
  store i64 %302, i64* %3, align 8
  %303 = inttoptr i64 %301 to i32*
  %304 = load i32, i32* %303, align 4
  %305 = zext i32 %304 to i64
  store i64 %305, i64* %RCX.i72, align 8
  %306 = add i64 %286, 71888
  %307 = add i64 %300, 28
  store i64 %307, i64* %3, align 8
  %308 = inttoptr i64 %306 to i32*
  store i32 %304, i32* %308, align 4
  %309 = load i64, i64* %3, align 8
  %310 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*), align 8
  store i64 %310, i64* %RAX.i56, align 8
  %311 = add i64 %310, 71792
  %312 = add i64 %309, 14
  store i64 %312, i64* %3, align 8
  %313 = inttoptr i64 %311 to i32*
  %314 = load i32, i32* %313, align 4
  %315 = zext i32 %314 to i64
  store i64 %315, i64* %RCX.i72, align 8
  store i64 %310, i64* %RAX.i56, align 8
  %316 = add i64 %310, 71884
  %317 = add i64 %309, 28
  store i64 %317, i64* %3, align 8
  %318 = inttoptr i64 %316 to i32*
  store i32 %314, i32* %318, align 4
  %.pre54 = load i64, i64* %3, align 8
  br label %block_.L_42cf84

block_.L_42cf84:                                  ; preds = %block_42cf00, %block_42cf4c
  %319 = phi i64 [ %.pre54, %block_42cf4c ], [ %300, %block_42cf00 ]
  %320 = load i64, i64* bitcast (%G_0x6cb8f8_type* @G_0x6cb8f8 to i64*), align 8
  store i64 %320, i64* %RAX.i56, align 8
  %321 = add i64 %320, 2440
  %322 = add i64 %319, 15
  store i64 %322, i64* %3, align 8
  %323 = inttoptr i64 %321 to i32*
  %324 = load i32, i32* %323, align 4
  store i8 0, i8* %40, align 1
  %325 = and i32 %324, 255
  %326 = tail call i32 @llvm.ctpop.i32(i32 %325)
  %327 = trunc i32 %326 to i8
  %328 = and i8 %327, 1
  %329 = xor i8 %328, 1
  store i8 %329, i8* %42, align 1
  store i8 0, i8* %48, align 1
  %330 = icmp eq i32 %324, 0
  %331 = zext i1 %330 to i8
  store i8 %331, i8* %49, align 1
  %332 = lshr i32 %324, 31
  %333 = trunc i32 %332 to i8
  store i8 %333, i8* %52, align 1
  store i8 0, i8* %56, align 1
  %.v118 = select i1 %330, i64 79, i64 21
  %334 = add i64 %319, %.v118
  store i64 %334, i64* %3, align 8
  br i1 %330, label %block_.L_42cfd3, label %block_42cf99

block_42cf99:                                     ; preds = %block_.L_42cf84
  %335 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*), align 8
  store i64 %335, i64* %RAX.i56, align 8
  %336 = add i64 %334, 10
  store i64 %336, i64* %3, align 8
  %337 = inttoptr i64 %335 to i32*
  %338 = load i32, i32* %337, align 4
  %339 = add i32 %338, 1
  %340 = zext i32 %339 to i64
  store i64 %340, i64* %RCX.i72, align 8
  %341 = icmp eq i32 %338, -1
  %342 = icmp eq i32 %339, 0
  %343 = or i1 %341, %342
  %344 = zext i1 %343 to i8
  store i8 %344, i8* %40, align 1
  %345 = and i32 %339, 255
  %346 = tail call i32 @llvm.ctpop.i32(i32 %345)
  %347 = trunc i32 %346 to i8
  %348 = and i8 %347, 1
  %349 = xor i8 %348, 1
  store i8 %349, i8* %42, align 1
  %350 = xor i32 %339, %338
  %351 = lshr i32 %350, 4
  %352 = trunc i32 %351 to i8
  %353 = and i8 %352, 1
  store i8 %353, i8* %48, align 1
  %354 = zext i1 %342 to i8
  store i8 %354, i8* %49, align 1
  %355 = lshr i32 %339, 31
  %356 = trunc i32 %355 to i8
  store i8 %356, i8* %52, align 1
  %357 = lshr i32 %338, 31
  %358 = xor i32 %355, %357
  %359 = add nuw nsw i32 %358, %355
  %360 = icmp eq i32 %359, 2
  %361 = zext i1 %360 to i8
  store i8 %361, i8* %56, align 1
  store i64 %320, i64* %RAX.i56, align 8
  %362 = add i64 %320, 8
  %363 = add i64 %334, 24
  store i64 %363, i64* %3, align 8
  %364 = inttoptr i64 %362 to i32*
  %365 = load i32, i32* %364, align 4
  %366 = sub i32 %339, %365
  %367 = icmp ult i32 %339, %365
  %368 = zext i1 %367 to i8
  store i8 %368, i8* %40, align 1
  %369 = and i32 %366, 255
  %370 = tail call i32 @llvm.ctpop.i32(i32 %369)
  %371 = trunc i32 %370 to i8
  %372 = and i8 %371, 1
  %373 = xor i8 %372, 1
  store i8 %373, i8* %42, align 1
  %374 = xor i32 %365, %339
  %375 = xor i32 %374, %366
  %376 = lshr i32 %375, 4
  %377 = trunc i32 %376 to i8
  %378 = and i8 %377, 1
  store i8 %378, i8* %48, align 1
  %379 = icmp eq i32 %366, 0
  %380 = zext i1 %379 to i8
  store i8 %380, i8* %49, align 1
  %381 = lshr i32 %366, 31
  %382 = trunc i32 %381 to i8
  store i8 %382, i8* %52, align 1
  %383 = lshr i32 %365, 31
  %384 = xor i32 %383, %355
  %385 = xor i32 %381, %355
  %386 = add nuw nsw i32 %385, %384
  %387 = icmp eq i32 %386, 2
  %388 = zext i1 %387 to i8
  store i8 %388, i8* %56, align 1
  %.v119 = select i1 %379, i64 30, i64 58
  %389 = add i64 %334, %.v119
  store i64 %389, i64* %3, align 8
  br i1 %379, label %block_42cfb7, label %block_.L_42cfd3

block_42cfb7:                                     ; preds = %block_42cf99
  store i64 %320, i64* %RAX.i56, align 8
  %390 = add i64 %389, 14
  store i64 %390, i64* %3, align 8
  %391 = load i32, i32* %323, align 4
  %392 = zext i32 %391 to i64
  store i64 %392, i64* %RCX.i72, align 8
  store i64 %335, i64* %RAX.i56, align 8
  %393 = add i64 %335, 71792
  %394 = add i64 %389, 28
  store i64 %394, i64* %3, align 8
  %395 = inttoptr i64 %393 to i32*
  store i32 %391, i32* %395, align 4
  %.pre55 = load i64, i64* %3, align 8
  br label %block_.L_42cfd3

block_.L_42cfd3:                                  ; preds = %block_42cf99, %block_42cfb7, %block_.L_42cf84
  %396 = phi i64 [ %.pre55, %block_42cfb7 ], [ %389, %block_42cf99 ], [ %334, %block_.L_42cf84 ]
  %397 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*), align 8
  store i64 %397, i64* %RAX.i56, align 8
  %398 = add i64 %396, 11
  store i64 %398, i64* %3, align 8
  %399 = inttoptr i64 %397 to i32*
  %400 = load i32, i32* %399, align 4
  store i8 0, i8* %40, align 1
  %401 = and i32 %400, 255
  %402 = tail call i32 @llvm.ctpop.i32(i32 %401)
  %403 = trunc i32 %402 to i8
  %404 = and i8 %403, 1
  %405 = xor i8 %404, 1
  store i8 %405, i8* %42, align 1
  store i8 0, i8* %48, align 1
  %406 = icmp eq i32 %400, 0
  %407 = zext i1 %406 to i8
  store i8 %407, i8* %49, align 1
  %408 = lshr i32 %400, 31
  %409 = trunc i32 %408 to i8
  store i8 %409, i8* %52, align 1
  store i8 0, i8* %56, align 1
  %.v120 = select i1 %406, i64 59, i64 17
  %410 = add i64 %396, %.v120
  store i64 %410, i64* %3, align 8
  %.pre56 = load i64, i64* bitcast (%G_0x6cb8f8_type* @G_0x6cb8f8 to i64*), align 8
  br i1 %406, label %block_.L_42d00e, label %block_42cfe4

block_42cfe4:                                     ; preds = %block_.L_42cfd3
  store i64 %.pre56, i64* %RAX.i56, align 8
  %411 = add i64 %.pre56, 1236
  %412 = add i64 %410, 15
  store i64 %412, i64* %3, align 8
  %413 = inttoptr i64 %411 to i32*
  %414 = load i32, i32* %413, align 4
  store i8 0, i8* %40, align 1
  %415 = and i32 %414, 255
  %416 = tail call i32 @llvm.ctpop.i32(i32 %415)
  %417 = trunc i32 %416 to i8
  %418 = and i8 %417, 1
  %419 = xor i8 %418, 1
  store i8 %419, i8* %42, align 1
  store i8 0, i8* %48, align 1
  %420 = icmp eq i32 %414, 0
  %421 = zext i1 %420 to i8
  store i8 %421, i8* %49, align 1
  %422 = lshr i32 %414, 31
  %423 = trunc i32 %422 to i8
  store i8 %423, i8* %52, align 1
  store i8 0, i8* %56, align 1
  %.v121 = select i1 %420, i64 42, i64 21
  %424 = add i64 %410, %.v121
  store i64 %424, i64* %3, align 8
  br i1 %420, label %block_.L_42d00e, label %block_42cff9

block_42cff9:                                     ; preds = %block_42cfe4
  store i64 %397, i64* %RAX.i56, align 8
  %425 = add i64 %397, 71792
  %426 = add i64 %424, 14
  store i64 %426, i64* %3, align 8
  %427 = inttoptr i64 %425 to i32*
  %428 = load i32, i32* %427, align 4
  %429 = zext i32 %428 to i64
  store i64 %429, i64* %RCX.i72, align 8
  %430 = add i64 %424, 21
  store i64 %430, i64* %3, align 8
  store i32 %428, i32* bitcast (%G_0x70fce8_type* @G_0x70fce8 to i32*), align 8
  br label %block_.L_42d00e

block_.L_42d00e:                                  ; preds = %block_.L_42cfd3, %block_42cff9, %block_42cfe4
  %431 = phi i64 [ %430, %block_42cff9 ], [ %424, %block_42cfe4 ], [ %410, %block_.L_42cfd3 ]
  store i64 %.pre56, i64* %RAX.i56, align 8
  %432 = add i64 %.pre56, 3236
  %433 = add i64 %431, 15
  store i64 %433, i64* %3, align 8
  %434 = inttoptr i64 %432 to i32*
  %435 = load i32, i32* %434, align 4
  store i8 0, i8* %40, align 1
  %436 = and i32 %435, 255
  %437 = tail call i32 @llvm.ctpop.i32(i32 %436)
  %438 = trunc i32 %437 to i8
  %439 = and i8 %438, 1
  %440 = xor i8 %439, 1
  store i8 %440, i8* %42, align 1
  store i8 0, i8* %48, align 1
  %441 = icmp eq i32 %435, 0
  %442 = zext i1 %441 to i8
  store i8 %442, i8* %49, align 1
  %443 = lshr i32 %435, 31
  %444 = trunc i32 %443 to i8
  store i8 %444, i8* %52, align 1
  store i8 0, i8* %56, align 1
  %.v122 = select i1 %441, i64 21, i64 336
  %445 = add i64 %431, %.v122
  store i64 %445, i64* %3, align 8
  br i1 %441, label %block_42d023, label %block_.L_42d15e

block_42d023:                                     ; preds = %block_.L_42d00e
  store i64 %397, i64* %RAX.i56, align 8
  %446 = add i64 %397, 24
  %447 = add i64 %445, 12
  store i64 %447, i64* %3, align 8
  %448 = inttoptr i64 %446 to i32*
  %449 = load i32, i32* %448, align 4
  %450 = add i32 %449, -2
  %451 = icmp ult i32 %449, 2
  %452 = zext i1 %451 to i8
  store i8 %452, i8* %40, align 1
  %453 = and i32 %450, 255
  %454 = tail call i32 @llvm.ctpop.i32(i32 %453)
  %455 = trunc i32 %454 to i8
  %456 = and i8 %455, 1
  %457 = xor i8 %456, 1
  store i8 %457, i8* %42, align 1
  %458 = xor i32 %450, %449
  %459 = lshr i32 %458, 4
  %460 = trunc i32 %459 to i8
  %461 = and i8 %460, 1
  store i8 %461, i8* %48, align 1
  %462 = icmp eq i32 %450, 0
  %463 = zext i1 %462 to i8
  store i8 %463, i8* %49, align 1
  %464 = lshr i32 %450, 31
  %465 = trunc i32 %464 to i8
  store i8 %465, i8* %52, align 1
  %466 = lshr i32 %449, 31
  %467 = xor i32 %464, %466
  %468 = add nuw nsw i32 %467, %466
  %469 = icmp eq i32 %468, 2
  %470 = zext i1 %469 to i8
  store i8 %470, i8* %56, align 1
  %.v124 = select i1 %462, i64 18, i64 130
  %471 = add i64 %445, %.v124
  store i64 %.pre56, i64* %RAX.i56, align 8
  %472 = add i64 %.pre56, 2452
  %473 = add i64 %471, 15
  store i64 %473, i64* %3, align 8
  %474 = inttoptr i64 %472 to i32*
  %475 = load i32, i32* %474, align 4
  store i8 0, i8* %40, align 1
  %476 = and i32 %475, 255
  %477 = tail call i32 @llvm.ctpop.i32(i32 %476)
  %478 = trunc i32 %477 to i8
  %479 = and i8 %478, 1
  %480 = xor i8 %479, 1
  store i8 %480, i8* %42, align 1
  store i8 0, i8* %48, align 1
  %481 = icmp eq i32 %475, 0
  %482 = zext i1 %481 to i8
  store i8 %482, i8* %49, align 1
  %483 = lshr i32 %475, 31
  %484 = trunc i32 %483 to i8
  store i8 %484, i8* %52, align 1
  store i8 0, i8* %56, align 1
  %485 = icmp ne i8 %484, 0
  %486 = or i1 %481, %485
  %.v125 = select i1 %486, i64 85, i64 21
  %487 = add i64 %471, %.v125
  store i64 %487, i64* %3, align 8
  br i1 %462, label %block_42d035, label %block_.L_42d0a5

block_42d035:                                     ; preds = %block_42d023
  br i1 %486, label %block_.L_42d08a, label %block_42d04a

block_42d04a:                                     ; preds = %block_42d035
  store i64 %397, i64* %RAX.i56, align 8
  %488 = add i64 %397, 71792
  %489 = add i64 %487, 14
  store i64 %489, i64* %3, align 8
  %490 = inttoptr i64 %488 to i32*
  %491 = load i32, i32* %490, align 4
  %492 = zext i32 %491 to i64
  store i64 %492, i64* %RCX.i72, align 8
  store i64 %.pre56, i64* %RAX.i56, align 8
  %493 = add i64 %487, 28
  store i64 %493, i64* %3, align 8
  %494 = load i32, i32* %474, align 4
  %495 = sub i32 %491, %494
  %496 = icmp ult i32 %491, %494
  %497 = zext i1 %496 to i8
  store i8 %497, i8* %40, align 1
  %498 = and i32 %495, 255
  %499 = tail call i32 @llvm.ctpop.i32(i32 %498)
  %500 = trunc i32 %499 to i8
  %501 = and i8 %500, 1
  %502 = xor i8 %501, 1
  store i8 %502, i8* %42, align 1
  %503 = xor i32 %494, %491
  %504 = xor i32 %503, %495
  %505 = lshr i32 %504, 4
  %506 = trunc i32 %505 to i8
  %507 = and i8 %506, 1
  store i8 %507, i8* %48, align 1
  %508 = icmp eq i32 %495, 0
  %509 = zext i1 %508 to i8
  store i8 %509, i8* %49, align 1
  %510 = lshr i32 %495, 31
  %511 = trunc i32 %510 to i8
  store i8 %511, i8* %52, align 1
  %512 = lshr i32 %491, 31
  %513 = lshr i32 %494, 31
  %514 = xor i32 %513, %512
  %515 = xor i32 %510, %512
  %516 = add nuw nsw i32 %515, %514
  %517 = icmp eq i32 %516, 2
  %518 = zext i1 %517 to i8
  store i8 %518, i8* %56, align 1
  %519 = icmp ne i8 %511, 0
  %520 = xor i1 %519, %517
  %.v128 = select i1 %520, i64 64, i64 34
  %521 = add i64 %487, %.v128
  store i64 %521, i64* %3, align 8
  br i1 %520, label %block_.L_42d08a, label %block_42d06c

block_42d06c:                                     ; preds = %block_42d04a
  store i64 %.pre56, i64* %RAX.i56, align 8
  %522 = add i64 %.pre56, 2456
  %523 = add i64 %521, 14
  store i64 %523, i64* %3, align 8
  %524 = inttoptr i64 %522 to i32*
  %525 = load i32, i32* %524, align 4
  %526 = zext i32 %525 to i64
  store i64 %526, i64* %RCX.i72, align 8
  store i64 %397, i64* %RAX.i56, align 8
  %527 = add i64 %397, 40
  %528 = add i64 %521, 25
  store i64 %528, i64* %3, align 8
  %529 = inttoptr i64 %527 to i32*
  store i32 %525, i32* %529, align 4
  %530 = load i64, i64* %3, align 8
  %531 = add i64 %530, 27
  store i64 %531, i64* %3, align 8
  br label %block_.L_42d0a0

block_.L_42d08a:                                  ; preds = %block_42d04a, %block_42d035
  %532 = phi i64 [ %521, %block_42d04a ], [ %487, %block_42d035 ]
  store i64 %.pre56, i64* %RAX.i56, align 8
  %533 = add i64 %.pre56, 12
  %534 = add i64 %532, 11
  store i64 %534, i64* %3, align 8
  %535 = inttoptr i64 %533 to i32*
  %536 = load i32, i32* %535, align 4
  %537 = zext i32 %536 to i64
  store i64 %537, i64* %RCX.i72, align 8
  store i64 %397, i64* %RAX.i56, align 8
  %538 = add i64 %397, 40
  %539 = add i64 %532, 22
  store i64 %539, i64* %3, align 8
  %540 = inttoptr i64 %538 to i32*
  store i32 %536, i32* %540, align 4
  %.pre57 = load i64, i64* %3, align 8
  br label %block_.L_42d0a0

block_.L_42d0a0:                                  ; preds = %block_.L_42d08a, %block_42d06c
  %541 = phi i64 [ %.pre57, %block_.L_42d08a ], [ %531, %block_42d06c ]
  %542 = add i64 %541, 185
  br label %block_.L_42d159

block_.L_42d0a5:                                  ; preds = %block_42d023
  br i1 %486, label %block_.L_42d0fa, label %block_42d0ba

block_42d0ba:                                     ; preds = %block_.L_42d0a5
  store i64 %397, i64* %RAX.i56, align 8
  %543 = add i64 %397, 71792
  %544 = add i64 %487, 14
  store i64 %544, i64* %3, align 8
  %545 = inttoptr i64 %543 to i32*
  %546 = load i32, i32* %545, align 4
  %547 = zext i32 %546 to i64
  store i64 %547, i64* %RCX.i72, align 8
  store i64 %.pre56, i64* %RAX.i56, align 8
  %548 = add i64 %487, 28
  store i64 %548, i64* %3, align 8
  %549 = load i32, i32* %474, align 4
  %550 = sub i32 %546, %549
  %551 = icmp ult i32 %546, %549
  %552 = zext i1 %551 to i8
  store i8 %552, i8* %40, align 1
  %553 = and i32 %550, 255
  %554 = tail call i32 @llvm.ctpop.i32(i32 %553)
  %555 = trunc i32 %554 to i8
  %556 = and i8 %555, 1
  %557 = xor i8 %556, 1
  store i8 %557, i8* %42, align 1
  %558 = xor i32 %549, %546
  %559 = xor i32 %558, %550
  %560 = lshr i32 %559, 4
  %561 = trunc i32 %560 to i8
  %562 = and i8 %561, 1
  store i8 %562, i8* %48, align 1
  %563 = icmp eq i32 %550, 0
  %564 = zext i1 %563 to i8
  store i8 %564, i8* %49, align 1
  %565 = lshr i32 %550, 31
  %566 = trunc i32 %565 to i8
  store i8 %566, i8* %52, align 1
  %567 = lshr i32 %546, 31
  %568 = lshr i32 %549, 31
  %569 = xor i32 %568, %567
  %570 = xor i32 %565, %567
  %571 = add nuw nsw i32 %570, %569
  %572 = icmp eq i32 %571, 2
  %573 = zext i1 %572 to i8
  store i8 %573, i8* %56, align 1
  %574 = icmp ne i8 %566, 0
  %575 = xor i1 %574, %572
  %.v126 = select i1 %575, i64 64, i64 34
  %576 = add i64 %487, %.v126
  store i64 %576, i64* %3, align 8
  br i1 %575, label %block_.L_42d0fa, label %block_42d0dc

block_42d0dc:                                     ; preds = %block_42d0ba
  store i64 %.pre56, i64* %RAX.i56, align 8
  %577 = add i64 %.pre56, 2444
  %578 = add i64 %576, 14
  store i64 %578, i64* %3, align 8
  %579 = inttoptr i64 %577 to i32*
  %580 = load i32, i32* %579, align 4
  %581 = zext i32 %580 to i64
  store i64 %581, i64* %RCX.i72, align 8
  store i64 %397, i64* %RAX.i56, align 8
  %582 = add i64 %397, 40
  %583 = add i64 %576, 25
  store i64 %583, i64* %3, align 8
  %584 = inttoptr i64 %582 to i32*
  store i32 %580, i32* %584, align 4
  %585 = load i64, i64* %3, align 8
  %586 = add i64 %585, 27
  store i64 %586, i64* %3, align 8
  br label %block_.L_42d110

block_.L_42d0fa:                                  ; preds = %block_42d0ba, %block_.L_42d0a5
  %587 = phi i64 [ %576, %block_42d0ba ], [ %487, %block_.L_42d0a5 ]
  store i64 %.pre56, i64* %RAX.i56, align 8
  %588 = add i64 %.pre56, 16
  %589 = add i64 %587, 11
  store i64 %589, i64* %3, align 8
  %590 = inttoptr i64 %588 to i32*
  %591 = load i32, i32* %590, align 4
  %592 = zext i32 %591 to i64
  store i64 %592, i64* %RCX.i72, align 8
  store i64 %397, i64* %RAX.i56, align 8
  %593 = add i64 %397, 40
  %594 = add i64 %587, 22
  store i64 %594, i64* %3, align 8
  %595 = inttoptr i64 %593 to i32*
  store i32 %591, i32* %595, align 4
  %.pre58 = load i64, i64* %3, align 8
  br label %block_.L_42d110

block_.L_42d110:                                  ; preds = %block_.L_42d0fa, %block_42d0dc
  %596 = phi i64 [ %.pre58, %block_.L_42d0fa ], [ %586, %block_42d0dc ]
  %597 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*), align 8
  store i64 %597, i64* %RAX.i56, align 8
  %598 = add i64 %597, 24
  %599 = add i64 %596, 12
  store i64 %599, i64* %3, align 8
  %600 = inttoptr i64 %598 to i32*
  %601 = load i32, i32* %600, align 4
  %602 = add i32 %601, -3
  %603 = icmp ult i32 %601, 3
  %604 = zext i1 %603 to i8
  store i8 %604, i8* %40, align 1
  %605 = and i32 %602, 255
  %606 = tail call i32 @llvm.ctpop.i32(i32 %605)
  %607 = trunc i32 %606 to i8
  %608 = and i8 %607, 1
  %609 = xor i8 %608, 1
  store i8 %609, i8* %42, align 1
  %610 = xor i32 %602, %601
  %611 = lshr i32 %610, 4
  %612 = trunc i32 %611 to i8
  %613 = and i8 %612, 1
  store i8 %613, i8* %48, align 1
  %614 = icmp eq i32 %602, 0
  %615 = zext i1 %614 to i8
  store i8 %615, i8* %49, align 1
  %616 = lshr i32 %602, 31
  %617 = trunc i32 %616 to i8
  store i8 %617, i8* %52, align 1
  %618 = lshr i32 %601, 31
  %619 = xor i32 %616, %618
  %620 = add nuw nsw i32 %619, %618
  %621 = icmp eq i32 %620, 2
  %622 = zext i1 %621 to i8
  store i8 %622, i8* %56, align 1
  %.v127 = select i1 %614, i64 18, i64 68
  %623 = add i64 %596, %.v127
  store i64 %623, i64* %3, align 8
  br i1 %614, label %block_42d122, label %block_.L_42d154

block_42d122:                                     ; preds = %block_.L_42d110
  %624 = load i64, i64* bitcast (%G_0x6cb8f8_type* @G_0x6cb8f8 to i64*), align 8
  store i64 %624, i64* %RAX.i56, align 8
  %625 = add i64 %624, 1276
  %626 = add i64 %623, 14
  store i64 %626, i64* %3, align 8
  %627 = inttoptr i64 %625 to i32*
  %628 = load i32, i32* %627, align 4
  %629 = zext i32 %628 to i64
  store i64 %629, i64* %RCX.i72, align 8
  %630 = add i64 %597, 40
  %631 = add i64 %623, 25
  store i64 %631, i64* %3, align 8
  %632 = inttoptr i64 %630 to i32*
  store i32 %628, i32* %632, align 4
  %633 = load i64, i64* %3, align 8
  %634 = load i64, i64* bitcast (%G_0x6cb8f8_type* @G_0x6cb8f8 to i64*), align 8
  store i64 %634, i64* %RAX.i56, align 8
  %635 = add i64 %634, 1280
  %636 = add i64 %633, 14
  store i64 %636, i64* %3, align 8
  %637 = inttoptr i64 %635 to i32*
  %638 = load i32, i32* %637, align 4
  %639 = zext i32 %638 to i64
  store i64 %639, i64* %RCX.i72, align 8
  %640 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*), align 8
  store i64 %640, i64* %RAX.i56, align 8
  %641 = add i64 %640, 44
  %642 = add i64 %633, 25
  store i64 %642, i64* %3, align 8
  %643 = inttoptr i64 %641 to i32*
  store i32 %638, i32* %643, align 4
  %.pre59 = load i64, i64* %3, align 8
  br label %block_.L_42d154

block_.L_42d154:                                  ; preds = %block_.L_42d110, %block_42d122
  %644 = phi i64 [ %.pre59, %block_42d122 ], [ %623, %block_.L_42d110 ]
  %645 = add i64 %644, 5
  store i64 %645, i64* %3, align 8
  br label %block_.L_42d159

block_.L_42d159:                                  ; preds = %block_.L_42d154, %block_.L_42d0a0
  %storemerge = phi i64 [ %542, %block_.L_42d0a0 ], [ %645, %block_.L_42d154 ]
  %646 = add i64 %storemerge, 5
  store i64 %646, i64* %3, align 8
  %.pre60 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*), align 8
  br label %block_.L_42d15e

block_.L_42d15e:                                  ; preds = %block_.L_42d00e, %block_.L_42d159
  %647 = phi i64 [ %.pre60, %block_.L_42d159 ], [ %397, %block_.L_42d00e ]
  %648 = phi i64 [ %646, %block_.L_42d159 ], [ %445, %block_.L_42d00e ]
  store i64 %647, i64* %RAX.i56, align 8
  %649 = add i64 %647, 88
  %650 = add i64 %648, 11
  store i64 %650, i64* %3, align 8
  %651 = inttoptr i64 %649 to i32*
  %652 = load i32, i32* %651, align 4
  %653 = zext i32 %652 to i64
  store i64 %653, i64* %RCX.i72, align 8
  %654 = add i64 %647, 92
  %655 = add i64 %648, 22
  store i64 %655, i64* %3, align 8
  %656 = inttoptr i64 %654 to i32*
  store i32 %652, i32* %656, align 4
  %657 = load i64, i64* %3, align 8
  %658 = load i64, i64* bitcast (%G_0x6cb8f8_type* @G_0x6cb8f8 to i64*), align 8
  store i64 %658, i64* %RAX.i56, align 8
  %659 = add i64 %658, 76
  %660 = add i64 %657, 12
  store i64 %660, i64* %3, align 8
  %661 = inttoptr i64 %659 to i32*
  %662 = load i32, i32* %661, align 4
  store i8 0, i8* %40, align 1
  %663 = and i32 %662, 255
  %664 = tail call i32 @llvm.ctpop.i32(i32 %663)
  %665 = trunc i32 %664 to i8
  %666 = and i8 %665, 1
  %667 = xor i8 %666, 1
  store i8 %667, i8* %42, align 1
  store i8 0, i8* %48, align 1
  %668 = icmp eq i32 %662, 0
  %669 = zext i1 %668 to i8
  store i8 %669, i8* %49, align 1
  %670 = lshr i32 %662, 31
  %671 = trunc i32 %670 to i8
  store i8 %671, i8* %52, align 1
  store i8 0, i8* %56, align 1
  %672 = icmp ne i8 %671, 0
  %673 = or i1 %668, %672
  %.v123 = select i1 %673, i64 99, i64 18
  %674 = add i64 %657, %.v123
  store i64 %674, i64* %3, align 8
  br i1 %673, label %block_.L_42d1d7, label %block_42d186

block_42d186:                                     ; preds = %block_.L_42d15e
  store i64 16, i64* %RAX.i56, align 8
  %675 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*), align 8
  store i64 %675, i64* %RCX.i72, align 8
  %676 = add i64 %674, 15
  store i64 %676, i64* %3, align 8
  %677 = inttoptr i64 %675 to i32*
  %678 = load i32, i32* %677, align 4
  %679 = zext i32 %678 to i64
  store i64 %679, i64* %RDX.i1151, align 8
  store i64 %658, i64* %RCX.i72, align 8
  %680 = load i64, i64* %RBP.i, align 8
  %681 = add i64 %680, -20
  %682 = add i64 %674, 26
  store i64 %682, i64* %3, align 8
  %683 = inttoptr i64 %681 to i32*
  store i32 16, i32* %683, align 4
  %684 = load i32, i32* %EDX.i1145, align 4
  %685 = zext i32 %684 to i64
  %686 = load i64, i64* %3, align 8
  store i64 %685, i64* %RAX.i56, align 8
  %687 = sext i32 %684 to i64
  %688 = lshr i64 %687, 32
  store i64 %688, i64* %97, align 8
  %689 = load i64, i64* %RCX.i72, align 8
  %690 = add i64 %689, 76
  %691 = add i64 %686, 6
  store i64 %691, i64* %3, align 8
  %692 = inttoptr i64 %690 to i32*
  %693 = load i32, i32* %692, align 4
  %694 = sext i32 %693 to i64
  %695 = shl nuw i64 %688, 32
  %696 = or i64 %695, %685
  %697 = sdiv i64 %696, %694
  %698 = shl i64 %697, 32
  %699 = ashr exact i64 %698, 32
  %700 = icmp eq i64 %697, %699
  br i1 %700, label %703, label %701

; <label>:701:                                    ; preds = %block_42d186
  %702 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %691, %struct.Memory* %156)
  %.pre61 = load i64, i64* %3, align 8
  %.pre62 = load i32, i32* %EAX.i1127, align 4
  br label %routine_idivl_0x4c__rcx_.exit

; <label>:703:                                    ; preds = %block_42d186
  %704 = srem i64 %696, %694
  %705 = and i64 %697, 4294967295
  store i64 %705, i64* %RAX.i56, align 8
  %706 = and i64 %704, 4294967295
  store i64 %706, i64* %RDX.i1151, align 8
  store i8 0, i8* %40, align 1
  store i8 0, i8* %42, align 1
  store i8 0, i8* %48, align 1
  store i8 0, i8* %49, align 1
  store i8 0, i8* %52, align 1
  store i8 0, i8* %56, align 1
  %707 = trunc i64 %697 to i32
  br label %routine_idivl_0x4c__rcx_.exit

routine_idivl_0x4c__rcx_.exit:                    ; preds = %703, %701
  %708 = phi i32 [ %.pre62, %701 ], [ %707, %703 ]
  %709 = phi i64 [ %.pre61, %701 ], [ %691, %703 ]
  %710 = phi %struct.Memory* [ %702, %701 ], [ %156, %703 ]
  %711 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*), align 8
  store i64 %711, i64* %RCX.i72, align 8
  %712 = add i64 %711, 52
  %713 = add i64 %709, 11
  store i64 %713, i64* %3, align 8
  %714 = inttoptr i64 %712 to i32*
  %715 = load i32, i32* %714, align 4
  %716 = zext i32 %715 to i64
  store i64 %716, i64* %RSI.i1120, align 8
  %717 = load i64, i64* %RBP.i, align 8
  %718 = add i64 %717, -24
  %719 = add i64 %709, 14
  store i64 %719, i64* %3, align 8
  %720 = inttoptr i64 %718 to i32*
  store i32 %708, i32* %720, align 4
  %721 = load i32, i32* %ESI.i1115, align 4
  %722 = zext i32 %721 to i64
  %723 = load i64, i64* %3, align 8
  store i64 %722, i64* %RAX.i56, align 8
  %724 = sext i32 %721 to i64
  %725 = lshr i64 %724, 32
  store i64 %725, i64* %97, align 8
  %726 = load i64, i64* %RBP.i, align 8
  %727 = add i64 %726, -20
  %728 = add i64 %723, 6
  store i64 %728, i64* %3, align 8
  %729 = inttoptr i64 %727 to i32*
  %730 = load i32, i32* %729, align 4
  %731 = zext i32 %730 to i64
  store i64 %731, i64* %RSI.i1120, align 8
  %732 = add i64 %723, 8
  store i64 %732, i64* %3, align 8
  %733 = sext i32 %730 to i64
  %734 = shl nuw i64 %725, 32
  %735 = or i64 %734, %722
  %736 = sdiv i64 %735, %733
  %737 = shl i64 %736, 32
  %738 = ashr exact i64 %737, 32
  %739 = icmp eq i64 %736, %738
  br i1 %739, label %742, label %740

; <label>:740:                                    ; preds = %routine_idivl_0x4c__rcx_.exit
  %741 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %732, %struct.Memory* %710)
  %.pre63 = load i64, i64* %RBP.i, align 8
  %.pre64 = load i64, i64* %3, align 8
  %.pre65 = load i32, i32* %EAX.i1127, align 4
  br label %routine_idivl__esi.exit

; <label>:742:                                    ; preds = %routine_idivl_0x4c__rcx_.exit
  %743 = srem i64 %735, %733
  %744 = and i64 %736, 4294967295
  store i64 %744, i64* %RAX.i56, align 8
  %745 = and i64 %743, 4294967295
  store i64 %745, i64* %RDX.i1151, align 8
  store i8 0, i8* %40, align 1
  store i8 0, i8* %42, align 1
  store i8 0, i8* %48, align 1
  store i8 0, i8* %49, align 1
  store i8 0, i8* %52, align 1
  store i8 0, i8* %56, align 1
  %746 = trunc i64 %736 to i32
  br label %routine_idivl__esi.exit

routine_idivl__esi.exit:                          ; preds = %742, %740
  %747 = phi i32 [ %.pre65, %740 ], [ %746, %742 ]
  %748 = phi i64 [ %.pre64, %740 ], [ %732, %742 ]
  %749 = phi i64 [ %.pre63, %740 ], [ %726, %742 ]
  %750 = phi %struct.Memory* [ %741, %740 ], [ %710, %742 ]
  %751 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0
  %RDI.i793 = getelementptr inbounds %union.anon, %union.anon* %751, i64 0, i32 0
  %752 = add i64 %749, -24
  %753 = add i64 %748, 3
  store i64 %753, i64* %3, align 8
  %754 = inttoptr i64 %752 to i32*
  %755 = load i32, i32* %754, align 4
  %756 = zext i32 %755 to i64
  store i64 %756, i64* %RDI.i793, align 8
  %757 = add i64 %749, -28
  %758 = add i64 %748, 6
  store i64 %758, i64* %3, align 8
  %759 = inttoptr i64 %757 to i32*
  store i32 %747, i32* %759, align 4
  %EDI.i = bitcast %union.anon* %751 to i32*
  %760 = load i32, i32* %EDI.i, align 4
  %761 = zext i32 %760 to i64
  %762 = load i64, i64* %3, align 8
  store i64 %761, i64* %RAX.i56, align 8
  %763 = sext i32 %760 to i64
  %764 = lshr i64 %763, 32
  store i64 %764, i64* %97, align 8
  %765 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0, i32 0
  %766 = load i64, i64* %RBP.i, align 8
  %767 = add i64 %766, -28
  %768 = add i64 %762, 7
  store i64 %768, i64* %3, align 8
  %769 = inttoptr i64 %767 to i32*
  %770 = load i32, i32* %769, align 4
  %771 = zext i32 %770 to i64
  store i64 %771, i64* %765, align 8
  %772 = add i64 %762, 10
  store i64 %772, i64* %3, align 8
  %773 = sext i32 %770 to i64
  %774 = shl nuw i64 %764, 32
  %775 = or i64 %774, %761
  %776 = sdiv i64 %775, %773
  %777 = shl i64 %776, 32
  %778 = ashr exact i64 %777, 32
  %779 = icmp eq i64 %776, %778
  br i1 %779, label %782, label %780

; <label>:780:                                    ; preds = %routine_idivl__esi.exit
  %781 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %772, %struct.Memory* %750)
  %.pre66 = load i64, i64* %3, align 8
  %.pre67 = load i32, i32* %EDX.i1145, align 4
  br label %routine_idivl__r8d.exit

; <label>:782:                                    ; preds = %routine_idivl__esi.exit
  %783 = srem i64 %775, %773
  %784 = and i64 %776, 4294967295
  store i64 %784, i64* %RAX.i56, align 8
  %785 = and i64 %783, 4294967295
  store i64 %785, i64* %RDX.i1151, align 8
  store i8 0, i8* %40, align 1
  store i8 0, i8* %42, align 1
  store i8 0, i8* %48, align 1
  store i8 0, i8* %49, align 1
  store i8 0, i8* %52, align 1
  store i8 0, i8* %56, align 1
  %786 = trunc i64 %783 to i32
  br label %routine_idivl__r8d.exit

routine_idivl__r8d.exit:                          ; preds = %782, %780
  %787 = phi i32 [ %.pre67, %780 ], [ %786, %782 ]
  %788 = phi i64 [ %.pre66, %780 ], [ %772, %782 ]
  %789 = phi %struct.Memory* [ %781, %780 ], [ %750, %782 ]
  %790 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*), align 8
  store i64 %790, i64* %RCX.i72, align 8
  %791 = add i64 %790, 88
  %792 = add i64 %788, 11
  store i64 %792, i64* %3, align 8
  %793 = inttoptr i64 %791 to i32*
  store i32 %787, i32* %793, align 4
  %.pre68 = load i64, i64* %3, align 8
  br label %block_.L_42d1d7

block_.L_42d1d7:                                  ; preds = %routine_idivl__r8d.exit, %block_.L_42d15e
  %794 = phi i64 [ %674, %block_.L_42d15e ], [ %.pre68, %routine_idivl__r8d.exit ]
  %MEMORY.10 = phi %struct.Memory* [ %156, %block_.L_42d15e ], [ %789, %routine_idivl__r8d.exit ]
  %795 = add i64 %794, 1583
  br label %block_.L_42d806

block_.L_42d1dc:                                  ; preds = %routine_idivl__esi.exit1102
  %796 = load i64, i64* bitcast (%G_0x6cb8f8_type* @G_0x6cb8f8 to i64*), align 8
  store i64 %796, i64* %RAX.i56, align 8
  %797 = add i64 %796, 20
  %798 = add i64 %220, 11
  store i64 %798, i64* %3, align 8
  %799 = inttoptr i64 %797 to i32*
  %800 = load i32, i32* %799, align 4
  %801 = add i32 %800, 2
  %802 = zext i32 %801 to i64
  store i64 %802, i64* %RCX.i72, align 8
  %803 = icmp ugt i32 %800, -3
  %804 = zext i1 %803 to i8
  store i8 %804, i8* %40, align 1
  %805 = and i32 %801, 255
  %806 = tail call i32 @llvm.ctpop.i32(i32 %805)
  %807 = trunc i32 %806 to i8
  %808 = and i8 %807, 1
  %809 = xor i8 %808, 1
  store i8 %809, i8* %42, align 1
  %810 = xor i32 %801, %800
  %811 = lshr i32 %810, 4
  %812 = trunc i32 %811 to i8
  %813 = and i8 %812, 1
  store i8 %813, i8* %48, align 1
  %814 = icmp eq i32 %801, 0
  %815 = zext i1 %814 to i8
  store i8 %815, i8* %49, align 1
  %816 = lshr i32 %801, 31
  %817 = trunc i32 %816 to i8
  store i8 %817, i8* %52, align 1
  %818 = lshr i32 %800, 31
  %819 = xor i32 %816, %818
  %820 = add nuw nsw i32 %819, %816
  %821 = icmp eq i32 %820, 2
  %822 = zext i1 %821 to i8
  store i8 %822, i8* %56, align 1
  %ECX.i763 = bitcast %union.anon* %12 to i32*
  %823 = add i64 %206, 71904
  %824 = add i64 %220, 28
  store i64 %824, i64* %3, align 8
  %825 = inttoptr i64 %823 to i32*
  store i32 %801, i32* %825, align 4
  %826 = load i64, i64* %3, align 8
  %827 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*), align 8
  store i64 %827, i64* %RAX.i56, align 8
  %828 = add i64 %826, 10
  store i64 %828, i64* %3, align 8
  %829 = inttoptr i64 %827 to i32*
  %830 = load i32, i32* %829, align 4
  %831 = add i32 %830, -1
  %832 = zext i32 %831 to i64
  store i64 %832, i64* %RCX.i72, align 8
  %833 = icmp eq i32 %830, 0
  %834 = zext i1 %833 to i8
  store i8 %834, i8* %40, align 1
  %835 = and i32 %831, 255
  %836 = tail call i32 @llvm.ctpop.i32(i32 %835)
  %837 = trunc i32 %836 to i8
  %838 = and i8 %837, 1
  %839 = xor i8 %838, 1
  store i8 %839, i8* %42, align 1
  %840 = xor i32 %831, %830
  %841 = lshr i32 %840, 4
  %842 = trunc i32 %841 to i8
  %843 = and i8 %842, 1
  store i8 %843, i8* %48, align 1
  %844 = icmp eq i32 %831, 0
  %845 = zext i1 %844 to i8
  store i8 %845, i8* %49, align 1
  %846 = lshr i32 %831, 31
  %847 = trunc i32 %846 to i8
  store i8 %847, i8* %52, align 1
  %848 = lshr i32 %830, 31
  %849 = xor i32 %846, %848
  %850 = add nuw nsw i32 %849, %848
  %851 = icmp eq i32 %850, 2
  %852 = zext i1 %851 to i8
  store i8 %852, i8* %56, align 1
  store i64 %827, i64* %RAX.i56, align 8
  %853 = add i64 %827, 71904
  %854 = add i64 %826, 28
  store i64 %854, i64* %3, align 8
  %855 = inttoptr i64 %853 to i32*
  %856 = load i32, i32* %855, align 4
  %857 = sext i32 %831 to i64
  %858 = sext i32 %856 to i64
  %859 = mul nsw i64 %858, %857
  %860 = trunc i64 %859 to i32
  %861 = and i64 %859, 4294967295
  store i64 %861, i64* %RCX.i72, align 8
  %862 = shl i64 %859, 32
  %863 = ashr exact i64 %862, 32
  %864 = icmp ne i64 %863, %859
  %865 = zext i1 %864 to i8
  store i8 %865, i8* %40, align 1
  %866 = and i32 %860, 255
  %867 = tail call i32 @llvm.ctpop.i32(i32 %866)
  %868 = trunc i32 %867 to i8
  %869 = and i8 %868, 1
  %870 = xor i8 %869, 1
  store i8 %870, i8* %42, align 1
  store i8 0, i8* %48, align 1
  store i8 0, i8* %49, align 1
  %871 = lshr i32 %860, 31
  %872 = trunc i32 %871 to i8
  store i8 %872, i8* %52, align 1
  store i8 %865, i8* %56, align 1
  store i64 %827, i64* %RAX.i56, align 8
  %873 = add i64 %827, 71796
  %874 = add i64 %826, 42
  store i64 %874, i64* %3, align 8
  %875 = trunc i64 %859 to i32
  %876 = inttoptr i64 %873 to i32*
  %877 = load i32, i32* %876, align 4
  %878 = add i32 %877, %875
  %879 = zext i32 %878 to i64
  store i64 %879, i64* %RCX.i72, align 8
  %880 = icmp ult i32 %878, %875
  %881 = icmp ult i32 %878, %877
  %882 = or i1 %880, %881
  %883 = zext i1 %882 to i8
  store i8 %883, i8* %40, align 1
  %884 = and i32 %878, 255
  %885 = tail call i32 @llvm.ctpop.i32(i32 %884)
  %886 = trunc i32 %885 to i8
  %887 = and i8 %886, 1
  %888 = xor i8 %887, 1
  store i8 %888, i8* %42, align 1
  %889 = xor i32 %877, %875
  %890 = xor i32 %889, %878
  %891 = lshr i32 %890, 4
  %892 = trunc i32 %891 to i8
  %893 = and i8 %892, 1
  store i8 %893, i8* %48, align 1
  %894 = icmp eq i32 %878, 0
  %895 = zext i1 %894 to i8
  store i8 %895, i8* %49, align 1
  %896 = lshr i32 %878, 31
  %897 = trunc i32 %896 to i8
  store i8 %897, i8* %52, align 1
  %898 = lshr i32 %875, 31
  %899 = lshr i32 %877, 31
  %900 = xor i32 %896, %898
  %901 = xor i32 %896, %899
  %902 = add nuw nsw i32 %900, %901
  %903 = icmp eq i32 %902, 2
  %904 = zext i1 %903 to i8
  store i8 %904, i8* %56, align 1
  %905 = load i64, i64* %RBP.i, align 8
  %906 = add i64 %905, -8
  %907 = add i64 %826, 45
  store i64 %907, i64* %3, align 8
  %908 = inttoptr i64 %906 to i32*
  store i32 %878, i32* %908, align 4
  %909 = load i64, i64* %3, align 8
  %910 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*), align 8
  store i64 %910, i64* %RAX.i56, align 8
  %911 = add i64 %909, 10
  store i64 %911, i64* %3, align 8
  %912 = inttoptr i64 %910 to i32*
  %913 = load i32, i32* %912, align 4
  %914 = zext i32 %913 to i64
  store i64 %914, i64* %RCX.i72, align 8
  store i64 %910, i64* %RAX.i56, align 8
  %915 = add i64 %910, 71904
  %916 = add i64 %909, 25
  store i64 %916, i64* %3, align 8
  %917 = inttoptr i64 %915 to i32*
  %918 = load i32, i32* %917, align 4
  %919 = sext i32 %913 to i64
  %920 = sext i32 %918 to i64
  %921 = mul nsw i64 %920, %919
  %922 = trunc i64 %921 to i32
  %923 = and i64 %921, 4294967295
  store i64 %923, i64* %RCX.i72, align 8
  %924 = shl i64 %921, 32
  %925 = ashr exact i64 %924, 32
  %926 = icmp ne i64 %925, %921
  %927 = zext i1 %926 to i8
  store i8 %927, i8* %40, align 1
  %928 = and i32 %922, 255
  %929 = tail call i32 @llvm.ctpop.i32(i32 %928)
  %930 = trunc i32 %929 to i8
  %931 = and i8 %930, 1
  %932 = xor i8 %931, 1
  store i8 %932, i8* %42, align 1
  store i8 0, i8* %48, align 1
  store i8 0, i8* %49, align 1
  %933 = lshr i32 %922, 31
  %934 = trunc i32 %933 to i8
  store i8 %934, i8* %52, align 1
  store i8 %927, i8* %56, align 1
  store i64 %910, i64* %RAX.i56, align 8
  %935 = add i64 %910, 71796
  %936 = add i64 %909, 39
  store i64 %936, i64* %3, align 8
  %937 = trunc i64 %921 to i32
  %938 = inttoptr i64 %935 to i32*
  %939 = load i32, i32* %938, align 4
  %940 = add i32 %939, %937
  %941 = zext i32 %940 to i64
  store i64 %941, i64* %RCX.i72, align 8
  %942 = icmp ult i32 %940, %937
  %943 = icmp ult i32 %940, %939
  %944 = or i1 %942, %943
  %945 = zext i1 %944 to i8
  store i8 %945, i8* %40, align 1
  %946 = and i32 %940, 255
  %947 = tail call i32 @llvm.ctpop.i32(i32 %946)
  %948 = trunc i32 %947 to i8
  %949 = and i8 %948, 1
  %950 = xor i8 %949, 1
  store i8 %950, i8* %42, align 1
  %951 = xor i32 %939, %937
  %952 = xor i32 %951, %940
  %953 = lshr i32 %952, 4
  %954 = trunc i32 %953 to i8
  %955 = and i8 %954, 1
  store i8 %955, i8* %48, align 1
  %956 = icmp eq i32 %940, 0
  %957 = zext i1 %956 to i8
  store i8 %957, i8* %49, align 1
  %958 = lshr i32 %940, 31
  %959 = trunc i32 %958 to i8
  store i8 %959, i8* %52, align 1
  %960 = lshr i32 %937, 31
  %961 = lshr i32 %939, 31
  %962 = xor i32 %958, %960
  %963 = xor i32 %958, %961
  %964 = add nuw nsw i32 %962, %963
  %965 = icmp eq i32 %964, 2
  %966 = zext i1 %965 to i8
  store i8 %966, i8* %56, align 1
  %967 = load i64, i64* %RBP.i, align 8
  %968 = add i64 %967, -12
  %969 = add i64 %909, 42
  store i64 %969, i64* %3, align 8
  %970 = inttoptr i64 %968 to i32*
  store i32 %940, i32* %970, align 4
  %971 = load i64, i64* %3, align 8
  %972 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*), align 8
  store i64 %972, i64* %RAX.i56, align 8
  %973 = add i64 %972, 71796
  %974 = add i64 %971, 15
  store i64 %974, i64* %3, align 8
  %975 = inttoptr i64 %973 to i32*
  %976 = load i32, i32* %975, align 4
  store i8 0, i8* %40, align 1
  %977 = and i32 %976, 255
  %978 = tail call i32 @llvm.ctpop.i32(i32 %977)
  %979 = trunc i32 %978 to i8
  %980 = and i8 %979, 1
  %981 = xor i8 %980, 1
  store i8 %981, i8* %42, align 1
  store i8 0, i8* %48, align 1
  %982 = icmp eq i32 %976, 0
  %983 = zext i1 %982 to i8
  store i8 %983, i8* %49, align 1
  %984 = lshr i32 %976, 31
  %985 = trunc i32 %984 to i8
  store i8 %985, i8* %52, align 1
  store i8 0, i8* %56, align 1
  %.v99 = select i1 %982, i64 21, i64 217
  %986 = add i64 %971, %.v99
  store i64 %986, i64* %3, align 8
  %987 = load i64, i64* %RBP.i, align 8
  br i1 %982, label %block_42d264, label %block_.L_42d328

block_42d264:                                     ; preds = %block_.L_42d1dc
  %988 = add i64 %987, -8
  %989 = add i64 %986, 3
  store i64 %989, i64* %3, align 8
  %990 = inttoptr i64 %988 to i32*
  %991 = load i32, i32* %990, align 4
  %992 = add i32 %991, 1
  %993 = zext i32 %992 to i64
  store i64 %993, i64* %RAX.i56, align 8
  %994 = icmp eq i32 %991, -1
  %995 = icmp eq i32 %992, 0
  %996 = or i1 %994, %995
  %997 = zext i1 %996 to i8
  store i8 %997, i8* %40, align 1
  %998 = and i32 %992, 255
  %999 = tail call i32 @llvm.ctpop.i32(i32 %998)
  %1000 = trunc i32 %999 to i8
  %1001 = and i8 %1000, 1
  %1002 = xor i8 %1001, 1
  store i8 %1002, i8* %42, align 1
  %1003 = xor i32 %992, %991
  %1004 = lshr i32 %1003, 4
  %1005 = trunc i32 %1004 to i8
  %1006 = and i8 %1005, 1
  store i8 %1006, i8* %48, align 1
  %1007 = zext i1 %995 to i8
  store i8 %1007, i8* %49, align 1
  %1008 = lshr i32 %992, 31
  %1009 = trunc i32 %1008 to i8
  store i8 %1009, i8* %52, align 1
  %1010 = lshr i32 %991, 31
  %1011 = xor i32 %1008, %1010
  %1012 = add nuw nsw i32 %1011, %1008
  %1013 = icmp eq i32 %1012, 2
  %1014 = zext i1 %1013 to i8
  store i8 %1014, i8* %56, align 1
  %1015 = load i64, i64* bitcast (%G_0x6cea00_type* @G_0x6cea00 to i64*), align 8
  store i64 %1015, i64* %RCX.i72, align 8
  %1016 = add i64 %986, 16
  store i64 %1016, i64* %3, align 8
  %1017 = inttoptr i64 %1015 to i32*
  store i32 %992, i32* %1017, align 4
  %1018 = load i64, i64* %RBP.i, align 8
  %1019 = add i64 %1018, -8
  %1020 = load i64, i64* %3, align 8
  %1021 = add i64 %1020, 3
  store i64 %1021, i64* %3, align 8
  %1022 = inttoptr i64 %1019 to i32*
  %1023 = load i32, i32* %1022, align 4
  %1024 = zext i32 %1023 to i64
  store i64 %1024, i64* %RAX.i56, align 8
  %1025 = load i64, i64* bitcast (%G_0x6cea00_type* @G_0x6cea00 to i64*), align 8
  store i64 %1025, i64* %RCX.i72, align 8
  %1026 = add i64 %1025, 4
  %1027 = add i64 %1020, 14
  store i64 %1027, i64* %3, align 8
  %1028 = inttoptr i64 %1026 to i32*
  store i32 %1023, i32* %1028, align 4
  %1029 = load i64, i64* %RBP.i, align 8
  %1030 = add i64 %1029, -4
  %1031 = load i64, i64* %3, align 8
  %1032 = add i64 %1031, 7
  store i64 %1032, i64* %3, align 8
  %1033 = inttoptr i64 %1030 to i32*
  store i32 1, i32* %1033, align 4
  %.pre69 = load i64, i64* %3, align 8
  br label %block_.L_42d289

block_.L_42d289:                                  ; preds = %block_42d2a0, %block_42d264
  %1034 = phi i64 [ %1290, %block_42d2a0 ], [ %.pre69, %block_42d264 ]
  %1035 = load i64, i64* %RBP.i, align 8
  %1036 = add i64 %1035, -4
  %1037 = add i64 %1034, 3
  store i64 %1037, i64* %3, align 8
  %1038 = inttoptr i64 %1036 to i32*
  %1039 = load i32, i32* %1038, align 4
  %1040 = zext i32 %1039 to i64
  store i64 %1040, i64* %RAX.i56, align 8
  %1041 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*), align 8
  store i64 %1041, i64* %RCX.i72, align 8
  %1042 = add i64 %1041, 72376
  %1043 = add i64 %1034, 17
  store i64 %1043, i64* %3, align 8
  %1044 = inttoptr i64 %1042 to i32*
  %1045 = load i32, i32* %1044, align 4
  %1046 = sub i32 %1039, %1045
  %1047 = icmp ult i32 %1039, %1045
  %1048 = zext i1 %1047 to i8
  store i8 %1048, i8* %40, align 1
  %1049 = and i32 %1046, 255
  %1050 = tail call i32 @llvm.ctpop.i32(i32 %1049)
  %1051 = trunc i32 %1050 to i8
  %1052 = and i8 %1051, 1
  %1053 = xor i8 %1052, 1
  store i8 %1053, i8* %42, align 1
  %1054 = xor i32 %1045, %1039
  %1055 = xor i32 %1054, %1046
  %1056 = lshr i32 %1055, 4
  %1057 = trunc i32 %1056 to i8
  %1058 = and i8 %1057, 1
  store i8 %1058, i8* %48, align 1
  %1059 = icmp eq i32 %1046, 0
  %1060 = zext i1 %1059 to i8
  store i8 %1060, i8* %49, align 1
  %1061 = lshr i32 %1046, 31
  %1062 = trunc i32 %1061 to i8
  store i8 %1062, i8* %52, align 1
  %1063 = lshr i32 %1039, 31
  %1064 = lshr i32 %1045, 31
  %1065 = xor i32 %1064, %1063
  %1066 = xor i32 %1061, %1063
  %1067 = add nuw nsw i32 %1066, %1065
  %1068 = icmp eq i32 %1067, 2
  %1069 = zext i1 %1068 to i8
  store i8 %1069, i8* %56, align 1
  %1070 = icmp ne i8 %1062, 0
  %1071 = xor i1 %1070, %1068
  %.demorgan = or i1 %1059, %1071
  %.v116 = select i1 %.demorgan, i64 23, i64 154
  %1072 = add i64 %1034, %.v116
  store i64 %1072, i64* %3, align 8
  br i1 %.demorgan, label %block_42d2a0, label %block_.L_42d323

block_42d2a0:                                     ; preds = %block_.L_42d289
  %1073 = load i64, i64* bitcast (%G_0x6cea00_type* @G_0x6cea00 to i64*), align 8
  store i64 %1073, i64* %RAX.i56, align 8
  %1074 = add i64 %1072, 11
  store i64 %1074, i64* %3, align 8
  %1075 = load i32, i32* %1038, align 4
  %1076 = shl i32 %1075, 1
  %1077 = add i32 %1076, -2
  %1078 = zext i32 %1077 to i64
  store i64 %1078, i64* %RCX.i72, align 8
  %1079 = icmp ult i32 %1076, 2
  %1080 = zext i1 %1079 to i8
  store i8 %1080, i8* %40, align 1
  %1081 = and i32 %1077, 254
  %1082 = tail call i32 @llvm.ctpop.i32(i32 %1081)
  %1083 = trunc i32 %1082 to i8
  %1084 = and i8 %1083, 1
  %1085 = xor i8 %1084, 1
  store i8 %1085, i8* %42, align 1
  %1086 = xor i32 %1077, %1076
  %1087 = lshr i32 %1086, 4
  %1088 = trunc i32 %1087 to i8
  %1089 = and i8 %1088, 1
  store i8 %1089, i8* %48, align 1
  %1090 = icmp eq i32 %1077, 0
  %1091 = zext i1 %1090 to i8
  store i8 %1091, i8* %49, align 1
  %1092 = lshr i32 %1077, 31
  %1093 = trunc i32 %1092 to i8
  store i8 %1093, i8* %52, align 1
  %1094 = lshr i32 %1075, 30
  %1095 = and i32 %1094, 1
  %1096 = xor i32 %1092, %1095
  %1097 = add nuw nsw i32 %1096, %1095
  %1098 = icmp eq i32 %1097, 2
  %1099 = zext i1 %1098 to i8
  store i8 %1099, i8* %56, align 1
  %1100 = sext i32 %1077 to i64
  store i64 %1100, i64* %RDX.i1151, align 8
  %1101 = shl nsw i64 %1100, 2
  %1102 = add i64 %1073, %1101
  %1103 = add i64 %1072, 22
  store i64 %1103, i64* %3, align 8
  %1104 = inttoptr i64 %1102 to i32*
  %1105 = load i32, i32* %1104, align 4
  %1106 = zext i32 %1105 to i64
  store i64 %1106, i64* %RCX.i72, align 8
  store i64 %1041, i64* %RAX.i56, align 8
  %1107 = add i64 %1041, 71904
  %1108 = add i64 %1072, 36
  store i64 %1108, i64* %3, align 8
  %1109 = inttoptr i64 %1107 to i32*
  %1110 = load i32, i32* %1109, align 4
  %1111 = sub i32 %1105, %1110
  %1112 = zext i32 %1111 to i64
  store i64 %1112, i64* %RCX.i72, align 8
  %1113 = icmp ult i32 %1105, %1110
  %1114 = zext i1 %1113 to i8
  store i8 %1114, i8* %40, align 1
  %1115 = and i32 %1111, 255
  %1116 = tail call i32 @llvm.ctpop.i32(i32 %1115)
  %1117 = trunc i32 %1116 to i8
  %1118 = and i8 %1117, 1
  %1119 = xor i8 %1118, 1
  store i8 %1119, i8* %42, align 1
  %1120 = xor i32 %1110, %1105
  %1121 = xor i32 %1120, %1111
  %1122 = lshr i32 %1121, 4
  %1123 = trunc i32 %1122 to i8
  %1124 = and i8 %1123, 1
  store i8 %1124, i8* %48, align 1
  %1125 = icmp eq i32 %1111, 0
  %1126 = zext i1 %1125 to i8
  store i8 %1126, i8* %49, align 1
  %1127 = lshr i32 %1111, 31
  %1128 = trunc i32 %1127 to i8
  store i8 %1128, i8* %52, align 1
  %1129 = lshr i32 %1105, 31
  %1130 = lshr i32 %1110, 31
  %1131 = xor i32 %1130, %1129
  %1132 = xor i32 %1127, %1129
  %1133 = add nuw nsw i32 %1132, %1131
  %1134 = icmp eq i32 %1133, 2
  %1135 = zext i1 %1134 to i8
  store i8 %1135, i8* %56, align 1
  %1136 = load i64, i64* bitcast (%G_0x6cea00_type* @G_0x6cea00 to i64*), align 8
  store i64 %1136, i64* %RAX.i56, align 8
  %1137 = load i64, i64* %RBP.i, align 8
  %1138 = add i64 %1137, -4
  %1139 = add i64 %1072, 47
  store i64 %1139, i64* %3, align 8
  %1140 = inttoptr i64 %1138 to i32*
  %1141 = load i32, i32* %1140, align 4
  %1142 = shl i32 %1141, 1
  %1143 = icmp slt i32 %1141, 0
  %1144 = icmp slt i32 %1142, 0
  %1145 = xor i1 %1143, %1144
  %1146 = zext i32 %1142 to i64
  store i64 %1146, i64* %RSI.i1120, align 8
  %.lobit38 = lshr i32 %1141, 31
  %1147 = trunc i32 %.lobit38 to i8
  store i8 %1147, i8* %40, align 1
  %1148 = and i32 %1142, 254
  %1149 = tail call i32 @llvm.ctpop.i32(i32 %1148)
  %1150 = trunc i32 %1149 to i8
  %1151 = and i8 %1150, 1
  %1152 = xor i8 %1151, 1
  store i8 %1152, i8* %42, align 1
  store i8 0, i8* %48, align 1
  %1153 = icmp eq i32 %1142, 0
  %1154 = zext i1 %1153 to i8
  store i8 %1154, i8* %49, align 1
  %1155 = lshr i32 %1141, 30
  %1156 = trunc i32 %1155 to i8
  %1157 = and i8 %1156, 1
  store i8 %1157, i8* %52, align 1
  %1158 = zext i1 %1145 to i8
  store i8 %1158, i8* %56, align 1
  %1159 = sext i32 %1142 to i64
  store i64 %1159, i64* %RDX.i1151, align 8
  %1160 = shl nsw i64 %1159, 2
  %1161 = add i64 %1136, %1160
  %1162 = add i64 %1072, 55
  store i64 %1162, i64* %3, align 8
  %1163 = inttoptr i64 %1161 to i32*
  store i32 %1111, i32* %1163, align 4
  %1164 = load i64, i64* %3, align 8
  %1165 = load i64, i64* bitcast (%G_0x6cea00_type* @G_0x6cea00 to i64*), align 8
  store i64 %1165, i64* %RAX.i56, align 8
  %1166 = load i64, i64* %RBP.i, align 8
  %1167 = add i64 %1166, -4
  %1168 = add i64 %1164, 11
  store i64 %1168, i64* %3, align 8
  %1169 = inttoptr i64 %1167 to i32*
  %1170 = load i32, i32* %1169, align 4
  %1171 = shl i32 %1170, 1
  %1172 = icmp eq i32 %1171, 0
  %1173 = zext i1 %1172 to i8
  %1174 = add i32 %1171, -1
  %1175 = zext i32 %1174 to i64
  store i64 %1175, i64* %RCX.i72, align 8
  store i8 %1173, i8* %40, align 1
  %1176 = and i32 %1174, 255
  %1177 = tail call i32 @llvm.ctpop.i32(i32 %1176)
  %1178 = trunc i32 %1177 to i8
  %1179 = and i8 %1178, 1
  %1180 = xor i8 %1179, 1
  store i8 %1180, i8* %42, align 1
  %1181 = xor i32 %1174, %1171
  %1182 = lshr i32 %1181, 4
  %1183 = trunc i32 %1182 to i8
  %1184 = and i8 %1183, 1
  store i8 %1184, i8* %48, align 1
  store i8 0, i8* %49, align 1
  %1185 = lshr i32 %1174, 31
  %1186 = trunc i32 %1185 to i8
  store i8 %1186, i8* %52, align 1
  %1187 = lshr i32 %1170, 30
  %1188 = and i32 %1187, 1
  %1189 = xor i32 %1185, %1188
  %1190 = add nuw nsw i32 %1189, %1188
  %1191 = icmp eq i32 %1190, 2
  %1192 = zext i1 %1191 to i8
  store i8 %1192, i8* %56, align 1
  %1193 = sext i32 %1174 to i64
  store i64 %1193, i64* %RDX.i1151, align 8
  %1194 = shl nsw i64 %1193, 2
  %1195 = add i64 %1165, %1194
  %1196 = add i64 %1164, 22
  store i64 %1196, i64* %3, align 8
  %1197 = inttoptr i64 %1195 to i32*
  %1198 = load i32, i32* %1197, align 4
  %1199 = zext i32 %1198 to i64
  store i64 %1199, i64* %RCX.i72, align 8
  %1200 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*), align 8
  store i64 %1200, i64* %RAX.i56, align 8
  %1201 = add i64 %1200, 71904
  %1202 = add i64 %1164, 36
  store i64 %1202, i64* %3, align 8
  %1203 = inttoptr i64 %1201 to i32*
  %1204 = load i32, i32* %1203, align 4
  %1205 = sub i32 %1198, %1204
  %1206 = zext i32 %1205 to i64
  store i64 %1206, i64* %RCX.i72, align 8
  %1207 = icmp ult i32 %1198, %1204
  %1208 = zext i1 %1207 to i8
  store i8 %1208, i8* %40, align 1
  %1209 = and i32 %1205, 255
  %1210 = tail call i32 @llvm.ctpop.i32(i32 %1209)
  %1211 = trunc i32 %1210 to i8
  %1212 = and i8 %1211, 1
  %1213 = xor i8 %1212, 1
  store i8 %1213, i8* %42, align 1
  %1214 = xor i32 %1204, %1198
  %1215 = xor i32 %1214, %1205
  %1216 = lshr i32 %1215, 4
  %1217 = trunc i32 %1216 to i8
  %1218 = and i8 %1217, 1
  store i8 %1218, i8* %48, align 1
  %1219 = icmp eq i32 %1205, 0
  %1220 = zext i1 %1219 to i8
  store i8 %1220, i8* %49, align 1
  %1221 = lshr i32 %1205, 31
  %1222 = trunc i32 %1221 to i8
  store i8 %1222, i8* %52, align 1
  %1223 = lshr i32 %1198, 31
  %1224 = lshr i32 %1204, 31
  %1225 = xor i32 %1224, %1223
  %1226 = xor i32 %1221, %1223
  %1227 = add nuw nsw i32 %1226, %1225
  %1228 = icmp eq i32 %1227, 2
  %1229 = zext i1 %1228 to i8
  store i8 %1229, i8* %56, align 1
  %1230 = load i64, i64* bitcast (%G_0x6cea00_type* @G_0x6cea00 to i64*), align 8
  store i64 %1230, i64* %RAX.i56, align 8
  %1231 = load i64, i64* %RBP.i, align 8
  %1232 = add i64 %1231, -4
  %1233 = add i64 %1164, 47
  store i64 %1233, i64* %3, align 8
  %1234 = inttoptr i64 %1232 to i32*
  %1235 = load i32, i32* %1234, align 4
  %1236 = shl i32 %1235, 1
  %1237 = or i32 %1236, 1
  %1238 = zext i32 %1237 to i64
  store i64 %1238, i64* %RSI.i1120, align 8
  store i8 0, i8* %40, align 1
  %1239 = and i32 %1237, 255
  %1240 = tail call i32 @llvm.ctpop.i32(i32 %1239)
  %1241 = trunc i32 %1240 to i8
  %1242 = and i8 %1241, 1
  %1243 = xor i8 %1242, 1
  store i8 %1243, i8* %42, align 1
  store i8 0, i8* %48, align 1
  store i8 0, i8* %49, align 1
  %1244 = lshr i32 %1235, 30
  %1245 = and i32 %1244, 1
  %1246 = trunc i32 %1245 to i8
  store i8 %1246, i8* %52, align 1
  %1247 = lshr i32 %1235, 30
  %1248 = and i32 %1247, 1
  %1249 = xor i32 %1245, %1248
  %1250 = add nuw nsw i32 %1249, %1245
  %1251 = icmp eq i32 %1250, 2
  %1252 = zext i1 %1251 to i8
  store i8 %1252, i8* %56, align 1
  %1253 = sext i32 %1237 to i64
  store i64 %1253, i64* %RDX.i1151, align 8
  %1254 = shl nsw i64 %1253, 2
  %1255 = add i64 %1230, %1254
  %1256 = load i32, i32* %ECX.i763, align 4
  %1257 = add i64 %1164, 58
  store i64 %1257, i64* %3, align 8
  %1258 = inttoptr i64 %1255 to i32*
  store i32 %1256, i32* %1258, align 4
  %1259 = load i64, i64* %RBP.i, align 8
  %1260 = add i64 %1259, -4
  %1261 = load i64, i64* %3, align 8
  %1262 = add i64 %1261, 3
  store i64 %1262, i64* %3, align 8
  %1263 = inttoptr i64 %1260 to i32*
  %1264 = load i32, i32* %1263, align 4
  %1265 = add i32 %1264, 1
  %1266 = zext i32 %1265 to i64
  store i64 %1266, i64* %RAX.i56, align 8
  %1267 = icmp eq i32 %1264, -1
  %1268 = icmp eq i32 %1265, 0
  %1269 = or i1 %1267, %1268
  %1270 = zext i1 %1269 to i8
  store i8 %1270, i8* %40, align 1
  %1271 = and i32 %1265, 255
  %1272 = tail call i32 @llvm.ctpop.i32(i32 %1271)
  %1273 = trunc i32 %1272 to i8
  %1274 = and i8 %1273, 1
  %1275 = xor i8 %1274, 1
  store i8 %1275, i8* %42, align 1
  %1276 = xor i32 %1265, %1264
  %1277 = lshr i32 %1276, 4
  %1278 = trunc i32 %1277 to i8
  %1279 = and i8 %1278, 1
  store i8 %1279, i8* %48, align 1
  %1280 = zext i1 %1268 to i8
  store i8 %1280, i8* %49, align 1
  %1281 = lshr i32 %1265, 31
  %1282 = trunc i32 %1281 to i8
  store i8 %1282, i8* %52, align 1
  %1283 = lshr i32 %1264, 31
  %1284 = xor i32 %1281, %1283
  %1285 = add nuw nsw i32 %1284, %1281
  %1286 = icmp eq i32 %1285, 2
  %1287 = zext i1 %1286 to i8
  store i8 %1287, i8* %56, align 1
  %1288 = add i64 %1261, 9
  store i64 %1288, i64* %3, align 8
  store i32 %1265, i32* %1263, align 4
  %1289 = load i64, i64* %3, align 8
  %1290 = add i64 %1289, -149
  store i64 %1290, i64* %3, align 8
  br label %block_.L_42d289

block_.L_42d323:                                  ; preds = %block_.L_42d289
  %1291 = add i64 %1072, 201
  br label %block_.L_42d3ec

block_.L_42d328:                                  ; preds = %block_.L_42d1dc
  %1292 = add i64 %987, -12
  %1293 = add i64 %986, 3
  store i64 %1293, i64* %3, align 8
  %1294 = inttoptr i64 %1292 to i32*
  %1295 = load i32, i32* %1294, align 4
  %1296 = add i32 %1295, -1
  %1297 = zext i32 %1296 to i64
  store i64 %1297, i64* %RAX.i56, align 8
  %1298 = icmp eq i32 %1295, 0
  %1299 = zext i1 %1298 to i8
  store i8 %1299, i8* %40, align 1
  %1300 = and i32 %1296, 255
  %1301 = tail call i32 @llvm.ctpop.i32(i32 %1300)
  %1302 = trunc i32 %1301 to i8
  %1303 = and i8 %1302, 1
  %1304 = xor i8 %1303, 1
  store i8 %1304, i8* %42, align 1
  %1305 = xor i32 %1296, %1295
  %1306 = lshr i32 %1305, 4
  %1307 = trunc i32 %1306 to i8
  %1308 = and i8 %1307, 1
  store i8 %1308, i8* %48, align 1
  %1309 = icmp eq i32 %1296, 0
  %1310 = zext i1 %1309 to i8
  store i8 %1310, i8* %49, align 1
  %1311 = lshr i32 %1296, 31
  %1312 = trunc i32 %1311 to i8
  store i8 %1312, i8* %52, align 1
  %1313 = lshr i32 %1295, 31
  %1314 = xor i32 %1311, %1313
  %1315 = add nuw nsw i32 %1314, %1313
  %1316 = icmp eq i32 %1315, 2
  %1317 = zext i1 %1316 to i8
  store i8 %1317, i8* %56, align 1
  %1318 = load i64, i64* bitcast (%G_0x6cea00_type* @G_0x6cea00 to i64*), align 8
  store i64 %1318, i64* %RCX.i72, align 8
  %1319 = add i64 %986, 16
  store i64 %1319, i64* %3, align 8
  %1320 = inttoptr i64 %1318 to i32*
  store i32 %1296, i32* %1320, align 4
  %1321 = load i64, i64* %RBP.i, align 8
  %1322 = add i64 %1321, -8
  %1323 = load i64, i64* %3, align 8
  %1324 = add i64 %1323, 3
  store i64 %1324, i64* %3, align 8
  %1325 = inttoptr i64 %1322 to i32*
  %1326 = load i32, i32* %1325, align 4
  %1327 = zext i32 %1326 to i64
  store i64 %1327, i64* %RAX.i56, align 8
  %1328 = load i64, i64* bitcast (%G_0x6cea00_type* @G_0x6cea00 to i64*), align 8
  store i64 %1328, i64* %RCX.i72, align 8
  %1329 = add i64 %1328, 4
  %1330 = add i64 %1323, 14
  store i64 %1330, i64* %3, align 8
  %1331 = inttoptr i64 %1329 to i32*
  store i32 %1326, i32* %1331, align 4
  %1332 = load i64, i64* %RBP.i, align 8
  %1333 = add i64 %1332, -4
  %1334 = load i64, i64* %3, align 8
  %1335 = add i64 %1334, 7
  store i64 %1335, i64* %3, align 8
  %1336 = inttoptr i64 %1333 to i32*
  store i32 1, i32* %1336, align 4
  %.pre70 = load i64, i64* %3, align 8
  br label %block_.L_42d34d

block_.L_42d34d:                                  ; preds = %block_42d364, %block_.L_42d328
  %1337 = phi i64 [ %1593, %block_42d364 ], [ %.pre70, %block_.L_42d328 ]
  %1338 = load i64, i64* %RBP.i, align 8
  %1339 = add i64 %1338, -4
  %1340 = add i64 %1337, 3
  store i64 %1340, i64* %3, align 8
  %1341 = inttoptr i64 %1339 to i32*
  %1342 = load i32, i32* %1341, align 4
  %1343 = zext i32 %1342 to i64
  store i64 %1343, i64* %RAX.i56, align 8
  %1344 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*), align 8
  store i64 %1344, i64* %RCX.i72, align 8
  %1345 = add i64 %1344, 72376
  %1346 = add i64 %1337, 17
  store i64 %1346, i64* %3, align 8
  %1347 = inttoptr i64 %1345 to i32*
  %1348 = load i32, i32* %1347, align 4
  %1349 = sub i32 %1342, %1348
  %1350 = icmp ult i32 %1342, %1348
  %1351 = zext i1 %1350 to i8
  store i8 %1351, i8* %40, align 1
  %1352 = and i32 %1349, 255
  %1353 = tail call i32 @llvm.ctpop.i32(i32 %1352)
  %1354 = trunc i32 %1353 to i8
  %1355 = and i8 %1354, 1
  %1356 = xor i8 %1355, 1
  store i8 %1356, i8* %42, align 1
  %1357 = xor i32 %1348, %1342
  %1358 = xor i32 %1357, %1349
  %1359 = lshr i32 %1358, 4
  %1360 = trunc i32 %1359 to i8
  %1361 = and i8 %1360, 1
  store i8 %1361, i8* %48, align 1
  %1362 = icmp eq i32 %1349, 0
  %1363 = zext i1 %1362 to i8
  store i8 %1363, i8* %49, align 1
  %1364 = lshr i32 %1349, 31
  %1365 = trunc i32 %1364 to i8
  store i8 %1365, i8* %52, align 1
  %1366 = lshr i32 %1342, 31
  %1367 = lshr i32 %1348, 31
  %1368 = xor i32 %1367, %1366
  %1369 = xor i32 %1364, %1366
  %1370 = add nuw nsw i32 %1369, %1368
  %1371 = icmp eq i32 %1370, 2
  %1372 = zext i1 %1371 to i8
  store i8 %1372, i8* %56, align 1
  %1373 = icmp ne i8 %1365, 0
  %1374 = xor i1 %1373, %1371
  %.demorgan97 = or i1 %1362, %1374
  %.v100 = select i1 %.demorgan97, i64 23, i64 154
  %1375 = add i64 %1337, %.v100
  store i64 %1375, i64* %3, align 8
  br i1 %.demorgan97, label %block_42d364, label %block_.L_42d3e7

block_42d364:                                     ; preds = %block_.L_42d34d
  %1376 = load i64, i64* bitcast (%G_0x6cea00_type* @G_0x6cea00 to i64*), align 8
  store i64 %1376, i64* %RAX.i56, align 8
  %1377 = add i64 %1375, 11
  store i64 %1377, i64* %3, align 8
  %1378 = load i32, i32* %1341, align 4
  %1379 = shl i32 %1378, 1
  %1380 = add i32 %1379, -2
  %1381 = zext i32 %1380 to i64
  store i64 %1381, i64* %RCX.i72, align 8
  %1382 = icmp ult i32 %1379, 2
  %1383 = zext i1 %1382 to i8
  store i8 %1383, i8* %40, align 1
  %1384 = and i32 %1380, 254
  %1385 = tail call i32 @llvm.ctpop.i32(i32 %1384)
  %1386 = trunc i32 %1385 to i8
  %1387 = and i8 %1386, 1
  %1388 = xor i8 %1387, 1
  store i8 %1388, i8* %42, align 1
  %1389 = xor i32 %1380, %1379
  %1390 = lshr i32 %1389, 4
  %1391 = trunc i32 %1390 to i8
  %1392 = and i8 %1391, 1
  store i8 %1392, i8* %48, align 1
  %1393 = icmp eq i32 %1380, 0
  %1394 = zext i1 %1393 to i8
  store i8 %1394, i8* %49, align 1
  %1395 = lshr i32 %1380, 31
  %1396 = trunc i32 %1395 to i8
  store i8 %1396, i8* %52, align 1
  %1397 = lshr i32 %1378, 30
  %1398 = and i32 %1397, 1
  %1399 = xor i32 %1395, %1398
  %1400 = add nuw nsw i32 %1399, %1398
  %1401 = icmp eq i32 %1400, 2
  %1402 = zext i1 %1401 to i8
  store i8 %1402, i8* %56, align 1
  %1403 = sext i32 %1380 to i64
  store i64 %1403, i64* %RDX.i1151, align 8
  %1404 = shl nsw i64 %1403, 2
  %1405 = add i64 %1376, %1404
  %1406 = add i64 %1375, 22
  store i64 %1406, i64* %3, align 8
  %1407 = inttoptr i64 %1405 to i32*
  %1408 = load i32, i32* %1407, align 4
  %1409 = zext i32 %1408 to i64
  store i64 %1409, i64* %RCX.i72, align 8
  store i64 %1344, i64* %RAX.i56, align 8
  %1410 = add i64 %1344, 71904
  %1411 = add i64 %1375, 36
  store i64 %1411, i64* %3, align 8
  %1412 = inttoptr i64 %1410 to i32*
  %1413 = load i32, i32* %1412, align 4
  %1414 = sub i32 %1408, %1413
  %1415 = zext i32 %1414 to i64
  store i64 %1415, i64* %RCX.i72, align 8
  %1416 = icmp ult i32 %1408, %1413
  %1417 = zext i1 %1416 to i8
  store i8 %1417, i8* %40, align 1
  %1418 = and i32 %1414, 255
  %1419 = tail call i32 @llvm.ctpop.i32(i32 %1418)
  %1420 = trunc i32 %1419 to i8
  %1421 = and i8 %1420, 1
  %1422 = xor i8 %1421, 1
  store i8 %1422, i8* %42, align 1
  %1423 = xor i32 %1413, %1408
  %1424 = xor i32 %1423, %1414
  %1425 = lshr i32 %1424, 4
  %1426 = trunc i32 %1425 to i8
  %1427 = and i8 %1426, 1
  store i8 %1427, i8* %48, align 1
  %1428 = icmp eq i32 %1414, 0
  %1429 = zext i1 %1428 to i8
  store i8 %1429, i8* %49, align 1
  %1430 = lshr i32 %1414, 31
  %1431 = trunc i32 %1430 to i8
  store i8 %1431, i8* %52, align 1
  %1432 = lshr i32 %1408, 31
  %1433 = lshr i32 %1413, 31
  %1434 = xor i32 %1433, %1432
  %1435 = xor i32 %1430, %1432
  %1436 = add nuw nsw i32 %1435, %1434
  %1437 = icmp eq i32 %1436, 2
  %1438 = zext i1 %1437 to i8
  store i8 %1438, i8* %56, align 1
  %1439 = load i64, i64* bitcast (%G_0x6cea00_type* @G_0x6cea00 to i64*), align 8
  store i64 %1439, i64* %RAX.i56, align 8
  %1440 = load i64, i64* %RBP.i, align 8
  %1441 = add i64 %1440, -4
  %1442 = add i64 %1375, 47
  store i64 %1442, i64* %3, align 8
  %1443 = inttoptr i64 %1441 to i32*
  %1444 = load i32, i32* %1443, align 4
  %1445 = shl i32 %1444, 1
  %1446 = icmp slt i32 %1444, 0
  %1447 = icmp slt i32 %1445, 0
  %1448 = xor i1 %1446, %1447
  %1449 = zext i32 %1445 to i64
  store i64 %1449, i64* %RSI.i1120, align 8
  %.lobit44 = lshr i32 %1444, 31
  %1450 = trunc i32 %.lobit44 to i8
  store i8 %1450, i8* %40, align 1
  %1451 = and i32 %1445, 254
  %1452 = tail call i32 @llvm.ctpop.i32(i32 %1451)
  %1453 = trunc i32 %1452 to i8
  %1454 = and i8 %1453, 1
  %1455 = xor i8 %1454, 1
  store i8 %1455, i8* %42, align 1
  store i8 0, i8* %48, align 1
  %1456 = icmp eq i32 %1445, 0
  %1457 = zext i1 %1456 to i8
  store i8 %1457, i8* %49, align 1
  %1458 = lshr i32 %1444, 30
  %1459 = trunc i32 %1458 to i8
  %1460 = and i8 %1459, 1
  store i8 %1460, i8* %52, align 1
  %1461 = zext i1 %1448 to i8
  store i8 %1461, i8* %56, align 1
  %1462 = sext i32 %1445 to i64
  store i64 %1462, i64* %RDX.i1151, align 8
  %1463 = shl nsw i64 %1462, 2
  %1464 = add i64 %1439, %1463
  %1465 = add i64 %1375, 55
  store i64 %1465, i64* %3, align 8
  %1466 = inttoptr i64 %1464 to i32*
  store i32 %1414, i32* %1466, align 4
  %1467 = load i64, i64* %3, align 8
  %1468 = load i64, i64* bitcast (%G_0x6cea00_type* @G_0x6cea00 to i64*), align 8
  store i64 %1468, i64* %RAX.i56, align 8
  %1469 = load i64, i64* %RBP.i, align 8
  %1470 = add i64 %1469, -4
  %1471 = add i64 %1467, 11
  store i64 %1471, i64* %3, align 8
  %1472 = inttoptr i64 %1470 to i32*
  %1473 = load i32, i32* %1472, align 4
  %1474 = shl i32 %1473, 1
  %1475 = icmp eq i32 %1474, 0
  %1476 = zext i1 %1475 to i8
  %1477 = add i32 %1474, -1
  %1478 = zext i32 %1477 to i64
  store i64 %1478, i64* %RCX.i72, align 8
  store i8 %1476, i8* %40, align 1
  %1479 = and i32 %1477, 255
  %1480 = tail call i32 @llvm.ctpop.i32(i32 %1479)
  %1481 = trunc i32 %1480 to i8
  %1482 = and i8 %1481, 1
  %1483 = xor i8 %1482, 1
  store i8 %1483, i8* %42, align 1
  %1484 = xor i32 %1477, %1474
  %1485 = lshr i32 %1484, 4
  %1486 = trunc i32 %1485 to i8
  %1487 = and i8 %1486, 1
  store i8 %1487, i8* %48, align 1
  store i8 0, i8* %49, align 1
  %1488 = lshr i32 %1477, 31
  %1489 = trunc i32 %1488 to i8
  store i8 %1489, i8* %52, align 1
  %1490 = lshr i32 %1473, 30
  %1491 = and i32 %1490, 1
  %1492 = xor i32 %1488, %1491
  %1493 = add nuw nsw i32 %1492, %1491
  %1494 = icmp eq i32 %1493, 2
  %1495 = zext i1 %1494 to i8
  store i8 %1495, i8* %56, align 1
  %1496 = sext i32 %1477 to i64
  store i64 %1496, i64* %RDX.i1151, align 8
  %1497 = shl nsw i64 %1496, 2
  %1498 = add i64 %1468, %1497
  %1499 = add i64 %1467, 22
  store i64 %1499, i64* %3, align 8
  %1500 = inttoptr i64 %1498 to i32*
  %1501 = load i32, i32* %1500, align 4
  %1502 = zext i32 %1501 to i64
  store i64 %1502, i64* %RCX.i72, align 8
  %1503 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*), align 8
  store i64 %1503, i64* %RAX.i56, align 8
  %1504 = add i64 %1503, 71904
  %1505 = add i64 %1467, 36
  store i64 %1505, i64* %3, align 8
  %1506 = inttoptr i64 %1504 to i32*
  %1507 = load i32, i32* %1506, align 4
  %1508 = sub i32 %1501, %1507
  %1509 = zext i32 %1508 to i64
  store i64 %1509, i64* %RCX.i72, align 8
  %1510 = icmp ult i32 %1501, %1507
  %1511 = zext i1 %1510 to i8
  store i8 %1511, i8* %40, align 1
  %1512 = and i32 %1508, 255
  %1513 = tail call i32 @llvm.ctpop.i32(i32 %1512)
  %1514 = trunc i32 %1513 to i8
  %1515 = and i8 %1514, 1
  %1516 = xor i8 %1515, 1
  store i8 %1516, i8* %42, align 1
  %1517 = xor i32 %1507, %1501
  %1518 = xor i32 %1517, %1508
  %1519 = lshr i32 %1518, 4
  %1520 = trunc i32 %1519 to i8
  %1521 = and i8 %1520, 1
  store i8 %1521, i8* %48, align 1
  %1522 = icmp eq i32 %1508, 0
  %1523 = zext i1 %1522 to i8
  store i8 %1523, i8* %49, align 1
  %1524 = lshr i32 %1508, 31
  %1525 = trunc i32 %1524 to i8
  store i8 %1525, i8* %52, align 1
  %1526 = lshr i32 %1501, 31
  %1527 = lshr i32 %1507, 31
  %1528 = xor i32 %1527, %1526
  %1529 = xor i32 %1524, %1526
  %1530 = add nuw nsw i32 %1529, %1528
  %1531 = icmp eq i32 %1530, 2
  %1532 = zext i1 %1531 to i8
  store i8 %1532, i8* %56, align 1
  %1533 = load i64, i64* bitcast (%G_0x6cea00_type* @G_0x6cea00 to i64*), align 8
  store i64 %1533, i64* %RAX.i56, align 8
  %1534 = load i64, i64* %RBP.i, align 8
  %1535 = add i64 %1534, -4
  %1536 = add i64 %1467, 47
  store i64 %1536, i64* %3, align 8
  %1537 = inttoptr i64 %1535 to i32*
  %1538 = load i32, i32* %1537, align 4
  %1539 = shl i32 %1538, 1
  %1540 = or i32 %1539, 1
  %1541 = zext i32 %1540 to i64
  store i64 %1541, i64* %RSI.i1120, align 8
  store i8 0, i8* %40, align 1
  %1542 = and i32 %1540, 255
  %1543 = tail call i32 @llvm.ctpop.i32(i32 %1542)
  %1544 = trunc i32 %1543 to i8
  %1545 = and i8 %1544, 1
  %1546 = xor i8 %1545, 1
  store i8 %1546, i8* %42, align 1
  store i8 0, i8* %48, align 1
  store i8 0, i8* %49, align 1
  %1547 = lshr i32 %1538, 30
  %1548 = and i32 %1547, 1
  %1549 = trunc i32 %1548 to i8
  store i8 %1549, i8* %52, align 1
  %1550 = lshr i32 %1538, 30
  %1551 = and i32 %1550, 1
  %1552 = xor i32 %1548, %1551
  %1553 = add nuw nsw i32 %1552, %1548
  %1554 = icmp eq i32 %1553, 2
  %1555 = zext i1 %1554 to i8
  store i8 %1555, i8* %56, align 1
  %1556 = sext i32 %1540 to i64
  store i64 %1556, i64* %RDX.i1151, align 8
  %1557 = shl nsw i64 %1556, 2
  %1558 = add i64 %1533, %1557
  %1559 = load i32, i32* %ECX.i763, align 4
  %1560 = add i64 %1467, 58
  store i64 %1560, i64* %3, align 8
  %1561 = inttoptr i64 %1558 to i32*
  store i32 %1559, i32* %1561, align 4
  %1562 = load i64, i64* %RBP.i, align 8
  %1563 = add i64 %1562, -4
  %1564 = load i64, i64* %3, align 8
  %1565 = add i64 %1564, 3
  store i64 %1565, i64* %3, align 8
  %1566 = inttoptr i64 %1563 to i32*
  %1567 = load i32, i32* %1566, align 4
  %1568 = add i32 %1567, 1
  %1569 = zext i32 %1568 to i64
  store i64 %1569, i64* %RAX.i56, align 8
  %1570 = icmp eq i32 %1567, -1
  %1571 = icmp eq i32 %1568, 0
  %1572 = or i1 %1570, %1571
  %1573 = zext i1 %1572 to i8
  store i8 %1573, i8* %40, align 1
  %1574 = and i32 %1568, 255
  %1575 = tail call i32 @llvm.ctpop.i32(i32 %1574)
  %1576 = trunc i32 %1575 to i8
  %1577 = and i8 %1576, 1
  %1578 = xor i8 %1577, 1
  store i8 %1578, i8* %42, align 1
  %1579 = xor i32 %1568, %1567
  %1580 = lshr i32 %1579, 4
  %1581 = trunc i32 %1580 to i8
  %1582 = and i8 %1581, 1
  store i8 %1582, i8* %48, align 1
  %1583 = zext i1 %1571 to i8
  store i8 %1583, i8* %49, align 1
  %1584 = lshr i32 %1568, 31
  %1585 = trunc i32 %1584 to i8
  store i8 %1585, i8* %52, align 1
  %1586 = lshr i32 %1567, 31
  %1587 = xor i32 %1584, %1586
  %1588 = add nuw nsw i32 %1587, %1584
  %1589 = icmp eq i32 %1588, 2
  %1590 = zext i1 %1589 to i8
  store i8 %1590, i8* %56, align 1
  %1591 = add i64 %1564, 9
  store i64 %1591, i64* %3, align 8
  store i32 %1568, i32* %1566, align 4
  %1592 = load i64, i64* %3, align 8
  %1593 = add i64 %1592, -149
  store i64 %1593, i64* %3, align 8
  br label %block_.L_42d34d

block_.L_42d3e7:                                  ; preds = %block_.L_42d34d
  %1594 = add i64 %1375, 5
  store i64 %1594, i64* %3, align 8
  br label %block_.L_42d3ec

block_.L_42d3ec:                                  ; preds = %block_.L_42d3e7, %block_.L_42d323
  %1595 = phi i64 [ %1035, %block_.L_42d323 ], [ %1338, %block_.L_42d3e7 ]
  %1596 = phi i64 [ %1041, %block_.L_42d323 ], [ %1344, %block_.L_42d3e7 ]
  %storemerge41 = phi i64 [ %1291, %block_.L_42d323 ], [ %1594, %block_.L_42d3e7 ]
  %1597 = load i64, i64* bitcast (%G_0x6cb8f8_type* @G_0x6cb8f8 to i64*), align 8
  store i64 %1597, i64* %RAX.i56, align 8
  %1598 = add i64 %1597, 2440
  %1599 = add i64 %storemerge41, 15
  store i64 %1599, i64* %3, align 8
  %1600 = inttoptr i64 %1598 to i32*
  %1601 = load i32, i32* %1600, align 4
  store i8 0, i8* %40, align 1
  %1602 = and i32 %1601, 255
  %1603 = tail call i32 @llvm.ctpop.i32(i32 %1602)
  %1604 = trunc i32 %1603 to i8
  %1605 = and i8 %1604, 1
  %1606 = xor i8 %1605, 1
  store i8 %1606, i8* %42, align 1
  store i8 0, i8* %48, align 1
  %1607 = icmp eq i32 %1601, 0
  %1608 = zext i1 %1607 to i8
  store i8 %1608, i8* %49, align 1
  %1609 = lshr i32 %1601, 31
  %1610 = trunc i32 %1609 to i8
  store i8 %1610, i8* %52, align 1
  store i8 0, i8* %56, align 1
  %.v101 = select i1 %1607, i64 88, i64 21
  %1611 = add i64 %storemerge41, %.v101
  store i64 %1611, i64* %3, align 8
  br i1 %1607, label %block_.L_42d444, label %block_42d401

block_42d401:                                     ; preds = %block_.L_42d3ec
  store i64 %1596, i64* %RAX.i56, align 8
  %1612 = add i64 %1611, 10
  store i64 %1612, i64* %3, align 8
  %1613 = inttoptr i64 %1596 to i32*
  %1614 = load i32, i32* %1613, align 4
  %1615 = add i32 %1614, 1
  %1616 = zext i32 %1615 to i64
  store i64 %1616, i64* %RCX.i72, align 8
  %1617 = icmp eq i32 %1614, -1
  %1618 = icmp eq i32 %1615, 0
  %1619 = or i1 %1617, %1618
  %1620 = zext i1 %1619 to i8
  store i8 %1620, i8* %40, align 1
  %1621 = and i32 %1615, 255
  %1622 = tail call i32 @llvm.ctpop.i32(i32 %1621)
  %1623 = trunc i32 %1622 to i8
  %1624 = and i8 %1623, 1
  %1625 = xor i8 %1624, 1
  store i8 %1625, i8* %42, align 1
  %1626 = xor i32 %1615, %1614
  %1627 = lshr i32 %1626, 4
  %1628 = trunc i32 %1627 to i8
  %1629 = and i8 %1628, 1
  store i8 %1629, i8* %48, align 1
  %1630 = zext i1 %1618 to i8
  store i8 %1630, i8* %49, align 1
  %1631 = lshr i32 %1615, 31
  %1632 = trunc i32 %1631 to i8
  store i8 %1632, i8* %52, align 1
  %1633 = lshr i32 %1614, 31
  %1634 = xor i32 %1631, %1633
  %1635 = add nuw nsw i32 %1634, %1631
  %1636 = icmp eq i32 %1635, 2
  %1637 = zext i1 %1636 to i8
  store i8 %1637, i8* %56, align 1
  store i64 %1597, i64* %RAX.i56, align 8
  %1638 = add i64 %1597, 8
  %1639 = add i64 %1611, 24
  store i64 %1639, i64* %3, align 8
  %1640 = inttoptr i64 %1638 to i32*
  %1641 = load i32, i32* %1640, align 4
  %1642 = sub i32 %1615, %1641
  %1643 = icmp ult i32 %1615, %1641
  %1644 = zext i1 %1643 to i8
  store i8 %1644, i8* %40, align 1
  %1645 = and i32 %1642, 255
  %1646 = tail call i32 @llvm.ctpop.i32(i32 %1645)
  %1647 = trunc i32 %1646 to i8
  %1648 = and i8 %1647, 1
  %1649 = xor i8 %1648, 1
  store i8 %1649, i8* %42, align 1
  %1650 = xor i32 %1641, %1615
  %1651 = xor i32 %1650, %1642
  %1652 = lshr i32 %1651, 4
  %1653 = trunc i32 %1652 to i8
  %1654 = and i8 %1653, 1
  store i8 %1654, i8* %48, align 1
  %1655 = icmp eq i32 %1642, 0
  %1656 = zext i1 %1655 to i8
  store i8 %1656, i8* %49, align 1
  %1657 = lshr i32 %1642, 31
  %1658 = trunc i32 %1657 to i8
  store i8 %1658, i8* %52, align 1
  %1659 = lshr i32 %1641, 31
  %1660 = xor i32 %1659, %1631
  %1661 = xor i32 %1657, %1631
  %1662 = add nuw nsw i32 %1661, %1660
  %1663 = icmp eq i32 %1662, 2
  %1664 = zext i1 %1663 to i8
  store i8 %1664, i8* %56, align 1
  %.v102 = select i1 %1655, i64 30, i64 67
  %1665 = add i64 %1611, %.v102
  store i64 %1665, i64* %3, align 8
  br i1 %1655, label %block_42d41f, label %block_.L_42d444

block_42d41f:                                     ; preds = %block_42d401
  store i64 %1597, i64* %RAX.i56, align 8
  %1666 = add i64 %1665, 14
  store i64 %1666, i64* %3, align 8
  %1667 = load i32, i32* %1600, align 4
  %1668 = zext i32 %1667 to i64
  store i64 %1668, i64* %RCX.i72, align 8
  %1669 = add i64 %1595, -12
  %1670 = add i64 %1665, 17
  store i64 %1670, i64* %3, align 8
  %1671 = inttoptr i64 %1669 to i32*
  store i32 %1667, i32* %1671, align 4
  %1672 = load i64, i64* %RBP.i, align 8
  %1673 = add i64 %1672, -12
  %1674 = load i64, i64* %3, align 8
  %1675 = add i64 %1674, 3
  store i64 %1675, i64* %3, align 8
  %1676 = inttoptr i64 %1673 to i32*
  %1677 = load i32, i32* %1676, align 4
  %1678 = zext i32 %1677 to i64
  store i64 %1678, i64* %RCX.i72, align 8
  %1679 = add i64 %1672, -8
  %1680 = add i64 %1674, 6
  store i64 %1680, i64* %3, align 8
  %1681 = inttoptr i64 %1679 to i32*
  %1682 = load i32, i32* %1681, align 4
  %1683 = sub i32 %1677, %1682
  %1684 = zext i32 %1683 to i64
  store i64 %1684, i64* %RCX.i72, align 8
  %1685 = icmp ult i32 %1677, %1682
  %1686 = zext i1 %1685 to i8
  store i8 %1686, i8* %40, align 1
  %1687 = and i32 %1683, 255
  %1688 = tail call i32 @llvm.ctpop.i32(i32 %1687)
  %1689 = trunc i32 %1688 to i8
  %1690 = and i8 %1689, 1
  %1691 = xor i8 %1690, 1
  store i8 %1691, i8* %42, align 1
  %1692 = xor i32 %1682, %1677
  %1693 = xor i32 %1692, %1683
  %1694 = lshr i32 %1693, 4
  %1695 = trunc i32 %1694 to i8
  %1696 = and i8 %1695, 1
  store i8 %1696, i8* %48, align 1
  %1697 = icmp eq i32 %1683, 0
  %1698 = zext i1 %1697 to i8
  store i8 %1698, i8* %49, align 1
  %1699 = lshr i32 %1683, 31
  %1700 = trunc i32 %1699 to i8
  store i8 %1700, i8* %52, align 1
  %1701 = lshr i32 %1677, 31
  %1702 = lshr i32 %1682, 31
  %1703 = xor i32 %1702, %1701
  %1704 = xor i32 %1699, %1701
  %1705 = add nuw nsw i32 %1704, %1703
  %1706 = icmp eq i32 %1705, 2
  %1707 = zext i1 %1706 to i8
  store i8 %1707, i8* %56, align 1
  %1708 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*), align 8
  store i64 %1708, i64* %RAX.i56, align 8
  %1709 = add i64 %1708, 71904
  %1710 = add i64 %1674, 20
  store i64 %1710, i64* %3, align 8
  %1711 = inttoptr i64 %1709 to i32*
  store i32 %1683, i32* %1711, align 4
  %.pre71 = load i64, i64* %3, align 8
  %.pre72 = load i64, i64* bitcast (%G_0x6cb8f8_type* @G_0x6cb8f8 to i64*), align 8
  %.pre73 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*), align 8
  br label %block_.L_42d444

block_.L_42d444:                                  ; preds = %block_42d401, %block_42d41f, %block_.L_42d3ec
  %1712 = phi i64 [ %.pre73, %block_42d41f ], [ %1596, %block_42d401 ], [ %1596, %block_.L_42d3ec ]
  %1713 = phi i64 [ %.pre72, %block_42d41f ], [ %1597, %block_42d401 ], [ %1597, %block_.L_42d3ec ]
  %1714 = phi i64 [ %.pre71, %block_42d41f ], [ %1665, %block_42d401 ], [ %1611, %block_.L_42d3ec ]
  %1715 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1
  %1716 = add i64 %1714, ptrtoint (%G_0x84414__rip__type* @G_0x84414__rip_ to i64)
  %1717 = add i64 %1714, 8
  store i64 %1717, i64* %3, align 8
  %1718 = inttoptr i64 %1716 to i64*
  %1719 = load i64, i64* %1718, align 8
  %1720 = bitcast [32 x %union.VectorReg]* %1715 to double*
  %1721 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1715, i64 0, i64 0, i32 0, i32 0, i32 0, i64 0
  store i64 %1719, i64* %1721, align 1
  %1722 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 1
  %1723 = bitcast i64* %1722 to double*
  store double 0.000000e+00, double* %1723, align 1
  store i64 %1713, i64* %RAX.i56, align 8
  %1724 = add i64 %1713, 20
  %1725 = add i64 %1714, 19
  store i64 %1725, i64* %3, align 8
  %1726 = inttoptr i64 %1724 to i32*
  %1727 = load i32, i32* %1726, align 4
  %1728 = add i32 %1727, 1
  %1729 = zext i32 %1728 to i64
  store i64 %1729, i64* %RCX.i72, align 8
  %1730 = icmp eq i32 %1727, -1
  %1731 = icmp eq i32 %1728, 0
  %1732 = or i1 %1730, %1731
  %1733 = zext i1 %1732 to i8
  store i8 %1733, i8* %40, align 1
  %1734 = and i32 %1728, 255
  %1735 = tail call i32 @llvm.ctpop.i32(i32 %1734)
  %1736 = trunc i32 %1735 to i8
  %1737 = and i8 %1736, 1
  %1738 = xor i8 %1737, 1
  store i8 %1738, i8* %42, align 1
  %1739 = xor i32 %1728, %1727
  %1740 = lshr i32 %1739, 4
  %1741 = trunc i32 %1740 to i8
  %1742 = and i8 %1741, 1
  store i8 %1742, i8* %48, align 1
  %1743 = zext i1 %1731 to i8
  store i8 %1743, i8* %49, align 1
  %1744 = lshr i32 %1728, 31
  %1745 = trunc i32 %1744 to i8
  store i8 %1745, i8* %52, align 1
  %1746 = lshr i32 %1727, 31
  %1747 = xor i32 %1744, %1746
  %1748 = add nuw nsw i32 %1747, %1744
  %1749 = icmp eq i32 %1748, 2
  %1750 = zext i1 %1749 to i8
  store i8 %1750, i8* %56, align 1
  %1751 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1
  %1752 = sitofp i32 %1728 to double
  %1753 = bitcast %union.VectorReg* %1751 to double*
  store double %1752, double* %1753, align 1
  store i64 %1713, i64* %RAX.i56, align 8
  %1754 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 2
  %1755 = add i64 %1713, 1236
  %1756 = add i64 %1714, 42
  store i64 %1756, i64* %3, align 8
  %1757 = inttoptr i64 %1755 to i32*
  %1758 = load i32, i32* %1757, align 4
  %1759 = sitofp i32 %1758 to double
  %1760 = bitcast %union.VectorReg* %1754 to double*
  %1761 = bitcast i64 %1719 to double
  %1762 = fadd double %1759, %1761
  store double %1762, double* %1760, align 1
  %1763 = fdiv double %1752, %1762
  store double %1763, double* %1753, align 1
  %1764 = add i64 %1712, 71896
  %1765 = add i64 %1714, 66
  store i64 %1765, i64* %3, align 8
  %1766 = inttoptr i64 %1764 to double*
  store double %1763, double* %1766, align 8
  %1767 = load i64, i64* %3, align 8
  %1768 = load i64, i64* bitcast (%G_0x6cb8f8_type* @G_0x6cb8f8 to i64*), align 8
  store i64 %1768, i64* %RAX.i56, align 8
  %1769 = add i64 %1768, 1320
  %1770 = add i64 %1767, 15
  store i64 %1770, i64* %3, align 8
  %1771 = inttoptr i64 %1769 to i32*
  %1772 = load i32, i32* %1771, align 4
  %1773 = add i32 %1772, -3
  %1774 = icmp ult i32 %1772, 3
  %1775 = zext i1 %1774 to i8
  store i8 %1775, i8* %40, align 1
  %1776 = and i32 %1773, 255
  %1777 = tail call i32 @llvm.ctpop.i32(i32 %1776)
  %1778 = trunc i32 %1777 to i8
  %1779 = and i8 %1778, 1
  %1780 = xor i8 %1779, 1
  store i8 %1780, i8* %42, align 1
  %1781 = xor i32 %1773, %1772
  %1782 = lshr i32 %1781, 4
  %1783 = trunc i32 %1782 to i8
  %1784 = and i8 %1783, 1
  store i8 %1784, i8* %48, align 1
  %1785 = icmp eq i32 %1773, 0
  %1786 = zext i1 %1785 to i8
  store i8 %1786, i8* %49, align 1
  %1787 = lshr i32 %1773, 31
  %1788 = trunc i32 %1787 to i8
  store i8 %1788, i8* %52, align 1
  %1789 = lshr i32 %1772, 31
  %1790 = xor i32 %1787, %1789
  %1791 = add nuw nsw i32 %1790, %1789
  %1792 = icmp eq i32 %1791, 2
  %1793 = zext i1 %1792 to i8
  store i8 %1793, i8* %56, align 1
  %.v103 = select i1 %1785, i64 21, i64 45
  %1794 = add i64 %1767, %.v103
  store i64 %1794, i64* %3, align 8
  br i1 %1785, label %block_42d49b, label %block_.L_42d4b3

block_42d49b:                                     ; preds = %block_.L_42d444
  %1795 = add i64 %1794, ptrtoint (%G_0x843bd__rip__type* @G_0x843bd__rip_ to i64)
  %1796 = add i64 %1794, 8
  store i64 %1796, i64* %3, align 8
  %1797 = inttoptr i64 %1795 to i64*
  %1798 = load i64, i64* %1797, align 8
  store i64 %1798, i64* %1721, align 1
  store double 0.000000e+00, double* %1723, align 1
  %1799 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*), align 8
  store i64 %1799, i64* %RAX.i56, align 8
  %1800 = add i64 %1799, 71896
  %1801 = add i64 %1794, 24
  store i64 %1801, i64* %3, align 8
  %1802 = inttoptr i64 %1800 to i64*
  store i64 %1798, i64* %1802, align 8
  %.pre74 = load i64, i64* %3, align 8
  %.pre75 = load i64, i64* bitcast (%G_0x6cb8f8_type* @G_0x6cb8f8 to i64*), align 8
  br label %block_.L_42d4b3

block_.L_42d4b3:                                  ; preds = %block_.L_42d444, %block_42d49b
  %1803 = phi i64 [ %.pre75, %block_42d49b ], [ %1768, %block_.L_42d444 ]
  %1804 = phi i64 [ %.pre74, %block_42d49b ], [ %1794, %block_.L_42d444 ]
  store i64 %1803, i64* %RAX.i56, align 8
  %1805 = add i64 %1803, 1320
  %1806 = add i64 %1804, 15
  store i64 %1806, i64* %3, align 8
  %1807 = inttoptr i64 %1805 to i32*
  %1808 = load i32, i32* %1807, align 4
  store i8 0, i8* %40, align 1
  %1809 = and i32 %1808, 255
  %1810 = tail call i32 @llvm.ctpop.i32(i32 %1809)
  %1811 = trunc i32 %1810 to i8
  %1812 = and i8 %1811, 1
  %1813 = xor i8 %1812, 1
  store i8 %1813, i8* %42, align 1
  store i8 0, i8* %48, align 1
  %1814 = icmp eq i32 %1808, 0
  %1815 = zext i1 %1814 to i8
  store i8 %1815, i8* %49, align 1
  %1816 = lshr i32 %1808, 31
  %1817 = trunc i32 %1816 to i8
  store i8 %1817, i8* %52, align 1
  store i8 0, i8* %56, align 1
  %.v104 = select i1 %1814, i64 122, i64 21
  %1818 = add i64 %1804, %.v104
  store i64 %1818, i64* %3, align 8
  br i1 %1814, label %block_.L_42d52d, label %block_42d4c8

block_42d4c8:                                     ; preds = %block_.L_42d4b3
  %1819 = add i64 %1818, ptrtoint (%G_0x84390__rip__type* @G_0x84390__rip_ to i64)
  %1820 = add i64 %1818, 8
  store i64 %1820, i64* %3, align 8
  %1821 = inttoptr i64 %1819 to i64*
  %1822 = load i64, i64* %1821, align 8
  store i64 %1822, i64* %1721, align 1
  store double 0.000000e+00, double* %1723, align 1
  %1823 = load i64, i64* %RBP.i, align 8
  %1824 = add i64 %1823, -8
  %1825 = add i64 %1818, 11
  store i64 %1825, i64* %3, align 8
  %1826 = inttoptr i64 %1824 to i32*
  %1827 = load i32, i32* %1826, align 4
  %1828 = zext i32 %1827 to i64
  store i64 %1828, i64* %RAX.i56, align 8
  %1829 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*), align 8
  store i64 %1829, i64* %RCX.i72, align 8
  %1830 = add i64 %1829, 71896
  %1831 = add i64 %1818, 27
  store i64 %1831, i64* %3, align 8
  %1832 = bitcast i64 %1822 to double
  %1833 = inttoptr i64 %1830 to double*
  %1834 = load double, double* %1833, align 8
  %1835 = fadd double %1832, %1834
  store double %1835, double* %1720, align 1
  store i64 0, i64* %1722, align 1
  %1836 = load i64, i64* bitcast (%G_0x6d0278_type* @G_0x6d0278 to i64*), align 8
  store i64 %1836, i64* %RCX.i72, align 8
  store i64 %1829, i64* %RDX.i1151, align 8
  %1837 = add i64 %1829, 71908
  %1838 = add i64 %1818, 49
  store i64 %1838, i64* %3, align 8
  %1839 = inttoptr i64 %1837 to i32*
  %1840 = load i32, i32* %1839, align 4
  %1841 = add i32 %1840, -1
  %1842 = zext i32 %1841 to i64
  store i64 %1842, i64* %RSI.i1120, align 8
  %1843 = sext i32 %1841 to i64
  %1844 = mul nsw i64 %1843, 24
  store i64 %1844, i64* %RDX.i1151, align 8
  %1845 = lshr i64 %1844, 63
  %1846 = add i64 %1844, %1836
  store i64 %1846, i64* %RCX.i72, align 8
  %1847 = icmp ult i64 %1846, %1836
  %1848 = icmp ult i64 %1846, %1844
  %1849 = or i1 %1847, %1848
  %1850 = zext i1 %1849 to i8
  store i8 %1850, i8* %40, align 1
  %1851 = trunc i64 %1846 to i32
  %1852 = and i32 %1851, 255
  %1853 = tail call i32 @llvm.ctpop.i32(i32 %1852)
  %1854 = trunc i32 %1853 to i8
  %1855 = and i8 %1854, 1
  %1856 = xor i8 %1855, 1
  store i8 %1856, i8* %42, align 1
  %1857 = xor i64 %1844, %1836
  %1858 = xor i64 %1857, %1846
  %1859 = lshr i64 %1858, 4
  %1860 = trunc i64 %1859 to i8
  %1861 = and i8 %1860, 1
  store i8 %1861, i8* %48, align 1
  %1862 = icmp eq i64 %1846, 0
  %1863 = zext i1 %1862 to i8
  store i8 %1863, i8* %49, align 1
  %1864 = lshr i64 %1846, 63
  %1865 = trunc i64 %1864 to i8
  store i8 %1865, i8* %52, align 1
  %1866 = lshr i64 %1836, 63
  %1867 = xor i64 %1864, %1866
  %1868 = xor i64 %1864, %1845
  %1869 = add nuw nsw i64 %1867, %1868
  %1870 = icmp eq i64 %1869, 2
  %1871 = zext i1 %1870 to i8
  store i8 %1871, i8* %56, align 1
  %1872 = add i64 %1846, 4
  %1873 = add i64 %1818, 65
  store i64 %1873, i64* %3, align 8
  %1874 = inttoptr i64 %1872 to i32*
  %1875 = load i32, i32* %1874, align 4
  %1876 = add i32 %1875, 1
  %1877 = sitofp i32 %1876 to double
  store double %1877, double* %1753, align 1
  %1878 = load double, double* %1720, align 1
  %1879 = fmul double %1877, %1878
  store double %1879, double* %1720, align 1
  %1880 = tail call double @llvm.trunc.f64(double %1879)
  %1881 = tail call double @llvm.fabs.f64(double %1880)
  %1882 = fcmp ogt double %1881, 0x41DFFFFFFFC00000
  %1883 = fptosi double %1880 to i32
  %1884 = zext i32 %1883 to i64
  %1885 = select i1 %1882, i64 2147483648, i64 %1884
  store i64 %1885, i64* %RSI.i1120, align 8
  %1886 = load i64, i64* %RAX.i56, align 8
  %1887 = trunc i64 %1885 to i32
  %1888 = trunc i64 %1886 to i32
  %1889 = add i32 %1887, %1888
  %1890 = zext i32 %1889 to i64
  store i64 %1890, i64* %RAX.i56, align 8
  %1891 = icmp ult i32 %1889, %1888
  %1892 = icmp ult i32 %1889, %1887
  %1893 = or i1 %1891, %1892
  %1894 = zext i1 %1893 to i8
  store i8 %1894, i8* %40, align 1
  %1895 = and i32 %1889, 255
  %1896 = tail call i32 @llvm.ctpop.i32(i32 %1895)
  %1897 = trunc i32 %1896 to i8
  %1898 = and i8 %1897, 1
  %1899 = xor i8 %1898, 1
  store i8 %1899, i8* %42, align 1
  %1900 = xor i64 %1885, %1886
  %1901 = trunc i64 %1900 to i32
  %1902 = xor i32 %1901, %1889
  %1903 = lshr i32 %1902, 4
  %1904 = trunc i32 %1903 to i8
  %1905 = and i8 %1904, 1
  store i8 %1905, i8* %48, align 1
  %1906 = icmp eq i32 %1889, 0
  %1907 = zext i1 %1906 to i8
  store i8 %1907, i8* %49, align 1
  %1908 = lshr i32 %1889, 31
  %1909 = trunc i32 %1908 to i8
  store i8 %1909, i8* %52, align 1
  %1910 = lshr i32 %1888, 31
  %1911 = lshr i32 %1887, 31
  %1912 = xor i32 %1908, %1910
  %1913 = xor i32 %1908, %1911
  %1914 = add nuw nsw i32 %1912, %1913
  %1915 = icmp eq i32 %1914, 2
  %1916 = zext i1 %1915 to i8
  store i8 %1916, i8* %56, align 1
  %1917 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*), align 8
  store i64 %1917, i64* %RCX.i72, align 8
  %1918 = add i64 %1917, 71792
  %1919 = add i64 %1818, 96
  store i64 %1919, i64* %3, align 8
  %1920 = inttoptr i64 %1918 to i32*
  store i32 %1889, i32* %1920, align 4
  %1921 = load i64, i64* %3, align 8
  %1922 = add i64 %1921, 72
  store i64 %1922, i64* %3, align 8
  br label %block_.L_42d570

block_.L_42d52d:                                  ; preds = %block_.L_42d4b3
  %1923 = add i64 %1818, ptrtoint (%G_0x8432b__rip__type* @G_0x8432b__rip_ to i64)
  %1924 = add i64 %1818, 8
  store i64 %1924, i64* %3, align 8
  %1925 = inttoptr i64 %1923 to i64*
  %1926 = load i64, i64* %1925, align 8
  store i64 %1926, i64* %1721, align 1
  store double 0.000000e+00, double* %1723, align 1
  %1927 = load i64, i64* %RBP.i, align 8
  %1928 = add i64 %1927, -8
  %1929 = add i64 %1818, 11
  store i64 %1929, i64* %3, align 8
  %1930 = inttoptr i64 %1928 to i32*
  %1931 = load i32, i32* %1930, align 4
  %1932 = zext i32 %1931 to i64
  store i64 %1932, i64* %RAX.i56, align 8
  %1933 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*), align 8
  store i64 %1933, i64* %RCX.i72, align 8
  %1934 = add i64 %1933, 71896
  %1935 = add i64 %1818, 27
  store i64 %1935, i64* %3, align 8
  %1936 = bitcast i64 %1926 to double
  %1937 = inttoptr i64 %1934 to double*
  %1938 = load double, double* %1937, align 8
  %1939 = fadd double %1936, %1938
  store double %1939, double* %1720, align 1
  store i64 0, i64* %1722, align 1
  store i64 %1933, i64* %RCX.i72, align 8
  %1940 = add i64 %1933, 71908
  %1941 = add i64 %1818, 43
  store i64 %1941, i64* %3, align 8
  %1942 = inttoptr i64 %1940 to i32*
  %1943 = load i32, i32* %1942, align 4
  %1944 = sitofp i32 %1943 to double
  store double %1944, double* %1753, align 1
  %1945 = fmul double %1944, %1939
  store double %1945, double* %1720, align 1
  store i64 0, i64* %1722, align 1
  %1946 = tail call double @llvm.trunc.f64(double %1945)
  %1947 = tail call double @llvm.fabs.f64(double %1946)
  %1948 = fcmp ogt double %1947, 0x41DFFFFFFFC00000
  %1949 = fptosi double %1946 to i32
  %1950 = zext i32 %1949 to i64
  %1951 = select i1 %1948, i64 2147483648, i64 %1950
  store i64 %1951, i64* %RDX.i1151, align 8
  %1952 = trunc i64 %1951 to i32
  %1953 = add i32 %1952, %1931
  %1954 = zext i32 %1953 to i64
  store i64 %1954, i64* %RAX.i56, align 8
  %1955 = icmp ult i32 %1953, %1931
  %1956 = icmp ult i32 %1953, %1952
  %1957 = or i1 %1955, %1956
  %1958 = zext i1 %1957 to i8
  store i8 %1958, i8* %40, align 1
  %1959 = and i32 %1953, 255
  %1960 = tail call i32 @llvm.ctpop.i32(i32 %1959)
  %1961 = trunc i32 %1960 to i8
  %1962 = and i8 %1961, 1
  %1963 = xor i8 %1962, 1
  store i8 %1963, i8* %42, align 1
  %1964 = xor i64 %1951, %1932
  %1965 = trunc i64 %1964 to i32
  %1966 = xor i32 %1965, %1953
  %1967 = lshr i32 %1966, 4
  %1968 = trunc i32 %1967 to i8
  %1969 = and i8 %1968, 1
  store i8 %1969, i8* %48, align 1
  %1970 = icmp eq i32 %1953, 0
  %1971 = zext i1 %1970 to i8
  store i8 %1971, i8* %49, align 1
  %1972 = lshr i32 %1953, 31
  %1973 = trunc i32 %1972 to i8
  store i8 %1973, i8* %52, align 1
  %1974 = lshr i32 %1931, 31
  %1975 = lshr i32 %1952, 31
  %1976 = xor i32 %1972, %1974
  %1977 = xor i32 %1972, %1975
  %1978 = add nuw nsw i32 %1976, %1977
  %1979 = icmp eq i32 %1978, 2
  %1980 = zext i1 %1979 to i8
  store i8 %1980, i8* %56, align 1
  store i64 %1933, i64* %RCX.i72, align 8
  %1981 = add i64 %1933, 71792
  %1982 = add i64 %1818, 67
  store i64 %1982, i64* %3, align 8
  %1983 = inttoptr i64 %1981 to i32*
  store i32 %1953, i32* %1983, align 4
  %.pre76 = load i64, i64* %3, align 8
  br label %block_.L_42d570

block_.L_42d570:                                  ; preds = %block_.L_42d52d, %block_42d4c8
  %1984 = phi i64 [ %.pre76, %block_.L_42d52d ], [ %1922, %block_42d4c8 ]
  %1985 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*), align 8
  store i64 %1985, i64* %RAX.i56, align 8
  %1986 = add i64 %1985, 71792
  %1987 = add i64 %1984, 14
  store i64 %1987, i64* %3, align 8
  %1988 = inttoptr i64 %1986 to i32*
  %1989 = load i32, i32* %1988, align 4
  %1990 = zext i32 %1989 to i64
  store i64 %1990, i64* %RCX.i72, align 8
  %1991 = load i64, i64* %RBP.i, align 8
  %1992 = add i64 %1991, -12
  %1993 = add i64 %1984, 17
  store i64 %1993, i64* %3, align 8
  %1994 = inttoptr i64 %1992 to i32*
  %1995 = load i32, i32* %1994, align 4
  %1996 = sub i32 %1989, %1995
  %1997 = icmp ult i32 %1989, %1995
  %1998 = zext i1 %1997 to i8
  store i8 %1998, i8* %40, align 1
  %1999 = and i32 %1996, 255
  %2000 = tail call i32 @llvm.ctpop.i32(i32 %1999)
  %2001 = trunc i32 %2000 to i8
  %2002 = and i8 %2001, 1
  %2003 = xor i8 %2002, 1
  store i8 %2003, i8* %42, align 1
  %2004 = xor i32 %1995, %1989
  %2005 = xor i32 %2004, %1996
  %2006 = lshr i32 %2005, 4
  %2007 = trunc i32 %2006 to i8
  %2008 = and i8 %2007, 1
  store i8 %2008, i8* %48, align 1
  %2009 = icmp eq i32 %1996, 0
  %2010 = zext i1 %2009 to i8
  store i8 %2010, i8* %49, align 1
  %2011 = lshr i32 %1996, 31
  %2012 = trunc i32 %2011 to i8
  store i8 %2012, i8* %52, align 1
  %2013 = lshr i32 %1989, 31
  %2014 = lshr i32 %1995, 31
  %2015 = xor i32 %2014, %2013
  %2016 = xor i32 %2011, %2013
  %2017 = add nuw nsw i32 %2016, %2015
  %2018 = icmp eq i32 %2017, 2
  %2019 = zext i1 %2018 to i8
  store i8 %2019, i8* %56, align 1
  %2020 = icmp ne i8 %2012, 0
  %2021 = xor i1 %2020, %2018
  %.v105 = select i1 %2021, i64 43, i64 23
  %2022 = add i64 %1984, %.v105
  store i64 %2022, i64* %3, align 8
  br i1 %2021, label %block_.L_42d59b, label %block_42d587

block_42d587:                                     ; preds = %block_.L_42d570
  %2023 = add i64 %2022, 3
  store i64 %2023, i64* %3, align 8
  %2024 = load i32, i32* %1994, align 4
  %2025 = add i32 %2024, -1
  %2026 = zext i32 %2025 to i64
  store i64 %2026, i64* %RAX.i56, align 8
  %2027 = icmp eq i32 %2024, 0
  %2028 = zext i1 %2027 to i8
  store i8 %2028, i8* %40, align 1
  %2029 = and i32 %2025, 255
  %2030 = tail call i32 @llvm.ctpop.i32(i32 %2029)
  %2031 = trunc i32 %2030 to i8
  %2032 = and i8 %2031, 1
  %2033 = xor i8 %2032, 1
  store i8 %2033, i8* %42, align 1
  %2034 = xor i32 %2025, %2024
  %2035 = lshr i32 %2034, 4
  %2036 = trunc i32 %2035 to i8
  %2037 = and i8 %2036, 1
  store i8 %2037, i8* %48, align 1
  %2038 = icmp eq i32 %2025, 0
  %2039 = zext i1 %2038 to i8
  store i8 %2039, i8* %49, align 1
  %2040 = lshr i32 %2025, 31
  %2041 = trunc i32 %2040 to i8
  store i8 %2041, i8* %52, align 1
  %2042 = lshr i32 %2024, 31
  %2043 = xor i32 %2040, %2042
  %2044 = add nuw nsw i32 %2043, %2042
  %2045 = icmp eq i32 %2044, 2
  %2046 = zext i1 %2045 to i8
  store i8 %2046, i8* %56, align 1
  store i64 %1985, i64* %RCX.i72, align 8
  %2047 = add i64 %2022, 20
  store i64 %2047, i64* %3, align 8
  store i32 %2025, i32* %1988, align 4
  %.pre77 = load i64, i64* %3, align 8
  br label %block_.L_42d59b

block_.L_42d59b:                                  ; preds = %block_42d587, %block_.L_42d570
  %2048 = phi i64 [ %.pre77, %block_42d587 ], [ %2022, %block_.L_42d570 ]
  %2049 = load i64, i64* bitcast (%G_0x6cb8f8_type* @G_0x6cb8f8 to i64*), align 8
  store i64 %2049, i64* %RAX.i56, align 8
  %2050 = add i64 %2049, 3236
  %2051 = add i64 %2048, 15
  store i64 %2051, i64* %3, align 8
  %2052 = inttoptr i64 %2050 to i32*
  %2053 = load i32, i32* %2052, align 4
  store i8 0, i8* %40, align 1
  %2054 = and i32 %2053, 255
  %2055 = tail call i32 @llvm.ctpop.i32(i32 %2054)
  %2056 = trunc i32 %2055 to i8
  %2057 = and i8 %2056, 1
  %2058 = xor i8 %2057, 1
  store i8 %2058, i8* %42, align 1
  store i8 0, i8* %48, align 1
  %2059 = icmp eq i32 %2053, 0
  %2060 = zext i1 %2059 to i8
  store i8 %2060, i8* %49, align 1
  %2061 = lshr i32 %2053, 31
  %2062 = trunc i32 %2061 to i8
  store i8 %2062, i8* %52, align 1
  store i8 0, i8* %56, align 1
  %.v106 = select i1 %2059, i64 21, i64 539
  %2063 = add i64 %2048, %.v106
  store i64 %2063, i64* %3, align 8
  br i1 %2059, label %block_42d5b0, label %block_.L_42d59b.block_.L_42d7b6_crit_edge

block_.L_42d59b.block_.L_42d7b6_crit_edge:        ; preds = %block_.L_42d59b
  %.pre94 = add i64 %2049, 1320
  %.pre95 = inttoptr i64 %.pre94 to i32*
  br label %block_.L_42d7b6

block_42d5b0:                                     ; preds = %block_.L_42d59b
  store i64 %2049, i64* %RAX.i56, align 8
  %2064 = add i64 %2049, 1320
  %2065 = add i64 %2063, 15
  store i64 %2065, i64* %3, align 8
  %2066 = inttoptr i64 %2064 to i32*
  %2067 = load i32, i32* %2066, align 4
  %2068 = add i32 %2067, -3
  %2069 = icmp ult i32 %2067, 3
  %2070 = zext i1 %2069 to i8
  store i8 %2070, i8* %40, align 1
  %2071 = and i32 %2068, 255
  %2072 = tail call i32 @llvm.ctpop.i32(i32 %2071)
  %2073 = trunc i32 %2072 to i8
  %2074 = and i8 %2073, 1
  %2075 = xor i8 %2074, 1
  store i8 %2075, i8* %42, align 1
  %2076 = xor i32 %2068, %2067
  %2077 = lshr i32 %2076, 4
  %2078 = trunc i32 %2077 to i8
  %2079 = and i8 %2078, 1
  store i8 %2079, i8* %48, align 1
  %2080 = icmp eq i32 %2068, 0
  %2081 = zext i1 %2080 to i8
  store i8 %2081, i8* %49, align 1
  %2082 = lshr i32 %2068, 31
  %2083 = trunc i32 %2082 to i8
  store i8 %2083, i8* %52, align 1
  %2084 = lshr i32 %2067, 31
  %2085 = xor i32 %2082, %2084
  %2086 = add nuw nsw i32 %2085, %2084
  %2087 = icmp eq i32 %2086, 2
  %2088 = zext i1 %2087 to i8
  store i8 %2088, i8* %56, align 1
  %.v108 = select i1 %2080, i64 518, i64 21
  %2089 = add i64 %2063, %.v108
  store i64 %2089, i64* %3, align 8
  br i1 %2080, label %block_.L_42d7b6, label %block_42d5c5

block_42d5c5:                                     ; preds = %block_42d5b0
  store i64 %2049, i64* %RAX.i56, align 8
  %2090 = add i64 %2049, 2452
  %2091 = add i64 %2089, 15
  store i64 %2091, i64* %3, align 8
  %2092 = inttoptr i64 %2090 to i32*
  %2093 = load i32, i32* %2092, align 4
  store i8 0, i8* %40, align 1
  %2094 = and i32 %2093, 255
  %2095 = tail call i32 @llvm.ctpop.i32(i32 %2094)
  %2096 = trunc i32 %2095 to i8
  %2097 = and i8 %2096, 1
  %2098 = xor i8 %2097, 1
  store i8 %2098, i8* %42, align 1
  store i8 0, i8* %48, align 1
  %2099 = icmp eq i32 %2093, 0
  %2100 = zext i1 %2099 to i8
  store i8 %2100, i8* %49, align 1
  %2101 = lshr i32 %2093, 31
  %2102 = trunc i32 %2101 to i8
  store i8 %2102, i8* %52, align 1
  store i8 0, i8* %56, align 1
  %2103 = icmp ne i8 %2102, 0
  %2104 = or i1 %2099, %2103
  %.v109 = select i1 %2104, i64 85, i64 21
  %2105 = add i64 %2089, %.v109
  store i64 %2105, i64* %3, align 8
  %.pre78 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*), align 8
  br i1 %2104, label %block_.L_42d61a, label %block_42d5da

block_42d5da:                                     ; preds = %block_42d5c5
  store i64 %.pre78, i64* %RAX.i56, align 8
  %2106 = add i64 %.pre78, 71792
  %2107 = add i64 %2105, 14
  store i64 %2107, i64* %3, align 8
  %2108 = inttoptr i64 %2106 to i32*
  %2109 = load i32, i32* %2108, align 4
  %2110 = zext i32 %2109 to i64
  store i64 %2110, i64* %RCX.i72, align 8
  store i64 %2049, i64* %RAX.i56, align 8
  %2111 = add i64 %2105, 28
  store i64 %2111, i64* %3, align 8
  %2112 = load i32, i32* %2092, align 4
  %2113 = sub i32 %2109, %2112
  %2114 = icmp ult i32 %2109, %2112
  %2115 = zext i1 %2114 to i8
  store i8 %2115, i8* %40, align 1
  %2116 = and i32 %2113, 255
  %2117 = tail call i32 @llvm.ctpop.i32(i32 %2116)
  %2118 = trunc i32 %2117 to i8
  %2119 = and i8 %2118, 1
  %2120 = xor i8 %2119, 1
  store i8 %2120, i8* %42, align 1
  %2121 = xor i32 %2112, %2109
  %2122 = xor i32 %2121, %2113
  %2123 = lshr i32 %2122, 4
  %2124 = trunc i32 %2123 to i8
  %2125 = and i8 %2124, 1
  store i8 %2125, i8* %48, align 1
  %2126 = icmp eq i32 %2113, 0
  %2127 = zext i1 %2126 to i8
  store i8 %2127, i8* %49, align 1
  %2128 = lshr i32 %2113, 31
  %2129 = trunc i32 %2128 to i8
  store i8 %2129, i8* %52, align 1
  %2130 = lshr i32 %2109, 31
  %2131 = lshr i32 %2112, 31
  %2132 = xor i32 %2131, %2130
  %2133 = xor i32 %2128, %2130
  %2134 = add nuw nsw i32 %2133, %2132
  %2135 = icmp eq i32 %2134, 2
  %2136 = zext i1 %2135 to i8
  store i8 %2136, i8* %56, align 1
  %2137 = icmp ne i8 %2129, 0
  %2138 = xor i1 %2137, %2135
  %.v110 = select i1 %2138, i64 64, i64 34
  %2139 = add i64 %2105, %.v110
  store i64 %2139, i64* %3, align 8
  br i1 %2138, label %block_.L_42d61a, label %block_42d5fc

block_42d5fc:                                     ; preds = %block_42d5da
  store i64 %2049, i64* %RAX.i56, align 8
  %2140 = add i64 %2049, 2448
  %2141 = add i64 %2139, 14
  store i64 %2141, i64* %3, align 8
  %2142 = inttoptr i64 %2140 to i32*
  %2143 = load i32, i32* %2142, align 4
  %2144 = zext i32 %2143 to i64
  store i64 %2144, i64* %RCX.i72, align 8
  store i64 %.pre78, i64* %RAX.i56, align 8
  %2145 = add i64 %.pre78, 40
  %2146 = add i64 %2139, 25
  store i64 %2146, i64* %3, align 8
  %2147 = inttoptr i64 %2145 to i32*
  store i32 %2143, i32* %2147, align 4
  %2148 = load i64, i64* %3, align 8
  %2149 = add i64 %2148, 30
  store i64 %2149, i64* %3, align 8
  br label %block_.L_42d633

block_.L_42d61a:                                  ; preds = %block_42d5c5, %block_42d5da
  %2150 = phi i64 [ %2139, %block_42d5da ], [ %2105, %block_42d5c5 ]
  store i64 %2049, i64* %RAX.i56, align 8
  %2151 = add i64 %2049, 1240
  %2152 = add i64 %2150, 14
  store i64 %2152, i64* %3, align 8
  %2153 = inttoptr i64 %2151 to i32*
  %2154 = load i32, i32* %2153, align 4
  %2155 = zext i32 %2154 to i64
  store i64 %2155, i64* %RCX.i72, align 8
  store i64 %.pre78, i64* %RAX.i56, align 8
  %2156 = add i64 %.pre78, 40
  %2157 = add i64 %2150, 25
  store i64 %2157, i64* %3, align 8
  %2158 = inttoptr i64 %2156 to i32*
  store i32 %2154, i32* %2158, align 4
  %.pre79 = load i64, i64* %3, align 8
  br label %block_.L_42d633

block_.L_42d633:                                  ; preds = %block_.L_42d61a, %block_42d5fc
  %2159 = phi i64 [ %.pre79, %block_.L_42d61a ], [ %2149, %block_42d5fc ]
  %2160 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*), align 8
  store i64 %2160, i64* %RAX.i56, align 8
  %2161 = add i64 %2160, 72496
  %2162 = add i64 %2159, 15
  store i64 %2162, i64* %3, align 8
  %2163 = inttoptr i64 %2161 to i32*
  %2164 = load i32, i32* %2163, align 4
  store i8 0, i8* %40, align 1
  %2165 = and i32 %2164, 255
  %2166 = tail call i32 @llvm.ctpop.i32(i32 %2165)
  %2167 = trunc i32 %2166 to i8
  %2168 = and i8 %2167, 1
  %2169 = xor i8 %2168, 1
  store i8 %2169, i8* %42, align 1
  store i8 0, i8* %48, align 1
  %2170 = icmp eq i32 %2164, 0
  %2171 = zext i1 %2170 to i8
  store i8 %2171, i8* %49, align 1
  %2172 = lshr i32 %2164, 31
  %2173 = trunc i32 %2172 to i8
  store i8 %2173, i8* %52, align 1
  store i8 0, i8* %56, align 1
  %.v111 = select i1 %2170, i64 382, i64 21
  %2174 = add i64 %2159, %.v111
  store i64 %2174, i64* %3, align 8
  br i1 %2170, label %block_.L_42d7b1, label %block_42d648

block_42d648:                                     ; preds = %block_.L_42d633
  %2175 = load i64, i64* bitcast (%G_0x6cb8f8_type* @G_0x6cb8f8 to i64*), align 8
  store i64 %2175, i64* %RAX.i56, align 8
  %2176 = add i64 %2175, 2452
  %2177 = add i64 %2174, 15
  store i64 %2177, i64* %3, align 8
  %2178 = inttoptr i64 %2176 to i32*
  %2179 = load i32, i32* %2178, align 4
  store i8 0, i8* %40, align 1
  %2180 = and i32 %2179, 255
  %2181 = tail call i32 @llvm.ctpop.i32(i32 %2180)
  %2182 = trunc i32 %2181 to i8
  %2183 = and i8 %2182, 1
  %2184 = xor i8 %2183, 1
  store i8 %2184, i8* %42, align 1
  store i8 0, i8* %48, align 1
  %2185 = icmp eq i32 %2179, 0
  %2186 = zext i1 %2185 to i8
  store i8 %2186, i8* %49, align 1
  %2187 = lshr i32 %2179, 31
  %2188 = trunc i32 %2187 to i8
  store i8 %2188, i8* %52, align 1
  store i8 0, i8* %56, align 1
  %2189 = icmp ne i8 %2188, 0
  %2190 = or i1 %2185, %2189
  %.v112 = select i1 %2190, i64 208, i64 21
  %2191 = add i64 %2174, %.v112
  store i64 %2191, i64* %3, align 8
  br i1 %2190, label %block_.L_42d718, label %block_42d65d

block_42d65d:                                     ; preds = %block_42d648
  store i64 %2160, i64* %RAX.i56, align 8
  %2192 = add i64 %2160, 71792
  %2193 = add i64 %2191, 14
  store i64 %2193, i64* %3, align 8
  %2194 = inttoptr i64 %2192 to i32*
  %2195 = load i32, i32* %2194, align 4
  %2196 = zext i32 %2195 to i64
  store i64 %2196, i64* %RCX.i72, align 8
  store i64 %2175, i64* %RAX.i56, align 8
  %2197 = add i64 %2191, 28
  store i64 %2197, i64* %3, align 8
  %2198 = load i32, i32* %2178, align 4
  %2199 = sub i32 %2195, %2198
  %2200 = icmp ult i32 %2195, %2198
  %2201 = zext i1 %2200 to i8
  store i8 %2201, i8* %40, align 1
  %2202 = and i32 %2199, 255
  %2203 = tail call i32 @llvm.ctpop.i32(i32 %2202)
  %2204 = trunc i32 %2203 to i8
  %2205 = and i8 %2204, 1
  %2206 = xor i8 %2205, 1
  store i8 %2206, i8* %42, align 1
  %2207 = xor i32 %2198, %2195
  %2208 = xor i32 %2207, %2199
  %2209 = lshr i32 %2208, 4
  %2210 = trunc i32 %2209 to i8
  %2211 = and i8 %2210, 1
  store i8 %2211, i8* %48, align 1
  %2212 = icmp eq i32 %2199, 0
  %2213 = zext i1 %2212 to i8
  store i8 %2213, i8* %49, align 1
  %2214 = lshr i32 %2199, 31
  %2215 = trunc i32 %2214 to i8
  store i8 %2215, i8* %52, align 1
  %2216 = lshr i32 %2195, 31
  %2217 = lshr i32 %2198, 31
  %2218 = xor i32 %2217, %2216
  %2219 = xor i32 %2214, %2216
  %2220 = add nuw nsw i32 %2219, %2218
  %2221 = icmp eq i32 %2220, 2
  %2222 = zext i1 %2221 to i8
  store i8 %2222, i8* %56, align 1
  %2223 = icmp ne i8 %2215, 0
  %2224 = xor i1 %2223, %2221
  %.v113 = select i1 %2224, i64 187, i64 34
  %2225 = add i64 %2191, %.v113
  store i64 %2225, i64* %3, align 8
  br i1 %2224, label %block_.L_42d718, label %block_42d67f

block_42d67f:                                     ; preds = %block_42d65d
  store i64 %2175, i64* %RAX.i56, align 8
  %2226 = add i64 %2175, 2448
  %2227 = add i64 %2225, 14
  store i64 %2227, i64* %3, align 8
  %2228 = inttoptr i64 %2226 to i32*
  %2229 = load i32, i32* %2228, align 4
  %2230 = zext i32 %2229 to i64
  store i64 %2230, i64* %RCX.i72, align 8
  store i64 %2175, i64* %RAX.i56, align 8
  %2231 = add i64 %2175, 2460
  %2232 = add i64 %2225, 28
  store i64 %2232, i64* %3, align 8
  %2233 = inttoptr i64 %2231 to i32*
  %2234 = load i32, i32* %2233, align 4
  %2235 = add i32 %2234, %2229
  %2236 = zext i32 %2235 to i64
  store i64 %2236, i64* %RCX.i72, align 8
  %2237 = and i32 %2235, 255
  %2238 = tail call i32 @llvm.ctpop.i32(i32 %2237)
  %2239 = trunc i32 %2238 to i8
  %2240 = and i8 %2239, 1
  %2241 = xor i8 %2240, 1
  %2242 = icmp eq i32 %2235, 0
  %2243 = zext i1 %2242 to i8
  %2244 = lshr i32 %2235, 31
  %2245 = trunc i32 %2244 to i8
  %2246 = add i64 %2225, 31
  store i8 0, i8* %40, align 1
  store i8 %2241, i8* %42, align 1
  store i8 0, i8* %48, align 1
  store i8 %2243, i8* %49, align 1
  store i8 %2245, i8* %52, align 1
  store i8 0, i8* %56, align 1
  %2247 = icmp ne i8 %2245, 0
  %.v = select i1 %2247, i64 6, i64 16
  %2248 = add i64 %2246, %.v
  store i64 %2248, i64* %3, align 8
  br i1 %2247, label %block_42d6a4, label %block_.L_42d6ae

block_42d6a4:                                     ; preds = %block_42d67f
  store i64 0, i64* %RAX.i56, align 8
  store i8 0, i8* %40, align 1
  store i8 1, i8* %42, align 1
  store i8 1, i8* %49, align 1
  store i8 0, i8* %52, align 1
  store i8 0, i8* %56, align 1
  store i8 0, i8* %48, align 1
  %2249 = load i64, i64* %RBP.i, align 8
  %2250 = add i64 %2249, -32
  %2251 = add i64 %2248, 5
  store i64 %2251, i64* %3, align 8
  %2252 = inttoptr i64 %2250 to i32*
  store i32 0, i32* %2252, align 4
  %2253 = load i64, i64* %3, align 8
  %2254 = add i64 %2253, 92
  store i64 %2254, i64* %3, align 8
  br label %block_.L_42d705

block_.L_42d6ae:                                  ; preds = %block_42d67f
  store i64 %2175, i64* %RAX.i56, align 8
  %2255 = add i64 %2248, 14
  store i64 %2255, i64* %3, align 8
  %2256 = load i32, i32* %2228, align 4
  %2257 = zext i32 %2256 to i64
  store i64 %2257, i64* %RCX.i72, align 8
  store i64 %2175, i64* %RAX.i56, align 8
  %2258 = add i64 %2248, 28
  store i64 %2258, i64* %3, align 8
  %2259 = load i32, i32* %2233, align 4
  %2260 = add i32 %2259, %2256
  %2261 = zext i32 %2260 to i64
  store i64 %2261, i64* %RCX.i72, align 8
  %2262 = lshr i32 %2260, 31
  %2263 = add i32 %2260, -51
  %2264 = icmp ult i32 %2260, 51
  %2265 = zext i1 %2264 to i8
  store i8 %2265, i8* %40, align 1
  %2266 = and i32 %2263, 255
  %2267 = tail call i32 @llvm.ctpop.i32(i32 %2266)
  %2268 = trunc i32 %2267 to i8
  %2269 = and i8 %2268, 1
  %2270 = xor i8 %2269, 1
  store i8 %2270, i8* %42, align 1
  %2271 = xor i32 %2260, 16
  %2272 = xor i32 %2271, %2263
  %2273 = lshr i32 %2272, 4
  %2274 = trunc i32 %2273 to i8
  %2275 = and i8 %2274, 1
  store i8 %2275, i8* %48, align 1
  %2276 = icmp eq i32 %2263, 0
  %2277 = zext i1 %2276 to i8
  store i8 %2277, i8* %49, align 1
  %2278 = lshr i32 %2263, 31
  %2279 = trunc i32 %2278 to i8
  store i8 %2279, i8* %52, align 1
  %2280 = xor i32 %2278, %2262
  %2281 = add nuw nsw i32 %2280, %2262
  %2282 = icmp eq i32 %2281, 2
  %2283 = zext i1 %2282 to i8
  store i8 %2283, i8* %56, align 1
  %2284 = icmp ne i8 %2279, 0
  %2285 = xor i1 %2284, %2282
  %2286 = or i1 %2276, %2285
  %.v114 = select i1 %2286, i64 50, i64 37
  %2287 = add i64 %2248, %.v114
  store i64 %2287, i64* %3, align 8
  br i1 %2286, label %block_.L_42d6e0, label %block_42d6d3

block_42d6d3:                                     ; preds = %block_.L_42d6ae
  store i64 51, i64* %RAX.i56, align 8
  %2288 = load i64, i64* %RBP.i, align 8
  %2289 = add i64 %2288, -36
  %2290 = add i64 %2287, 8
  store i64 %2290, i64* %3, align 8
  %2291 = inttoptr i64 %2289 to i32*
  store i32 51, i32* %2291, align 4
  %2292 = load i64, i64* %3, align 8
  %2293 = add i64 %2292, 36
  store i64 %2293, i64* %3, align 8
  br label %block_.L_42d6ff

block_.L_42d6e0:                                  ; preds = %block_.L_42d6ae
  store i64 %2175, i64* %RAX.i56, align 8
  %2294 = add i64 %2287, 14
  store i64 %2294, i64* %3, align 8
  %2295 = load i32, i32* %2228, align 4
  %2296 = zext i32 %2295 to i64
  store i64 %2296, i64* %RCX.i72, align 8
  store i64 %2175, i64* %RAX.i56, align 8
  %2297 = add i64 %2287, 28
  store i64 %2297, i64* %3, align 8
  %2298 = load i32, i32* %2233, align 4
  %2299 = add i32 %2298, %2295
  %2300 = zext i32 %2299 to i64
  store i64 %2300, i64* %RCX.i72, align 8
  %2301 = icmp ult i32 %2299, %2295
  %2302 = icmp ult i32 %2299, %2298
  %2303 = or i1 %2301, %2302
  %2304 = zext i1 %2303 to i8
  store i8 %2304, i8* %40, align 1
  %2305 = and i32 %2299, 255
  %2306 = tail call i32 @llvm.ctpop.i32(i32 %2305)
  %2307 = trunc i32 %2306 to i8
  %2308 = and i8 %2307, 1
  %2309 = xor i8 %2308, 1
  store i8 %2309, i8* %42, align 1
  %2310 = xor i32 %2298, %2295
  %2311 = xor i32 %2310, %2299
  %2312 = lshr i32 %2311, 4
  %2313 = trunc i32 %2312 to i8
  %2314 = and i8 %2313, 1
  store i8 %2314, i8* %48, align 1
  %2315 = icmp eq i32 %2299, 0
  %2316 = zext i1 %2315 to i8
  store i8 %2316, i8* %49, align 1
  %2317 = lshr i32 %2299, 31
  %2318 = trunc i32 %2317 to i8
  store i8 %2318, i8* %52, align 1
  %2319 = lshr i32 %2295, 31
  %2320 = lshr i32 %2298, 31
  %2321 = xor i32 %2317, %2319
  %2322 = xor i32 %2317, %2320
  %2323 = add nuw nsw i32 %2321, %2322
  %2324 = icmp eq i32 %2323, 2
  %2325 = zext i1 %2324 to i8
  store i8 %2325, i8* %56, align 1
  %2326 = load i64, i64* %RBP.i, align 8
  %2327 = add i64 %2326, -36
  %2328 = add i64 %2287, 31
  store i64 %2328, i64* %3, align 8
  %2329 = inttoptr i64 %2327 to i32*
  store i32 %2299, i32* %2329, align 4
  %.pre80 = load i64, i64* %3, align 8
  br label %block_.L_42d6ff

block_.L_42d6ff:                                  ; preds = %block_.L_42d6e0, %block_42d6d3
  %2330 = phi i64 [ %.pre80, %block_.L_42d6e0 ], [ %2293, %block_42d6d3 ]
  %2331 = load i64, i64* %RBP.i, align 8
  %2332 = add i64 %2331, -36
  %2333 = add i64 %2330, 3
  store i64 %2333, i64* %3, align 8
  %2334 = inttoptr i64 %2332 to i32*
  %2335 = load i32, i32* %2334, align 4
  %2336 = zext i32 %2335 to i64
  store i64 %2336, i64* %RAX.i56, align 8
  %2337 = add i64 %2331, -32
  %2338 = add i64 %2330, 6
  store i64 %2338, i64* %3, align 8
  %2339 = inttoptr i64 %2337 to i32*
  store i32 %2335, i32* %2339, align 4
  %.pre81 = load i64, i64* %3, align 8
  br label %block_.L_42d705

block_.L_42d705:                                  ; preds = %block_.L_42d6ff, %block_42d6a4
  %2340 = phi i64 [ %.pre81, %block_.L_42d6ff ], [ %2254, %block_42d6a4 ]
  %2341 = load i64, i64* %RBP.i, align 8
  %2342 = add i64 %2341, -32
  %2343 = add i64 %2340, 3
  store i64 %2343, i64* %3, align 8
  %2344 = inttoptr i64 %2342 to i32*
  %2345 = load i32, i32* %2344, align 4
  %2346 = zext i32 %2345 to i64
  store i64 %2346, i64* %RAX.i56, align 8
  %2347 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*), align 8
  store i64 %2347, i64* %RCX.i72, align 8
  %2348 = add i64 %2347, 40
  %2349 = add i64 %2340, 14
  store i64 %2349, i64* %3, align 8
  %2350 = inttoptr i64 %2348 to i32*
  store i32 %2345, i32* %2350, align 4
  %2351 = load i64, i64* %3, align 8
  %2352 = add i64 %2351, 153
  store i64 %2352, i64* %3, align 8
  br label %block_.L_42d7ac

block_.L_42d718:                                  ; preds = %block_42d65d, %block_42d648
  %2353 = phi i64 [ %2225, %block_42d65d ], [ %2191, %block_42d648 ]
  store i64 %2175, i64* %RAX.i56, align 8
  %2354 = add i64 %2175, 1240
  %2355 = add i64 %2353, 14
  store i64 %2355, i64* %3, align 8
  %2356 = inttoptr i64 %2354 to i32*
  %2357 = load i32, i32* %2356, align 4
  %2358 = zext i32 %2357 to i64
  store i64 %2358, i64* %RCX.i72, align 8
  store i64 %2175, i64* %RAX.i56, align 8
  %2359 = add i64 %2175, 1244
  %2360 = add i64 %2353, 28
  store i64 %2360, i64* %3, align 8
  %2361 = inttoptr i64 %2359 to i32*
  %2362 = load i32, i32* %2361, align 4
  %2363 = add i32 %2362, %2357
  %2364 = zext i32 %2363 to i64
  store i64 %2364, i64* %RCX.i72, align 8
  %2365 = and i32 %2363, 255
  %2366 = tail call i32 @llvm.ctpop.i32(i32 %2365)
  %2367 = trunc i32 %2366 to i8
  %2368 = and i8 %2367, 1
  %2369 = xor i8 %2368, 1
  %2370 = icmp eq i32 %2363, 0
  %2371 = zext i1 %2370 to i8
  %2372 = lshr i32 %2363, 31
  %2373 = trunc i32 %2372 to i8
  %2374 = add i64 %2353, 31
  store i8 0, i8* %40, align 1
  store i8 %2369, i8* %42, align 1
  store i8 0, i8* %48, align 1
  store i8 %2371, i8* %49, align 1
  store i8 %2373, i8* %52, align 1
  store i8 0, i8* %56, align 1
  %2375 = icmp ne i8 %2373, 0
  %.v47 = select i1 %2375, i64 6, i64 16
  %2376 = add i64 %2374, %.v47
  store i64 %2376, i64* %3, align 8
  br i1 %2375, label %block_42d73d, label %block_.L_42d747

block_42d73d:                                     ; preds = %block_.L_42d718
  store i64 0, i64* %RAX.i56, align 8
  store i8 0, i8* %40, align 1
  store i8 1, i8* %42, align 1
  store i8 1, i8* %49, align 1
  store i8 0, i8* %52, align 1
  store i8 0, i8* %56, align 1
  store i8 0, i8* %48, align 1
  %2377 = load i64, i64* %RBP.i, align 8
  %2378 = add i64 %2377, -40
  %2379 = add i64 %2376, 5
  store i64 %2379, i64* %3, align 8
  %2380 = inttoptr i64 %2378 to i32*
  store i32 0, i32* %2380, align 4
  %2381 = load i64, i64* %3, align 8
  %2382 = add i64 %2381, 92
  store i64 %2382, i64* %3, align 8
  br label %block_.L_42d79e

block_.L_42d747:                                  ; preds = %block_.L_42d718
  store i64 %2175, i64* %RAX.i56, align 8
  %2383 = add i64 %2376, 14
  store i64 %2383, i64* %3, align 8
  %2384 = load i32, i32* %2356, align 4
  %2385 = zext i32 %2384 to i64
  store i64 %2385, i64* %RCX.i72, align 8
  store i64 %2175, i64* %RAX.i56, align 8
  %2386 = add i64 %2376, 28
  store i64 %2386, i64* %3, align 8
  %2387 = load i32, i32* %2361, align 4
  %2388 = add i32 %2387, %2384
  %2389 = zext i32 %2388 to i64
  store i64 %2389, i64* %RCX.i72, align 8
  %2390 = lshr i32 %2388, 31
  %2391 = add i32 %2388, -51
  %2392 = icmp ult i32 %2388, 51
  %2393 = zext i1 %2392 to i8
  store i8 %2393, i8* %40, align 1
  %2394 = and i32 %2391, 255
  %2395 = tail call i32 @llvm.ctpop.i32(i32 %2394)
  %2396 = trunc i32 %2395 to i8
  %2397 = and i8 %2396, 1
  %2398 = xor i8 %2397, 1
  store i8 %2398, i8* %42, align 1
  %2399 = xor i32 %2388, 16
  %2400 = xor i32 %2399, %2391
  %2401 = lshr i32 %2400, 4
  %2402 = trunc i32 %2401 to i8
  %2403 = and i8 %2402, 1
  store i8 %2403, i8* %48, align 1
  %2404 = icmp eq i32 %2391, 0
  %2405 = zext i1 %2404 to i8
  store i8 %2405, i8* %49, align 1
  %2406 = lshr i32 %2391, 31
  %2407 = trunc i32 %2406 to i8
  store i8 %2407, i8* %52, align 1
  %2408 = xor i32 %2406, %2390
  %2409 = add nuw nsw i32 %2408, %2390
  %2410 = icmp eq i32 %2409, 2
  %2411 = zext i1 %2410 to i8
  store i8 %2411, i8* %56, align 1
  %2412 = icmp ne i8 %2407, 0
  %2413 = xor i1 %2412, %2410
  %2414 = or i1 %2404, %2413
  %.v115 = select i1 %2414, i64 50, i64 37
  %2415 = add i64 %2376, %.v115
  store i64 %2415, i64* %3, align 8
  br i1 %2414, label %block_.L_42d779, label %block_42d76c

block_42d76c:                                     ; preds = %block_.L_42d747
  store i64 51, i64* %RAX.i56, align 8
  %2416 = load i64, i64* %RBP.i, align 8
  %2417 = add i64 %2416, -44
  %2418 = add i64 %2415, 8
  store i64 %2418, i64* %3, align 8
  %2419 = inttoptr i64 %2417 to i32*
  store i32 51, i32* %2419, align 4
  %2420 = load i64, i64* %3, align 8
  %2421 = add i64 %2420, 36
  store i64 %2421, i64* %3, align 8
  br label %block_.L_42d798

block_.L_42d779:                                  ; preds = %block_.L_42d747
  store i64 %2175, i64* %RAX.i56, align 8
  %2422 = add i64 %2415, 14
  store i64 %2422, i64* %3, align 8
  %2423 = load i32, i32* %2356, align 4
  %2424 = zext i32 %2423 to i64
  store i64 %2424, i64* %RCX.i72, align 8
  store i64 %2175, i64* %RAX.i56, align 8
  %2425 = add i64 %2415, 28
  store i64 %2425, i64* %3, align 8
  %2426 = load i32, i32* %2361, align 4
  %2427 = add i32 %2426, %2423
  %2428 = zext i32 %2427 to i64
  store i64 %2428, i64* %RCX.i72, align 8
  %2429 = icmp ult i32 %2427, %2423
  %2430 = icmp ult i32 %2427, %2426
  %2431 = or i1 %2429, %2430
  %2432 = zext i1 %2431 to i8
  store i8 %2432, i8* %40, align 1
  %2433 = and i32 %2427, 255
  %2434 = tail call i32 @llvm.ctpop.i32(i32 %2433)
  %2435 = trunc i32 %2434 to i8
  %2436 = and i8 %2435, 1
  %2437 = xor i8 %2436, 1
  store i8 %2437, i8* %42, align 1
  %2438 = xor i32 %2426, %2423
  %2439 = xor i32 %2438, %2427
  %2440 = lshr i32 %2439, 4
  %2441 = trunc i32 %2440 to i8
  %2442 = and i8 %2441, 1
  store i8 %2442, i8* %48, align 1
  %2443 = icmp eq i32 %2427, 0
  %2444 = zext i1 %2443 to i8
  store i8 %2444, i8* %49, align 1
  %2445 = lshr i32 %2427, 31
  %2446 = trunc i32 %2445 to i8
  store i8 %2446, i8* %52, align 1
  %2447 = lshr i32 %2423, 31
  %2448 = lshr i32 %2426, 31
  %2449 = xor i32 %2445, %2447
  %2450 = xor i32 %2445, %2448
  %2451 = add nuw nsw i32 %2449, %2450
  %2452 = icmp eq i32 %2451, 2
  %2453 = zext i1 %2452 to i8
  store i8 %2453, i8* %56, align 1
  %2454 = load i64, i64* %RBP.i, align 8
  %2455 = add i64 %2454, -44
  %2456 = add i64 %2415, 31
  store i64 %2456, i64* %3, align 8
  %2457 = inttoptr i64 %2455 to i32*
  store i32 %2427, i32* %2457, align 4
  %.pre82 = load i64, i64* %3, align 8
  br label %block_.L_42d798

block_.L_42d798:                                  ; preds = %block_.L_42d779, %block_42d76c
  %2458 = phi i64 [ %.pre82, %block_.L_42d779 ], [ %2421, %block_42d76c ]
  %2459 = load i64, i64* %RBP.i, align 8
  %2460 = add i64 %2459, -44
  %2461 = add i64 %2458, 3
  store i64 %2461, i64* %3, align 8
  %2462 = inttoptr i64 %2460 to i32*
  %2463 = load i32, i32* %2462, align 4
  %2464 = zext i32 %2463 to i64
  store i64 %2464, i64* %RAX.i56, align 8
  %2465 = add i64 %2459, -40
  %2466 = add i64 %2458, 6
  store i64 %2466, i64* %3, align 8
  %2467 = inttoptr i64 %2465 to i32*
  store i32 %2463, i32* %2467, align 4
  %.pre83 = load i64, i64* %3, align 8
  br label %block_.L_42d79e

block_.L_42d79e:                                  ; preds = %block_.L_42d798, %block_42d73d
  %2468 = phi i64 [ %.pre83, %block_.L_42d798 ], [ %2382, %block_42d73d ]
  %2469 = load i64, i64* %RBP.i, align 8
  %2470 = add i64 %2469, -40
  %2471 = add i64 %2468, 3
  store i64 %2471, i64* %3, align 8
  %2472 = inttoptr i64 %2470 to i32*
  %2473 = load i32, i32* %2472, align 4
  %2474 = zext i32 %2473 to i64
  store i64 %2474, i64* %RAX.i56, align 8
  %2475 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*), align 8
  store i64 %2475, i64* %RCX.i72, align 8
  %2476 = add i64 %2475, 40
  %2477 = add i64 %2468, 14
  store i64 %2477, i64* %3, align 8
  %2478 = inttoptr i64 %2476 to i32*
  store i32 %2473, i32* %2478, align 4
  %.pre84 = load i64, i64* %3, align 8
  br label %block_.L_42d7ac

block_.L_42d7ac:                                  ; preds = %block_.L_42d79e, %block_.L_42d705
  %2479 = phi i64 [ %.pre84, %block_.L_42d79e ], [ %2352, %block_.L_42d705 ]
  %2480 = add i64 %2479, 5
  store i64 %2480, i64* %3, align 8
  br label %block_.L_42d7b1

block_.L_42d7b1:                                  ; preds = %block_.L_42d7ac, %block_.L_42d633
  %2481 = phi i64 [ %2480, %block_.L_42d7ac ], [ %2174, %block_.L_42d633 ]
  %2482 = add i64 %2481, 80
  br label %block_.L_42d801

block_.L_42d7b6:                                  ; preds = %block_.L_42d59b.block_.L_42d7b6_crit_edge, %block_42d5b0
  %.pre-phi96 = phi i32* [ %.pre95, %block_.L_42d59b.block_.L_42d7b6_crit_edge ], [ %2066, %block_42d5b0 ]
  %2483 = phi i64 [ %2063, %block_.L_42d59b.block_.L_42d7b6_crit_edge ], [ %2089, %block_42d5b0 ]
  store i64 %2049, i64* %RAX.i56, align 8
  %2484 = add i64 %2483, 15
  store i64 %2484, i64* %3, align 8
  %2485 = load i32, i32* %.pre-phi96, align 4
  %2486 = add i32 %2485, -3
  %2487 = icmp ult i32 %2485, 3
  %2488 = zext i1 %2487 to i8
  store i8 %2488, i8* %40, align 1
  %2489 = and i32 %2486, 255
  %2490 = tail call i32 @llvm.ctpop.i32(i32 %2489)
  %2491 = trunc i32 %2490 to i8
  %2492 = and i8 %2491, 1
  %2493 = xor i8 %2492, 1
  store i8 %2493, i8* %42, align 1
  %2494 = xor i32 %2486, %2485
  %2495 = lshr i32 %2494, 4
  %2496 = trunc i32 %2495 to i8
  %2497 = and i8 %2496, 1
  store i8 %2497, i8* %48, align 1
  %2498 = icmp eq i32 %2486, 0
  %2499 = zext i1 %2498 to i8
  store i8 %2499, i8* %49, align 1
  %2500 = lshr i32 %2486, 31
  %2501 = trunc i32 %2500 to i8
  store i8 %2501, i8* %52, align 1
  %2502 = lshr i32 %2485, 31
  %2503 = xor i32 %2500, %2502
  %2504 = add nuw nsw i32 %2503, %2502
  %2505 = icmp eq i32 %2504, 2
  %2506 = zext i1 %2505 to i8
  store i8 %2506, i8* %56, align 1
  %.v107 = select i1 %2498, i64 21, i64 70
  %2507 = add i64 %2483, %.v107
  store i64 %2507, i64* %3, align 8
  br i1 %2498, label %block_42d7cb, label %block_.L_42d7fc

block_42d7cb:                                     ; preds = %block_.L_42d7b6
  %2508 = load i64, i64* bitcast (%G_0x6d0278_type* @G_0x6d0278 to i64*), align 8
  store i64 %2508, i64* %RAX.i56, align 8
  %2509 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*), align 8
  store i64 %2509, i64* %RCX.i72, align 8
  %2510 = add i64 %2509, 71908
  %2511 = add i64 %2507, 22
  store i64 %2511, i64* %3, align 8
  %2512 = inttoptr i64 %2510 to i32*
  %2513 = load i32, i32* %2512, align 4
  %2514 = add i32 %2513, -1
  %2515 = zext i32 %2514 to i64
  store i64 %2515, i64* %RDX.i1151, align 8
  %2516 = sext i32 %2514 to i64
  %2517 = mul nsw i64 %2516, 24
  store i64 %2517, i64* %RCX.i72, align 8
  %2518 = lshr i64 %2517, 63
  %2519 = add i64 %2517, %2508
  store i64 %2519, i64* %RAX.i56, align 8
  %2520 = icmp ult i64 %2519, %2508
  %2521 = icmp ult i64 %2519, %2517
  %2522 = or i1 %2520, %2521
  %2523 = zext i1 %2522 to i8
  store i8 %2523, i8* %40, align 1
  %2524 = trunc i64 %2519 to i32
  %2525 = and i32 %2524, 255
  %2526 = tail call i32 @llvm.ctpop.i32(i32 %2525)
  %2527 = trunc i32 %2526 to i8
  %2528 = and i8 %2527, 1
  %2529 = xor i8 %2528, 1
  store i8 %2529, i8* %42, align 1
  %2530 = xor i64 %2517, %2508
  %2531 = xor i64 %2530, %2519
  %2532 = lshr i64 %2531, 4
  %2533 = trunc i64 %2532 to i8
  %2534 = and i8 %2533, 1
  store i8 %2534, i8* %48, align 1
  %2535 = icmp eq i64 %2519, 0
  %2536 = zext i1 %2535 to i8
  store i8 %2536, i8* %49, align 1
  %2537 = lshr i64 %2519, 63
  %2538 = trunc i64 %2537 to i8
  store i8 %2538, i8* %52, align 1
  %2539 = lshr i64 %2508, 63
  %2540 = xor i64 %2537, %2539
  %2541 = xor i64 %2537, %2518
  %2542 = add nuw nsw i64 %2540, %2541
  %2543 = icmp eq i64 %2542, 2
  %2544 = zext i1 %2543 to i8
  store i8 %2544, i8* %56, align 1
  %2545 = add i64 %2519, 12
  %2546 = add i64 %2507, 38
  store i64 %2546, i64* %3, align 8
  %2547 = inttoptr i64 %2545 to i32*
  %2548 = load i32, i32* %2547, align 4
  %2549 = zext i32 %2548 to i64
  store i64 %2549, i64* %RDX.i1151, align 8
  %2550 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*), align 8
  store i64 %2550, i64* %RAX.i56, align 8
  %2551 = add i64 %2550, 40
  %2552 = add i64 %2507, 49
  store i64 %2552, i64* %3, align 8
  %2553 = inttoptr i64 %2551 to i32*
  store i32 %2548, i32* %2553, align 4
  %.pre85 = load i64, i64* %3, align 8
  br label %block_.L_42d7fc

block_.L_42d7fc:                                  ; preds = %block_.L_42d7b6, %block_42d7cb
  %2554 = phi i64 [ %.pre85, %block_42d7cb ], [ %2507, %block_.L_42d7b6 ]
  %2555 = add i64 %2554, 5
  store i64 %2555, i64* %3, align 8
  br label %block_.L_42d801

block_.L_42d801:                                  ; preds = %block_.L_42d7fc, %block_.L_42d7b1
  %storemerge42 = phi i64 [ %2482, %block_.L_42d7b1 ], [ %2555, %block_.L_42d7fc ]
  %2556 = add i64 %storemerge42, 5
  store i64 %2556, i64* %3, align 8
  br label %block_.L_42d806

block_.L_42d806:                                  ; preds = %block_.L_42d801, %block_.L_42d1d7
  %ECX.i69.pre-phi = phi i32* [ %ECX.i763, %block_.L_42d801 ], [ %ECX.i1032, %block_.L_42d1d7 ]
  %storemerge34 = phi i64 [ %2556, %block_.L_42d801 ], [ %795, %block_.L_42d1d7 ]
  %MEMORY.30 = phi %struct.Memory* [ %156, %block_.L_42d801 ], [ %MEMORY.10, %block_.L_42d1d7 ]
  store i64 256, i64* %RAX.i56, align 8
  store i64 2, i64* %RCX.i72, align 8
  %2557 = load i64, i64* bitcast (%G_0x6cb8f8_type* @G_0x6cb8f8 to i64*), align 8
  store i64 %2557, i64* %RDX.i1151, align 8
  %2558 = add i64 %2557, 20
  %2559 = add i64 %storemerge34, 21
  store i64 %2559, i64* %3, align 8
  %2560 = inttoptr i64 %2558 to i32*
  %2561 = load i32, i32* %2560, align 4
  %2562 = zext i32 %2561 to i64
  store i64 %2562, i64* %RSI.i1120, align 8
  %2563 = load i64, i64* %RBP.i, align 8
  %2564 = add i64 %2563, -48
  %2565 = add i64 %storemerge34, 24
  store i64 %2565, i64* %3, align 8
  %2566 = inttoptr i64 %2564 to i32*
  store i32 256, i32* %2566, align 4
  %2567 = load i32, i32* %ESI.i1115, align 4
  %2568 = zext i32 %2567 to i64
  %2569 = load i64, i64* %3, align 8
  store i64 %2568, i64* %RAX.i56, align 8
  %2570 = load i64, i64* %RBP.i, align 8
  %2571 = add i64 %2570, -56
  %2572 = load i64, i64* %RDX.i1151, align 8
  %2573 = add i64 %2569, 6
  store i64 %2573, i64* %3, align 8
  %2574 = inttoptr i64 %2571 to i64*
  store i64 %2572, i64* %2574, align 8
  %2575 = load i64, i64* %3, align 8
  %2576 = load i32, i32* %EAX.i1127, align 8
  %2577 = sext i32 %2576 to i64
  %2578 = lshr i64 %2577, 32
  store i64 %2578, i64* %97, align 8
  %2579 = load i32, i32* %ECX.i69.pre-phi, align 4
  %2580 = add i64 %2575, 3
  store i64 %2580, i64* %3, align 8
  %2581 = zext i32 %2576 to i64
  %2582 = sext i32 %2579 to i64
  %2583 = shl nuw i64 %2578, 32
  %2584 = or i64 %2583, %2581
  %2585 = sdiv i64 %2584, %2582
  %2586 = shl i64 %2585, 32
  %2587 = ashr exact i64 %2586, 32
  %2588 = icmp eq i64 %2585, %2587
  br i1 %2588, label %2591, label %2589

; <label>:2589:                                   ; preds = %block_.L_42d806
  %2590 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %2580, %struct.Memory* %MEMORY.30)
  %.pre86 = load i64, i64* %3, align 8
  %.pre87 = load i32, i32* %EAX.i1127, align 4
  br label %routine_idivl__ecx.exit70

; <label>:2591:                                   ; preds = %block_.L_42d806
  %2592 = srem i64 %2584, %2582
  %2593 = and i64 %2585, 4294967295
  store i64 %2593, i64* %RAX.i56, align 8
  %2594 = and i64 %2592, 4294967295
  store i64 %2594, i64* %RDX.i1151, align 8
  store i8 0, i8* %40, align 1
  store i8 0, i8* %42, align 1
  store i8 0, i8* %48, align 1
  store i8 0, i8* %49, align 1
  store i8 0, i8* %52, align 1
  store i8 0, i8* %56, align 1
  %2595 = trunc i64 %2585 to i32
  br label %routine_idivl__ecx.exit70

routine_idivl__ecx.exit70:                        ; preds = %2591, %2589
  %2596 = phi i32 [ %.pre87, %2589 ], [ %2595, %2591 ]
  %2597 = phi i64 [ %.pre86, %2589 ], [ %2580, %2591 ]
  %2598 = phi %struct.Memory* [ %2590, %2589 ], [ %MEMORY.30, %2591 ]
  %RDI.i66 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %2599 = load i64, i64* %RBP.i, align 8
  %2600 = add i64 %2599, -56
  %2601 = add i64 %2597, 4
  store i64 %2601, i64* %3, align 8
  %2602 = inttoptr i64 %2600 to i64*
  %2603 = load i64, i64* %2602, align 8
  store i64 %2603, i64* %RDI.i66, align 8
  %2604 = add i64 %2603, 20
  %2605 = add i64 %2597, 7
  store i64 %2605, i64* %3, align 8
  %2606 = inttoptr i64 %2604 to i32*
  store i32 %2596, i32* %2606, align 4
  %R8.i62 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0, i32 0
  %2607 = load i64, i64* %3, align 8
  %2608 = load i64, i64* bitcast (%G_0x6cb8f8_type* @G_0x6cb8f8 to i64*), align 8
  store i64 %2608, i64* %R8.i62, align 8
  %2609 = add i64 %2608, 1236
  %2610 = add i64 %2607, 15
  store i64 %2610, i64* %3, align 8
  %2611 = inttoptr i64 %2609 to i32*
  %2612 = load i32, i32* %2611, align 4
  %2613 = zext i32 %2612 to i64
  store i64 %2613, i64* %RAX.i56, align 8
  %2614 = sext i32 %2612 to i64
  %2615 = lshr i64 %2614, 32
  store i64 %2615, i64* %97, align 8
  %2616 = load i32, i32* %ECX.i69.pre-phi, align 4
  %2617 = add i64 %2607, 18
  store i64 %2617, i64* %3, align 8
  %2618 = sext i32 %2616 to i64
  %2619 = shl nuw i64 %2615, 32
  %2620 = or i64 %2619, %2613
  %2621 = sdiv i64 %2620, %2618
  %2622 = shl i64 %2621, 32
  %2623 = ashr exact i64 %2622, 32
  %2624 = icmp eq i64 %2621, %2623
  br i1 %2624, label %2627, label %2625

; <label>:2625:                                   ; preds = %routine_idivl__ecx.exit70
  %2626 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %2617, %struct.Memory* %2598)
  %.pre88 = load i64, i64* %R8.i62, align 8
  %.pre89 = load i32, i32* %EAX.i1127, align 4
  %.pre90 = load i64, i64* %3, align 8
  br label %routine_idivl__ecx.exit54

; <label>:2627:                                   ; preds = %routine_idivl__ecx.exit70
  %2628 = srem i64 %2620, %2618
  %2629 = and i64 %2621, 4294967295
  store i64 %2629, i64* %RAX.i56, align 8
  %2630 = and i64 %2628, 4294967295
  store i64 %2630, i64* %RDX.i1151, align 8
  store i8 0, i8* %40, align 1
  store i8 0, i8* %42, align 1
  store i8 0, i8* %48, align 1
  store i8 0, i8* %49, align 1
  store i8 0, i8* %52, align 1
  store i8 0, i8* %56, align 1
  %2631 = trunc i64 %2621 to i32
  br label %routine_idivl__ecx.exit54

routine_idivl__ecx.exit54:                        ; preds = %2627, %2625
  %2632 = phi i64 [ %.pre90, %2625 ], [ %2617, %2627 ]
  %2633 = phi i32 [ %.pre89, %2625 ], [ %2631, %2627 ]
  %2634 = phi i64 [ %.pre88, %2625 ], [ %2608, %2627 ]
  %2635 = phi %struct.Memory* [ %2626, %2625 ], [ %2598, %2627 ]
  %2636 = add i64 %2634, 1236
  %2637 = add i64 %2632, 7
  store i64 %2637, i64* %3, align 8
  %2638 = inttoptr i64 %2636 to i32*
  store i32 %2633, i32* %2638, align 4
  %2639 = load i64, i64* %3, align 8
  %2640 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*), align 8
  store i64 %2640, i64* %R8.i62, align 8
  %2641 = add i64 %2640, 72376
  %2642 = add i64 %2639, 15
  store i64 %2642, i64* %3, align 8
  %2643 = inttoptr i64 %2641 to i32*
  %2644 = load i32, i32* %2643, align 4
  %2645 = shl i32 %2644, 1
  %2646 = icmp slt i32 %2644, 0
  %2647 = icmp slt i32 %2645, 0
  %2648 = xor i1 %2646, %2647
  %2649 = zext i32 %2645 to i64
  store i64 %2649, i64* %RAX.i56, align 8
  %.lobit35 = lshr i32 %2644, 31
  %2650 = trunc i32 %.lobit35 to i8
  store i8 %2650, i8* %40, align 1
  %2651 = and i32 %2645, 254
  %2652 = tail call i32 @llvm.ctpop.i32(i32 %2651)
  %2653 = trunc i32 %2652 to i8
  %2654 = and i8 %2653, 1
  %2655 = xor i8 %2654, 1
  store i8 %2655, i8* %42, align 1
  store i8 0, i8* %48, align 1
  %2656 = icmp eq i32 %2645, 0
  %2657 = zext i1 %2656 to i8
  store i8 %2657, i8* %49, align 1
  %2658 = lshr i32 %2644, 30
  %2659 = trunc i32 %2658 to i8
  %2660 = and i8 %2659, 1
  store i8 %2660, i8* %52, align 1
  %2661 = zext i1 %2648 to i8
  store i8 %2661, i8* %56, align 1
  %2662 = add i64 %2639, 24
  store i64 %2662, i64* %3, align 8
  store i32 %2645, i32* %2643, align 4
  %2663 = load i64, i64* %3, align 8
  %2664 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*), align 8
  store i64 %2664, i64* %R8.i62, align 8
  %2665 = add i64 %2663, 11
  store i64 %2665, i64* %3, align 8
  %2666 = inttoptr i64 %2664 to i32*
  %2667 = load i32, i32* %2666, align 4
  %2668 = shl i32 %2667, 1
  %2669 = icmp slt i32 %2667, 0
  %2670 = icmp slt i32 %2668, 0
  %2671 = xor i1 %2669, %2670
  %2672 = zext i32 %2668 to i64
  store i64 %2672, i64* %RAX.i56, align 8
  %.lobit36 = lshr i32 %2667, 31
  %2673 = trunc i32 %.lobit36 to i8
  store i8 %2673, i8* %40, align 1
  %2674 = and i32 %2668, 254
  %2675 = tail call i32 @llvm.ctpop.i32(i32 %2674)
  %2676 = trunc i32 %2675 to i8
  %2677 = and i8 %2676, 1
  %2678 = xor i8 %2677, 1
  store i8 %2678, i8* %42, align 1
  store i8 0, i8* %48, align 1
  %2679 = icmp eq i32 %2668, 0
  %2680 = zext i1 %2679 to i8
  store i8 %2680, i8* %49, align 1
  %2681 = lshr i32 %2667, 30
  %2682 = trunc i32 %2681 to i8
  %2683 = and i8 %2682, 1
  store i8 %2683, i8* %52, align 1
  %2684 = zext i1 %2671 to i8
  store i8 %2684, i8* %56, align 1
  store i64 %2664, i64* %R8.i62, align 8
  %2685 = add i64 %2664, 71796
  %2686 = add i64 %2663, 28
  store i64 %2686, i64* %3, align 8
  %2687 = inttoptr i64 %2685 to i32*
  %2688 = load i32, i32* %2687, align 4
  %2689 = add i32 %2688, %2668
  %2690 = zext i32 %2689 to i64
  store i64 %2690, i64* %RAX.i56, align 8
  %2691 = icmp ult i32 %2689, %2668
  %2692 = icmp ult i32 %2689, %2688
  %2693 = or i1 %2691, %2692
  %2694 = zext i1 %2693 to i8
  store i8 %2694, i8* %40, align 1
  %2695 = and i32 %2689, 255
  %2696 = tail call i32 @llvm.ctpop.i32(i32 %2695)
  %2697 = trunc i32 %2696 to i8
  %2698 = and i8 %2697, 1
  %2699 = xor i8 %2698, 1
  store i8 %2699, i8* %42, align 1
  %2700 = xor i32 %2688, %2668
  %2701 = xor i32 %2700, %2689
  %2702 = lshr i32 %2701, 4
  %2703 = trunc i32 %2702 to i8
  %2704 = and i8 %2703, 1
  store i8 %2704, i8* %48, align 1
  %2705 = icmp eq i32 %2689, 0
  %2706 = zext i1 %2705 to i8
  store i8 %2706, i8* %49, align 1
  %2707 = lshr i32 %2689, 31
  %2708 = trunc i32 %2707 to i8
  store i8 %2708, i8* %52, align 1
  %2709 = lshr i32 %2667, 30
  %2710 = and i32 %2709, 1
  %2711 = lshr i32 %2688, 31
  %2712 = xor i32 %2707, %2710
  %2713 = xor i32 %2707, %2711
  %2714 = add nuw nsw i32 %2712, %2713
  %2715 = icmp eq i32 %2714, 2
  %2716 = zext i1 %2715 to i8
  store i8 %2716, i8* %56, align 1
  %2717 = add i64 %2663, 39
  store i64 %2717, i64* %3, align 8
  store i32 %2689, i32* %2666, align 4
  %2718 = load i64, i64* %3, align 8
  %2719 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*), align 8
  store i64 %2719, i64* %R8.i62, align 8
  %2720 = add i64 %2719, 52
  %2721 = add i64 %2718, 12
  store i64 %2721, i64* %3, align 8
  %2722 = inttoptr i64 %2720 to i32*
  %2723 = load i32, i32* %2722, align 4
  %2724 = zext i32 %2723 to i64
  store i64 %2724, i64* %RAX.i56, align 8
  store i64 %2719, i64* %R8.i62, align 8
  %2725 = add i64 %2719, 60
  %2726 = add i64 %2718, 25
  store i64 %2726, i64* %3, align 8
  %2727 = inttoptr i64 %2725 to i32*
  %2728 = load i32, i32* %2727, align 4
  %2729 = sext i32 %2723 to i64
  %2730 = sext i32 %2728 to i64
  %2731 = mul nsw i64 %2730, %2729
  %2732 = trunc i64 %2731 to i32
  %2733 = and i64 %2731, 4294967295
  store i64 %2733, i64* %RAX.i56, align 8
  %2734 = shl i64 %2731, 32
  %2735 = ashr exact i64 %2734, 32
  %2736 = icmp ne i64 %2735, %2731
  %2737 = zext i1 %2736 to i8
  store i8 %2737, i8* %40, align 1
  %2738 = and i32 %2732, 255
  %2739 = tail call i32 @llvm.ctpop.i32(i32 %2738)
  %2740 = trunc i32 %2739 to i8
  %2741 = and i8 %2740, 1
  %2742 = xor i8 %2741, 1
  store i8 %2742, i8* %42, align 1
  store i8 0, i8* %48, align 1
  store i8 0, i8* %49, align 1
  %2743 = lshr i32 %2732, 31
  %2744 = trunc i32 %2743 to i8
  store i8 %2744, i8* %52, align 1
  store i8 %2737, i8* %56, align 1
  %sext = shl i64 %2731, 32
  %2745 = ashr exact i64 %sext, 32
  %2746 = lshr i64 %2745, 32
  store i64 %2746, i64* %97, align 8
  %2747 = load i64, i64* %RBP.i, align 8
  %2748 = add i64 %2747, -48
  %2749 = add i64 %2718, 29
  store i64 %2749, i64* %3, align 8
  %2750 = inttoptr i64 %2748 to i32*
  %2751 = load i32, i32* %2750, align 4
  %2752 = zext i32 %2751 to i64
  store i64 %2752, i64* %RCX.i72, align 8
  %2753 = add i64 %2718, 31
  store i64 %2753, i64* %3, align 8
  %2754 = and i64 %2731, 4294967295
  %2755 = sext i32 %2751 to i64
  %2756 = shl nuw i64 %2746, 32
  %2757 = or i64 %2756, %2754
  %2758 = sdiv i64 %2757, %2755
  %2759 = shl i64 %2758, 32
  %2760 = ashr exact i64 %2759, 32
  %2761 = icmp eq i64 %2758, %2760
  br i1 %2761, label %2764, label %2762

; <label>:2762:                                   ; preds = %routine_idivl__ecx.exit54
  %2763 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %2753, %struct.Memory* %2635)
  %.pre91 = load i64, i64* %3, align 8
  %.pre92 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*), align 8
  %.pre93 = load i32, i32* %EAX.i1127, align 4
  br label %routine_idivl__ecx.exit

; <label>:2764:                                   ; preds = %routine_idivl__ecx.exit54
  %2765 = srem i64 %2757, %2755
  %2766 = and i64 %2758, 4294967295
  store i64 %2766, i64* %RAX.i56, align 8
  %2767 = and i64 %2765, 4294967295
  store i64 %2767, i64* %RDX.i1151, align 8
  store i8 0, i8* %40, align 1
  store i8 0, i8* %42, align 1
  store i8 0, i8* %48, align 1
  store i8 0, i8* %49, align 1
  store i8 0, i8* %52, align 1
  store i8 0, i8* %56, align 1
  %2768 = trunc i64 %2758 to i32
  br label %routine_idivl__ecx.exit

routine_idivl__ecx.exit:                          ; preds = %2764, %2762
  %2769 = phi i32 [ %.pre93, %2762 ], [ %2768, %2764 ]
  %2770 = phi i64 [ %.pre92, %2762 ], [ %2719, %2764 ]
  %2771 = phi i64 [ %.pre91, %2762 ], [ %2753, %2764 ]
  %2772 = phi %struct.Memory* [ %2763, %2762 ], [ %2635, %2764 ]
  store i64 %2770, i64* %R8.i62, align 8
  %2773 = add i64 %2770, 16
  %2774 = add i64 %2771, 12
  store i64 %2774, i64* %3, align 8
  %2775 = inttoptr i64 %2773 to i32*
  store i32 %2769, i32* %2775, align 4
  %2776 = load i64, i64* %3, align 8
  %2777 = add i64 %2776, 1
  store i64 %2777, i64* %3, align 8
  %2778 = load i64, i64* %6, align 8
  %2779 = add i64 %2778, 8
  %2780 = inttoptr i64 %2778 to i64*
  %2781 = load i64, i64* %2780, align 8
  store i64 %2781, i64* %RBP.i, align 8
  store i64 %2779, i64* %6, align 8
  %2782 = add i64 %2776, 2
  store i64 %2782, i64* %3, align 8
  %2783 = inttoptr i64 %2779 to i64*
  %2784 = load i64, i64* %2783, align 8
  store i64 %2784, i64* %3, align 8
  %2785 = add i64 %2778, 16
  store i64 %2785, i64* %6, align 8
  ret %struct.Memory* %2772
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
define %struct.Memory* @routine_movq_0x6f6f88___rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 8
  store i64 %4, i64* %PC, align 8
  %5 = load i64, i64* bitcast (%G_0x6f6f88_type* @G_0x6f6f88 to i64*), align 8
  store i64 %5, i64* %RCX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__rcx__0x6cea00(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 8
  store i64 %5, i64* %PC, align 8
  store i64 %3, i64* bitcast (%G_0x6cea00_type* @G_0x6cea00 to i64*), align 8
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
define %struct.Memory* @routine_movl__0x0__0xc__rcx_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = add i64 %3, 12
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  store i32 0, i32* %7, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x0__0x14__rcx_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = add i64 %3, 20
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  store i32 0, i32* %7, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_0x6cb908___rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 8
  store i64 %4, i64* %PC, align 8
  %5 = load i64, i64* bitcast (%G_0x6cb908_type* @G_0x6cb908 to i64*), align 8
  store i64 %5, i64* %RCX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x0__0x18__rcx_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = add i64 %3, 24
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  store i32 0, i32* %7, align 4
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_0x14__rcx____edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = add i64 %3, 20
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
define %struct.Memory* @routine_movl__edx__0x14__rcx_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %EDX = bitcast %union.anon* %3 to i32*
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %4 = load i64, i64* %RCX, align 8
  %5 = add i64 %4, 20
  %6 = load i32, i32* %EDX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_0x4d4__rcx____edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = add i64 %3, 1236
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
define %struct.Memory* @routine_movl__edx__0x4d4__rcx_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %EDX = bitcast %union.anon* %3 to i32*
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %4 = load i64, i64* %RCX, align 8
  %5 = add i64 %4, 1236
  %6 = load i32, i32* %EDX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
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
define %struct.Memory* @routine_movl_MINUS0x10__rbp____esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -16
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
define %struct.Memory* @routine_movl_0x11ab8__rcx____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = add i64 %3, 72376
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
define %struct.Memory* @routine_movl__eax__0x11ab8__rcx_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %4 = load i64, i64* %RCX, align 8
  %5 = add i64 %4, 72376
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x0__0x88__rcx_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = add i64 %3, 136
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 10
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  store i32 0, i32* %7, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x0__0x8c__rcx_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = add i64 %3, 140
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 10
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  store i32 0, i32* %7, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x0__0xa4__rcx_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = add i64 %3, 164
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 10
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  store i32 0, i32* %7, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x0__0x9c__rcx_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = add i64 %3, 156
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 10
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  store i32 0, i32* %7, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x0__0x94__rcx_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = add i64 %3, 148
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 10
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  store i32 0, i32* %7, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x0__0xa0__rcx_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = add i64 %3, 160
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 10
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  store i32 0, i32* %7, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x0__0x60__rcx_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = add i64 %3, 96
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  store i32 0, i32* %7, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x0__0x98__rcx_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = add i64 %3, 152
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 10
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  store i32 0, i32* %7, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x0__0x90__rcx_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = add i64 %3, 144
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 10
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  store i32 0, i32* %7, align 4
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__0x0__0x118e4__rcx_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = add i64 %3, 71908
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
define %struct.Memory* @routine_jne_.L_42d1dc(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_0x14__rax____edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = add i64 %3, 20
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
define %struct.Memory* @routine_addl__0x2___edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %RDX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 3
  store i64 %5, i64* %PC, align 8
  %6 = trunc i64 %3 to i32
  %7 = add i32 %6, 2
  %8 = zext i32 %7 to i64
  store i64 %8, i64* %RDX, align 8
  %9 = icmp ugt i32 %6, -3
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
define %struct.Memory* @routine_imull__edx___ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %EDX = bitcast %union.anon* %3 to i32*
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %4 = load i64, i64* %RCX, align 8
  %5 = load i32, i32* %EDX, align 4
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 3
  store i64 %7, i64* %PC, align 8
  %8 = shl i64 %4, 32
  %9 = ashr exact i64 %8, 32
  %10 = sext i32 %5 to i64
  %11 = mul nsw i64 %10, %9
  %12 = trunc i64 %11 to i32
  %13 = and i64 %11, 4294967295
  store i64 %13, i64* %RCX, align 8
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

; Function Attrs: nounwind
define %struct.Memory* @routine_addl_0x11874__rax____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = load i64, i64* %RAX, align 8
  %5 = add i64 %4, 71796
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
define %struct.Memory* @routine_movl__ecx__0x11870__rax_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %ECX = bitcast %union.anon* %3 to i32*
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %4 = load i64, i64* %RAX, align 8
  %5 = add i64 %4, 71792
  %6 = load i32, i32* %ECX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__0x0__0x11874__rax_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = add i64 %3, 71796
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
define %struct.Memory* @routine_jne_.L_42cf84(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl_0x118cc__rax____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = add i64 %3, 71884
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
define %struct.Memory* @routine_movl__ecx__0x118d0__rax_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %ECX = bitcast %union.anon* %3 to i32*
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %4 = load i64, i64* %RAX, align 8
  %5 = add i64 %4, 71888
  %6 = load i32, i32* %ECX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_0x11870__rax____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = add i64 %3, 71792
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
define %struct.Memory* @routine_movl__ecx__0x118cc__rax_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %ECX = bitcast %union.anon* %3 to i32*
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %4 = load i64, i64* %RAX, align 8
  %5 = add i64 %4, 71884
  %6 = load i32, i32* %ECX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__0x0__0x988__rax_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = add i64 %3, 2440
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
define %struct.Memory* @routine_je_.L_42cfd3(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl_0x8__rax____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %ECX = bitcast %union.anon* %3 to i32*
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %4 = load i32, i32* %ECX, align 4
  %5 = load i64, i64* %RAX, align 8
  %6 = add i64 %5, 8
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
define %struct.Memory* @routine_jne_.L_42cfd3(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl_0x988__rax____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = add i64 %3, 2440
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
define %struct.Memory* @routine_cmpl__0x0____rax_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = bitcast i64* %RAX to i32**
  %4 = load i32*, i32** %3, align 8
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 3
  store i64 %6, i64* %PC, align 8
  %7 = load i32, i32* %4, align 4
  %8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %8, align 1
  %9 = and i32 %7, 255
  %10 = tail call i32 @llvm.ctpop.i32(i32 %9)
  %11 = trunc i32 %10 to i8
  %12 = and i8 %11, 1
  %13 = xor i8 %12, 1
  %14 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %13, i8* %14, align 1
  %15 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %15, align 1
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
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_je_.L_42d00e(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_cmpl__0x0__0x4d4__rax_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = add i64 %3, 1236
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
define %struct.Memory* @routine_movl__ecx__0x70fce8(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %ECX = bitcast %union.anon* %3 to i32*
  %4 = load i32, i32* %ECX, align 4
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  store i32 %4, i32* bitcast (%G_0x70fce8_type* @G_0x70fce8 to i32*), align 8
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
define %struct.Memory* @routine_jne_.L_42d15e(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jne_.L_42d0a5(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_cmpl__0x0__0x994__rax_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = add i64 %3, 2452
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
define %struct.Memory* @routine_jle_.L_42d08a(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_cmpl_0x994__rax____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %ECX = bitcast %union.anon* %3 to i32*
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %4 = load i32, i32* %ECX, align 4
  %5 = load i64, i64* %RAX, align 8
  %6 = add i64 %5, 2452
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
define %struct.Memory* @routine_jl_.L_42d08a(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl_0x998__rax____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = add i64 %3, 2456
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
define %struct.Memory* @routine_jmpq_.L_42d0a0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
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
define %struct.Memory* @routine_jmpq_.L_42d159(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jle_.L_42d0fa(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jl_.L_42d0fa(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl_0x98c__rax____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = add i64 %3, 2444
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
define %struct.Memory* @routine_jmpq_.L_42d110(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
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
define %struct.Memory* @routine_jne_.L_42d154(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl_0x4fc__rax____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = add i64 %3, 1276
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
define %struct.Memory* @routine_movl_0x500__rax____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = add i64 %3, 1280
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
define %struct.Memory* @routine_jmpq_.L_42d15e(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
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

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__0x0__0x4c__rax_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = add i64 %3, 76
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
define %struct.Memory* @routine_jle_.L_42d1d7(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl__0x10___eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 5
  store i64 %4, i64* %PC, align 8
  store i64 16, i64* %RAX, align 8
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

define %struct.Memory* @routine_idivl_0x4c__rcx_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = add i64 %3, 76
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_0x34__rcx____esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = add i64 %3, 52
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
define %struct.Memory* @routine_movl_MINUS0x14__rbp____esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -20
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

define %struct.Memory* @routine_idivl__r8d(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0
  %R8D = bitcast %union.anon* %3 to i32*
  %4 = load i32, i32* %R8D, align 4
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
define %struct.Memory* @routine_movl__edx__0x58__rcx_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %EDX = bitcast %union.anon* %3 to i32*
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %4 = load i64, i64* %RCX, align 8
  %5 = add i64 %4, 88
  %6 = load i32, i32* %EDX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_42d806(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
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

; Function Attrs: nounwind
define %struct.Memory* @routine_addl__0x2___ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 3
  store i64 %5, i64* %PC, align 8
  %6 = trunc i64 %3 to i32
  %7 = add i32 %6, 2
  %8 = zext i32 %7 to i64
  store i64 %8, i64* %RCX, align 8
  %9 = icmp ugt i32 %6, -3
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
define %struct.Memory* @routine_movl__ecx__0x118e0__rax_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %ECX = bitcast %union.anon* %3 to i32*
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %4 = load i64, i64* %RAX, align 8
  %5 = add i64 %4, 71904
  %6 = load i32, i32* %ECX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_subl__0x1___ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 3
  store i64 %5, i64* %PC, align 8
  %6 = trunc i64 %3 to i32
  %7 = add i32 %6, -1
  %8 = zext i32 %7 to i64
  store i64 %8, i64* %RCX, align 8
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

; Function Attrs: nounwind
define %struct.Memory* @routine_imull_0x118e0__rax____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = load i64, i64* %RAX, align 8
  %5 = add i64 %4, 71904
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 7
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %5 to i32*
  %9 = load i32, i32* %8, align 4
  %10 = shl i64 %3, 32
  %11 = ashr exact i64 %10, 32
  %12 = sext i32 %9 to i64
  %13 = mul nsw i64 %12, %11
  %14 = trunc i64 %13 to i32
  %15 = and i64 %13, 4294967295
  store i64 %15, i64* %RCX, align 8
  %16 = shl i64 %13, 32
  %17 = ashr exact i64 %16, 32
  %18 = icmp ne i64 %17, %13
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
  %27 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %27, align 1
  %28 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %28, align 1
  %29 = lshr i32 %14, 31
  %30 = trunc i32 %29 to i8
  %31 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %30, i8* %31, align 1
  %32 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %19, i8* %32, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__ecx__MINUS0x8__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %ECX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -8
  %6 = load i32, i32* %ECX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__ecx__MINUS0xc__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %ECX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -12
  %6 = load i32, i32* %ECX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jne_.L_42d328(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movq_0x6cea00___rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 8
  store i64 %4, i64* %PC, align 8
  %5 = load i64, i64* bitcast (%G_0x6cea00_type* @G_0x6cea00 to i64*), align 8
  store i64 %5, i64* %RCX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__eax__0x4__rcx_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %4 = load i64, i64* %RCX, align 8
  %5 = add i64 %4, 4
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
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
define %struct.Memory* @routine_cmpl_0x11ab8__rcx____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %4 = load i32, i32* %EAX, align 4
  %5 = load i64, i64* %RCX, align 8
  %6 = add i64 %5, 72376
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
define %struct.Memory* @routine_jg_.L_42d323(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movq_0x6cea00___rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 8
  store i64 %4, i64* %PC, align 8
  %5 = load i64, i64* bitcast (%G_0x6cea00_type* @G_0x6cea00 to i64*), align 8
  store i64 %5, i64* %RAX, align 8
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
define %struct.Memory* @routine_shll__0x1___ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 2
  store i64 %5, i64* %PC, align 8
  %6 = trunc i64 %3 to i32
  %7 = shl i32 %6, 1
  %8 = icmp slt i32 %6, 0
  %9 = icmp slt i32 %7, 0
  %10 = xor i1 %8, %9
  %11 = zext i32 %7 to i64
  store i64 %11, i64* %RCX, align 8
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

; Function Attrs: nounwind
define %struct.Memory* @routine_subl__0x2___ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 3
  store i64 %5, i64* %PC, align 8
  %6 = trunc i64 %3 to i32
  %7 = add i32 %6, -2
  %8 = zext i32 %7 to i64
  store i64 %8, i64* %RCX, align 8
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

; Function Attrs: nounwind
define %struct.Memory* @routine_subl_0x118e0__rax____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = load i64, i64* %RAX, align 8
  %5 = add i64 %4, 71904
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
define %struct.Memory* @routine_movl_MINUS0x4__rbp____esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -4
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
define %struct.Memory* @routine_shll__0x1___esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %RSI, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 2
  store i64 %5, i64* %PC, align 8
  %6 = trunc i64 %3 to i32
  %7 = shl i32 %6, 1
  %8 = icmp slt i32 %6, 0
  %9 = icmp slt i32 %7, 0
  %10 = xor i1 %8, %9
  %11 = zext i32 %7 to i64
  store i64 %11, i64* %RSI, align 8
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
define %struct.Memory* @routine_jmpq_.L_42d289(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_42d3ec(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jg_.L_42d3e7(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jmpq_.L_42d34d(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_je_.L_42d444(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jne_.L_42d444(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl_MINUS0xc__rbp____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -12
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
define %struct.Memory* @routine_subl_MINUS0x8__rbp____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -8
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
define %struct.Memory* @routine_movsd_0x84414__rip____xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, ptrtoint (%G_0x84414__rip__type* @G_0x84414__rip_ to i64)
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
define %struct.Memory* @routine_cvtsi2sdl__ecx___xmm1(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %ECX = bitcast %union.anon* %3 to i32*
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1
  %5 = load i32, i32* %ECX, align 4
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 4
  store i64 %7, i64* %PC, align 8
  %8 = sitofp i32 %5 to double
  %9 = bitcast %union.VectorReg* %4 to double*
  store double %8, double* %9, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_cvtsi2sdl_0x4d4__rax____xmm2(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 2
  %4 = load i64, i64* %RAX, align 8
  %5 = add i64 %4, 1236
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 8
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %5 to i32*
  %9 = load i32, i32* %8, align 4
  %10 = sitofp i32 %9 to double
  %11 = bitcast %union.VectorReg* %3 to double*
  store double %10, double* %11, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_addsd__xmm0___xmm2(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
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
  %11 = fadd double %8, %10
  store double %11, double* %7, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_divsd__xmm2___xmm1(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 2
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = bitcast %union.VectorReg* %3 to double*
  %8 = load double, double* %7, align 1
  %9 = bitcast %union.VectorReg* %4 to double*
  %10 = load double, double* %9, align 1
  %11 = fdiv double %8, %10
  store double %11, double* %7, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movsd__xmm1__0x118d8__rax_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = add i64 %3, 71896
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 8
  store i64 %6, i64* %PC, align 8
  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1, i32 0, i32 0, i32 0, i64 0
  %8 = load i64, i64* %7, align 1
  %9 = inttoptr i64 %4 to i64*
  store i64 %8, i64* %9, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__0x3__0x528__rax_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = add i64 %3, 1320
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
define %struct.Memory* @routine_jne_.L_42d4b3(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movsd_0x843bd__rip____xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, ptrtoint (%G_0x843bd__rip__type* @G_0x843bd__rip_ to i64)
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
define %struct.Memory* @routine_movsd__xmm0__0x118d8__rax_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = add i64 %3, 71896
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 8
  store i64 %6, i64* %PC, align 8
  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 0
  %8 = load i64, i64* %7, align 1
  %9 = inttoptr i64 %4 to i64*
  store i64 %8, i64* %9, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__0x0__0x528__rax_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = add i64 %3, 1320
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
define %struct.Memory* @routine_je_.L_42d52d(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movsd_0x84390__rip____xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, ptrtoint (%G_0x84390__rip__type* @G_0x84390__rip_ to i64)
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
define %struct.Memory* @routine_addsd_0x118d8__rcx____xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %4 = load i64, i64* %RCX, align 8
  %5 = add i64 %4, 71896
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 8
  store i64 %7, i64* %PC, align 8
  %8 = bitcast %union.VectorReg* %3 to double*
  %9 = load double, double* %8, align 1
  %10 = inttoptr i64 %5 to double*
  %11 = load double, double* %10, align 8
  %12 = fadd double %9, %11
  store double %12, double* %8, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_0x6d0278___rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 8
  store i64 %4, i64* %PC, align 8
  %5 = load i64, i64* bitcast (%G_0x6d0278_type* @G_0x6d0278 to i64*), align 8
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
define %struct.Memory* @routine_movl_0x118e4__rdx____esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %RDX, align 8
  %4 = add i64 %3, 71908
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
define %struct.Memory* @routine_movl_0x4__rcx____esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = add i64 %3, 4
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
define %struct.Memory* @routine_cvtsi2sdl__esi___xmm1(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0
  %ESI = bitcast %union.anon* %3 to i32*
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1
  %5 = load i32, i32* %ESI, align 4
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 4
  store i64 %7, i64* %PC, align 8
  %8 = sitofp i32 %5 to double
  %9 = bitcast %union.VectorReg* %4 to double*
  store double %8, double* %9, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_mulsd__xmm1___xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
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
  %11 = fmul double %8, %10
  store double %11, double* %7, align 1
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cvttsd2si__xmm0___esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 4
  store i64 %5, i64* %PC, align 8
  %6 = bitcast %union.VectorReg* %3 to double*
  %7 = load double, double* %6, align 1
  %8 = tail call double @llvm.trunc.f64(double %7)
  %9 = tail call double @llvm.fabs.f64(double %8)
  %10 = fcmp ogt double %9, 0x41DFFFFFFFC00000
  %11 = fptosi double %8 to i32
  %12 = zext i32 %11 to i64
  %13 = select i1 %10, i64 2147483648, i64 %12
  store i64 %13, i64* %RSI, align 8
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
define %struct.Memory* @routine_movl__eax__0x11870__rcx_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %4 = load i64, i64* %RCX, align 8
  %5 = add i64 %4, 71792
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_42d570(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movsd_0x8432b__rip____xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, ptrtoint (%G_0x8432b__rip__type* @G_0x8432b__rip_ to i64)
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
define %struct.Memory* @routine_cvtsi2sdl_0x118e4__rcx____xmm1(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1
  %4 = load i64, i64* %RCX, align 8
  %5 = add i64 %4, 71908
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 8
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %5 to i32*
  %9 = load i32, i32* %8, align 4
  %10 = sitofp i32 %9 to double
  %11 = bitcast %union.VectorReg* %3 to double*
  store double %10, double* %11, align 1
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cvttsd2si__xmm0___edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 4
  store i64 %5, i64* %PC, align 8
  %6 = bitcast %union.VectorReg* %3 to double*
  %7 = load double, double* %6, align 1
  %8 = tail call double @llvm.trunc.f64(double %7)
  %9 = tail call double @llvm.fabs.f64(double %8)
  %10 = fcmp ogt double %9, 0x41DFFFFFFFC00000
  %11 = fptosi double %8 to i32
  %12 = zext i32 %11 to i64
  %13 = select i1 %10, i64 2147483648, i64 %12
  store i64 %13, i64* %RDX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_addl__edx___eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %EDX = bitcast %union.anon* %3 to i32*
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %4 = load i64, i64* %RAX, align 8
  %5 = load i32, i32* %EDX, align 4
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

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl_MINUS0xc__rbp____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %ECX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i32, i32* %ECX, align 4
  %5 = load i64, i64* %RBP, align 8
  %6 = add i64 %5, -12
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
define %struct.Memory* @routine_jl_.L_42d59b(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jne_.L_42d7b6(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_je_.L_42d7b6(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jle_.L_42d61a(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jl_.L_42d61a(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl_0x990__rax____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = add i64 %3, 2448
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
define %struct.Memory* @routine_jmpq_.L_42d633(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_0x4d8__rax____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = add i64 %3, 1240
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
define %struct.Memory* @routine_cmpl__0x0__0x11b30__rax_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = add i64 %3, 72496
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
define %struct.Memory* @routine_je_.L_42d7b1(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jle_.L_42d718(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jl_.L_42d718(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_addl_0x99c__rax____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = load i64, i64* %RAX, align 8
  %5 = add i64 %4, 2460
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
define %struct.Memory* @routine_jge_.L_42d6ae(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jmpq_.L_42d705(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__0x33___ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %ECX = bitcast %union.anon* %3 to i32*
  %4 = load i32, i32* %ECX, align 4
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 3
  store i64 %6, i64* %PC, align 8
  %7 = add i32 %4, -51
  %8 = icmp ult i32 %4, 51
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
  %17 = xor i32 %4, 16
  %18 = xor i32 %17, %7
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
  %29 = lshr i32 %4, 31
  %30 = xor i32 %26, %29
  %31 = add nuw nsw i32 %30, %29
  %32 = icmp eq i32 %31, 2
  %33 = zext i1 %32 to i8
  %34 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %33, i8* %34, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jle_.L_42d6e0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jmpq_.L_42d6ff(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__ecx__MINUS0x24__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %ECX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -36
  %6 = load i32, i32* %ECX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
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
define %struct.Memory* @routine_jmpq_.L_42d7ac(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_addl_0x4dc__rax____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = load i64, i64* %RAX, align 8
  %5 = add i64 %4, 1244
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
define %struct.Memory* @routine_jge_.L_42d747(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jmpq_.L_42d79e(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jle_.L_42d779(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jmpq_.L_42d798(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__ecx__MINUS0x2c__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %ECX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -44
  %6 = load i32, i32* %ECX, align 4
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
define %struct.Memory* @routine_jmpq_.L_42d7b1(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_42d801(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jne_.L_42d7fc(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movq_0x6d0278___rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 8
  store i64 %4, i64* %PC, align 8
  %5 = load i64, i64* bitcast (%G_0x6d0278_type* @G_0x6d0278 to i64*), align 8
  store i64 %5, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_0x118e4__rcx____edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = add i64 %3, 71908
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
define %struct.Memory* @routine_imulq__0x18___rcx___rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
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
  %10 = mul nsw i128 %9, 24
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
define %struct.Memory* @routine_movl__0x100___eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 5
  store i64 %4, i64* %PC, align 8
  store i64 256, i64* %RAX, align 8
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_0x6cb8f8___rdx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 8
  store i64 %4, i64* %PC, align 8
  %5 = load i64, i64* bitcast (%G_0x6cb8f8_type* @G_0x6cb8f8 to i64*), align 8
  store i64 %5, i64* %RDX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_0x14__rdx____esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %RDX, align 8
  %4 = add i64 %3, 20
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
define %struct.Memory* @routine_movq__rdx__MINUS0x38__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -56
  %5 = load i64, i64* %RDX, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 4
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %4 to i64*
  store i64 %5, i64* %8, align 8
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_MINUS0x38__rbp____rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -56
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RDI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__eax__0x14__rdi_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %4 = load i64, i64* %RDI, align 8
  %5 = add i64 %4, 20
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_0x6cb8f8___r8(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %R8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 8
  store i64 %4, i64* %PC, align 8
  %5 = load i64, i64* bitcast (%G_0x6cb8f8_type* @G_0x6cb8f8 to i64*), align 8
  store i64 %5, i64* %R8, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_0x4d4__r8____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %R8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0, i32 0
  %3 = load i64, i64* %R8, align 8
  %4 = add i64 %3, 1236
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = zext i32 %8 to i64
  store i64 %9, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__eax__0x4d4__r8_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %R8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0, i32 0
  %4 = load i64, i64* %R8, align 8
  %5 = add i64 %4, 1236
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 7
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
define %struct.Memory* @routine_movl_0x11ab8__r8____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %R8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0, i32 0
  %3 = load i64, i64* %R8, align 8
  %4 = add i64 %3, 72376
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
define %struct.Memory* @routine_movl__eax__0x11ab8__r8_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %R8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0, i32 0
  %4 = load i64, i64* %R8, align 8
  %5 = add i64 %4, 72376
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 7
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl___r8____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %R8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0, i32 0
  %3 = bitcast i64* %R8 to i32**
  %4 = load i32*, i32** %3, align 8
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 3
  store i64 %6, i64* %PC, align 8
  %7 = load i32, i32* %4, align 4
  %8 = zext i32 %7 to i64
  store i64 %8, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_addl_0x11874__r8____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %R8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %R8, align 8
  %5 = add i64 %4, 71796
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 7
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
define %struct.Memory* @routine_movl__eax____r8_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %R8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0, i32 0
  %4 = bitcast i64* %R8 to i32**
  %5 = load i32*, i32** %4, align 8
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  store i32 %6, i32* %5, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_0x34__r8____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %R8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0, i32 0
  %3 = load i64, i64* %R8, align 8
  %4 = add i64 %3, 52
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = zext i32 %8 to i64
  store i64 %9, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_imull_0x3c__r8____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %R8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %R8, align 8
  %5 = add i64 %4, 60
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 5
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %5 to i32*
  %9 = load i32, i32* %8, align 4
  %10 = shl i64 %3, 32
  %11 = ashr exact i64 %10, 32
  %12 = sext i32 %9 to i64
  %13 = mul nsw i64 %12, %11
  %14 = trunc i64 %13 to i32
  %15 = and i64 %13, 4294967295
  store i64 %15, i64* %RAX, align 8
  %16 = shl i64 %13, 32
  %17 = ashr exact i64 %16, 32
  %18 = icmp ne i64 %17, %13
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
  %27 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %27, align 1
  %28 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %28, align 1
  %29 = lshr i32 %14, 31
  %30 = trunc i32 %29 to i8
  %31 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %30, i8* %31, align 1
  %32 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %19, i8* %32, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x30__rbp____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -48
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
define %struct.Memory* @routine_movl__eax__0x10__r8_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %R8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0, i32 0
  %4 = load i64, i64* %R8, align 8
  %5 = add i64 %4, 16
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 4
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
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
