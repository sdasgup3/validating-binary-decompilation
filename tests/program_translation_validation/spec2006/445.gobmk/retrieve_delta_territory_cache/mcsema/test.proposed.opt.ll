; ModuleID = 'mcsema/test.proposed.inline.ll'
source_filename = "llvm-link"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu-elf"

%__bss_start_type = type <{ [8 x i8] }>
%G_0x7ae528_type = type <{ [4 x i8] }>
%G_0x7ae52c_type = type <{ [4 x i8] }>
%G_0xb5184__rip__type = type <{ [8 x i8] }>
%G_0xb8af2c_type = type <{ [4 x i8] }>
%G__0x57a49b_type = type <{ [8 x i8] }>
%G__0x57a4f4_type = type <{ [8 x i8] }>
%G__0x57c5ff_type = type <{ [8 x i8] }>
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
@G_0x7ae528 = local_unnamed_addr global %G_0x7ae528_type zeroinitializer
@G_0x7ae52c = local_unnamed_addr global %G_0x7ae52c_type zeroinitializer
@G_0xb5184__rip_ = global %G_0xb5184__rip__type zeroinitializer
@G_0xb8af2c = local_unnamed_addr global %G_0xb8af2c_type zeroinitializer
@G__0x57a49b = global %G__0x57a49b_type zeroinitializer
@G__0x57a4f4 = global %G__0x57a4f4_type zeroinitializer
@G__0x57c5ff = global %G__0x57c5ff_type zeroinitializer

