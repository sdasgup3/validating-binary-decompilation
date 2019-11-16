; ModuleID = 'mcsema/test.proposed.inline.ll'
source_filename = "llvm-link"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu-elf"

%__bss_start_type = type <{ [8 x i8] }>
%G_0x662c38_type = type <{ [4 x i8] }>
%G_0x676b10_type = type <{ [8 x i8] }>
%G_0x676b18_type = type <{ [8 x i8] }>
%G_0x676d20_type = type <{ [8 x i8] }>
%G_0xf26c__rip__type = type <{ [8 x i8] }>
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
@G_0x662c38 = local_unnamed_addr global %G_0x662c38_type zeroinitializer
@G_0x676b10 = local_unnamed_addr global %G_0x676b10_type zeroinitializer
@G_0x676b18 = local_unnamed_addr global %G_0x676b18_type zeroinitializer
@G_0x676d20 = local_unnamed_addr global %G_0x676d20_type zeroinitializer
@G_0xf26c__rip_ = global %G_0xf26c__rip__type zeroinitializer

declare %struct.Memory* @__remill_error(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr

; Function Attrs: nounwind readnone
declare i32 @llvm.ctpop.i32(i32) #0

; Function Attrs: nounwind readnone
declare double @llvm.fabs.f64(double) #0

; Function Attrs: nounwind readnone
declare double @llvm.trunc.f64(double) #0

; Function Attrs: alwaysinline
define %struct.Memory* @sre_random(%struct.State* noalias, i64, %struct.Memory* noalias) local_unnamed_addr #1 {
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
  %11 = add i64 %7, -40
  %12 = add i64 %10, 11
  store i64 %12, i64* %3, align 8
  %13 = inttoptr i64 %11 to i64*
  store i64 40014, i64* %13, align 8
  %14 = load i64, i64* %RBP.i, align 8
  %15 = add i64 %14, -40
  %16 = load i64, i64* %3, align 8
  %17 = add i64 %16, 8
  store i64 %17, i64* %3, align 8
  %18 = inttoptr i64 %15 to i64*
  store i64 2147483563, i64* %18, align 8
  %19 = load i64, i64* %RBP.i, align 8
  %20 = add i64 %19, -48
  %21 = load i64, i64* %3, align 8
  %22 = add i64 %21, 8
  store i64 %22, i64* %3, align 8
  %23 = inttoptr i64 %20 to i64*
  store i64 53668, i64* %23, align 8
  %24 = load i64, i64* %RBP.i, align 8
  %25 = add i64 %24, -56
  %26 = load i64, i64* %3, align 8
  %27 = add i64 %26, 8
  store i64 %27, i64* %3, align 8
  %28 = inttoptr i64 %25 to i64*
  store i64 12211, i64* %28, align 8
  %29 = load i64, i64* %RBP.i, align 8
  %30 = add i64 %29, -64
  %31 = load i64, i64* %3, align 8
  %32 = add i64 %31, 8
  store i64 %32, i64* %3, align 8
  %33 = inttoptr i64 %30 to i64*
  store i64 40692, i64* %33, align 8
  %34 = load i64, i64* %RBP.i, align 8
  %35 = add i64 %34, -72
  %36 = load i64, i64* %3, align 8
  %37 = add i64 %36, 8
  store i64 %37, i64* %3, align 8
  %38 = inttoptr i64 %35 to i64*
  store i64 2147483399, i64* %38, align 8
  %39 = load i64, i64* %RBP.i, align 8
  %40 = add i64 %39, -80
  %41 = load i64, i64* %3, align 8
  %42 = add i64 %41, 8
  store i64 %42, i64* %3, align 8
  %43 = inttoptr i64 %40 to i64*
  store i64 52774, i64* %43, align 8
  %44 = load i64, i64* %RBP.i, align 8
  %45 = add i64 %44, -88
  %46 = load i64, i64* %3, align 8
  %47 = add i64 %46, 8
  store i64 %47, i64* %3, align 8
  %48 = inttoptr i64 %45 to i64*
  store i64 3791, i64* %48, align 8
  %49 = load i64, i64* %3, align 8
  %50 = load i32, i32* bitcast (%G_0x662c38_type* @G_0x662c38 to i32*), align 8
  %51 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %51, align 1
  %52 = and i32 %50, 255
  %53 = tail call i32 @llvm.ctpop.i32(i32 %52)
  %54 = trunc i32 %53 to i8
  %55 = and i8 %54, 1
  %56 = xor i8 %55, 1
  %57 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %56, i8* %57, align 1
  %58 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %58, align 1
  %59 = icmp eq i32 %50, 0
  %60 = zext i1 %59 to i8
  %61 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %60, i8* %61, align 1
  %62 = lshr i32 %50, 31
  %63 = trunc i32 %62 to i8
  %64 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %63, i8* %64, align 1
  %65 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %65, align 1
  %66 = icmp ne i8 %63, 0
  %67 = or i1 %59, %66
  %.v53 = select i1 %67, i64 398, i64 14
  %68 = add i64 %49, %.v53
  store i64 %68, i64* %3, align 8
  br i1 %67, label %entry.block_.L_4455d2_crit_edge, label %block_445452

entry.block_.L_4455d2_crit_edge:                  ; preds = %entry
  %.pre29 = load i64, i64* %RBP.i, align 8
  %.pre47 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %.pre48 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %.pre49 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %.pre51 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  br label %block_.L_4455d2

block_445452:                                     ; preds = %entry
  %RAX.i357 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %69 = sext i32 %50 to i64
  store i64 %69, i64* bitcast (%G_0x676b10_type* @G_0x676b10 to i64*), align 8
  store i64 %69, i64* %RAX.i357, align 8
  store i64 %69, i64* bitcast (%G_0x676b18_type* @G_0x676b18 to i64*), align 8
  %70 = load i64, i64* %RBP.i, align 8
  %71 = add i64 %70, -20
  %72 = add i64 %68, 39
  store i64 %72, i64* %3, align 8
  %73 = inttoptr i64 %71 to i32*
  store i32 0, i32* %73, align 4
  %RCX.i341 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %74 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %75 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %.pre = load i64, i64* %3, align 8
  br label %block_.L_445479

block_.L_445479:                                  ; preds = %block_.L_4455b4, %block_445452
  %76 = phi i64 [ %.pre, %block_445452 ], [ %607, %block_.L_4455b4 ]
  %MEMORY.0 = phi %struct.Memory* [ %2, %block_445452 ], [ %395, %block_.L_4455b4 ]
  %77 = load i64, i64* %RBP.i, align 8
  %78 = add i64 %77, -20
  %79 = add i64 %76, 4
  store i64 %79, i64* %3, align 8
  %80 = inttoptr i64 %78 to i32*
  %81 = load i32, i32* %80, align 4
  %82 = add i32 %81, -64
  %83 = icmp ult i32 %81, 64
  %84 = zext i1 %83 to i8
  store i8 %84, i8* %51, align 1
  %85 = and i32 %82, 255
  %86 = tail call i32 @llvm.ctpop.i32(i32 %85)
  %87 = trunc i32 %86 to i8
  %88 = and i8 %87, 1
  %89 = xor i8 %88, 1
  store i8 %89, i8* %57, align 1
  %90 = xor i32 %82, %81
  %91 = lshr i32 %90, 4
  %92 = trunc i32 %91 to i8
  %93 = and i8 %92, 1
  store i8 %93, i8* %58, align 1
  %94 = icmp eq i32 %82, 0
  %95 = zext i1 %94 to i8
  store i8 %95, i8* %61, align 1
  %96 = lshr i32 %82, 31
  %97 = trunc i32 %96 to i8
  store i8 %97, i8* %64, align 1
  %98 = lshr i32 %81, 31
  %99 = xor i32 %96, %98
  %100 = add nuw nsw i32 %99, %98
  %101 = icmp eq i32 %100, 2
  %102 = zext i1 %101 to i8
  store i8 %102, i8* %65, align 1
  %103 = icmp ne i8 %97, 0
  %104 = xor i1 %103, %101
  %.v54 = select i1 %104, i64 10, i64 334
  %105 = add i64 %76, %.v54
  store i64 %105, i64* %3, align 8
  br i1 %104, label %block_445483, label %block_.L_4455c7

block_445483:                                     ; preds = %block_.L_445479
  %106 = add i64 %77, -32
  %107 = add i64 %105, 4
  store i64 %107, i64* %3, align 8
  %108 = inttoptr i64 %106 to i64*
  %109 = load i64, i64* %108, align 8
  %110 = load i64, i64* bitcast (%G_0x676b10_type* @G_0x676b10 to i64*), align 8
  store i64 %110, i64* %RCX.i341, align 8
  %111 = add i64 %77, -96
  %112 = add i64 %105, 16
  store i64 %112, i64* %3, align 8
  %113 = inttoptr i64 %111 to i64*
  store i64 %109, i64* %113, align 8
  %114 = load i64, i64* %RCX.i341, align 8
  %115 = load i64, i64* %3, align 8
  store i64 %114, i64* %RAX.i357, align 8
  %116 = ashr i64 %114, 63
  store i64 %116, i64* %74, align 8
  %117 = load i64, i64* %RBP.i, align 8
  %118 = add i64 %117, -48
  %119 = add i64 %115, 9
  store i64 %119, i64* %3, align 8
  %120 = inttoptr i64 %118 to i64*
  %121 = load i64, i64* %120, align 8
  %122 = sext i64 %121 to i128
  %123 = and i128 %122, -18446744073709551616
  %124 = zext i64 %116 to i128
  %125 = shl nuw i128 %124, 64
  %126 = zext i64 %114 to i128
  %127 = or i128 %125, %126
  %128 = zext i64 %121 to i128
  %129 = or i128 %123, %128
  %130 = sdiv i128 %127, %129
  %131 = trunc i128 %130 to i64
  %132 = and i128 %130, 18446744073709551615
  %133 = sext i64 %131 to i128
  %134 = and i128 %133, -18446744073709551616
  %135 = or i128 %134, %132
  %136 = icmp eq i128 %130, %135
  br i1 %136, label %139, label %137

; <label>:137:                                    ; preds = %block_445483
  %138 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %119, %struct.Memory* %MEMORY.0)
  %.pre13 = load i64, i64* %RBP.i, align 8
  %.pre14 = load i64, i64* %3, align 8
  %.pre15 = load i64, i64* %74, align 8
  br label %routine_idivq_MINUS0x30__rbp_.exit330

; <label>:139:                                    ; preds = %block_445483
  %140 = srem i128 %127, %129
  %141 = trunc i128 %140 to i64
  store i64 %131, i64* %75, align 8
  store i64 %141, i64* %74, align 8
  store i8 0, i8* %51, align 1
  store i8 0, i8* %57, align 1
  store i8 0, i8* %58, align 1
  store i8 0, i8* %61, align 1
  store i8 0, i8* %64, align 1
  store i8 0, i8* %65, align 1
  br label %routine_idivq_MINUS0x30__rbp_.exit330

routine_idivq_MINUS0x30__rbp_.exit330:            ; preds = %139, %137
  %142 = phi i64 [ %.pre15, %137 ], [ %141, %139 ]
  %143 = phi i64 [ %.pre14, %137 ], [ %119, %139 ]
  %144 = phi i64 [ %.pre13, %137 ], [ %117, %139 ]
  %145 = phi %struct.Memory* [ %138, %137 ], [ %MEMORY.0, %139 ]
  %146 = add i64 %144, -96
  %147 = add i64 %143, 4
  store i64 %147, i64* %3, align 8
  %148 = inttoptr i64 %146 to i64*
  %149 = load i64, i64* %148, align 8
  %150 = sext i64 %149 to i128
  %151 = and i128 %150, -18446744073709551616
  %152 = sext i64 %142 to i128
  %153 = and i128 %152, -18446744073709551616
  %154 = zext i64 %149 to i128
  %155 = or i128 %151, %154
  %156 = zext i64 %142 to i128
  %157 = or i128 %153, %156
  %158 = mul i128 %157, %155
  %159 = trunc i128 %158 to i64
  store i64 %159, i64* %RCX.i341, align 8
  %160 = sext i64 %159 to i128
  %161 = icmp ne i128 %160, %158
  %162 = zext i1 %161 to i8
  store i8 %162, i8* %51, align 1
  %163 = trunc i128 %158 to i32
  %164 = and i32 %163, 255
  %165 = tail call i32 @llvm.ctpop.i32(i32 %164)
  %166 = trunc i32 %165 to i8
  %167 = and i8 %166, 1
  %168 = xor i8 %167, 1
  store i8 %168, i8* %57, align 1
  store i8 0, i8* %58, align 1
  store i8 0, i8* %61, align 1
  %169 = lshr i64 %159, 63
  %170 = trunc i64 %169 to i8
  store i8 %170, i8* %64, align 1
  store i8 %162, i8* %65, align 1
  %171 = add i64 %144, -8
  %172 = add i64 %143, 12
  store i64 %172, i64* %3, align 8
  %173 = inttoptr i64 %171 to i64*
  store i64 %159, i64* %173, align 8
  %174 = load i64, i64* %RBP.i, align 8
  %175 = add i64 %174, -56
  %176 = load i64, i64* %3, align 8
  %177 = add i64 %176, 4
  store i64 %177, i64* %3, align 8
  %178 = inttoptr i64 %175 to i64*
  %179 = load i64, i64* %178, align 8
  store i64 %179, i64* %RCX.i341, align 8
  %180 = load i64, i64* bitcast (%G_0x676b10_type* @G_0x676b10 to i64*), align 8
  store i64 %180, i64* %RAX.i357, align 8
  %181 = ashr i64 %180, 63
  store i64 %181, i64* %74, align 8
  %182 = add i64 %174, -48
  %183 = add i64 %176, 21
  store i64 %183, i64* %3, align 8
  %184 = inttoptr i64 %182 to i64*
  %185 = load i64, i64* %184, align 8
  %186 = sext i64 %185 to i128
  %187 = and i128 %186, -18446744073709551616
  %188 = zext i64 %181 to i128
  %189 = shl nuw i128 %188, 64
  %190 = zext i64 %180 to i128
  %191 = or i128 %190, %189
  %192 = zext i64 %185 to i128
  %193 = or i128 %187, %192
  %194 = sdiv i128 %191, %193
  %195 = trunc i128 %194 to i64
  %196 = and i128 %194, 18446744073709551615
  %197 = sext i64 %195 to i128
  %198 = and i128 %197, -18446744073709551616
  %199 = or i128 %198, %196
  %200 = icmp eq i128 %194, %199
  br i1 %200, label %203, label %201

