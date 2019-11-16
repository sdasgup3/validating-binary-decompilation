; ModuleID = 'mcsema/test.proposed.inline.ll'
source_filename = "llvm-link"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu-elf"

%__bss_start_type = type <{ [8 x i8] }>
%G_0x6cb8f8_type = type <{ [8 x i8] }>
%G_0x6cb900_type = type <{ [8 x i8] }>
%G_0x6f96f8_type = type <{ [16 x i8] }>
%G_0x70d4b4_type = type <{ [16 x i8] }>
%G_0x70d4b8_type = type <{ [16 x i8] }>
%G_0x70d4bc_type = type <{ [16 x i8] }>
%G_0x70d4c0_type = type <{ [16 x i8] }>
%G_0x70d4c4_type = type <{ [16 x i8] }>
%G_0x70d4c8_type = type <{ [16 x i8] }>
%G_0x70d4cc_type = type <{ [16 x i8] }>
%G_0x9ddb5__rip__type = type <{ [4 x i8] }>
%G_0x9ddb9__rip__type = type <{ [4 x i8] }>
%G_0x9ddbd__rip__type = type <{ [4 x i8] }>
%G__0x4b8ad0_type = type <{ [8 x i8] }>
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
@G_0x6f96f8 = local_unnamed_addr global %G_0x6f96f8_type zeroinitializer
@G_0x70d4b4 = local_unnamed_addr global %G_0x70d4b4_type zeroinitializer
@G_0x70d4b8 = local_unnamed_addr global %G_0x70d4b8_type zeroinitializer
@G_0x70d4bc = local_unnamed_addr global %G_0x70d4bc_type zeroinitializer
@G_0x70d4c0 = local_unnamed_addr global %G_0x70d4c0_type zeroinitializer
@G_0x70d4c4 = local_unnamed_addr global %G_0x70d4c4_type zeroinitializer
@G_0x70d4c8 = local_unnamed_addr global %G_0x70d4c8_type zeroinitializer
@G_0x70d4cc = local_unnamed_addr global %G_0x70d4cc_type zeroinitializer
@G_0x9ddb5__rip_ = global %G_0x9ddb5__rip__type zeroinitializer
@G_0x9ddb9__rip_ = global %G_0x9ddb9__rip__type zeroinitializer
@G_0x9ddbd__rip_ = global %G_0x9ddbd__rip__type zeroinitializer
@G__0x4b8ad0 = global %G__0x4b8ad0_type zeroinitializer

declare %struct.Memory* @__remill_error(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr

; Function Attrs: nounwind readnone
declare i32 @llvm.ctpop.i32(i32) #0

; Function Attrs: alwaysinline
define %struct.Memory* @DefineThresholdMB(%struct.State* noalias, i64, %struct.Memory* noalias) local_unnamed_addr #1 {
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
  %RAX.i97 = getelementptr inbounds %union.anon, %union.anon* %11, i64 0, i32 0
  store i64 6, i64* %RAX.i97, align 8
  %RCX.i136 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %12 = load i64, i64* bitcast (%G_0x6cb8f8_type* @G_0x6cb8f8 to i64*), align 8
  store i64 %12, i64* %RCX.i136, align 8
  %13 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %RDX.i188 = getelementptr inbounds %union.anon, %union.anon* %13, i64 0, i32 0
  %14 = add i64 %12, 16
  %15 = add i64 %10, 19
  store i64 %15, i64* %3, align 8
  %16 = inttoptr i64 %14 to i32*
  %17 = load i32, i32* %16, align 4
  %18 = zext i32 %17 to i64
  store i64 %18, i64* %RDX.i188, align 8
  %19 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %19, align 1
  %20 = and i32 %17, 255
  %21 = tail call i32 @llvm.ctpop.i32(i32 %20)
  %22 = trunc i32 %21 to i8
  %23 = and i8 %22, 1
  %24 = xor i8 %23, 1
  %25 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %24, i8* %25, align 1
  %26 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %26, align 1
  %27 = icmp eq i32 %17, 0
  %28 = zext i1 %27 to i8
  %29 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %28, i8* %29, align 1
  %30 = lshr i32 %17, 31
  %31 = trunc i32 %30 to i8
  %32 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %31, i8* %32, align 1
  %33 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %33, align 1
  %EAX.i213 = bitcast %union.anon* %11 to i32*
  %34 = add i64 %7, -32
  %35 = add i64 %10, 25
  store i64 %35, i64* %3, align 8
  %36 = inttoptr i64 %34 to i32*
  store i32 6, i32* %36, align 4
  %EDX.i210 = bitcast %union.anon* %13 to i32*
  %37 = load i32, i32* %EDX.i210, align 4
  %38 = zext i32 %37 to i64
  %39 = load i64, i64* %3, align 8
  store i64 %38, i64* %RAX.i97, align 8
  %40 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %41 = sext i32 %37 to i64
  %42 = lshr i64 %41, 32
  store i64 %42, i64* %40, align 8
  %43 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0
  %RSI.i206 = getelementptr inbounds %union.anon, %union.anon* %43, i64 0, i32 0
  %44 = load i64, i64* %RBP.i, align 8
  %45 = add i64 %44, -24
  %46 = add i64 %39, 6
  store i64 %46, i64* %3, align 8
  %47 = inttoptr i64 %45 to i32*
  %48 = load i32, i32* %47, align 4
  %49 = zext i32 %48 to i64
  store i64 %49, i64* %RSI.i206, align 8
  %ESI.i201 = bitcast %union.anon* %43 to i32*
  %50 = add i64 %39, 8
  store i64 %50, i64* %3, align 8
  %51 = sext i32 %48 to i64
  %52 = shl nuw i64 %42, 32
  %53 = or i64 %52, %38
  %54 = sdiv i64 %53, %51
  %55 = shl i64 %54, 32
  %56 = ashr exact i64 %55, 32
  %57 = icmp eq i64 %54, %56
  br i1 %57, label %60, label %58

; <label>:58:                                     ; preds = %entry
  %59 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %50, %struct.Memory* %2)
  %.pre = load i64, i64* %RBP.i, align 8
  %.pre1 = load i32, i32* %EAX.i213, align 4
  %.pre2 = load i64, i64* %3, align 8
  br label %routine_idivl__esi.exit202

; <label>:60:                                     ; preds = %entry
  %61 = srem i64 %53, %51
  %62 = and i64 %54, 4294967295
  store i64 %62, i64* %RAX.i97, align 8
  %63 = and i64 %61, 4294967295
  store i64 %63, i64* %RDX.i188, align 8
  store i8 0, i8* %19, align 1
  store i8 0, i8* %25, align 1
  store i8 0, i8* %26, align 1
  store i8 0, i8* %29, align 1
  store i8 0, i8* %32, align 1
  store i8 0, i8* %33, align 1
  %64 = trunc i64 %54 to i32
  br label %routine_idivl__esi.exit202

routine_idivl__esi.exit202:                       ; preds = %60, %58
  %65 = phi i64 [ %.pre2, %58 ], [ %50, %60 ]
  %66 = phi i32 [ %.pre1, %58 ], [ %64, %60 ]
  %67 = phi i64 [ %.pre, %58 ], [ %44, %60 ]
  %68 = phi %struct.Memory* [ %59, %58 ], [ %2, %60 ]
  %69 = add i64 %67, -4
  %70 = add i64 %65, 3
  store i64 %70, i64* %3, align 8
  %71 = inttoptr i64 %69 to i32*
  store i32 %66, i32* %71, align 4
  %72 = load i64, i64* %3, align 8
  %73 = load i64, i64* bitcast (%G_0x6cb8f8_type* @G_0x6cb8f8 to i64*), align 8
  store i64 %73, i64* %RCX.i136, align 8
  %74 = add i64 %73, 16
  %75 = add i64 %72, 11
  store i64 %75, i64* %3, align 8
  %76 = inttoptr i64 %74 to i32*
  %77 = load i32, i32* %76, align 4
  %78 = zext i32 %77 to i64
  store i64 %78, i64* %RAX.i97, align 8
  store i8 0, i8* %19, align 1
  %79 = and i32 %77, 255
  %80 = tail call i32 @llvm.ctpop.i32(i32 %79)
  %81 = trunc i32 %80 to i8
  %82 = and i8 %81, 1
  %83 = xor i8 %82, 1
  store i8 %83, i8* %25, align 1
  store i8 0, i8* %26, align 1
  %84 = icmp eq i32 %77, 0
  %85 = zext i1 %84 to i8
  store i8 %85, i8* %29, align 1
  %86 = lshr i32 %77, 31
  %87 = trunc i32 %86 to i8
  store i8 %87, i8* %32, align 1
  store i8 0, i8* %33, align 1
  %88 = sext i32 %77 to i64
  %89 = lshr i64 %88, 32
  store i64 %89, i64* %40, align 8
  %90 = load i32, i32* %ESI.i201, align 4
  %91 = add i64 %72, 17
  store i64 %91, i64* %3, align 8
  %92 = sext i32 %90 to i64
  %93 = shl nuw i64 %89, 32
  %94 = or i64 %93, %78
  %95 = sdiv i64 %94, %92
  %96 = shl i64 %95, 32
  %97 = ashr exact i64 %96, 32
  %98 = icmp eq i64 %95, %97
  br i1 %98, label %101, label %99