declare %struct.Memory* @__remill_error(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr

; Function Attrs: nounwind readnone
declare i32 @llvm.ctpop.i32(i32) #0

declare %struct.Memory* @sub_452090.abortgo(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

; Function Attrs: alwaysinline
define %struct.Memory* @retrieve_delta_territory_cache(%struct.State* noalias, i64, %struct.Memory* noalias) local_unnamed_addr #1 {
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
  %11 = add i64 %7, -88
  store i64 %11, i64* %6, align 8
  %12 = icmp ult i64 %8, 80
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
  %22 = xor i64 %8, 16
  %23 = xor i64 %22, %11
  %24 = lshr i64 %23, 4
  %25 = trunc i64 %24 to i8
  %26 = and i8 %25, 1
  %27 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %26, i8* %27, align 1
  %28 = icmp eq i64 %11, 0
  %29 = zext i1 %28 to i8
  %30 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %29, i8* %30, align 1
  %31 = lshr i64 %11, 63
  %32 = trunc i64 %31 to i8
  %33 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %32, i8* %33, align 1
  %34 = lshr i64 %8, 63
  %35 = xor i64 %31, %34
  %36 = add nuw nsw i64 %35, %34
  %37 = icmp eq i64 %36, 2
  %38 = zext i1 %37 to i8
  %39 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %38, i8* %39, align 1
  %40 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0
  %EDI.i = bitcast %union.anon* %40 to i32*
  %41 = add i64 %7, -16
  %42 = load i32, i32* %EDI.i, align 4
  %43 = add i64 %10, 10
  store i64 %43, i64* %3, align 8
  %44 = inttoptr i64 %41 to i32*
  store i32 %42, i32* %44, align 4
  %45 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0
  %ESI.i = bitcast %union.anon* %45 to i32*
  %46 = load i64, i64* %RBP.i, align 8
  %47 = add i64 %46, -12
  %48 = load i32, i32* %ESI.i, align 4
  %49 = load i64, i64* %3, align 8
  %50 = add i64 %49, 3
  store i64 %50, i64* %3, align 8
  %51 = inttoptr i64 %47 to i32*
  store i32 %48, i32* %51, align 4
  %RDX.i160 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %52 = load i64, i64* %RBP.i, align 8
  %53 = add i64 %52, -24
  %54 = load i64, i64* %RDX.i160, align 8
  %55 = load i64, i64* %3, align 8
  %56 = add i64 %55, 4
  store i64 %56, i64* %3, align 8
  %57 = inttoptr i64 %53 to i64*
  store i64 %54, i64* %57, align 8
  %58 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %RCX.i200 = getelementptr inbounds %union.anon, %union.anon* %58, i64 0, i32 0
  %59 = load i64, i64* %RBP.i, align 8
  %60 = add i64 %59, -32
  %61 = load i64, i64* %RCX.i200, align 8
  %62 = load i64, i64* %3, align 8
  %63 = add i64 %62, 4
  store i64 %63, i64* %3, align 8
  %64 = inttoptr i64 %60 to i64*
  store i64 %61, i64* %64, align 8
  %65 = load i64, i64* %RBP.i, align 8
  %66 = add i64 %65, -8
  %67 = load i64, i64* %3, align 8
  %68 = add i64 %67, 7
  store i64 %68, i64* %3, align 8
  %69 = inttoptr i64 %66 to i32*
  %70 = load i32, i32* %69, align 4
  %71 = add i32 %70, -421
  %72 = icmp ult i32 %70, 421
  %73 = zext i1 %72 to i8
  store i8 %73, i8* %14, align 1
  %74 = and i32 %71, 255
  %75 = tail call i32 @llvm.ctpop.i32(i32 %74)
  %76 = trunc i32 %75 to i8
  %77 = and i8 %76, 1
  %78 = xor i8 %77, 1
  store i8 %78, i8* %21, align 1
  %79 = xor i32 %71, %70
  %80 = lshr i32 %79, 4
  %81 = trunc i32 %80 to i8
  %82 = and i8 %81, 1
  store i8 %82, i8* %27, align 1
  %83 = icmp eq i32 %71, 0
  %84 = zext i1 %83 to i8
  store i8 %84, i8* %30, align 1
  %85 = lshr i32 %71, 31
  %86 = trunc i32 %85 to i8
  store i8 %86, i8* %33, align 1
  %87 = lshr i32 %70, 31
  %88 = xor i32 %85, %87
  %89 = add nuw nsw i32 %88, %87
  %90 = icmp eq i32 %89, 2
  %91 = zext i1 %90 to i8
  store i8 %91, i8* %39, align 1
  %.v = select i1 %72, i64 13, i64 39
  %92 = add i64 %67, %.v
  store i64 %92, i64* %3, align 8
  br i1 %72, label %block_42dd93, label %block_.L_42ddad

block_42dd93:                                     ; preds = %entry
  %RAX.i194 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %93 = add i64 %92, 4
  store i64 %93, i64* %3, align 8
  %94 = load i32, i32* %69, align 4
  %95 = sext i32 %94 to i64
  store i64 %95, i64* %RAX.i194, align 8
  %96 = add nsw i64 %95, 12099168
  %97 = add i64 %92, 12
  store i64 %97, i64* %3, align 8
  %98 = inttoptr i64 %96 to i8*
  %99 = load i8, i8* %98, align 1
  %100 = zext i8 %99 to i64
  store i64 %100, i64* %RCX.i200, align 8
  %101 = zext i8 %99 to i32
  %102 = add nsw i32 %101, -3
  %103 = icmp ult i8 %99, 3
  %104 = zext i1 %103 to i8
  store i8 %104, i8* %14, align 1
  %105 = and i32 %102, 255
  %106 = tail call i32 @llvm.ctpop.i32(i32 %105)
  %107 = trunc i32 %106 to i8
  %108 = and i8 %107, 1
  %109 = xor i8 %108, 1
  store i8 %109, i8* %21, align 1
  %110 = xor i32 %102, %101
  %111 = lshr i32 %110, 4
  %112 = trunc i32 %111 to i8
  %113 = and i8 %112, 1
  store i8 %113, i8* %27, align 1
  %114 = icmp eq i32 %102, 0
  %115 = zext i1 %114 to i8
  store i8 %115, i8* %30, align 1
  %116 = lshr i32 %102, 31
  %117 = trunc i32 %116 to i8
  store i8 %117, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %.v32 = select i1 %114, i64 26, i64 21
  %118 = add i64 %92, %.v32
  store i64 %118, i64* %3, align 8
  br i1 %114, label %block_.L_42ddad, label %block_42dda8

block_42dda8:                                     ; preds = %block_42dd93
  %119 = add i64 %118, 94
  store i64 %119, i64* %3, align 8
  br label %block_.L_42de06

block_.L_42ddad:                                  ; preds = %entry, %block_42dd93
  %120 = phi i64 [ %118, %block_42dd93 ], [ %92, %entry ]
  %ECX.i170.pre-phi = bitcast %union.anon* %58 to i32*
  %RDI.i185 = getelementptr inbounds %union.anon, %union.anon* %40, i64 0, i32 0
  store i64 ptrtoint (%G__0x57c5ff_type* @G__0x57c5ff to i64), i64* %RDI.i185, align 8
  %RSI.i183 = getelementptr inbounds %union.anon, %union.anon* %45, i64 0, i32 0
  store i64 1618, i64* %RSI.i183, align 8
  store i64 ptrtoint (%G__0x57a49b_type* @G__0x57a49b to i64), i64* %RDX.i160, align 8
  %121 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %RAX.i179 = getelementptr inbounds %union.anon, %union.anon* %121, i64 0, i32 0
  store i64 20, i64* %RAX.i179, align 8
  %122 = add i64 %120, 33
  store i64 %122, i64* %3, align 8
  %123 = load i32, i32* %69, align 4
  %124 = zext i32 %123 to i64
  store i64 %124, i64* %RCX.i200, align 8
  %EAX.i173 = bitcast %union.anon* %121 to i32*
  %125 = add i64 %65, -36
  %126 = add i64 %120, 36
  store i64 %126, i64* %3, align 8
  %127 = inttoptr i64 %125 to i32*
  store i32 20, i32* %127, align 4
  %128 = load i32, i32* %ECX.i170.pre-phi, align 4
  %129 = zext i32 %128 to i64
  %130 = load i64, i64* %3, align 8
  store i64 %129, i64* %RAX.i179, align 8
  %131 = load i64, i64* %RBP.i, align 8
  %132 = add i64 %131, -48
  %133 = load i64, i64* %RDX.i160, align 8
  %134 = add i64 %130, 6
  store i64 %134, i64* %3, align 8
  %135 = inttoptr i64 %132 to i64*
  store i64 %133, i64* %135, align 8
  %136 = load i64, i64* %3, align 8
  %137 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %138 = load i32, i32* %EAX.i173, align 8
  %139 = sext i32 %138 to i64
  %140 = lshr i64 %139, 32
  store i64 %140, i64* %137, align 8
  %141 = load i64, i64* %RBP.i, align 8
  %142 = add i64 %141, -36
  %143 = add i64 %136, 4
  store i64 %143, i64* %3, align 8
  %144 = inttoptr i64 %142 to i32*
  %145 = load i32, i32* %144, align 4
  %146 = zext i32 %145 to i64
  store i64 %146, i64* %RCX.i200, align 8
  %147 = add i64 %136, 6
  store i64 %147, i64* %3, align 8
  %148 = zext i32 %138 to i64
  %149 = sext i32 %145 to i64
  %150 = shl nuw i64 %140, 32
  %151 = or i64 %150, %148
  %152 = sdiv i64 %151, %149
  %153 = shl i64 %152, 32
  %154 = ashr exact i64 %153, 32
  %155 = icmp eq i64 %152, %154
  br i1 %155, label %158, label %156

; <label>:156:                                    ; preds = %block_.L_42ddad
  %157 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %147, %struct.Memory* %2)
  %.pre = load i64, i64* %RAX.i179, align 8
  %.pre8 = load i64, i64* %3, align 8
  %.pre9 = load i64, i64* %RBP.i, align 8
  br label %routine_idivl__ecx.exit158

; <label>:158:                                    ; preds = %block_.L_42ddad
  %159 = srem i64 %151, %149
  %160 = and i64 %152, 4294967295
  store i64 %160, i64* %RAX.i179, align 8
  %161 = and i64 %159, 4294967295
  store i64 %161, i64* %RDX.i160, align 8
  store i8 0, i8* %14, align 1
  store i8 0, i8* %21, align 1
  store i8 0, i8* %27, align 1
  store i8 0, i8* %30, align 1
  store i8 0, i8* %33, align 1
  store i8 0, i8* %39, align 1
  br label %routine_idivl__ecx.exit158

routine_idivl__ecx.exit158:                       ; preds = %158, %156
  %162 = phi i64 [ %.pre9, %156 ], [ %141, %158 ]
  %163 = phi i64 [ %.pre8, %156 ], [ %147, %158 ]
  %164 = phi i64 [ %.pre, %156 ], [ %160, %158 ]
  %165 = phi %struct.Memory* [ %157, %156 ], [ %2, %158 ]
  %166 = trunc i64 %164 to i32
  %167 = add i32 %166, -1
  %168 = zext i32 %167 to i64
  store i64 %168, i64* %RAX.i179, align 8
  %169 = icmp eq i32 %166, 0
  %170 = zext i1 %169 to i8
  store i8 %170, i8* %14, align 1
  %171 = and i32 %167, 255
  %172 = tail call i32 @llvm.ctpop.i32(i32 %171)
  %173 = trunc i32 %172 to i8
  %174 = and i8 %173, 1
  %175 = xor i8 %174, 1
  store i8 %175, i8* %21, align 1
  %176 = xor i32 %167, %166
  %177 = lshr i32 %176, 4
  %178 = trunc i32 %177 to i8
  %179 = and i8 %178, 1
  store i8 %179, i8* %27, align 1
  %180 = icmp eq i32 %167, 0
  %181 = zext i1 %180 to i8
  store i8 %181, i8* %30, align 1
  %182 = lshr i32 %167, 31
  %183 = trunc i32 %182 to i8
  store i8 %183, i8* %33, align 1
  %184 = lshr i32 %166, 31
  %185 = xor i32 %182, %184
  %186 = add nuw nsw i32 %185, %184
  %187 = icmp eq i32 %186, 2
  %188 = zext i1 %187 to i8
  store i8 %188, i8* %39, align 1
  %189 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0
  %R8D.i152 = bitcast %union.anon* %189 to i32*
  %190 = getelementptr inbounds %union.anon, %union.anon* %189, i64 0, i32 0
  %191 = add i64 %162, -8
  %192 = add i64 %163, 7
  store i64 %192, i64* %3, align 8
  %193 = inttoptr i64 %191 to i32*
  %194 = load i32, i32* %193, align 4
  %195 = zext i32 %194 to i64
  store i64 %195, i64* %190, align 8
  %196 = add i64 %162, -52
  %197 = add i64 %163, 10
  store i64 %197, i64* %3, align 8
  %198 = inttoptr i64 %196 to i32*
  store i32 %167, i32* %198, align 4
  %199 = load i32, i32* %R8D.i152, align 4
  %200 = zext i32 %199 to i64
  %201 = load i64, i64* %3, align 8
  store i64 %200, i64* %RAX.i179, align 8
  %202 = sext i32 %199 to i64
  %203 = lshr i64 %202, 32
  store i64 %203, i64* %137, align 8
  %204 = load i32, i32* %ECX.i170.pre-phi, align 4
  %205 = add i64 %201, 6
  store i64 %205, i64* %3, align 8
  %206 = sext i32 %204 to i64
  %207 = shl nuw i64 %203, 32
  %208 = or i64 %207, %200
  %209 = sdiv i64 %208, %206
  %210 = shl i64 %209, 32
  %211 = ashr exact i64 %210, 32
  %212 = icmp eq i64 %209, %211
  br i1 %212, label %215, label %213

; <label>:213:                                    ; preds = %routine_idivl__ecx.exit158
  %214 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %205, %struct.Memory* %165)
  %.pre10 = load i64, i64* %RDX.i160, align 8
  %.pre11 = load i64, i64* %3, align 8
  br label %routine_idivl__ecx.exit141