; <label>:201:                                    ; preds = %routine_idivq_MINUS0x30__rbp_.exit330
  %202 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %183, %struct.Memory* %145)
  %.pre16 = load i64, i64* %RCX.i341, align 8
  %.pre17 = load i64, i64* %RAX.i357, align 8
  %.pre18 = load i64, i64* %3, align 8
  %.pre19 = load i64, i64* %RBP.i, align 8
  br label %routine_idivq_MINUS0x30__rbp_.exit307

; <label>:203:                                    ; preds = %routine_idivq_MINUS0x30__rbp_.exit330
  %204 = srem i128 %191, %193
  %205 = trunc i128 %204 to i64
  store i64 %195, i64* %75, align 8
  store i64 %205, i64* %74, align 8
  store i8 0, i8* %51, align 1
  store i8 0, i8* %57, align 1
  store i8 0, i8* %58, align 1
  store i8 0, i8* %61, align 1
  store i8 0, i8* %64, align 1
  store i8 0, i8* %65, align 1
  br label %routine_idivq_MINUS0x30__rbp_.exit307

routine_idivq_MINUS0x30__rbp_.exit307:            ; preds = %203, %201
  %206 = phi i64 [ %.pre19, %201 ], [ %174, %203 ]
  %207 = phi i64 [ %.pre18, %201 ], [ %183, %203 ]
  %208 = phi i64 [ %.pre17, %201 ], [ %195, %203 ]
  %209 = phi i64 [ %.pre16, %201 ], [ %179, %203 ]
  %210 = phi %struct.Memory* [ %202, %201 ], [ %145, %203 ]
  %211 = sext i64 %209 to i128
  %212 = and i128 %211, -18446744073709551616
  %213 = sext i64 %208 to i128
  %214 = and i128 %213, -18446744073709551616
  %215 = zext i64 %209 to i128
  %216 = or i128 %212, %215
  %217 = zext i64 %208 to i128
  %218 = or i128 %214, %217
  %219 = mul i128 %218, %216
  %220 = trunc i128 %219 to i64
  store i64 %220, i64* %RCX.i341, align 8
  %221 = sext i64 %220 to i128
  %222 = icmp ne i128 %221, %219
  %223 = zext i1 %222 to i8
  store i8 %223, i8* %51, align 1
  %224 = trunc i128 %219 to i32
  %225 = and i32 %224, 255
  %226 = tail call i32 @llvm.ctpop.i32(i32 %225)
  %227 = trunc i32 %226 to i8
  %228 = and i8 %227, 1
  %229 = xor i8 %228, 1
  store i8 %229, i8* %57, align 1
  store i8 0, i8* %58, align 1
  store i8 0, i8* %61, align 1
  %230 = lshr i64 %220, 63
  %231 = trunc i64 %230 to i8
  store i8 %231, i8* %64, align 1
  store i8 %223, i8* %65, align 1
  %232 = add i64 %206, -16
  %233 = add i64 %207, 8
  store i64 %233, i64* %3, align 8
  %234 = inttoptr i64 %232 to i64*
  store i64 %220, i64* %234, align 8
  %235 = load i64, i64* %RBP.i, align 8
  %236 = add i64 %235, -8
  %237 = load i64, i64* %3, align 8
  %238 = add i64 %237, 4
  store i64 %238, i64* %3, align 8
  %239 = inttoptr i64 %236 to i64*
  %240 = load i64, i64* %239, align 8
  store i64 %240, i64* %RAX.i357, align 8
  %241 = add i64 %235, -16
  %242 = add i64 %237, 8
  store i64 %242, i64* %3, align 8
  %243 = inttoptr i64 %241 to i64*
  %244 = load i64, i64* %243, align 8
  %245 = sub i64 %240, %244
  store i64 %245, i64* %RAX.i357, align 8
  %246 = trunc i64 %245 to i32
  %247 = and i32 %246, 255
  %248 = tail call i32 @llvm.ctpop.i32(i32 %247)
  %249 = trunc i32 %248 to i8
  %250 = and i8 %249, 1
  %251 = xor i8 %250, 1
  %252 = icmp eq i64 %245, 0
  %253 = zext i1 %252 to i8
  %254 = lshr i64 %245, 63
  %255 = trunc i64 %254 to i8
  store i64 %245, i64* bitcast (%G_0x676b10_type* @G_0x676b10 to i64*), align 8
  %256 = add i64 %237, 25
  store i8 0, i8* %51, align 1
  store i8 %251, i8* %57, align 1
  store i8 0, i8* %58, align 1
  store i8 %253, i8* %61, align 1
  store i8 %255, i8* %64, align 1
  store i8 0, i8* %65, align 1
  %257 = icmp ne i8 %255, 0
  %.v10 = select i1 %257, i64 6, i64 26
  %258 = add i64 %256, %.v10
  store i64 %258, i64* %3, align 8
  br i1 %257, label %block_4454e4, label %block_.L_4454f8

block_4454e4:                                     ; preds = %routine_idivq_MINUS0x30__rbp_.exit307
  %259 = add i64 %235, -40
  %260 = add i64 %258, 4
  store i64 %260, i64* %3, align 8
  %261 = inttoptr i64 %259 to i64*
  %262 = load i64, i64* %261, align 8
  %263 = add i64 %245, %262
  store i64 %263, i64* %RAX.i357, align 8
  %264 = icmp ult i64 %263, %262
  %265 = icmp ult i64 %263, %245
  %266 = or i1 %264, %265
  %267 = zext i1 %266 to i8
  store i8 %267, i8* %51, align 1
  %268 = trunc i64 %263 to i32
  %269 = and i32 %268, 255
  %270 = tail call i32 @llvm.ctpop.i32(i32 %269)
  %271 = trunc i32 %270 to i8
  %272 = and i8 %271, 1
  %273 = xor i8 %272, 1
  store i8 %273, i8* %57, align 1
  %274 = xor i64 %245, %262
  %275 = xor i64 %274, %263
  %276 = lshr i64 %275, 4
  %277 = trunc i64 %276 to i8
  %278 = and i8 %277, 1
  store i8 %278, i8* %58, align 1
  %279 = icmp eq i64 %263, 0
  %280 = zext i1 %279 to i8
  store i8 %280, i8* %61, align 1
  %281 = lshr i64 %263, 63
  %282 = trunc i64 %281 to i8
  store i8 %282, i8* %64, align 1
  %283 = lshr i64 %262, 63
  %284 = xor i64 %281, %283
  %285 = xor i64 %281, %254
  %286 = add nuw nsw i64 %284, %285
  %287 = icmp eq i64 %286, 2
  %288 = zext i1 %287 to i8
  store i8 %288, i8* %65, align 1
  %289 = add i64 %258, 20
  store i64 %289, i64* %3, align 8
  store i64 %263, i64* bitcast (%G_0x676b10_type* @G_0x676b10 to i64*), align 8
  br label %block_.L_4454f8

block_.L_4454f8:                                  ; preds = %routine_idivq_MINUS0x30__rbp_.exit307, %block_4454e4
  %290 = phi i64 [ %258, %routine_idivq_MINUS0x30__rbp_.exit307 ], [ %289, %block_4454e4 ]
  %291 = add i64 %235, -64
  %292 = add i64 %290, 4
  store i64 %292, i64* %3, align 8
  %293 = inttoptr i64 %291 to i64*
  %294 = load i64, i64* %293, align 8
  %295 = load i64, i64* bitcast (%G_0x676b18_type* @G_0x676b18 to i64*), align 8
  store i64 %295, i64* %RCX.i341, align 8
  %296 = add i64 %235, -104
  %297 = add i64 %290, 16
  store i64 %297, i64* %3, align 8
  %298 = inttoptr i64 %296 to i64*
  store i64 %294, i64* %298, align 8
  %299 = load i64, i64* %RCX.i341, align 8
  %300 = load i64, i64* %3, align 8
  store i64 %299, i64* %RAX.i357, align 8
  %301 = ashr i64 %299, 63
  store i64 %301, i64* %74, align 8
  %302 = load i64, i64* %RBP.i, align 8
  %303 = add i64 %302, -80
  %304 = add i64 %300, 9
  store i64 %304, i64* %3, align 8
  %305 = inttoptr i64 %303 to i64*
  %306 = load i64, i64* %305, align 8
  %307 = sext i64 %306 to i128
  %308 = and i128 %307, -18446744073709551616
  %309 = zext i64 %301 to i128
  %310 = shl nuw i128 %309, 64
  %311 = zext i64 %299 to i128
  %312 = or i128 %311, %310
  %313 = zext i64 %306 to i128
  %314 = or i128 %308, %313
  %315 = sdiv i128 %312, %314
  %316 = trunc i128 %315 to i64
  %317 = and i128 %315, 18446744073709551615
  %318 = sext i64 %316 to i128
  %319 = and i128 %318, -18446744073709551616
  %320 = or i128 %319, %317
  %321 = icmp eq i128 %315, %320
  br i1 %321, label %324, label %322

; <label>:322:                                    ; preds = %block_.L_4454f8
  %323 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %304, %struct.Memory* %210)
  %.pre20 = load i64, i64* %RBP.i, align 8
  %.pre21 = load i64, i64* %3, align 8
  %.pre22 = load i64, i64* %74, align 8
  br label %routine_idivq_MINUS0x50__rbp_.exit267

; <label>:324:                                    ; preds = %block_.L_4454f8
  %325 = srem i128 %312, %314
  %326 = trunc i128 %325 to i64
  store i64 %316, i64* %75, align 8
  store i64 %326, i64* %74, align 8
  store i8 0, i8* %51, align 1
  store i8 0, i8* %57, align 1
  store i8 0, i8* %58, align 1
  store i8 0, i8* %61, align 1
  store i8 0, i8* %64, align 1
  store i8 0, i8* %65, align 1
  br label %routine_idivq_MINUS0x50__rbp_.exit267

routine_idivq_MINUS0x50__rbp_.exit267:            ; preds = %324, %322
  %327 = phi i64 [ %.pre22, %322 ], [ %326, %324 ]
  %328 = phi i64 [ %.pre21, %322 ], [ %304, %324 ]
  %329 = phi i64 [ %.pre20, %322 ], [ %302, %324 ]
  %330 = phi %struct.Memory* [ %323, %322 ], [ %210, %324 ]
  %331 = add i64 %329, -104
  %332 = add i64 %328, 4
  store i64 %332, i64* %3, align 8
  %333 = inttoptr i64 %331 to i64*
  %334 = load i64, i64* %333, align 8
  %335 = sext i64 %334 to i128
  %336 = and i128 %335, -18446744073709551616
  %337 = sext i64 %327 to i128
  %338 = and i128 %337, -18446744073709551616
  %339 = zext i64 %334 to i128
  %340 = or i128 %336, %339
  %341 = zext i64 %327 to i128
  %342 = or i128 %338, %341
  %343 = mul i128 %342, %340
  %344 = trunc i128 %343 to i64
  store i64 %344, i64* %RCX.i341, align 8
  %345 = sext i64 %344 to i128
  %346 = icmp ne i128 %345, %343
  %347 = zext i1 %346 to i8
  store i8 %347, i8* %51, align 1
  %348 = trunc i128 %343 to i32
  %349 = and i32 %348, 255
  %350 = tail call i32 @llvm.ctpop.i32(i32 %349)
  %351 = trunc i32 %350 to i8
  %352 = and i8 %351, 1
  %353 = xor i8 %352, 1
  store i8 %353, i8* %57, align 1
  store i8 0, i8* %58, align 1
  store i8 0, i8* %61, align 1
  %354 = lshr i64 %344, 63
  %355 = trunc i64 %354 to i8
  store i8 %355, i8* %64, align 1
  store i8 %347, i8* %65, align 1
  %356 = add i64 %329, -8
  %357 = add i64 %328, 12
  store i64 %357, i64* %3, align 8
  %358 = inttoptr i64 %356 to i64*
  store i64 %344, i64* %358, align 8
  %359 = load i64, i64* %RBP.i, align 8
  %360 = add i64 %359, -88
  %361 = load i64, i64* %3, align 8
  %362 = add i64 %361, 4
  store i64 %362, i64* %3, align 8
  %363 = inttoptr i64 %360 to i64*
  %364 = load i64, i64* %363, align 8
  store i64 %364, i64* %RCX.i341, align 8
  %365 = load i64, i64* bitcast (%G_0x676b18_type* @G_0x676b18 to i64*), align 8
  store i64 %365, i64* %RAX.i357, align 8
  %366 = ashr i64 %365, 63
  store i64 %366, i64* %74, align 8
  %367 = add i64 %359, -80
  %368 = add i64 %361, 21
  store i64 %368, i64* %3, align 8
  %369 = inttoptr i64 %367 to i64*
  %370 = load i64, i64* %369, align 8
  %371 = sext i64 %370 to i128
  %372 = and i128 %371, -18446744073709551616
  %373 = zext i64 %366 to i128
  %374 = shl nuw i128 %373, 64
  %375 = zext i64 %365 to i128
  %376 = or i128 %375, %374
  %377 = zext i64 %370 to i128
  %378 = or i128 %372, %377
  %379 = sdiv i128 %376, %378
  %380 = trunc i128 %379 to i64
  %381 = and i128 %379, 18446744073709551615
  %382 = sext i64 %380 to i128
  %383 = and i128 %382, -18446744073709551616
  %384 = or i128 %383, %381
  %385 = icmp eq i128 %379, %384
  br i1 %385, label %388, label %386