; <label>:99:                                     ; preds = %routine_idivl__esi.exit202
  %100 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %91, %struct.Memory* %68)
  %.pre3 = load i32, i32* %EDX.i210, align 4
  %.pre4 = load i64, i64* %3, align 8
  br label %routine_idivl__esi.exit185

; <label>:101:                                    ; preds = %routine_idivl__esi.exit202
  %102 = srem i64 %94, %92
  %103 = and i64 %95, 4294967295
  store i64 %103, i64* %RAX.i97, align 8
  %104 = and i64 %102, 4294967295
  store i64 %104, i64* %RDX.i188, align 8
  store i8 0, i8* %19, align 1
  store i8 0, i8* %25, align 1
  store i8 0, i8* %26, align 1
  store i8 0, i8* %29, align 1
  store i8 0, i8* %32, align 1
  store i8 0, i8* %33, align 1
  %105 = trunc i64 %102 to i32
  br label %routine_idivl__esi.exit185

routine_idivl__esi.exit185:                       ; preds = %101, %99
  %106 = phi i64 [ %.pre4, %99 ], [ %91, %101 ]
  %107 = phi i32 [ %.pre3, %99 ], [ %105, %101 ]
  %108 = phi %struct.Memory* [ %100, %99 ], [ %68, %101 ]
  %109 = load i64, i64* %RBP.i, align 8
  %110 = add i64 %109, -8
  %111 = add i64 %106, 3
  store i64 %111, i64* %3, align 8
  %112 = inttoptr i64 %110 to i32*
  store i32 %107, i32* %112, align 4
  %113 = load i64, i64* %RBP.i, align 8
  %114 = add i64 %113, -4
  %115 = load i64, i64* %3, align 8
  %116 = add i64 %115, 3
  store i64 %116, i64* %3, align 8
  %117 = inttoptr i64 %114 to i32*
  %118 = load i32, i32* %117, align 4
  %119 = add i32 %118, 15
  %120 = zext i32 %119 to i64
  store i64 %120, i64* %RDX.i188, align 8
  %121 = icmp ugt i32 %118, -16
  %122 = zext i1 %121 to i8
  store i8 %122, i8* %19, align 1
  %123 = and i32 %119, 255
  %124 = tail call i32 @llvm.ctpop.i32(i32 %123)
  %125 = trunc i32 %124 to i8
  %126 = and i8 %125, 1
  %127 = xor i8 %126, 1
  store i8 %127, i8* %25, align 1
  %128 = xor i32 %119, %118
  %129 = lshr i32 %128, 4
  %130 = trunc i32 %129 to i8
  %131 = and i8 %130, 1
  store i8 %131, i8* %26, align 1
  %132 = icmp eq i32 %119, 0
  %133 = zext i1 %132 to i8
  store i8 %133, i8* %29, align 1
  %134 = lshr i32 %119, 31
  %135 = trunc i32 %134 to i8
  store i8 %135, i8* %32, align 1
  %136 = lshr i32 %118, 31
  %137 = xor i32 %134, %136
  %138 = add nuw nsw i32 %137, %134
  %139 = icmp eq i32 %138, 2
  %140 = zext i1 %139 to i8
  store i8 %140, i8* %33, align 1
  %141 = add i64 %113, -12
  %142 = add i64 %115, 9
  store i64 %142, i64* %3, align 8
  %143 = inttoptr i64 %141 to i32*
  store i32 %119, i32* %143, align 4
  %144 = load i64, i64* %3, align 8
  %145 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*), align 8
  store i64 %145, i64* %RCX.i136, align 8
  %146 = add i64 %145, 24
  %147 = add i64 %144, 12
  store i64 %147, i64* %3, align 8
  %148 = inttoptr i64 %146 to i32*
  %149 = load i32, i32* %148, align 4
  %150 = add i32 %149, -2
  %151 = icmp ult i32 %149, 2
  %152 = zext i1 %151 to i8
  store i8 %152, i8* %19, align 1
  %153 = and i32 %150, 255
  %154 = tail call i32 @llvm.ctpop.i32(i32 %153)
  %155 = trunc i32 %154 to i8
  %156 = and i8 %155, 1
  %157 = xor i8 %156, 1
  store i8 %157, i8* %25, align 1
  %158 = xor i32 %150, %149
  %159 = lshr i32 %158, 4
  %160 = trunc i32 %159 to i8
  %161 = and i8 %160, 1
  store i8 %161, i8* %26, align 1
  %162 = icmp eq i32 %150, 0
  %163 = zext i1 %162 to i8
  store i8 %163, i8* %29, align 1
  %164 = lshr i32 %150, 31
  %165 = trunc i32 %164 to i8
  store i8 %165, i8* %32, align 1
  %166 = lshr i32 %149, 31
  %167 = xor i32 %164, %166
  %168 = add nuw nsw i32 %167, %166
  %169 = icmp eq i32 %168, 2
  %170 = zext i1 %169 to i8
  store i8 %170, i8* %33, align 1
  %.v = select i1 %162, i64 18, i64 60
  %171 = add i64 %144, %.v
  %172 = add i64 %171, 5
  store i64 %172, i64* %3, align 8
  br i1 %162, label %block_41fa14, label %block_.L_41fa3e

block_41fa14:                                     ; preds = %routine_idivl__esi.exit185
  store i64 3, i64* %RAX.i97, align 8
  store i64 1, i64* %RCX.i136, align 8
  %173 = load i64, i64* %RBP.i, align 8
  %174 = add i64 %173, -12
  %175 = add i64 %171, 13
  store i64 %175, i64* %3, align 8
  %176 = inttoptr i64 %174 to i32*
  %177 = load i32, i32* %176, align 4
  %178 = zext i32 %177 to i64
  store i64 %178, i64* %RDX.i188, align 8
  %179 = add i64 %173, -28
  %180 = add i64 %171, 16
  store i64 %180, i64* %3, align 8
  %181 = inttoptr i64 %179 to i32*
  store i32 1, i32* %181, align 4
  %182 = load i32, i32* %EDX.i210, align 4
  %183 = zext i32 %182 to i64
  %184 = load i64, i64* %3, align 8
  store i64 %183, i64* %RCX.i136, align 8
  %185 = load i64, i64* %RBP.i, align 8
  %186 = add i64 %185, -28
  %187 = add i64 %184, 5
  store i64 %187, i64* %3, align 8
  %188 = inttoptr i64 %186 to i32*
  %189 = load i32, i32* %188, align 4
  %190 = zext i32 %189 to i64
  store i64 %190, i64* %RDX.i188, align 8
  %191 = add i64 %184, 7
  store i64 %191, i64* %3, align 8
  %192 = trunc i32 %182 to i5
  switch i5 %192, label %198 [
    i5 0, label %routine_shll__cl___edx.exit150
    i5 1, label %193
  ]

; <label>:193:                                    ; preds = %block_41fa14
  %194 = shl i32 %189, 1
  %195 = icmp slt i32 %189, 0
  %196 = icmp slt i32 %194, 0
  %197 = xor i1 %195, %196
  br label %207

; <label>:198:                                    ; preds = %block_41fa14
  %199 = and i32 %182, 31
  %200 = zext i32 %199 to i64
  %201 = add nuw nsw i64 %200, 4294967295
  %202 = and i64 %201, 4294967295
  %203 = shl i64 %190, %202
  %204 = trunc i64 %203 to i32
  %205 = icmp slt i32 %204, 0
  %206 = shl i32 %204, 1
  br label %207

; <label>:207:                                    ; preds = %198, %193
  %208 = phi i1 [ %195, %193 ], [ %205, %198 ]
  %209 = phi i1 [ %197, %193 ], [ false, %198 ]
  %210 = phi i32 [ %194, %193 ], [ %206, %198 ]
  %211 = zext i32 %210 to i64
  store i64 %211, i64* %RDX.i188, align 8
  %212 = zext i1 %208 to i8
  store i8 %212, i8* %19, align 1
  %213 = and i32 %210, 254
  %214 = tail call i32 @llvm.ctpop.i32(i32 %213)
  %215 = trunc i32 %214 to i8
  %216 = and i8 %215, 1
  %217 = xor i8 %216, 1
  store i8 %217, i8* %25, align 1
  store i8 0, i8* %26, align 1
  %218 = icmp eq i32 %210, 0
  %219 = zext i1 %218 to i8
  store i8 %219, i8* %29, align 1
  %220 = lshr i32 %210, 31
  %221 = trunc i32 %220 to i8
  store i8 %221, i8* %32, align 1
  %222 = zext i1 %209 to i8
  store i8 %222, i8* %33, align 1
  br label %routine_shll__cl___edx.exit150