; <label>:215:                                    ; preds = %routine_idivl__ecx.exit158
  %216 = srem i64 %208, %206
  %217 = and i64 %209, 4294967295
  store i64 %217, i64* %RAX.i179, align 8
  %218 = and i64 %216, 4294967295
  store i64 %218, i64* %RDX.i160, align 8
  store i8 0, i8* %14, align 1
  store i8 0, i8* %21, align 1
  store i8 0, i8* %27, align 1
  store i8 0, i8* %30, align 1
  store i8 0, i8* %33, align 1
  store i8 0, i8* %39, align 1
  br label %routine_idivl__ecx.exit141

routine_idivl__ecx.exit141:                       ; preds = %215, %213
  %219 = phi i64 [ %.pre11, %213 ], [ %205, %215 ]
  %220 = phi i64 [ %.pre10, %213 ], [ %218, %215 ]
  %221 = phi %struct.Memory* [ %214, %213 ], [ %165, %215 ]
  %222 = trunc i64 %220 to i32
  %223 = add i32 %222, -1
  %224 = zext i32 %223 to i64
  store i64 %224, i64* %RDX.i160, align 8
  %225 = icmp eq i32 %222, 0
  %226 = zext i1 %225 to i8
  store i8 %226, i8* %14, align 1
  %227 = and i32 %223, 255
  %228 = tail call i32 @llvm.ctpop.i32(i32 %227)
  %229 = trunc i32 %228 to i8
  %230 = and i8 %229, 1
  %231 = xor i8 %230, 1
  store i8 %231, i8* %21, align 1
  %232 = xor i32 %223, %222
  %233 = lshr i32 %232, 4
  %234 = trunc i32 %233 to i8
  %235 = and i8 %234, 1
  store i8 %235, i8* %27, align 1
  %236 = icmp eq i32 %223, 0
  %237 = zext i1 %236 to i8
  store i8 %237, i8* %30, align 1
  %238 = lshr i32 %223, 31
  %239 = trunc i32 %238 to i8
  store i8 %239, i8* %33, align 1
  %240 = lshr i32 %222, 31
  %241 = xor i32 %238, %240
  %242 = add nuw nsw i32 %241, %240
  %243 = icmp eq i32 %242, 2
  %244 = zext i1 %243 to i8
  store i8 %244, i8* %39, align 1
  %R9.i136 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 19, i32 0, i32 0
  %245 = load i64, i64* %RBP.i, align 8
  %246 = add i64 %245, -48
  %247 = add i64 %219, 7
  store i64 %247, i64* %3, align 8
  %248 = inttoptr i64 %246 to i64*
  %249 = load i64, i64* %248, align 8
  store i64 %249, i64* %R9.i136, align 8
  %250 = add i64 %245, -56
  %251 = add i64 %219, 10
  store i64 %251, i64* %3, align 8
  %252 = inttoptr i64 %250 to i32*
  store i32 %223, i32* %252, align 4
  %253 = load i64, i64* %R9.i136, align 8
  %254 = load i64, i64* %3, align 8
  store i64 %253, i64* %RDX.i160, align 8
  %255 = load i64, i64* %RBP.i, align 8
  %256 = add i64 %255, -52
  %257 = add i64 %254, 6
  store i64 %257, i64* %3, align 8
  %258 = inttoptr i64 %256 to i32*
  %259 = load i32, i32* %258, align 4
  %260 = zext i32 %259 to i64
  store i64 %260, i64* %RCX.i200, align 8
  %261 = add i64 %255, -56
  %262 = add i64 %254, 10
  store i64 %262, i64* %3, align 8
  %263 = inttoptr i64 %261 to i32*
  %264 = load i32, i32* %263, align 4
  %265 = zext i32 %264 to i64
  store i64 %265, i64* %190, align 8
  %266 = add i64 %254, 148121
  %267 = add i64 %254, 15
  %268 = load i64, i64* %6, align 8
  %269 = add i64 %268, -8
  %270 = inttoptr i64 %269 to i64*
  store i64 %267, i64* %270, align 8
  store i64 %269, i64* %6, align 8
  store i64 %266, i64* %3, align 8
  %call2_42de01 = tail call %struct.Memory* @sub_452090.abortgo(%struct.State* nonnull %0, i64 %266, %struct.Memory* %221)
  %.pre12 = load i64, i64* %RBP.i, align 8
  %.pre13 = load i64, i64* %3, align 8
  br label %block_.L_42de06

block_.L_42de06:                                  ; preds = %routine_idivl__ecx.exit141, %block_42dda8
  %271 = phi i64 [ %.pre13, %routine_idivl__ecx.exit141 ], [ %119, %block_42dda8 ]
  %272 = phi i64 [ %.pre12, %routine_idivl__ecx.exit141 ], [ %65, %block_42dda8 ]
  %MEMORY.1 = phi %struct.Memory* [ %call2_42de01, %routine_idivl__ecx.exit141 ], [ %2, %block_42dda8 ]
  %273 = add i64 %272, -12
  %274 = add i64 %271, 4
  store i64 %274, i64* %3, align 8
  %275 = inttoptr i64 %273 to i32*
  %276 = load i32, i32* %275, align 4
  %277 = add i32 %276, -1
  %278 = icmp eq i32 %276, 0
  %279 = zext i1 %278 to i8
  store i8 %279, i8* %14, align 1
  %280 = and i32 %277, 255
  %281 = tail call i32 @llvm.ctpop.i32(i32 %280)
  %282 = trunc i32 %281 to i8
  %283 = and i8 %282, 1
  %284 = xor i8 %283, 1
  store i8 %284, i8* %21, align 1
  %285 = xor i32 %277, %276
  %286 = lshr i32 %285, 4
  %287 = trunc i32 %286 to i8
  %288 = and i8 %287, 1
  store i8 %288, i8* %27, align 1
  %289 = icmp eq i32 %277, 0
  %290 = zext i1 %289 to i8
  store i8 %290, i8* %30, align 1
  %291 = lshr i32 %277, 31
  %292 = trunc i32 %291 to i8
  store i8 %292, i8* %33, align 1
  %293 = lshr i32 %276, 31
  %294 = xor i32 %291, %293
  %295 = add nuw nsw i32 %294, %293
  %296 = icmp eq i32 %295, 2
  %297 = zext i1 %296 to i8
  store i8 %297, i8* %39, align 1
  %.v27 = select i1 %289, i64 20, i64 10
  %298 = add i64 %271, %.v27
  store i64 %298, i64* %3, align 8
  br i1 %289, label %block_.L_42de1a, label %block_42de10

block_42de10:                                     ; preds = %block_.L_42de06
  %299 = add i64 %298, 4
  store i64 %299, i64* %3, align 8
  %300 = load i32, i32* %275, align 4
  %301 = add i32 %300, -2
  %302 = icmp ult i32 %300, 2
  %303 = zext i1 %302 to i8
  store i8 %303, i8* %14, align 1
  %304 = and i32 %301, 255
  %305 = tail call i32 @llvm.ctpop.i32(i32 %304)
  %306 = trunc i32 %305 to i8
  %307 = and i8 %306, 1
  %308 = xor i8 %307, 1
  store i8 %308, i8* %21, align 1
  %309 = xor i32 %301, %300
  %310 = lshr i32 %309, 4
  %311 = trunc i32 %310 to i8
  %312 = and i8 %311, 1
  store i8 %312, i8* %27, align 1
  %313 = icmp eq i32 %301, 0
  %314 = zext i1 %313 to i8
  store i8 %314, i8* %30, align 1
  %315 = lshr i32 %301, 31
  %316 = trunc i32 %315 to i8
  store i8 %316, i8* %33, align 1
  %317 = lshr i32 %300, 31
  %318 = xor i32 %315, %317
  %319 = add nuw nsw i32 %318, %317
  %320 = icmp eq i32 %319, 2
  %321 = zext i1 %320 to i8
  store i8 %321, i8* %39, align 1
  %.v28 = select i1 %313, i64 10, i64 15
  %322 = add i64 %298, %.v28
  store i64 %322, i64* %3, align 8
  br i1 %313, label %block_.L_42de1a, label %block_.L_42de1f