; <label>:386:                                    ; preds = %routine_idivq_MINUS0x50__rbp_.exit267
  %387 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %368, %struct.Memory* %330)
  %.pre23 = load i64, i64* %RCX.i341, align 8
  %.pre24 = load i64, i64* %RAX.i357, align 8
  %.pre25 = load i64, i64* %3, align 8
  %.pre26 = load i64, i64* %RBP.i, align 8
  br label %routine_idivq_MINUS0x50__rbp_.exit244

; <label>:388:                                    ; preds = %routine_idivq_MINUS0x50__rbp_.exit267
  %389 = srem i128 %376, %378
  %390 = trunc i128 %389 to i64
  store i64 %380, i64* %75, align 8
  store i64 %390, i64* %74, align 8
  store i8 0, i8* %51, align 1
  store i8 0, i8* %57, align 1
  store i8 0, i8* %58, align 1
  store i8 0, i8* %61, align 1
  store i8 0, i8* %64, align 1
  store i8 0, i8* %65, align 1
  br label %routine_idivq_MINUS0x50__rbp_.exit244

routine_idivq_MINUS0x50__rbp_.exit244:            ; preds = %388, %386
  %391 = phi i64 [ %.pre26, %386 ], [ %359, %388 ]
  %392 = phi i64 [ %.pre25, %386 ], [ %368, %388 ]
  %393 = phi i64 [ %.pre24, %386 ], [ %380, %388 ]
  %394 = phi i64 [ %.pre23, %386 ], [ %364, %388 ]
  %395 = phi %struct.Memory* [ %387, %386 ], [ %330, %388 ]
  %396 = sext i64 %394 to i128
  %397 = and i128 %396, -18446744073709551616
  %398 = sext i64 %393 to i128
  %399 = and i128 %398, -18446744073709551616
  %400 = zext i64 %394 to i128
  %401 = or i128 %397, %400
  %402 = zext i64 %393 to i128
  %403 = or i128 %399, %402
  %404 = mul i128 %403, %401
  %405 = trunc i128 %404 to i64
  store i64 %405, i64* %RCX.i341, align 8
  %406 = sext i64 %405 to i128
  %407 = icmp ne i128 %406, %404
  %408 = zext i1 %407 to i8
  store i8 %408, i8* %51, align 1
  %409 = trunc i128 %404 to i32
  %410 = and i32 %409, 255
  %411 = tail call i32 @llvm.ctpop.i32(i32 %410)
  %412 = trunc i32 %411 to i8
  %413 = and i8 %412, 1
  %414 = xor i8 %413, 1
  store i8 %414, i8* %57, align 1
  store i8 0, i8* %58, align 1
  store i8 0, i8* %61, align 1
  %415 = lshr i64 %405, 63
  %416 = trunc i64 %415 to i8
  store i8 %416, i8* %64, align 1
  store i8 %408, i8* %65, align 1
  %417 = add i64 %391, -16
  %418 = add i64 %392, 8
  store i64 %418, i64* %3, align 8
  %419 = inttoptr i64 %417 to i64*
  store i64 %405, i64* %419, align 8
  %420 = load i64, i64* %RBP.i, align 8
  %421 = add i64 %420, -8
  %422 = load i64, i64* %3, align 8
  %423 = add i64 %422, 4
  store i64 %423, i64* %3, align 8
  %424 = inttoptr i64 %421 to i64*
  %425 = load i64, i64* %424, align 8
  store i64 %425, i64* %RAX.i357, align 8
  %426 = add i64 %420, -16
  %427 = add i64 %422, 8
  store i64 %427, i64* %3, align 8
  %428 = inttoptr i64 %426 to i64*
  %429 = load i64, i64* %428, align 8
  %430 = sub i64 %425, %429
  store i64 %430, i64* %RAX.i357, align 8
  %431 = trunc i64 %430 to i32
  %432 = and i32 %431, 255
  %433 = tail call i32 @llvm.ctpop.i32(i32 %432)
  %434 = trunc i32 %433 to i8
  %435 = and i8 %434, 1
  %436 = xor i8 %435, 1
  %437 = icmp eq i64 %430, 0
  %438 = zext i1 %437 to i8
  %439 = lshr i64 %430, 63
  %440 = trunc i64 %439 to i8
  store i64 %430, i64* bitcast (%G_0x676b18_type* @G_0x676b18 to i64*), align 8
  %441 = add i64 %422, 25
  store i8 0, i8* %51, align 1
  store i8 %436, i8* %57, align 1
  store i8 0, i8* %58, align 1
  store i8 %438, i8* %61, align 1
  store i8 %440, i8* %64, align 1
  store i8 0, i8* %65, align 1
  %442 = icmp ne i8 %440, 0
  %.v11 = select i1 %442, i64 6, i64 26
  %443 = add i64 %441, %.v11
  store i64 %443, i64* %3, align 8
  br i1 %442, label %block_445559, label %block_.L_44556d

block_445559:                                     ; preds = %routine_idivq_MINUS0x50__rbp_.exit244
  %444 = add i64 %420, -72
  %445 = add i64 %443, 4
  store i64 %445, i64* %3, align 8
  %446 = inttoptr i64 %444 to i64*
  %447 = load i64, i64* %446, align 8
  %448 = add i64 %430, %447
  store i64 %448, i64* %RAX.i357, align 8
  %449 = icmp ult i64 %448, %447
  %450 = icmp ult i64 %448, %430
  %451 = or i1 %449, %450
  %452 = zext i1 %451 to i8
  store i8 %452, i8* %51, align 1
  %453 = trunc i64 %448 to i32
  %454 = and i32 %453, 255
  %455 = tail call i32 @llvm.ctpop.i32(i32 %454)
  %456 = trunc i32 %455 to i8
  %457 = and i8 %456, 1
  %458 = xor i8 %457, 1
  store i8 %458, i8* %57, align 1
  %459 = xor i64 %430, %447
  %460 = xor i64 %459, %448
  %461 = lshr i64 %460, 4
  %462 = trunc i64 %461 to i8
  %463 = and i8 %462, 1
  store i8 %463, i8* %58, align 1
  %464 = icmp eq i64 %448, 0
  %465 = zext i1 %464 to i8
  store i8 %465, i8* %61, align 1
  %466 = lshr i64 %448, 63
  %467 = trunc i64 %466 to i8
  store i8 %467, i8* %64, align 1
  %468 = lshr i64 %447, 63
  %469 = xor i64 %466, %468
  %470 = xor i64 %466, %439
  %471 = add nuw nsw i64 %469, %470
  %472 = icmp eq i64 %471, 2
  %473 = zext i1 %472 to i8
  store i8 %473, i8* %65, align 1
  %474 = add i64 %443, 20
  store i64 %474, i64* %3, align 8
  store i64 %448, i64* bitcast (%G_0x676b18_type* @G_0x676b18 to i64*), align 8
  br label %block_.L_44556d

block_.L_44556d:                                  ; preds = %routine_idivq_MINUS0x50__rbp_.exit244, %block_445559
  %475 = phi i64 [ %430, %routine_idivq_MINUS0x50__rbp_.exit244 ], [ %448, %block_445559 ]
  %476 = phi i64 [ %443, %routine_idivq_MINUS0x50__rbp_.exit244 ], [ %474, %block_445559 ]
  %477 = load i64, i64* bitcast (%G_0x676b10_type* @G_0x676b10 to i64*), align 8
  %478 = sub i64 %477, %475
  store i64 %478, i64* %RAX.i357, align 8
  %479 = icmp ult i64 %477, %475
  %480 = zext i1 %479 to i8
  store i8 %480, i8* %51, align 1
  %481 = trunc i64 %478 to i32
  %482 = and i32 %481, 255
  %483 = tail call i32 @llvm.ctpop.i32(i32 %482)
  %484 = trunc i32 %483 to i8
  %485 = and i8 %484, 1
  %486 = xor i8 %485, 1
  store i8 %486, i8* %57, align 1
  %487 = xor i64 %475, %477
  %488 = xor i64 %487, %478
  %489 = lshr i64 %488, 4
  %490 = trunc i64 %489 to i8
  %491 = and i8 %490, 1
  store i8 %491, i8* %58, align 1
  %492 = icmp eq i64 %478, 0
  %493 = zext i1 %492 to i8
  store i8 %493, i8* %61, align 1
  %494 = lshr i64 %478, 63
  %495 = trunc i64 %494 to i8
  store i8 %495, i8* %64, align 1
  %496 = lshr i64 %477, 63
  %497 = lshr i64 %475, 63
  %498 = xor i64 %497, %496
  %499 = xor i64 %494, %496
  %500 = add nuw nsw i64 %499, %498
  %501 = icmp eq i64 %500, 2
  %502 = zext i1 %501 to i8
  store i8 %502, i8* %65, align 1
  %503 = add i64 %420, -20
  %504 = add i64 %476, 20
  store i64 %504, i64* %3, align 8
  %505 = inttoptr i64 %503 to i32*
  %506 = load i32, i32* %505, align 4
  %507 = sext i32 %506 to i64
  store i64 %507, i64* %RCX.i341, align 8
  %508 = shl nsw i64 %507, 3
  %509 = add nsw i64 %508, 6777632
  %510 = add i64 %476, 28
  store i64 %510, i64* %3, align 8
  %511 = inttoptr i64 %509 to i64*
  store i64 %478, i64* %511, align 8
  %512 = load i64, i64* %RBP.i, align 8
  %513 = add i64 %512, -20
  %514 = load i64, i64* %3, align 8
  %515 = add i64 %514, 4
  store i64 %515, i64* %3, align 8
  %516 = inttoptr i64 %513 to i32*
  %517 = load i32, i32* %516, align 4
  %518 = sext i32 %517 to i64
  store i64 %518, i64* %RAX.i357, align 8
  %519 = shl nsw i64 %518, 3
  %520 = add nsw i64 %519, 6777632
  %521 = add i64 %514, 13
  store i64 %521, i64* %3, align 8
  %522 = inttoptr i64 %520 to i64*
  %523 = load i64, i64* %522, align 8
  store i8 0, i8* %51, align 1
  %524 = trunc i64 %523 to i32
  %525 = and i32 %524, 255
  %526 = tail call i32 @llvm.ctpop.i32(i32 %525)
  %527 = trunc i32 %526 to i8
  %528 = and i8 %527, 1
  %529 = xor i8 %528, 1
  store i8 %529, i8* %57, align 1
  store i8 0, i8* %58, align 1
  %530 = icmp eq i64 %523, 0
  %531 = zext i1 %530 to i8
  store i8 %531, i8* %61, align 1
  %532 = lshr i64 %523, 63
  %533 = trunc i64 %532 to i8
  store i8 %533, i8* %64, align 1
  store i8 0, i8* %65, align 1
  %534 = icmp ne i8 %533, 0
  %.v12 = select i1 %534, i64 6, i64 30
  %535 = add i64 %521, %.v12
  store i64 %535, i64* %3, align 8
  br i1 %534, label %block_44559c, label %block_.L_4455b4

block_44559c:                                     ; preds = %block_.L_44556d
  %536 = add i64 %512, -40
  %537 = add i64 %535, 4
  store i64 %537, i64* %3, align 8
  %538 = inttoptr i64 %536 to i64*
  %539 = load i64, i64* %538, align 8
  store i64 %539, i64* %RAX.i357, align 8
  %540 = add i64 %535, 8
  store i64 %540, i64* %3, align 8
  %541 = load i32, i32* %516, align 4
  %542 = sext i32 %541 to i64
  store i64 %542, i64* %RCX.i341, align 8
  %543 = shl nsw i64 %542, 3
  %544 = add nsw i64 %543, 6777632
  %545 = add i64 %535, 16
  store i64 %545, i64* %3, align 8
  %546 = inttoptr i64 %544 to i64*
  %547 = load i64, i64* %546, align 8
  %548 = add i64 %547, %539
  store i64 %548, i64* %RAX.i357, align 8
  %549 = icmp ult i64 %548, %539
  %550 = icmp ult i64 %548, %547
  %551 = or i1 %549, %550
  %552 = zext i1 %551 to i8
  store i8 %552, i8* %51, align 1
  %553 = trunc i64 %548 to i32
  %554 = and i32 %553, 255
  %555 = tail call i32 @llvm.ctpop.i32(i32 %554)
  %556 = trunc i32 %555 to i8
  %557 = and i8 %556, 1
  %558 = xor i8 %557, 1
  store i8 %558, i8* %57, align 1
  %559 = xor i64 %547, %539
  %560 = xor i64 %559, %548
  %561 = lshr i64 %560, 4
  %562 = trunc i64 %561 to i8
  %563 = and i8 %562, 1
  store i8 %563, i8* %58, align 1
  %564 = icmp eq i64 %548, 0
  %565 = zext i1 %564 to i8
  store i8 %565, i8* %61, align 1
  %566 = lshr i64 %548, 63
  %567 = trunc i64 %566 to i8
  store i8 %567, i8* %64, align 1
  %568 = lshr i64 %539, 63
  %569 = lshr i64 %547, 63
  %570 = xor i64 %566, %568
  %571 = xor i64 %566, %569
  %572 = add nuw nsw i64 %570, %571
  %573 = icmp eq i64 %572, 2
  %574 = zext i1 %573 to i8
  store i8 %574, i8* %65, align 1
  %575 = add i64 %535, 24
  store i64 %575, i64* %3, align 8
  store i64 %548, i64* %546, align 8
  %.pre27 = load i64, i64* %3, align 8
  %.pre28 = load i64, i64* %RBP.i, align 8
  br label %block_.L_4455b4