routine_shll__cl___edx.exit150:                   ; preds = %207, %block_41fa14
  %223 = add i64 %185, -32
  %224 = load i32, i32* %EAX.i213, align 4
  %225 = add i64 %184, 10
  store i64 %225, i64* %3, align 8
  %226 = inttoptr i64 %223 to i32*
  store i32 %224, i32* %226, align 4
  %227 = load i32, i32* %EDX.i210, align 4
  %228 = zext i32 %227 to i64
  %229 = load i64, i64* %3, align 8
  store i64 %228, i64* %RAX.i97, align 8
  %230 = sext i32 %227 to i64
  %231 = lshr i64 %230, 32
  store i64 %231, i64* %40, align 8
  %232 = load i64, i64* %RBP.i, align 8
  %233 = add i64 %232, -32
  %234 = add i64 %229, 6
  store i64 %234, i64* %3, align 8
  %235 = inttoptr i64 %233 to i32*
  %236 = load i32, i32* %235, align 4
  %237 = zext i32 %236 to i64
  store i64 %237, i64* %RSI.i206, align 8
  %238 = add i64 %229, 8
  store i64 %238, i64* %3, align 8
  %239 = sext i32 %236 to i64
  %240 = shl nuw i64 %231, 32
  %241 = or i64 %240, %228
  %242 = sdiv i64 %241, %239
  %243 = shl i64 %242, 32
  %244 = ashr exact i64 %243, 32
  %245 = icmp eq i64 %242, %244
  br i1 %245, label %248, label %246

; <label>:246:                                    ; preds = %routine_shll__cl___edx.exit150
  %247 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %238, %struct.Memory* %108)
  %.pre5 = load i64, i64* %RBP.i, align 8
  %.pre6 = load i32, i32* %EAX.i213, align 4
  %.pre7 = load i64, i64* %3, align 8
  br label %routine_idivl__esi.exit134

; <label>:248:                                    ; preds = %routine_shll__cl___edx.exit150
  %249 = srem i64 %241, %239
  %250 = and i64 %242, 4294967295
  store i64 %250, i64* %RAX.i97, align 8
  %251 = and i64 %249, 4294967295
  store i64 %251, i64* %RDX.i188, align 8
  store i8 0, i8* %19, align 1
  store i8 0, i8* %25, align 1
  store i8 0, i8* %26, align 1
  store i8 0, i8* %29, align 1
  store i8 0, i8* %32, align 1
  store i8 0, i8* %33, align 1
  %252 = trunc i64 %242 to i32
  br label %routine_idivl__esi.exit134

routine_idivl__esi.exit134:                       ; preds = %248, %246
  %253 = phi i64 [ %.pre7, %246 ], [ %238, %248 ]
  %254 = phi i32 [ %.pre6, %246 ], [ %252, %248 ]
  %255 = phi i64 [ %.pre5, %246 ], [ %232, %248 ]
  %256 = phi %struct.Memory* [ %247, %246 ], [ %108, %248 ]
  %257 = add i64 %255, -16
  %258 = add i64 %253, 3
  store i64 %258, i64* %3, align 8
  %259 = inttoptr i64 %257 to i32*
  store i32 %254, i32* %259, align 4
  %260 = load i64, i64* %3, align 8
  %261 = add i64 %260, 42
  store i64 %261, i64* %3, align 8
  br label %block_.L_41fa63

block_.L_41fa3e:                                  ; preds = %routine_idivl__esi.exit185
  store i64 6, i64* %RAX.i97, align 8
  store i64 1, i64* %RCX.i136, align 8
  %262 = load i64, i64* %RBP.i, align 8
  %263 = add i64 %262, -12
  %264 = add i64 %171, 13
  store i64 %264, i64* %3, align 8
  %265 = inttoptr i64 %263 to i32*
  %266 = load i32, i32* %265, align 4
  %267 = zext i32 %266 to i64
  store i64 %267, i64* %RDX.i188, align 8
  %268 = add i64 %262, -36
  %269 = add i64 %171, 16
  store i64 %269, i64* %3, align 8
  %270 = inttoptr i64 %268 to i32*
  store i32 1, i32* %270, align 4
  %271 = load i32, i32* %EDX.i210, align 4
  %272 = zext i32 %271 to i64
  %273 = load i64, i64* %3, align 8
  store i64 %272, i64* %RCX.i136, align 8
  %274 = load i64, i64* %RBP.i, align 8
  %275 = add i64 %274, -36
  %276 = add i64 %273, 5
  store i64 %276, i64* %3, align 8
  %277 = inttoptr i64 %275 to i32*
  %278 = load i32, i32* %277, align 4
  %279 = zext i32 %278 to i64
  store i64 %279, i64* %RDX.i188, align 8
  %280 = add i64 %273, 7
  store i64 %280, i64* %3, align 8
  %281 = trunc i32 %271 to i5
  switch i5 %281, label %287 [
    i5 0, label %routine_shll__cl___edx.exit111
    i5 1, label %282
  ]

; <label>:282:                                    ; preds = %block_.L_41fa3e
  %283 = shl i32 %278, 1
  %284 = icmp slt i32 %278, 0
  %285 = icmp slt i32 %283, 0
  %286 = xor i1 %284, %285
  br label %296

; <label>:287:                                    ; preds = %block_.L_41fa3e
  %288 = and i32 %271, 31
  %289 = zext i32 %288 to i64
  %290 = add nuw nsw i64 %289, 4294967295
  %291 = and i64 %290, 4294967295
  %292 = shl i64 %279, %291
  %293 = trunc i64 %292 to i32
  %294 = icmp slt i32 %293, 0
  %295 = shl i32 %293, 1
  br label %296

; <label>:296:                                    ; preds = %287, %282
  %297 = phi i1 [ %284, %282 ], [ %294, %287 ]
  %298 = phi i1 [ %286, %282 ], [ false, %287 ]
  %299 = phi i32 [ %283, %282 ], [ %295, %287 ]
  %300 = zext i32 %299 to i64
  store i64 %300, i64* %RDX.i188, align 8
  %301 = zext i1 %297 to i8
  store i8 %301, i8* %19, align 1
  %302 = and i32 %299, 254
  %303 = tail call i32 @llvm.ctpop.i32(i32 %302)
  %304 = trunc i32 %303 to i8
  %305 = and i8 %304, 1
  %306 = xor i8 %305, 1
  store i8 %306, i8* %25, align 1
  store i8 0, i8* %26, align 1
  %307 = icmp eq i32 %299, 0
  %308 = zext i1 %307 to i8
  store i8 %308, i8* %29, align 1
  %309 = lshr i32 %299, 31
  %310 = trunc i32 %309 to i8
  store i8 %310, i8* %32, align 1
  %311 = zext i1 %298 to i8
  store i8 %311, i8* %33, align 1
  br label %routine_shll__cl___edx.exit111

routine_shll__cl___edx.exit111:                   ; preds = %296, %block_.L_41fa3e
  %312 = add i64 %274, -40
  %313 = load i32, i32* %EAX.i213, align 4
  %314 = add i64 %273, 10
  store i64 %314, i64* %3, align 8
  %315 = inttoptr i64 %312 to i32*
  store i32 %313, i32* %315, align 4
  %316 = load i32, i32* %EDX.i210, align 4
  %317 = zext i32 %316 to i64
  %318 = load i64, i64* %3, align 8
  store i64 %317, i64* %RAX.i97, align 8
  %319 = sext i32 %316 to i64
  %320 = lshr i64 %319, 32
  store i64 %320, i64* %40, align 8
  %321 = load i64, i64* %RBP.i, align 8
  %322 = add i64 %321, -40
  %323 = add i64 %318, 6
  store i64 %323, i64* %3, align 8
  %324 = inttoptr i64 %322 to i32*
  %325 = load i32, i32* %324, align 4
  %326 = zext i32 %325 to i64
  store i64 %326, i64* %RSI.i206, align 8
  %327 = add i64 %318, 8
  store i64 %327, i64* %3, align 8
  %328 = sext i32 %325 to i64
  %329 = shl nuw i64 %320, 32
  %330 = or i64 %329, %317
  %331 = sdiv i64 %330, %328
  %332 = shl i64 %331, 32
  %333 = ashr exact i64 %332, 32
  %334 = icmp eq i64 %331, %333
  br i1 %334, label %337, label %335

; <label>:335:                                    ; preds = %routine_shll__cl___edx.exit111
  %336 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %327, %struct.Memory* %108)
  %.pre8 = load i64, i64* %RBP.i, align 8
  %.pre9 = load i32, i32* %EAX.i213, align 4
  %.pre10 = load i64, i64* %3, align 8
  br label %routine_idivl__esi.exit

; <label>:337:                                    ; preds = %routine_shll__cl___edx.exit111
  %338 = srem i64 %330, %328
  %339 = and i64 %331, 4294967295
  store i64 %339, i64* %RAX.i97, align 8
  %340 = and i64 %338, 4294967295
  store i64 %340, i64* %RDX.i188, align 8
  store i8 0, i8* %19, align 1
  store i8 0, i8* %25, align 1
  store i8 0, i8* %26, align 1
  store i8 0, i8* %29, align 1
  store i8 0, i8* %32, align 1
  store i8 0, i8* %33, align 1
  %341 = trunc i64 %331 to i32
  br label %routine_idivl__esi.exit

routine_idivl__esi.exit:                          ; preds = %337, %335
  %342 = phi i64 [ %.pre10, %335 ], [ %327, %337 ]
  %343 = phi i32 [ %.pre9, %335 ], [ %341, %337 ]
  %344 = phi i64 [ %.pre8, %335 ], [ %321, %337 ]
  %345 = phi %struct.Memory* [ %336, %335 ], [ %108, %337 ]
  %346 = add i64 %344, -16
  %347 = add i64 %342, 3
  store i64 %347, i64* %3, align 8
  %348 = inttoptr i64 %346 to i32*
  store i32 %343, i32* %348, align 4
  %.pre11 = load i64, i64* %3, align 8
  br label %block_.L_41fa63