block_.L_42de1a:                                  ; preds = %block_42de10, %block_.L_42de06
  %323 = phi i64 [ %322, %block_42de10 ], [ %298, %block_.L_42de06 ]
  %324 = add i64 %323, 94
  store i64 %324, i64* %3, align 8
  %.pre24 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  br label %block_.L_42de78

block_.L_42de1f:                                  ; preds = %block_42de10
  %RDI.i = getelementptr inbounds %union.anon, %union.anon* %40, i64 0, i32 0
  store i64 ptrtoint (%G__0x57c5ff_type* @G__0x57c5ff to i64), i64* %RDI.i, align 8
  %RSI.i = getelementptr inbounds %union.anon, %union.anon* %45, i64 0, i32 0
  store i64 1619, i64* %RSI.i, align 8
  store i64 ptrtoint (%G__0x57a4f4_type* @G__0x57a4f4 to i64), i64* %RDX.i160, align 8
  %325 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %RAX.i109 = getelementptr inbounds %union.anon, %union.anon* %325, i64 0, i32 0
  store i64 20, i64* %RAX.i109, align 8
  %326 = add i64 %272, -8
  %327 = add i64 %322, 33
  store i64 %327, i64* %3, align 8
  %328 = inttoptr i64 %326 to i32*
  %329 = load i32, i32* %328, align 4
  %330 = zext i32 %329 to i64
  store i64 %330, i64* %RCX.i200, align 8
  %EAX.i103 = bitcast %union.anon* %325 to i32*
  %331 = add i64 %272, -60
  %332 = add i64 %322, 36
  store i64 %332, i64* %3, align 8
  %333 = inttoptr i64 %331 to i32*
  store i32 20, i32* %333, align 4
  %ECX.i100 = bitcast %union.anon* %58 to i32*
  %334 = load i32, i32* %ECX.i100, align 4
  %335 = zext i32 %334 to i64
  %336 = load i64, i64* %3, align 8
  store i64 %335, i64* %RAX.i109, align 8
  %337 = load i64, i64* %RBP.i, align 8
  %338 = add i64 %337, -72
  %339 = load i64, i64* %RDX.i160, align 8
  %340 = add i64 %336, 6
  store i64 %340, i64* %3, align 8
  %341 = inttoptr i64 %338 to i64*
  store i64 %339, i64* %341, align 8
  %342 = load i64, i64* %3, align 8
  %343 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %344 = load i32, i32* %EAX.i103, align 8
  %345 = sext i32 %344 to i64
  %346 = lshr i64 %345, 32
  store i64 %346, i64* %343, align 8
  %347 = load i64, i64* %RBP.i, align 8
  %348 = add i64 %347, -60
  %349 = add i64 %342, 4
  store i64 %349, i64* %3, align 8
  %350 = inttoptr i64 %348 to i32*
  %351 = load i32, i32* %350, align 4
  %352 = zext i32 %351 to i64
  store i64 %352, i64* %RCX.i200, align 8
  %353 = add i64 %342, 6
  store i64 %353, i64* %3, align 8
  %354 = zext i32 %344 to i64
  %355 = sext i32 %351 to i64
  %356 = shl nuw i64 %346, 32
  %357 = or i64 %356, %354
  %358 = sdiv i64 %357, %355
  %359 = shl i64 %358, 32
  %360 = ashr exact i64 %359, 32
  %361 = icmp eq i64 %358, %360
  br i1 %361, label %364, label %362

; <label>:362:                                    ; preds = %block_.L_42de1f
  %363 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %353, %struct.Memory* %MEMORY.1)
  %.pre14 = load i64, i64* %RAX.i109, align 8
  %.pre15 = load i64, i64* %3, align 8
  %.pre16 = load i64, i64* %RBP.i, align 8
  br label %routine_idivl__ecx.exit89

; <label>:364:                                    ; preds = %block_.L_42de1f
  %365 = srem i64 %357, %355
  %366 = and i64 %358, 4294967295
  store i64 %366, i64* %RAX.i109, align 8
  %367 = and i64 %365, 4294967295
  store i64 %367, i64* %RDX.i160, align 8
  store i8 0, i8* %14, align 1
  store i8 0, i8* %21, align 1
  store i8 0, i8* %27, align 1
  store i8 0, i8* %30, align 1
  store i8 0, i8* %33, align 1
  store i8 0, i8* %39, align 1
  br label %routine_idivl__ecx.exit89

routine_idivl__ecx.exit89:                        ; preds = %364, %362
  %368 = phi i64 [ %.pre16, %362 ], [ %347, %364 ]
  %369 = phi i64 [ %.pre15, %362 ], [ %353, %364 ]
  %370 = phi i64 [ %.pre14, %362 ], [ %366, %364 ]
  %371 = phi %struct.Memory* [ %363, %362 ], [ %MEMORY.1, %364 ]
  %372 = trunc i64 %370 to i32
  %373 = add i32 %372, -1
  %374 = zext i32 %373 to i64
  store i64 %374, i64* %RAX.i109, align 8
  %375 = icmp eq i32 %372, 0
  %376 = zext i1 %375 to i8
  store i8 %376, i8* %14, align 1
  %377 = and i32 %373, 255
  %378 = tail call i32 @llvm.ctpop.i32(i32 %377)
  %379 = trunc i32 %378 to i8
  %380 = and i8 %379, 1
  %381 = xor i8 %380, 1
  store i8 %381, i8* %21, align 1
  %382 = xor i32 %373, %372
  %383 = lshr i32 %382, 4
  %384 = trunc i32 %383 to i8
  %385 = and i8 %384, 1
  store i8 %385, i8* %27, align 1
  %386 = icmp eq i32 %373, 0
  %387 = zext i1 %386 to i8
  store i8 %387, i8* %30, align 1
  %388 = lshr i32 %373, 31
  %389 = trunc i32 %388 to i8
  store i8 %389, i8* %33, align 1
  %390 = lshr i32 %372, 31
  %391 = xor i32 %388, %390
  %392 = add nuw nsw i32 %391, %390
  %393 = icmp eq i32 %392, 2
  %394 = zext i1 %393 to i8
  store i8 %394, i8* %39, align 1
  %395 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0
  %R8D.i83 = bitcast %union.anon* %395 to i32*
  %396 = getelementptr inbounds %union.anon, %union.anon* %395, i64 0, i32 0
  %397 = add i64 %368, -8
  %398 = add i64 %369, 7
  store i64 %398, i64* %3, align 8
  %399 = inttoptr i64 %397 to i32*
  %400 = load i32, i32* %399, align 4
  %401 = zext i32 %400 to i64
  store i64 %401, i64* %396, align 8
  %402 = add i64 %368, -76
  %403 = add i64 %369, 10
  store i64 %403, i64* %3, align 8
  %404 = inttoptr i64 %402 to i32*
  store i32 %373, i32* %404, align 4
  %405 = load i32, i32* %R8D.i83, align 4
  %406 = zext i32 %405 to i64
  %407 = load i64, i64* %3, align 8
  store i64 %406, i64* %RAX.i109, align 8
  %408 = sext i32 %405 to i64
  %409 = lshr i64 %408, 32
  store i64 %409, i64* %343, align 8
  %410 = load i32, i32* %ECX.i100, align 4
  %411 = add i64 %407, 6
  store i64 %411, i64* %3, align 8
  %412 = sext i32 %410 to i64
  %413 = shl nuw i64 %409, 32
  %414 = or i64 %413, %406
  %415 = sdiv i64 %414, %412
  %416 = shl i64 %415, 32
  %417 = ashr exact i64 %416, 32
  %418 = icmp eq i64 %415, %417
  br i1 %418, label %421, label %419