block_.L_4455b4:                                  ; preds = %block_.L_44556d, %block_44559c
  %576 = phi i64 [ %512, %block_.L_44556d ], [ %.pre28, %block_44559c ]
  %577 = phi i64 [ %535, %block_.L_44556d ], [ %.pre27, %block_44559c ]
  %578 = add i64 %576, -20
  %579 = add i64 %577, 8
  store i64 %579, i64* %3, align 8
  %580 = inttoptr i64 %578 to i32*
  %581 = load i32, i32* %580, align 4
  %582 = add i32 %581, 1
  %583 = zext i32 %582 to i64
  store i64 %583, i64* %RAX.i357, align 8
  %584 = icmp eq i32 %581, -1
  %585 = icmp eq i32 %582, 0
  %586 = or i1 %584, %585
  %587 = zext i1 %586 to i8
  store i8 %587, i8* %51, align 1
  %588 = and i32 %582, 255
  %589 = tail call i32 @llvm.ctpop.i32(i32 %588)
  %590 = trunc i32 %589 to i8
  %591 = and i8 %590, 1
  %592 = xor i8 %591, 1
  store i8 %592, i8* %57, align 1
  %593 = xor i32 %582, %581
  %594 = lshr i32 %593, 4
  %595 = trunc i32 %594 to i8
  %596 = and i8 %595, 1
  store i8 %596, i8* %58, align 1
  %597 = zext i1 %585 to i8
  store i8 %597, i8* %61, align 1
  %598 = lshr i32 %582, 31
  %599 = trunc i32 %598 to i8
  store i8 %599, i8* %64, align 1
  %600 = lshr i32 %581, 31
  %601 = xor i32 %598, %600
  %602 = add nuw nsw i32 %601, %598
  %603 = icmp eq i32 %602, 2
  %604 = zext i1 %603 to i8
  store i8 %604, i8* %65, align 1
  %605 = add i64 %577, 14
  store i64 %605, i64* %3, align 8
  store i32 %582, i32* %580, align 4
  %606 = load i64, i64* %3, align 8
  %607 = add i64 %606, -329
  store i64 %607, i64* %3, align 8
  br label %block_.L_445479

block_.L_4455c7:                                  ; preds = %block_.L_445479
  %608 = add i64 %105, 11
  store i64 %608, i64* %3, align 8
  store i32 0, i32* bitcast (%G_0x662c38_type* @G_0x662c38 to i32*), align 8
  br label %block_.L_4455d2

block_.L_4455d2:                                  ; preds = %entry.block_.L_4455d2_crit_edge, %block_.L_4455c7
  %.pre-phi52 = phi i64* [ %.pre51, %entry.block_.L_4455d2_crit_edge ], [ %75, %block_.L_4455c7 ]
  %.pre-phi50 = phi i64* [ %.pre49, %entry.block_.L_4455d2_crit_edge ], [ %74, %block_.L_4455c7 ]
  %RCX.i176.pre-phi = phi i64* [ %.pre48, %entry.block_.L_4455d2_crit_edge ], [ %RCX.i341, %block_.L_4455c7 ]
  %RAX.i178.pre-phi = phi i64* [ %.pre47, %entry.block_.L_4455d2_crit_edge ], [ %RAX.i357, %block_.L_4455c7 ]
  %609 = phi i64 [ %68, %entry.block_.L_4455d2_crit_edge ], [ %608, %block_.L_4455c7 ]
  %610 = phi i64 [ %.pre29, %entry.block_.L_4455d2_crit_edge ], [ %77, %block_.L_4455c7 ]
  %MEMORY.4 = phi %struct.Memory* [ %2, %entry.block_.L_4455d2_crit_edge ], [ %MEMORY.0, %block_.L_4455c7 ]
  %611 = add i64 %610, -32
  %612 = add i64 %609, 4
  store i64 %612, i64* %3, align 8
  %613 = inttoptr i64 %611 to i64*
  %614 = load i64, i64* %613, align 8
  %615 = load i64, i64* bitcast (%G_0x676b10_type* @G_0x676b10 to i64*), align 8
  store i64 %615, i64* %RCX.i176.pre-phi, align 8
  %616 = add i64 %610, -112
  %617 = add i64 %609, 16
  store i64 %617, i64* %3, align 8
  %618 = inttoptr i64 %616 to i64*
  store i64 %614, i64* %618, align 8
  %619 = load i64, i64* %RCX.i176.pre-phi, align 8
  %620 = load i64, i64* %3, align 8
  store i64 %619, i64* %RAX.i178.pre-phi, align 8
  %621 = ashr i64 %619, 63
  store i64 %621, i64* %.pre-phi50, align 8
  %622 = load i64, i64* %RBP.i, align 8
  %623 = add i64 %622, -48
  %624 = add i64 %620, 9
  store i64 %624, i64* %3, align 8
  %625 = inttoptr i64 %623 to i64*
  %626 = load i64, i64* %625, align 8
  %627 = sext i64 %626 to i128
  %628 = and i128 %627, -18446744073709551616
  %629 = zext i64 %621 to i128
  %630 = shl nuw i128 %629, 64
  %631 = zext i64 %619 to i128
  %632 = or i128 %630, %631
  %633 = zext i64 %626 to i128
  %634 = or i128 %628, %633
  %635 = sdiv i128 %632, %634
  %636 = trunc i128 %635 to i64
  %637 = and i128 %635, 18446744073709551615
  %638 = sext i64 %636 to i128
  %639 = and i128 %638, -18446744073709551616
  %640 = or i128 %639, %637
  %641 = icmp eq i128 %635, %640
  br i1 %641, label %644, label %642

; <label>:642:                                    ; preds = %block_.L_4455d2
  %643 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %624, %struct.Memory* %MEMORY.4)
  %.pre30 = load i64, i64* %RBP.i, align 8
  %.pre31 = load i64, i64* %3, align 8
  %.pre32 = load i64, i64* %.pre-phi50, align 8
  br label %routine_idivq_MINUS0x30__rbp_.exit165

; <label>:644:                                    ; preds = %block_.L_4455d2
  %645 = srem i128 %632, %634
  %646 = trunc i128 %645 to i64
  store i64 %636, i64* %.pre-phi52, align 8
  store i64 %646, i64* %.pre-phi50, align 8
  store i8 0, i8* %51, align 1
  store i8 0, i8* %57, align 1
  store i8 0, i8* %58, align 1
  store i8 0, i8* %61, align 1
  store i8 0, i8* %64, align 1
  store i8 0, i8* %65, align 1
  br label %routine_idivq_MINUS0x30__rbp_.exit165

routine_idivq_MINUS0x30__rbp_.exit165:            ; preds = %644, %642
  %647 = phi i64 [ %.pre32, %642 ], [ %646, %644 ]
  %648 = phi i64 [ %.pre31, %642 ], [ %624, %644 ]
  %649 = phi i64 [ %.pre30, %642 ], [ %622, %644 ]
  %650 = phi %struct.Memory* [ %643, %642 ], [ %MEMORY.4, %644 ]
  %651 = add i64 %649, -112
  %652 = add i64 %648, 4
  store i64 %652, i64* %3, align 8
  %653 = inttoptr i64 %651 to i64*
  %654 = load i64, i64* %653, align 8
  %655 = sext i64 %654 to i128
  %656 = and i128 %655, -18446744073709551616
  %657 = sext i64 %647 to i128
  %658 = and i128 %657, -18446744073709551616
  %659 = zext i64 %654 to i128
  %660 = or i128 %656, %659
  %661 = zext i64 %647 to i128
  %662 = or i128 %658, %661
  %663 = mul i128 %662, %660
  %664 = trunc i128 %663 to i64
  store i64 %664, i64* %RCX.i176.pre-phi, align 8
  %665 = sext i64 %664 to i128
  %666 = icmp ne i128 %665, %663
  %667 = zext i1 %666 to i8
  store i8 %667, i8* %51, align 1
  %668 = trunc i128 %663 to i32
  %669 = and i32 %668, 255
  %670 = tail call i32 @llvm.ctpop.i32(i32 %669)
  %671 = trunc i32 %670 to i8
  %672 = and i8 %671, 1
  %673 = xor i8 %672, 1
  store i8 %673, i8* %57, align 1
  store i8 0, i8* %58, align 1
  store i8 0, i8* %61, align 1
  %674 = lshr i64 %664, 63
  %675 = trunc i64 %674 to i8
  store i8 %675, i8* %64, align 1
  store i8 %667, i8* %65, align 1
  %676 = add i64 %649, -8
  %677 = add i64 %648, 12
  store i64 %677, i64* %3, align 8
  %678 = inttoptr i64 %676 to i64*
  store i64 %664, i64* %678, align 8
  %679 = load i64, i64* %RBP.i, align 8
  %680 = add i64 %679, -56
  %681 = load i64, i64* %3, align 8
  %682 = add i64 %681, 4
  store i64 %682, i64* %3, align 8
  %683 = inttoptr i64 %680 to i64*
  %684 = load i64, i64* %683, align 8
  store i64 %684, i64* %RCX.i176.pre-phi, align 8
  %685 = load i64, i64* bitcast (%G_0x676b10_type* @G_0x676b10 to i64*), align 8
  store i64 %685, i64* %RAX.i178.pre-phi, align 8
  %686 = ashr i64 %685, 63
  store i64 %686, i64* %.pre-phi50, align 8
  %687 = add i64 %679, -48
  %688 = add i64 %681, 21
  store i64 %688, i64* %3, align 8
  %689 = inttoptr i64 %687 to i64*
  %690 = load i64, i64* %689, align 8
  %691 = sext i64 %690 to i128
  %692 = and i128 %691, -18446744073709551616
  %693 = zext i64 %686 to i128
  %694 = shl nuw i128 %693, 64
  %695 = zext i64 %685 to i128
  %696 = or i128 %695, %694
  %697 = zext i64 %690 to i128
  %698 = or i128 %692, %697
  %699 = sdiv i128 %696, %698
  %700 = trunc i128 %699 to i64
  %701 = and i128 %699, 18446744073709551615
  %702 = sext i64 %700 to i128
  %703 = and i128 %702, -18446744073709551616
  %704 = or i128 %703, %701
  %705 = icmp eq i128 %699, %704
  br i1 %705, label %708, label %706

; <label>:706:                                    ; preds = %routine_idivq_MINUS0x30__rbp_.exit165
  %707 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %688, %struct.Memory* %650)
  %.pre33 = load i64, i64* %RCX.i176.pre-phi, align 8
  %.pre34 = load i64, i64* %RAX.i178.pre-phi, align 8
  %.pre35 = load i64, i64* %3, align 8
  %.pre36 = load i64, i64* %RBP.i, align 8
  br label %routine_idivq_MINUS0x30__rbp_.exit

; <label>:708:                                    ; preds = %routine_idivq_MINUS0x30__rbp_.exit165
  %709 = srem i128 %696, %698
  %710 = trunc i128 %709 to i64
  store i64 %700, i64* %.pre-phi52, align 8
  store i64 %710, i64* %.pre-phi50, align 8
  store i8 0, i8* %51, align 1
  store i8 0, i8* %57, align 1
  store i8 0, i8* %58, align 1
  store i8 0, i8* %61, align 1
  store i8 0, i8* %64, align 1
  store i8 0, i8* %65, align 1
  br label %routine_idivq_MINUS0x30__rbp_.exit