block_.L_41fa63:                                  ; preds = %routine_idivl__esi.exit, %routine_idivl__esi.exit134
  %349 = phi i64 [ %.pre11, %routine_idivl__esi.exit ], [ %261, %routine_idivl__esi.exit134 ]
  %MEMORY.0 = phi %struct.Memory* [ %345, %routine_idivl__esi.exit ], [ %256, %routine_idivl__esi.exit134 ]
  %350 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1
  %351 = bitcast [32 x %union.VectorReg]* %350 to i8*
  %352 = add i64 %349, ptrtoint (%G_0x9ddbd__rip__type* @G_0x9ddbd__rip_ to i64)
  %353 = add i64 %349, 8
  store i64 %353, i64* %3, align 8
  %354 = inttoptr i64 %352 to i32*
  %355 = load i32, i32* %354, align 4
  %356 = bitcast [32 x %union.VectorReg]* %350 to float*
  %357 = bitcast [32 x %union.VectorReg]* %350 to i32*
  store i32 %355, i32* %357, align 1
  %358 = getelementptr inbounds i8, i8* %351, i64 4
  %359 = bitcast i8* %358 to float*
  store float 0.000000e+00, float* %359, align 1
  %360 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 1
  %361 = bitcast i64* %360 to float*
  store float 0.000000e+00, float* %361, align 1
  %362 = getelementptr inbounds i8, i8* %351, i64 12
  %363 = bitcast i8* %362 to float*
  store float 0.000000e+00, float* %363, align 1
  %364 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1
  %365 = bitcast %union.VectorReg* %364 to i8*
  %366 = add i64 %349, add (i64 ptrtoint (%G_0x9ddb9__rip__type* @G_0x9ddb9__rip_ to i64), i64 8)
  %367 = add i64 %349, 16
  store i64 %367, i64* %3, align 8
  %368 = inttoptr i64 %366 to i32*
  %369 = load i32, i32* %368, align 4
  %370 = bitcast %union.VectorReg* %364 to float*
  %371 = bitcast %union.VectorReg* %364 to i32*
  store i32 %369, i32* %371, align 1
  %372 = getelementptr inbounds i8, i8* %365, i64 4
  %373 = bitcast i8* %372 to float*
  store float 0.000000e+00, float* %373, align 1
  %374 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1, i32 0, i32 0, i32 0, i64 1
  %375 = bitcast i64* %374 to float*
  store float 0.000000e+00, float* %375, align 1
  %376 = getelementptr inbounds i8, i8* %365, i64 12
  %377 = bitcast i8* %376 to float*
  store float 0.000000e+00, float* %377, align 1
  %378 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 2
  %379 = bitcast %union.VectorReg* %378 to i8*
  %380 = add i64 %349, add (i64 ptrtoint (%G_0x9ddb5__rip__type* @G_0x9ddb5__rip_ to i64), i64 16)
  %381 = add i64 %349, 24
  store i64 %381, i64* %3, align 8
  %382 = inttoptr i64 %380 to i32*
  %383 = load i32, i32* %382, align 4
  %384 = bitcast %union.VectorReg* %378 to i32*
  store i32 %383, i32* %384, align 1
  %385 = getelementptr inbounds i8, i8* %379, i64 4
  %386 = bitcast i8* %385 to float*
  store float 0.000000e+00, float* %386, align 1
  %387 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 2, i32 0, i32 0, i32 0, i64 1
  %388 = bitcast i64* %387 to float*
  store float 0.000000e+00, float* %388, align 1
  %389 = getelementptr inbounds i8, i8* %379, i64 12
  %390 = bitcast i8* %389 to float*
  store float 0.000000e+00, float* %390, align 1
  store i64 ptrtoint (%G__0x4b8ad0_type* @G__0x4b8ad0 to i64), i64* %RAX.i97, align 8
  store i64 1, i64* %RCX.i136, align 8
  %391 = load i64, i64* %RBP.i, align 8
  %392 = add i64 %391, -12
  %393 = add i64 %349, 42
  store i64 %393, i64* %3, align 8
  %394 = inttoptr i64 %392 to i32*
  %395 = load i32, i32* %394, align 4
  %396 = zext i32 %395 to i64
  store i64 %396, i64* %RDX.i188, align 8
  %397 = add i64 %391, -44
  %398 = add i64 %349, 45
  store i64 %398, i64* %3, align 8
  %399 = inttoptr i64 %397 to i32*
  store i32 1, i32* %399, align 4
  %400 = load i32, i32* %EDX.i210, align 4
  %401 = zext i32 %400 to i64
  %402 = load i64, i64* %3, align 8
  store i64 %401, i64* %RCX.i136, align 8
  %403 = load i64, i64* %RBP.i, align 8
  %404 = add i64 %403, -44
  %405 = add i64 %402, 5
  store i64 %405, i64* %3, align 8
  %406 = inttoptr i64 %404 to i32*
  %407 = load i32, i32* %406, align 4
  %408 = zext i32 %407 to i64
  store i64 %408, i64* %RDX.i188, align 8
  %409 = add i64 %402, 7
  store i64 %409, i64* %3, align 8
  %410 = trunc i32 %400 to i5
  switch i5 %410, label %416 [
    i5 0, label %routine_shll__cl___edx.exit
    i5 1, label %411
  ]

; <label>:411:                                    ; preds = %block_.L_41fa63
  %412 = shl i32 %407, 1
  %413 = icmp slt i32 %407, 0
  %414 = icmp slt i32 %412, 0
  %415 = xor i1 %413, %414
  br label %425

; <label>:416:                                    ; preds = %block_.L_41fa63
  %417 = and i32 %400, 31
  %418 = zext i32 %417 to i64
  %419 = add nuw nsw i64 %418, 4294967295
  %420 = and i64 %419, 4294967295
  %421 = shl i64 %408, %420
  %422 = trunc i64 %421 to i32
  %423 = icmp slt i32 %422, 0
  %424 = shl i32 %422, 1
  br label %425

; <label>:425:                                    ; preds = %416, %411
  %426 = phi i1 [ %413, %411 ], [ %423, %416 ]
  %427 = phi i1 [ %415, %411 ], [ false, %416 ]
  %428 = phi i32 [ %412, %411 ], [ %424, %416 ]
  %429 = zext i32 %428 to i64
  store i64 %429, i64* %RDX.i188, align 8
  %430 = zext i1 %426 to i8
  store i8 %430, i8* %19, align 1
  %431 = and i32 %428, 254
  %432 = tail call i32 @llvm.ctpop.i32(i32 %431)
  %433 = trunc i32 %432 to i8
  %434 = and i8 %433, 1
  %435 = xor i8 %434, 1
  store i8 %435, i8* %25, align 1
  store i8 0, i8* %26, align 1
  %436 = icmp eq i32 %428, 0
  %437 = zext i1 %436 to i8
  store i8 %437, i8* %29, align 1
  %438 = lshr i32 %428, 31
  %439 = trunc i32 %438 to i8
  store i8 %439, i8* %32, align 1
  %440 = zext i1 %427 to i8
  store i8 %440, i8* %33, align 1
  br label %routine_shll__cl___edx.exit