; <label>:419:                                    ; preds = %routine_idivl__ecx.exit89
  %420 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %411, %struct.Memory* %371)
  %.pre17 = load i64, i64* %RDX.i160, align 8
  %.pre18 = load i64, i64* %3, align 8
  br label %routine_idivl__ecx.exit

; <label>:421:                                    ; preds = %routine_idivl__ecx.exit89
  %422 = srem i64 %414, %412
  %423 = and i64 %415, 4294967295
  store i64 %423, i64* %RAX.i109, align 8
  %424 = and i64 %422, 4294967295
  store i64 %424, i64* %RDX.i160, align 8
  store i8 0, i8* %14, align 1
  store i8 0, i8* %21, align 1
  store i8 0, i8* %27, align 1
  store i8 0, i8* %30, align 1
  store i8 0, i8* %33, align 1
  store i8 0, i8* %39, align 1
  br label %routine_idivl__ecx.exit

routine_idivl__ecx.exit:                          ; preds = %421, %419
  %425 = phi i64 [ %.pre18, %419 ], [ %411, %421 ]
  %426 = phi i64 [ %.pre17, %419 ], [ %424, %421 ]
  %427 = phi %struct.Memory* [ %420, %419 ], [ %371, %421 ]
  %428 = trunc i64 %426 to i32
  %429 = add i32 %428, -1
  %430 = zext i32 %429 to i64
  store i64 %430, i64* %RDX.i160, align 8
  %431 = icmp eq i32 %428, 0
  %432 = zext i1 %431 to i8
  store i8 %432, i8* %14, align 1
  %433 = and i32 %429, 255
  %434 = tail call i32 @llvm.ctpop.i32(i32 %433)
  %435 = trunc i32 %434 to i8
  %436 = and i8 %435, 1
  %437 = xor i8 %436, 1
  store i8 %437, i8* %21, align 1
  %438 = xor i32 %429, %428
  %439 = lshr i32 %438, 4
  %440 = trunc i32 %439 to i8
  %441 = and i8 %440, 1
  store i8 %441, i8* %27, align 1
  %442 = icmp eq i32 %429, 0
  %443 = zext i1 %442 to i8
  store i8 %443, i8* %30, align 1
  %444 = lshr i32 %429, 31
  %445 = trunc i32 %444 to i8
  store i8 %445, i8* %33, align 1
  %446 = lshr i32 %428, 31
  %447 = xor i32 %444, %446
  %448 = add nuw nsw i32 %447, %446
  %449 = icmp eq i32 %448, 2
  %450 = zext i1 %449 to i8
  store i8 %450, i8* %39, align 1
  %R9.i69 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 19, i32 0, i32 0
  %451 = load i64, i64* %RBP.i, align 8
  %452 = add i64 %451, -72
  %453 = add i64 %425, 7
  store i64 %453, i64* %3, align 8
  %454 = inttoptr i64 %452 to i64*
  %455 = load i64, i64* %454, align 8
  store i64 %455, i64* %R9.i69, align 8
  %456 = add i64 %451, -80
  %457 = add i64 %425, 10
  store i64 %457, i64* %3, align 8
  %458 = inttoptr i64 %456 to i32*
  store i32 %429, i32* %458, align 4
  %459 = load i64, i64* %R9.i69, align 8
  %460 = load i64, i64* %3, align 8
  store i64 %459, i64* %RDX.i160, align 8
  %461 = load i64, i64* %RBP.i, align 8
  %462 = add i64 %461, -76
  %463 = add i64 %460, 6
  store i64 %463, i64* %3, align 8
  %464 = inttoptr i64 %462 to i32*
  %465 = load i32, i32* %464, align 4
  %466 = zext i32 %465 to i64
  store i64 %466, i64* %RCX.i200, align 8
  %467 = add i64 %461, -80
  %468 = add i64 %460, 10
  store i64 %468, i64* %3, align 8
  %469 = inttoptr i64 %467 to i32*
  %470 = load i32, i32* %469, align 4
  %471 = zext i32 %470 to i64
  store i64 %471, i64* %396, align 8
  %472 = add i64 %460, 148007
  %473 = add i64 %460, 15
  %474 = load i64, i64* %6, align 8
  %475 = add i64 %474, -8
  %476 = inttoptr i64 %475 to i64*
  store i64 %473, i64* %476, align 8
  store i64 %475, i64* %6, align 8
  store i64 %472, i64* %3, align 8
  %call2_42de73 = tail call %struct.Memory* @sub_452090.abortgo(%struct.State* nonnull %0, i64 %472, %struct.Memory* %427)
  %.pre19 = load i64, i64* %3, align 8
  br label %block_.L_42de78

block_.L_42de78:                                  ; preds = %routine_idivl__ecx.exit, %block_.L_42de1a
  %RAX.i58.pre-phi = phi i64* [ %RAX.i109, %routine_idivl__ecx.exit ], [ %.pre24, %block_.L_42de1a ]
  %477 = phi i64 [ %.pre19, %routine_idivl__ecx.exit ], [ %324, %block_.L_42de1a ]
  %MEMORY.3 = phi %struct.Memory* [ %call2_42de73, %routine_idivl__ecx.exit ], [ %MEMORY.1, %block_.L_42de1a ]
  %478 = load i32, i32* bitcast (%G_0x7ae528_type* @G_0x7ae528 to i32*), align 8
  %479 = zext i32 %478 to i64
  store i64 %479, i64* %RAX.i58.pre-phi, align 8
  %480 = load i32, i32* bitcast (%G_0xb8af2c_type* @G_0xb8af2c to i32*), align 8
  %481 = sub i32 %478, %480
  %482 = icmp ult i32 %478, %480
  %483 = zext i1 %482 to i8
  store i8 %483, i8* %14, align 1
  %484 = and i32 %481, 255
  %485 = tail call i32 @llvm.ctpop.i32(i32 %484)
  %486 = trunc i32 %485 to i8
  %487 = and i8 %486, 1
  %488 = xor i8 %487, 1
  store i8 %488, i8* %21, align 1
  %489 = xor i32 %480, %478
  %490 = xor i32 %489, %481
  %491 = lshr i32 %490, 4
  %492 = trunc i32 %491 to i8
  %493 = and i8 %492, 1
  store i8 %493, i8* %27, align 1
  %494 = icmp eq i32 %481, 0
  %495 = zext i1 %494 to i8
  store i8 %495, i8* %30, align 1
  %496 = lshr i32 %481, 31
  %497 = trunc i32 %496 to i8
  store i8 %497, i8* %33, align 1
  %498 = lshr i32 %478, 31
  %499 = lshr i32 %480, 31
  %500 = xor i32 %499, %498
  %501 = xor i32 %496, %498
  %502 = add nuw nsw i32 %501, %500
  %503 = icmp eq i32 %502, 2
  %504 = zext i1 %503 to i8
  store i8 %504, i8* %39, align 1
  %.v29 = select i1 %494, i64 20, i64 132
  %505 = add i64 %477, %.v29
  store i64 %505, i64* %3, align 8
  br i1 %494, label %block_42de8c, label %block_.L_42defc