routine_idivq_MINUS0x30__rbp_.exit:               ; preds = %708, %706
  %711 = phi i64 [ %.pre36, %706 ], [ %679, %708 ]
  %712 = phi i64 [ %.pre35, %706 ], [ %688, %708 ]
  %713 = phi i64 [ %.pre34, %706 ], [ %700, %708 ]
  %714 = phi i64 [ %.pre33, %706 ], [ %684, %708 ]
  %715 = phi %struct.Memory* [ %707, %706 ], [ %650, %708 ]
  %716 = sext i64 %714 to i128
  %717 = and i128 %716, -18446744073709551616
  %718 = sext i64 %713 to i128
  %719 = and i128 %718, -18446744073709551616
  %720 = zext i64 %714 to i128
  %721 = or i128 %717, %720
  %722 = zext i64 %713 to i128
  %723 = or i128 %719, %722
  %724 = mul i128 %723, %721
  %725 = trunc i128 %724 to i64
  store i64 %725, i64* %RCX.i176.pre-phi, align 8
  %726 = sext i64 %725 to i128
  %727 = icmp ne i128 %726, %724
  %728 = zext i1 %727 to i8
  store i8 %728, i8* %51, align 1
  %729 = trunc i128 %724 to i32
  %730 = and i32 %729, 255
  %731 = tail call i32 @llvm.ctpop.i32(i32 %730)
  %732 = trunc i32 %731 to i8
  %733 = and i8 %732, 1
  %734 = xor i8 %733, 1
  store i8 %734, i8* %57, align 1
  store i8 0, i8* %58, align 1
  store i8 0, i8* %61, align 1
  %735 = lshr i64 %725, 63
  %736 = trunc i64 %735 to i8
  store i8 %736, i8* %64, align 1
  store i8 %728, i8* %65, align 1
  %737 = add i64 %711, -16
  %738 = add i64 %712, 8
  store i64 %738, i64* %3, align 8
  %739 = inttoptr i64 %737 to i64*
  store i64 %725, i64* %739, align 8
  %740 = load i64, i64* %RBP.i, align 8
  %741 = add i64 %740, -8
  %742 = load i64, i64* %3, align 8
  %743 = add i64 %742, 4
  store i64 %743, i64* %3, align 8
  %744 = inttoptr i64 %741 to i64*
  %745 = load i64, i64* %744, align 8
  store i64 %745, i64* %RAX.i178.pre-phi, align 8
  %746 = add i64 %740, -16
  %747 = add i64 %742, 8
  store i64 %747, i64* %3, align 8
  %748 = inttoptr i64 %746 to i64*
  %749 = load i64, i64* %748, align 8
  %750 = sub i64 %745, %749
  store i64 %750, i64* %RAX.i178.pre-phi, align 8
  %751 = trunc i64 %750 to i32
  %752 = and i32 %751, 255
  %753 = tail call i32 @llvm.ctpop.i32(i32 %752)
  %754 = trunc i32 %753 to i8
  %755 = and i8 %754, 1
  %756 = xor i8 %755, 1
  %757 = icmp eq i64 %750, 0
  %758 = zext i1 %757 to i8
  %759 = lshr i64 %750, 63
  %760 = trunc i64 %759 to i8
  store i64 %750, i64* bitcast (%G_0x676b10_type* @G_0x676b10 to i64*), align 8
  %761 = add i64 %742, 25
  store i8 0, i8* %51, align 1
  store i8 %756, i8* %57, align 1
  store i8 0, i8* %58, align 1
  store i8 %758, i8* %61, align 1
  store i8 %760, i8* %64, align 1
  store i8 0, i8* %65, align 1
  %762 = icmp ne i8 %760, 0
  %.v = select i1 %762, i64 6, i64 26
  %763 = add i64 %761, %.v
  store i64 %763, i64* %3, align 8
  br i1 %762, label %block_445633, label %block_.L_445647

block_445633:                                     ; preds = %routine_idivq_MINUS0x30__rbp_.exit
  %764 = add i64 %740, -40
  %765 = add i64 %763, 4
  store i64 %765, i64* %3, align 8
  %766 = inttoptr i64 %764 to i64*
  %767 = load i64, i64* %766, align 8
  %768 = add i64 %750, %767
  store i64 %768, i64* %RAX.i178.pre-phi, align 8
  %769 = icmp ult i64 %768, %767
  %770 = icmp ult i64 %768, %750
  %771 = or i1 %769, %770
  %772 = zext i1 %771 to i8
  store i8 %772, i8* %51, align 1
  %773 = trunc i64 %768 to i32
  %774 = and i32 %773, 255
  %775 = tail call i32 @llvm.ctpop.i32(i32 %774)
  %776 = trunc i32 %775 to i8
  %777 = and i8 %776, 1
  %778 = xor i8 %777, 1
  store i8 %778, i8* %57, align 1
  %779 = xor i64 %750, %767
  %780 = xor i64 %779, %768
  %781 = lshr i64 %780, 4
  %782 = trunc i64 %781 to i8
  %783 = and i8 %782, 1
  store i8 %783, i8* %58, align 1
  %784 = icmp eq i64 %768, 0
  %785 = zext i1 %784 to i8
  store i8 %785, i8* %61, align 1
  %786 = lshr i64 %768, 63
  %787 = trunc i64 %786 to i8
  store i8 %787, i8* %64, align 1
  %788 = lshr i64 %767, 63
  %789 = xor i64 %786, %788
  %790 = xor i64 %786, %759
  %791 = add nuw nsw i64 %789, %790
  %792 = icmp eq i64 %791, 2
  %793 = zext i1 %792 to i8
  store i8 %793, i8* %65, align 1
  %794 = add i64 %763, 20
  store i64 %794, i64* %3, align 8
  store i64 %768, i64* bitcast (%G_0x676b10_type* @G_0x676b10 to i64*), align 8
  br label %block_.L_445647

block_.L_445647:                                  ; preds = %routine_idivq_MINUS0x30__rbp_.exit, %block_445633
  %795 = phi i64 [ %763, %routine_idivq_MINUS0x30__rbp_.exit ], [ %794, %block_445633 ]
  %796 = add i64 %740, -64
  %797 = add i64 %795, 4
  store i64 %797, i64* %3, align 8
  %798 = inttoptr i64 %796 to i64*
  %799 = load i64, i64* %798, align 8
  %800 = load i64, i64* bitcast (%G_0x676b18_type* @G_0x676b18 to i64*), align 8
  store i64 %800, i64* %RCX.i176.pre-phi, align 8
  %801 = add i64 %740, -120
  %802 = add i64 %795, 16
  store i64 %802, i64* %3, align 8
  %803 = inttoptr i64 %801 to i64*
  store i64 %799, i64* %803, align 8
  %804 = load i64, i64* %RCX.i176.pre-phi, align 8
  %805 = load i64, i64* %3, align 8
  store i64 %804, i64* %RAX.i178.pre-phi, align 8
  %806 = ashr i64 %804, 63
  store i64 %806, i64* %.pre-phi50, align 8
  %807 = load i64, i64* %RBP.i, align 8
  %808 = add i64 %807, -80
  %809 = add i64 %805, 9
  store i64 %809, i64* %3, align 8
  %810 = inttoptr i64 %808 to i64*
  %811 = load i64, i64* %810, align 8
  %812 = sext i64 %811 to i128
  %813 = and i128 %812, -18446744073709551616
  %814 = zext i64 %806 to i128
  %815 = shl nuw i128 %814, 64
  %816 = zext i64 %804 to i128
  %817 = or i128 %816, %815
  %818 = zext i64 %811 to i128
  %819 = or i128 %813, %818
  %820 = sdiv i128 %817, %819
  %821 = trunc i128 %820 to i64
  %822 = and i128 %820, 18446744073709551615
  %823 = sext i64 %821 to i128
  %824 = and i128 %823, -18446744073709551616
  %825 = or i128 %824, %822
  %826 = icmp eq i128 %820, %825
  br i1 %826, label %829, label %827

; <label>:827:                                    ; preds = %block_.L_445647
  %828 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %809, %struct.Memory* %715)
  %.pre37 = load i64, i64* %RBP.i, align 8
  %.pre38 = load i64, i64* %3, align 8
  %.pre39 = load i64, i64* %.pre-phi50, align 8
  br label %routine_idivq_MINUS0x50__rbp_.exit103

; <label>:829:                                    ; preds = %block_.L_445647
  %830 = srem i128 %817, %819
  %831 = trunc i128 %830 to i64
  store i64 %821, i64* %.pre-phi52, align 8
  store i64 %831, i64* %.pre-phi50, align 8
  store i8 0, i8* %51, align 1
  store i8 0, i8* %57, align 1
  store i8 0, i8* %58, align 1
  store i8 0, i8* %61, align 1
  store i8 0, i8* %64, align 1
  store i8 0, i8* %65, align 1
  br label %routine_idivq_MINUS0x50__rbp_.exit103

routine_idivq_MINUS0x50__rbp_.exit103:            ; preds = %829, %827
  %832 = phi i64 [ %.pre39, %827 ], [ %831, %829 ]
  %833 = phi i64 [ %.pre38, %827 ], [ %809, %829 ]
  %834 = phi i64 [ %.pre37, %827 ], [ %807, %829 ]
  %835 = phi %struct.Memory* [ %828, %827 ], [ %715, %829 ]
  %836 = add i64 %834, -120
  %837 = add i64 %833, 4
  store i64 %837, i64* %3, align 8
  %838 = inttoptr i64 %836 to i64*
  %839 = load i64, i64* %838, align 8
  %840 = sext i64 %839 to i128
  %841 = and i128 %840, -18446744073709551616
  %842 = sext i64 %832 to i128
  %843 = and i128 %842, -18446744073709551616
  %844 = zext i64 %839 to i128
  %845 = or i128 %841, %844
  %846 = zext i64 %832 to i128
  %847 = or i128 %843, %846
  %848 = mul i128 %847, %845
  %849 = trunc i128 %848 to i64
  store i64 %849, i64* %RCX.i176.pre-phi, align 8
  %850 = sext i64 %849 to i128
  %851 = icmp ne i128 %850, %848
  %852 = zext i1 %851 to i8
  store i8 %852, i8* %51, align 1
  %853 = trunc i128 %848 to i32
  %854 = and i32 %853, 255
  %855 = tail call i32 @llvm.ctpop.i32(i32 %854)
  %856 = trunc i32 %855 to i8
  %857 = and i8 %856, 1
  %858 = xor i8 %857, 1
  store i8 %858, i8* %57, align 1
  store i8 0, i8* %58, align 1
  store i8 0, i8* %61, align 1
  %859 = lshr i64 %849, 63
  %860 = trunc i64 %859 to i8
  store i8 %860, i8* %64, align 1
  store i8 %852, i8* %65, align 1
  %861 = add i64 %834, -8
  %862 = add i64 %833, 12
  store i64 %862, i64* %3, align 8
  %863 = inttoptr i64 %861 to i64*
  store i64 %849, i64* %863, align 8
  %864 = load i64, i64* %RBP.i, align 8
  %865 = add i64 %864, -88
  %866 = load i64, i64* %3, align 8
  %867 = add i64 %866, 4
  store i64 %867, i64* %3, align 8
  %868 = inttoptr i64 %865 to i64*
  %869 = load i64, i64* %868, align 8
  store i64 %869, i64* %RCX.i176.pre-phi, align 8
  %870 = load i64, i64* bitcast (%G_0x676b18_type* @G_0x676b18 to i64*), align 8
  store i64 %870, i64* %RAX.i178.pre-phi, align 8
  %871 = ashr i64 %870, 63
  store i64 %871, i64* %.pre-phi50, align 8
  %872 = add i64 %864, -80
  %873 = add i64 %866, 21
  store i64 %873, i64* %3, align 8
  %874 = inttoptr i64 %872 to i64*
  %875 = load i64, i64* %874, align 8
  %876 = sext i64 %875 to i128
  %877 = and i128 %876, -18446744073709551616
  %878 = zext i64 %871 to i128
  %879 = shl nuw i128 %878, 64
  %880 = zext i64 %870 to i128
  %881 = or i128 %880, %879
  %882 = zext i64 %875 to i128
  %883 = or i128 %877, %882
  %884 = sdiv i128 %881, %883
  %885 = trunc i128 %884 to i64
  %886 = and i128 %884, 18446744073709551615
  %887 = sext i64 %885 to i128
  %888 = and i128 %887, -18446744073709551616
  %889 = or i128 %888, %886
  %890 = icmp eq i128 %884, %889
  br i1 %890, label %893, label %891

; <label>:891:                                    ; preds = %routine_idivq_MINUS0x50__rbp_.exit103
  %892 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %873, %struct.Memory* %835)
  %.pre40 = load i64, i64* %RCX.i176.pre-phi, align 8
  %.pre41 = load i64, i64* %RAX.i178.pre-phi, align 8
  %.pre42 = load i64, i64* %3, align 8
  %.pre43 = load i64, i64* %RBP.i, align 8
  br label %routine_idivq_MINUS0x50__rbp_.exit

; <label>:893:                                    ; preds = %routine_idivq_MINUS0x50__rbp_.exit103
  %894 = srem i128 %881, %883
  %895 = trunc i128 %894 to i64
  store i64 %885, i64* %.pre-phi52, align 8
  store i64 %895, i64* %.pre-phi50, align 8
  store i8 0, i8* %51, align 1
  store i8 0, i8* %57, align 1
  store i8 0, i8* %58, align 1
  store i8 0, i8* %61, align 1
  store i8 0, i8* %64, align 1
  store i8 0, i8* %65, align 1
  br label %routine_idivq_MINUS0x50__rbp_.exit