routine_shll__cl___edx.exit:                      ; preds = %425, %block_.L_41fa63
  %441 = phi i32 [ %428, %425 ], [ %407, %block_.L_41fa63 ]
  %442 = add i64 %403, -16
  %443 = add i64 %402, 10
  store i64 %443, i64* %3, align 8
  %444 = inttoptr i64 %442 to i32*
  %445 = load i32, i32* %444, align 4
  %446 = sub i32 %441, %445
  %447 = zext i32 %446 to i64
  store i64 %447, i64* %RDX.i188, align 8
  %448 = icmp ult i32 %441, %445
  %449 = zext i1 %448 to i8
  store i8 %449, i8* %19, align 1
  %450 = and i32 %446, 255
  %451 = tail call i32 @llvm.ctpop.i32(i32 %450)
  %452 = trunc i32 %451 to i8
  %453 = and i8 %452, 1
  %454 = xor i8 %453, 1
  store i8 %454, i8* %25, align 1
  %455 = xor i32 %445, %441
  %456 = xor i32 %455, %446
  %457 = lshr i32 %456, 4
  %458 = trunc i32 %457 to i8
  %459 = and i8 %458, 1
  store i8 %459, i8* %26, align 1
  %460 = icmp eq i32 %446, 0
  %461 = zext i1 %460 to i8
  store i8 %461, i8* %29, align 1
  %462 = lshr i32 %446, 31
  %463 = trunc i32 %462 to i8
  store i8 %463, i8* %32, align 1
  %464 = lshr i32 %441, 31
  %465 = lshr i32 %445, 31
  %466 = xor i32 %465, %464
  %467 = xor i32 %462, %464
  %468 = add nuw nsw i32 %467, %466
  %469 = icmp eq i32 %468, 2
  %470 = zext i1 %469 to i8
  store i8 %470, i8* %33, align 1
  %471 = add i64 %403, -8
  %472 = add i64 %402, 14
  store i64 %472, i64* %3, align 8
  %473 = inttoptr i64 %471 to i32*
  %474 = load i32, i32* %473, align 4
  %475 = sext i32 %474 to i64
  %476 = shl nsw i64 %475, 6
  store i64 %476, i64* %RSI.i206, align 8
  %477 = load i64, i64* %RAX.i97, align 8
  %478 = add i64 %476, %477
  %479 = icmp ult i64 %478, %477
  %480 = icmp ult i64 %478, %476
  %481 = or i1 %479, %480
  %482 = zext i1 %481 to i8
  store i8 %482, i8* %19, align 1
  %483 = trunc i64 %478 to i32
  %484 = and i32 %483, 255
  %485 = tail call i32 @llvm.ctpop.i32(i32 %484)
  %486 = trunc i32 %485 to i8
  %487 = and i8 %486, 1
  %488 = xor i8 %487, 1
  store i8 %488, i8* %25, align 1
  %489 = xor i64 %477, %478
  %490 = lshr i64 %489, 4
  %491 = trunc i64 %490 to i8
  %492 = and i8 %491, 1
  store i8 %492, i8* %26, align 1
  %493 = icmp eq i64 %478, 0
  %494 = zext i1 %493 to i8
  store i8 %494, i8* %29, align 1
  %495 = lshr i64 %478, 63
  %496 = trunc i64 %495 to i8
  store i8 %496, i8* %32, align 1
  %497 = lshr i64 %477, 63
  %498 = lshr i64 %475, 57
  %499 = and i64 %498, 1
  %500 = xor i64 %495, %497
  %501 = xor i64 %495, %499
  %502 = add nuw nsw i64 %500, %501
  %503 = icmp eq i64 %502, 2
  %504 = zext i1 %503 to i8
  store i8 %504, i8* %33, align 1
  %505 = load i64, i64* %RBP.i, align 8
  %506 = add i64 %505, -56
  %507 = add i64 %402, 25
  store i64 %507, i64* %3, align 8
  %508 = inttoptr i64 %506 to i64*
  store i64 %478, i64* %508, align 8
  %509 = load i32, i32* %EDX.i210, align 4
  %510 = zext i32 %509 to i64
  %511 = load i64, i64* %3, align 8
  store i64 %510, i64* %RAX.i97, align 8
  %512 = sext i32 %509 to i64
  %513 = lshr i64 %512, 32
  store i64 %513, i64* %40, align 8
  %514 = load i64, i64* %RBP.i, align 8
  %515 = add i64 %514, -56
  %516 = add i64 %511, 7
  store i64 %516, i64* %3, align 8
  %517 = inttoptr i64 %515 to i64*
  %518 = load i64, i64* %517, align 8
  store i64 %518, i64* %RSI.i206, align 8
  %519 = add i64 %511, 9
  store i64 %519, i64* %3, align 8
  %520 = inttoptr i64 %518 to i32*
  %521 = load i32, i32* %520, align 4
  %522 = sext i32 %521 to i64
  %523 = shl nuw i64 %513, 32
  %524 = or i64 %523, %510
  %525 = sdiv i64 %524, %522
  %526 = shl i64 %525, 32
  %527 = ashr exact i64 %526, 32
  %528 = icmp eq i64 %525, %527
  br i1 %528, label %531, label %529

; <label>:529:                                    ; preds = %routine_shll__cl___edx.exit
  %530 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %519, %struct.Memory* %MEMORY.0)
  %.pre12 = load i64, i64* %RBP.i, align 8
  %.pre13 = load i32, i32* %EAX.i213, align 4
  %.pre14 = load i64, i64* %3, align 8
  br label %routine_idivl___rsi_.exit

; <label>:531:                                    ; preds = %routine_shll__cl___edx.exit
  %532 = srem i64 %524, %522
  %533 = and i64 %525, 4294967295
  store i64 %533, i64* %RAX.i97, align 8
  %534 = and i64 %532, 4294967295
  store i64 %534, i64* %RDX.i188, align 8
  store i8 0, i8* %19, align 1
  store i8 0, i8* %25, align 1
  store i8 0, i8* %26, align 1
  store i8 0, i8* %29, align 1
  store i8 0, i8* %32, align 1
  store i8 0, i8* %33, align 1
  %535 = trunc i64 %525 to i32
  br label %routine_idivl___rsi_.exit