block_42de8c:                                     ; preds = %block_.L_42de78
  %506 = load i32, i32* bitcast (%G_0x7ae52c_type* @G_0x7ae52c to i32*), align 8
  %507 = zext i32 %506 to i64
  store i64 %507, i64* %RAX.i58.pre-phi, align 8
  %508 = load i64, i64* %RBP.i, align 8
  %509 = add i64 %508, -12
  %510 = add i64 %505, 10
  store i64 %510, i64* %3, align 8
  %511 = inttoptr i64 %509 to i32*
  %512 = load i32, i32* %511, align 4
  %513 = sub i32 %506, %512
  %514 = icmp ult i32 %506, %512
  %515 = zext i1 %514 to i8
  store i8 %515, i8* %14, align 1
  %516 = and i32 %513, 255
  %517 = tail call i32 @llvm.ctpop.i32(i32 %516)
  %518 = trunc i32 %517 to i8
  %519 = and i8 %518, 1
  %520 = xor i8 %519, 1
  store i8 %520, i8* %21, align 1
  %521 = xor i32 %512, %506
  %522 = xor i32 %521, %513
  %523 = lshr i32 %522, 4
  %524 = trunc i32 %523 to i8
  %525 = and i8 %524, 1
  store i8 %525, i8* %27, align 1
  %526 = icmp eq i32 %513, 0
  %527 = zext i1 %526 to i8
  store i8 %527, i8* %30, align 1
  %528 = lshr i32 %513, 31
  %529 = trunc i32 %528 to i8
  store i8 %529, i8* %33, align 1
  %530 = lshr i32 %506, 31
  %531 = lshr i32 %512, 31
  %532 = xor i32 %531, %530
  %533 = xor i32 %528, %530
  %534 = add nuw nsw i32 %533, %532
  %535 = icmp eq i32 %534, 2
  %536 = zext i1 %535 to i8
  store i8 %536, i8* %39, align 1
  %.v30 = select i1 %526, i64 16, i64 112
  %537 = add i64 %505, %.v30
  store i64 %537, i64* %3, align 8
  br i1 %526, label %block_42de9c, label %block_.L_42defc

block_42de9c:                                     ; preds = %block_42de8c
  %538 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1
  %539 = bitcast [32 x %union.VectorReg]* %538 to i8*
  %540 = add i64 %537, ptrtoint (%G_0xb5184__rip__type* @G_0xb5184__rip_ to i64)
  %541 = add i64 %537, 8
  store i64 %541, i64* %3, align 8
  %542 = inttoptr i64 %540 to i64*
  %543 = load i64, i64* %542, align 8
  %544 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %538, i64 0, i64 0, i32 0, i32 0, i32 0, i64 0
  store i64 %543, i64* %544, align 1
  %545 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 1
  %546 = bitcast i64* %545 to double*
  store double 0.000000e+00, double* %546, align 1
  %547 = add i64 %508, -8
  %548 = add i64 %537, 12
  store i64 %548, i64* %3, align 8
  %549 = inttoptr i64 %547 to i32*
  %550 = load i32, i32* %549, align 4
  %551 = sext i32 %550 to i64
  store i64 %551, i64* %RAX.i58.pre-phi, align 8
  %552 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1
  %553 = shl nsw i64 %551, 2
  %554 = add nsw i64 %553, 11274592
  %555 = add i64 %537, 21
  store i64 %555, i64* %3, align 8
  %556 = inttoptr i64 %554 to float*
  %557 = load float, float* %556, align 4
  %558 = fpext float %557 to double
  %559 = bitcast %union.VectorReg* %552 to double*
  store double %558, double* %559, align 1
  %560 = add i64 %537, 25
  store i64 %560, i64* %3, align 8
  %561 = bitcast i64 %543 to double
  %562 = fcmp uno double %558, %561
  br i1 %562, label %563, label %573

; <label>:563:                                    ; preds = %block_42de9c
  %564 = fadd double %558, %561
  %565 = bitcast double %564 to i64
  %566 = and i64 %565, 9221120237041090560
  %567 = icmp eq i64 %566, 9218868437227405312
  %568 = and i64 %565, 2251799813685247
  %569 = icmp ne i64 %568, 0
  %570 = and i1 %567, %569
  br i1 %570, label %571, label %579

; <label>:571:                                    ; preds = %563
  %572 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %560, %struct.Memory* %MEMORY.3)
  %.pre20 = load i64, i64* %3, align 8
  %.pre21 = load i8, i8* %30, align 1
  br label %routine_ucomisd__xmm0___xmm1.exit

; <label>:573:                                    ; preds = %block_42de9c
  %574 = fcmp ogt double %558, %561
  br i1 %574, label %579, label %575

; <label>:575:                                    ; preds = %573
  %576 = fcmp olt double %558, %561
  br i1 %576, label %579, label %577

; <label>:577:                                    ; preds = %575
  %578 = fcmp oeq double %558, %561
  br i1 %578, label %579, label %583

; <label>:579:                                    ; preds = %577, %575, %573, %563
  %580 = phi i8 [ 0, %573 ], [ 0, %575 ], [ 1, %577 ], [ 1, %563 ]
  %581 = phi i8 [ 0, %573 ], [ 0, %575 ], [ 0, %577 ], [ 1, %563 ]
  %582 = phi i8 [ 0, %573 ], [ 1, %575 ], [ 0, %577 ], [ 1, %563 ]
  store i8 %580, i8* %30, align 1
  store i8 %581, i8* %21, align 1
  store i8 %582, i8* %14, align 1
  br label %583

; <label>:583:                                    ; preds = %579, %577
  %584 = phi i8 [ %580, %579 ], [ %527, %577 ]
  store i8 0, i8* %39, align 1
  store i8 0, i8* %33, align 1
  store i8 0, i8* %27, align 1
  br label %routine_ucomisd__xmm0___xmm1.exit

routine_ucomisd__xmm0___xmm1.exit:                ; preds = %583, %571
  %585 = phi i8 [ %.pre21, %571 ], [ %584, %583 ]
  %586 = phi i64 [ %.pre20, %571 ], [ %560, %583 ]
  %587 = phi %struct.Memory* [ %572, %571 ], [ %MEMORY.3, %583 ]
  %588 = icmp eq i8 %585, 0
  %.v31 = select i1 %588, i64 17, i64 6
  %589 = add i64 %586, %.v31
  store i64 %589, i64* %3, align 8
  br i1 %588, label %block_.L_42dec6, label %block_42debb

block_42debb:                                     ; preds = %routine_ucomisd__xmm0___xmm1.exit
  %590 = load i8, i8* %21, align 1
  %591 = icmp ne i8 %590, 0
  %.v33 = select i1 %591, i64 11, i64 6
  %592 = add i64 %589, %.v33
  store i64 %592, i64* %3, align 8
  %cmpBr_42debb = icmp eq i8 %590, 1
  br i1 %cmpBr_42debb, label %block_.L_42dec6, label %block_42dec1

block_42dec1:                                     ; preds = %block_42debb
  %593 = add i64 %592, 59
  store i64 %593, i64* %3, align 8
  br label %block_.L_42defc