routine_idivq_MINUS0x50__rbp_.exit:               ; preds = %893, %891
  %896 = phi i64 [ %.pre43, %891 ], [ %864, %893 ]
  %897 = phi i64 [ %.pre42, %891 ], [ %873, %893 ]
  %898 = phi i64 [ %.pre41, %891 ], [ %885, %893 ]
  %899 = phi i64 [ %.pre40, %891 ], [ %869, %893 ]
  %900 = phi %struct.Memory* [ %892, %891 ], [ %835, %893 ]
  %901 = sext i64 %899 to i128
  %902 = and i128 %901, -18446744073709551616
  %903 = sext i64 %898 to i128
  %904 = and i128 %903, -18446744073709551616
  %905 = zext i64 %899 to i128
  %906 = or i128 %902, %905
  %907 = zext i64 %898 to i128
  %908 = or i128 %904, %907
  %909 = mul i128 %908, %906
  %910 = trunc i128 %909 to i64
  store i64 %910, i64* %RCX.i176.pre-phi, align 8
  %911 = sext i64 %910 to i128
  %912 = icmp ne i128 %911, %909
  %913 = zext i1 %912 to i8
  store i8 %913, i8* %51, align 1
  %914 = trunc i128 %909 to i32
  %915 = and i32 %914, 255
  %916 = tail call i32 @llvm.ctpop.i32(i32 %915)
  %917 = trunc i32 %916 to i8
  %918 = and i8 %917, 1
  %919 = xor i8 %918, 1
  store i8 %919, i8* %57, align 1
  store i8 0, i8* %58, align 1
  store i8 0, i8* %61, align 1
  %920 = lshr i64 %910, 63
  %921 = trunc i64 %920 to i8
  store i8 %921, i8* %64, align 1
  store i8 %913, i8* %65, align 1
  %922 = add i64 %896, -16
  %923 = add i64 %897, 8
  store i64 %923, i64* %3, align 8
  %924 = inttoptr i64 %922 to i64*
  store i64 %910, i64* %924, align 8
  %925 = load i64, i64* %RBP.i, align 8
  %926 = add i64 %925, -8
  %927 = load i64, i64* %3, align 8
  %928 = add i64 %927, 4
  store i64 %928, i64* %3, align 8
  %929 = inttoptr i64 %926 to i64*
  %930 = load i64, i64* %929, align 8
  store i64 %930, i64* %RAX.i178.pre-phi, align 8
  %931 = add i64 %925, -16
  %932 = add i64 %927, 8
  store i64 %932, i64* %3, align 8
  %933 = inttoptr i64 %931 to i64*
  %934 = load i64, i64* %933, align 8
  %935 = sub i64 %930, %934
  store i64 %935, i64* %RAX.i178.pre-phi, align 8
  %936 = trunc i64 %935 to i32
  %937 = and i32 %936, 255
  %938 = tail call i32 @llvm.ctpop.i32(i32 %937)
  %939 = trunc i32 %938 to i8
  %940 = and i8 %939, 1
  %941 = xor i8 %940, 1
  %942 = icmp eq i64 %935, 0
  %943 = zext i1 %942 to i8
  %944 = lshr i64 %935, 63
  %945 = trunc i64 %944 to i8
  store i64 %935, i64* bitcast (%G_0x676b18_type* @G_0x676b18 to i64*), align 8
  %946 = add i64 %927, 25
  store i8 0, i8* %51, align 1
  store i8 %941, i8* %57, align 1
  store i8 0, i8* %58, align 1
  store i8 %943, i8* %61, align 1
  store i8 %945, i8* %64, align 1
  store i8 0, i8* %65, align 1
  %947 = icmp ne i8 %945, 0
  %.v8 = select i1 %947, i64 6, i64 26
  %948 = add i64 %946, %.v8
  store i64 %948, i64* %3, align 8
  br i1 %947, label %block_4456a8, label %block_.L_4456bc

block_4456a8:                                     ; preds = %routine_idivq_MINUS0x50__rbp_.exit
  %949 = add i64 %925, -72
  %950 = add i64 %948, 4
  store i64 %950, i64* %3, align 8
  %951 = inttoptr i64 %949 to i64*
  %952 = load i64, i64* %951, align 8
  %953 = add i64 %935, %952
  store i64 %953, i64* %RAX.i178.pre-phi, align 8
  %954 = icmp ult i64 %953, %952
  %955 = icmp ult i64 %953, %935
  %956 = or i1 %954, %955
  %957 = zext i1 %956 to i8
  store i8 %957, i8* %51, align 1
  %958 = trunc i64 %953 to i32
  %959 = and i32 %958, 255
  %960 = tail call i32 @llvm.ctpop.i32(i32 %959)
  %961 = trunc i32 %960 to i8
  %962 = and i8 %961, 1
  %963 = xor i8 %962, 1
  store i8 %963, i8* %57, align 1
  %964 = xor i64 %935, %952
  %965 = xor i64 %964, %953
  %966 = lshr i64 %965, 4
  %967 = trunc i64 %966 to i8
  %968 = and i8 %967, 1
  store i8 %968, i8* %58, align 1
  %969 = icmp eq i64 %953, 0
  %970 = zext i1 %969 to i8
  store i8 %970, i8* %61, align 1
  %971 = lshr i64 %953, 63
  %972 = trunc i64 %971 to i8
  store i8 %972, i8* %64, align 1
  %973 = lshr i64 %952, 63
  %974 = xor i64 %971, %973
  %975 = xor i64 %971, %944
  %976 = add nuw nsw i64 %974, %975
  %977 = icmp eq i64 %976, 2
  %978 = zext i1 %977 to i8
  store i8 %978, i8* %65, align 1
  %979 = add i64 %948, 20
  store i64 %979, i64* %3, align 8
  store i64 %953, i64* bitcast (%G_0x676b18_type* @G_0x676b18 to i64*), align 8
  br label %block_.L_4456bc

block_.L_4456bc:                                  ; preds = %routine_idivq_MINUS0x50__rbp_.exit, %block_4456a8
  %980 = phi i64 [ %948, %routine_idivq_MINUS0x50__rbp_.exit ], [ %979, %block_4456a8 ]
  %981 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1
  %982 = add i64 %980, ptrtoint (%G_0xf26c__rip__type* @G_0xf26c__rip_ to i64)
  %983 = add i64 %980, 8
  store i64 %983, i64* %3, align 8
  %984 = inttoptr i64 %982 to i64*
  %985 = load i64, i64* %984, align 8
  %986 = bitcast [32 x %union.VectorReg]* %981 to double*
  %987 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %981, i64 0, i64 0, i32 0, i32 0, i32 0, i64 0
  store i64 %985, i64* %987, align 1
  %988 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 1
  %989 = bitcast i64* %988 to double*
  store double 0.000000e+00, double* %989, align 1
  %990 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1
  %991 = load i64, i64* bitcast (%G_0x676d20_type* @G_0x676d20 to i64*), align 8
  %992 = sitofp i64 %991 to double
  %993 = bitcast %union.VectorReg* %990 to double*
  store double %992, double* %993, align 1
  %994 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 2
  %995 = add i64 %925, -40
  %996 = add i64 %980, 24
  store i64 %996, i64* %3, align 8
  %997 = inttoptr i64 %995 to i64*
  %998 = load i64, i64* %997, align 8
  %999 = sitofp i64 %998 to double
  %1000 = bitcast %union.VectorReg* %994 to double*
  store double %999, double* %1000, align 1
  %1001 = fdiv double %992, %999
  %1002 = bitcast i64 %985 to double
  %1003 = fmul double %1001, %1002
  store double %1003, double* %993, align 1
  %1004 = tail call double @llvm.trunc.f64(double %1003)
  %1005 = tail call double @llvm.fabs.f64(double %1004)
  %1006 = fcmp ogt double %1005, 0x41DFFFFFFFC00000
  %1007 = fptosi double %1004 to i32
  %1008 = zext i32 %1007 to i64
  %1009 = select i1 %1006, i64 2147483648, i64 %1008
  store i64 %1009, i64* %RAX.i178.pre-phi, align 8
  %1010 = add i64 %925, -20
  %1011 = trunc i64 %1009 to i32
  %1012 = add i64 %980, 39
  store i64 %1012, i64* %3, align 8
  %1013 = inttoptr i64 %1010 to i32*
  store i32 %1011, i32* %1013, align 4
  %1014 = load i64, i64* %RBP.i, align 8
  %1015 = add i64 %1014, -20
  %1016 = load i64, i64* %3, align 8
  %1017 = add i64 %1016, 4
  store i64 %1017, i64* %3, align 8
  %1018 = inttoptr i64 %1015 to i32*
  %1019 = load i32, i32* %1018, align 4
  %1020 = sext i32 %1019 to i64
  store i64 %1020, i64* %RCX.i176.pre-phi, align 8
  %1021 = shl nsw i64 %1020, 3
  %1022 = add nsw i64 %1021, 6777632
  %1023 = add i64 %1016, 12
  store i64 %1023, i64* %3, align 8
  %1024 = inttoptr i64 %1022 to i64*
  %1025 = load i64, i64* %1024, align 8
  store i64 %1025, i64* bitcast (%G_0x676d20_type* @G_0x676d20 to i64*), align 8
  %1026 = load i64, i64* bitcast (%G_0x676b10_type* @G_0x676b10 to i64*), align 8
  %1027 = load i64, i64* bitcast (%G_0x676b18_type* @G_0x676b18 to i64*), align 8
  %1028 = sub i64 %1026, %1027
  store i64 %1028, i64* %RCX.i176.pre-phi, align 8
  %1029 = icmp ult i64 %1026, %1027
  %1030 = zext i1 %1029 to i8
  store i8 %1030, i8* %51, align 1
  %1031 = trunc i64 %1028 to i32
  %1032 = and i32 %1031, 255
  %1033 = tail call i32 @llvm.ctpop.i32(i32 %1032)
  %1034 = trunc i32 %1033 to i8
  %1035 = and i8 %1034, 1
  %1036 = xor i8 %1035, 1
  store i8 %1036, i8* %57, align 1
  %1037 = xor i64 %1027, %1026
  %1038 = xor i64 %1037, %1028
  %1039 = lshr i64 %1038, 4
  %1040 = trunc i64 %1039 to i8
  %1041 = and i8 %1040, 1
  store i8 %1041, i8* %58, align 1
  %1042 = icmp eq i64 %1028, 0
  %1043 = zext i1 %1042 to i8
  store i8 %1043, i8* %61, align 1
  %1044 = lshr i64 %1028, 63
  %1045 = trunc i64 %1044 to i8
  store i8 %1045, i8* %64, align 1
  %1046 = lshr i64 %1026, 63
  %1047 = lshr i64 %1027, 63
  %1048 = xor i64 %1047, %1046
  %1049 = xor i64 %1044, %1046
  %1050 = add nuw nsw i64 %1049, %1048
  %1051 = icmp eq i64 %1050, 2
  %1052 = zext i1 %1051 to i8
  store i8 %1052, i8* %65, align 1
  %1053 = add i64 %1016, 40
  store i64 %1053, i64* %3, align 8
  %1054 = load i32, i32* %1018, align 4
  %1055 = sext i32 %1054 to i64
  store i64 %1055, i64* %.pre-phi50, align 8
  %1056 = shl nsw i64 %1055, 3
  %1057 = add nsw i64 %1056, 6777632
  %1058 = add i64 %1016, 48
  store i64 %1058, i64* %3, align 8
  %1059 = inttoptr i64 %1057 to i64*
  store i64 %1028, i64* %1059, align 8
  %1060 = load i64, i64* %RBP.i, align 8
  %1061 = add i64 %1060, -20
  %1062 = load i64, i64* %3, align 8
  %1063 = add i64 %1062, 4
  store i64 %1063, i64* %3, align 8
  %1064 = inttoptr i64 %1061 to i32*
  %1065 = load i32, i32* %1064, align 4
  %1066 = sext i32 %1065 to i64
  store i64 %1066, i64* %RCX.i176.pre-phi, align 8
  %1067 = shl nsw i64 %1066, 3
  %1068 = add nsw i64 %1067, 6777632
  %1069 = add i64 %1062, 13
  store i64 %1069, i64* %3, align 8
  %1070 = inttoptr i64 %1068 to i64*
  %1071 = load i64, i64* %1070, align 8
  store i8 0, i8* %51, align 1
  %1072 = trunc i64 %1071 to i32
  %1073 = and i32 %1072, 255
  %1074 = tail call i32 @llvm.ctpop.i32(i32 %1073)
  %1075 = trunc i32 %1074 to i8
  %1076 = and i8 %1075, 1
  %1077 = xor i8 %1076, 1
  store i8 %1077, i8* %57, align 1
  store i8 0, i8* %58, align 1
  %1078 = icmp eq i64 %1071, 0
  %1079 = zext i1 %1078 to i8
  store i8 %1079, i8* %61, align 1
  %1080 = lshr i64 %1071, 63
  %1081 = trunc i64 %1080 to i8
  store i8 %1081, i8* %64, align 1
  store i8 0, i8* %65, align 1
  %1082 = icmp ne i8 %1081, 0
  %.v9 = select i1 %1082, i64 6, i64 30
  %1083 = add i64 %1069, %.v9
  store i64 %1083, i64* %3, align 8
  br i1 %1082, label %block_445726, label %block_.L_44573e