routine_idivl___rsi_.exit:                        ; preds = %531, %529
  %536 = phi i64 [ %.pre14, %529 ], [ %519, %531 ]
  %537 = phi i32 [ %.pre13, %529 ], [ %535, %531 ]
  %538 = phi i64 [ %.pre12, %529 ], [ %514, %531 ]
  %539 = phi %struct.Memory* [ %530, %529 ], [ %MEMORY.0, %531 ]
  %540 = add i64 %538, -20
  %541 = add i64 %536, 3
  store i64 %541, i64* %3, align 8
  %542 = inttoptr i64 %540 to i32*
  store i32 %537, i32* %542, align 4
  %543 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 3
  %544 = bitcast %union.VectorReg* %543 to i8*
  %545 = load i64, i64* %RBP.i, align 8
  %546 = add i64 %545, -20
  %547 = load i64, i64* %3, align 8
  %548 = add i64 %547, 5
  store i64 %548, i64* %3, align 8
  %549 = bitcast %union.VectorReg* %543 to <2 x i32>*
  %550 = load <2 x i32>, <2 x i32>* %549, align 1
  %551 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 3, i32 0, i32 0, i32 0, i64 1
  %552 = bitcast i64* %551 to <2 x i32>*
  %553 = load <2 x i32>, <2 x i32>* %552, align 1
  %554 = inttoptr i64 %546 to i32*
  %555 = load i32, i32* %554, align 4
  %556 = sitofp i32 %555 to float
  %557 = bitcast %union.VectorReg* %543 to float*
  store float %556, float* %557, align 1
  %558 = extractelement <2 x i32> %550, i32 1
  %559 = getelementptr inbounds i8, i8* %544, i64 4
  %560 = bitcast i8* %559 to i32*
  store i32 %558, i32* %560, align 1
  %561 = extractelement <2 x i32> %553, i32 0
  %562 = bitcast i64* %551 to i32*
  store i32 %561, i32* %562, align 1
  %563 = extractelement <2 x i32> %553, i32 1
  %564 = getelementptr inbounds i8, i8* %544, i64 12
  %565 = bitcast i8* %564 to i32*
  store i32 %563, i32* %565, align 1
  %566 = bitcast %union.VectorReg* %543 to <2 x float>*
  %567 = load <2 x float>, <2 x float>* %566, align 1
  %568 = load <2 x i32>, <2 x i32>* %552, align 1
  %569 = bitcast %union.VectorReg* %378 to <2 x float>*
  %570 = load <2 x float>, <2 x float>* %569, align 1
  %571 = extractelement <2 x float> %567, i32 0
  %572 = extractelement <2 x float> %570, i32 0
  %573 = fdiv float %571, %572
  store float %573, float* %557, align 1
  %574 = bitcast <2 x float> %567 to <2 x i32>
  %575 = extractelement <2 x i32> %574, i32 1
  store i32 %575, i32* %560, align 1
  %576 = extractelement <2 x i32> %568, i32 0
  store i32 %576, i32* %562, align 1
  %577 = extractelement <2 x i32> %568, i32 1
  store i32 %577, i32* %565, align 1
  %578 = load <2 x float>, <2 x float>* %566, align 1
  %579 = extractelement <2 x float> %578, i32 0
  store float %579, float* bitcast (%G_0x6f96f8_type* @G_0x6f96f8 to float*), align 8
  %580 = bitcast %union.VectorReg* %364 to <2 x float>*
  %581 = load <2 x float>, <2 x float>* %580, align 1
  %582 = bitcast i64* %374 to <2 x i32>*
  %583 = extractelement <2 x float> %581, i32 0
  %584 = fmul float %583, %579
  store float %584, float* %370, align 1
  %585 = bitcast <2 x float> %581 to <2 x i32>
  %586 = extractelement <2 x i32> %585, i32 1
  %587 = bitcast i8* %372 to i32*
  store i32 %586, i32* %587, align 1
  %588 = bitcast i64* %374 to i32*
  %589 = bitcast i8* %376 to i32*
  %590 = load <2 x float>, <2 x float>* %580, align 1
  %591 = extractelement <2 x float> %590, i32 0
  store float %591, float* bitcast (%G_0x70d4cc_type* @G_0x70d4cc to float*), align 8
  %592 = bitcast [32 x %union.VectorReg]* %350 to <2 x i32>*
  %593 = load <2 x i32>, <2 x i32>* %592, align 1
  %594 = bitcast i64* %360 to <2 x i32>*
  %595 = load <2 x i32>, <2 x i32>* %594, align 1
  %596 = extractelement <2 x i32> %593, i32 0
  store i32 %596, i32* %371, align 1
  %597 = extractelement <2 x i32> %593, i32 1
  store i32 %597, i32* %587, align 1
  %598 = extractelement <2 x i32> %595, i32 0
  store i32 %598, i32* %588, align 1
  %599 = load <2 x float>, <2 x float>* %580, align 1
  %600 = extractelement <2 x float> %599, i32 0
  %601 = fmul float %600, %591
  store float %601, float* %370, align 1
  %602 = bitcast <2 x float> %599 to <2 x i32>
  %603 = extractelement <2 x i32> %602, i32 1
  store i32 %603, i32* %587, align 1
  %604 = load <2 x float>, <2 x float>* %580, align 1
  %605 = extractelement <2 x float> %604, i32 0
  store float %605, float* bitcast (%G_0x70d4c8_type* @G_0x70d4c8 to float*), align 8
  store i32 %596, i32* %371, align 1
  store i32 %597, i32* %587, align 1
  store i32 %598, i32* %588, align 1
  %606 = load <2 x float>, <2 x float>* %580, align 1
  %607 = extractelement <2 x float> %606, i32 0
  %608 = fmul float %607, %591
  store float %608, float* %370, align 1
  %609 = bitcast <2 x float> %606 to <2 x i32>
  %610 = extractelement <2 x i32> %609, i32 1
  store i32 %610, i32* %587, align 1
  %611 = load <2 x float>, <2 x float>* %580, align 1
  %612 = extractelement <2 x float> %611, i32 0
  store float %612, float* bitcast (%G_0x70d4c4_type* @G_0x70d4c4 to float*), align 8
  store i32 %596, i32* %371, align 1
  store i32 %597, i32* %587, align 1
  store i32 %598, i32* %588, align 1
  %613 = load <2 x float>, <2 x float>* %580, align 1
  %614 = extractelement <2 x float> %613, i32 0
  %615 = fmul float %614, %612
  store float %615, float* %370, align 1
  %616 = bitcast <2 x float> %613 to <2 x i32>
  %617 = extractelement <2 x i32> %616, i32 1
  store i32 %617, i32* %587, align 1
  %618 = load <2 x float>, <2 x float>* %580, align 1
  %619 = extractelement <2 x float> %618, i32 0
  store float %619, float* bitcast (%G_0x70d4c0_type* @G_0x70d4c0 to float*), align 8
  store i32 %596, i32* %371, align 1
  store i32 %597, i32* %587, align 1
  store i32 %598, i32* %588, align 1
  %620 = load <2 x float>, <2 x float>* %580, align 1
  %621 = extractelement <2 x float> %620, i32 0
  %622 = fmul float %621, %619
  store float %622, float* %370, align 1
  %623 = bitcast <2 x float> %620 to <2 x i32>
  %624 = extractelement <2 x i32> %623, i32 1
  store i32 %624, i32* %587, align 1
  %625 = load <2 x float>, <2 x float>* %580, align 1
  %626 = extractelement <2 x float> %625, i32 0
  store float %626, float* bitcast (%G_0x70d4bc_type* @G_0x70d4bc to float*), align 8
  %627 = load <2 x i32>, <2 x i32>* %592, align 1
  %628 = load <2 x i32>, <2 x i32>* %594, align 1
  %629 = extractelement <2 x i32> %627, i32 0
  store i32 %629, i32* %371, align 1
  %630 = extractelement <2 x i32> %627, i32 1
  store i32 %630, i32* %587, align 1
  %631 = extractelement <2 x i32> %628, i32 0
  store i32 %631, i32* %588, align 1
  %632 = extractelement <2 x i32> %628, i32 1
  store i32 %632, i32* %589, align 1
  %633 = load <2 x float>, <2 x float>* %580, align 1
  %634 = load <2 x i32>, <2 x i32>* %582, align 1
  %635 = extractelement <2 x float> %633, i32 0
  %636 = fmul float %635, %619
  store float %636, float* %370, align 1
  %637 = bitcast <2 x float> %633 to <2 x i32>
  %638 = extractelement <2 x i32> %637, i32 1
  store i32 %638, i32* %587, align 1
  %639 = extractelement <2 x i32> %634, i32 0
  store i32 %639, i32* %588, align 1
  %640 = extractelement <2 x i32> %634, i32 1
  store i32 %640, i32* %589, align 1
  %641 = load <2 x float>, <2 x float>* %580, align 1
  %642 = extractelement <2 x float> %641, i32 0
  store float %642, float* bitcast (%G_0x70d4b8_type* @G_0x70d4b8 to float*), align 8
  %643 = bitcast [32 x %union.VectorReg]* %350 to <2 x float>*
  %644 = bitcast <2 x i32> %627 to <2 x float>
  %645 = extractelement <2 x float> %644, i32 0
  %646 = fmul float %642, %645
  store float %646, float* %356, align 1
  %647 = extractelement <2 x i32> %627, i32 1
  %648 = bitcast i8* %358 to i32*
  store i32 %647, i32* %648, align 1
  %649 = bitcast i64* %360 to i32*
  store i32 %631, i32* %649, align 1
  %650 = bitcast i8* %362 to i32*
  store i32 %632, i32* %650, align 1
  %651 = load <2 x float>, <2 x float>* %643, align 1
  %652 = extractelement <2 x float> %651, i32 0
  store float %652, float* bitcast (%G_0x70d4b4_type* @G_0x70d4b4 to float*), align 8
  %653 = add i64 %547, 160
  store i64 %653, i64* %3, align 8
  %654 = load i64, i64* %6, align 8
  %655 = add i64 %654, 8
  %656 = inttoptr i64 %654 to i64*
  %657 = load i64, i64* %656, align 8
  store i64 %657, i64* %RBP.i, align 8
  store i64 %655, i64* %6, align 8
  %658 = add i64 %547, 161
  store i64 %658, i64* %3, align 8
  %659 = inttoptr i64 %655 to i64*
  %660 = load i64, i64* %659, align 8
  store i64 %660, i64* %3, align 8
  %661 = add i64 %654, 16
  store i64 %661, i64* %6, align 8
  ret %struct.Memory* %539
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
define %struct.Memory* @routine_movl__0x6___eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 5
  store i64 %4, i64* %PC, align 8
  store i64 6, i64* %RAX, align 8
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
define %struct.Memory* @routine_movl_0x10__rcx____edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = add i64 %3, 16
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
define %struct.Memory* @routine_subl__0x0___edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %RDX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 3
  store i64 %5, i64* %PC, align 8
  %6 = trunc i64 %3 to i32
  %7 = and i64 %3, 4294967295
  store i64 %7, i64* %RDX, align 8
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
define %struct.Memory* @routine_movl_0x10__rcx____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = add i64 %3, 16
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
define %struct.Memory* @routine_subl__0x0___eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 3
  store i64 %5, i64* %PC, align 8
  %6 = trunc i64 %3 to i32
  %7 = and i64 %3, 4294967295
  store i64 %7, i64* %RAX, align 8
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
define %struct.Memory* @routine_movl__edx__MINUS0x8__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %EDX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -8
  %6 = load i32, i32* %EDX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x4__rbp____edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -4
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
define %struct.Memory* @routine_addl__0xf___edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %RDX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 3
  store i64 %5, i64* %PC, align 8
  %6 = trunc i64 %3 to i32
  %7 = add i32 %6, 15
  %8 = zext i32 %7 to i64
  store i64 %8, i64* %RDX, align 8
  %9 = icmp ugt i32 %6, -16
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
define %struct.Memory* @routine_movl__edx__MINUS0xc__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %EDX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -12
  %6 = load i32, i32* %EDX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
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
define %struct.Memory* @routine_cmpl__0x2__0x18__rcx_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
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
define %struct.Memory* @routine_jne_.L_41fa3e(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl__0x3___eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 5
  store i64 %4, i64* %PC, align 8
  store i64 3, i64* %RAX, align 8
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
define %struct.Memory* @routine_movl_MINUS0xc__rbp____edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -12
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
define %struct.Memory* @routine_movl__ecx__MINUS0x1c__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %ECX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -28
  %6 = load i32, i32* %ECX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
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
define %struct.Memory* @routine_movl_MINUS0x1c__rbp____edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -28
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
define %struct.Memory* @routine_movl_MINUS0x20__rbp____esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -32
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
define %struct.Memory* @routine_jmpq_.L_41fa63(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl_MINUS0x28__rbp____esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -40
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
define %struct.Memory* @routine_movss_0x9ddbd__rip____xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %4 = bitcast %union.VectorReg* %3 to i8*
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, ptrtoint (%G_0x9ddbd__rip__type* @G_0x9ddbd__rip_ to i64)
  %7 = add i64 %5, 8
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %6 to i32*
  %9 = load i32, i32* %8, align 4
  %10 = bitcast %union.VectorReg* %3 to i32*
  store i32 %9, i32* %10, align 1
  %11 = getelementptr inbounds i8, i8* %4, i64 4
  %12 = bitcast i8* %11 to float*
  store float 0.000000e+00, float* %12, align 1
  %13 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 1
  %14 = bitcast i64* %13 to float*
  store float 0.000000e+00, float* %14, align 1
  %15 = getelementptr inbounds i8, i8* %4, i64 12
  %16 = bitcast i8* %15 to float*
  store float 0.000000e+00, float* %16, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movss_0x9ddb9__rip____xmm1(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1
  %4 = bitcast %union.VectorReg* %3 to i8*
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, ptrtoint (%G_0x9ddb9__rip__type* @G_0x9ddb9__rip_ to i64)
  %7 = add i64 %5, 8
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %6 to i32*
  %9 = load i32, i32* %8, align 4
  %10 = bitcast %union.VectorReg* %3 to i32*
  store i32 %9, i32* %10, align 1
  %11 = getelementptr inbounds i8, i8* %4, i64 4
  %12 = bitcast i8* %11 to float*
  store float 0.000000e+00, float* %12, align 1
  %13 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1, i32 0, i32 0, i32 0, i64 1
  %14 = bitcast i64* %13 to float*
  store float 0.000000e+00, float* %14, align 1
  %15 = getelementptr inbounds i8, i8* %4, i64 12
  %16 = bitcast i8* %15 to float*
  store float 0.000000e+00, float* %16, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movss_0x9ddb5__rip____xmm2(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 2
  %4 = bitcast %union.VectorReg* %3 to i8*
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, ptrtoint (%G_0x9ddb5__rip__type* @G_0x9ddb5__rip_ to i64)
  %7 = add i64 %5, 8
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %6 to i32*
  %9 = load i32, i32* %8, align 4
  %10 = bitcast %union.VectorReg* %3 to i32*
  store i32 %9, i32* %10, align 1
  %11 = getelementptr inbounds i8, i8* %4, i64 4
  %12 = bitcast i8* %11 to float*
  store float 0.000000e+00, float* %12, align 1
  %13 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 2, i32 0, i32 0, i32 0, i64 1
  %14 = bitcast i64* %13 to float*
  store float 0.000000e+00, float* %14, align 1
  %15 = getelementptr inbounds i8, i8* %4, i64 12
  %16 = bitcast i8* %15 to float*
  store float 0.000000e+00, float* %16, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__0x4b8ad0___rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x4b8ad0_type* @G__0x4b8ad0 to i64), i64* %RAX, align 8
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
define %struct.Memory* @routine_subl_MINUS0x10__rbp____edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
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
define %struct.Memory* @routine_addq__rsi___rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %RSI, align 8
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

define %struct.Memory* @routine_idivl___rsi_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = bitcast i64* %RSI to i32**
  %4 = load i32*, i32** %3, align 8
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
  %15 = load i32, i32* %4, align 4
  %16 = sext i32 %15 to i64
  %17 = shl nuw i64 %14, 32
  %18 = or i64 %17, %10
  %19 = sdiv i64 %18, %16
  %20 = shl i64 %19, 32
  %21 = ashr exact i64 %20, 32
  %22 = icmp eq i64 %19, %21
  br i1 %22, label %25, label %23

; <label>:23:                                     ; preds = %block_400488
  %24 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %6, %struct.Memory* %2)
  br label %_ZN12_GLOBAL__N_1L10IDIVedxeaxI2MnIjEEEP6MemoryS4_R5StateT_.exit

; <label>:25:                                     ; preds = %block_400488
  %26 = srem i64 %18, %16
  %27 = getelementptr inbounds %union.anon, %union.anon* %7, i64 0, i32 0
  %28 = and i64 %19, 4294967295
  store i64 %28, i64* %27, align 8
  %29 = getelementptr inbounds %union.anon, %union.anon* %11, i64 0, i32 0
  %30 = and i64 %26, 4294967295
  store i64 %30, i64* %29, align 8
  %31 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %31, align 1
  %32 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 0, i8* %32, align 1
  %33 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %33, align 1
  %34 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %34, align 1
  %35 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 0, i8* %35, align 1
  %36 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %36, align 1
  br label %_ZN12_GLOBAL__N_1L10IDIVedxeaxI2MnIjEEEP6MemoryS4_R5StateT_.exit

_ZN12_GLOBAL__N_1L10IDIVedxeaxI2MnIjEEEP6MemoryS4_R5StateT_.exit: ; preds = %25, %23
  %37 = phi %struct.Memory* [ %24, %23 ], [ %2, %25 ]
  ret %struct.Memory* %37
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
define %struct.Memory* @routine_cvtsi2ssl_MINUS0x14__rbp____xmm3(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 3
  %4 = bitcast %union.VectorReg* %3 to i8*
  %5 = load i64, i64* %RBP, align 8
  %6 = add i64 %5, -20
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 5
  store i64 %8, i64* %PC, align 8
  %9 = bitcast %union.VectorReg* %3 to <2 x i32>*
  %10 = load <2 x i32>, <2 x i32>* %9, align 1
  %11 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 3, i32 0, i32 0, i32 0, i64 1
  %12 = bitcast i64* %11 to <2 x i32>*
  %13 = load <2 x i32>, <2 x i32>* %12, align 1
  %14 = inttoptr i64 %6 to i32*
  %15 = load i32, i32* %14, align 4
  %16 = sitofp i32 %15 to float
  %17 = bitcast %union.VectorReg* %3 to float*
  store float %16, float* %17, align 1
  %18 = extractelement <2 x i32> %10, i32 1
  %19 = getelementptr inbounds i8, i8* %4, i64 4
  %20 = bitcast i8* %19 to i32*
  store i32 %18, i32* %20, align 1
  %21 = extractelement <2 x i32> %13, i32 0
  %22 = bitcast i64* %11 to i32*
  store i32 %21, i32* %22, align 1
  %23 = extractelement <2 x i32> %13, i32 1
  %24 = getelementptr inbounds i8, i8* %4, i64 12
  %25 = bitcast i8* %24 to i32*
  store i32 %23, i32* %25, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_divss__xmm2___xmm3(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 3
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 2
  %5 = bitcast %union.VectorReg* %3 to i8*
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 4
  store i64 %7, i64* %PC, align 8
  %8 = bitcast %union.VectorReg* %3 to <2 x float>*
  %9 = load <2 x float>, <2 x float>* %8, align 1
  %10 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 3, i32 0, i32 0, i32 0, i64 1
  %11 = bitcast i64* %10 to <2 x i32>*
  %12 = load <2 x i32>, <2 x i32>* %11, align 1
  %13 = bitcast %union.VectorReg* %4 to <2 x float>*
  %14 = load <2 x float>, <2 x float>* %13, align 1
  %15 = extractelement <2 x float> %9, i32 0
  %16 = extractelement <2 x float> %14, i32 0
  %17 = fdiv float %15, %16
  %18 = bitcast %union.VectorReg* %3 to float*
  store float %17, float* %18, align 1
  %19 = bitcast <2 x float> %9 to <2 x i32>
  %20 = extractelement <2 x i32> %19, i32 1
  %21 = getelementptr inbounds i8, i8* %5, i64 4
  %22 = bitcast i8* %21 to i32*
  store i32 %20, i32* %22, align 1
  %23 = extractelement <2 x i32> %12, i32 0
  %24 = bitcast i64* %10 to i32*
  store i32 %23, i32* %24, align 1
  %25 = extractelement <2 x i32> %12, i32 1
  %26 = getelementptr inbounds i8, i8* %5, i64 12
  %27 = bitcast i8* %26 to i32*
  store i32 %25, i32* %27, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movss__xmm3__0x6f96f8(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 3
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 9
  store i64 %5, i64* %PC, align 8
  %6 = bitcast %union.VectorReg* %3 to <2 x float>*
  %7 = load <2 x float>, <2 x float>* %6, align 1
  %8 = extractelement <2 x float> %7, i32 0
  store float %8, float* bitcast (%G_0x6f96f8_type* @G_0x6f96f8 to float*), align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_mulss_0x6f96f8___xmm1(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1
  %4 = bitcast %union.VectorReg* %3 to i8*
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 9
  store i64 %6, i64* %PC, align 8
  %7 = bitcast %union.VectorReg* %3 to <2 x float>*
  %8 = load <2 x float>, <2 x float>* %7, align 1
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1, i32 0, i32 0, i32 0, i64 1
  %10 = bitcast i64* %9 to <2 x i32>*
  %11 = load <2 x i32>, <2 x i32>* %10, align 1
  %12 = load float, float* bitcast (%G_0x6f96f8_type* @G_0x6f96f8 to float*), align 8
  %13 = extractelement <2 x float> %8, i32 0
  %14 = fmul float %13, %12
  %15 = bitcast %union.VectorReg* %3 to float*
  store float %14, float* %15, align 1
  %16 = bitcast <2 x float> %8 to <2 x i32>
  %17 = extractelement <2 x i32> %16, i32 1
  %18 = getelementptr inbounds i8, i8* %4, i64 4
  %19 = bitcast i8* %18 to i32*
  store i32 %17, i32* %19, align 1
  %20 = extractelement <2 x i32> %11, i32 0
  %21 = bitcast i64* %9 to i32*
  store i32 %20, i32* %21, align 1
  %22 = extractelement <2 x i32> %11, i32 1
  %23 = getelementptr inbounds i8, i8* %4, i64 12
  %24 = bitcast i8* %23 to i32*
  store i32 %22, i32* %24, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movss__xmm1__0x70d4cc(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 9
  store i64 %5, i64* %PC, align 8
  %6 = bitcast %union.VectorReg* %3 to <2 x float>*
  %7 = load <2 x float>, <2 x float>* %6, align 1
  %8 = extractelement <2 x float> %7, i32 0
  store float %8, float* bitcast (%G_0x70d4cc_type* @G_0x70d4cc to float*), align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movaps__xmm0___xmm1(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %5 = bitcast %union.VectorReg* %3 to i8*
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 3
  store i64 %7, i64* %PC, align 8
  %8 = bitcast %union.VectorReg* %4 to <2 x i32>*
  %9 = load <2 x i32>, <2 x i32>* %8, align 1
  %10 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 1
  %11 = bitcast i64* %10 to <2 x i32>*
  %12 = load <2 x i32>, <2 x i32>* %11, align 1
  %13 = extractelement <2 x i32> %9, i32 0
  %14 = bitcast %union.VectorReg* %3 to i32*
  store i32 %13, i32* %14, align 1
  %15 = extractelement <2 x i32> %9, i32 1
  %16 = getelementptr inbounds i8, i8* %5, i64 4
  %17 = bitcast i8* %16 to i32*
  store i32 %15, i32* %17, align 1
  %18 = extractelement <2 x i32> %12, i32 0
  %19 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1, i32 0, i32 0, i32 0, i64 1
  %20 = bitcast i64* %19 to i32*
  store i32 %18, i32* %20, align 1
  %21 = extractelement <2 x i32> %12, i32 1
  %22 = getelementptr inbounds i8, i8* %5, i64 12
  %23 = bitcast i8* %22 to i32*
  store i32 %21, i32* %23, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_mulss_0x70d4cc___xmm1(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1
  %4 = bitcast %union.VectorReg* %3 to i8*
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 9
  store i64 %6, i64* %PC, align 8
  %7 = bitcast %union.VectorReg* %3 to <2 x float>*
  %8 = load <2 x float>, <2 x float>* %7, align 1
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1, i32 0, i32 0, i32 0, i64 1
  %10 = bitcast i64* %9 to <2 x i32>*
  %11 = load <2 x i32>, <2 x i32>* %10, align 1
  %12 = load float, float* bitcast (%G_0x70d4cc_type* @G_0x70d4cc to float*), align 8
  %13 = extractelement <2 x float> %8, i32 0
  %14 = fmul float %13, %12
  %15 = bitcast %union.VectorReg* %3 to float*
  store float %14, float* %15, align 1
  %16 = bitcast <2 x float> %8 to <2 x i32>
  %17 = extractelement <2 x i32> %16, i32 1
  %18 = getelementptr inbounds i8, i8* %4, i64 4
  %19 = bitcast i8* %18 to i32*
  store i32 %17, i32* %19, align 1
  %20 = extractelement <2 x i32> %11, i32 0
  %21 = bitcast i64* %9 to i32*
  store i32 %20, i32* %21, align 1
  %22 = extractelement <2 x i32> %11, i32 1
  %23 = getelementptr inbounds i8, i8* %4, i64 12
  %24 = bitcast i8* %23 to i32*
  store i32 %22, i32* %24, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movss__xmm1__0x70d4c8(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 9
  store i64 %5, i64* %PC, align 8
  %6 = bitcast %union.VectorReg* %3 to <2 x float>*
  %7 = load <2 x float>, <2 x float>* %6, align 1
  %8 = extractelement <2 x float> %7, i32 0
  store float %8, float* bitcast (%G_0x70d4c8_type* @G_0x70d4c8 to float*), align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movss__xmm1__0x70d4c4(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 9
  store i64 %5, i64* %PC, align 8
  %6 = bitcast %union.VectorReg* %3 to <2 x float>*
  %7 = load <2 x float>, <2 x float>* %6, align 1
  %8 = extractelement <2 x float> %7, i32 0
  store float %8, float* bitcast (%G_0x70d4c4_type* @G_0x70d4c4 to float*), align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_mulss_0x70d4c4___xmm1(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1
  %4 = bitcast %union.VectorReg* %3 to i8*
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 9
  store i64 %6, i64* %PC, align 8
  %7 = bitcast %union.VectorReg* %3 to <2 x float>*
  %8 = load <2 x float>, <2 x float>* %7, align 1
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1, i32 0, i32 0, i32 0, i64 1
  %10 = bitcast i64* %9 to <2 x i32>*
  %11 = load <2 x i32>, <2 x i32>* %10, align 1
  %12 = load float, float* bitcast (%G_0x70d4c4_type* @G_0x70d4c4 to float*), align 8
  %13 = extractelement <2 x float> %8, i32 0
  %14 = fmul float %13, %12
  %15 = bitcast %union.VectorReg* %3 to float*
  store float %14, float* %15, align 1
  %16 = bitcast <2 x float> %8 to <2 x i32>
  %17 = extractelement <2 x i32> %16, i32 1
  %18 = getelementptr inbounds i8, i8* %4, i64 4
  %19 = bitcast i8* %18 to i32*
  store i32 %17, i32* %19, align 1
  %20 = extractelement <2 x i32> %11, i32 0
  %21 = bitcast i64* %9 to i32*
  store i32 %20, i32* %21, align 1
  %22 = extractelement <2 x i32> %11, i32 1
  %23 = getelementptr inbounds i8, i8* %4, i64 12
  %24 = bitcast i8* %23 to i32*
  store i32 %22, i32* %24, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movss__xmm1__0x70d4c0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 9
  store i64 %5, i64* %PC, align 8
  %6 = bitcast %union.VectorReg* %3 to <2 x float>*
  %7 = load <2 x float>, <2 x float>* %6, align 1
  %8 = extractelement <2 x float> %7, i32 0
  store float %8, float* bitcast (%G_0x70d4c0_type* @G_0x70d4c0 to float*), align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_mulss_0x70d4c0___xmm1(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1
  %4 = bitcast %union.VectorReg* %3 to i8*
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 9
  store i64 %6, i64* %PC, align 8
  %7 = bitcast %union.VectorReg* %3 to <2 x float>*
  %8 = load <2 x float>, <2 x float>* %7, align 1
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1, i32 0, i32 0, i32 0, i64 1
  %10 = bitcast i64* %9 to <2 x i32>*
  %11 = load <2 x i32>, <2 x i32>* %10, align 1
  %12 = load float, float* bitcast (%G_0x70d4c0_type* @G_0x70d4c0 to float*), align 8
  %13 = extractelement <2 x float> %8, i32 0
  %14 = fmul float %13, %12
  %15 = bitcast %union.VectorReg* %3 to float*
  store float %14, float* %15, align 1
  %16 = bitcast <2 x float> %8 to <2 x i32>
  %17 = extractelement <2 x i32> %16, i32 1
  %18 = getelementptr inbounds i8, i8* %4, i64 4
  %19 = bitcast i8* %18 to i32*
  store i32 %17, i32* %19, align 1
  %20 = extractelement <2 x i32> %11, i32 0
  %21 = bitcast i64* %9 to i32*
  store i32 %20, i32* %21, align 1
  %22 = extractelement <2 x i32> %11, i32 1
  %23 = getelementptr inbounds i8, i8* %4, i64 12
  %24 = bitcast i8* %23 to i32*
  store i32 %22, i32* %24, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movss__xmm1__0x70d4bc(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 9
  store i64 %5, i64* %PC, align 8
  %6 = bitcast %union.VectorReg* %3 to <2 x float>*
  %7 = load <2 x float>, <2 x float>* %6, align 1
  %8 = extractelement <2 x float> %7, i32 0
  store float %8, float* bitcast (%G_0x70d4bc_type* @G_0x70d4bc to float*), align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movss__xmm1__0x70d4b8(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 9
  store i64 %5, i64* %PC, align 8
  %6 = bitcast %union.VectorReg* %3 to <2 x float>*
  %7 = load <2 x float>, <2 x float>* %6, align 1
  %8 = extractelement <2 x float> %7, i32 0
  store float %8, float* bitcast (%G_0x70d4b8_type* @G_0x70d4b8 to float*), align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_mulss_0x70d4b8___xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %4 = bitcast %union.VectorReg* %3 to i8*
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 9
  store i64 %6, i64* %PC, align 8
  %7 = bitcast %union.VectorReg* %3 to <2 x float>*
  %8 = load <2 x float>, <2 x float>* %7, align 1
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 1
  %10 = bitcast i64* %9 to <2 x i32>*
  %11 = load <2 x i32>, <2 x i32>* %10, align 1
  %12 = load float, float* bitcast (%G_0x70d4b8_type* @G_0x70d4b8 to float*), align 8
  %13 = extractelement <2 x float> %8, i32 0
  %14 = fmul float %13, %12
  %15 = bitcast %union.VectorReg* %3 to float*
  store float %14, float* %15, align 1
  %16 = bitcast <2 x float> %8 to <2 x i32>
  %17 = extractelement <2 x i32> %16, i32 1
  %18 = getelementptr inbounds i8, i8* %4, i64 4
  %19 = bitcast i8* %18 to i32*
  store i32 %17, i32* %19, align 1
  %20 = extractelement <2 x i32> %11, i32 0
  %21 = bitcast i64* %9 to i32*
  store i32 %20, i32* %21, align 1
  %22 = extractelement <2 x i32> %11, i32 1
  %23 = getelementptr inbounds i8, i8* %4, i64 12
  %24 = bitcast i8* %23 to i32*
  store i32 %22, i32* %24, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movss__xmm0__0x70d4b4(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 9
  store i64 %5, i64* %PC, align 8
  %6 = bitcast %union.VectorReg* %3 to <2 x float>*
  %7 = load <2 x float>, <2 x float>* %6, align 1
  %8 = extractelement <2 x float> %7, i32 0
  store float %8, float* bitcast (%G_0x70d4b4_type* @G_0x70d4b4 to float*), align 8
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