block_.L_42dec6:                                  ; preds = %block_42debb, %routine_ucomisd__xmm0___xmm1.exit
  %594 = phi i64 [ %592, %block_42debb ], [ %589, %routine_ucomisd__xmm0___xmm1.exit ]
  %595 = load i64, i64* %RBP.i, align 8
  %596 = add i64 %595, -8
  %597 = add i64 %594, 4
  store i64 %597, i64* %3, align 8
  %598 = inttoptr i64 %596 to i32*
  %599 = load i32, i32* %598, align 4
  %600 = sext i32 %599 to i64
  store i64 %600, i64* %RAX.i58.pre-phi, align 8
  %601 = shl nsw i64 %600, 2
  %602 = add nsw i64 %601, 11274592
  %603 = add i64 %594, 13
  store i64 %603, i64* %3, align 8
  %604 = inttoptr i64 %602 to i32*
  %605 = load i32, i32* %604, align 4
  %606 = bitcast [32 x %union.VectorReg]* %538 to i32*
  store i32 %605, i32* %606, align 1
  %607 = getelementptr inbounds i8, i8* %539, i64 4
  %608 = bitcast i8* %607 to float*
  store float 0.000000e+00, float* %608, align 1
  %609 = bitcast i64* %545 to float*
  store float 0.000000e+00, float* %609, align 1
  %610 = getelementptr inbounds i8, i8* %539, i64 12
  %611 = bitcast i8* %610 to float*
  store float 0.000000e+00, float* %611, align 1
  %612 = add i64 %595, -24
  %613 = add i64 %594, 17
  store i64 %613, i64* %3, align 8
  %614 = inttoptr i64 %612 to i64*
  %615 = load i64, i64* %614, align 8
  store i64 %615, i64* %RAX.i58.pre-phi, align 8
  %616 = add i64 %594, 21
  store i64 %616, i64* %3, align 8
  %617 = bitcast [32 x %union.VectorReg]* %538 to <2 x float>*
  %618 = load <2 x float>, <2 x float>* %617, align 1
  %619 = extractelement <2 x float> %618, i32 0
  %620 = inttoptr i64 %615 to float*
  store float %619, float* %620, align 4
  %621 = load i64, i64* %RBP.i, align 8
  %622 = add i64 %621, -8
  %623 = load i64, i64* %3, align 8
  %624 = add i64 %623, 4
  store i64 %624, i64* %3, align 8
  %625 = inttoptr i64 %622 to i32*
  %626 = load i32, i32* %625, align 4
  %627 = sext i32 %626 to i64
  store i64 %627, i64* %RAX.i58.pre-phi, align 8
  %628 = shl nsw i64 %627, 2
  %629 = add nsw i64 %628, 11276192
  %630 = add i64 %623, 13
  store i64 %630, i64* %3, align 8
  %631 = inttoptr i64 %629 to i32*
  %632 = load i32, i32* %631, align 4
  store i32 %632, i32* %606, align 1
  store float 0.000000e+00, float* %608, align 1
  store float 0.000000e+00, float* %609, align 1
  store float 0.000000e+00, float* %611, align 1
  %633 = add i64 %621, -32
  %634 = add i64 %623, 17
  store i64 %634, i64* %3, align 8
  %635 = inttoptr i64 %633 to i64*
  %636 = load i64, i64* %635, align 8
  store i64 %636, i64* %RAX.i58.pre-phi, align 8
  %637 = add i64 %623, 21
  store i64 %637, i64* %3, align 8
  %638 = load <2 x float>, <2 x float>* %617, align 1
  %639 = extractelement <2 x float> %638, i32 0
  %640 = inttoptr i64 %636 to float*
  store float %639, float* %640, align 4
  %641 = load i64, i64* %RBP.i, align 8
  %642 = add i64 %641, -4
  %643 = load i64, i64* %3, align 8
  %644 = add i64 %643, 7
  store i64 %644, i64* %3, align 8
  %645 = inttoptr i64 %642 to i32*
  store i32 1, i32* %645, align 4
  %646 = load i64, i64* %3, align 8
  %647 = add i64 %646, 12
  store i64 %647, i64* %3, align 8
  br label %block_.L_42df03

block_.L_42defc:                                  ; preds = %block_42de8c, %block_.L_42de78, %block_42dec1
  %648 = phi i64 [ %505, %block_.L_42de78 ], [ %537, %block_42de8c ], [ %593, %block_42dec1 ]
  %MEMORY.5 = phi %struct.Memory* [ %MEMORY.3, %block_.L_42de78 ], [ %MEMORY.3, %block_42de8c ], [ %587, %block_42dec1 ]
  %649 = load i64, i64* %RBP.i, align 8
  %650 = add i64 %649, -4
  %651 = add i64 %648, 7
  store i64 %651, i64* %3, align 8
  %652 = inttoptr i64 %650 to i32*
  store i32 0, i32* %652, align 4
  %.pre22 = load i64, i64* %3, align 8
  br label %block_.L_42df03