block_445726:                                     ; preds = %block_.L_4456bc
  %1084 = add i64 %1060, -40
  %1085 = add i64 %1083, 4
  store i64 %1085, i64* %3, align 8
  %1086 = inttoptr i64 %1084 to i64*
  %1087 = load i64, i64* %1086, align 8
  store i64 %1087, i64* %RAX.i178.pre-phi, align 8
  %1088 = add i64 %1083, 8
  store i64 %1088, i64* %3, align 8
  %1089 = load i32, i32* %1064, align 4
  %1090 = sext i32 %1089 to i64
  store i64 %1090, i64* %RCX.i176.pre-phi, align 8
  %1091 = shl nsw i64 %1090, 3
  %1092 = add nsw i64 %1091, 6777632
  %1093 = add i64 %1083, 16
  store i64 %1093, i64* %3, align 8
  %1094 = inttoptr i64 %1092 to i64*
  %1095 = load i64, i64* %1094, align 8
  %1096 = add i64 %1095, %1087
  store i64 %1096, i64* %RAX.i178.pre-phi, align 8
  %1097 = icmp ult i64 %1096, %1087
  %1098 = icmp ult i64 %1096, %1095
  %1099 = or i1 %1097, %1098
  %1100 = zext i1 %1099 to i8
  store i8 %1100, i8* %51, align 1
  %1101 = trunc i64 %1096 to i32
  %1102 = and i32 %1101, 255
  %1103 = tail call i32 @llvm.ctpop.i32(i32 %1102)
  %1104 = trunc i32 %1103 to i8
  %1105 = and i8 %1104, 1
  %1106 = xor i8 %1105, 1
  store i8 %1106, i8* %57, align 1
  %1107 = xor i64 %1095, %1087
  %1108 = xor i64 %1107, %1096
  %1109 = lshr i64 %1108, 4
  %1110 = trunc i64 %1109 to i8
  %1111 = and i8 %1110, 1
  store i8 %1111, i8* %58, align 1
  %1112 = icmp eq i64 %1096, 0
  %1113 = zext i1 %1112 to i8
  store i8 %1113, i8* %61, align 1
  %1114 = lshr i64 %1096, 63
  %1115 = trunc i64 %1114 to i8
  store i8 %1115, i8* %64, align 1
  %1116 = lshr i64 %1087, 63
  %1117 = lshr i64 %1095, 63
  %1118 = xor i64 %1114, %1116
  %1119 = xor i64 %1114, %1117
  %1120 = add nuw nsw i64 %1118, %1119
  %1121 = icmp eq i64 %1120, 2
  %1122 = zext i1 %1121 to i8
  store i8 %1122, i8* %65, align 1
  %1123 = add i64 %1083, 24
  store i64 %1123, i64* %3, align 8
  store i64 %1096, i64* %1094, align 8
  %.pre44 = load i64, i64* %3, align 8
  %.pre45 = load i64, i64* %RBP.i, align 8
  br label %block_.L_44573e

block_.L_44573e:                                  ; preds = %block_.L_4456bc, %block_445726
  %1124 = phi i64 [ %1060, %block_.L_4456bc ], [ %.pre45, %block_445726 ]
  %1125 = phi i64 [ %1083, %block_.L_4456bc ], [ %.pre44, %block_445726 ]
  %1126 = load i64, i64* bitcast (%G_0x676d20_type* @G_0x676d20 to i64*), align 8
  %1127 = sitofp i64 %1126 to double
  store double %1127, double* %986, align 1
  %1128 = add i64 %1124, -40
  %1129 = add i64 %1125, 16
  store i64 %1129, i64* %3, align 8
  %1130 = inttoptr i64 %1128 to i64*
  %1131 = load i64, i64* %1130, align 8
  %1132 = sitofp i64 %1131 to double
  store double %1132, double* %993, align 1
  %1133 = fdiv double %1127, %1132
  store double %1133, double* %986, align 1
  %1134 = add i64 %1125, 21
  store i64 %1134, i64* %3, align 8
  %1135 = load i64, i64* %6, align 8
  %1136 = add i64 %1135, 8
  %1137 = inttoptr i64 %1135 to i64*
  %1138 = load i64, i64* %1137, align 8
  store i64 %1138, i64* %RBP.i, align 8
  store i64 %1136, i64* %6, align 8
  %1139 = add i64 %1125, 22
  store i64 %1139, i64* %3, align 8
  %1140 = inttoptr i64 %1136 to i64*
  %1141 = load i64, i64* %1140, align 8
  store i64 %1141, i64* %3, align 8
  %1142 = add i64 %1135, 16
  store i64 %1142, i64* %6, align 8
  ret %struct.Memory* %900
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
define %struct.Memory* @routine_movq__0x9c4e__MINUS0x20__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -32
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 8
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  store i64 40014, i64* %7, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__0x7fffffab__MINUS0x28__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -40
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 8
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  store i64 2147483563, i64* %7, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__0xd1a4__MINUS0x30__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -48
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 8
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  store i64 53668, i64* %7, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__0x2fb3__MINUS0x38__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -56
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 8
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  store i64 12211, i64* %7, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__0x9ef4__MINUS0x40__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -64
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 8
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  store i64 40692, i64* %7, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__0x7fffff07__MINUS0x48__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -72
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 8
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  store i64 2147483399, i64* %7, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__0xce26__MINUS0x50__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -80
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 8
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  store i64 52774, i64* %7, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__0xecf__MINUS0x58__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -88
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 8
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  store i64 3791, i64* %7, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__0x0__0x662c38(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 8
  store i64 %4, i64* %PC, align 8
  %5 = load i32, i32* bitcast (%G_0x662c38_type* @G_0x662c38 to i32*), align 8
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
define %struct.Memory* @routine_jle_.L_4455d2(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movslq_0x662c38___rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 8
  store i64 %4, i64* %PC, align 8
  %5 = load i32, i32* bitcast (%G_0x662c38_type* @G_0x662c38 to i32*), align 8
  %6 = sext i32 %5 to i64
  store i64 %6, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__rax__0x676b10(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 8
  store i64 %5, i64* %PC, align 8
  store i64 %3, i64* bitcast (%G_0x676b10_type* @G_0x676b10 to i64*), align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__rax__0x676b18(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 8
  store i64 %5, i64* %PC, align 8
  store i64 %3, i64* bitcast (%G_0x676b18_type* @G_0x676b18 to i64*), align 8
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
define %struct.Memory* @routine_cmpl__0x40__MINUS0x14__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
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
  %9 = add i32 %8, -64
  %10 = icmp ult i32 %8, 64
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
define %struct.Memory* @routine_jge_.L_4455c7(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movq_0x676b10___rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 8
  store i64 %4, i64* %PC, align 8
  %5 = load i64, i64* bitcast (%G_0x676b10_type* @G_0x676b10 to i64*), align 8
  store i64 %5, i64* %RCX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__rax__MINUS0x60__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -96
  %5 = load i64, i64* %RAX, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 4
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

define %struct.Memory* @routine_idivq_MINUS0x30__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -48
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = inttoptr i64 %4 to i64*
  %12 = load i64, i64* %11, align 8
  %13 = sext i64 %12 to i128
  %14 = and i128 %13, -18446744073709551616
  %15 = zext i64 %10 to i128
  %16 = shl nuw i128 %15, 64
  %17 = zext i64 %8 to i128
  %18 = or i128 %16, %17
  %19 = zext i64 %12 to i128
  %20 = or i128 %14, %19
  %21 = sdiv i128 %18, %20
  %22 = trunc i128 %21 to i64
  %23 = and i128 %21, 18446744073709551615
  %24 = sext i64 %22 to i128
  %25 = and i128 %24, -18446744073709551616
  %26 = or i128 %25, %23
  %27 = icmp eq i128 %21, %26
  br i1 %27, label %30, label %28

; <label>:28:                                     ; preds = %block_400488
  %29 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %6, %struct.Memory* %2)
  br label %_ZN12_GLOBAL__N_1L10IDIVrdxraxI2MnImEEEP6MemoryS4_R5StateT_.exit

; <label>:30:                                     ; preds = %block_400488
  %31 = srem i128 %18, %20
  %32 = trunc i128 %31 to i64
  store i64 %22, i64* %7, align 8
  store i64 %32, i64* %9, align 8
  %33 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %33, align 1
  %34 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 0, i8* %34, align 1
  %35 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %35, align 1
  %36 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %36, align 1
  %37 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 0, i8* %37, align 1
  %38 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %38, align 1
  br label %_ZN12_GLOBAL__N_1L10IDIVrdxraxI2MnImEEEP6MemoryS4_R5StateT_.exit

_ZN12_GLOBAL__N_1L10IDIVrdxraxI2MnImEEEP6MemoryS4_R5StateT_.exit: ; preds = %30, %28
  %39 = phi %struct.Memory* [ %29, %28 ], [ %2, %30 ]
  ret %struct.Memory* %39
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_MINUS0x60__rbp____rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -96
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RCX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_imulq__rdx___rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = load i64, i64* %RDX, align 8
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = sext i64 %3 to i128
  %8 = and i128 %7, -18446744073709551616
  %9 = sext i64 %4 to i128
  %10 = and i128 %9, -18446744073709551616
  %11 = zext i64 %3 to i128
  %12 = or i128 %8, %11
  %13 = zext i64 %4 to i128
  %14 = or i128 %10, %13
  %15 = mul i128 %14, %12
  %16 = trunc i128 %15 to i64
  store i64 %16, i64* %RCX, align 8
  %17 = sext i64 %16 to i128
  %18 = icmp ne i128 %17, %15
  %19 = zext i1 %18 to i8
  %20 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %19, i8* %20, align 1
  %21 = trunc i128 %15 to i32
  %22 = and i32 %21, 255
  %23 = tail call i32 @llvm.ctpop.i32(i32 %22)
  %24 = trunc i32 %23 to i8
  %25 = and i8 %24, 1
  %26 = xor i8 %25, 1
  %27 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %26, i8* %27, align 1
  %28 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %28, align 1
  %29 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %29, align 1
  %30 = lshr i64 %16, 63
  %31 = trunc i64 %30 to i8
  %32 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %31, i8* %32, align 1
  %33 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %19, i8* %33, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__rcx__MINUS0x8__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -8
  %5 = load i64, i64* %RCX, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 4
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %4 to i64*
  store i64 %5, i64* %8, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_MINUS0x38__rbp____rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -56
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RCX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_0x676b10___rdx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 8
  store i64 %4, i64* %PC, align 8
  %5 = load i64, i64* bitcast (%G_0x676b10_type* @G_0x676b10 to i64*), align 8
  store i64 %5, i64* %RDX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__rdx___rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %RDX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 3
  store i64 %5, i64* %PC, align 8
  store i64 %3, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_imulq__rax___rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = load i64, i64* %RAX, align 8
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = sext i64 %3 to i128
  %8 = and i128 %7, -18446744073709551616
  %9 = sext i64 %4 to i128
  %10 = and i128 %9, -18446744073709551616
  %11 = zext i64 %3 to i128
  %12 = or i128 %8, %11
  %13 = zext i64 %4 to i128
  %14 = or i128 %10, %13
  %15 = mul i128 %14, %12
  %16 = trunc i128 %15 to i64
  store i64 %16, i64* %RCX, align 8
  %17 = sext i64 %16 to i128
  %18 = icmp ne i128 %17, %15
  %19 = zext i1 %18 to i8
  %20 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %19, i8* %20, align 1
  %21 = trunc i128 %15 to i32
  %22 = and i32 %21, 255
  %23 = tail call i32 @llvm.ctpop.i32(i32 %22)
  %24 = trunc i32 %23 to i8
  %25 = and i8 %24, 1
  %26 = xor i8 %25, 1
  %27 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %26, i8* %27, align 1
  %28 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %28, align 1
  %29 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %29, align 1
  %30 = lshr i64 %16, 63
  %31 = trunc i64 %30 to i8
  %32 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %31, i8* %32, align 1
  %33 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %19, i8* %33, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__rcx__MINUS0x10__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -16
  %5 = load i64, i64* %RCX, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 4
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %4 to i64*
  store i64 %5, i64* %8, align 8
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

; Function Attrs: nounwind
define %struct.Memory* @routine_subq_MINUS0x10__rbp____rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -16
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 4
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %5 to i64*
  %9 = load i64, i64* %8, align 8
  %10 = sub i64 %3, %9
  store i64 %10, i64* %RAX, align 8
  %11 = icmp ult i64 %3, %9
  %12 = zext i1 %11 to i8
  %13 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %12, i8* %13, align 1
  %14 = trunc i64 %10 to i32
  %15 = and i32 %14, 255
  %16 = tail call i32 @llvm.ctpop.i32(i32 %15)
  %17 = trunc i32 %16 to i8
  %18 = and i8 %17, 1
  %19 = xor i8 %18, 1
  %20 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %19, i8* %20, align 1
  %21 = xor i64 %9, %3
  %22 = xor i64 %21, %10
  %23 = lshr i64 %22, 4
  %24 = trunc i64 %23 to i8
  %25 = and i8 %24, 1
  %26 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %25, i8* %26, align 1
  %27 = icmp eq i64 %10, 0
  %28 = zext i1 %27 to i8
  %29 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %28, i8* %29, align 1
  %30 = lshr i64 %10, 63
  %31 = trunc i64 %30 to i8
  %32 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %31, i8* %32, align 1
  %33 = lshr i64 %3, 63
  %34 = lshr i64 %9, 63
  %35 = xor i64 %34, %33
  %36 = xor i64 %30, %33
  %37 = add nuw nsw i64 %36, %35
  %38 = icmp eq i64 %37, 2
  %39 = zext i1 %38 to i8
  %40 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %39, i8* %40, align 1
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpq__0x0__0x676b10(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 9
  store i64 %4, i64* %PC, align 8
  %5 = load i64, i64* bitcast (%G_0x676b10_type* @G_0x676b10 to i64*), align 8
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %6, align 1
  %7 = trunc i64 %5 to i32
  %8 = and i32 %7, 255
  %9 = tail call i32 @llvm.ctpop.i32(i32 %8)
  %10 = trunc i32 %9 to i8
  %11 = and i8 %10, 1
  %12 = xor i8 %11, 1
  %13 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %12, i8* %13, align 1
  %14 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %14, align 1
  %15 = icmp eq i64 %5, 0
  %16 = zext i1 %15 to i8
  %17 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %16, i8* %17, align 1
  %18 = lshr i64 %5, 63
  %19 = trunc i64 %18 to i8
  %20 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %19, i8* %20, align 1
  %21 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %21, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jge_.L_4454f8(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movq_MINUS0x28__rbp____rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -40
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_addq_0x676b10___rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 8
  store i64 %5, i64* %PC, align 8
  %6 = load i64, i64* bitcast (%G_0x676b10_type* @G_0x676b10 to i64*), align 8
  %7 = add i64 %6, %3
  store i64 %7, i64* %RAX, align 8
  %8 = icmp ult i64 %7, %3
  %9 = icmp ult i64 %7, %6
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
  %20 = xor i64 %6, %3
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
  %33 = lshr i64 %6, 63
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
define %struct.Memory* @routine_movq_MINUS0x40__rbp____rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -64
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_0x676b18___rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 8
  store i64 %4, i64* %PC, align 8
  %5 = load i64, i64* bitcast (%G_0x676b18_type* @G_0x676b18 to i64*), align 8
  store i64 %5, i64* %RCX, align 8
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

define %struct.Memory* @routine_idivq_MINUS0x50__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -80
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = inttoptr i64 %4 to i64*
  %12 = load i64, i64* %11, align 8
  %13 = sext i64 %12 to i128
  %14 = and i128 %13, -18446744073709551616
  %15 = zext i64 %10 to i128
  %16 = shl nuw i128 %15, 64
  %17 = zext i64 %8 to i128
  %18 = or i128 %16, %17
  %19 = zext i64 %12 to i128
  %20 = or i128 %14, %19
  %21 = sdiv i128 %18, %20
  %22 = trunc i128 %21 to i64
  %23 = and i128 %21, 18446744073709551615
  %24 = sext i64 %22 to i128
  %25 = and i128 %24, -18446744073709551616
  %26 = or i128 %25, %23
  %27 = icmp eq i128 %21, %26
  br i1 %27, label %30, label %28

; <label>:28:                                     ; preds = %block_400488
  %29 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %6, %struct.Memory* %2)
  br label %_ZN12_GLOBAL__N_1L10IDIVrdxraxI2MnImEEEP6MemoryS4_R5StateT_.exit

; <label>:30:                                     ; preds = %block_400488
  %31 = srem i128 %18, %20
  %32 = trunc i128 %31 to i64
  store i64 %22, i64* %7, align 8
  store i64 %32, i64* %9, align 8
  %33 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %33, align 1
  %34 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 0, i8* %34, align 1
  %35 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %35, align 1
  %36 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %36, align 1
  %37 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 0, i8* %37, align 1
  %38 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %38, align 1
  br label %_ZN12_GLOBAL__N_1L10IDIVrdxraxI2MnImEEEP6MemoryS4_R5StateT_.exit

_ZN12_GLOBAL__N_1L10IDIVrdxraxI2MnImEEEP6MemoryS4_R5StateT_.exit: ; preds = %30, %28
  %39 = phi %struct.Memory* [ %29, %28 ], [ %2, %30 ]
  ret %struct.Memory* %39
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_MINUS0x68__rbp____rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -104
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RCX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_MINUS0x58__rbp____rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -88
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RCX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_0x676b18___rdx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 8
  store i64 %4, i64* %PC, align 8
  %5 = load i64, i64* bitcast (%G_0x676b18_type* @G_0x676b18 to i64*), align 8
  store i64 %5, i64* %RDX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpq__0x0__0x676b18(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 9
  store i64 %4, i64* %PC, align 8
  %5 = load i64, i64* bitcast (%G_0x676b18_type* @G_0x676b18 to i64*), align 8
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %6, align 1
  %7 = trunc i64 %5 to i32
  %8 = and i32 %7, 255
  %9 = tail call i32 @llvm.ctpop.i32(i32 %8)
  %10 = trunc i32 %9 to i8
  %11 = and i8 %10, 1
  %12 = xor i8 %11, 1
  %13 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %12, i8* %13, align 1
  %14 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %14, align 1
  %15 = icmp eq i64 %5, 0
  %16 = zext i1 %15 to i8
  %17 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %16, i8* %17, align 1
  %18 = lshr i64 %5, 63
  %19 = trunc i64 %18 to i8
  %20 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %19, i8* %20, align 1
  %21 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %21, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jge_.L_44556d(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movq_MINUS0x48__rbp____rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -72
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_addq_0x676b18___rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 8
  store i64 %5, i64* %PC, align 8
  %6 = load i64, i64* bitcast (%G_0x676b18_type* @G_0x676b18 to i64*), align 8
  %7 = add i64 %6, %3
  store i64 %7, i64* %RAX, align 8
  %8 = icmp ult i64 %7, %3
  %9 = icmp ult i64 %7, %6
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
  %20 = xor i64 %6, %3
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
  %33 = lshr i64 %6, 63
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
define %struct.Memory* @routine_movq_0x676b10___rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 8
  store i64 %4, i64* %PC, align 8
  %5 = load i64, i64* bitcast (%G_0x676b10_type* @G_0x676b10 to i64*), align 8
  store i64 %5, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_subq_0x676b18___rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 8
  store i64 %5, i64* %PC, align 8
  %6 = load i64, i64* bitcast (%G_0x676b18_type* @G_0x676b18 to i64*), align 8
  %7 = sub i64 %3, %6
  store i64 %7, i64* %RAX, align 8
  %8 = icmp ult i64 %3, %6
  %9 = zext i1 %8 to i8
  %10 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %9, i8* %10, align 1
  %11 = trunc i64 %7 to i32
  %12 = and i32 %11, 255
  %13 = tail call i32 @llvm.ctpop.i32(i32 %12)
  %14 = trunc i32 %13 to i8
  %15 = and i8 %14, 1
  %16 = xor i8 %15, 1
  %17 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %16, i8* %17, align 1
  %18 = xor i64 %6, %3
  %19 = xor i64 %18, %7
  %20 = lshr i64 %19, 4
  %21 = trunc i64 %20 to i8
  %22 = and i8 %21, 1
  %23 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %22, i8* %23, align 1
  %24 = icmp eq i64 %7, 0
  %25 = zext i1 %24 to i8
  %26 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %25, i8* %26, align 1
  %27 = lshr i64 %7, 63
  %28 = trunc i64 %27 to i8
  %29 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %28, i8* %29, align 1
  %30 = lshr i64 %3, 63
  %31 = lshr i64 %6, 63
  %32 = xor i64 %31, %30
  %33 = xor i64 %27, %30
  %34 = add nuw nsw i64 %33, %32
  %35 = icmp eq i64 %34, 2
  %36 = zext i1 %35 to i8
  %37 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %36, i8* %37, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movslq_MINUS0x14__rbp____rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -20
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
define %struct.Memory* @routine_movq__rax__0x676b20___rcx_8_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = shl i64 %3, 3
  %5 = add i64 %4, 6777632
  %6 = load i64, i64* %RAX, align 8
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 8
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i64*
  store i64 %6, i64* %9, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movslq_MINUS0x14__rbp____rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -20
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
define %struct.Memory* @routine_cmpq__0x0__0x676b20___rax_8_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = shl i64 %3, 3
  %5 = add i64 %4, 6777632
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 9
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %5 to i64*
  %9 = load i64, i64* %8, align 8
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
  %18 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %18, align 1
  %19 = icmp eq i64 %9, 0
  %20 = zext i1 %19 to i8
  %21 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %20, i8* %21, align 1
  %22 = lshr i64 %9, 63
  %23 = trunc i64 %22 to i8
  %24 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %23, i8* %24, align 1
  %25 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %25, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jge_.L_4455b4(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_addq_0x676b20___rcx_8____rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %RCX, align 8
  %5 = shl i64 %4, 3
  %6 = add i64 %5, 6777632
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 8
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %6 to i64*
  %10 = load i64, i64* %9, align 8
  %11 = add i64 %10, %3
  store i64 %11, i64* %RAX, align 8
  %12 = icmp ult i64 %11, %3
  %13 = icmp ult i64 %11, %10
  %14 = or i1 %12, %13
  %15 = zext i1 %14 to i8
  %16 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %15, i8* %16, align 1
  %17 = trunc i64 %11 to i32
  %18 = and i32 %17, 255
  %19 = tail call i32 @llvm.ctpop.i32(i32 %18)
  %20 = trunc i32 %19 to i8
  %21 = and i8 %20, 1
  %22 = xor i8 %21, 1
  %23 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %22, i8* %23, align 1
  %24 = xor i64 %10, %3
  %25 = xor i64 %24, %11
  %26 = lshr i64 %25, 4
  %27 = trunc i64 %26 to i8
  %28 = and i8 %27, 1
  %29 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %28, i8* %29, align 1
  %30 = icmp eq i64 %11, 0
  %31 = zext i1 %30 to i8
  %32 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %31, i8* %32, align 1
  %33 = lshr i64 %11, 63
  %34 = trunc i64 %33 to i8
  %35 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %34, i8* %35, align 1
  %36 = lshr i64 %3, 63
  %37 = lshr i64 %10, 63
  %38 = xor i64 %33, %36
  %39 = xor i64 %33, %37
  %40 = add nuw nsw i64 %38, %39
  %41 = icmp eq i64 %40, 2
  %42 = zext i1 %41 to i8
  %43 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %42, i8* %43, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_4455b9(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jmpq_.L_445479(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x0__0x662c38(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 11
  store i64 %4, i64* %PC, align 8
  store i32 0, i32* bitcast (%G_0x662c38_type* @G_0x662c38 to i32*), align 8
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
define %struct.Memory* @routine_movq_MINUS0x70__rbp____rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -112
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RCX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jge_.L_445647(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movq__rax__MINUS0x78__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -120
  %5 = load i64, i64* %RAX, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 4
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %4 to i64*
  store i64 %5, i64* %8, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_MINUS0x78__rbp____rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -120
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RCX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jge_.L_4456bc(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movsd_0xf26c__rip____xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, ptrtoint (%G_0xf26c__rip__type* @G_0xf26c__rip_ to i64)
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
define %struct.Memory* @routine_cvtsi2sdq_0x676d20___xmm1(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 10
  store i64 %5, i64* %PC, align 8
  %6 = load i64, i64* bitcast (%G_0x676d20_type* @G_0x676d20 to i64*), align 8
  %7 = sitofp i64 %6 to double
  %8 = bitcast %union.VectorReg* %3 to double*
  store double %7, double* %8, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_cvtsi2sdq_MINUS0x28__rbp____xmm2(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 2
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -40
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
define %struct.Memory* @routine_mulsd__xmm0___xmm1(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1
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

; Function Attrs: nounwind
define %struct.Memory* @routine_cvttsd2si__xmm1___eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1
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
  store i64 %13, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_0x676b20___rcx_8____rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = shl i64 %3, 3
  %5 = add i64 %4, 6777632
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 8
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %5 to i64*
  %9 = load i64, i64* %8, align 8
  store i64 %9, i64* %RCX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__rcx__0x676d20(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 8
  store i64 %5, i64* %PC, align 8
  store i64 %3, i64* bitcast (%G_0x676d20_type* @G_0x676d20 to i64*), align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_subq_0x676b18___rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 8
  store i64 %5, i64* %PC, align 8
  %6 = load i64, i64* bitcast (%G_0x676b18_type* @G_0x676b18 to i64*), align 8
  %7 = sub i64 %3, %6
  store i64 %7, i64* %RCX, align 8
  %8 = icmp ult i64 %3, %6
  %9 = zext i1 %8 to i8
  %10 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %9, i8* %10, align 1
  %11 = trunc i64 %7 to i32
  %12 = and i32 %11, 255
  %13 = tail call i32 @llvm.ctpop.i32(i32 %12)
  %14 = trunc i32 %13 to i8
  %15 = and i8 %14, 1
  %16 = xor i8 %15, 1
  %17 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %16, i8* %17, align 1
  %18 = xor i64 %6, %3
  %19 = xor i64 %18, %7
  %20 = lshr i64 %19, 4
  %21 = trunc i64 %20 to i8
  %22 = and i8 %21, 1
  %23 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %22, i8* %23, align 1
  %24 = icmp eq i64 %7, 0
  %25 = zext i1 %24 to i8
  %26 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %25, i8* %26, align 1
  %27 = lshr i64 %7, 63
  %28 = trunc i64 %27 to i8
  %29 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %28, i8* %29, align 1
  %30 = lshr i64 %3, 63
  %31 = lshr i64 %6, 63
  %32 = xor i64 %31, %30
  %33 = xor i64 %27, %30
  %34 = add nuw nsw i64 %33, %32
  %35 = icmp eq i64 %34, 2
  %36 = zext i1 %35 to i8
  %37 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %36, i8* %37, align 1
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__rcx__0x676b20___rdx_8_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %RDX, align 8
  %4 = shl i64 %3, 3
  %5 = add i64 %4, 6777632
  %6 = load i64, i64* %RCX, align 8
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 8
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i64*
  store i64 %6, i64* %9, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpq__0x0__0x676b20___rcx_8_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = shl i64 %3, 3
  %5 = add i64 %4, 6777632
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 9
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %5 to i64*
  %9 = load i64, i64* %8, align 8
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
  %18 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %18, align 1
  %19 = icmp eq i64 %9, 0
  %20 = zext i1 %19 to i8
  %21 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %20, i8* %21, align 1
  %22 = lshr i64 %9, 63
  %23 = trunc i64 %22 to i8
  %24 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %23, i8* %24, align 1
  %25 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %25, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jge_.L_44573e(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_cvtsi2sdq_0x676d20___xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 10
  store i64 %5, i64* %PC, align 8
  %6 = load i64, i64* bitcast (%G_0x676d20_type* @G_0x676d20 to i64*), align 8
  %7 = sitofp i64 %6 to double
  %8 = bitcast %union.VectorReg* %3 to double*
  store double %7, double* %8, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_cvtsi2sdq_MINUS0x28__rbp____xmm1(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -40
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
define %struct.Memory* @routine_divsd__xmm1___xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
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
  %11 = fdiv double %8, %10
  store double %11, double* %7, align 1
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