block_.L_42df03:                                  ; preds = %block_.L_42defc, %block_.L_42dec6
  %653 = phi i64 [ %.pre22, %block_.L_42defc ], [ %647, %block_.L_42dec6 ]
  %MEMORY.6 = phi %struct.Memory* [ %MEMORY.5, %block_.L_42defc ], [ %587, %block_.L_42dec6 ]
  %654 = load i64, i64* %RBP.i, align 8
  %655 = add i64 %654, -4
  %656 = add i64 %653, 3
  store i64 %656, i64* %3, align 8
  %657 = inttoptr i64 %655 to i32*
  %658 = load i32, i32* %657, align 4
  %659 = zext i32 %658 to i64
  store i64 %659, i64* %RAX.i58.pre-phi, align 8
  %660 = load i64, i64* %6, align 8
  %661 = add i64 %660, 80
  store i64 %661, i64* %6, align 8
  %662 = icmp ugt i64 %660, -81
  %663 = zext i1 %662 to i8
  store i8 %663, i8* %14, align 1
  %664 = trunc i64 %661 to i32
  %665 = and i32 %664, 255
  %666 = tail call i32 @llvm.ctpop.i32(i32 %665)
  %667 = trunc i32 %666 to i8
  %668 = and i8 %667, 1
  %669 = xor i8 %668, 1
  store i8 %669, i8* %21, align 1
  %670 = xor i64 %660, 16
  %671 = xor i64 %670, %661
  %672 = lshr i64 %671, 4
  %673 = trunc i64 %672 to i8
  %674 = and i8 %673, 1
  store i8 %674, i8* %27, align 1
  %675 = icmp eq i64 %661, 0
  %676 = zext i1 %675 to i8
  store i8 %676, i8* %30, align 1
  %677 = lshr i64 %661, 63
  %678 = trunc i64 %677 to i8
  store i8 %678, i8* %33, align 1
  %679 = lshr i64 %660, 63
  %680 = xor i64 %677, %679
  %681 = add nuw nsw i64 %680, %677
  %682 = icmp eq i64 %681, 2
  %683 = zext i1 %682 to i8
  store i8 %683, i8* %39, align 1
  %684 = add i64 %653, 8
  store i64 %684, i64* %3, align 8
  %685 = add i64 %660, 88
  %686 = inttoptr i64 %661 to i64*
  %687 = load i64, i64* %686, align 8
  store i64 %687, i64* %RBP.i, align 8
  store i64 %685, i64* %6, align 8
  %688 = add i64 %653, 9
  store i64 %688, i64* %3, align 8
  %689 = inttoptr i64 %685 to i64*
  %690 = load i64, i64* %689, align 8
  store i64 %690, i64* %3, align 8
  %691 = add i64 %660, 96
  store i64 %691, i64* %6, align 8
  ret %struct.Memory* %MEMORY.6
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
define %struct.Memory* @routine_subq__0x50___rsp(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %3 = load i64, i64* %RSP, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 4
  store i64 %5, i64* %PC, align 8
  %6 = add i64 %3, -80
  store i64 %6, i64* %RSP, align 8
  %7 = icmp ult i64 %3, 80
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
define %struct.Memory* @routine_movl__edi__MINUS0x8__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0
  %EDI = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -8
  %6 = load i32, i32* %EDI, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__esi__MINUS0xc__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0
  %ESI = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -12
  %6 = load i32, i32* %ESI, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__rdx__MINUS0x18__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -24
  %5 = load i64, i64* %RDX, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 4
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %4 to i64*
  store i64 %5, i64* %8, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__rcx__MINUS0x20__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -32
  %5 = load i64, i64* %RCX, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 4
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %4 to i64*
  store i64 %5, i64* %8, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__0x1a5__MINUS0x8__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -8
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = add i32 %8, -421
  %10 = icmp ult i32 %8, 421
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
define %struct.Memory* @routine_jae_.L_42ddad(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movslq_MINUS0x8__rbp____rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -8
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
define %struct.Memory* @routine_movzbl_0xb89e60___rax_1____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = add i64 %3, 12099168
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 8
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i8*
  %8 = load i8, i8* %7, align 1
  %9 = zext i8 %8 to i64
  store i64 %9, i64* %RCX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__0x3___ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %ECX = bitcast %union.anon* %3 to i32*
  %4 = load i32, i32* %ECX, align 4
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 3
  store i64 %6, i64* %PC, align 8
  %7 = add i32 %4, -3
  %8 = icmp ult i32 %4, 3
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
  %17 = xor i32 %7, %4
  %18 = lshr i32 %17, 4
  %19 = trunc i32 %18 to i8
  %20 = and i8 %19, 1
  %21 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %20, i8* %21, align 1
  %22 = icmp eq i32 %7, 0
  %23 = zext i1 %22 to i8
  %24 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %23, i8* %24, align 1
  %25 = lshr i32 %7, 31
  %26 = trunc i32 %25 to i8
  %27 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %26, i8* %27, align 1
  %28 = lshr i32 %4, 31
  %29 = xor i32 %25, %28
  %30 = add nuw nsw i32 %29, %28
  %31 = icmp eq i32 %30, 2
  %32 = zext i1 %31 to i8
  %33 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %32, i8* %33, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_je_.L_42ddad(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jmpq_.L_42de06(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__0x57c5ff___rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x57c5ff_type* @G__0x57c5ff to i64), i64* %RDI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x652___esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 5
  store i64 %4, i64* %PC, align 8
  store i64 1618, i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__0x57a49b___rdx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x57a49b_type* @G__0x57a49b to i64), i64* %RDX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x14___eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 5
  store i64 %4, i64* %PC, align 8
  store i64 20, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x8__rbp____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -8
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x24__rbp____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -36
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
define %struct.Memory* @routine_movl_MINUS0x8__rbp____r8d(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -8
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
define %struct.Memory* @routine_movq_MINUS0x30__rbp____r9(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %R9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 19, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -48
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %R9, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__edx__MINUS0x38__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %EDX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -56
  %6 = load i32, i32* %EDX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__r9___rdx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %R9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 19, i32 0, i32 0
  %3 = load i64, i64* %R9, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 3
  store i64 %5, i64* %PC, align 8
  store i64 %3, i64* %RDX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x34__rbp____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -52
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
define %struct.Memory* @routine_movl_MINUS0x38__rbp____r8d(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -56
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
define %struct.Memory* @routine_callq_.abortgo(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_cmpl__0x1__MINUS0xc__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
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
define %struct.Memory* @routine_je_.L_42de1a(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jne_.L_42de1f(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jmpq_.L_42de78(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x653___esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 5
  store i64 %4, i64* %PC, align 8
  store i64 1619, i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__0x57a4f4___rdx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x57a4f4_type* @G__0x57a4f4 to i64), i64* %RDX, align 8
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
define %struct.Memory* @routine_movq__rdx__MINUS0x48__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -72
  %5 = load i64, i64* %RDX, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 4
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %4 to i64*
  store i64 %5, i64* %8, align 8
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
define %struct.Memory* @routine_movq_MINUS0x48__rbp____r9(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %R9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 19, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -72
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %R9, align 8
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
define %struct.Memory* @routine_movl_MINUS0x50__rbp____r8d(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -80
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
define %struct.Memory* @routine_movl_0x7ae528___eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 7
  store i64 %4, i64* %PC, align 8
  %5 = load i32, i32* bitcast (%G_0x7ae528_type* @G_0x7ae528 to i32*), align 8
  %6 = zext i32 %5 to i64
  store i64 %6, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl_0xb8af2c___eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %4 = load i32, i32* %EAX, align 4
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = load i32, i32* bitcast (%G_0xb8af2c_type* @G_0xb8af2c to i32*), align 8
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
define %struct.Memory* @routine_jne_.L_42defc(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl_0x7ae52c___eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 7
  store i64 %4, i64* %PC, align 8
  %5 = load i32, i32* bitcast (%G_0x7ae52c_type* @G_0x7ae52c to i32*), align 8
  %6 = zext i32 %5 to i64
  store i64 %6, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl_MINUS0xc__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i32, i32* %EAX, align 4
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
define %struct.Memory* @routine_movsd_0xb5184__rip____xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, ptrtoint (%G_0xb5184__rip__type* @G_0xb5184__rip_ to i64)
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
define %struct.Memory* @routine_cvtss2sd_0xac0960___rax_4____xmm1(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1
  %4 = load i64, i64* %RAX, align 8
  %5 = shl i64 %4, 2
  %6 = add i64 %5, 11274592
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 9
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %6 to float*
  %10 = load float, float* %9, align 4
  %11 = fpext float %10 to double
  %12 = bitcast %union.VectorReg* %3 to double*
  store double %11, double* %12, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_ucomisd__xmm0___xmm1(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = bitcast %union.VectorReg* %4 to double*
  %8 = load double, double* %7, align 1
  %9 = bitcast [32 x %union.VectorReg]* %3 to double*
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
define %struct.Memory* @routine_jne_.L_42dec6(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jp_.L_42dec6(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %5 = load i8, i8* %4, align 1
  store i8 %5, i8* %BRANCH_TAKEN, align 1
  %6 = icmp ne i8 %5, 0
  %.v = select i1 %6, i64 %rel_off1, i64 %rel_off2
  %7 = add i64 %.v, %3
  store i64 %7, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_42defc(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movss_0xac0960___rax_4____xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %4 = bitcast %union.VectorReg* %3 to i8*
  %5 = load i64, i64* %RAX, align 8
  %6 = shl i64 %5, 2
  %7 = add i64 %6, 11274592
  %8 = load i64, i64* %PC, align 8
  %9 = add i64 %8, 9
  store i64 %9, i64* %PC, align 8
  %10 = inttoptr i64 %7 to i32*
  %11 = load i32, i32* %10, align 4
  %12 = bitcast %union.VectorReg* %3 to i32*
  store i32 %11, i32* %12, align 1
  %13 = getelementptr inbounds i8, i8* %4, i64 4
  %14 = bitcast i8* %13 to float*
  store float 0.000000e+00, float* %14, align 1
  %15 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 1
  %16 = bitcast i64* %15 to float*
  store float 0.000000e+00, float* %16, align 1
  %17 = getelementptr inbounds i8, i8* %4, i64 12
  %18 = bitcast i8* %17 to float*
  store float 0.000000e+00, float* %18, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_MINUS0x18__rbp____rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -24
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movss__xmm0____rax_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %4 = bitcast i64* %RAX to float**
  %5 = load float*, float** %4, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 4
  store i64 %7, i64* %PC, align 8
  %8 = bitcast %union.VectorReg* %3 to <2 x float>*
  %9 = load <2 x float>, <2 x float>* %8, align 1
  %10 = extractelement <2 x float> %9, i32 0
  store float %10, float* %5, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movss_0xac0fa0___rax_4____xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %4 = bitcast %union.VectorReg* %3 to i8*
  %5 = load i64, i64* %RAX, align 8
  %6 = shl i64 %5, 2
  %7 = add i64 %6, 11276192
  %8 = load i64, i64* %PC, align 8
  %9 = add i64 %8, 9
  store i64 %9, i64* %PC, align 8
  %10 = inttoptr i64 %7 to i32*
  %11 = load i32, i32* %10, align 4
  %12 = bitcast %union.VectorReg* %3 to i32*
  store i32 %11, i32* %12, align 1
  %13 = getelementptr inbounds i8, i8* %4, i64 4
  %14 = bitcast i8* %13 to float*
  store float 0.000000e+00, float* %14, align 1
  %15 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 1
  %16 = bitcast i64* %15 to float*
  store float 0.000000e+00, float* %16, align 1
  %17 = getelementptr inbounds i8, i8* %4, i64 12
  %18 = bitcast i8* %17 to float*
  store float 0.000000e+00, float* %18, align 1
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
define %struct.Memory* @routine_jmpq_.L_42df03(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
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
define %struct.Memory* @routine_addq__0x50___rsp(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %3 = load i64, i64* %RSP, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 4
  store i64 %5, i64* %PC, align 8
  %6 = add i64 %3, 80
  store i64 %6, i64* %RSP, align 8
  %7 = icmp ugt i64 %3, -81
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
