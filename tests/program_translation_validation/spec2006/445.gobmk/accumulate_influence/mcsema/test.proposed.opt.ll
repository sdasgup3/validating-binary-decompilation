; ModuleID = 'mcsema/test.proposed.inline.ll'
source_filename = "llvm-link"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu-elf"

%__bss_start_type = type <{ [8 x i8] }>
%G_0xabf360_type = type <{ [4 x i8] }>
%G_0xabf9b0_type = type <{ [4 x i8] }>
%G_0xb9355__rip__type = type <{ [8 x i8] }>
%G_0xb9409__rip__type = type <{ [8 x i8] }>
%G_0xb969d__rip__type = type <{ [8 x i8] }>
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
@G_0xabf360 = local_unnamed_addr global %G_0xabf360_type zeroinitializer
@G_0xabf9b0 = local_unnamed_addr global %G_0xabf9b0_type zeroinitializer
@G_0xb9355__rip_ = global %G_0xb9355__rip__type zeroinitializer
@G_0xb9409__rip_ = global %G_0xb9409__rip__type zeroinitializer
@G_0xb969d__rip_ = global %G_0xb969d__rip__type zeroinitializer

declare %struct.Memory* @__remill_error(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr

; Function Attrs: nounwind readnone
declare i32 @llvm.ctpop.i32(i32) #0

; Function Attrs: alwaysinline
define %struct.Memory* @accumulate_influence(%struct.State* noalias, i64, %struct.Memory* noalias) local_unnamed_addr #1 {
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
  %11 = add i64 %7, -24
  store i64 %11, i64* %6, align 8
  %12 = icmp ult i64 %8, 16
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
  %40 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %RAX.i162 = getelementptr inbounds %union.anon, %union.anon* %40, i64 0, i32 0
  %41 = add i64 %7, 8
  %42 = add i64 %10, 11
  store i64 %42, i64* %3, align 8
  %43 = inttoptr i64 %41 to i64*
  %44 = load i64, i64* %43, align 8
  store i64 %44, i64* %RAX.i162, align 8
  %45 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 21, i32 0
  %R10D.i = bitcast %union.anon* %45 to i32*
  %46 = getelementptr inbounds %union.anon, %union.anon* %45, i64 0, i32 0
  store i64 20, i64* %46, align 8
  %47 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0
  %EDI.i = bitcast %union.anon* %47 to i32*
  %48 = add i64 %7, -12
  %49 = load i32, i32* %EDI.i, align 4
  %50 = add i64 %10, 20
  store i64 %50, i64* %3, align 8
  %51 = inttoptr i64 %48 to i32*
  store i32 %49, i32* %51, align 4
  %52 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0
  %ESI.i466 = bitcast %union.anon* %52 to i32*
  %53 = load i64, i64* %RBP.i, align 8
  %54 = add i64 %53, -8
  %55 = load i32, i32* %ESI.i466, align 4
  %56 = load i64, i64* %3, align 8
  %57 = add i64 %56, 3
  store i64 %57, i64* %3, align 8
  %58 = inttoptr i64 %54 to i32*
  store i32 %55, i32* %58, align 4
  %59 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %EDX.i485 = bitcast %union.anon* %59 to i32*
  %60 = load i64, i64* %RBP.i, align 8
  %61 = add i64 %60, -12
  %62 = load i32, i32* %EDX.i485, align 4
  %63 = load i64, i64* %3, align 8
  %64 = add i64 %63, 3
  store i64 %64, i64* %3, align 8
  %65 = inttoptr i64 %61 to i32*
  store i32 %62, i32* %65, align 4
  %66 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %ECX.i579 = bitcast %union.anon* %66 to i32*
  %67 = load i64, i64* %RBP.i, align 8
  %68 = add i64 %67, -16
  %69 = load i32, i32* %ECX.i579, align 4
  %70 = load i64, i64* %3, align 8
  %71 = add i64 %70, 3
  store i64 %71, i64* %3, align 8
  %72 = inttoptr i64 %68 to i32*
  store i32 %69, i32* %72, align 4
  %R8.i = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0, i32 0
  %73 = load i64, i64* %RBP.i, align 8
  %74 = add i64 %73, -24
  %75 = load i64, i64* %R8.i, align 8
  %76 = load i64, i64* %3, align 8
  %77 = add i64 %76, 4
  store i64 %77, i64* %3, align 8
  %78 = inttoptr i64 %74 to i64*
  store i64 %75, i64* %78, align 8
  %R9.i = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 19, i32 0, i32 0
  %79 = load i64, i64* %RBP.i, align 8
  %80 = add i64 %79, -32
  %81 = load i64, i64* %R9.i, align 8
  %82 = load i64, i64* %3, align 8
  %83 = add i64 %82, 4
  store i64 %83, i64* %3, align 8
  %84 = inttoptr i64 %80 to i64*
  store i64 %81, i64* %84, align 8
  %85 = load i64, i64* %RBP.i, align 8
  %86 = add i64 %85, -40
  %87 = load i64, i64* %RAX.i162, align 8
  %88 = load i64, i64* %3, align 8
  %89 = add i64 %88, 4
  store i64 %89, i64* %3, align 8
  %90 = inttoptr i64 %86 to i64*
  store i64 %87, i64* %90, align 8
  %91 = load i64, i64* %RBP.i, align 8
  %92 = add i64 %91, -4
  %93 = load i64, i64* %3, align 8
  %94 = add i64 %93, 3
  store i64 %94, i64* %3, align 8
  %95 = inttoptr i64 %92 to i32*
  %96 = load i32, i32* %95, align 4
  %97 = zext i32 %96 to i64
  store i64 %97, i64* %RAX.i162, align 8
  %98 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %99 = bitcast %union.anon* %40 to i32*
  %100 = sext i32 %96 to i64
  %101 = lshr i64 %100, 32
  store i64 %101, i64* %98, align 8
  %102 = load i32, i32* %R10D.i, align 4
  %103 = add i64 %93, 7
  store i64 %103, i64* %3, align 8
  %104 = sext i32 %102 to i64
  %105 = shl nuw i64 %101, 32
  %106 = or i64 %105, %97
  %107 = sdiv i64 %106, %104
  %108 = shl i64 %107, 32
  %109 = ashr exact i64 %108, 32
  %110 = icmp eq i64 %107, %109
  br i1 %110, label %113, label %111

; <label>:111:                                    ; preds = %entry
  %112 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %103, %struct.Memory* %2)
  %.pre = load i64, i64* %RAX.i162, align 8
  %.pre35 = load i64, i64* %3, align 8
  %.pre36 = load i64, i64* %RBP.i, align 8
  br label %routine_idivl__r10d.exit

; <label>:113:                                    ; preds = %entry
  %114 = srem i64 %106, %104
  %115 = and i64 %107, 4294967295
  store i64 %115, i64* %RAX.i162, align 8
  %116 = getelementptr inbounds %union.anon, %union.anon* %59, i64 0, i32 0
  %117 = and i64 %114, 4294967295
  store i64 %117, i64* %116, align 8
  store i8 0, i8* %14, align 1
  store i8 0, i8* %21, align 1
  store i8 0, i8* %27, align 1
  store i8 0, i8* %30, align 1
  store i8 0, i8* %33, align 1
  store i8 0, i8* %39, align 1
  br label %routine_idivl__r10d.exit

routine_idivl__r10d.exit:                         ; preds = %113, %111
  %118 = phi i64 [ %.pre36, %111 ], [ %91, %113 ]
  %119 = phi i64 [ %.pre35, %111 ], [ %103, %113 ]
  %120 = phi i64 [ %.pre, %111 ], [ %115, %113 ]
  %121 = phi %struct.Memory* [ %112, %111 ], [ %2, %113 ]
  %122 = trunc i64 %120 to i32
  %123 = add i32 %122, -1
  %124 = zext i32 %123 to i64
  store i64 %124, i64* %RAX.i162, align 8
  %125 = icmp eq i32 %122, 0
  %126 = zext i1 %125 to i8
  store i8 %126, i8* %14, align 1
  %127 = and i32 %123, 255
  %128 = tail call i32 @llvm.ctpop.i32(i32 %127)
  %129 = trunc i32 %128 to i8
  %130 = and i8 %129, 1
  %131 = xor i8 %130, 1
  store i8 %131, i8* %21, align 1
  %132 = xor i32 %123, %122
  %133 = lshr i32 %132, 4
  %134 = trunc i32 %133 to i8
  %135 = and i8 %134, 1
  store i8 %135, i8* %27, align 1
  %136 = icmp eq i32 %123, 0
  %137 = zext i1 %136 to i8
  store i8 %137, i8* %30, align 1
  %138 = lshr i32 %123, 31
  %139 = trunc i32 %138 to i8
  store i8 %139, i8* %33, align 1
  %140 = lshr i32 %122, 31
  %141 = xor i32 %138, %140
  %142 = add nuw nsw i32 %141, %140
  %143 = icmp eq i32 %142, 2
  %144 = zext i1 %143 to i8
  store i8 %144, i8* %39, align 1
  %145 = add i64 %118, -48
  %146 = add i64 %119, 6
  store i64 %146, i64* %3, align 8
  %147 = inttoptr i64 %145 to i32*
  store i32 %123, i32* %147, align 4
  %148 = load i64, i64* %RBP.i, align 8
  %149 = add i64 %148, -4
  %150 = load i64, i64* %3, align 8
  %151 = add i64 %150, 3
  store i64 %151, i64* %3, align 8
  %152 = inttoptr i64 %149 to i32*
  %153 = load i32, i32* %152, align 4
  %154 = zext i32 %153 to i64
  store i64 %154, i64* %RAX.i162, align 8
  %155 = sext i32 %153 to i64
  %156 = lshr i64 %155, 32
  store i64 %156, i64* %98, align 8
  %157 = load i32, i32* %R10D.i, align 4
  %158 = add i64 %150, 7
  store i64 %158, i64* %3, align 8
  %159 = sext i32 %157 to i64
  %160 = shl nuw i64 %156, 32
  %161 = or i64 %160, %154
  %162 = sdiv i64 %161, %159
  %163 = shl i64 %162, 32
  %164 = ashr exact i64 %163, 32
  %165 = icmp eq i64 %162, %164
  br i1 %165, label %168, label %166

; <label>:166:                                    ; preds = %routine_idivl__r10d.exit
  %167 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %158, %struct.Memory* %121)
  %RDX.i948.phi.trans.insert = getelementptr inbounds %union.anon, %union.anon* %59, i64 0, i32 0
  %.pre37 = load i64, i64* %RDX.i948.phi.trans.insert, align 8
  %.pre38 = load i64, i64* %3, align 8
  %.pre39 = load i64, i64* %RBP.i, align 8
  br label %routine_idivl__r10d.exit951

; <label>:168:                                    ; preds = %routine_idivl__r10d.exit
  %169 = srem i64 %161, %159
  %170 = and i64 %162, 4294967295
  store i64 %170, i64* %RAX.i162, align 8
  %171 = getelementptr inbounds %union.anon, %union.anon* %59, i64 0, i32 0
  %172 = and i64 %169, 4294967295
  store i64 %172, i64* %171, align 8
  store i8 0, i8* %14, align 1
  store i8 0, i8* %21, align 1
  store i8 0, i8* %27, align 1
  store i8 0, i8* %30, align 1
  store i8 0, i8* %33, align 1
  store i8 0, i8* %39, align 1
  br label %routine_idivl__r10d.exit951

routine_idivl__r10d.exit951:                      ; preds = %168, %166
  %RDX.i948.pre-phi = phi i64* [ %171, %168 ], [ %RDX.i948.phi.trans.insert, %166 ]
  %173 = phi i64 [ %148, %168 ], [ %.pre39, %166 ]
  %174 = phi i64 [ %158, %168 ], [ %.pre38, %166 ]
  %175 = phi i64 [ %172, %168 ], [ %.pre37, %166 ]
  %176 = phi %struct.Memory* [ %121, %168 ], [ %167, %166 ]
  %177 = trunc i64 %175 to i32
  %178 = add i32 %177, -1
  %179 = zext i32 %178 to i64
  store i64 %179, i64* %RDX.i948.pre-phi, align 8
  %180 = add i64 %173, -52
  %181 = add i64 %174, 6
  store i64 %181, i64* %3, align 8
  %182 = inttoptr i64 %180 to i32*
  store i32 %178, i32* %182, align 4
  %183 = load i64, i64* %RBP.i, align 8
  %184 = add i64 %183, -68
  %185 = load i64, i64* %3, align 8
  %186 = add i64 %185, 7
  store i64 %186, i64* %3, align 8
  %187 = inttoptr i64 %184 to i32*
  store i32 0, i32* %187, align 4
  %188 = load i64, i64* %RBP.i, align 8
  %189 = add i64 %188, -72
  %190 = load i64, i64* %3, align 8
  %191 = add i64 %190, 7
  store i64 %191, i64* %3, align 8
  %192 = inttoptr i64 %189 to i32*
  store i32 1, i32* %192, align 4
  %193 = load i64, i64* %3, align 8
  %194 = load i32, i32* bitcast (%G_0xabf360_type* @G_0xabf360 to i32*), align 8
  store i8 0, i8* %14, align 1
  %195 = and i32 %194, 255
  %196 = tail call i32 @llvm.ctpop.i32(i32 %195)
  %197 = trunc i32 %196 to i8
  %198 = and i8 %197, 1
  %199 = xor i8 %198, 1
  store i8 %199, i8* %21, align 1
  store i8 0, i8* %27, align 1
  %200 = icmp eq i32 %194, 0
  %201 = zext i1 %200 to i8
  store i8 %201, i8* %30, align 1
  %202 = lshr i32 %194, 31
  %203 = trunc i32 %202 to i8
  store i8 %203, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %.v104 = select i1 %200, i64 14, i64 74
  %204 = add i64 %193, %.v104
  store i64 %204, i64* %3, align 8
  %205 = load i64, i64* %RBP.i, align 8
  br i1 %200, label %block_429730, label %block_.L_42976c

block_429730:                                     ; preds = %routine_idivl__r10d.exit951
  %206 = add i64 %205, -44
  %207 = add i64 %204, 7
  store i64 %207, i64* %3, align 8
  %208 = inttoptr i64 %206 to i32*
  store i32 0, i32* %208, align 4
  %.pre40 = load i64, i64* %3, align 8
  br label %block_.L_429737

block_.L_429737:                                  ; preds = %block_429744, %block_429730
  %209 = phi i64 [ %278, %block_429744 ], [ %.pre40, %block_429730 ]
  %210 = load i64, i64* %RBP.i, align 8
  %211 = add i64 %210, -44
  %212 = add i64 %209, 7
  store i64 %212, i64* %3, align 8
  %213 = inttoptr i64 %211 to i32*
  %214 = load i32, i32* %213, align 4
  %215 = add i32 %214, -400
  %216 = icmp ult i32 %214, 400
  %217 = zext i1 %216 to i8
  store i8 %217, i8* %14, align 1
  %218 = and i32 %215, 255
  %219 = tail call i32 @llvm.ctpop.i32(i32 %218)
  %220 = trunc i32 %219 to i8
  %221 = and i8 %220, 1
  %222 = xor i8 %221, 1
  store i8 %222, i8* %21, align 1
  %223 = xor i32 %214, 16
  %224 = xor i32 %223, %215
  %225 = lshr i32 %224, 4
  %226 = trunc i32 %225 to i8
  %227 = and i8 %226, 1
  store i8 %227, i8* %27, align 1
  %228 = icmp eq i32 %215, 0
  %229 = zext i1 %228 to i8
  store i8 %229, i8* %30, align 1
  %230 = lshr i32 %215, 31
  %231 = trunc i32 %230 to i8
  store i8 %231, i8* %33, align 1
  %232 = lshr i32 %214, 31
  %233 = xor i32 %230, %232
  %234 = add nuw nsw i32 %233, %232
  %235 = icmp eq i32 %234, 2
  %236 = zext i1 %235 to i8
  store i8 %236, i8* %39, align 1
  %237 = icmp ne i8 %231, 0
  %238 = xor i1 %237, %235
  %.v121 = select i1 %238, i64 13, i64 42
  %239 = add i64 %209, %.v121
  store i64 %239, i64* %3, align 8
  br i1 %238, label %block_429744, label %block_.L_429761

block_429744:                                     ; preds = %block_.L_429737
  %240 = add i64 %239, 4
  store i64 %240, i64* %3, align 8
  %241 = load i32, i32* %213, align 4
  %242 = sext i32 %241 to i64
  store i64 %242, i64* %RAX.i162, align 8
  %243 = shl nsw i64 %242, 2
  %244 = add nsw i64 %243, 11268976
  %245 = add i64 %239, 15
  store i64 %245, i64* %3, align 8
  %246 = inttoptr i64 %244 to i32*
  store i32 0, i32* %246, align 4
  %247 = load i64, i64* %RBP.i, align 8
  %248 = add i64 %247, -44
  %249 = load i64, i64* %3, align 8
  %250 = add i64 %249, 3
  store i64 %250, i64* %3, align 8
  %251 = inttoptr i64 %248 to i32*
  %252 = load i32, i32* %251, align 4
  %253 = add i32 %252, 1
  %254 = zext i32 %253 to i64
  store i64 %254, i64* %RAX.i162, align 8
  %255 = icmp eq i32 %252, -1
  %256 = icmp eq i32 %253, 0
  %257 = or i1 %255, %256
  %258 = zext i1 %257 to i8
  store i8 %258, i8* %14, align 1
  %259 = and i32 %253, 255
  %260 = tail call i32 @llvm.ctpop.i32(i32 %259)
  %261 = trunc i32 %260 to i8
  %262 = and i8 %261, 1
  %263 = xor i8 %262, 1
  store i8 %263, i8* %21, align 1
  %264 = xor i32 %253, %252
  %265 = lshr i32 %264, 4
  %266 = trunc i32 %265 to i8
  %267 = and i8 %266, 1
  store i8 %267, i8* %27, align 1
  %268 = zext i1 %256 to i8
  store i8 %268, i8* %30, align 1
  %269 = lshr i32 %253, 31
  %270 = trunc i32 %269 to i8
  store i8 %270, i8* %33, align 1
  %271 = lshr i32 %252, 31
  %272 = xor i32 %269, %271
  %273 = add nuw nsw i32 %272, %269
  %274 = icmp eq i32 %273, 2
  %275 = zext i1 %274 to i8
  store i8 %275, i8* %39, align 1
  %276 = add i64 %249, 9
  store i64 %276, i64* %3, align 8
  store i32 %253, i32* %251, align 4
  %277 = load i64, i64* %3, align 8
  %278 = add i64 %277, -37
  store i64 %278, i64* %3, align 8
  br label %block_.L_429737

block_.L_429761:                                  ; preds = %block_.L_429737
  %279 = add i64 %239, 11
  store i64 %279, i64* %3, align 8
  store i32 1, i32* bitcast (%G_0xabf360_type* @G_0xabf360 to i32*), align 8
  br label %block_.L_42976c

block_.L_42976c:                                  ; preds = %routine_idivl__r10d.exit951, %block_.L_429761
  %280 = phi i64 [ %279, %block_.L_429761 ], [ %204, %routine_idivl__r10d.exit951 ]
  %281 = phi i64 [ %210, %block_.L_429761 ], [ %205, %routine_idivl__r10d.exit951 ]
  %282 = add i64 %281, -4
  %283 = add i64 %280, 3
  store i64 %283, i64* %3, align 8
  %284 = inttoptr i64 %282 to i32*
  %285 = load i32, i32* %284, align 4
  %286 = zext i32 %285 to i64
  store i64 %286, i64* %RAX.i162, align 8
  store i32 %285, i32* bitcast (%G_0xabf9b0_type* @G_0xabf9b0 to i32*), align 8
  %287 = add i64 %281, -8
  %288 = add i64 %280, 13
  store i64 %288, i64* %3, align 8
  %289 = inttoptr i64 %287 to i32*
  %290 = load i32, i32* %289, align 4
  %291 = zext i32 %290 to i64
  store i64 %291, i64* %RAX.i162, align 8
  %RCX.i908 = getelementptr inbounds %union.anon, %union.anon* %66, i64 0, i32 0
  %292 = add i64 %280, 17
  store i64 %292, i64* %3, align 8
  %293 = load i32, i32* %284, align 4
  %294 = sext i32 %293 to i64
  store i64 %294, i64* %RCX.i908, align 8
  %295 = shl nsw i64 %294, 2
  %296 = add nsw i64 %295, 11268976
  %297 = add i64 %280, 24
  store i64 %297, i64* %3, align 8
  %298 = inttoptr i64 %296 to i32*
  store i32 %290, i32* %298, align 4
  %RSI.i874 = getelementptr inbounds %union.anon, %union.anon* %52, i64 0, i32 0
  %RDI.i829 = getelementptr inbounds %union.anon, %union.anon* %47, i64 0, i32 0
  %299 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1
  %300 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %299, i64 0, i64 0, i32 0, i32 0, i32 0, i64 0
  %301 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 1
  %302 = bitcast i64* %301 to double*
  %303 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1
  %304 = bitcast %union.VectorReg* %303 to double*
  %305 = bitcast [32 x %union.VectorReg]* %299 to double*
  %.pre42 = load i64, i64* %RBP.i, align 8
  %.pre43 = load i64, i64* %3, align 8
  br label %block_.L_429784

block_.L_429784:                                  ; preds = %block_.L_429784.backedge, %block_.L_42976c
  %306 = phi i64 [ %.pre43, %block_.L_42976c ], [ %.sink30, %block_.L_429784.backedge ]
  %307 = phi i64 [ %.pre42, %block_.L_42976c ], [ %589, %block_.L_429784.backedge ]
  %MEMORY.2 = phi %struct.Memory* [ %176, %block_.L_42976c ], [ %MEMORY.2.be, %block_.L_429784.backedge ]
  %308 = add i64 %307, -68
  %309 = add i64 %306, 3
  store i64 %309, i64* %3, align 8
  %310 = inttoptr i64 %308 to i32*
  %311 = load i32, i32* %310, align 4
  %312 = zext i32 %311 to i64
  store i64 %312, i64* %RAX.i162, align 8
  %313 = add i64 %307, -72
  %314 = add i64 %306, 6
  store i64 %314, i64* %3, align 8
  %315 = inttoptr i64 %313 to i32*
  %316 = load i32, i32* %315, align 4
  %317 = sub i32 %311, %316
  %318 = icmp ult i32 %311, %316
  %319 = zext i1 %318 to i8
  store i8 %319, i8* %14, align 1
  %320 = and i32 %317, 255
  %321 = tail call i32 @llvm.ctpop.i32(i32 %320)
  %322 = trunc i32 %321 to i8
  %323 = and i8 %322, 1
  %324 = xor i8 %323, 1
  store i8 %324, i8* %21, align 1
  %325 = xor i32 %316, %311
  %326 = xor i32 %325, %317
  %327 = lshr i32 %326, 4
  %328 = trunc i32 %327 to i8
  %329 = and i8 %328, 1
  store i8 %329, i8* %27, align 1
  %330 = icmp eq i32 %317, 0
  %331 = zext i1 %330 to i8
  store i8 %331, i8* %30, align 1
  %332 = lshr i32 %317, 31
  %333 = trunc i32 %332 to i8
  store i8 %333, i8* %33, align 1
  %334 = lshr i32 %311, 31
  %335 = lshr i32 %316, 31
  %336 = xor i32 %335, %334
  %337 = xor i32 %332, %334
  %338 = add nuw nsw i32 %337, %336
  %339 = icmp eq i32 %338, 2
  %340 = zext i1 %339 to i8
  store i8 %340, i8* %39, align 1
  %341 = icmp ne i8 %333, 0
  %342 = xor i1 %341, %339
  %.v105 = select i1 %342, i64 12, i64 1268
  %343 = add i64 %306, %.v105
  store i64 %343, i64* %3, align 8
  br i1 %342, label %block_429790, label %block_.L_429c78

block_429790:                                     ; preds = %block_.L_429784
  store i64 20, i64* %RAX.i162, align 8
  %344 = add i64 %343, 9
  store i64 %344, i64* %3, align 8
  %345 = load i32, i32* %310, align 4
  %346 = sext i32 %345 to i64
  store i64 %346, i64* %RCX.i908, align 8
  %347 = shl nsw i64 %346, 2
  %348 = add nsw i64 %347, 11270576
  %349 = add i64 %343, 16
  store i64 %349, i64* %3, align 8
  %350 = inttoptr i64 %348 to i32*
  %351 = load i32, i32* %350, align 4
  %352 = zext i32 %351 to i64
  store i64 %352, i64* %RDX.i948.pre-phi, align 8
  %353 = add i64 %307, -44
  %354 = add i64 %343, 19
  store i64 %354, i64* %3, align 8
  %355 = inttoptr i64 %353 to i32*
  store i32 %351, i32* %355, align 4
  %356 = load i64, i64* %RBP.i, align 8
  %357 = add i64 %356, -44
  %358 = load i64, i64* %3, align 8
  %359 = add i64 %358, 3
  store i64 %359, i64* %3, align 8
  %360 = inttoptr i64 %357 to i32*
  %361 = load i32, i32* %360, align 4
  %362 = zext i32 %361 to i64
  store i64 %362, i64* %RDX.i948.pre-phi, align 8
  %363 = add i64 %356, -112
  %364 = load i32, i32* %99, align 4
  %365 = add i64 %358, 6
  store i64 %365, i64* %3, align 8
  %366 = inttoptr i64 %363 to i32*
  store i32 %364, i32* %366, align 4
  %367 = load i32, i32* %EDX.i485, align 4
  %368 = zext i32 %367 to i64
  %369 = load i64, i64* %3, align 8
  store i64 %368, i64* %RAX.i162, align 8
  %370 = sext i32 %367 to i64
  %371 = lshr i64 %370, 32
  store i64 %371, i64* %98, align 8
  %372 = load i64, i64* %RBP.i, align 8
  %373 = add i64 %372, -112
  %374 = add i64 %369, 6
  store i64 %374, i64* %3, align 8
  %375 = inttoptr i64 %373 to i32*
  %376 = load i32, i32* %375, align 4
  %377 = zext i32 %376 to i64
  store i64 %377, i64* %RSI.i874, align 8
  %378 = add i64 %369, 8
  store i64 %378, i64* %3, align 8
  %379 = sext i32 %376 to i64
  %380 = shl nuw i64 %371, 32
  %381 = or i64 %380, %368
  %382 = sdiv i64 %381, %379
  %383 = shl i64 %382, 32
  %384 = ashr exact i64 %383, 32
  %385 = icmp eq i64 %382, %384
  br i1 %385, label %388, label %386

; <label>:386:                                    ; preds = %block_429790
  %387 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %378, %struct.Memory* %MEMORY.2)
  %.pre49 = load i64, i64* %RAX.i162, align 8
  %.pre50 = load i64, i64* %3, align 8
  %.pre51 = load i64, i64* %RBP.i, align 8
  br label %routine_idivl__esi.exit868

; <label>:388:                                    ; preds = %block_429790
  %389 = srem i64 %381, %379
  %390 = and i64 %382, 4294967295
  store i64 %390, i64* %RAX.i162, align 8
  %391 = and i64 %389, 4294967295
  store i64 %391, i64* %RDX.i948.pre-phi, align 8
  store i8 0, i8* %14, align 1
  store i8 0, i8* %21, align 1
  store i8 0, i8* %27, align 1
  store i8 0, i8* %30, align 1
  store i8 0, i8* %33, align 1
  store i8 0, i8* %39, align 1
  br label %routine_idivl__esi.exit868

routine_idivl__esi.exit868:                       ; preds = %388, %386
  %392 = phi i64 [ %.pre51, %386 ], [ %372, %388 ]
  %393 = phi i64 [ %.pre50, %386 ], [ %378, %388 ]
  %394 = phi i64 [ %.pre49, %386 ], [ %390, %388 ]
  %395 = phi %struct.Memory* [ %387, %386 ], [ %MEMORY.2, %388 ]
  %396 = trunc i64 %394 to i32
  %397 = add i32 %396, -1
  %398 = zext i32 %397 to i64
  store i64 %398, i64* %RAX.i162, align 8
  %399 = icmp eq i32 %396, 0
  %400 = zext i1 %399 to i8
  store i8 %400, i8* %14, align 1
  %401 = and i32 %397, 255
  %402 = tail call i32 @llvm.ctpop.i32(i32 %401)
  %403 = trunc i32 %402 to i8
  %404 = and i8 %403, 1
  %405 = xor i8 %404, 1
  store i8 %405, i8* %21, align 1
  %406 = xor i32 %397, %396
  %407 = lshr i32 %406, 4
  %408 = trunc i32 %407 to i8
  %409 = and i8 %408, 1
  store i8 %409, i8* %27, align 1
  %410 = icmp eq i32 %397, 0
  %411 = zext i1 %410 to i8
  store i8 %411, i8* %30, align 1
  %412 = lshr i32 %397, 31
  %413 = trunc i32 %412 to i8
  store i8 %413, i8* %33, align 1
  %414 = lshr i32 %396, 31
  %415 = xor i32 %412, %414
  %416 = add nuw nsw i32 %415, %414
  %417 = icmp eq i32 %416, 2
  %418 = zext i1 %417 to i8
  store i8 %418, i8* %39, align 1
  %419 = add i64 %392, -48
  %420 = add i64 %393, 6
  store i64 %420, i64* %3, align 8
  %421 = inttoptr i64 %419 to i32*
  %422 = load i32, i32* %421, align 4
  %423 = sub i32 %397, %422
  %424 = zext i32 %423 to i64
  store i64 %424, i64* %RAX.i162, align 8
  %425 = icmp ult i32 %397, %422
  %426 = zext i1 %425 to i8
  store i8 %426, i8* %14, align 1
  %427 = and i32 %423, 255
  %428 = tail call i32 @llvm.ctpop.i32(i32 %427)
  %429 = trunc i32 %428 to i8
  %430 = and i8 %429, 1
  %431 = xor i8 %430, 1
  store i8 %431, i8* %21, align 1
  %432 = xor i32 %422, %397
  %433 = xor i32 %432, %423
  %434 = lshr i32 %433, 4
  %435 = trunc i32 %434 to i8
  %436 = and i8 %435, 1
  store i8 %436, i8* %27, align 1
  %437 = icmp eq i32 %423, 0
  %438 = zext i1 %437 to i8
  store i8 %438, i8* %30, align 1
  %439 = lshr i32 %423, 31
  %440 = trunc i32 %439 to i8
  store i8 %440, i8* %33, align 1
  %441 = lshr i32 %422, 31
  %442 = xor i32 %441, %412
  %443 = xor i32 %439, %412
  %444 = add nuw nsw i32 %443, %442
  %445 = icmp eq i32 %444, 2
  %446 = zext i1 %445 to i8
  store i8 %446, i8* %39, align 1
  %447 = add i64 %392, -80
  %448 = add i64 %393, 9
  store i64 %448, i64* %3, align 8
  %449 = inttoptr i64 %447 to i32*
  store i32 %423, i32* %449, align 4
  %450 = load i64, i64* %RBP.i, align 8
  %451 = add i64 %450, -44
  %452 = load i64, i64* %3, align 8
  %453 = add i64 %452, 3
  store i64 %453, i64* %3, align 8
  %454 = inttoptr i64 %451 to i32*
  %455 = load i32, i32* %454, align 4
  %456 = zext i32 %455 to i64
  store i64 %456, i64* %RAX.i162, align 8
  %457 = sext i32 %455 to i64
  %458 = lshr i64 %457, 32
  store i64 %458, i64* %98, align 8
  %459 = load i32, i32* %ESI.i466, align 4
  %460 = add i64 %452, 6
  store i64 %460, i64* %3, align 8
  %461 = sext i32 %459 to i64
  %462 = shl nuw i64 %458, 32
  %463 = or i64 %462, %456
  %464 = sdiv i64 %463, %461
  %465 = shl i64 %464, 32
  %466 = ashr exact i64 %465, 32
  %467 = icmp eq i64 %464, %466
  br i1 %467, label %470, label %468

; <label>:468:                                    ; preds = %routine_idivl__esi.exit868
  %469 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %460, %struct.Memory* %395)
  %.pre52 = load i64, i64* %RDX.i948.pre-phi, align 8
  %.pre53 = load i64, i64* %3, align 8
  %.pre54 = load i64, i64* %RBP.i, align 8
  br label %routine_idivl__esi.exit852

; <label>:470:                                    ; preds = %routine_idivl__esi.exit868
  %471 = srem i64 %463, %461
  %472 = and i64 %464, 4294967295
  store i64 %472, i64* %RAX.i162, align 8
  %473 = and i64 %471, 4294967295
  store i64 %473, i64* %RDX.i948.pre-phi, align 8
  store i8 0, i8* %14, align 1
  store i8 0, i8* %21, align 1
  store i8 0, i8* %27, align 1
  store i8 0, i8* %30, align 1
  store i8 0, i8* %33, align 1
  store i8 0, i8* %39, align 1
  br label %routine_idivl__esi.exit852

routine_idivl__esi.exit852:                       ; preds = %470, %468
  %474 = phi i64 [ %.pre54, %468 ], [ %450, %470 ]
  %475 = phi i64 [ %.pre53, %468 ], [ %460, %470 ]
  %476 = phi i64 [ %.pre52, %468 ], [ %473, %470 ]
  %477 = phi %struct.Memory* [ %469, %468 ], [ %395, %470 ]
  %478 = trunc i64 %476 to i32
  %479 = add i32 %478, -1
  %480 = zext i32 %479 to i64
  store i64 %480, i64* %RDX.i948.pre-phi, align 8
  %481 = icmp eq i32 %478, 0
  %482 = zext i1 %481 to i8
  store i8 %482, i8* %14, align 1
  %483 = and i32 %479, 255
  %484 = tail call i32 @llvm.ctpop.i32(i32 %483)
  %485 = trunc i32 %484 to i8
  %486 = and i8 %485, 1
  %487 = xor i8 %486, 1
  store i8 %487, i8* %21, align 1
  %488 = xor i32 %479, %478
  %489 = lshr i32 %488, 4
  %490 = trunc i32 %489 to i8
  %491 = and i8 %490, 1
  store i8 %491, i8* %27, align 1
  %492 = icmp eq i32 %479, 0
  %493 = zext i1 %492 to i8
  store i8 %493, i8* %30, align 1
  %494 = lshr i32 %479, 31
  %495 = trunc i32 %494 to i8
  store i8 %495, i8* %33, align 1
  %496 = lshr i32 %478, 31
  %497 = xor i32 %494, %496
  %498 = add nuw nsw i32 %497, %496
  %499 = icmp eq i32 %498, 2
  %500 = zext i1 %499 to i8
  store i8 %500, i8* %39, align 1
  %501 = add i64 %474, -52
  %502 = add i64 %475, 6
  store i64 %502, i64* %3, align 8
  %503 = inttoptr i64 %501 to i32*
  %504 = load i32, i32* %503, align 4
  %505 = sub i32 %479, %504
  %506 = zext i32 %505 to i64
  store i64 %506, i64* %RDX.i948.pre-phi, align 8
  %507 = icmp ult i32 %479, %504
  %508 = zext i1 %507 to i8
  store i8 %508, i8* %14, align 1
  %509 = and i32 %505, 255
  %510 = tail call i32 @llvm.ctpop.i32(i32 %509)
  %511 = trunc i32 %510 to i8
  %512 = and i8 %511, 1
  %513 = xor i8 %512, 1
  store i8 %513, i8* %21, align 1
  %514 = xor i32 %504, %479
  %515 = xor i32 %514, %505
  %516 = lshr i32 %515, 4
  %517 = trunc i32 %516 to i8
  %518 = and i8 %517, 1
  store i8 %518, i8* %27, align 1
  %519 = icmp eq i32 %505, 0
  %520 = zext i1 %519 to i8
  store i8 %520, i8* %30, align 1
  %521 = lshr i32 %505, 31
  %522 = trunc i32 %521 to i8
  store i8 %522, i8* %33, align 1
  %523 = lshr i32 %504, 31
  %524 = xor i32 %523, %494
  %525 = xor i32 %521, %494
  %526 = add nuw nsw i32 %525, %524
  %527 = icmp eq i32 %526, 2
  %528 = zext i1 %527 to i8
  store i8 %528, i8* %39, align 1
  %529 = add i64 %474, -84
  %530 = add i64 %475, 9
  store i64 %530, i64* %3, align 8
  %531 = inttoptr i64 %529 to i32*
  store i32 %505, i32* %531, align 4
  %532 = load i64, i64* %RBP.i, align 8
  %533 = add i64 %532, -68
  %534 = load i64, i64* %3, align 8
  %535 = add i64 %534, 3
  store i64 %535, i64* %3, align 8
  %536 = inttoptr i64 %533 to i32*
  %537 = load i32, i32* %536, align 4
  %538 = add i32 %537, 1
  %539 = zext i32 %538 to i64
  store i64 %539, i64* %RDX.i948.pre-phi, align 8
  %540 = icmp eq i32 %537, -1
  %541 = icmp eq i32 %538, 0
  %542 = or i1 %540, %541
  %543 = zext i1 %542 to i8
  store i8 %543, i8* %14, align 1
  %544 = and i32 %538, 255
  %545 = tail call i32 @llvm.ctpop.i32(i32 %544)
  %546 = trunc i32 %545 to i8
  %547 = and i8 %546, 1
  %548 = xor i8 %547, 1
  store i8 %548, i8* %21, align 1
  %549 = xor i32 %538, %537
  %550 = lshr i32 %549, 4
  %551 = trunc i32 %550 to i8
  %552 = and i8 %551, 1
  store i8 %552, i8* %27, align 1
  %553 = zext i1 %541 to i8
  store i8 %553, i8* %30, align 1
  %554 = lshr i32 %538, 31
  %555 = trunc i32 %554 to i8
  store i8 %555, i8* %33, align 1
  %556 = lshr i32 %537, 31
  %557 = xor i32 %554, %556
  %558 = add nuw nsw i32 %557, %554
  %559 = icmp eq i32 %558, 2
  %560 = zext i1 %559 to i8
  store i8 %560, i8* %39, align 1
  %561 = add i64 %534, 9
  store i64 %561, i64* %3, align 8
  store i32 %538, i32* %536, align 4
  %562 = load i64, i64* %RBP.i, align 8
  %563 = add i64 %562, -24
  %564 = load i64, i64* %3, align 8
  %565 = add i64 %564, 4
  store i64 %565, i64* %3, align 8
  %566 = inttoptr i64 %563 to i64*
  %567 = load i64, i64* %566, align 8
  store i64 %567, i64* %RCX.i908, align 8
  %568 = add i64 %562, -44
  %569 = add i64 %564, 8
  store i64 %569, i64* %3, align 8
  %570 = inttoptr i64 %568 to i32*
  %571 = load i32, i32* %570, align 4
  %572 = sext i32 %571 to i64
  store i64 %572, i64* %RDI.i829, align 8
  %573 = shl nsw i64 %572, 2
  %574 = add i64 %573, %567
  %575 = add i64 %564, 12
  store i64 %575, i64* %3, align 8
  %576 = inttoptr i64 %574 to i32*
  %577 = load i32, i32* %576, align 4
  store i8 0, i8* %14, align 1
  %578 = and i32 %577, 255
  %579 = tail call i32 @llvm.ctpop.i32(i32 %578)
  %580 = trunc i32 %579 to i8
  %581 = and i8 %580, 1
  %582 = xor i8 %581, 1
  store i8 %582, i8* %21, align 1
  store i8 0, i8* %27, align 1
  %583 = icmp eq i32 %577, 0
  %584 = zext i1 %583 to i8
  store i8 %584, i8* %30, align 1
  %585 = lshr i32 %577, 31
  %586 = trunc i32 %585 to i8
  store i8 %586, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %.v108 = select i1 %583, i64 18, i64 23
  %587 = add i64 %564, %.v108
  store i64 %587, i64* %3, align 8
  br i1 %583, label %block_4297e4, label %block_.L_4297e9

block_4297e4:                                     ; preds = %routine_idivl__esi.exit852
  %588 = add i64 %587, -96
  br label %block_.L_429784.backedge

block_.L_429784.backedge:                         ; preds = %block_4297e4, %block_.L_429c73
  %589 = phi i64 [ %562, %block_4297e4 ], [ %1718, %block_.L_429c73 ]
  %.sink30 = phi i64 [ %588, %block_4297e4 ], [ %2881, %block_.L_429c73 ]
  %MEMORY.2.be = phi %struct.Memory* [ %477, %block_4297e4 ], [ %MEMORY.11, %block_.L_429c73 ]
  store i64 %.sink30, i64* %3, align 8
  br label %block_.L_429784

block_.L_4297e9:                                  ; preds = %routine_idivl__esi.exit852
  %590 = add i64 %562, -68
  %591 = add i64 %587, 4
  store i64 %591, i64* %3, align 8
  %592 = inttoptr i64 %590 to i32*
  %593 = load i32, i32* %592, align 4
  %594 = add i32 %593, -1
  %595 = icmp eq i32 %593, 0
  %596 = zext i1 %595 to i8
  store i8 %596, i8* %14, align 1
  %597 = and i32 %594, 255
  %598 = tail call i32 @llvm.ctpop.i32(i32 %597)
  %599 = trunc i32 %598 to i8
  %600 = and i8 %599, 1
  %601 = xor i8 %600, 1
  store i8 %601, i8* %21, align 1
  %602 = xor i32 %594, %593
  %603 = lshr i32 %602, 4
  %604 = trunc i32 %603 to i8
  %605 = and i8 %604, 1
  store i8 %605, i8* %27, align 1
  %606 = icmp eq i32 %594, 0
  %607 = zext i1 %606 to i8
  store i8 %607, i8* %30, align 1
  %608 = lshr i32 %594, 31
  %609 = trunc i32 %608 to i8
  store i8 %609, i8* %33, align 1
  %610 = lshr i32 %593, 31
  %611 = xor i32 %608, %610
  %612 = add nuw nsw i32 %611, %610
  %613 = icmp eq i32 %612, 2
  %614 = zext i1 %613 to i8
  store i8 %614, i8* %39, align 1
  %.v109 = select i1 %606, i64 10, i64 22
  %615 = add i64 %587, %.v109
  store i64 %615, i64* %3, align 8
  br i1 %606, label %block_4297f3, label %block_.L_4297ff

block_4297f3:                                     ; preds = %block_.L_4297e9
  %616 = add i64 %562, -64
  %617 = add i64 %615, 7
  store i64 %617, i64* %3, align 8
  %618 = inttoptr i64 %616 to i32*
  store i32 4096, i32* %618, align 4
  %619 = load i64, i64* %3, align 8
  %620 = add i64 %619, 32
  store i64 %620, i64* %3, align 8
  br label %block_.L_42981a

block_.L_4297ff:                                  ; preds = %block_.L_4297e9
  store i64 4096, i64* %RAX.i162, align 8
  %621 = add i64 %562, -80
  %622 = add i64 %615, 8
  store i64 %622, i64* %3, align 8
  %623 = inttoptr i64 %621 to i32*
  %624 = load i32, i32* %623, align 4
  %625 = zext i32 %624 to i64
  store i64 %625, i64* %RCX.i908, align 8
  %626 = add i64 %615, 12
  store i64 %626, i64* %3, align 8
  %627 = load i32, i32* %623, align 4
  %628 = sext i32 %624 to i64
  %629 = sext i32 %627 to i64
  %630 = mul nsw i64 %629, %628
  %631 = trunc i64 %630 to i32
  %632 = and i64 %630, 4294967295
  store i64 %632, i64* %RCX.i908, align 8
  %633 = shl i64 %630, 32
  %634 = ashr exact i64 %633, 32
  %635 = icmp ne i64 %634, %630
  %636 = zext i1 %635 to i8
  store i8 %636, i8* %14, align 1
  %637 = and i32 %631, 255
  %638 = tail call i32 @llvm.ctpop.i32(i32 %637)
  %639 = trunc i32 %638 to i8
  %640 = and i8 %639, 1
  %641 = xor i8 %640, 1
  store i8 %641, i8* %21, align 1
  store i8 0, i8* %27, align 1
  store i8 0, i8* %30, align 1
  %642 = lshr i32 %631, 31
  %643 = trunc i32 %642 to i8
  store i8 %643, i8* %33, align 1
  store i8 %636, i8* %39, align 1
  %644 = add i64 %562, -84
  %645 = add i64 %615, 15
  store i64 %645, i64* %3, align 8
  %646 = inttoptr i64 %644 to i32*
  %647 = load i32, i32* %646, align 4
  %648 = zext i32 %647 to i64
  store i64 %648, i64* %RDX.i948.pre-phi, align 8
  %649 = add i64 %615, 19
  store i64 %649, i64* %3, align 8
  %650 = load i32, i32* %646, align 4
  %651 = sext i32 %647 to i64
  %652 = sext i32 %650 to i64
  %653 = mul nsw i64 %652, %651
  %654 = and i64 %653, 4294967295
  store i64 %654, i64* %RDX.i948.pre-phi, align 8
  %655 = trunc i64 %653 to i32
  %656 = trunc i64 %630 to i32
  %657 = add i32 %655, %656
  %658 = zext i32 %657 to i64
  store i64 %658, i64* %RCX.i908, align 8
  %659 = icmp ult i32 %657, %656
  %660 = icmp ult i32 %657, %655
  %661 = or i1 %659, %660
  %662 = zext i1 %661 to i8
  store i8 %662, i8* %14, align 1
  %663 = and i32 %657, 255
  %664 = tail call i32 @llvm.ctpop.i32(i32 %663)
  %665 = trunc i32 %664 to i8
  %666 = and i8 %665, 1
  %667 = xor i8 %666, 1
  store i8 %667, i8* %21, align 1
  %668 = xor i64 %653, %630
  %669 = trunc i64 %668 to i32
  %670 = xor i32 %669, %657
  %671 = lshr i32 %670, 4
  %672 = trunc i32 %671 to i8
  %673 = and i8 %672, 1
  store i8 %673, i8* %27, align 1
  %674 = icmp eq i32 %657, 0
  %675 = zext i1 %674 to i8
  store i8 %675, i8* %30, align 1
  %676 = lshr i32 %657, 31
  %677 = trunc i32 %676 to i8
  store i8 %677, i8* %33, align 1
  %678 = lshr i32 %656, 31
  %679 = lshr i32 %655, 31
  %680 = xor i32 %676, %678
  %681 = xor i32 %676, %679
  %682 = add nuw nsw i32 %680, %681
  %683 = icmp eq i32 %682, 2
  %684 = zext i1 %683 to i8
  store i8 %684, i8* %39, align 1
  %685 = load i32, i32* %99, align 8
  %686 = sext i32 %685 to i64
  %687 = lshr i64 %686, 32
  store i64 %687, i64* %98, align 8
  %688 = add i64 %615, 24
  store i64 %688, i64* %3, align 8
  %689 = zext i32 %685 to i64
  %690 = sext i32 %657 to i64
  %691 = shl nuw i64 %687, 32
  %692 = or i64 %691, %689
  %693 = sdiv i64 %692, %690
  %694 = shl i64 %693, 32
  %695 = ashr exact i64 %694, 32
  %696 = icmp eq i64 %693, %695
  br i1 %696, label %699, label %697

; <label>:697:                                    ; preds = %block_.L_4297ff
  %698 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %688, %struct.Memory* %477)
  %.pre55 = load i32, i32* %99, align 4
  %.pre56 = load i64, i64* %3, align 8
  br label %routine_idivl__ecx.exit795

; <label>:699:                                    ; preds = %block_.L_4297ff
  %700 = srem i64 %692, %690
  %701 = and i64 %693, 4294967295
  store i64 %701, i64* %RAX.i162, align 8
  %702 = and i64 %700, 4294967295
  store i64 %702, i64* %RDX.i948.pre-phi, align 8
  store i8 0, i8* %14, align 1
  store i8 0, i8* %21, align 1
  store i8 0, i8* %27, align 1
  store i8 0, i8* %30, align 1
  store i8 0, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %703 = trunc i64 %693 to i32
  br label %routine_idivl__ecx.exit795

routine_idivl__ecx.exit795:                       ; preds = %699, %697
  %704 = phi i64 [ %.pre56, %697 ], [ %688, %699 ]
  %705 = phi i32 [ %.pre55, %697 ], [ %703, %699 ]
  %706 = phi %struct.Memory* [ %698, %697 ], [ %477, %699 ]
  %707 = load i64, i64* %RBP.i, align 8
  %708 = add i64 %707, -64
  %709 = add i64 %704, 3
  store i64 %709, i64* %3, align 8
  %710 = inttoptr i64 %708 to i32*
  store i32 %705, i32* %710, align 4
  %.pre57 = load i64, i64* %3, align 8
  br label %block_.L_42981a

block_.L_42981a:                                  ; preds = %routine_idivl__ecx.exit795, %block_4297f3
  %711 = phi i64 [ %.pre57, %routine_idivl__ecx.exit795 ], [ %620, %block_4297f3 ]
  %MEMORY.3 = phi %struct.Memory* [ %706, %routine_idivl__ecx.exit795 ], [ %477, %block_4297f3 ]
  store i64 4096, i64* %RAX.i162, align 8
  %712 = load i64, i64* %RBP.i, align 8
  %713 = add i64 %712, -44
  %714 = add i64 %711, 9
  store i64 %714, i64* %3, align 8
  %715 = inttoptr i64 %713 to i32*
  %716 = load i32, i32* %715, align 4
  %717 = sext i32 %716 to i64
  store i64 %717, i64* %RCX.i908, align 8
  %718 = shl nsw i64 %717, 2
  %719 = add nsw i64 %718, 11268976
  %720 = add i64 %711, 16
  store i64 %720, i64* %3, align 8
  %721 = inttoptr i64 %719 to i32*
  %722 = load i32, i32* %721, align 4
  %723 = zext i32 %722 to i64
  store i64 %723, i64* %RDX.i948.pre-phi, align 8
  %724 = add i64 %712, -12
  %725 = add i64 %711, 20
  store i64 %725, i64* %3, align 8
  %726 = inttoptr i64 %724 to i32*
  %727 = load i32, i32* %726, align 4
  %728 = sext i32 %722 to i64
  %729 = sext i32 %727 to i64
  %730 = mul nsw i64 %729, %728
  %731 = trunc i64 %730 to i32
  %732 = and i64 %730, 4294967295
  store i64 %732, i64* %RDX.i948.pre-phi, align 8
  %733 = shl i64 %730, 32
  %734 = ashr exact i64 %733, 32
  %735 = icmp ne i64 %734, %730
  %736 = zext i1 %735 to i8
  store i8 %736, i8* %14, align 1
  %737 = and i32 %731, 255
  %738 = tail call i32 @llvm.ctpop.i32(i32 %737)
  %739 = trunc i32 %738 to i8
  %740 = and i8 %739, 1
  %741 = xor i8 %740, 1
  store i8 %741, i8* %21, align 1
  store i8 0, i8* %27, align 1
  store i8 0, i8* %30, align 1
  %742 = lshr i32 %731, 31
  %743 = trunc i32 %742 to i8
  store i8 %743, i8* %33, align 1
  store i8 %736, i8* %39, align 1
  %744 = add i64 %712, -116
  %745 = add i64 %711, 23
  store i64 %745, i64* %3, align 8
  %746 = inttoptr i64 %744 to i32*
  store i32 4096, i32* %746, align 4
  %747 = load i32, i32* %EDX.i485, align 4
  %748 = zext i32 %747 to i64
  %749 = load i64, i64* %3, align 8
  store i64 %748, i64* %RAX.i162, align 8
  %750 = sext i32 %747 to i64
  %751 = lshr i64 %750, 32
  store i64 %751, i64* %98, align 8
  %752 = load i64, i64* %RBP.i, align 8
  %753 = add i64 %752, -116
  %754 = add i64 %749, 6
  store i64 %754, i64* %3, align 8
  %755 = inttoptr i64 %753 to i32*
  %756 = load i32, i32* %755, align 4
  %757 = zext i32 %756 to i64
  store i64 %757, i64* %RSI.i874, align 8
  %758 = add i64 %749, 8
  store i64 %758, i64* %3, align 8
  %759 = sext i32 %756 to i64
  %760 = shl nuw i64 %751, 32
  %761 = or i64 %760, %748
  %762 = sdiv i64 %761, %759
  %763 = shl i64 %762, 32
  %764 = ashr exact i64 %763, 32
  %765 = icmp eq i64 %762, %764
  br i1 %765, label %768, label %766

; <label>:766:                                    ; preds = %block_.L_42981a
  %767 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %758, %struct.Memory* %MEMORY.3)
  %.pre58 = load i64, i64* %RBP.i, align 8
  %.pre59 = load i32, i32* %99, align 4
  %.pre60 = load i64, i64* %3, align 8
  br label %routine_idivl__esi.exit765

; <label>:768:                                    ; preds = %block_.L_42981a
  %769 = srem i64 %761, %759
  %770 = and i64 %762, 4294967295
  store i64 %770, i64* %RAX.i162, align 8
  %771 = and i64 %769, 4294967295
  store i64 %771, i64* %RDX.i948.pre-phi, align 8
  store i8 0, i8* %14, align 1
  store i8 0, i8* %21, align 1
  store i8 0, i8* %27, align 1
  store i8 0, i8* %30, align 1
  store i8 0, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %772 = trunc i64 %762 to i32
  br label %routine_idivl__esi.exit765

routine_idivl__esi.exit765:                       ; preds = %768, %766
  %773 = phi i64 [ %.pre60, %766 ], [ %758, %768 ]
  %774 = phi i32 [ %.pre59, %766 ], [ %772, %768 ]
  %775 = phi i64 [ %.pre58, %766 ], [ %752, %768 ]
  %776 = phi %struct.Memory* [ %767, %766 ], [ %MEMORY.3, %768 ]
  %777 = add i64 %775, -76
  %778 = add i64 %773, 3
  store i64 %778, i64* %3, align 8
  %779 = inttoptr i64 %777 to i32*
  store i32 %774, i32* %779, align 4
  %780 = load i64, i64* %RBP.i, align 8
  %781 = add i64 %780, -60
  %782 = load i64, i64* %3, align 8
  %783 = add i64 %782, 7
  store i64 %783, i64* %3, align 8
  %784 = inttoptr i64 %781 to i32*
  store i32 0, i32* %784, align 4
  %.pre61 = load i64, i64* %3, align 8
  br label %block_.L_429843

block_.L_429843:                                  ; preds = %block_.L_4299cc, %routine_idivl__esi.exit765
  %785 = phi i64 [ %.pre61, %routine_idivl__esi.exit765 ], [ %1623, %block_.L_4299cc ]
  %MEMORY.4 = phi %struct.Memory* [ %776, %routine_idivl__esi.exit765 ], [ %MEMORY.10, %block_.L_4299cc ]
  %786 = load i64, i64* %RBP.i, align 8
  %787 = add i64 %786, -60
  %788 = add i64 %785, 4
  store i64 %788, i64* %3, align 8
  %789 = inttoptr i64 %787 to i32*
  %790 = load i32, i32* %789, align 4
  %791 = add i32 %790, -4
  %792 = icmp ult i32 %790, 4
  %793 = zext i1 %792 to i8
  store i8 %793, i8* %14, align 1
  %794 = and i32 %791, 255
  %795 = tail call i32 @llvm.ctpop.i32(i32 %794)
  %796 = trunc i32 %795 to i8
  %797 = and i8 %796, 1
  %798 = xor i8 %797, 1
  store i8 %798, i8* %21, align 1
  %799 = xor i32 %791, %790
  %800 = lshr i32 %799, 4
  %801 = trunc i32 %800 to i8
  %802 = and i8 %801, 1
  store i8 %802, i8* %27, align 1
  %803 = icmp eq i32 %791, 0
  %804 = zext i1 %803 to i8
  store i8 %804, i8* %30, align 1
  %805 = lshr i32 %791, 31
  %806 = trunc i32 %805 to i8
  store i8 %806, i8* %33, align 1
  %807 = lshr i32 %790, 31
  %808 = xor i32 %805, %807
  %809 = add nuw nsw i32 %808, %807
  %810 = icmp eq i32 %809, 2
  %811 = zext i1 %810 to i8
  store i8 %811, i8* %39, align 1
  %812 = icmp ne i8 %806, 0
  %813 = xor i1 %812, %810
  %.v103 = select i1 %813, i64 10, i64 412
  %814 = add i64 %785, %.v103
  store i64 %814, i64* %3, align 8
  br i1 %813, label %block_42984d, label %block_.L_4299df

block_42984d:                                     ; preds = %block_.L_429843
  %815 = add i64 %786, -44
  %816 = add i64 %814, 3
  store i64 %816, i64* %3, align 8
  %817 = inttoptr i64 %815 to i32*
  %818 = load i32, i32* %817, align 4
  %819 = zext i32 %818 to i64
  store i64 %819, i64* %RAX.i162, align 8
  %820 = add i64 %814, 7
  store i64 %820, i64* %3, align 8
  %821 = load i32, i32* %789, align 4
  %822 = sext i32 %821 to i64
  store i64 %822, i64* %RCX.i908, align 8
  %823 = shl nsw i64 %822, 2
  %824 = add nsw i64 %823, 8053168
  %825 = add i64 %814, 14
  store i64 %825, i64* %3, align 8
  %826 = inttoptr i64 %824 to i32*
  %827 = load i32, i32* %826, align 4
  %828 = add i32 %827, %818
  %829 = zext i32 %828 to i64
  store i64 %829, i64* %RAX.i162, align 8
  %830 = icmp ult i32 %828, %818
  %831 = icmp ult i32 %828, %827
  %832 = or i1 %830, %831
  %833 = zext i1 %832 to i8
  store i8 %833, i8* %14, align 1
  %834 = and i32 %828, 255
  %835 = tail call i32 @llvm.ctpop.i32(i32 %834)
  %836 = trunc i32 %835 to i8
  %837 = and i8 %836, 1
  %838 = xor i8 %837, 1
  store i8 %838, i8* %21, align 1
  %839 = xor i32 %827, %818
  %840 = xor i32 %839, %828
  %841 = lshr i32 %840, 4
  %842 = trunc i32 %841 to i8
  %843 = and i8 %842, 1
  store i8 %843, i8* %27, align 1
  %844 = icmp eq i32 %828, 0
  %845 = zext i1 %844 to i8
  store i8 %845, i8* %30, align 1
  %846 = lshr i32 %828, 31
  %847 = trunc i32 %846 to i8
  store i8 %847, i8* %33, align 1
  %848 = lshr i32 %818, 31
  %849 = lshr i32 %827, 31
  %850 = xor i32 %846, %848
  %851 = xor i32 %846, %849
  %852 = add nuw nsw i32 %850, %851
  %853 = icmp eq i32 %852, 2
  %854 = zext i1 %853 to i8
  store i8 %854, i8* %39, align 1
  %855 = sext i32 %828 to i64
  store i64 %855, i64* %RCX.i908, align 8
  %856 = add nsw i64 %855, 12099168
  %857 = add i64 %814, 25
  store i64 %857, i64* %3, align 8
  %858 = inttoptr i64 %856 to i8*
  %859 = load i8, i8* %858, align 1
  %860 = zext i8 %859 to i64
  store i64 %860, i64* %RAX.i162, align 8
  %861 = zext i8 %859 to i32
  %862 = add nsw i32 %861, -3
  %863 = icmp ult i8 %859, 3
  %864 = zext i1 %863 to i8
  store i8 %864, i8* %14, align 1
  %865 = and i32 %862, 255
  %866 = tail call i32 @llvm.ctpop.i32(i32 %865)
  %867 = trunc i32 %866 to i8
  %868 = and i8 %867, 1
  %869 = xor i8 %868, 1
  store i8 %869, i8* %21, align 1
  %870 = xor i32 %862, %861
  %871 = lshr i32 %870, 4
  %872 = trunc i32 %871 to i8
  %873 = and i8 %872, 1
  store i8 %873, i8* %27, align 1
  %874 = icmp eq i32 %862, 0
  %875 = zext i1 %874 to i8
  store i8 %875, i8* %30, align 1
  %876 = lshr i32 %862, 31
  %877 = trunc i32 %876 to i8
  store i8 %877, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %.v102 = select i1 %874, i64 383, i64 34
  %878 = add i64 %814, %.v102
  store i64 %878, i64* %3, align 8
  br i1 %874, label %block_.L_4299cc, label %block_42986f

block_42986f:                                     ; preds = %block_42984d
  %879 = add i64 %786, -32
  %880 = add i64 %878, 9
  store i64 %880, i64* %3, align 8
  %881 = inttoptr i64 %879 to i64*
  %882 = load i64, i64* %881, align 8
  store i64 %882, i64* %RAX.i162, align 8
  %883 = add i64 %878, 12
  store i64 %883, i64* %3, align 8
  %884 = load i32, i32* %817, align 4
  %885 = zext i32 %884 to i64
  store i64 %885, i64* %RCX.i908, align 8
  %886 = add i64 %878, 16
  store i64 %886, i64* %3, align 8
  %887 = load i32, i32* %789, align 4
  %888 = sext i32 %887 to i64
  store i64 %888, i64* %RDX.i948.pre-phi, align 8
  %889 = shl nsw i64 %888, 2
  %890 = add nsw i64 %889, 8053168
  %891 = add i64 %878, 23
  store i64 %891, i64* %3, align 8
  %892 = inttoptr i64 %890 to i32*
  %893 = load i32, i32* %892, align 4
  %894 = add i32 %893, %884
  %895 = zext i32 %894 to i64
  store i64 %895, i64* %RCX.i908, align 8
  %896 = icmp ult i32 %894, %884
  %897 = icmp ult i32 %894, %893
  %898 = or i1 %896, %897
  %899 = zext i1 %898 to i8
  store i8 %899, i8* %14, align 1
  %900 = and i32 %894, 255
  %901 = tail call i32 @llvm.ctpop.i32(i32 %900)
  %902 = trunc i32 %901 to i8
  %903 = and i8 %902, 1
  %904 = xor i8 %903, 1
  store i8 %904, i8* %21, align 1
  %905 = xor i32 %893, %884
  %906 = xor i32 %905, %894
  %907 = lshr i32 %906, 4
  %908 = trunc i32 %907 to i8
  %909 = and i8 %908, 1
  store i8 %909, i8* %27, align 1
  %910 = icmp eq i32 %894, 0
  %911 = zext i1 %910 to i8
  store i8 %911, i8* %30, align 1
  %912 = lshr i32 %894, 31
  %913 = trunc i32 %912 to i8
  store i8 %913, i8* %33, align 1
  %914 = lshr i32 %884, 31
  %915 = lshr i32 %893, 31
  %916 = xor i32 %912, %914
  %917 = xor i32 %912, %915
  %918 = add nuw nsw i32 %916, %917
  %919 = icmp eq i32 %918, 2
  %920 = zext i1 %919 to i8
  store i8 %920, i8* %39, align 1
  %921 = sext i32 %894 to i64
  store i64 %921, i64* %RDX.i948.pre-phi, align 8
  %922 = add i64 %882, %921
  %923 = add i64 %878, 30
  store i64 %923, i64* %3, align 8
  %924 = inttoptr i64 %922 to i8*
  %925 = load i8, i8* %924, align 1
  store i8 0, i8* %14, align 1
  %926 = zext i8 %925 to i32
  %927 = tail call i32 @llvm.ctpop.i32(i32 %926)
  %928 = trunc i32 %927 to i8
  %929 = and i8 %928, 1
  %930 = xor i8 %929, 1
  store i8 %930, i8* %21, align 1
  store i8 0, i8* %27, align 1
  %931 = icmp eq i8 %925, 0
  %932 = zext i1 %931 to i8
  store i8 %932, i8* %30, align 1
  %933 = lshr i8 %925, 7
  store i8 %933, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %.v116 = select i1 %931, i64 36, i64 339
  %934 = add i64 %878, %.v116
  store i64 %934, i64* %3, align 8
  br i1 %931, label %block_429893, label %block_.L_4299c2

block_429893:                                     ; preds = %block_42986f
  %935 = add i64 %934, 4
  store i64 %935, i64* %3, align 8
  %936 = load i32, i32* %789, align 4
  %937 = sext i32 %936 to i64
  store i64 %937, i64* %RAX.i162, align 8
  %938 = shl nsw i64 %937, 2
  %939 = add nsw i64 %938, 8053104
  %940 = add i64 %934, 11
  store i64 %940, i64* %3, align 8
  %941 = inttoptr i64 %939 to i32*
  %942 = load i32, i32* %941, align 4
  %943 = zext i32 %942 to i64
  store i64 %943, i64* %RCX.i908, align 8
  %944 = add i64 %786, -80
  %945 = add i64 %934, 15
  store i64 %945, i64* %3, align 8
  %946 = inttoptr i64 %944 to i32*
  %947 = load i32, i32* %946, align 4
  %948 = sext i32 %942 to i64
  %949 = sext i32 %947 to i64
  %950 = mul nsw i64 %949, %948
  %951 = trunc i64 %950 to i32
  %952 = and i64 %950, 4294967295
  store i64 %952, i64* %RCX.i908, align 8
  %953 = shl i64 %950, 32
  %954 = ashr exact i64 %953, 32
  %955 = icmp ne i64 %954, %950
  %956 = zext i1 %955 to i8
  store i8 %956, i8* %14, align 1
  %957 = and i32 %951, 255
  %958 = tail call i32 @llvm.ctpop.i32(i32 %957)
  %959 = trunc i32 %958 to i8
  %960 = and i8 %959, 1
  %961 = xor i8 %960, 1
  store i8 %961, i8* %21, align 1
  store i8 0, i8* %27, align 1
  store i8 0, i8* %30, align 1
  %962 = lshr i32 %951, 31
  %963 = trunc i32 %962 to i8
  store i8 %963, i8* %33, align 1
  store i8 %956, i8* %39, align 1
  %964 = add i64 %934, 19
  store i64 %964, i64* %3, align 8
  %965 = load i32, i32* %789, align 4
  %966 = sext i32 %965 to i64
  store i64 %966, i64* %RAX.i162, align 8
  %967 = shl nsw i64 %966, 2
  %968 = add nsw i64 %967, 8053136
  %969 = add i64 %934, 26
  store i64 %969, i64* %3, align 8
  %970 = inttoptr i64 %968 to i32*
  %971 = load i32, i32* %970, align 4
  %972 = zext i32 %971 to i64
  store i64 %972, i64* %RDX.i948.pre-phi, align 8
  %973 = add i64 %786, -84
  %974 = add i64 %934, 30
  store i64 %974, i64* %3, align 8
  %975 = inttoptr i64 %973 to i32*
  %976 = load i32, i32* %975, align 4
  %977 = sext i32 %971 to i64
  %978 = sext i32 %976 to i64
  %979 = mul nsw i64 %978, %977
  %980 = and i64 %979, 4294967295
  store i64 %980, i64* %RDX.i948.pre-phi, align 8
  %981 = trunc i64 %979 to i32
  %982 = trunc i64 %950 to i32
  %983 = add i32 %981, %982
  %984 = zext i32 %983 to i64
  store i64 %984, i64* %RCX.i908, align 8
  %985 = and i32 %983, 255
  %986 = tail call i32 @llvm.ctpop.i32(i32 %985)
  %987 = trunc i32 %986 to i8
  %988 = and i8 %987, 1
  %989 = xor i8 %988, 1
  %990 = icmp eq i32 %983, 0
  %991 = zext i1 %990 to i8
  %992 = lshr i32 %983, 31
  %993 = trunc i32 %992 to i8
  store i8 0, i8* %14, align 1
  store i8 %989, i8* %21, align 1
  store i8 0, i8* %27, align 1
  store i8 %991, i8* %30, align 1
  store i8 %993, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %994 = xor i1 %990, true
  %995 = icmp eq i8 %993, 0
  %996 = and i1 %995, %994
  %.v117 = select i1 %996, i64 51, i64 41
  %997 = add i64 %934, %.v117
  store i64 %997, i64* %3, align 8
  %.pre86 = load i64, i64* %RBP.i, align 8
  br i1 %996, label %block_.L_4298c6, label %block_4298bc

block_4298bc:                                     ; preds = %block_429893
  %998 = add i64 %.pre86, -68
  %999 = add i64 %997, 4
  store i64 %999, i64* %3, align 8
  %1000 = inttoptr i64 %998 to i32*
  %1001 = load i32, i32* %1000, align 4
  %1002 = add i32 %1001, -1
  %1003 = icmp eq i32 %1001, 0
  %1004 = zext i1 %1003 to i8
  store i8 %1004, i8* %14, align 1
  %1005 = and i32 %1002, 255
  %1006 = tail call i32 @llvm.ctpop.i32(i32 %1005)
  %1007 = trunc i32 %1006 to i8
  %1008 = and i8 %1007, 1
  %1009 = xor i8 %1008, 1
  store i8 %1009, i8* %21, align 1
  %1010 = xor i32 %1002, %1001
  %1011 = lshr i32 %1010, 4
  %1012 = trunc i32 %1011 to i8
  %1013 = and i8 %1012, 1
  store i8 %1013, i8* %27, align 1
  %1014 = icmp eq i32 %1002, 0
  %1015 = zext i1 %1014 to i8
  store i8 %1015, i8* %30, align 1
  %1016 = lshr i32 %1002, 31
  %1017 = trunc i32 %1016 to i8
  store i8 %1017, i8* %33, align 1
  %1018 = lshr i32 %1001, 31
  %1019 = xor i32 %1016, %1018
  %1020 = add nuw nsw i32 %1019, %1018
  %1021 = icmp eq i32 %1020, 2
  %1022 = zext i1 %1021 to i8
  store i8 %1022, i8* %39, align 1
  %.v118 = select i1 %1014, i64 10, i64 262
  %1023 = add i64 %997, %.v118
  store i64 %1023, i64* %3, align 8
  br i1 %1014, label %block_.L_4298c6, label %block_.L_4299c2

block_.L_4298c6:                                  ; preds = %block_429893, %block_4298bc
  %1024 = phi i64 [ %1023, %block_4298bc ], [ %997, %block_429893 ]
  store i64 4096, i64* %RAX.i162, align 8
  %1025 = add i64 %.pre86, -24
  %1026 = add i64 %1024, 9
  store i64 %1026, i64* %3, align 8
  %1027 = inttoptr i64 %1025 to i64*
  %1028 = load i64, i64* %1027, align 8
  store i64 %1028, i64* %RCX.i908, align 8
  %1029 = add i64 %.pre86, -44
  %1030 = add i64 %1024, 13
  store i64 %1030, i64* %3, align 8
  %1031 = inttoptr i64 %1029 to i32*
  %1032 = load i32, i32* %1031, align 4
  %1033 = sext i32 %1032 to i64
  store i64 %1033, i64* %RDX.i948.pre-phi, align 8
  %1034 = shl nsw i64 %1033, 2
  %1035 = add i64 %1034, %1028
  %1036 = add i64 %1024, 16
  store i64 %1036, i64* %3, align 8
  %1037 = inttoptr i64 %1035 to i32*
  %1038 = load i32, i32* %1037, align 4
  %1039 = zext i32 %1038 to i64
  store i64 %1039, i64* %RSI.i874, align 8
  %1040 = add i64 %.pre86, -92
  %1041 = add i64 %1024, 19
  store i64 %1041, i64* %3, align 8
  %1042 = inttoptr i64 %1040 to i32*
  store i32 %1038, i32* %1042, align 4
  %1043 = load i64, i64* %RBP.i, align 8
  %1044 = add i64 %1043, -76
  %1045 = load i64, i64* %3, align 8
  %1046 = add i64 %1045, 3
  store i64 %1046, i64* %3, align 8
  %1047 = inttoptr i64 %1044 to i32*
  %1048 = load i32, i32* %1047, align 4
  %1049 = zext i32 %1048 to i64
  store i64 %1049, i64* %RSI.i874, align 8
  %1050 = add i64 %1043, -92
  %1051 = add i64 %1045, 7
  store i64 %1051, i64* %3, align 8
  %1052 = inttoptr i64 %1050 to i32*
  %1053 = load i32, i32* %1052, align 4
  %1054 = sext i32 %1048 to i64
  %1055 = sext i32 %1053 to i64
  %1056 = mul nsw i64 %1055, %1054
  %1057 = trunc i64 %1056 to i32
  %1058 = and i64 %1056, 4294967295
  store i64 %1058, i64* %RSI.i874, align 8
  %1059 = shl i64 %1056, 32
  %1060 = ashr exact i64 %1059, 32
  %1061 = icmp ne i64 %1060, %1056
  %1062 = zext i1 %1061 to i8
  store i8 %1062, i8* %14, align 1
  %1063 = and i32 %1057, 255
  %1064 = tail call i32 @llvm.ctpop.i32(i32 %1063)
  %1065 = trunc i32 %1064 to i8
  %1066 = and i8 %1065, 1
  %1067 = xor i8 %1066, 1
  store i8 %1067, i8* %21, align 1
  store i8 0, i8* %27, align 1
  store i8 0, i8* %30, align 1
  %1068 = lshr i32 %1057, 31
  %1069 = trunc i32 %1068 to i8
  store i8 %1069, i8* %33, align 1
  store i8 %1062, i8* %39, align 1
  %1070 = add i64 %1043, -120
  %1071 = load i32, i32* %99, align 4
  %1072 = add i64 %1045, 10
  store i64 %1072, i64* %3, align 8
  %1073 = inttoptr i64 %1070 to i32*
  store i32 %1071, i32* %1073, align 4
  %1074 = load i32, i32* %ESI.i466, align 4
  %1075 = zext i32 %1074 to i64
  %1076 = load i64, i64* %3, align 8
  store i64 %1075, i64* %RAX.i162, align 8
  %1077 = sext i32 %1074 to i64
  %1078 = lshr i64 %1077, 32
  store i64 %1078, i64* %98, align 8
  %1079 = load i64, i64* %RBP.i, align 8
  %1080 = add i64 %1079, -120
  %1081 = add i64 %1076, 6
  store i64 %1081, i64* %3, align 8
  %1082 = inttoptr i64 %1080 to i32*
  %1083 = load i32, i32* %1082, align 4
  %1084 = zext i32 %1083 to i64
  store i64 %1084, i64* %RSI.i874, align 8
  %1085 = add i64 %1076, 8
  store i64 %1085, i64* %3, align 8
  %1086 = sext i32 %1083 to i64
  %1087 = shl nuw i64 %1078, 32
  %1088 = or i64 %1087, %1075
  %1089 = sdiv i64 %1088, %1086
  %1090 = shl i64 %1089, 32
  %1091 = ashr exact i64 %1090, 32
  %1092 = icmp eq i64 %1089, %1091
  br i1 %1092, label %1095, label %1093

; <label>:1093:                                   ; preds = %block_.L_4298c6
  %1094 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %1085, %struct.Memory* %MEMORY.4)
  %.pre87 = load i64, i64* %RBP.i, align 8
  %.pre88 = load i32, i32* %99, align 4
  %.pre89 = load i64, i64* %3, align 8
  br label %routine_idivl__esi.exit656

; <label>:1095:                                   ; preds = %block_.L_4298c6
  %1096 = srem i64 %1088, %1086
  %1097 = and i64 %1089, 4294967295
  store i64 %1097, i64* %RAX.i162, align 8
  %1098 = and i64 %1096, 4294967295
  store i64 %1098, i64* %RDX.i948.pre-phi, align 8
  store i8 0, i8* %14, align 1
  store i8 0, i8* %21, align 1
  store i8 0, i8* %27, align 1
  store i8 0, i8* %30, align 1
  store i8 0, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %1099 = trunc i64 %1089 to i32
  br label %routine_idivl__esi.exit656

routine_idivl__esi.exit656:                       ; preds = %1095, %1093
  %1100 = phi i64 [ %.pre89, %1093 ], [ %1085, %1095 ]
  %1101 = phi i32 [ %.pre88, %1093 ], [ %1099, %1095 ]
  %1102 = phi i64 [ %.pre87, %1093 ], [ %1079, %1095 ]
  %1103 = phi %struct.Memory* [ %1094, %1093 ], [ %MEMORY.4, %1095 ]
  %1104 = add i64 %1102, -88
  %1105 = add i64 %1100, 3
  store i64 %1105, i64* %3, align 8
  %1106 = inttoptr i64 %1104 to i32*
  store i32 %1101, i32* %1106, align 4
  %1107 = load i64, i64* %RBP.i, align 8
  %1108 = add i64 %1107, -68
  %1109 = load i64, i64* %3, align 8
  %1110 = add i64 %1109, 4
  store i64 %1110, i64* %3, align 8
  %1111 = inttoptr i64 %1108 to i32*
  %1112 = load i32, i32* %1111, align 4
  %1113 = add i32 %1112, -1
  %1114 = icmp eq i32 %1112, 0
  %1115 = zext i1 %1114 to i8
  store i8 %1115, i8* %14, align 1
  %1116 = and i32 %1113, 255
  %1117 = tail call i32 @llvm.ctpop.i32(i32 %1116)
  %1118 = trunc i32 %1117 to i8
  %1119 = and i8 %1118, 1
  %1120 = xor i8 %1119, 1
  store i8 %1120, i8* %21, align 1
  %1121 = xor i32 %1113, %1112
  %1122 = lshr i32 %1121, 4
  %1123 = trunc i32 %1122 to i8
  %1124 = and i8 %1123, 1
  store i8 %1124, i8* %27, align 1
  %1125 = icmp eq i32 %1113, 0
  %1126 = zext i1 %1125 to i8
  store i8 %1126, i8* %30, align 1
  %1127 = lshr i32 %1113, 31
  %1128 = trunc i32 %1127 to i8
  store i8 %1128, i8* %33, align 1
  %1129 = lshr i32 %1112, 31
  %1130 = xor i32 %1127, %1129
  %1131 = add nuw nsw i32 %1130, %1129
  %1132 = icmp eq i32 %1131, 2
  %1133 = zext i1 %1132 to i8
  store i8 %1133, i8* %39, align 1
  %.v119 = select i1 %1125, i64 85, i64 10
  %1134 = add i64 %1109, %.v119
  store i64 %1134, i64* %3, align 8
  br i1 %1125, label %block_.L_429943, label %block_4298f8

block_4298f8:                                     ; preds = %routine_idivl__esi.exit656
  store i64 4096, i64* %RAX.i162, align 8
  %1135 = add i64 %1107, -60
  %1136 = add i64 %1134, 9
  store i64 %1136, i64* %3, align 8
  %1137 = inttoptr i64 %1135 to i32*
  %1138 = load i32, i32* %1137, align 4
  %1139 = sext i32 %1138 to i64
  store i64 %1139, i64* %RCX.i908, align 8
  %1140 = shl nsw i64 %1139, 2
  %1141 = add nsw i64 %1140, 8053104
  %1142 = add i64 %1134, 16
  store i64 %1142, i64* %3, align 8
  %1143 = inttoptr i64 %1141 to i32*
  %1144 = load i32, i32* %1143, align 4
  %1145 = zext i32 %1144 to i64
  store i64 %1145, i64* %RDX.i948.pre-phi, align 8
  %1146 = add i64 %1107, -80
  %1147 = add i64 %1134, 20
  store i64 %1147, i64* %3, align 8
  %1148 = inttoptr i64 %1146 to i32*
  %1149 = load i32, i32* %1148, align 4
  %1150 = sext i32 %1144 to i64
  %1151 = sext i32 %1149 to i64
  %1152 = mul nsw i64 %1151, %1150
  %1153 = trunc i64 %1152 to i32
  %1154 = and i64 %1152, 4294967295
  store i64 %1154, i64* %RDX.i948.pre-phi, align 8
  %1155 = shl i64 %1152, 32
  %1156 = ashr exact i64 %1155, 32
  %1157 = icmp ne i64 %1156, %1152
  %1158 = zext i1 %1157 to i8
  store i8 %1158, i8* %14, align 1
  %1159 = and i32 %1153, 255
  %1160 = tail call i32 @llvm.ctpop.i32(i32 %1159)
  %1161 = trunc i32 %1160 to i8
  %1162 = and i8 %1161, 1
  %1163 = xor i8 %1162, 1
  store i8 %1163, i8* %21, align 1
  store i8 0, i8* %27, align 1
  store i8 0, i8* %30, align 1
  %1164 = lshr i32 %1153, 31
  %1165 = trunc i32 %1164 to i8
  store i8 %1165, i8* %33, align 1
  store i8 %1158, i8* %39, align 1
  %1166 = add i64 %1134, 24
  store i64 %1166, i64* %3, align 8
  %1167 = load i32, i32* %1137, align 4
  %1168 = sext i32 %1167 to i64
  store i64 %1168, i64* %RCX.i908, align 8
  %1169 = shl nsw i64 %1168, 2
  %1170 = add nsw i64 %1169, 8053136
  %1171 = add i64 %1134, 31
  store i64 %1171, i64* %3, align 8
  %1172 = inttoptr i64 %1170 to i32*
  %1173 = load i32, i32* %1172, align 4
  %1174 = zext i32 %1173 to i64
  store i64 %1174, i64* %RSI.i874, align 8
  %1175 = add i64 %1107, -84
  %1176 = add i64 %1134, 35
  store i64 %1176, i64* %3, align 8
  %1177 = inttoptr i64 %1175 to i32*
  %1178 = load i32, i32* %1177, align 4
  %1179 = sext i32 %1173 to i64
  %1180 = sext i32 %1178 to i64
  %1181 = mul nsw i64 %1180, %1179
  %1182 = and i64 %1181, 4294967295
  store i64 %1182, i64* %RSI.i874, align 8
  %1183 = trunc i64 %1181 to i32
  %1184 = trunc i64 %1152 to i32
  %1185 = add i32 %1183, %1184
  %1186 = zext i32 %1185 to i64
  store i64 %1186, i64* %RDX.i948.pre-phi, align 8
  %1187 = icmp ult i32 %1185, %1184
  %1188 = icmp ult i32 %1185, %1183
  %1189 = or i1 %1187, %1188
  %1190 = zext i1 %1189 to i8
  store i8 %1190, i8* %14, align 1
  %1191 = and i32 %1185, 255
  %1192 = tail call i32 @llvm.ctpop.i32(i32 %1191)
  %1193 = trunc i32 %1192 to i8
  %1194 = and i8 %1193, 1
  %1195 = xor i8 %1194, 1
  store i8 %1195, i8* %21, align 1
  %1196 = xor i64 %1181, %1152
  %1197 = trunc i64 %1196 to i32
  %1198 = xor i32 %1197, %1185
  %1199 = lshr i32 %1198, 4
  %1200 = trunc i32 %1199 to i8
  %1201 = and i8 %1200, 1
  store i8 %1201, i8* %27, align 1
  %1202 = icmp eq i32 %1185, 0
  %1203 = zext i1 %1202 to i8
  store i8 %1203, i8* %30, align 1
  %1204 = lshr i32 %1185, 31
  %1205 = trunc i32 %1204 to i8
  store i8 %1205, i8* %33, align 1
  %1206 = lshr i32 %1184, 31
  %1207 = lshr i32 %1183, 31
  %1208 = xor i32 %1204, %1206
  %1209 = xor i32 %1204, %1207
  %1210 = add nuw nsw i32 %1208, %1209
  %1211 = icmp eq i32 %1210, 2
  %1212 = zext i1 %1211 to i8
  store i8 %1212, i8* %39, align 1
  %1213 = load i64, i64* %RBP.i, align 8
  %1214 = add i64 %1213, -96
  %1215 = add i64 %1134, 40
  store i64 %1215, i64* %3, align 8
  %1216 = inttoptr i64 %1214 to i32*
  store i32 %1185, i32* %1216, align 4
  %1217 = load i64, i64* %RBP.i, align 8
  %1218 = add i64 %1217, -96
  %1219 = load i64, i64* %3, align 8
  %1220 = add i64 %1219, 3
  store i64 %1220, i64* %3, align 8
  %1221 = inttoptr i64 %1218 to i32*
  %1222 = load i32, i32* %1221, align 4
  %1223 = zext i32 %1222 to i64
  store i64 %1223, i64* %RDX.i948.pre-phi, align 8
  %1224 = add i64 %1219, 7
  store i64 %1224, i64* %3, align 8
  %1225 = load i32, i32* %1221, align 4
  %1226 = sext i32 %1222 to i64
  %1227 = sext i32 %1225 to i64
  %1228 = mul nsw i64 %1227, %1226
  %1229 = trunc i64 %1228 to i32
  %1230 = and i64 %1228, 4294967295
  store i64 %1230, i64* %RDX.i948.pre-phi, align 8
  %1231 = shl i64 %1228, 32
  %1232 = ashr exact i64 %1231, 32
  %1233 = icmp ne i64 %1232, %1228
  %1234 = zext i1 %1233 to i8
  store i8 %1234, i8* %14, align 1
  %1235 = and i32 %1229, 255
  %1236 = tail call i32 @llvm.ctpop.i32(i32 %1235)
  %1237 = trunc i32 %1236 to i8
  %1238 = and i8 %1237, 1
  %1239 = xor i8 %1238, 1
  store i8 %1239, i8* %21, align 1
  store i8 0, i8* %27, align 1
  store i8 0, i8* %30, align 1
  %1240 = lshr i32 %1229, 31
  %1241 = trunc i32 %1240 to i8
  store i8 %1241, i8* %33, align 1
  store i8 %1234, i8* %39, align 1
  %1242 = add i64 %1217, -88
  %1243 = add i64 %1219, 11
  store i64 %1243, i64* %3, align 8
  %1244 = inttoptr i64 %1242 to i32*
  %1245 = load i32, i32* %1244, align 4
  %1246 = shl i64 %1228, 32
  %1247 = ashr exact i64 %1246, 32
  %1248 = sext i32 %1245 to i64
  %1249 = mul nsw i64 %1248, %1247
  %1250 = trunc i64 %1249 to i32
  %1251 = and i64 %1249, 4294967295
  store i64 %1251, i64* %RDX.i948.pre-phi, align 8
  %1252 = shl i64 %1249, 32
  %1253 = ashr exact i64 %1252, 32
  %1254 = icmp ne i64 %1253, %1249
  %1255 = zext i1 %1254 to i8
  store i8 %1255, i8* %14, align 1
  %1256 = and i32 %1250, 255
  %1257 = tail call i32 @llvm.ctpop.i32(i32 %1256)
  %1258 = trunc i32 %1257 to i8
  %1259 = and i8 %1258, 1
  %1260 = xor i8 %1259, 1
  store i8 %1260, i8* %21, align 1
  store i8 0, i8* %27, align 1
  store i8 0, i8* %30, align 1
  %1261 = lshr i32 %1250, 31
  %1262 = trunc i32 %1261 to i8
  store i8 %1262, i8* %33, align 1
  store i8 %1255, i8* %39, align 1
  %1263 = trunc i64 %1249 to i32
  %1264 = add i64 %1219, 14
  store i64 %1264, i64* %3, align 8
  store i32 %1263, i32* %1244, align 4
  %1265 = load i64, i64* %RBP.i, align 8
  %1266 = add i64 %1265, -64
  %1267 = load i64, i64* %3, align 8
  %1268 = add i64 %1267, 3
  store i64 %1268, i64* %3, align 8
  %1269 = inttoptr i64 %1266 to i32*
  %1270 = load i32, i32* %1269, align 4
  %1271 = zext i32 %1270 to i64
  store i64 %1271, i64* %RDX.i948.pre-phi, align 8
  %1272 = add i64 %1265, -88
  %1273 = add i64 %1267, 7
  store i64 %1273, i64* %3, align 8
  %1274 = inttoptr i64 %1272 to i32*
  %1275 = load i32, i32* %1274, align 4
  %1276 = sext i32 %1270 to i64
  %1277 = sext i32 %1275 to i64
  %1278 = mul nsw i64 %1277, %1276
  %1279 = trunc i64 %1278 to i32
  %1280 = and i64 %1278, 4294967295
  store i64 %1280, i64* %RDX.i948.pre-phi, align 8
  %1281 = shl i64 %1278, 32
  %1282 = ashr exact i64 %1281, 32
  %1283 = icmp ne i64 %1282, %1278
  %1284 = zext i1 %1283 to i8
  store i8 %1284, i8* %14, align 1
  %1285 = and i32 %1279, 255
  %1286 = tail call i32 @llvm.ctpop.i32(i32 %1285)
  %1287 = trunc i32 %1286 to i8
  %1288 = and i8 %1287, 1
  %1289 = xor i8 %1288, 1
  store i8 %1289, i8* %21, align 1
  store i8 0, i8* %27, align 1
  store i8 0, i8* %30, align 1
  %1290 = lshr i32 %1279, 31
  %1291 = trunc i32 %1290 to i8
  store i8 %1291, i8* %33, align 1
  store i8 %1284, i8* %39, align 1
  %1292 = add i64 %1265, -124
  %1293 = load i32, i32* %99, align 4
  %1294 = add i64 %1267, 10
  store i64 %1294, i64* %3, align 8
  %1295 = inttoptr i64 %1292 to i32*
  store i32 %1293, i32* %1295, align 4
  %1296 = load i32, i32* %EDX.i485, align 4
  %1297 = zext i32 %1296 to i64
  %1298 = load i64, i64* %3, align 8
  store i64 %1297, i64* %RAX.i162, align 8
  %1299 = sext i32 %1296 to i64
  %1300 = lshr i64 %1299, 32
  store i64 %1300, i64* %98, align 8
  %1301 = load i64, i64* %RBP.i, align 8
  %1302 = add i64 %1301, -124
  %1303 = add i64 %1298, 6
  store i64 %1303, i64* %3, align 8
  %1304 = inttoptr i64 %1302 to i32*
  %1305 = load i32, i32* %1304, align 4
  %1306 = zext i32 %1305 to i64
  store i64 %1306, i64* %RSI.i874, align 8
  %1307 = add i64 %1298, 8
  store i64 %1307, i64* %3, align 8
  %1308 = sext i32 %1305 to i64
  %1309 = shl nuw i64 %1300, 32
  %1310 = or i64 %1309, %1297
  %1311 = sdiv i64 %1310, %1308
  %1312 = shl i64 %1311, 32
  %1313 = ashr exact i64 %1312, 32
  %1314 = icmp eq i64 %1311, %1313
  br i1 %1314, label %1317, label %1315

; <label>:1315:                                   ; preds = %block_4298f8
  %1316 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %1307, %struct.Memory* %1103)
  %.pre90 = load i64, i64* %RBP.i, align 8
  %.pre91 = load i32, i32* %99, align 4
  %.pre92 = load i64, i64* %3, align 8
  br label %routine_idivl__esi.exit591

; <label>:1317:                                   ; preds = %block_4298f8
  %1318 = srem i64 %1310, %1308
  %1319 = and i64 %1311, 4294967295
  store i64 %1319, i64* %RAX.i162, align 8
  %1320 = and i64 %1318, 4294967295
  store i64 %1320, i64* %RDX.i948.pre-phi, align 8
  store i8 0, i8* %14, align 1
  store i8 0, i8* %21, align 1
  store i8 0, i8* %27, align 1
  store i8 0, i8* %30, align 1
  store i8 0, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %1321 = trunc i64 %1311 to i32
  br label %routine_idivl__esi.exit591

routine_idivl__esi.exit591:                       ; preds = %1317, %1315
  %1322 = phi i64 [ %.pre92, %1315 ], [ %1307, %1317 ]
  %1323 = phi i32 [ %.pre91, %1315 ], [ %1321, %1317 ]
  %1324 = phi i64 [ %.pre90, %1315 ], [ %1301, %1317 ]
  %1325 = phi %struct.Memory* [ %1316, %1315 ], [ %1103, %1317 ]
  %1326 = add i64 %1324, -88
  %1327 = add i64 %1322, 3
  store i64 %1327, i64* %3, align 8
  %1328 = inttoptr i64 %1326 to i32*
  store i32 %1323, i32* %1328, align 4
  %.pre93 = load i64, i64* %3, align 8
  %.pre94 = load i64, i64* %RBP.i, align 8
  br label %block_.L_429943

block_.L_429943:                                  ; preds = %routine_idivl__esi.exit591, %routine_idivl__esi.exit656
  %1329 = phi i64 [ %1107, %routine_idivl__esi.exit656 ], [ %.pre94, %routine_idivl__esi.exit591 ]
  %1330 = phi i64 [ %1134, %routine_idivl__esi.exit656 ], [ %.pre93, %routine_idivl__esi.exit591 ]
  %MEMORY.6 = phi %struct.Memory* [ %1103, %routine_idivl__esi.exit656 ], [ %1325, %routine_idivl__esi.exit591 ]
  %1331 = add i64 %1330, ptrtoint (%G_0xb969d__rip__type* @G_0xb969d__rip_ to i64)
  %1332 = add i64 %1330, 8
  store i64 %1332, i64* %3, align 8
  %1333 = inttoptr i64 %1331 to i64*
  %1334 = load i64, i64* %1333, align 8
  store i64 %1334, i64* %300, align 1
  store double 0.000000e+00, double* %302, align 1
  %1335 = add i64 %1329, -88
  %1336 = add i64 %1330, 13
  store i64 %1336, i64* %3, align 8
  %1337 = inttoptr i64 %1335 to i32*
  %1338 = load i32, i32* %1337, align 4
  %1339 = sitofp i32 %1338 to double
  store double %1339, double* %304, align 1
  %1340 = add i64 %1330, 17
  store i64 %1340, i64* %3, align 8
  %1341 = bitcast i64 %1334 to double
  %1342 = fcmp uno double %1341, %1339
  br i1 %1342, label %1343, label %1353

; <label>:1343:                                   ; preds = %block_.L_429943
  %1344 = fadd double %1339, %1341
  %1345 = bitcast double %1344 to i64
  %1346 = and i64 %1345, 9221120237041090560
  %1347 = icmp eq i64 %1346, 9218868437227405312
  %1348 = and i64 %1345, 2251799813685247
  %1349 = icmp ne i64 %1348, 0
  %1350 = and i1 %1347, %1349
  br i1 %1350, label %1351, label %1359

; <label>:1351:                                   ; preds = %1343
  %1352 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %1340, %struct.Memory* %MEMORY.6)
  %.pre95 = load i64, i64* %3, align 8
  br label %routine_ucomisd__xmm1___xmm0.exit577

; <label>:1353:                                   ; preds = %block_.L_429943
  %1354 = fcmp ogt double %1341, %1339
  br i1 %1354, label %1359, label %1355

; <label>:1355:                                   ; preds = %1353
  %1356 = fcmp olt double %1341, %1339
  br i1 %1356, label %1359, label %1357

; <label>:1357:                                   ; preds = %1355
  %1358 = fcmp oeq double %1341, %1339
  br i1 %1358, label %1359, label %1363

; <label>:1359:                                   ; preds = %1357, %1355, %1353, %1343
  %1360 = phi i8 [ 0, %1353 ], [ 0, %1355 ], [ 1, %1357 ], [ 1, %1343 ]
  %1361 = phi i8 [ 0, %1353 ], [ 0, %1355 ], [ 0, %1357 ], [ 1, %1343 ]
  %1362 = phi i8 [ 0, %1353 ], [ 1, %1355 ], [ 0, %1357 ], [ 1, %1343 ]
  store i8 %1360, i8* %30, align 1
  store i8 %1361, i8* %21, align 1
  store i8 %1362, i8* %14, align 1
  br label %1363

; <label>:1363:                                   ; preds = %1359, %1357
  store i8 0, i8* %39, align 1
  store i8 0, i8* %33, align 1
  store i8 0, i8* %27, align 1
  br label %routine_ucomisd__xmm1___xmm0.exit577

routine_ucomisd__xmm1___xmm0.exit577:             ; preds = %1363, %1351
  %1364 = phi i64 [ %.pre95, %1351 ], [ %1340, %1363 ]
  %1365 = phi %struct.Memory* [ %1352, %1351 ], [ %MEMORY.6, %1363 ]
  %1366 = load i8, i8* %14, align 1
  %1367 = icmp ne i8 %1366, 0
  %.v132 = select i1 %1367, i64 11, i64 6
  %1368 = add i64 %1364, %.v132
  store i64 %1368, i64* %3, align 8
  %cmpBr_429954 = icmp eq i8 %1366, 1
  br i1 %cmpBr_429954, label %block_.L_42995f, label %block_42995a

block_42995a:                                     ; preds = %routine_ucomisd__xmm1___xmm0.exit577
  %1369 = add i64 %1368, 109
  br label %block_.L_4299c7

block_.L_42995f:                                  ; preds = %routine_ucomisd__xmm1___xmm0.exit577
  %1370 = load i64, i64* %RBP.i, align 8
  %1371 = add i64 %1370, -44
  %1372 = add i64 %1368, 3
  store i64 %1372, i64* %3, align 8
  %1373 = inttoptr i64 %1371 to i32*
  %1374 = load i32, i32* %1373, align 4
  %1375 = zext i32 %1374 to i64
  store i64 %1375, i64* %RAX.i162, align 8
  %1376 = add i64 %1370, -60
  %1377 = add i64 %1368, 7
  store i64 %1377, i64* %3, align 8
  %1378 = inttoptr i64 %1376 to i32*
  %1379 = load i32, i32* %1378, align 4
  %1380 = sext i32 %1379 to i64
  store i64 %1380, i64* %RCX.i908, align 8
  %1381 = shl nsw i64 %1380, 2
  %1382 = add nsw i64 %1381, 8053168
  %1383 = add i64 %1368, 14
  store i64 %1383, i64* %3, align 8
  %1384 = inttoptr i64 %1382 to i32*
  %1385 = load i32, i32* %1384, align 4
  %1386 = add i32 %1385, %1374
  %1387 = zext i32 %1386 to i64
  store i64 %1387, i64* %RAX.i162, align 8
  %1388 = icmp ult i32 %1386, %1374
  %1389 = icmp ult i32 %1386, %1385
  %1390 = or i1 %1388, %1389
  %1391 = zext i1 %1390 to i8
  store i8 %1391, i8* %14, align 1
  %1392 = and i32 %1386, 255
  %1393 = tail call i32 @llvm.ctpop.i32(i32 %1392)
  %1394 = trunc i32 %1393 to i8
  %1395 = and i8 %1394, 1
  %1396 = xor i8 %1395, 1
  store i8 %1396, i8* %21, align 1
  %1397 = xor i32 %1385, %1374
  %1398 = xor i32 %1397, %1386
  %1399 = lshr i32 %1398, 4
  %1400 = trunc i32 %1399 to i8
  %1401 = and i8 %1400, 1
  store i8 %1401, i8* %27, align 1
  %1402 = icmp eq i32 %1386, 0
  %1403 = zext i1 %1402 to i8
  store i8 %1403, i8* %30, align 1
  %1404 = lshr i32 %1386, 31
  %1405 = trunc i32 %1404 to i8
  store i8 %1405, i8* %33, align 1
  %1406 = lshr i32 %1374, 31
  %1407 = lshr i32 %1385, 31
  %1408 = xor i32 %1404, %1406
  %1409 = xor i32 %1404, %1407
  %1410 = add nuw nsw i32 %1408, %1409
  %1411 = icmp eq i32 %1410, 2
  %1412 = zext i1 %1411 to i8
  store i8 %1412, i8* %39, align 1
  %1413 = sext i32 %1386 to i64
  store i64 %1413, i64* %RCX.i908, align 8
  %1414 = shl nsw i64 %1413, 2
  %1415 = add nsw i64 %1414, 11268976
  %1416 = add i64 %1368, 25
  store i64 %1416, i64* %3, align 8
  %1417 = inttoptr i64 %1415 to i32*
  %1418 = load i32, i32* %1417, align 4
  store i8 0, i8* %14, align 1
  %1419 = and i32 %1418, 255
  %1420 = tail call i32 @llvm.ctpop.i32(i32 %1419)
  %1421 = trunc i32 %1420 to i8
  %1422 = and i8 %1421, 1
  %1423 = xor i8 %1422, 1
  store i8 %1423, i8* %21, align 1
  store i8 0, i8* %27, align 1
  %1424 = icmp eq i32 %1418, 0
  %1425 = zext i1 %1424 to i8
  store i8 %1425, i8* %30, align 1
  %1426 = lshr i32 %1418, 31
  %1427 = trunc i32 %1426 to i8
  store i8 %1427, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %.v120 = select i1 %1424, i64 31, i64 65
  %1428 = add i64 %1368, %.v120
  store i64 %1428, i64* %3, align 8
  br i1 %1424, label %block_42997e, label %block_.L_4299a0

block_42997e:                                     ; preds = %block_.L_42995f
  %1429 = add i64 %1428, 3
  store i64 %1429, i64* %3, align 8
  %1430 = load i32, i32* %1373, align 4
  %1431 = zext i32 %1430 to i64
  store i64 %1431, i64* %RAX.i162, align 8
  %1432 = add i64 %1428, 7
  store i64 %1432, i64* %3, align 8
  %1433 = load i32, i32* %1378, align 4
  %1434 = sext i32 %1433 to i64
  store i64 %1434, i64* %RCX.i908, align 8
  %1435 = shl nsw i64 %1434, 2
  %1436 = add nsw i64 %1435, 8053168
  %1437 = add i64 %1428, 14
  store i64 %1437, i64* %3, align 8
  %1438 = inttoptr i64 %1436 to i32*
  %1439 = load i32, i32* %1438, align 4
  %1440 = add i32 %1439, %1430
  %1441 = zext i32 %1440 to i64
  store i64 %1441, i64* %RAX.i162, align 8
  %1442 = icmp ult i32 %1440, %1430
  %1443 = icmp ult i32 %1440, %1439
  %1444 = or i1 %1442, %1443
  %1445 = zext i1 %1444 to i8
  store i8 %1445, i8* %14, align 1
  %1446 = and i32 %1440, 255
  %1447 = tail call i32 @llvm.ctpop.i32(i32 %1446)
  %1448 = trunc i32 %1447 to i8
  %1449 = and i8 %1448, 1
  %1450 = xor i8 %1449, 1
  store i8 %1450, i8* %21, align 1
  %1451 = xor i32 %1439, %1430
  %1452 = xor i32 %1451, %1440
  %1453 = lshr i32 %1452, 4
  %1454 = trunc i32 %1453 to i8
  %1455 = and i8 %1454, 1
  store i8 %1455, i8* %27, align 1
  %1456 = icmp eq i32 %1440, 0
  %1457 = zext i1 %1456 to i8
  store i8 %1457, i8* %30, align 1
  %1458 = lshr i32 %1440, 31
  %1459 = trunc i32 %1458 to i8
  store i8 %1459, i8* %33, align 1
  %1460 = lshr i32 %1430, 31
  %1461 = lshr i32 %1439, 31
  %1462 = xor i32 %1458, %1460
  %1463 = xor i32 %1458, %1461
  %1464 = add nuw nsw i32 %1462, %1463
  %1465 = icmp eq i32 %1464, 2
  %1466 = zext i1 %1465 to i8
  store i8 %1466, i8* %39, align 1
  %1467 = add i64 %1370, -72
  %1468 = add i64 %1428, 18
  store i64 %1468, i64* %3, align 8
  %1469 = inttoptr i64 %1467 to i32*
  %1470 = load i32, i32* %1469, align 4
  %1471 = sext i32 %1470 to i64
  store i64 %1471, i64* %RCX.i908, align 8
  %1472 = shl nsw i64 %1471, 2
  %1473 = add nsw i64 %1472, 11270576
  %1474 = add i64 %1428, 25
  store i64 %1474, i64* %3, align 8
  %1475 = inttoptr i64 %1473 to i32*
  store i32 %1440, i32* %1475, align 4
  %1476 = load i64, i64* %RBP.i, align 8
  %1477 = add i64 %1476, -72
  %1478 = load i64, i64* %3, align 8
  %1479 = add i64 %1478, 3
  store i64 %1479, i64* %3, align 8
  %1480 = inttoptr i64 %1477 to i32*
  %1481 = load i32, i32* %1480, align 4
  %1482 = add i32 %1481, 1
  %1483 = zext i32 %1482 to i64
  store i64 %1483, i64* %RAX.i162, align 8
  %1484 = icmp eq i32 %1481, -1
  %1485 = icmp eq i32 %1482, 0
  %1486 = or i1 %1484, %1485
  %1487 = zext i1 %1486 to i8
  store i8 %1487, i8* %14, align 1
  %1488 = and i32 %1482, 255
  %1489 = tail call i32 @llvm.ctpop.i32(i32 %1488)
  %1490 = trunc i32 %1489 to i8
  %1491 = and i8 %1490, 1
  %1492 = xor i8 %1491, 1
  store i8 %1492, i8* %21, align 1
  %1493 = xor i32 %1482, %1481
  %1494 = lshr i32 %1493, 4
  %1495 = trunc i32 %1494 to i8
  %1496 = and i8 %1495, 1
  store i8 %1496, i8* %27, align 1
  %1497 = zext i1 %1485 to i8
  store i8 %1497, i8* %30, align 1
  %1498 = lshr i32 %1482, 31
  %1499 = trunc i32 %1498 to i8
  store i8 %1499, i8* %33, align 1
  %1500 = lshr i32 %1481, 31
  %1501 = xor i32 %1498, %1500
  %1502 = add nuw nsw i32 %1501, %1498
  %1503 = icmp eq i32 %1502, 2
  %1504 = zext i1 %1503 to i8
  store i8 %1504, i8* %39, align 1
  %1505 = add i64 %1478, 9
  store i64 %1505, i64* %3, align 8
  store i32 %1482, i32* %1480, align 4
  %.pre96 = load i64, i64* %RBP.i, align 8
  %.pre97 = load i64, i64* %3, align 8
  br label %block_.L_4299a0

block_.L_4299a0:                                  ; preds = %block_.L_42995f, %block_42997e
  %1506 = phi i64 [ %.pre97, %block_42997e ], [ %1428, %block_.L_42995f ]
  %1507 = phi i64 [ %.pre96, %block_42997e ], [ %1370, %block_.L_42995f ]
  %1508 = add i64 %1507, -88
  %1509 = add i64 %1506, 3
  store i64 %1509, i64* %3, align 8
  %1510 = inttoptr i64 %1508 to i32*
  %1511 = load i32, i32* %1510, align 4
  %1512 = zext i32 %1511 to i64
  store i64 %1512, i64* %RAX.i162, align 8
  %1513 = add i64 %1507, -44
  %1514 = add i64 %1506, 6
  store i64 %1514, i64* %3, align 8
  %1515 = inttoptr i64 %1513 to i32*
  %1516 = load i32, i32* %1515, align 4
  %1517 = zext i32 %1516 to i64
  store i64 %1517, i64* %RCX.i908, align 8
  %1518 = add i64 %1507, -60
  %1519 = add i64 %1506, 10
  store i64 %1519, i64* %3, align 8
  %1520 = inttoptr i64 %1518 to i32*
  %1521 = load i32, i32* %1520, align 4
  %1522 = sext i32 %1521 to i64
  store i64 %1522, i64* %RDX.i948.pre-phi, align 8
  %1523 = shl nsw i64 %1522, 2
  %1524 = add nsw i64 %1523, 8053168
  %1525 = add i64 %1506, 17
  store i64 %1525, i64* %3, align 8
  %1526 = inttoptr i64 %1524 to i32*
  %1527 = load i32, i32* %1526, align 4
  %1528 = add i32 %1527, %1516
  %1529 = zext i32 %1528 to i64
  store i64 %1529, i64* %RCX.i908, align 8
  %1530 = icmp ult i32 %1528, %1516
  %1531 = icmp ult i32 %1528, %1527
  %1532 = or i1 %1530, %1531
  %1533 = zext i1 %1532 to i8
  store i8 %1533, i8* %14, align 1
  %1534 = and i32 %1528, 255
  %1535 = tail call i32 @llvm.ctpop.i32(i32 %1534)
  %1536 = trunc i32 %1535 to i8
  %1537 = and i8 %1536, 1
  %1538 = xor i8 %1537, 1
  store i8 %1538, i8* %21, align 1
  %1539 = xor i32 %1527, %1516
  %1540 = xor i32 %1539, %1528
  %1541 = lshr i32 %1540, 4
  %1542 = trunc i32 %1541 to i8
  %1543 = and i8 %1542, 1
  store i8 %1543, i8* %27, align 1
  %1544 = icmp eq i32 %1528, 0
  %1545 = zext i1 %1544 to i8
  store i8 %1545, i8* %30, align 1
  %1546 = lshr i32 %1528, 31
  %1547 = trunc i32 %1546 to i8
  store i8 %1547, i8* %33, align 1
  %1548 = lshr i32 %1516, 31
  %1549 = lshr i32 %1527, 31
  %1550 = xor i32 %1546, %1548
  %1551 = xor i32 %1546, %1549
  %1552 = add nuw nsw i32 %1550, %1551
  %1553 = icmp eq i32 %1552, 2
  %1554 = zext i1 %1553 to i8
  store i8 %1554, i8* %39, align 1
  %1555 = sext i32 %1528 to i64
  store i64 %1555, i64* %RDX.i948.pre-phi, align 8
  %1556 = shl nsw i64 %1555, 2
  %1557 = add nsw i64 %1556, 11268976
  %1558 = add i64 %1506, 27
  store i64 %1558, i64* %3, align 8
  %1559 = inttoptr i64 %1557 to i32*
  %1560 = load i32, i32* %1559, align 4
  %1561 = add i32 %1560, %1511
  %1562 = zext i32 %1561 to i64
  store i64 %1562, i64* %RAX.i162, align 8
  %1563 = icmp ult i32 %1561, %1511
  %1564 = icmp ult i32 %1561, %1560
  %1565 = or i1 %1563, %1564
  %1566 = zext i1 %1565 to i8
  store i8 %1566, i8* %14, align 1
  %1567 = and i32 %1561, 255
  %1568 = tail call i32 @llvm.ctpop.i32(i32 %1567)
  %1569 = trunc i32 %1568 to i8
  %1570 = and i8 %1569, 1
  %1571 = xor i8 %1570, 1
  store i8 %1571, i8* %21, align 1
  %1572 = xor i32 %1560, %1511
  %1573 = xor i32 %1572, %1561
  %1574 = lshr i32 %1573, 4
  %1575 = trunc i32 %1574 to i8
  %1576 = and i8 %1575, 1
  store i8 %1576, i8* %27, align 1
  %1577 = icmp eq i32 %1561, 0
  %1578 = zext i1 %1577 to i8
  store i8 %1578, i8* %30, align 1
  %1579 = lshr i32 %1561, 31
  %1580 = trunc i32 %1579 to i8
  store i8 %1580, i8* %33, align 1
  %1581 = lshr i32 %1511, 31
  %1582 = lshr i32 %1560, 31
  %1583 = xor i32 %1579, %1581
  %1584 = xor i32 %1579, %1582
  %1585 = add nuw nsw i32 %1583, %1584
  %1586 = icmp eq i32 %1585, 2
  %1587 = zext i1 %1586 to i8
  store i8 %1587, i8* %39, align 1
  %1588 = add i64 %1506, 34
  store i64 %1588, i64* %3, align 8
  store i32 %1561, i32* %1559, align 4
  %.pre98 = load i64, i64* %3, align 8
  br label %block_.L_4299c2

block_.L_4299c2:                                  ; preds = %block_4298bc, %block_42986f, %block_.L_4299a0
  %1589 = phi i64 [ %934, %block_42986f ], [ %.pre98, %block_.L_4299a0 ], [ %1023, %block_4298bc ]
  %MEMORY.8 = phi %struct.Memory* [ %MEMORY.4, %block_42986f ], [ %1365, %block_.L_4299a0 ], [ %MEMORY.4, %block_4298bc ]
  %1590 = add i64 %1589, 5
  store i64 %1590, i64* %3, align 8
  br label %block_.L_4299c7

block_.L_4299c7:                                  ; preds = %block_.L_4299c2, %block_42995a
  %storemerge = phi i64 [ %1369, %block_42995a ], [ %1590, %block_.L_4299c2 ]
  %MEMORY.9 = phi %struct.Memory* [ %1365, %block_42995a ], [ %MEMORY.8, %block_.L_4299c2 ]
  %1591 = add i64 %storemerge, 5
  store i64 %1591, i64* %3, align 8
  %.pre99 = load i64, i64* %RBP.i, align 8
  br label %block_.L_4299cc

block_.L_4299cc:                                  ; preds = %block_.L_4299c7, %block_42984d
  %1592 = phi i64 [ %786, %block_42984d ], [ %.pre99, %block_.L_4299c7 ]
  %1593 = phi i64 [ %878, %block_42984d ], [ %1591, %block_.L_4299c7 ]
  %MEMORY.10 = phi %struct.Memory* [ %MEMORY.4, %block_42984d ], [ %MEMORY.9, %block_.L_4299c7 ]
  %1594 = add i64 %1592, -60
  %1595 = add i64 %1593, 8
  store i64 %1595, i64* %3, align 8
  %1596 = inttoptr i64 %1594 to i32*
  %1597 = load i32, i32* %1596, align 4
  %1598 = add i32 %1597, 1
  %1599 = zext i32 %1598 to i64
  store i64 %1599, i64* %RAX.i162, align 8
  %1600 = icmp eq i32 %1597, -1
  %1601 = icmp eq i32 %1598, 0
  %1602 = or i1 %1600, %1601
  %1603 = zext i1 %1602 to i8
  store i8 %1603, i8* %14, align 1
  %1604 = and i32 %1598, 255
  %1605 = tail call i32 @llvm.ctpop.i32(i32 %1604)
  %1606 = trunc i32 %1605 to i8
  %1607 = and i8 %1606, 1
  %1608 = xor i8 %1607, 1
  store i8 %1608, i8* %21, align 1
  %1609 = xor i32 %1598, %1597
  %1610 = lshr i32 %1609, 4
  %1611 = trunc i32 %1610 to i8
  %1612 = and i8 %1611, 1
  store i8 %1612, i8* %27, align 1
  %1613 = zext i1 %1601 to i8
  store i8 %1613, i8* %30, align 1
  %1614 = lshr i32 %1598, 31
  %1615 = trunc i32 %1614 to i8
  store i8 %1615, i8* %33, align 1
  %1616 = lshr i32 %1597, 31
  %1617 = xor i32 %1614, %1616
  %1618 = add nuw nsw i32 %1617, %1614
  %1619 = icmp eq i32 %1618, 2
  %1620 = zext i1 %1619 to i8
  store i8 %1620, i8* %39, align 1
  %1621 = add i64 %1593, 14
  store i64 %1621, i64* %3, align 8
  store i32 %1598, i32* %1596, align 4
  %1622 = load i64, i64* %3, align 8
  %1623 = add i64 %1622, -407
  store i64 %1623, i64* %3, align 8
  br label %block_.L_429843

block_.L_4299df:                                  ; preds = %block_.L_429843
  store i64 4096, i64* %RAX.i162, align 8
  store i64 2, i64* %RCX.i908, align 8
  %1624 = add i64 %786, -64
  %1625 = add i64 %814, 13
  store i64 %1625, i64* %3, align 8
  %1626 = inttoptr i64 %1624 to i32*
  %1627 = load i32, i32* %1626, align 4
  %1628 = zext i32 %1627 to i64
  store i64 %1628, i64* %RDX.i948.pre-phi, align 8
  %1629 = add i64 %786, -128
  %1630 = add i64 %814, 16
  store i64 %1630, i64* %3, align 8
  %1631 = inttoptr i64 %1629 to i32*
  store i32 4096, i32* %1631, align 4
  %1632 = load i32, i32* %EDX.i485, align 4
  %1633 = zext i32 %1632 to i64
  %1634 = load i64, i64* %3, align 8
  store i64 %1633, i64* %RAX.i162, align 8
  %1635 = sext i32 %1632 to i64
  %1636 = lshr i64 %1635, 32
  store i64 %1636, i64* %98, align 8
  %1637 = load i32, i32* %ECX.i579, align 4
  %1638 = add i64 %1634, 5
  store i64 %1638, i64* %3, align 8
  %1639 = sext i32 %1637 to i64
  %1640 = shl nuw i64 %1636, 32
  %1641 = or i64 %1640, %1633
  %1642 = sdiv i64 %1641, %1639
  %1643 = shl i64 %1642, 32
  %1644 = ashr exact i64 %1643, 32
  %1645 = icmp eq i64 %1642, %1644
  br i1 %1645, label %1648, label %1646

; <label>:1646:                                   ; preds = %block_.L_4299df
  %1647 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %1638, %struct.Memory* %MEMORY.4)
  %.pre62 = load i32, i32* %99, align 4
  %.pre63 = load i64, i64* %3, align 8
  br label %routine_idivl__ecx.exit483

; <label>:1648:                                   ; preds = %block_.L_4299df
  %1649 = srem i64 %1641, %1639
  %1650 = and i64 %1642, 4294967295
  store i64 %1650, i64* %RAX.i162, align 8
  %1651 = and i64 %1649, 4294967295
  store i64 %1651, i64* %RDX.i948.pre-phi, align 8
  store i8 0, i8* %14, align 1
  store i8 0, i8* %21, align 1
  store i8 0, i8* %27, align 1
  store i8 0, i8* %30, align 1
  store i8 0, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %1652 = trunc i64 %1642 to i32
  br label %routine_idivl__ecx.exit483

routine_idivl__ecx.exit483:                       ; preds = %1648, %1646
  %1653 = phi i64 [ %.pre63, %1646 ], [ %1638, %1648 ]
  %1654 = phi i32 [ %.pre62, %1646 ], [ %1652, %1648 ]
  %1655 = phi %struct.Memory* [ %1647, %1646 ], [ %MEMORY.4, %1648 ]
  %1656 = load i64, i64* %RBP.i, align 8
  %1657 = add i64 %1656, -64
  %1658 = add i64 %1653, 3
  store i64 %1658, i64* %3, align 8
  %1659 = inttoptr i64 %1657 to i32*
  store i32 %1654, i32* %1659, align 4
  %1660 = load i64, i64* %RBP.i, align 8
  %1661 = add i64 %1660, -76
  %1662 = load i64, i64* %3, align 8
  %1663 = add i64 %1662, 3
  store i64 %1663, i64* %3, align 8
  %1664 = inttoptr i64 %1661 to i32*
  %1665 = load i32, i32* %1664, align 4
  %1666 = zext i32 %1665 to i64
  store i64 %1666, i64* %RAX.i162, align 8
  %1667 = add i64 %1660, -16
  %1668 = add i64 %1662, 7
  store i64 %1668, i64* %3, align 8
  %1669 = inttoptr i64 %1667 to i32*
  %1670 = load i32, i32* %1669, align 4
  %1671 = sext i32 %1665 to i64
  %1672 = sext i32 %1670 to i64
  %1673 = mul nsw i64 %1672, %1671
  %1674 = trunc i64 %1673 to i32
  %1675 = and i64 %1673, 4294967295
  store i64 %1675, i64* %RAX.i162, align 8
  %1676 = shl i64 %1673, 32
  %1677 = ashr exact i64 %1676, 32
  %1678 = icmp ne i64 %1677, %1673
  %1679 = zext i1 %1678 to i8
  store i8 %1679, i8* %14, align 1
  %1680 = and i32 %1674, 255
  %1681 = tail call i32 @llvm.ctpop.i32(i32 %1680)
  %1682 = trunc i32 %1681 to i8
  %1683 = and i8 %1682, 1
  %1684 = xor i8 %1683, 1
  store i8 %1684, i8* %21, align 1
  store i8 0, i8* %27, align 1
  store i8 0, i8* %30, align 1
  %1685 = lshr i32 %1674, 31
  %1686 = trunc i32 %1685 to i8
  store i8 %1686, i8* %33, align 1
  store i8 %1679, i8* %39, align 1
  %sext = shl i64 %1673, 32
  %1687 = ashr exact i64 %sext, 32
  %1688 = lshr i64 %1687, 32
  store i64 %1688, i64* %98, align 8
  %1689 = add i64 %1660, -128
  %1690 = add i64 %1662, 11
  store i64 %1690, i64* %3, align 8
  %1691 = inttoptr i64 %1689 to i32*
  %1692 = load i32, i32* %1691, align 4
  %1693 = zext i32 %1692 to i64
  store i64 %1693, i64* %RCX.i908, align 8
  %1694 = add i64 %1662, 13
  store i64 %1694, i64* %3, align 8
  %1695 = and i64 %1673, 4294967295
  %1696 = sext i32 %1692 to i64
  %1697 = shl nuw i64 %1688, 32
  %1698 = or i64 %1697, %1695
  %1699 = sdiv i64 %1698, %1696
  %1700 = shl i64 %1699, 32
  %1701 = ashr exact i64 %1700, 32
  %1702 = icmp eq i64 %1699, %1701
  br i1 %1702, label %1705, label %1703

; <label>:1703:                                   ; preds = %routine_idivl__ecx.exit483
  %1704 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %1694, %struct.Memory* %1655)
  %.pre64 = load i64, i64* %RBP.i, align 8
  %.pre65 = load i32, i32* %99, align 4
  %.pre66 = load i64, i64* %3, align 8
  br label %routine_idivl__ecx.exit464

; <label>:1705:                                   ; preds = %routine_idivl__ecx.exit483
  %1706 = srem i64 %1698, %1696
  %1707 = and i64 %1699, 4294967295
  store i64 %1707, i64* %RAX.i162, align 8
  %1708 = and i64 %1706, 4294967295
  store i64 %1708, i64* %RDX.i948.pre-phi, align 8
  store i8 0, i8* %14, align 1
  store i8 0, i8* %21, align 1
  store i8 0, i8* %27, align 1
  store i8 0, i8* %30, align 1
  store i8 0, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %1709 = trunc i64 %1699 to i32
  br label %routine_idivl__ecx.exit464

routine_idivl__ecx.exit464:                       ; preds = %1705, %1703
  %1710 = phi i64 [ %.pre66, %1703 ], [ %1694, %1705 ]
  %1711 = phi i32 [ %.pre65, %1703 ], [ %1709, %1705 ]
  %1712 = phi i64 [ %.pre64, %1703 ], [ %1660, %1705 ]
  %1713 = phi %struct.Memory* [ %1704, %1703 ], [ %1655, %1705 ]
  %1714 = add i64 %1712, -76
  %1715 = add i64 %1710, 3
  store i64 %1715, i64* %3, align 8
  %1716 = inttoptr i64 %1714 to i32*
  store i32 %1711, i32* %1716, align 4
  %.pre67 = load i64, i64* %3, align 8
  br label %block_.L_429a07

block_.L_429a07:                                  ; preds = %block_.L_429c60, %routine_idivl__ecx.exit464
  %1717 = phi i64 [ %.pre67, %routine_idivl__ecx.exit464 ], [ %2880, %block_.L_429c60 ]
  %MEMORY.11 = phi %struct.Memory* [ %1713, %routine_idivl__ecx.exit464 ], [ %MEMORY.18, %block_.L_429c60 ]
  %1718 = load i64, i64* %RBP.i, align 8
  %1719 = add i64 %1718, -60
  %1720 = add i64 %1717, 4
  store i64 %1720, i64* %3, align 8
  %1721 = inttoptr i64 %1719 to i32*
  %1722 = load i32, i32* %1721, align 4
  %1723 = add i32 %1722, -8
  %1724 = icmp ult i32 %1722, 8
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
  store i8 %1734, i8* %27, align 1
  %1735 = icmp eq i32 %1723, 0
  %1736 = zext i1 %1735 to i8
  store i8 %1736, i8* %30, align 1
  %1737 = lshr i32 %1723, 31
  %1738 = trunc i32 %1737 to i8
  store i8 %1738, i8* %33, align 1
  %1739 = lshr i32 %1722, 31
  %1740 = xor i32 %1737, %1739
  %1741 = add nuw nsw i32 %1740, %1739
  %1742 = icmp eq i32 %1741, 2
  %1743 = zext i1 %1742 to i8
  store i8 %1743, i8* %39, align 1
  %1744 = icmp ne i8 %1738, 0
  %1745 = xor i1 %1744, %1742
  %.v100 = select i1 %1745, i64 10, i64 620
  %1746 = add i64 %1717, %.v100
  store i64 %1746, i64* %3, align 8
  br i1 %1745, label %block_429a11, label %block_.L_429c73

block_429a11:                                     ; preds = %block_.L_429a07
  %1747 = add i64 %1718, -44
  %1748 = add i64 %1746, 3
  store i64 %1748, i64* %3, align 8
  %1749 = inttoptr i64 %1747 to i32*
  %1750 = load i32, i32* %1749, align 4
  %1751 = zext i32 %1750 to i64
  store i64 %1751, i64* %RAX.i162, align 8
  %1752 = add i64 %1746, 7
  store i64 %1752, i64* %3, align 8
  %1753 = load i32, i32* %1721, align 4
  %1754 = sext i32 %1753 to i64
  store i64 %1754, i64* %RCX.i908, align 8
  %1755 = shl nsw i64 %1754, 2
  %1756 = add nsw i64 %1755, 8053168
  %1757 = add i64 %1746, 14
  store i64 %1757, i64* %3, align 8
  %1758 = inttoptr i64 %1756 to i32*
  %1759 = load i32, i32* %1758, align 4
  %1760 = add i32 %1759, %1750
  %1761 = zext i32 %1760 to i64
  store i64 %1761, i64* %RAX.i162, align 8
  %1762 = icmp ult i32 %1760, %1750
  %1763 = icmp ult i32 %1760, %1759
  %1764 = or i1 %1762, %1763
  %1765 = zext i1 %1764 to i8
  store i8 %1765, i8* %14, align 1
  %1766 = and i32 %1760, 255
  %1767 = tail call i32 @llvm.ctpop.i32(i32 %1766)
  %1768 = trunc i32 %1767 to i8
  %1769 = and i8 %1768, 1
  %1770 = xor i8 %1769, 1
  store i8 %1770, i8* %21, align 1
  %1771 = xor i32 %1759, %1750
  %1772 = xor i32 %1771, %1760
  %1773 = lshr i32 %1772, 4
  %1774 = trunc i32 %1773 to i8
  %1775 = and i8 %1774, 1
  store i8 %1775, i8* %27, align 1
  %1776 = icmp eq i32 %1760, 0
  %1777 = zext i1 %1776 to i8
  store i8 %1777, i8* %30, align 1
  %1778 = lshr i32 %1760, 31
  %1779 = trunc i32 %1778 to i8
  store i8 %1779, i8* %33, align 1
  %1780 = lshr i32 %1750, 31
  %1781 = lshr i32 %1759, 31
  %1782 = xor i32 %1778, %1780
  %1783 = xor i32 %1778, %1781
  %1784 = add nuw nsw i32 %1782, %1783
  %1785 = icmp eq i32 %1784, 2
  %1786 = zext i1 %1785 to i8
  store i8 %1786, i8* %39, align 1
  %1787 = sext i32 %1760 to i64
  store i64 %1787, i64* %RCX.i908, align 8
  %1788 = add nsw i64 %1787, 12099168
  %1789 = add i64 %1746, 25
  store i64 %1789, i64* %3, align 8
  %1790 = inttoptr i64 %1788 to i8*
  %1791 = load i8, i8* %1790, align 1
  %1792 = zext i8 %1791 to i64
  store i64 %1792, i64* %RAX.i162, align 8
  %1793 = zext i8 %1791 to i32
  %1794 = add nsw i32 %1793, -3
  %1795 = icmp ult i8 %1791, 3
  %1796 = zext i1 %1795 to i8
  store i8 %1796, i8* %14, align 1
  %1797 = and i32 %1794, 255
  %1798 = tail call i32 @llvm.ctpop.i32(i32 %1797)
  %1799 = trunc i32 %1798 to i8
  %1800 = and i8 %1799, 1
  %1801 = xor i8 %1800, 1
  store i8 %1801, i8* %21, align 1
  %1802 = xor i32 %1794, %1793
  %1803 = lshr i32 %1802, 4
  %1804 = trunc i32 %1803 to i8
  %1805 = and i8 %1804, 1
  store i8 %1805, i8* %27, align 1
  %1806 = icmp eq i32 %1794, 0
  %1807 = zext i1 %1806 to i8
  store i8 %1807, i8* %30, align 1
  %1808 = lshr i32 %1794, 31
  %1809 = trunc i32 %1808 to i8
  store i8 %1809, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %.v = select i1 %1806, i64 591, i64 34
  %1810 = add i64 %1746, %.v
  store i64 %1810, i64* %3, align 8
  br i1 %1806, label %block_.L_429c60, label %block_429a33

block_429a33:                                     ; preds = %block_429a11
  %1811 = add i64 %1718, -32
  %1812 = add i64 %1810, 9
  store i64 %1812, i64* %3, align 8
  %1813 = inttoptr i64 %1811 to i64*
  %1814 = load i64, i64* %1813, align 8
  store i64 %1814, i64* %RAX.i162, align 8
  %1815 = add i64 %1810, 12
  store i64 %1815, i64* %3, align 8
  %1816 = load i32, i32* %1749, align 4
  %1817 = zext i32 %1816 to i64
  store i64 %1817, i64* %RCX.i908, align 8
  %1818 = add i64 %1810, 16
  store i64 %1818, i64* %3, align 8
  %1819 = load i32, i32* %1721, align 4
  %1820 = sext i32 %1819 to i64
  store i64 %1820, i64* %RDX.i948.pre-phi, align 8
  %1821 = shl nsw i64 %1820, 2
  %1822 = add nsw i64 %1821, 8053168
  %1823 = add i64 %1810, 23
  store i64 %1823, i64* %3, align 8
  %1824 = inttoptr i64 %1822 to i32*
  %1825 = load i32, i32* %1824, align 4
  %1826 = add i32 %1825, %1816
  %1827 = zext i32 %1826 to i64
  store i64 %1827, i64* %RCX.i908, align 8
  %1828 = icmp ult i32 %1826, %1816
  %1829 = icmp ult i32 %1826, %1825
  %1830 = or i1 %1828, %1829
  %1831 = zext i1 %1830 to i8
  store i8 %1831, i8* %14, align 1
  %1832 = and i32 %1826, 255
  %1833 = tail call i32 @llvm.ctpop.i32(i32 %1832)
  %1834 = trunc i32 %1833 to i8
  %1835 = and i8 %1834, 1
  %1836 = xor i8 %1835, 1
  store i8 %1836, i8* %21, align 1
  %1837 = xor i32 %1825, %1816
  %1838 = xor i32 %1837, %1826
  %1839 = lshr i32 %1838, 4
  %1840 = trunc i32 %1839 to i8
  %1841 = and i8 %1840, 1
  store i8 %1841, i8* %27, align 1
  %1842 = icmp eq i32 %1826, 0
  %1843 = zext i1 %1842 to i8
  store i8 %1843, i8* %30, align 1
  %1844 = lshr i32 %1826, 31
  %1845 = trunc i32 %1844 to i8
  store i8 %1845, i8* %33, align 1
  %1846 = lshr i32 %1816, 31
  %1847 = lshr i32 %1825, 31
  %1848 = xor i32 %1844, %1846
  %1849 = xor i32 %1844, %1847
  %1850 = add nuw nsw i32 %1848, %1849
  %1851 = icmp eq i32 %1850, 2
  %1852 = zext i1 %1851 to i8
  store i8 %1852, i8* %39, align 1
  %1853 = sext i32 %1826 to i64
  store i64 %1853, i64* %RDX.i948.pre-phi, align 8
  %1854 = add i64 %1814, %1853
  %1855 = add i64 %1810, 30
  store i64 %1855, i64* %3, align 8
  %1856 = inttoptr i64 %1854 to i8*
  %1857 = load i8, i8* %1856, align 1
  store i8 0, i8* %14, align 1
  %1858 = zext i8 %1857 to i32
  %1859 = tail call i32 @llvm.ctpop.i32(i32 %1858)
  %1860 = trunc i32 %1859 to i8
  %1861 = and i8 %1860, 1
  %1862 = xor i8 %1861, 1
  store i8 %1862, i8* %21, align 1
  store i8 0, i8* %27, align 1
  %1863 = icmp eq i8 %1857, 0
  %1864 = zext i1 %1863 to i8
  store i8 %1864, i8* %30, align 1
  %1865 = lshr i8 %1857, 7
  store i8 %1865, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %.v110 = select i1 %1863, i64 36, i64 547
  %1866 = add i64 %1810, %.v110
  store i64 %1866, i64* %3, align 8
  br i1 %1863, label %block_429a57, label %block_.L_429c56

block_429a57:                                     ; preds = %block_429a33
  %1867 = add i64 %1866, 4
  store i64 %1867, i64* %3, align 8
  %1868 = load i32, i32* %1721, align 4
  %1869 = sext i32 %1868 to i64
  store i64 %1869, i64* %RAX.i162, align 8
  %1870 = shl nsw i64 %1869, 2
  %1871 = add nsw i64 %1870, 8053104
  %1872 = add i64 %1866, 11
  store i64 %1872, i64* %3, align 8
  %1873 = inttoptr i64 %1871 to i32*
  %1874 = load i32, i32* %1873, align 4
  %1875 = zext i32 %1874 to i64
  store i64 %1875, i64* %RCX.i908, align 8
  %1876 = add i64 %1718, -80
  %1877 = add i64 %1866, 15
  store i64 %1877, i64* %3, align 8
  %1878 = inttoptr i64 %1876 to i32*
  %1879 = load i32, i32* %1878, align 4
  %1880 = sext i32 %1874 to i64
  %1881 = sext i32 %1879 to i64
  %1882 = mul nsw i64 %1881, %1880
  %1883 = trunc i64 %1882 to i32
  %1884 = and i64 %1882, 4294967295
  store i64 %1884, i64* %RCX.i908, align 8
  %1885 = shl i64 %1882, 32
  %1886 = ashr exact i64 %1885, 32
  %1887 = icmp ne i64 %1886, %1882
  %1888 = zext i1 %1887 to i8
  store i8 %1888, i8* %14, align 1
  %1889 = and i32 %1883, 255
  %1890 = tail call i32 @llvm.ctpop.i32(i32 %1889)
  %1891 = trunc i32 %1890 to i8
  %1892 = and i8 %1891, 1
  %1893 = xor i8 %1892, 1
  store i8 %1893, i8* %21, align 1
  store i8 0, i8* %27, align 1
  store i8 0, i8* %30, align 1
  %1894 = lshr i32 %1883, 31
  %1895 = trunc i32 %1894 to i8
  store i8 %1895, i8* %33, align 1
  store i8 %1888, i8* %39, align 1
  %1896 = add i64 %1866, 19
  store i64 %1896, i64* %3, align 8
  %1897 = load i32, i32* %1721, align 4
  %1898 = sext i32 %1897 to i64
  store i64 %1898, i64* %RAX.i162, align 8
  %1899 = shl nsw i64 %1898, 2
  %1900 = add nsw i64 %1899, 8053136
  %1901 = add i64 %1866, 26
  store i64 %1901, i64* %3, align 8
  %1902 = inttoptr i64 %1900 to i32*
  %1903 = load i32, i32* %1902, align 4
  %1904 = zext i32 %1903 to i64
  store i64 %1904, i64* %RDX.i948.pre-phi, align 8
  %1905 = add i64 %1718, -84
  %1906 = add i64 %1866, 30
  store i64 %1906, i64* %3, align 8
  %1907 = inttoptr i64 %1905 to i32*
  %1908 = load i32, i32* %1907, align 4
  %1909 = sext i32 %1903 to i64
  %1910 = sext i32 %1908 to i64
  %1911 = mul nsw i64 %1910, %1909
  %1912 = and i64 %1911, 4294967295
  store i64 %1912, i64* %RDX.i948.pre-phi, align 8
  %1913 = trunc i64 %1911 to i32
  %1914 = trunc i64 %1882 to i32
  %1915 = add i32 %1913, %1914
  %1916 = zext i32 %1915 to i64
  store i64 %1916, i64* %RCX.i908, align 8
  %1917 = and i32 %1915, 255
  %1918 = tail call i32 @llvm.ctpop.i32(i32 %1917)
  %1919 = trunc i32 %1918 to i8
  %1920 = and i8 %1919, 1
  %1921 = xor i8 %1920, 1
  %1922 = icmp eq i32 %1915, 0
  %1923 = zext i1 %1922 to i8
  %1924 = lshr i32 %1915, 31
  %1925 = trunc i32 %1924 to i8
  store i8 0, i8* %14, align 1
  store i8 %1921, i8* %21, align 1
  store i8 0, i8* %27, align 1
  store i8 %1923, i8* %30, align 1
  store i8 %1925, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %1926 = xor i1 %1922, true
  %1927 = icmp eq i8 %1925, 0
  %1928 = and i1 %1927, %1926
  %.v111 = select i1 %1928, i64 51, i64 41
  %1929 = add i64 %1866, %.v111
  store i64 %1929, i64* %3, align 8
  %.pre68 = load i64, i64* %RBP.i, align 8
  br i1 %1928, label %block_.L_429a8a, label %block_429a80

block_429a80:                                     ; preds = %block_429a57
  %1930 = add i64 %.pre68, -68
  %1931 = add i64 %1929, 4
  store i64 %1931, i64* %3, align 8
  %1932 = inttoptr i64 %1930 to i32*
  %1933 = load i32, i32* %1932, align 4
  %1934 = add i32 %1933, -1
  %1935 = icmp eq i32 %1933, 0
  %1936 = zext i1 %1935 to i8
  store i8 %1936, i8* %14, align 1
  %1937 = and i32 %1934, 255
  %1938 = tail call i32 @llvm.ctpop.i32(i32 %1937)
  %1939 = trunc i32 %1938 to i8
  %1940 = and i8 %1939, 1
  %1941 = xor i8 %1940, 1
  store i8 %1941, i8* %21, align 1
  %1942 = xor i32 %1934, %1933
  %1943 = lshr i32 %1942, 4
  %1944 = trunc i32 %1943 to i8
  %1945 = and i8 %1944, 1
  store i8 %1945, i8* %27, align 1
  %1946 = icmp eq i32 %1934, 0
  %1947 = zext i1 %1946 to i8
  store i8 %1947, i8* %30, align 1
  %1948 = lshr i32 %1934, 31
  %1949 = trunc i32 %1948 to i8
  store i8 %1949, i8* %33, align 1
  %1950 = lshr i32 %1933, 31
  %1951 = xor i32 %1948, %1950
  %1952 = add nuw nsw i32 %1951, %1950
  %1953 = icmp eq i32 %1952, 2
  %1954 = zext i1 %1953 to i8
  store i8 %1954, i8* %39, align 1
  %.v112 = select i1 %1946, i64 10, i64 470
  %1955 = add i64 %1929, %.v112
  store i64 %1955, i64* %3, align 8
  br i1 %1946, label %block_.L_429a8a, label %block_.L_429c56

block_.L_429a8a:                                  ; preds = %block_429a57, %block_429a80
  %1956 = phi i64 [ %1955, %block_429a80 ], [ %1929, %block_429a57 ]
  %1957 = add i64 %.pre68, -24
  %1958 = add i64 %1956, 4
  store i64 %1958, i64* %3, align 8
  %1959 = inttoptr i64 %1957 to i64*
  %1960 = load i64, i64* %1959, align 8
  store i64 %1960, i64* %RAX.i162, align 8
  %1961 = add i64 %.pre68, -44
  %1962 = add i64 %1956, 8
  store i64 %1962, i64* %3, align 8
  %1963 = inttoptr i64 %1961 to i32*
  %1964 = load i32, i32* %1963, align 4
  %1965 = sext i32 %1964 to i64
  store i64 %1965, i64* %RCX.i908, align 8
  %1966 = shl nsw i64 %1965, 2
  %1967 = add i64 %1966, %1960
  %1968 = add i64 %1956, 11
  store i64 %1968, i64* %3, align 8
  %1969 = inttoptr i64 %1967 to i32*
  %1970 = load i32, i32* %1969, align 4
  %1971 = zext i32 %1970 to i64
  store i64 %1971, i64* %RDX.i948.pre-phi, align 8
  %1972 = add i64 %.pre68, -104
  %1973 = add i64 %1956, 14
  store i64 %1973, i64* %3, align 8
  %1974 = inttoptr i64 %1972 to i32*
  store i32 %1970, i32* %1974, align 4
  %1975 = load i64, i64* %RBP.i, align 8
  %1976 = add i64 %1975, -104
  %1977 = load i64, i64* %3, align 8
  %1978 = add i64 %1977, 3
  store i64 %1978, i64* %3, align 8
  %1979 = inttoptr i64 %1976 to i32*
  %1980 = load i32, i32* %1979, align 4
  %1981 = zext i32 %1980 to i64
  store i64 %1981, i64* %RDX.i948.pre-phi, align 8
  %1982 = add i64 %1975, -24
  %1983 = add i64 %1977, 7
  store i64 %1983, i64* %3, align 8
  %1984 = inttoptr i64 %1982 to i64*
  %1985 = load i64, i64* %1984, align 8
  store i64 %1985, i64* %RAX.i162, align 8
  %1986 = add i64 %1975, -44
  %1987 = add i64 %1977, 10
  store i64 %1987, i64* %3, align 8
  %1988 = inttoptr i64 %1986 to i32*
  %1989 = load i32, i32* %1988, align 4
  %1990 = zext i32 %1989 to i64
  store i64 %1990, i64* %RSI.i874, align 8
  %1991 = add i64 %1975, -60
  %1992 = add i64 %1977, 14
  store i64 %1992, i64* %3, align 8
  %1993 = inttoptr i64 %1991 to i32*
  %1994 = load i32, i32* %1993, align 4
  %1995 = sext i32 %1994 to i64
  store i64 %1995, i64* %RCX.i908, align 8
  %1996 = shl nsw i64 %1995, 2
  %1997 = add nsw i64 %1996, 8053104
  %1998 = add i64 %1977, 22
  store i64 %1998, i64* %3, align 8
  %1999 = inttoptr i64 %1997 to i32*
  %2000 = load i32, i32* %1999, align 4
  %2001 = sext i32 %2000 to i64
  %2002 = mul nsw i64 %2001, 20
  %2003 = and i64 %2002, 4294967292
  %2004 = trunc i64 %2002 to i32
  store i64 %2003, i64* %RDI.i829, align 8
  %2005 = lshr i32 %2004, 31
  %2006 = add i32 %2004, %1989
  %2007 = zext i32 %2006 to i64
  store i64 %2007, i64* %RSI.i874, align 8
  %2008 = icmp ult i32 %2006, %1989
  %2009 = icmp ult i32 %2006, %2004
  %2010 = or i1 %2008, %2009
  %2011 = zext i1 %2010 to i8
  store i8 %2011, i8* %14, align 1
  %2012 = and i32 %2006, 255
  %2013 = tail call i32 @llvm.ctpop.i32(i32 %2012)
  %2014 = trunc i32 %2013 to i8
  %2015 = and i8 %2014, 1
  %2016 = xor i8 %2015, 1
  store i8 %2016, i8* %21, align 1
  %2017 = xor i64 %2002, %1990
  %2018 = trunc i64 %2017 to i32
  %2019 = xor i32 %2018, %2006
  %2020 = lshr i32 %2019, 4
  %2021 = trunc i32 %2020 to i8
  %2022 = and i8 %2021, 1
  store i8 %2022, i8* %27, align 1
  %2023 = icmp eq i32 %2006, 0
  %2024 = zext i1 %2023 to i8
  store i8 %2024, i8* %30, align 1
  %2025 = lshr i32 %2006, 31
  %2026 = trunc i32 %2025 to i8
  store i8 %2026, i8* %33, align 1
  %2027 = lshr i32 %1989, 31
  %2028 = xor i32 %2025, %2027
  %2029 = xor i32 %2025, %2005
  %2030 = add nuw nsw i32 %2028, %2029
  %2031 = icmp eq i32 %2030, 2
  %2032 = zext i1 %2031 to i8
  store i8 %2032, i8* %39, align 1
  %2033 = sext i32 %2006 to i64
  store i64 %2033, i64* %RCX.i908, align 8
  %2034 = load i64, i64* %RAX.i162, align 8
  %2035 = shl nsw i64 %2033, 2
  %2036 = add i64 %2034, %2035
  %2037 = add i64 %1977, 33
  store i64 %2037, i64* %3, align 8
  %2038 = inttoptr i64 %2036 to i32*
  %2039 = load i32, i32* %2038, align 4
  %2040 = zext i32 %2039 to i64
  store i64 %2040, i64* %RSI.i874, align 8
  %2041 = load i64, i64* %RBP.i, align 8
  %2042 = add i64 %2041, -24
  %2043 = add i64 %1977, 37
  store i64 %2043, i64* %3, align 8
  %2044 = inttoptr i64 %2042 to i64*
  %2045 = load i64, i64* %2044, align 8
  store i64 %2045, i64* %RAX.i162, align 8
  %2046 = add i64 %2041, -44
  %2047 = add i64 %1977, 40
  store i64 %2047, i64* %3, align 8
  %2048 = inttoptr i64 %2046 to i32*
  %2049 = load i32, i32* %2048, align 4
  %2050 = zext i32 %2049 to i64
  store i64 %2050, i64* %RDI.i829, align 8
  %2051 = add i64 %2041, -60
  %2052 = add i64 %1977, 44
  store i64 %2052, i64* %3, align 8
  %2053 = inttoptr i64 %2051 to i32*
  %2054 = load i32, i32* %2053, align 4
  %2055 = sext i32 %2054 to i64
  store i64 %2055, i64* %RCX.i908, align 8
  %2056 = shl nsw i64 %2055, 2
  %2057 = add nsw i64 %2056, 8053136
  %2058 = add i64 %1977, 52
  store i64 %2058, i64* %3, align 8
  %2059 = inttoptr i64 %2057 to i32*
  %2060 = load i32, i32* %2059, align 4
  %2061 = zext i32 %2060 to i64
  store i64 %2061, i64* %R8.i, align 8
  %2062 = lshr i32 %2060, 31
  %2063 = add i32 %2060, %2049
  %2064 = zext i32 %2063 to i64
  store i64 %2064, i64* %RDI.i829, align 8
  %2065 = icmp ult i32 %2063, %2049
  %2066 = icmp ult i32 %2063, %2060
  %2067 = or i1 %2065, %2066
  %2068 = zext i1 %2067 to i8
  store i8 %2068, i8* %14, align 1
  %2069 = and i32 %2063, 255
  %2070 = tail call i32 @llvm.ctpop.i32(i32 %2069)
  %2071 = trunc i32 %2070 to i8
  %2072 = and i8 %2071, 1
  %2073 = xor i8 %2072, 1
  store i8 %2073, i8* %21, align 1
  %2074 = xor i32 %2060, %2049
  %2075 = xor i32 %2074, %2063
  %2076 = lshr i32 %2075, 4
  %2077 = trunc i32 %2076 to i8
  %2078 = and i8 %2077, 1
  store i8 %2078, i8* %27, align 1
  %2079 = icmp eq i32 %2063, 0
  %2080 = zext i1 %2079 to i8
  store i8 %2080, i8* %30, align 1
  %2081 = lshr i32 %2063, 31
  %2082 = trunc i32 %2081 to i8
  store i8 %2082, i8* %33, align 1
  %2083 = lshr i32 %2049, 31
  %2084 = xor i32 %2081, %2083
  %2085 = xor i32 %2081, %2062
  %2086 = add nuw nsw i32 %2084, %2085
  %2087 = icmp eq i32 %2086, 2
  %2088 = zext i1 %2087 to i8
  store i8 %2088, i8* %39, align 1
  %2089 = sext i32 %2063 to i64
  store i64 %2089, i64* %RCX.i908, align 8
  %2090 = shl nsw i64 %2089, 2
  %2091 = add i64 %2045, %2090
  %2092 = add i64 %1977, 65
  store i64 %2092, i64* %3, align 8
  %2093 = inttoptr i64 %2091 to i32*
  %2094 = load i32, i32* %2093, align 4
  %2095 = sub i32 %2039, %2094
  %2096 = icmp ult i32 %2039, %2094
  %2097 = zext i1 %2096 to i8
  store i8 %2097, i8* %14, align 1
  %2098 = and i32 %2095, 255
  %2099 = tail call i32 @llvm.ctpop.i32(i32 %2098)
  %2100 = trunc i32 %2099 to i8
  %2101 = and i8 %2100, 1
  %2102 = xor i8 %2101, 1
  store i8 %2102, i8* %21, align 1
  %2103 = xor i32 %2094, %2039
  %2104 = xor i32 %2103, %2095
  %2105 = lshr i32 %2104, 4
  %2106 = trunc i32 %2105 to i8
  %2107 = and i8 %2106, 1
  store i8 %2107, i8* %27, align 1
  %2108 = icmp eq i32 %2095, 0
  %2109 = zext i1 %2108 to i8
  store i8 %2109, i8* %30, align 1
  %2110 = lshr i32 %2095, 31
  %2111 = trunc i32 %2110 to i8
  store i8 %2111, i8* %33, align 1
  %2112 = lshr i32 %2039, 31
  %2113 = lshr i32 %2094, 31
  %2114 = xor i32 %2113, %2112
  %2115 = xor i32 %2110, %2112
  %2116 = add nuw nsw i32 %2115, %2114
  %2117 = icmp eq i32 %2116, 2
  %2118 = zext i1 %2117 to i8
  store i8 %2118, i8* %39, align 1
  %2119 = load i64, i64* %RBP.i, align 8
  %2120 = add i64 %2119, -132
  %2121 = load i32, i32* %EDX.i485, align 4
  %2122 = add i64 %1977, 71
  store i64 %2122, i64* %3, align 8
  %2123 = inttoptr i64 %2120 to i32*
  store i32 %2121, i32* %2123, align 4
  %2124 = load i64, i64* %3, align 8
  %2125 = load i8, i8* %33, align 1
  %2126 = icmp ne i8 %2125, 0
  %2127 = load i8, i8* %39, align 1
  %2128 = icmp ne i8 %2127, 0
  %2129 = xor i1 %2126, %2128
  %.v130 = select i1 %2129, i64 6, i64 46
  %2130 = add i64 %2124, %.v130
  %2131 = load i64, i64* %RBP.i, align 8
  %2132 = add i64 %2131, -24
  %2133 = add i64 %2130, 4
  store i64 %2133, i64* %3, align 8
  %2134 = inttoptr i64 %2132 to i64*
  %2135 = load i64, i64* %2134, align 8
  store i64 %2135, i64* %RAX.i162, align 8
  %2136 = add i64 %2131, -44
  %2137 = add i64 %2130, 7
  store i64 %2137, i64* %3, align 8
  %2138 = inttoptr i64 %2136 to i32*
  %2139 = load i32, i32* %2138, align 4
  %2140 = zext i32 %2139 to i64
  store i64 %2140, i64* %RCX.i908, align 8
  %2141 = add i64 %2131, -60
  %2142 = add i64 %2130, 11
  store i64 %2142, i64* %3, align 8
  %2143 = inttoptr i64 %2141 to i32*
  %2144 = load i32, i32* %2143, align 4
  %2145 = sext i32 %2144 to i64
  store i64 %2145, i64* %RDX.i948.pre-phi, align 8
  %2146 = shl nsw i64 %2145, 2
  br i1 %2129, label %block_429ae5, label %block_.L_429b0d

block_429ae5:                                     ; preds = %block_.L_429a8a
  %2147 = add nsw i64 %2146, 8053136
  %2148 = add i64 %2130, 18
  store i64 %2148, i64* %3, align 8
  %2149 = inttoptr i64 %2147 to i32*
  %2150 = load i32, i32* %2149, align 4
  %2151 = zext i32 %2150 to i64
  store i64 %2151, i64* %RSI.i874, align 8
  %2152 = lshr i32 %2150, 31
  %2153 = add i32 %2150, %2139
  %2154 = zext i32 %2153 to i64
  store i64 %2154, i64* %RCX.i908, align 8
  %2155 = icmp ult i32 %2153, %2139
  %2156 = icmp ult i32 %2153, %2150
  %2157 = or i1 %2155, %2156
  %2158 = zext i1 %2157 to i8
  store i8 %2158, i8* %14, align 1
  %2159 = and i32 %2153, 255
  %2160 = tail call i32 @llvm.ctpop.i32(i32 %2159)
  %2161 = trunc i32 %2160 to i8
  %2162 = and i8 %2161, 1
  %2163 = xor i8 %2162, 1
  store i8 %2163, i8* %21, align 1
  %2164 = xor i32 %2150, %2139
  %2165 = xor i32 %2164, %2153
  %2166 = lshr i32 %2165, 4
  %2167 = trunc i32 %2166 to i8
  %2168 = and i8 %2167, 1
  store i8 %2168, i8* %27, align 1
  %2169 = icmp eq i32 %2153, 0
  %2170 = zext i1 %2169 to i8
  store i8 %2170, i8* %30, align 1
  %2171 = lshr i32 %2153, 31
  %2172 = trunc i32 %2171 to i8
  store i8 %2172, i8* %33, align 1
  %2173 = lshr i32 %2139, 31
  %2174 = xor i32 %2171, %2173
  %2175 = xor i32 %2171, %2152
  %2176 = add nuw nsw i32 %2174, %2175
  %2177 = icmp eq i32 %2176, 2
  %2178 = zext i1 %2177 to i8
  store i8 %2178, i8* %39, align 1
  %2179 = sext i32 %2153 to i64
  store i64 %2179, i64* %RDX.i948.pre-phi, align 8
  %2180 = shl nsw i64 %2179, 2
  %2181 = add i64 %2135, %2180
  %2182 = add i64 %2130, 29
  store i64 %2182, i64* %3, align 8
  %2183 = inttoptr i64 %2181 to i32*
  %2184 = load i32, i32* %2183, align 4
  %2185 = zext i32 %2184 to i64
  store i64 %2185, i64* %RCX.i908, align 8
  %2186 = add i64 %2131, -136
  %2187 = add i64 %2130, 35
  store i64 %2187, i64* %3, align 8
  %2188 = inttoptr i64 %2186 to i32*
  store i32 %2184, i32* %2188, align 4
  %2189 = load i64, i64* %3, align 8
  %2190 = add i64 %2189, 41
  store i64 %2190, i64* %3, align 8
  br label %block_.L_429b31

block_.L_429b0d:                                  ; preds = %block_.L_429a8a
  %2191 = add nsw i64 %2146, 8053104
  %2192 = add i64 %2130, 19
  store i64 %2192, i64* %3, align 8
  %2193 = inttoptr i64 %2191 to i32*
  %2194 = load i32, i32* %2193, align 4
  %2195 = sext i32 %2194 to i64
  %2196 = mul nsw i64 %2195, 20
  %2197 = and i64 %2196, 4294967292
  %2198 = trunc i64 %2196 to i32
  store i64 %2197, i64* %RSI.i874, align 8
  %2199 = lshr i32 %2198, 31
  %2200 = add i32 %2198, %2139
  %2201 = zext i32 %2200 to i64
  store i64 %2201, i64* %RCX.i908, align 8
  %2202 = icmp ult i32 %2200, %2139
  %2203 = icmp ult i32 %2200, %2198
  %2204 = or i1 %2202, %2203
  %2205 = zext i1 %2204 to i8
  store i8 %2205, i8* %14, align 1
  %2206 = and i32 %2200, 255
  %2207 = tail call i32 @llvm.ctpop.i32(i32 %2206)
  %2208 = trunc i32 %2207 to i8
  %2209 = and i8 %2208, 1
  %2210 = xor i8 %2209, 1
  store i8 %2210, i8* %21, align 1
  %2211 = xor i64 %2196, %2140
  %2212 = trunc i64 %2211 to i32
  %2213 = xor i32 %2212, %2200
  %2214 = lshr i32 %2213, 4
  %2215 = trunc i32 %2214 to i8
  %2216 = and i8 %2215, 1
  store i8 %2216, i8* %27, align 1
  %2217 = icmp eq i32 %2200, 0
  %2218 = zext i1 %2217 to i8
  store i8 %2218, i8* %30, align 1
  %2219 = lshr i32 %2200, 31
  %2220 = trunc i32 %2219 to i8
  store i8 %2220, i8* %33, align 1
  %2221 = lshr i32 %2139, 31
  %2222 = xor i32 %2219, %2221
  %2223 = xor i32 %2219, %2199
  %2224 = add nuw nsw i32 %2222, %2223
  %2225 = icmp eq i32 %2224, 2
  %2226 = zext i1 %2225 to i8
  store i8 %2226, i8* %39, align 1
  %2227 = sext i32 %2200 to i64
  store i64 %2227, i64* %RDX.i948.pre-phi, align 8
  %2228 = shl nsw i64 %2227, 2
  %2229 = add i64 %2135, %2228
  %2230 = add i64 %2130, 30
  store i64 %2230, i64* %3, align 8
  %2231 = inttoptr i64 %2229 to i32*
  %2232 = load i32, i32* %2231, align 4
  %2233 = zext i32 %2232 to i64
  store i64 %2233, i64* %RCX.i908, align 8
  %2234 = add i64 %2131, -136
  %2235 = add i64 %2130, 36
  store i64 %2235, i64* %3, align 8
  %2236 = inttoptr i64 %2234 to i32*
  store i32 %2232, i32* %2236, align 4
  %.pre69 = load i64, i64* %3, align 8
  br label %block_.L_429b31

block_.L_429b31:                                  ; preds = %block_.L_429b0d, %block_429ae5
  %2237 = phi i64 [ %.pre69, %block_.L_429b0d ], [ %2190, %block_429ae5 ]
  %2238 = load i64, i64* %RBP.i, align 8
  %2239 = add i64 %2238, -136
  %2240 = add i64 %2237, 6
  store i64 %2240, i64* %3, align 8
  %2241 = inttoptr i64 %2239 to i32*
  %2242 = load i32, i32* %2241, align 4
  %2243 = zext i32 %2242 to i64
  store i64 %2243, i64* %RAX.i162, align 8
  store i64 4096, i64* %RCX.i908, align 8
  %2244 = add i64 %2238, -132
  %2245 = add i64 %2237, 17
  store i64 %2245, i64* %3, align 8
  %2246 = inttoptr i64 %2244 to i32*
  %2247 = load i32, i32* %2246, align 4
  %2248 = sext i32 %2247 to i64
  %2249 = sext i32 %2242 to i64
  %2250 = mul nsw i64 %2249, %2248
  %2251 = trunc i64 %2250 to i32
  %2252 = and i64 %2250, 4294967295
  store i64 %2252, i64* %RDX.i948.pre-phi, align 8
  %2253 = shl i64 %2250, 32
  %2254 = ashr exact i64 %2253, 32
  %2255 = icmp ne i64 %2254, %2250
  %2256 = zext i1 %2255 to i8
  store i8 %2256, i8* %14, align 1
  %2257 = and i32 %2251, 255
  %2258 = tail call i32 @llvm.ctpop.i32(i32 %2257)
  %2259 = trunc i32 %2258 to i8
  %2260 = and i8 %2259, 1
  %2261 = xor i8 %2260, 1
  store i8 %2261, i8* %21, align 1
  store i8 0, i8* %27, align 1
  store i8 0, i8* %30, align 1
  %2262 = lshr i32 %2251, 31
  %2263 = trunc i32 %2262 to i8
  store i8 %2263, i8* %33, align 1
  store i8 %2256, i8* %39, align 1
  %2264 = and i64 %2250, 4294967295
  store i64 %2264, i64* %RAX.i162, align 8
  %sext101 = shl i64 %2250, 32
  %2265 = ashr exact i64 %sext101, 32
  %2266 = lshr i64 %2265, 32
  store i64 %2266, i64* %98, align 8
  %2267 = add i64 %2237, 25
  store i64 %2267, i64* %3, align 8
  %2268 = shl nuw i64 %2266, 32
  %2269 = or i64 %2268, %2264
  %2270 = sdiv i64 %2269, 4096
  %2271 = shl i64 %2270, 32
  %2272 = ashr exact i64 %2271, 32
  %2273 = icmp eq i64 %2270, %2272
  br i1 %2273, label %2276, label %2274

; <label>:2274:                                   ; preds = %block_.L_429b31
  %2275 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %2267, %struct.Memory* %MEMORY.11)
  %.pre70 = load i64, i64* %RBP.i, align 8
  %.pre71 = load i32, i32* %99, align 4
  %.pre72 = load i64, i64* %3, align 8
  br label %routine_idivl__ecx.exit252

; <label>:2276:                                   ; preds = %block_.L_429b31
  %2277 = srem i64 %2269, 4096
  %2278 = and i64 %2270, 4294967295
  store i64 %2278, i64* %RAX.i162, align 8
  %2279 = and i64 %2277, 4294967295
  store i64 %2279, i64* %RDX.i948.pre-phi, align 8
  store i8 0, i8* %14, align 1
  store i8 0, i8* %21, align 1
  store i8 0, i8* %27, align 1
  store i8 0, i8* %30, align 1
  store i8 0, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %2280 = trunc i64 %2270 to i32
  br label %routine_idivl__ecx.exit252

routine_idivl__ecx.exit252:                       ; preds = %2276, %2274
  %2281 = phi i64 [ %.pre72, %2274 ], [ %2267, %2276 ]
  %2282 = phi i32 [ %.pre71, %2274 ], [ %2280, %2276 ]
  %2283 = phi i64 [ %.pre70, %2274 ], [ %2238, %2276 ]
  %2284 = phi %struct.Memory* [ %2275, %2274 ], [ %MEMORY.11, %2276 ]
  %2285 = add i64 %2283, -104
  %2286 = add i64 %2281, 3
  store i64 %2286, i64* %3, align 8
  %2287 = inttoptr i64 %2285 to i32*
  store i32 %2282, i32* %2287, align 4
  %2288 = load i64, i64* %RBP.i, align 8
  %2289 = add i64 %2288, -104
  %2290 = load i64, i64* %3, align 8
  %2291 = add i64 %2290, 4
  store i64 %2291, i64* %3, align 8
  %2292 = inttoptr i64 %2289 to i32*
  %2293 = load i32, i32* %2292, align 4
  store i8 0, i8* %14, align 1
  %2294 = and i32 %2293, 255
  %2295 = tail call i32 @llvm.ctpop.i32(i32 %2294)
  %2296 = trunc i32 %2295 to i8
  %2297 = and i8 %2296, 1
  %2298 = xor i8 %2297, 1
  store i8 %2298, i8* %21, align 1
  store i8 0, i8* %27, align 1
  %2299 = icmp eq i32 %2293, 0
  %2300 = zext i1 %2299 to i8
  store i8 %2300, i8* %30, align 1
  %2301 = lshr i32 %2293, 31
  %2302 = trunc i32 %2301 to i8
  store i8 %2302, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %.v113 = select i1 %2299, i64 10, i64 15
  %2303 = add i64 %2290, %.v113
  store i64 %2303, i64* %3, align 8
  br i1 %2299, label %block_429b57, label %block_.L_429b5c

block_429b57:                                     ; preds = %routine_idivl__ecx.exit252
  %2304 = add i64 %2303, 260
  br label %block_.L_429c5b

block_.L_429b5c:                                  ; preds = %routine_idivl__ecx.exit252
  store i64 4096, i64* %RAX.i162, align 8
  %2305 = add i64 %2288, -76
  %2306 = add i64 %2303, 8
  store i64 %2306, i64* %3, align 8
  %2307 = inttoptr i64 %2305 to i32*
  %2308 = load i32, i32* %2307, align 4
  %2309 = zext i32 %2308 to i64
  store i64 %2309, i64* %RCX.i908, align 8
  %2310 = add i64 %2303, 12
  store i64 %2310, i64* %3, align 8
  %2311 = load i32, i32* %2292, align 4
  %2312 = sext i32 %2308 to i64
  %2313 = sext i32 %2311 to i64
  %2314 = mul nsw i64 %2313, %2312
  %2315 = trunc i64 %2314 to i32
  %2316 = and i64 %2314, 4294967295
  store i64 %2316, i64* %RCX.i908, align 8
  %2317 = shl i64 %2314, 32
  %2318 = ashr exact i64 %2317, 32
  %2319 = icmp ne i64 %2318, %2314
  %2320 = zext i1 %2319 to i8
  store i8 %2320, i8* %14, align 1
  %2321 = and i32 %2315, 255
  %2322 = tail call i32 @llvm.ctpop.i32(i32 %2321)
  %2323 = trunc i32 %2322 to i8
  %2324 = and i8 %2323, 1
  %2325 = xor i8 %2324, 1
  store i8 %2325, i8* %21, align 1
  store i8 0, i8* %27, align 1
  store i8 0, i8* %30, align 1
  %2326 = lshr i32 %2315, 31
  %2327 = trunc i32 %2326 to i8
  store i8 %2327, i8* %33, align 1
  store i8 %2320, i8* %39, align 1
  %2328 = add i64 %2288, -140
  %2329 = add i64 %2303, 18
  store i64 %2329, i64* %3, align 8
  %2330 = inttoptr i64 %2328 to i32*
  store i32 4096, i32* %2330, align 4
  %2331 = load i32, i32* %ECX.i579, align 4
  %2332 = zext i32 %2331 to i64
  %2333 = load i64, i64* %3, align 8
  store i64 %2332, i64* %RAX.i162, align 8
  %2334 = sext i32 %2331 to i64
  %2335 = lshr i64 %2334, 32
  store i64 %2335, i64* %98, align 8
  %2336 = load i64, i64* %RBP.i, align 8
  %2337 = add i64 %2336, -140
  %2338 = add i64 %2333, 9
  store i64 %2338, i64* %3, align 8
  %2339 = inttoptr i64 %2337 to i32*
  %2340 = load i32, i32* %2339, align 4
  %2341 = zext i32 %2340 to i64
  store i64 %2341, i64* %RCX.i908, align 8
  %2342 = add i64 %2333, 11
  store i64 %2342, i64* %3, align 8
  %2343 = sext i32 %2340 to i64
  %2344 = shl nuw i64 %2335, 32
  %2345 = or i64 %2344, %2332
  %2346 = sdiv i64 %2345, %2343
  %2347 = shl i64 %2346, 32
  %2348 = ashr exact i64 %2347, 32
  %2349 = icmp eq i64 %2346, %2348
  br i1 %2349, label %2352, label %2350

; <label>:2350:                                   ; preds = %block_.L_429b5c
  %2351 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %2342, %struct.Memory* %2284)
  %.pre73 = load i64, i64* %RBP.i, align 8
  %.pre74 = load i32, i32* %99, align 4
  %.pre75 = load i64, i64* %3, align 8
  br label %routine_idivl__ecx.exit

; <label>:2352:                                   ; preds = %block_.L_429b5c
  %2353 = srem i64 %2345, %2343
  %2354 = and i64 %2346, 4294967295
  store i64 %2354, i64* %RAX.i162, align 8
  %2355 = and i64 %2353, 4294967295
  store i64 %2355, i64* %RDX.i948.pre-phi, align 8
  store i8 0, i8* %14, align 1
  store i8 0, i8* %21, align 1
  store i8 0, i8* %27, align 1
  store i8 0, i8* %30, align 1
  store i8 0, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %2356 = trunc i64 %2346 to i32
  br label %routine_idivl__ecx.exit

routine_idivl__ecx.exit:                          ; preds = %2352, %2350
  %2357 = phi i64 [ %.pre75, %2350 ], [ %2342, %2352 ]
  %2358 = phi i32 [ %.pre74, %2350 ], [ %2356, %2352 ]
  %2359 = phi i64 [ %.pre73, %2350 ], [ %2336, %2352 ]
  %2360 = phi %struct.Memory* [ %2351, %2350 ], [ %2284, %2352 ]
  %2361 = add i64 %2359, -100
  %2362 = add i64 %2357, 3
  store i64 %2362, i64* %3, align 8
  %2363 = inttoptr i64 %2361 to i32*
  store i32 %2358, i32* %2363, align 4
  %2364 = load i64, i64* %RBP.i, align 8
  %2365 = add i64 %2364, -68
  %2366 = load i64, i64* %3, align 8
  %2367 = add i64 %2366, 4
  store i64 %2367, i64* %3, align 8
  %2368 = inttoptr i64 %2365 to i32*
  %2369 = load i32, i32* %2368, align 4
  %2370 = add i32 %2369, -1
  %2371 = icmp eq i32 %2369, 0
  %2372 = zext i1 %2371 to i8
  store i8 %2372, i8* %14, align 1
  %2373 = and i32 %2370, 255
  %2374 = tail call i32 @llvm.ctpop.i32(i32 %2373)
  %2375 = trunc i32 %2374 to i8
  %2376 = and i8 %2375, 1
  %2377 = xor i8 %2376, 1
  store i8 %2377, i8* %21, align 1
  %2378 = xor i32 %2370, %2369
  %2379 = lshr i32 %2378, 4
  %2380 = trunc i32 %2379 to i8
  %2381 = and i8 %2380, 1
  store i8 %2381, i8* %27, align 1
  %2382 = icmp eq i32 %2370, 0
  %2383 = zext i1 %2382 to i8
  store i8 %2383, i8* %30, align 1
  %2384 = lshr i32 %2370, 31
  %2385 = trunc i32 %2384 to i8
  store i8 %2385, i8* %33, align 1
  %2386 = lshr i32 %2369, 31
  %2387 = xor i32 %2384, %2386
  %2388 = add nuw nsw i32 %2387, %2386
  %2389 = icmp eq i32 %2388, 2
  %2390 = zext i1 %2389 to i8
  store i8 %2390, i8* %39, align 1
  %.v114 = select i1 %2382, i64 91, i64 10
  %2391 = add i64 %2366, %.v114
  store i64 %2391, i64* %3, align 8
  br i1 %2382, label %block_.L_429bd7, label %block_429b86

block_429b86:                                     ; preds = %routine_idivl__ecx.exit
  store i64 4096, i64* %RAX.i162, align 8
  %2392 = add i64 %2364, -60
  %2393 = add i64 %2391, 9
  store i64 %2393, i64* %3, align 8
  %2394 = inttoptr i64 %2392 to i32*
  %2395 = load i32, i32* %2394, align 4
  %2396 = sext i32 %2395 to i64
  store i64 %2396, i64* %RCX.i908, align 8
  %2397 = shl nsw i64 %2396, 2
  %2398 = add nsw i64 %2397, 8053104
  %2399 = add i64 %2391, 16
  store i64 %2399, i64* %3, align 8
  %2400 = inttoptr i64 %2398 to i32*
  %2401 = load i32, i32* %2400, align 4
  %2402 = zext i32 %2401 to i64
  store i64 %2402, i64* %RDX.i948.pre-phi, align 8
  %2403 = add i64 %2364, -80
  %2404 = add i64 %2391, 20
  store i64 %2404, i64* %3, align 8
  %2405 = inttoptr i64 %2403 to i32*
  %2406 = load i32, i32* %2405, align 4
  %2407 = sext i32 %2401 to i64
  %2408 = sext i32 %2406 to i64
  %2409 = mul nsw i64 %2408, %2407
  %2410 = trunc i64 %2409 to i32
  %2411 = and i64 %2409, 4294967295
  store i64 %2411, i64* %RDX.i948.pre-phi, align 8
  %2412 = shl i64 %2409, 32
  %2413 = ashr exact i64 %2412, 32
  %2414 = icmp ne i64 %2413, %2409
  %2415 = zext i1 %2414 to i8
  store i8 %2415, i8* %14, align 1
  %2416 = and i32 %2410, 255
  %2417 = tail call i32 @llvm.ctpop.i32(i32 %2416)
  %2418 = trunc i32 %2417 to i8
  %2419 = and i8 %2418, 1
  %2420 = xor i8 %2419, 1
  store i8 %2420, i8* %21, align 1
  store i8 0, i8* %27, align 1
  store i8 0, i8* %30, align 1
  %2421 = lshr i32 %2410, 31
  %2422 = trunc i32 %2421 to i8
  store i8 %2422, i8* %33, align 1
  store i8 %2415, i8* %39, align 1
  %2423 = add i64 %2391, 24
  store i64 %2423, i64* %3, align 8
  %2424 = load i32, i32* %2394, align 4
  %2425 = sext i32 %2424 to i64
  store i64 %2425, i64* %RCX.i908, align 8
  %2426 = shl nsw i64 %2425, 2
  %2427 = add nsw i64 %2426, 8053136
  %2428 = add i64 %2391, 31
  store i64 %2428, i64* %3, align 8
  %2429 = inttoptr i64 %2427 to i32*
  %2430 = load i32, i32* %2429, align 4
  %2431 = zext i32 %2430 to i64
  store i64 %2431, i64* %RSI.i874, align 8
  %2432 = add i64 %2364, -84
  %2433 = add i64 %2391, 35
  store i64 %2433, i64* %3, align 8
  %2434 = inttoptr i64 %2432 to i32*
  %2435 = load i32, i32* %2434, align 4
  %2436 = sext i32 %2430 to i64
  %2437 = sext i32 %2435 to i64
  %2438 = mul nsw i64 %2437, %2436
  %2439 = and i64 %2438, 4294967295
  store i64 %2439, i64* %RSI.i874, align 8
  %2440 = trunc i64 %2438 to i32
  %2441 = trunc i64 %2409 to i32
  %2442 = add i32 %2440, %2441
  %2443 = zext i32 %2442 to i64
  store i64 %2443, i64* %RDX.i948.pre-phi, align 8
  %2444 = icmp ult i32 %2442, %2441
  %2445 = icmp ult i32 %2442, %2440
  %2446 = or i1 %2444, %2445
  %2447 = zext i1 %2446 to i8
  store i8 %2447, i8* %14, align 1
  %2448 = and i32 %2442, 255
  %2449 = tail call i32 @llvm.ctpop.i32(i32 %2448)
  %2450 = trunc i32 %2449 to i8
  %2451 = and i8 %2450, 1
  %2452 = xor i8 %2451, 1
  store i8 %2452, i8* %21, align 1
  %2453 = xor i64 %2438, %2409
  %2454 = trunc i64 %2453 to i32
  %2455 = xor i32 %2454, %2442
  %2456 = lshr i32 %2455, 4
  %2457 = trunc i32 %2456 to i8
  %2458 = and i8 %2457, 1
  store i8 %2458, i8* %27, align 1
  %2459 = icmp eq i32 %2442, 0
  %2460 = zext i1 %2459 to i8
  store i8 %2460, i8* %30, align 1
  %2461 = lshr i32 %2442, 31
  %2462 = trunc i32 %2461 to i8
  store i8 %2462, i8* %33, align 1
  %2463 = lshr i32 %2441, 31
  %2464 = lshr i32 %2440, 31
  %2465 = xor i32 %2461, %2463
  %2466 = xor i32 %2461, %2464
  %2467 = add nuw nsw i32 %2465, %2466
  %2468 = icmp eq i32 %2467, 2
  %2469 = zext i1 %2468 to i8
  store i8 %2469, i8* %39, align 1
  %2470 = load i64, i64* %RBP.i, align 8
  %2471 = add i64 %2470, -108
  %2472 = add i64 %2391, 40
  store i64 %2472, i64* %3, align 8
  %2473 = inttoptr i64 %2471 to i32*
  store i32 %2442, i32* %2473, align 4
  %2474 = load i64, i64* %RBP.i, align 8
  %2475 = add i64 %2474, -108
  %2476 = load i64, i64* %3, align 8
  %2477 = add i64 %2476, 3
  store i64 %2477, i64* %3, align 8
  %2478 = inttoptr i64 %2475 to i32*
  %2479 = load i32, i32* %2478, align 4
  %2480 = zext i32 %2479 to i64
  store i64 %2480, i64* %RDX.i948.pre-phi, align 8
  %2481 = add i64 %2476, 7
  store i64 %2481, i64* %3, align 8
  %2482 = load i32, i32* %2478, align 4
  %2483 = sext i32 %2479 to i64
  %2484 = sext i32 %2482 to i64
  %2485 = mul nsw i64 %2484, %2483
  %2486 = trunc i64 %2485 to i32
  %2487 = and i64 %2485, 4294967295
  store i64 %2487, i64* %RDX.i948.pre-phi, align 8
  %2488 = shl i64 %2485, 32
  %2489 = ashr exact i64 %2488, 32
  %2490 = icmp ne i64 %2489, %2485
  %2491 = zext i1 %2490 to i8
  store i8 %2491, i8* %14, align 1
  %2492 = and i32 %2486, 255
  %2493 = tail call i32 @llvm.ctpop.i32(i32 %2492)
  %2494 = trunc i32 %2493 to i8
  %2495 = and i8 %2494, 1
  %2496 = xor i8 %2495, 1
  store i8 %2496, i8* %21, align 1
  store i8 0, i8* %27, align 1
  store i8 0, i8* %30, align 1
  %2497 = lshr i32 %2486, 31
  %2498 = trunc i32 %2497 to i8
  store i8 %2498, i8* %33, align 1
  store i8 %2491, i8* %39, align 1
  %2499 = add i64 %2474, -100
  %2500 = add i64 %2476, 11
  store i64 %2500, i64* %3, align 8
  %2501 = inttoptr i64 %2499 to i32*
  %2502 = load i32, i32* %2501, align 4
  %2503 = shl i64 %2485, 32
  %2504 = ashr exact i64 %2503, 32
  %2505 = sext i32 %2502 to i64
  %2506 = mul nsw i64 %2505, %2504
  %2507 = trunc i64 %2506 to i32
  %2508 = and i64 %2506, 4294967295
  store i64 %2508, i64* %RDX.i948.pre-phi, align 8
  %2509 = shl i64 %2506, 32
  %2510 = ashr exact i64 %2509, 32
  %2511 = icmp ne i64 %2510, %2506
  %2512 = zext i1 %2511 to i8
  store i8 %2512, i8* %14, align 1
  %2513 = and i32 %2507, 255
  %2514 = tail call i32 @llvm.ctpop.i32(i32 %2513)
  %2515 = trunc i32 %2514 to i8
  %2516 = and i8 %2515, 1
  %2517 = xor i8 %2516, 1
  store i8 %2517, i8* %21, align 1
  store i8 0, i8* %27, align 1
  store i8 0, i8* %30, align 1
  %2518 = lshr i32 %2507, 31
  %2519 = trunc i32 %2518 to i8
  store i8 %2519, i8* %33, align 1
  store i8 %2512, i8* %39, align 1
  %2520 = trunc i64 %2506 to i32
  %2521 = add i64 %2476, 14
  store i64 %2521, i64* %3, align 8
  store i32 %2520, i32* %2501, align 4
  %2522 = load i64, i64* %RBP.i, align 8
  %2523 = add i64 %2522, -64
  %2524 = load i64, i64* %3, align 8
  %2525 = add i64 %2524, 3
  store i64 %2525, i64* %3, align 8
  %2526 = inttoptr i64 %2523 to i32*
  %2527 = load i32, i32* %2526, align 4
  %2528 = zext i32 %2527 to i64
  store i64 %2528, i64* %RDX.i948.pre-phi, align 8
  %2529 = add i64 %2522, -100
  %2530 = add i64 %2524, 7
  store i64 %2530, i64* %3, align 8
  %2531 = inttoptr i64 %2529 to i32*
  %2532 = load i32, i32* %2531, align 4
  %2533 = sext i32 %2527 to i64
  %2534 = sext i32 %2532 to i64
  %2535 = mul nsw i64 %2534, %2533
  %2536 = trunc i64 %2535 to i32
  %2537 = and i64 %2535, 4294967295
  store i64 %2537, i64* %RDX.i948.pre-phi, align 8
  %2538 = shl i64 %2535, 32
  %2539 = ashr exact i64 %2538, 32
  %2540 = icmp ne i64 %2539, %2535
  %2541 = zext i1 %2540 to i8
  store i8 %2541, i8* %14, align 1
  %2542 = and i32 %2536, 255
  %2543 = tail call i32 @llvm.ctpop.i32(i32 %2542)
  %2544 = trunc i32 %2543 to i8
  %2545 = and i8 %2544, 1
  %2546 = xor i8 %2545, 1
  store i8 %2546, i8* %21, align 1
  store i8 0, i8* %27, align 1
  store i8 0, i8* %30, align 1
  %2547 = lshr i32 %2536, 31
  %2548 = trunc i32 %2547 to i8
  store i8 %2548, i8* %33, align 1
  store i8 %2541, i8* %39, align 1
  %2549 = add i64 %2522, -144
  %2550 = load i32, i32* %99, align 4
  %2551 = add i64 %2524, 13
  store i64 %2551, i64* %3, align 8
  %2552 = inttoptr i64 %2549 to i32*
  store i32 %2550, i32* %2552, align 4
  %2553 = load i32, i32* %EDX.i485, align 4
  %2554 = zext i32 %2553 to i64
  %2555 = load i64, i64* %3, align 8
  store i64 %2554, i64* %RAX.i162, align 8
  %2556 = sext i32 %2553 to i64
  %2557 = lshr i64 %2556, 32
  store i64 %2557, i64* %98, align 8
  %2558 = load i64, i64* %RBP.i, align 8
  %2559 = add i64 %2558, -144
  %2560 = add i64 %2555, 9
  store i64 %2560, i64* %3, align 8
  %2561 = inttoptr i64 %2559 to i32*
  %2562 = load i32, i32* %2561, align 4
  %2563 = zext i32 %2562 to i64
  store i64 %2563, i64* %RSI.i874, align 8
  %2564 = add i64 %2555, 11
  store i64 %2564, i64* %3, align 8
  %2565 = sext i32 %2562 to i64
  %2566 = shl nuw i64 %2557, 32
  %2567 = or i64 %2566, %2554
  %2568 = sdiv i64 %2567, %2565
  %2569 = shl i64 %2568, 32
  %2570 = ashr exact i64 %2569, 32
  %2571 = icmp eq i64 %2568, %2570
  br i1 %2571, label %2574, label %2572

; <label>:2572:                                   ; preds = %block_429b86
  %2573 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %2564, %struct.Memory* %2360)
  %.pre76 = load i64, i64* %RBP.i, align 8
  %.pre77 = load i32, i32* %99, align 4
  %.pre78 = load i64, i64* %3, align 8
  br label %routine_idivl__esi.exit

; <label>:2574:                                   ; preds = %block_429b86
  %2575 = srem i64 %2567, %2565
  %2576 = and i64 %2568, 4294967295
  store i64 %2576, i64* %RAX.i162, align 8
  %2577 = and i64 %2575, 4294967295
  store i64 %2577, i64* %RDX.i948.pre-phi, align 8
  store i8 0, i8* %14, align 1
  store i8 0, i8* %21, align 1
  store i8 0, i8* %27, align 1
  store i8 0, i8* %30, align 1
  store i8 0, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %2578 = trunc i64 %2568 to i32
  br label %routine_idivl__esi.exit

routine_idivl__esi.exit:                          ; preds = %2574, %2572
  %2579 = phi i64 [ %.pre78, %2572 ], [ %2564, %2574 ]
  %2580 = phi i32 [ %.pre77, %2572 ], [ %2578, %2574 ]
  %2581 = phi i64 [ %.pre76, %2572 ], [ %2558, %2574 ]
  %2582 = phi %struct.Memory* [ %2573, %2572 ], [ %2360, %2574 ]
  %2583 = add i64 %2581, -100
  %2584 = add i64 %2579, 3
  store i64 %2584, i64* %3, align 8
  %2585 = inttoptr i64 %2583 to i32*
  store i32 %2580, i32* %2585, align 4
  %.pre79 = load i64, i64* %3, align 8
  %.pre80 = load i64, i64* %RBP.i, align 8
  br label %block_.L_429bd7

block_.L_429bd7:                                  ; preds = %routine_idivl__esi.exit, %routine_idivl__ecx.exit
  %2586 = phi i64 [ %2364, %routine_idivl__ecx.exit ], [ %.pre80, %routine_idivl__esi.exit ]
  %2587 = phi i64 [ %2391, %routine_idivl__ecx.exit ], [ %.pre79, %routine_idivl__esi.exit ]
  %MEMORY.14 = phi %struct.Memory* [ %2360, %routine_idivl__ecx.exit ], [ %2582, %routine_idivl__esi.exit ]
  %2588 = add i64 %2587, ptrtoint (%G_0xb9409__rip__type* @G_0xb9409__rip_ to i64)
  %2589 = add i64 %2587, 8
  store i64 %2589, i64* %3, align 8
  %2590 = inttoptr i64 %2588 to i64*
  %2591 = load i64, i64* %2590, align 8
  store i64 %2591, i64* %300, align 1
  store double 0.000000e+00, double* %302, align 1
  %2592 = add i64 %2586, -100
  %2593 = add i64 %2587, 13
  store i64 %2593, i64* %3, align 8
  %2594 = inttoptr i64 %2592 to i32*
  %2595 = load i32, i32* %2594, align 4
  %2596 = sitofp i32 %2595 to double
  store double %2596, double* %304, align 1
  %2597 = add i64 %2587, 17
  store i64 %2597, i64* %3, align 8
  %2598 = bitcast i64 %2591 to double
  %2599 = fcmp uno double %2598, %2596
  br i1 %2599, label %2600, label %2610

; <label>:2600:                                   ; preds = %block_.L_429bd7
  %2601 = fadd double %2596, %2598
  %2602 = bitcast double %2601 to i64
  %2603 = and i64 %2602, 9221120237041090560
  %2604 = icmp eq i64 %2603, 9218868437227405312
  %2605 = and i64 %2602, 2251799813685247
  %2606 = icmp ne i64 %2605, 0
  %2607 = and i1 %2604, %2606
  br i1 %2607, label %2608, label %2616

; <label>:2608:                                   ; preds = %2600
  %2609 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %2597, %struct.Memory* %MEMORY.14)
  %.pre81 = load i64, i64* %3, align 8
  br label %routine_ucomisd__xmm1___xmm0.exit

; <label>:2610:                                   ; preds = %block_.L_429bd7
  %2611 = fcmp ogt double %2598, %2596
  br i1 %2611, label %2616, label %2612

; <label>:2612:                                   ; preds = %2610
  %2613 = fcmp olt double %2598, %2596
  br i1 %2613, label %2616, label %2614

; <label>:2614:                                   ; preds = %2612
  %2615 = fcmp oeq double %2598, %2596
  br i1 %2615, label %2616, label %2620

; <label>:2616:                                   ; preds = %2614, %2612, %2610, %2600
  %2617 = phi i8 [ 0, %2610 ], [ 0, %2612 ], [ 1, %2614 ], [ 1, %2600 ]
  %2618 = phi i8 [ 0, %2610 ], [ 0, %2612 ], [ 0, %2614 ], [ 1, %2600 ]
  %2619 = phi i8 [ 0, %2610 ], [ 1, %2612 ], [ 0, %2614 ], [ 1, %2600 ]
  store i8 %2617, i8* %30, align 1
  store i8 %2618, i8* %21, align 1
  store i8 %2619, i8* %14, align 1
  br label %2620

; <label>:2620:                                   ; preds = %2616, %2614
  store i8 0, i8* %39, align 1
  store i8 0, i8* %33, align 1
  store i8 0, i8* %27, align 1
  br label %routine_ucomisd__xmm1___xmm0.exit

routine_ucomisd__xmm1___xmm0.exit:                ; preds = %2620, %2608
  %2621 = phi i64 [ %.pre81, %2608 ], [ %2597, %2620 ]
  %2622 = phi %struct.Memory* [ %2609, %2608 ], [ %MEMORY.14, %2620 ]
  %2623 = load i8, i8* %14, align 1
  %2624 = icmp ne i8 %2623, 0
  %.v131 = select i1 %2624, i64 11, i64 6
  %2625 = add i64 %2621, %.v131
  store i64 %2625, i64* %3, align 8
  %cmpBr_429be8 = icmp eq i8 %2623, 1
  br i1 %cmpBr_429be8, label %block_.L_429bf3, label %block_429bee

block_429bee:                                     ; preds = %routine_ucomisd__xmm1___xmm0.exit
  %2626 = add i64 %2625, 109
  br label %block_.L_429c5b

block_.L_429bf3:                                  ; preds = %routine_ucomisd__xmm1___xmm0.exit
  %2627 = load i64, i64* %RBP.i, align 8
  %2628 = add i64 %2627, -44
  %2629 = add i64 %2625, 3
  store i64 %2629, i64* %3, align 8
  %2630 = inttoptr i64 %2628 to i32*
  %2631 = load i32, i32* %2630, align 4
  %2632 = zext i32 %2631 to i64
  store i64 %2632, i64* %RAX.i162, align 8
  %2633 = add i64 %2627, -60
  %2634 = add i64 %2625, 7
  store i64 %2634, i64* %3, align 8
  %2635 = inttoptr i64 %2633 to i32*
  %2636 = load i32, i32* %2635, align 4
  %2637 = sext i32 %2636 to i64
  store i64 %2637, i64* %RCX.i908, align 8
  %2638 = shl nsw i64 %2637, 2
  %2639 = add nsw i64 %2638, 8053168
  %2640 = add i64 %2625, 14
  store i64 %2640, i64* %3, align 8
  %2641 = inttoptr i64 %2639 to i32*
  %2642 = load i32, i32* %2641, align 4
  %2643 = add i32 %2642, %2631
  %2644 = zext i32 %2643 to i64
  store i64 %2644, i64* %RAX.i162, align 8
  %2645 = icmp ult i32 %2643, %2631
  %2646 = icmp ult i32 %2643, %2642
  %2647 = or i1 %2645, %2646
  %2648 = zext i1 %2647 to i8
  store i8 %2648, i8* %14, align 1
  %2649 = and i32 %2643, 255
  %2650 = tail call i32 @llvm.ctpop.i32(i32 %2649)
  %2651 = trunc i32 %2650 to i8
  %2652 = and i8 %2651, 1
  %2653 = xor i8 %2652, 1
  store i8 %2653, i8* %21, align 1
  %2654 = xor i32 %2642, %2631
  %2655 = xor i32 %2654, %2643
  %2656 = lshr i32 %2655, 4
  %2657 = trunc i32 %2656 to i8
  %2658 = and i8 %2657, 1
  store i8 %2658, i8* %27, align 1
  %2659 = icmp eq i32 %2643, 0
  %2660 = zext i1 %2659 to i8
  store i8 %2660, i8* %30, align 1
  %2661 = lshr i32 %2643, 31
  %2662 = trunc i32 %2661 to i8
  store i8 %2662, i8* %33, align 1
  %2663 = lshr i32 %2631, 31
  %2664 = lshr i32 %2642, 31
  %2665 = xor i32 %2661, %2663
  %2666 = xor i32 %2661, %2664
  %2667 = add nuw nsw i32 %2665, %2666
  %2668 = icmp eq i32 %2667, 2
  %2669 = zext i1 %2668 to i8
  store i8 %2669, i8* %39, align 1
  %2670 = sext i32 %2643 to i64
  store i64 %2670, i64* %RCX.i908, align 8
  %2671 = shl nsw i64 %2670, 2
  %2672 = add nsw i64 %2671, 11268976
  %2673 = add i64 %2625, 25
  store i64 %2673, i64* %3, align 8
  %2674 = inttoptr i64 %2672 to i32*
  %2675 = load i32, i32* %2674, align 4
  store i8 0, i8* %14, align 1
  %2676 = and i32 %2675, 255
  %2677 = tail call i32 @llvm.ctpop.i32(i32 %2676)
  %2678 = trunc i32 %2677 to i8
  %2679 = and i8 %2678, 1
  %2680 = xor i8 %2679, 1
  store i8 %2680, i8* %21, align 1
  store i8 0, i8* %27, align 1
  %2681 = icmp eq i32 %2675, 0
  %2682 = zext i1 %2681 to i8
  store i8 %2682, i8* %30, align 1
  %2683 = lshr i32 %2675, 31
  %2684 = trunc i32 %2683 to i8
  store i8 %2684, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %.v115 = select i1 %2681, i64 31, i64 65
  %2685 = add i64 %2625, %.v115
  store i64 %2685, i64* %3, align 8
  br i1 %2681, label %block_429c12, label %block_.L_429c34

block_429c12:                                     ; preds = %block_.L_429bf3
  %2686 = add i64 %2685, 3
  store i64 %2686, i64* %3, align 8
  %2687 = load i32, i32* %2630, align 4
  %2688 = zext i32 %2687 to i64
  store i64 %2688, i64* %RAX.i162, align 8
  %2689 = add i64 %2685, 7
  store i64 %2689, i64* %3, align 8
  %2690 = load i32, i32* %2635, align 4
  %2691 = sext i32 %2690 to i64
  store i64 %2691, i64* %RCX.i908, align 8
  %2692 = shl nsw i64 %2691, 2
  %2693 = add nsw i64 %2692, 8053168
  %2694 = add i64 %2685, 14
  store i64 %2694, i64* %3, align 8
  %2695 = inttoptr i64 %2693 to i32*
  %2696 = load i32, i32* %2695, align 4
  %2697 = add i32 %2696, %2687
  %2698 = zext i32 %2697 to i64
  store i64 %2698, i64* %RAX.i162, align 8
  %2699 = icmp ult i32 %2697, %2687
  %2700 = icmp ult i32 %2697, %2696
  %2701 = or i1 %2699, %2700
  %2702 = zext i1 %2701 to i8
  store i8 %2702, i8* %14, align 1
  %2703 = and i32 %2697, 255
  %2704 = tail call i32 @llvm.ctpop.i32(i32 %2703)
  %2705 = trunc i32 %2704 to i8
  %2706 = and i8 %2705, 1
  %2707 = xor i8 %2706, 1
  store i8 %2707, i8* %21, align 1
  %2708 = xor i32 %2696, %2687
  %2709 = xor i32 %2708, %2697
  %2710 = lshr i32 %2709, 4
  %2711 = trunc i32 %2710 to i8
  %2712 = and i8 %2711, 1
  store i8 %2712, i8* %27, align 1
  %2713 = icmp eq i32 %2697, 0
  %2714 = zext i1 %2713 to i8
  store i8 %2714, i8* %30, align 1
  %2715 = lshr i32 %2697, 31
  %2716 = trunc i32 %2715 to i8
  store i8 %2716, i8* %33, align 1
  %2717 = lshr i32 %2687, 31
  %2718 = lshr i32 %2696, 31
  %2719 = xor i32 %2715, %2717
  %2720 = xor i32 %2715, %2718
  %2721 = add nuw nsw i32 %2719, %2720
  %2722 = icmp eq i32 %2721, 2
  %2723 = zext i1 %2722 to i8
  store i8 %2723, i8* %39, align 1
  %2724 = add i64 %2627, -72
  %2725 = add i64 %2685, 18
  store i64 %2725, i64* %3, align 8
  %2726 = inttoptr i64 %2724 to i32*
  %2727 = load i32, i32* %2726, align 4
  %2728 = sext i32 %2727 to i64
  store i64 %2728, i64* %RCX.i908, align 8
  %2729 = shl nsw i64 %2728, 2
  %2730 = add nsw i64 %2729, 11270576
  %2731 = add i64 %2685, 25
  store i64 %2731, i64* %3, align 8
  %2732 = inttoptr i64 %2730 to i32*
  store i32 %2697, i32* %2732, align 4
  %2733 = load i64, i64* %RBP.i, align 8
  %2734 = add i64 %2733, -72
  %2735 = load i64, i64* %3, align 8
  %2736 = add i64 %2735, 3
  store i64 %2736, i64* %3, align 8
  %2737 = inttoptr i64 %2734 to i32*
  %2738 = load i32, i32* %2737, align 4
  %2739 = add i32 %2738, 1
  %2740 = zext i32 %2739 to i64
  store i64 %2740, i64* %RAX.i162, align 8
  %2741 = icmp eq i32 %2738, -1
  %2742 = icmp eq i32 %2739, 0
  %2743 = or i1 %2741, %2742
  %2744 = zext i1 %2743 to i8
  store i8 %2744, i8* %14, align 1
  %2745 = and i32 %2739, 255
  %2746 = tail call i32 @llvm.ctpop.i32(i32 %2745)
  %2747 = trunc i32 %2746 to i8
  %2748 = and i8 %2747, 1
  %2749 = xor i8 %2748, 1
  store i8 %2749, i8* %21, align 1
  %2750 = xor i32 %2739, %2738
  %2751 = lshr i32 %2750, 4
  %2752 = trunc i32 %2751 to i8
  %2753 = and i8 %2752, 1
  store i8 %2753, i8* %27, align 1
  %2754 = zext i1 %2742 to i8
  store i8 %2754, i8* %30, align 1
  %2755 = lshr i32 %2739, 31
  %2756 = trunc i32 %2755 to i8
  store i8 %2756, i8* %33, align 1
  %2757 = lshr i32 %2738, 31
  %2758 = xor i32 %2755, %2757
  %2759 = add nuw nsw i32 %2758, %2755
  %2760 = icmp eq i32 %2759, 2
  %2761 = zext i1 %2760 to i8
  store i8 %2761, i8* %39, align 1
  %2762 = add i64 %2735, 9
  store i64 %2762, i64* %3, align 8
  store i32 %2739, i32* %2737, align 4
  %.pre82 = load i64, i64* %RBP.i, align 8
  %.pre83 = load i64, i64* %3, align 8
  br label %block_.L_429c34

block_.L_429c34:                                  ; preds = %block_.L_429bf3, %block_429c12
  %2763 = phi i64 [ %.pre83, %block_429c12 ], [ %2685, %block_.L_429bf3 ]
  %2764 = phi i64 [ %.pre82, %block_429c12 ], [ %2627, %block_.L_429bf3 ]
  %2765 = add i64 %2764, -100
  %2766 = add i64 %2763, 3
  store i64 %2766, i64* %3, align 8
  %2767 = inttoptr i64 %2765 to i32*
  %2768 = load i32, i32* %2767, align 4
  %2769 = zext i32 %2768 to i64
  store i64 %2769, i64* %RAX.i162, align 8
  %2770 = add i64 %2764, -44
  %2771 = add i64 %2763, 6
  store i64 %2771, i64* %3, align 8
  %2772 = inttoptr i64 %2770 to i32*
  %2773 = load i32, i32* %2772, align 4
  %2774 = zext i32 %2773 to i64
  store i64 %2774, i64* %RCX.i908, align 8
  %2775 = add i64 %2764, -60
  %2776 = add i64 %2763, 10
  store i64 %2776, i64* %3, align 8
  %2777 = inttoptr i64 %2775 to i32*
  %2778 = load i32, i32* %2777, align 4
  %2779 = sext i32 %2778 to i64
  store i64 %2779, i64* %RDX.i948.pre-phi, align 8
  %2780 = shl nsw i64 %2779, 2
  %2781 = add nsw i64 %2780, 8053168
  %2782 = add i64 %2763, 17
  store i64 %2782, i64* %3, align 8
  %2783 = inttoptr i64 %2781 to i32*
  %2784 = load i32, i32* %2783, align 4
  %2785 = add i32 %2784, %2773
  %2786 = zext i32 %2785 to i64
  store i64 %2786, i64* %RCX.i908, align 8
  %2787 = icmp ult i32 %2785, %2773
  %2788 = icmp ult i32 %2785, %2784
  %2789 = or i1 %2787, %2788
  %2790 = zext i1 %2789 to i8
  store i8 %2790, i8* %14, align 1
  %2791 = and i32 %2785, 255
  %2792 = tail call i32 @llvm.ctpop.i32(i32 %2791)
  %2793 = trunc i32 %2792 to i8
  %2794 = and i8 %2793, 1
  %2795 = xor i8 %2794, 1
  store i8 %2795, i8* %21, align 1
  %2796 = xor i32 %2784, %2773
  %2797 = xor i32 %2796, %2785
  %2798 = lshr i32 %2797, 4
  %2799 = trunc i32 %2798 to i8
  %2800 = and i8 %2799, 1
  store i8 %2800, i8* %27, align 1
  %2801 = icmp eq i32 %2785, 0
  %2802 = zext i1 %2801 to i8
  store i8 %2802, i8* %30, align 1
  %2803 = lshr i32 %2785, 31
  %2804 = trunc i32 %2803 to i8
  store i8 %2804, i8* %33, align 1
  %2805 = lshr i32 %2773, 31
  %2806 = lshr i32 %2784, 31
  %2807 = xor i32 %2803, %2805
  %2808 = xor i32 %2803, %2806
  %2809 = add nuw nsw i32 %2807, %2808
  %2810 = icmp eq i32 %2809, 2
  %2811 = zext i1 %2810 to i8
  store i8 %2811, i8* %39, align 1
  %2812 = sext i32 %2785 to i64
  store i64 %2812, i64* %RDX.i948.pre-phi, align 8
  %2813 = shl nsw i64 %2812, 2
  %2814 = add nsw i64 %2813, 11268976
  %2815 = add i64 %2763, 27
  store i64 %2815, i64* %3, align 8
  %2816 = inttoptr i64 %2814 to i32*
  %2817 = load i32, i32* %2816, align 4
  %2818 = add i32 %2817, %2768
  %2819 = zext i32 %2818 to i64
  store i64 %2819, i64* %RAX.i162, align 8
  %2820 = icmp ult i32 %2818, %2768
  %2821 = icmp ult i32 %2818, %2817
  %2822 = or i1 %2820, %2821
  %2823 = zext i1 %2822 to i8
  store i8 %2823, i8* %14, align 1
  %2824 = and i32 %2818, 255
  %2825 = tail call i32 @llvm.ctpop.i32(i32 %2824)
  %2826 = trunc i32 %2825 to i8
  %2827 = and i8 %2826, 1
  %2828 = xor i8 %2827, 1
  store i8 %2828, i8* %21, align 1
  %2829 = xor i32 %2817, %2768
  %2830 = xor i32 %2829, %2818
  %2831 = lshr i32 %2830, 4
  %2832 = trunc i32 %2831 to i8
  %2833 = and i8 %2832, 1
  store i8 %2833, i8* %27, align 1
  %2834 = icmp eq i32 %2818, 0
  %2835 = zext i1 %2834 to i8
  store i8 %2835, i8* %30, align 1
  %2836 = lshr i32 %2818, 31
  %2837 = trunc i32 %2836 to i8
  store i8 %2837, i8* %33, align 1
  %2838 = lshr i32 %2768, 31
  %2839 = lshr i32 %2817, 31
  %2840 = xor i32 %2836, %2838
  %2841 = xor i32 %2836, %2839
  %2842 = add nuw nsw i32 %2840, %2841
  %2843 = icmp eq i32 %2842, 2
  %2844 = zext i1 %2843 to i8
  store i8 %2844, i8* %39, align 1
  %2845 = add i64 %2763, 34
  store i64 %2845, i64* %3, align 8
  store i32 %2818, i32* %2816, align 4
  %.pre84 = load i64, i64* %3, align 8
  br label %block_.L_429c56

block_.L_429c56:                                  ; preds = %block_429a80, %block_429a33, %block_.L_429c34
  %2846 = phi i64 [ %1866, %block_429a33 ], [ %.pre84, %block_.L_429c34 ], [ %1955, %block_429a80 ]
  %MEMORY.16 = phi %struct.Memory* [ %MEMORY.11, %block_429a33 ], [ %2622, %block_.L_429c34 ], [ %MEMORY.11, %block_429a80 ]
  %2847 = add i64 %2846, 5
  br label %block_.L_429c5b

block_.L_429c5b:                                  ; preds = %block_.L_429c56, %block_429bee, %block_429b57
  %.sink = phi i64 [ %2847, %block_.L_429c56 ], [ %2626, %block_429bee ], [ %2304, %block_429b57 ]
  %MEMORY.17 = phi %struct.Memory* [ %MEMORY.16, %block_.L_429c56 ], [ %2622, %block_429bee ], [ %2284, %block_429b57 ]
  %2848 = add i64 %.sink, 5
  store i64 %2848, i64* %3, align 8
  %.pre85 = load i64, i64* %RBP.i, align 8
  br label %block_.L_429c60

block_.L_429c60:                                  ; preds = %block_.L_429c5b, %block_429a11
  %2849 = phi i64 [ %1718, %block_429a11 ], [ %.pre85, %block_.L_429c5b ]
  %2850 = phi i64 [ %1810, %block_429a11 ], [ %2848, %block_.L_429c5b ]
  %MEMORY.18 = phi %struct.Memory* [ %MEMORY.11, %block_429a11 ], [ %MEMORY.17, %block_.L_429c5b ]
  %2851 = add i64 %2849, -60
  %2852 = add i64 %2850, 8
  store i64 %2852, i64* %3, align 8
  %2853 = inttoptr i64 %2851 to i32*
  %2854 = load i32, i32* %2853, align 4
  %2855 = add i32 %2854, 1
  %2856 = zext i32 %2855 to i64
  store i64 %2856, i64* %RAX.i162, align 8
  %2857 = icmp eq i32 %2854, -1
  %2858 = icmp eq i32 %2855, 0
  %2859 = or i1 %2857, %2858
  %2860 = zext i1 %2859 to i8
  store i8 %2860, i8* %14, align 1
  %2861 = and i32 %2855, 255
  %2862 = tail call i32 @llvm.ctpop.i32(i32 %2861)
  %2863 = trunc i32 %2862 to i8
  %2864 = and i8 %2863, 1
  %2865 = xor i8 %2864, 1
  store i8 %2865, i8* %21, align 1
  %2866 = xor i32 %2855, %2854
  %2867 = lshr i32 %2866, 4
  %2868 = trunc i32 %2867 to i8
  %2869 = and i8 %2868, 1
  store i8 %2869, i8* %27, align 1
  %2870 = zext i1 %2858 to i8
  store i8 %2870, i8* %30, align 1
  %2871 = lshr i32 %2855, 31
  %2872 = trunc i32 %2871 to i8
  store i8 %2872, i8* %33, align 1
  %2873 = lshr i32 %2854, 31
  %2874 = xor i32 %2871, %2873
  %2875 = add nuw nsw i32 %2874, %2871
  %2876 = icmp eq i32 %2875, 2
  %2877 = zext i1 %2876 to i8
  store i8 %2877, i8* %39, align 1
  %2878 = add i64 %2850, 14
  store i64 %2878, i64* %3, align 8
  store i32 %2855, i32* %2853, align 4
  %2879 = load i64, i64* %3, align 8
  %2880 = add i64 %2879, -615
  store i64 %2880, i64* %3, align 8
  br label %block_.L_429a07

block_.L_429c73:                                  ; preds = %block_.L_429a07
  %2881 = add i64 %1746, -1263
  br label %block_.L_429784.backedge

block_.L_429c78:                                  ; preds = %block_.L_429784
  %2882 = add i64 %307, -56
  %2883 = add i64 %343, 7
  store i64 %2883, i64* %3, align 8
  %2884 = inttoptr i64 %2882 to i32*
  store i32 0, i32* %2884, align 4
  %.pre44 = load i64, i64* %3, align 8
  br label %block_.L_429c7f

block_.L_429c7f:                                  ; preds = %block_.L_429ce3, %block_.L_429c78
  %2885 = phi i64 [ %.pre44, %block_.L_429c78 ], [ %3103, %block_.L_429ce3 ]
  %MEMORY.19 = phi %struct.Memory* [ %MEMORY.2, %block_.L_429c78 ], [ %2977, %block_.L_429ce3 ]
  %2886 = load i64, i64* %RBP.i, align 8
  %2887 = add i64 %2886, -56
  %2888 = add i64 %2885, 3
  store i64 %2888, i64* %3, align 8
  %2889 = inttoptr i64 %2887 to i32*
  %2890 = load i32, i32* %2889, align 4
  %2891 = zext i32 %2890 to i64
  store i64 %2891, i64* %RAX.i162, align 8
  %2892 = add i64 %2886, -72
  %2893 = add i64 %2885, 6
  store i64 %2893, i64* %3, align 8
  %2894 = inttoptr i64 %2892 to i32*
  %2895 = load i32, i32* %2894, align 4
  %2896 = sub i32 %2890, %2895
  %2897 = icmp ult i32 %2890, %2895
  %2898 = zext i1 %2897 to i8
  store i8 %2898, i8* %14, align 1
  %2899 = and i32 %2896, 255
  %2900 = tail call i32 @llvm.ctpop.i32(i32 %2899)
  %2901 = trunc i32 %2900 to i8
  %2902 = and i8 %2901, 1
  %2903 = xor i8 %2902, 1
  store i8 %2903, i8* %21, align 1
  %2904 = xor i32 %2895, %2890
  %2905 = xor i32 %2904, %2896
  %2906 = lshr i32 %2905, 4
  %2907 = trunc i32 %2906 to i8
  %2908 = and i8 %2907, 1
  store i8 %2908, i8* %27, align 1
  %2909 = icmp eq i32 %2896, 0
  %2910 = zext i1 %2909 to i8
  store i8 %2910, i8* %30, align 1
  %2911 = lshr i32 %2896, 31
  %2912 = trunc i32 %2911 to i8
  store i8 %2912, i8* %33, align 1
  %2913 = lshr i32 %2890, 31
  %2914 = lshr i32 %2895, 31
  %2915 = xor i32 %2914, %2913
  %2916 = xor i32 %2911, %2913
  %2917 = add nuw nsw i32 %2916, %2915
  %2918 = icmp eq i32 %2917, 2
  %2919 = zext i1 %2918 to i8
  store i8 %2919, i8* %39, align 1
  %2920 = icmp ne i8 %2912, 0
  %2921 = xor i1 %2920, %2918
  %.v106 = select i1 %2921, i64 12, i64 129
  %2922 = add i64 %2885, %.v106
  store i64 %2922, i64* %3, align 8
  br i1 %2921, label %block_429c8b, label %block_.L_429d00

block_429c8b:                                     ; preds = %block_.L_429c7f
  %2923 = add i64 %2922, ptrtoint (%G_0xb9355__rip__type* @G_0xb9355__rip_ to i64)
  %2924 = add i64 %2922, 8
  store i64 %2924, i64* %3, align 8
  %2925 = inttoptr i64 %2923 to i64*
  %2926 = load i64, i64* %2925, align 8
  store i64 %2926, i64* %300, align 1
  store double 0.000000e+00, double* %302, align 1
  %2927 = add i64 %2922, 12
  store i64 %2927, i64* %3, align 8
  %2928 = load i32, i32* %2889, align 4
  %2929 = sext i32 %2928 to i64
  store i64 %2929, i64* %RAX.i162, align 8
  %2930 = shl nsw i64 %2929, 2
  %2931 = add nsw i64 %2930, 11270576
  %2932 = add i64 %2922, 19
  store i64 %2932, i64* %3, align 8
  %2933 = inttoptr i64 %2931 to i32*
  %2934 = load i32, i32* %2933, align 4
  %2935 = zext i32 %2934 to i64
  store i64 %2935, i64* %RCX.i908, align 8
  %2936 = add i64 %2886, -44
  %2937 = add i64 %2922, 22
  store i64 %2937, i64* %3, align 8
  %2938 = inttoptr i64 %2936 to i32*
  store i32 %2934, i32* %2938, align 4
  %2939 = load i64, i64* %RBP.i, align 8
  %2940 = add i64 %2939, -44
  %2941 = load i64, i64* %3, align 8
  %2942 = add i64 %2941, 4
  store i64 %2942, i64* %3, align 8
  %2943 = inttoptr i64 %2940 to i32*
  %2944 = load i32, i32* %2943, align 4
  %2945 = sext i32 %2944 to i64
  store i64 %2945, i64* %RAX.i162, align 8
  %2946 = shl nsw i64 %2945, 2
  %2947 = add nsw i64 %2946, 11268976
  %2948 = add i64 %2941, 13
  store i64 %2948, i64* %3, align 8
  %2949 = inttoptr i64 %2947 to i32*
  %2950 = load i32, i32* %2949, align 4
  %2951 = sitofp i32 %2950 to double
  store double %2951, double* %304, align 1
  %2952 = add i64 %2941, 17
  store i64 %2952, i64* %3, align 8
  %2953 = load double, double* %305, align 1
  %2954 = fcmp uno double %2951, %2953
  br i1 %2954, label %2955, label %2965

; <label>:2955:                                   ; preds = %block_429c8b
  %2956 = fadd double %2951, %2953
  %2957 = bitcast double %2956 to i64
  %2958 = and i64 %2957, 9221120237041090560
  %2959 = icmp eq i64 %2958, 9218868437227405312
  %2960 = and i64 %2957, 2251799813685247
  %2961 = icmp ne i64 %2960, 0
  %2962 = and i1 %2959, %2961
  br i1 %2962, label %2963, label %2971

; <label>:2963:                                   ; preds = %2955
  %2964 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %2952, %struct.Memory* %MEMORY.19)
  %.pre45 = load i64, i64* %3, align 8
  br label %routine_ucomisd__xmm0___xmm1.exit

; <label>:2965:                                   ; preds = %block_429c8b
  %2966 = fcmp ogt double %2951, %2953
  br i1 %2966, label %2971, label %2967

; <label>:2967:                                   ; preds = %2965
  %2968 = fcmp olt double %2951, %2953
  br i1 %2968, label %2971, label %2969

; <label>:2969:                                   ; preds = %2967
  %2970 = fcmp oeq double %2951, %2953
  br i1 %2970, label %2971, label %2975

; <label>:2971:                                   ; preds = %2969, %2967, %2965, %2955
  %2972 = phi i8 [ 0, %2965 ], [ 0, %2967 ], [ 1, %2969 ], [ 1, %2955 ]
  %2973 = phi i8 [ 0, %2965 ], [ 0, %2967 ], [ 0, %2969 ], [ 1, %2955 ]
  %2974 = phi i8 [ 0, %2965 ], [ 1, %2967 ], [ 0, %2969 ], [ 1, %2955 ]
  store i8 %2972, i8* %30, align 1
  store i8 %2973, i8* %21, align 1
  store i8 %2974, i8* %14, align 1
  br label %2975

; <label>:2975:                                   ; preds = %2971, %2969
  store i8 0, i8* %39, align 1
  store i8 0, i8* %33, align 1
  store i8 0, i8* %27, align 1
  br label %routine_ucomisd__xmm0___xmm1.exit

routine_ucomisd__xmm0___xmm1.exit:                ; preds = %2975, %2963
  %2976 = phi i64 [ %.pre45, %2963 ], [ %2952, %2975 ]
  %2977 = phi %struct.Memory* [ %2964, %2963 ], [ %MEMORY.19, %2975 ]
  %2978 = add i64 %2976, 24
  %2979 = add i64 %2976, 6
  %2980 = load i8, i8* %14, align 1
  %2981 = load i8, i8* %30, align 1
  %2982 = or i8 %2981, %2980
  %2983 = icmp eq i8 %2982, 0
  %2984 = select i1 %2983, i64 %2978, i64 %2979
  store i64 %2984, i64* %3, align 8
  %.pre46 = load i64, i64* %RBP.i, align 8
  br i1 %2983, label %block_.L_429cca, label %block_429cb8

block_429cb8:                                     ; preds = %routine_ucomisd__xmm0___xmm1.exit
  %2985 = add i64 %.pre46, -40
  %2986 = add i64 %2984, 4
  store i64 %2986, i64* %3, align 8
  %2987 = inttoptr i64 %2985 to i64*
  %2988 = load i64, i64* %2987, align 8
  store i64 %2988, i64* %RAX.i162, align 8
  %2989 = add i64 %.pre46, -44
  %2990 = add i64 %2984, 8
  store i64 %2990, i64* %3, align 8
  %2991 = inttoptr i64 %2989 to i32*
  %2992 = load i32, i32* %2991, align 4
  %2993 = sext i32 %2992 to i64
  store i64 %2993, i64* %RCX.i908, align 8
  %2994 = shl nsw i64 %2993, 2
  %2995 = add i64 %2994, %2988
  %2996 = add i64 %2984, 12
  store i64 %2996, i64* %3, align 8
  %2997 = inttoptr i64 %2995 to i32*
  %2998 = load i32, i32* %2997, align 4
  store i8 0, i8* %14, align 1
  %2999 = and i32 %2998, 255
  %3000 = tail call i32 @llvm.ctpop.i32(i32 %2999)
  %3001 = trunc i32 %3000 to i8
  %3002 = and i8 %3001, 1
  %3003 = xor i8 %3002, 1
  store i8 %3003, i8* %21, align 1
  store i8 0, i8* %27, align 1
  %3004 = icmp eq i32 %2998, 0
  %3005 = zext i1 %3004 to i8
  store i8 %3005, i8* %30, align 1
  %3006 = lshr i32 %2998, 31
  %3007 = trunc i32 %3006 to i8
  store i8 %3007, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %.v107 = select i1 %3004, i64 18, i64 43
  %3008 = add i64 %2984, %.v107
  store i64 %3008, i64* %3, align 8
  br i1 %3004, label %block_.L_429cca, label %block_.L_429ce3

block_.L_429cca:                                  ; preds = %routine_ucomisd__xmm0___xmm1.exit, %block_429cb8
  %3009 = phi i64 [ %3008, %block_429cb8 ], [ %2978, %routine_ucomisd__xmm0___xmm1.exit ]
  %3010 = add i64 %.pre46, -44
  %3011 = add i64 %3009, 4
  store i64 %3011, i64* %3, align 8
  %3012 = inttoptr i64 %3010 to i32*
  %3013 = load i32, i32* %3012, align 4
  %3014 = sext i32 %3013 to i64
  store i64 %3014, i64* %RAX.i162, align 8
  %3015 = shl nsw i64 %3014, 2
  %3016 = add nsw i64 %3015, 11268976
  %3017 = add i64 %3009, 11
  store i64 %3017, i64* %3, align 8
  %3018 = inttoptr i64 %3016 to i32*
  %3019 = load i32, i32* %3018, align 4
  %3020 = zext i32 %3019 to i64
  store i64 %3020, i64* %RCX.i908, align 8
  %3021 = add i64 %.pre46, -40
  %3022 = add i64 %3009, 15
  store i64 %3022, i64* %3, align 8
  %3023 = inttoptr i64 %3021 to i64*
  %3024 = load i64, i64* %3023, align 8
  store i64 %3024, i64* %RAX.i162, align 8
  %3025 = add i64 %3009, 19
  store i64 %3025, i64* %3, align 8
  %3026 = load i32, i32* %3012, align 4
  %3027 = sext i32 %3026 to i64
  store i64 %3027, i64* %RDX.i948.pre-phi, align 8
  %3028 = shl nsw i64 %3027, 2
  %3029 = add i64 %3024, %3028
  %3030 = add i64 %3009, 22
  store i64 %3030, i64* %3, align 8
  %3031 = inttoptr i64 %3029 to i32*
  %3032 = load i32, i32* %3031, align 4
  %3033 = add i32 %3032, %3019
  %3034 = zext i32 %3033 to i64
  store i64 %3034, i64* %RCX.i908, align 8
  %3035 = icmp ult i32 %3033, %3019
  %3036 = icmp ult i32 %3033, %3032
  %3037 = or i1 %3035, %3036
  %3038 = zext i1 %3037 to i8
  store i8 %3038, i8* %14, align 1
  %3039 = and i32 %3033, 255
  %3040 = tail call i32 @llvm.ctpop.i32(i32 %3039)
  %3041 = trunc i32 %3040 to i8
  %3042 = and i8 %3041, 1
  %3043 = xor i8 %3042, 1
  store i8 %3043, i8* %21, align 1
  %3044 = xor i32 %3032, %3019
  %3045 = xor i32 %3044, %3033
  %3046 = lshr i32 %3045, 4
  %3047 = trunc i32 %3046 to i8
  %3048 = and i8 %3047, 1
  store i8 %3048, i8* %27, align 1
  %3049 = icmp eq i32 %3033, 0
  %3050 = zext i1 %3049 to i8
  store i8 %3050, i8* %30, align 1
  %3051 = lshr i32 %3033, 31
  %3052 = trunc i32 %3051 to i8
  store i8 %3052, i8* %33, align 1
  %3053 = lshr i32 %3019, 31
  %3054 = lshr i32 %3032, 31
  %3055 = xor i32 %3051, %3053
  %3056 = xor i32 %3051, %3054
  %3057 = add nuw nsw i32 %3055, %3056
  %3058 = icmp eq i32 %3057, 2
  %3059 = zext i1 %3058 to i8
  store i8 %3059, i8* %39, align 1
  %3060 = add i64 %3009, 25
  store i64 %3060, i64* %3, align 8
  store i32 %3033, i32* %3031, align 4
  %.pre47 = load i64, i64* %RBP.i, align 8
  %.pre48 = load i64, i64* %3, align 8
  br label %block_.L_429ce3

block_.L_429ce3:                                  ; preds = %block_429cb8, %block_.L_429cca
  %3061 = phi i64 [ %.pre48, %block_.L_429cca ], [ %3008, %block_429cb8 ]
  %3062 = phi i64 [ %.pre47, %block_.L_429cca ], [ %.pre46, %block_429cb8 ]
  %3063 = add i64 %3062, -44
  %3064 = add i64 %3061, 4
  store i64 %3064, i64* %3, align 8
  %3065 = inttoptr i64 %3063 to i32*
  %3066 = load i32, i32* %3065, align 4
  %3067 = sext i32 %3066 to i64
  store i64 %3067, i64* %RAX.i162, align 8
  %3068 = shl nsw i64 %3067, 2
  %3069 = add nsw i64 %3068, 11268976
  %3070 = add i64 %3061, 15
  store i64 %3070, i64* %3, align 8
  %3071 = inttoptr i64 %3069 to i32*
  store i32 0, i32* %3071, align 4
  %3072 = load i64, i64* %RBP.i, align 8
  %3073 = add i64 %3072, -56
  %3074 = load i64, i64* %3, align 8
  %3075 = add i64 %3074, 3
  store i64 %3075, i64* %3, align 8
  %3076 = inttoptr i64 %3073 to i32*
  %3077 = load i32, i32* %3076, align 4
  %3078 = add i32 %3077, 1
  %3079 = zext i32 %3078 to i64
  store i64 %3079, i64* %RAX.i162, align 8
  %3080 = icmp eq i32 %3077, -1
  %3081 = icmp eq i32 %3078, 0
  %3082 = or i1 %3080, %3081
  %3083 = zext i1 %3082 to i8
  store i8 %3083, i8* %14, align 1
  %3084 = and i32 %3078, 255
  %3085 = tail call i32 @llvm.ctpop.i32(i32 %3084)
  %3086 = trunc i32 %3085 to i8
  %3087 = and i8 %3086, 1
  %3088 = xor i8 %3087, 1
  store i8 %3088, i8* %21, align 1
  %3089 = xor i32 %3078, %3077
  %3090 = lshr i32 %3089, 4
  %3091 = trunc i32 %3090 to i8
  %3092 = and i8 %3091, 1
  store i8 %3092, i8* %27, align 1
  %3093 = zext i1 %3081 to i8
  store i8 %3093, i8* %30, align 1
  %3094 = lshr i32 %3078, 31
  %3095 = trunc i32 %3094 to i8
  store i8 %3095, i8* %33, align 1
  %3096 = lshr i32 %3077, 31
  %3097 = xor i32 %3094, %3096
  %3098 = add nuw nsw i32 %3097, %3094
  %3099 = icmp eq i32 %3098, 2
  %3100 = zext i1 %3099 to i8
  store i8 %3100, i8* %39, align 1
  %3101 = add i64 %3074, 9
  store i64 %3101, i64* %3, align 8
  store i32 %3078, i32* %3076, align 4
  %3102 = load i64, i64* %3, align 8
  %3103 = add i64 %3102, -124
  store i64 %3103, i64* %3, align 8
  br label %block_.L_429c7f

block_.L_429d00:                                  ; preds = %block_.L_429c7f
  %3104 = load i64, i64* %6, align 8
  %3105 = add i64 %3104, 16
  store i64 %3105, i64* %6, align 8
  %3106 = icmp ugt i64 %3104, -17
  %3107 = zext i1 %3106 to i8
  store i8 %3107, i8* %14, align 1
  %3108 = trunc i64 %3105 to i32
  %3109 = and i32 %3108, 255
  %3110 = tail call i32 @llvm.ctpop.i32(i32 %3109)
  %3111 = trunc i32 %3110 to i8
  %3112 = and i8 %3111, 1
  %3113 = xor i8 %3112, 1
  store i8 %3113, i8* %21, align 1
  %3114 = xor i64 %3104, 16
  %3115 = xor i64 %3114, %3105
  %3116 = lshr i64 %3115, 4
  %3117 = trunc i64 %3116 to i8
  %3118 = and i8 %3117, 1
  store i8 %3118, i8* %27, align 1
  %3119 = icmp eq i64 %3105, 0
  %3120 = zext i1 %3119 to i8
  store i8 %3120, i8* %30, align 1
  %3121 = lshr i64 %3105, 63
  %3122 = trunc i64 %3121 to i8
  store i8 %3122, i8* %33, align 1
  %3123 = lshr i64 %3104, 63
  %3124 = xor i64 %3121, %3123
  %3125 = add nuw nsw i64 %3124, %3121
  %3126 = icmp eq i64 %3125, 2
  %3127 = zext i1 %3126 to i8
  store i8 %3127, i8* %39, align 1
  %3128 = add i64 %2922, 5
  store i64 %3128, i64* %3, align 8
  %3129 = add i64 %3104, 24
  %3130 = inttoptr i64 %3105 to i64*
  %3131 = load i64, i64* %3130, align 8
  store i64 %3131, i64* %RBP.i, align 8
  store i64 %3129, i64* %6, align 8
  %3132 = add i64 %2922, 6
  store i64 %3132, i64* %3, align 8
  %3133 = inttoptr i64 %3129 to i64*
  %3134 = load i64, i64* %3133, align 8
  store i64 %3134, i64* %3, align 8
  %3135 = add i64 %3104, 32
  store i64 %3135, i64* %6, align 8
  ret %struct.Memory* %MEMORY.19
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
define %struct.Memory* @routine_subq__0x10___rsp(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %3 = load i64, i64* %RSP, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 4
  store i64 %5, i64* %PC, align 8
  %6 = add i64 %3, -16
  store i64 %6, i64* %RSP, align 8
  %7 = icmp ult i64 %3, 16
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
define %struct.Memory* @routine_movq_0x10__rbp____rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, 16
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x14___r10d(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 21, i32 0, i32 0
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 6
  store i64 %5, i64* %PC, align 8
  store i64 20, i64* %3, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__edi__MINUS0x4__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0
  %EDI = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -4
  %6 = load i32, i32* %EDI, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__esi__MINUS0x8__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0
  %ESI = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -8
  %6 = load i32, i32* %ESI, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
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
define %struct.Memory* @routine_movl__ecx__MINUS0x10__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %ECX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -16
  %6 = load i32, i32* %ECX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__r8__MINUS0x18__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %R8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -24
  %5 = load i64, i64* %R8, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 4
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %4 to i64*
  store i64 %5, i64* %8, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__r9__MINUS0x20__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %R9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 19, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -32
  %5 = load i64, i64* %R9, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 4
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %4 to i64*
  store i64 %5, i64* %8, align 8
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

define %struct.Memory* @routine_idivl__r10d(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 21, i32 0
  %R10D = bitcast %union.anon* %3 to i32*
  %4 = load i32, i32* %R10D, align 4
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
define %struct.Memory* @routine_movl__edx__MINUS0x34__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %EDX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -52
  %6 = load i32, i32* %EDX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x0__MINUS0x44__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -68
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  store i32 0, i32* %7, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x1__MINUS0x48__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -72
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  store i32 1, i32* %7, align 4
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__0x0__0xabf360(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 8
  store i64 %4, i64* %PC, align 8
  %5 = load i32, i32* bitcast (%G_0xabf360_type* @G_0xabf360 to i32*), align 8
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
define %struct.Memory* @routine_jne_.L_42976c(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_cmpl__0x190__MINUS0x2c__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -44
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = add i32 %8, -400
  %10 = icmp ult i32 %8, 400
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
define %struct.Memory* @routine_jge_.L_429761(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movslq_MINUS0x2c__rbp____rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -44
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
define %struct.Memory* @routine_movl__0x0__0xabf370___rax_4_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = shl i64 %3, 2
  %5 = add i64 %4, 11268976
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 11
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %5 to i32*
  store i32 0, i32* %8, align 4
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
define %struct.Memory* @routine_jmpq_.L_429737(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x1__0xabf360(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 11
  store i64 %4, i64* %PC, align 8
  store i32 1, i32* bitcast (%G_0xabf360_type* @G_0xabf360 to i32*), align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__eax__0xabf9b0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %4 = load i32, i32* %EAX, align 4
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  store i32 %4, i32* bitcast (%G_0xabf9b0_type* @G_0xabf9b0 to i32*), align 8
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
define %struct.Memory* @routine_movl__eax__0xabf370___rcx_4_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %4 = load i64, i64* %RCX, align 8
  %5 = shl i64 %4, 2
  %6 = add i64 %5, 11268976
  %7 = load i32, i32* %EAX, align 4
  %8 = load i64, i64* %PC, align 8
  %9 = add i64 %8, 7
  store i64 %9, i64* %PC, align 8
  %10 = inttoptr i64 %6 to i32*
  store i32 %7, i32* %10, align 4
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

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl_MINUS0x48__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i32, i32* %EAX, align 4
  %5 = load i64, i64* %RBP, align 8
  %6 = add i64 %5, -72
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
define %struct.Memory* @routine_jge_.L_429c78(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movslq_MINUS0x44__rbp____rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -68
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
define %struct.Memory* @routine_movl_0xabf9b0___rcx_4____edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = shl i64 %3, 2
  %5 = add i64 %4, 11270576
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 7
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %5 to i32*
  %9 = load i32, i32* %8, align 4
  %10 = zext i32 %9 to i64
  store i64 %10, i64* %RDX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__edx__MINUS0x2c__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %EDX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -44
  %6 = load i32, i32* %EDX, align 4
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
define %struct.Memory* @routine_movl_MINUS0x70__rbp____esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -112
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
define %struct.Memory* @routine_subl_MINUS0x30__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -48
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

; Function Attrs: nounwind
define %struct.Memory* @routine_subl_MINUS0x34__rbp____edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RDX, align 8
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -52
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
define %struct.Memory* @routine_movl__edx__MINUS0x54__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %EDX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -84
  %6 = load i32, i32* %EDX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x44__rbp____edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -68
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
define %struct.Memory* @routine_addl__0x1___edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %RDX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 3
  store i64 %5, i64* %PC, align 8
  %6 = trunc i64 %3 to i32
  %7 = add i32 %6, 1
  %8 = zext i32 %7 to i64
  store i64 %8, i64* %RDX, align 8
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
define %struct.Memory* @routine_movl__edx__MINUS0x44__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %EDX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -68
  %6 = load i32, i32* %EDX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_MINUS0x18__rbp____rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -24
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RCX, align 8
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

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__0x0____rcx__rdi_4_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = load i64, i64* %RDI, align 8
  %5 = shl i64 %4, 2
  %6 = add i64 %5, %3
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 4
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %6 to i32*
  %10 = load i32, i32* %9, align 4
  %11 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %11, align 1
  %12 = and i32 %10, 255
  %13 = tail call i32 @llvm.ctpop.i32(i32 %12)
  %14 = trunc i32 %13 to i8
  %15 = and i8 %14, 1
  %16 = xor i8 %15, 1
  %17 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %16, i8* %17, align 1
  %18 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %18, align 1
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
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jne_.L_4297e9(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jmpq_.L_429784(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__0x1__MINUS0x44__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -68
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
define %struct.Memory* @routine_jne_.L_4297ff(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl__0x1000__MINUS0x40__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -64
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  store i32 4096, i32* %7, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_42981a(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x1000___eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 5
  store i64 %4, i64* %PC, align 8
  store i64 4096, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x50__rbp____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -80
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
define %struct.Memory* @routine_imull_MINUS0x50__rbp____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -80
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 4
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
define %struct.Memory* @routine_movl_MINUS0x54__rbp____edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -84
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
define %struct.Memory* @routine_imull_MINUS0x54__rbp____edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RDX, align 8
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -84
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 4
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %5 to i32*
  %9 = load i32, i32* %8, align 4
  %10 = shl i64 %3, 32
  %11 = ashr exact i64 %10, 32
  %12 = sext i32 %9 to i64
  %13 = mul nsw i64 %12, %11
  %14 = trunc i64 %13 to i32
  %15 = and i64 %13, 4294967295
  store i64 %15, i64* %RDX, align 8
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

; Function Attrs: nounwind
define %struct.Memory* @routine_addl__edx___ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
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
define %struct.Memory* @routine_movl_0xabf370___rcx_4____edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = shl i64 %3, 2
  %5 = add i64 %4, 11268976
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 7
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %5 to i32*
  %9 = load i32, i32* %8, align 4
  %10 = zext i32 %9 to i64
  store i64 %10, i64* %RDX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_imull_MINUS0xc__rbp____edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RDX, align 8
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -12
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 4
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %5 to i32*
  %9 = load i32, i32* %8, align 4
  %10 = shl i64 %3, 32
  %11 = ashr exact i64 %10, 32
  %12 = sext i32 %9 to i64
  %13 = mul nsw i64 %12, %11
  %14 = trunc i64 %13 to i32
  %15 = and i64 %13, 4294967295
  store i64 %15, i64* %RDX, align 8
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
define %struct.Memory* @routine_movl_MINUS0x74__rbp____esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -116
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
define %struct.Memory* @routine_movl__0x0__MINUS0x3c__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -60
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  store i32 0, i32* %7, align 4
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__0x4__MINUS0x3c__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -60
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
define %struct.Memory* @routine_jge_.L_4299df(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movslq_MINUS0x3c__rbp____rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -60
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
define %struct.Memory* @routine_addl_0x7ae1b0___rcx_4____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %RCX, align 8
  %5 = shl i64 %4, 2
  %6 = add i64 %5, 8053168
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 7
  store i64 %8, i64* %PC, align 8
  %9 = trunc i64 %3 to i32
  %10 = inttoptr i64 %6 to i32*
  %11 = load i32, i32* %10, align 4
  %12 = add i32 %11, %9
  %13 = zext i32 %12 to i64
  store i64 %13, i64* %RAX, align 8
  %14 = icmp ult i32 %12, %9
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
  %25 = xor i32 %11, %9
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
  %37 = lshr i32 %9, 31
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
define %struct.Memory* @routine_movzbl_0xb89e60___rcx_1____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = add i64 %3, 12099168
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 8
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i8*
  %8 = load i8, i8* %7, align 1
  %9 = zext i8 %8 to i64
  store i64 %9, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__0x3___eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %4 = load i32, i32* %EAX, align 4
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
define %struct.Memory* @routine_je_.L_4299cc(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jmpq_.L_429874(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
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
define %struct.Memory* @routine_movslq_MINUS0x3c__rbp____rdx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -60
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
define %struct.Memory* @routine_addl_0x7ae1b0___rdx_4____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = load i64, i64* %RDX, align 8
  %5 = shl i64 %4, 2
  %6 = add i64 %5, 8053168
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 7
  store i64 %8, i64* %PC, align 8
  %9 = trunc i64 %3 to i32
  %10 = inttoptr i64 %6 to i32*
  %11 = load i32, i32* %10, align 4
  %12 = add i32 %11, %9
  %13 = zext i32 %12 to i64
  store i64 %13, i64* %RCX, align 8
  %14 = icmp ult i32 %12, %9
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
  %25 = xor i32 %11, %9
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
  %37 = lshr i32 %9, 31
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
define %struct.Memory* @routine_cmpb__0x0____rax__rdx_1_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %RDX, align 8
  %5 = add i64 %4, %3
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 4
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %5 to i8*
  %9 = load i8, i8* %8, align 1
  %10 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %10, align 1
  %11 = zext i8 %9 to i32
  %12 = tail call i32 @llvm.ctpop.i32(i32 %11)
  %13 = trunc i32 %12 to i8
  %14 = and i8 %13, 1
  %15 = xor i8 %14, 1
  %16 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %15, i8* %16, align 1
  %17 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %17, align 1
  %18 = icmp eq i8 %9, 0
  %19 = zext i1 %18 to i8
  %20 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %19, i8* %20, align 1
  %21 = lshr i8 %9, 7
  %22 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %21, i8* %22, align 1
  %23 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %23, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jne_.L_4299c2(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movslq_MINUS0x3c__rbp____rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -60
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
define %struct.Memory* @routine_movl_0x7ae170___rax_4____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = shl i64 %3, 2
  %5 = add i64 %4, 8053104
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
define %struct.Memory* @routine_movl_0x7ae190___rax_4____edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = shl i64 %3, 2
  %5 = add i64 %4, 8053136
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 7
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %5 to i32*
  %9 = load i32, i32* %8, align 4
  %10 = zext i32 %9 to i64
  store i64 %10, i64* %RDX, align 8
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
define %struct.Memory* @routine_jg_.L_4298c6(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl__esi__MINUS0x5c__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0
  %ESI = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -92
  %6 = load i32, i32* %ESI, align 4
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
define %struct.Memory* @routine_imull_MINUS0x5c__rbp____esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RSI, align 8
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -92
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 4
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %5 to i32*
  %9 = load i32, i32* %8, align 4
  %10 = shl i64 %3, 32
  %11 = ashr exact i64 %10, 32
  %12 = sext i32 %9 to i64
  %13 = mul nsw i64 %12, %11
  %14 = trunc i64 %13 to i32
  %15 = and i64 %13, 4294967295
  store i64 %15, i64* %RSI, align 8
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
define %struct.Memory* @routine_movl_MINUS0x78__rbp____esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -120
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
define %struct.Memory* @routine_je_.L_429943(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl_0x7ae170___rcx_4____edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = shl i64 %3, 2
  %5 = add i64 %4, 8053104
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 7
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %5 to i32*
  %9 = load i32, i32* %8, align 4
  %10 = zext i32 %9 to i64
  store i64 %10, i64* %RDX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_imull_MINUS0x50__rbp____edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RDX, align 8
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -80
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 4
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %5 to i32*
  %9 = load i32, i32* %8, align 4
  %10 = shl i64 %3, 32
  %11 = ashr exact i64 %10, 32
  %12 = sext i32 %9 to i64
  %13 = mul nsw i64 %12, %11
  %14 = trunc i64 %13 to i32
  %15 = and i64 %13, 4294967295
  store i64 %15, i64* %RDX, align 8
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
define %struct.Memory* @routine_movl_0x7ae190___rcx_4____esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = shl i64 %3, 2
  %5 = add i64 %4, 8053136
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 7
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %5 to i32*
  %9 = load i32, i32* %8, align 4
  %10 = zext i32 %9 to i64
  store i64 %10, i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_imull_MINUS0x54__rbp____esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RSI, align 8
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -84
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 4
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %5 to i32*
  %9 = load i32, i32* %8, align 4
  %10 = shl i64 %3, 32
  %11 = ashr exact i64 %10, 32
  %12 = sext i32 %9 to i64
  %13 = mul nsw i64 %12, %11
  %14 = trunc i64 %13 to i32
  %15 = and i64 %13, 4294967295
  store i64 %15, i64* %RSI, align 8
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

; Function Attrs: nounwind
define %struct.Memory* @routine_addl__esi___edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
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
  %10 = add i32 %5, %9
  %11 = zext i32 %10 to i64
  store i64 %11, i64* %RDX, align 8
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

; Function Attrs: nounwind
define %struct.Memory* @routine_imull_MINUS0x60__rbp____edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RDX, align 8
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -96
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 4
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %5 to i32*
  %9 = load i32, i32* %8, align 4
  %10 = shl i64 %3, 32
  %11 = ashr exact i64 %10, 32
  %12 = sext i32 %9 to i64
  %13 = mul nsw i64 %12, %11
  %14 = trunc i64 %13 to i32
  %15 = and i64 %13, 4294967295
  store i64 %15, i64* %RDX, align 8
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

; Function Attrs: nounwind
define %struct.Memory* @routine_imull_MINUS0x58__rbp____edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RDX, align 8
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -88
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 4
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %5 to i32*
  %9 = load i32, i32* %8, align 4
  %10 = shl i64 %3, 32
  %11 = ashr exact i64 %10, 32
  %12 = sext i32 %9 to i64
  %13 = mul nsw i64 %12, %11
  %14 = trunc i64 %13 to i32
  %15 = and i64 %13, 4294967295
  store i64 %15, i64* %RDX, align 8
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
define %struct.Memory* @routine_movl__edx__MINUS0x58__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %EDX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -88
  %6 = load i32, i32* %EDX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x40__rbp____edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -64
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
define %struct.Memory* @routine_movl_MINUS0x7c__rbp____esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -124
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
define %struct.Memory* @routine_movsd_0xb969d__rip____xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, ptrtoint (%G_0xb969d__rip__type* @G_0xb969d__rip_ to i64)
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
define %struct.Memory* @routine_cvtsi2sdl_MINUS0x58__rbp____xmm1(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -88
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 5
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %5 to i32*
  %9 = load i32, i32* %8, align 4
  %10 = sitofp i32 %9 to double
  %11 = bitcast %union.VectorReg* %3 to double*
  store double %10, double* %11, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_ucomisd__xmm1___xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
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
define %struct.Memory* @routine_jb_.L_42995f(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %5 = load i8, i8* %4, align 1
  store i8 %5, i8* %BRANCH_TAKEN, align 1
  %6 = icmp ne i8 %5, 0
  %.v = select i1 %6, i64 %rel_off1, i64 %rel_off2
  %7 = add i64 %.v, %3
  store i64 %7, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_4299c7(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__0x0__0xabf370___rcx_4_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = shl i64 %3, 2
  %5 = add i64 %4, 11268976
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 8
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %5 to i32*
  %9 = load i32, i32* %8, align 4
  %10 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %10, align 1
  %11 = and i32 %9, 255
  %12 = tail call i32 @llvm.ctpop.i32(i32 %11)
  %13 = trunc i32 %12 to i8
  %14 = and i8 %13, 1
  %15 = xor i8 %14, 1
  %16 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %15, i8* %16, align 1
  %17 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %17, align 1
  %18 = icmp eq i32 %9, 0
  %19 = zext i1 %18 to i8
  %20 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %19, i8* %20, align 1
  %21 = lshr i32 %9, 31
  %22 = trunc i32 %21 to i8
  %23 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %22, i8* %23, align 1
  %24 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %24, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jne_.L_4299a0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__eax__0xabf9b0___rcx_4_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %4 = load i64, i64* %RCX, align 8
  %5 = shl i64 %4, 2
  %6 = add i64 %5, 11270576
  %7 = load i32, i32* %EAX, align 4
  %8 = load i64, i64* %PC, align 8
  %9 = add i64 %8, 7
  store i64 %9, i64* %PC, align 8
  %10 = inttoptr i64 %6 to i32*
  store i32 %7, i32* %10, align 4
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
define %struct.Memory* @routine_addl_0xabf370___rdx_4____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %RDX, align 8
  %5 = shl i64 %4, 2
  %6 = add i64 %5, 11268976
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 7
  store i64 %8, i64* %PC, align 8
  %9 = trunc i64 %3 to i32
  %10 = inttoptr i64 %6 to i32*
  %11 = load i32, i32* %10, align 4
  %12 = add i32 %11, %9
  %13 = zext i32 %12 to i64
  store i64 %13, i64* %RAX, align 8
  %14 = icmp ult i32 %12, %9
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
  %25 = xor i32 %11, %9
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
  %37 = lshr i32 %9, 31
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
define %struct.Memory* @routine_movl__eax__0xabf370___rdx_4_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %4 = load i64, i64* %RDX, align 8
  %5 = shl i64 %4, 2
  %6 = add i64 %5, 11268976
  %7 = load i32, i32* %EAX, align 4
  %8 = load i64, i64* %PC, align 8
  %9 = add i64 %8, 7
  store i64 %9, i64* %PC, align 8
  %10 = inttoptr i64 %6 to i32*
  store i32 %7, i32* %10, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_4299cc(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_4299d1(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
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
define %struct.Memory* @routine_jmpq_.L_429843(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
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

; Function Attrs: nounwind
define %struct.Memory* @routine_imull_MINUS0x10__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
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
define %struct.Memory* @routine_movl_MINUS0x80__rbp____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -128
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
define %struct.Memory* @routine_cmpl__0x8__MINUS0x3c__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -60
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
define %struct.Memory* @routine_jge_.L_429c73(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_je_.L_429c60(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jmpq_.L_429a38(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jne_.L_429c56(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jg_.L_429a8a(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl__edx__MINUS0x68__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %EDX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -104
  %6 = load i32, i32* %EDX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x68__rbp____edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -104
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
define %struct.Memory* @routine_movl_MINUS0x2c__rbp____esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -44
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
define %struct.Memory* @routine_imull__0x14__0x7ae170___rcx_4____edi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = shl i64 %3, 2
  %5 = add i64 %4, 8053104
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 8
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %5 to i32*
  %9 = load i32, i32* %8, align 4
  %10 = sext i32 %9 to i64
  %11 = mul nsw i64 %10, 20
  %12 = trunc i64 %11 to i32
  %13 = and i64 %11, 4294967292
  store i64 %13, i64* %RDI, align 8
  %14 = mul i64 %10, 85899345920
  %15 = ashr exact i64 %14, 32
  %16 = icmp ne i64 %15, %11
  %17 = zext i1 %16 to i8
  %18 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %17, i8* %18, align 1
  %19 = and i32 %12, 252
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
define %struct.Memory* @routine_addl__0x0___edi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %RDI, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 3
  store i64 %5, i64* %PC, align 8
  %6 = trunc i64 %3 to i32
  %7 = and i64 %3, 4294967295
  store i64 %7, i64* %RDI, align 8
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

; Function Attrs: nounwind
define %struct.Memory* @routine_addl__edi___esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0
  %EDI = bitcast %union.anon* %3 to i32*
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %4 = load i64, i64* %RSI, align 8
  %5 = load i32, i32* %EDI, align 4
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
define %struct.Memory* @routine_movl___rax__rcx_4____esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
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
  store i64 %11, i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x2c__rbp____edi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -44
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
define %struct.Memory* @routine_movl_0x7ae190___rcx_4____r8d(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0, i32 0
  %4 = load i64, i64* %RCX, align 8
  %5 = shl i64 %4, 2
  %6 = add i64 %5, 8053136
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 8
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %6 to i32*
  %10 = load i32, i32* %9, align 4
  %11 = zext i32 %10 to i64
  store i64 %11, i64* %3, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_addl__0x0___r8d(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0
  %R8D = bitcast %union.anon* %3 to i32*
  %4 = getelementptr inbounds %union.anon, %union.anon* %3, i64 0, i32 0
  %5 = load i32, i32* %R8D, align 4
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 4
  store i64 %7, i64* %PC, align 8
  %8 = zext i32 %5 to i64
  store i64 %8, i64* %4, align 8
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %9, align 1
  %10 = and i32 %5, 255
  %11 = tail call i32 @llvm.ctpop.i32(i32 %10)
  %12 = trunc i32 %11 to i8
  %13 = and i8 %12, 1
  %14 = xor i8 %13, 1
  %15 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %14, i8* %15, align 1
  %16 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %16, align 1
  %17 = icmp eq i32 %5, 0
  %18 = zext i1 %17 to i8
  %19 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %18, i8* %19, align 1
  %20 = lshr i32 %5, 31
  %21 = trunc i32 %20 to i8
  %22 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %21, i8* %22, align 1
  %23 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %23, align 1
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_addl__r8d___edi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0
  %R8D = bitcast %union.anon* %3 to i32*
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %4 = load i64, i64* %RDI, align 8
  %5 = load i32, i32* %R8D, align 4
  %6 = zext i32 %5 to i64
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = trunc i64 %4 to i32
  %10 = add i32 %5, %9
  %11 = zext i32 %10 to i64
  store i64 %11, i64* %RDI, align 8
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
define %struct.Memory* @routine_cmpl___rax__rcx_4____esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0
  %ESI = bitcast %union.anon* %3 to i32*
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %4 = load i32, i32* %ESI, align 4
  %5 = load i64, i64* %RAX, align 8
  %6 = load i64, i64* %RCX, align 8
  %7 = shl i64 %6, 2
  %8 = add i64 %7, %5
  %9 = load i64, i64* %PC, align 8
  %10 = add i64 %9, 3
  store i64 %10, i64* %PC, align 8
  %11 = inttoptr i64 %8 to i32*
  %12 = load i32, i32* %11, align 4
  %13 = sub i32 %4, %12
  %14 = icmp ult i32 %4, %12
  %15 = zext i1 %14 to i8
  %16 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %15, i8* %16, align 1
  %17 = and i32 %13, 255
  %18 = tail call i32 @llvm.ctpop.i32(i32 %17)
  %19 = trunc i32 %18 to i8
  %20 = and i8 %19, 1
  %21 = xor i8 %20, 1
  %22 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %21, i8* %22, align 1
  %23 = xor i32 %12, %4
  %24 = xor i32 %23, %13
  %25 = lshr i32 %24, 4
  %26 = trunc i32 %25 to i8
  %27 = and i8 %26, 1
  %28 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %27, i8* %28, align 1
  %29 = icmp eq i32 %13, 0
  %30 = zext i1 %29 to i8
  %31 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %30, i8* %31, align 1
  %32 = lshr i32 %13, 31
  %33 = trunc i32 %32 to i8
  %34 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %33, i8* %34, align 1
  %35 = lshr i32 %4, 31
  %36 = lshr i32 %12, 31
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
define %struct.Memory* @routine_movl__edx__MINUS0x84__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %EDX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -132
  %6 = load i32, i32* %EDX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jge_.L_429b0d(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl_0x7ae190___rdx_4____esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %RDX, align 8
  %4 = shl i64 %3, 2
  %5 = add i64 %4, 8053136
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 7
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %5 to i32*
  %9 = load i32, i32* %8, align 4
  %10 = zext i32 %9 to i64
  store i64 %10, i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_addl__0x0___esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %RSI, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 3
  store i64 %5, i64* %PC, align 8
  %6 = trunc i64 %3 to i32
  %7 = and i64 %3, 4294967295
  store i64 %7, i64* %RSI, align 8
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
define %struct.Memory* @routine_movl__ecx__MINUS0x88__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %ECX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -136
  %6 = load i32, i32* %ECX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_429b31(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_imull__0x14__0x7ae170___rdx_4____esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %RDX, align 8
  %4 = shl i64 %3, 2
  %5 = add i64 %4, 8053104
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 8
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %5 to i32*
  %9 = load i32, i32* %8, align 4
  %10 = sext i32 %9 to i64
  %11 = mul nsw i64 %10, 20
  %12 = trunc i64 %11 to i32
  %13 = and i64 %11, 4294967292
  store i64 %13, i64* %RSI, align 8
  %14 = mul i64 %10, 85899345920
  %15 = ashr exact i64 %14, 32
  %16 = icmp ne i64 %15, %11
  %17 = zext i1 %16 to i8
  %18 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %17, i8* %18, align 1
  %19 = and i32 %12, 252
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
define %struct.Memory* @routine_movl_MINUS0x88__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -136
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
define %struct.Memory* @routine_movl__0x1000___ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 5
  store i64 %4, i64* %PC, align 8
  store i64 4096, i64* %RCX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x84__rbp____edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -132
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
define %struct.Memory* @routine_imull__eax___edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %4 = load i64, i64* %RDX, align 8
  %5 = load i32, i32* %EAX, align 4
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 3
  store i64 %7, i64* %PC, align 8
  %8 = shl i64 %4, 32
  %9 = ashr exact i64 %8, 32
  %10 = sext i32 %5 to i64
  %11 = mul nsw i64 %10, %9
  %12 = trunc i64 %11 to i32
  %13 = and i64 %11, 4294967295
  store i64 %13, i64* %RDX, align 8
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

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__0x0__MINUS0x68__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -104
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
define %struct.Memory* @routine_jne_.L_429b5c(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jmpq_.L_429c5b(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
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

; Function Attrs: nounwind
define %struct.Memory* @routine_imull_MINUS0x68__rbp____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -104
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 4
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
define %struct.Memory* @routine_movl_MINUS0x8c__rbp____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -140
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_je_.L_429bd7(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl__edx__MINUS0x6c__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %EDX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -108
  %6 = load i32, i32* %EDX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x6c__rbp____edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -108
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
define %struct.Memory* @routine_imull_MINUS0x6c__rbp____edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RDX, align 8
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -108
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 4
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %5 to i32*
  %9 = load i32, i32* %8, align 4
  %10 = shl i64 %3, 32
  %11 = ashr exact i64 %10, 32
  %12 = sext i32 %9 to i64
  %13 = mul nsw i64 %12, %11
  %14 = trunc i64 %13 to i32
  %15 = and i64 %13, 4294967295
  store i64 %15, i64* %RDX, align 8
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

; Function Attrs: nounwind
define %struct.Memory* @routine_imull_MINUS0x64__rbp____edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RDX, align 8
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -100
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 4
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %5 to i32*
  %9 = load i32, i32* %8, align 4
  %10 = shl i64 %3, 32
  %11 = ashr exact i64 %10, 32
  %12 = sext i32 %9 to i64
  %13 = mul nsw i64 %12, %11
  %14 = trunc i64 %13 to i32
  %15 = and i64 %13, 4294967295
  store i64 %15, i64* %RDX, align 8
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
define %struct.Memory* @routine_movl__eax__MINUS0x90__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -144
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x90__rbp____esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -144
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
define %struct.Memory* @routine_movsd_0xb9409__rip____xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, ptrtoint (%G_0xb9409__rip__type* @G_0xb9409__rip_ to i64)
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
define %struct.Memory* @routine_cvtsi2sdl_MINUS0x64__rbp____xmm1(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -100
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 5
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %5 to i32*
  %9 = load i32, i32* %8, align 4
  %10 = sitofp i32 %9 to double
  %11 = bitcast %union.VectorReg* %3 to double*
  store double %10, double* %11, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jb_.L_429bf3(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %5 = load i8, i8* %4, align 1
  store i8 %5, i8* %BRANCH_TAKEN, align 1
  %6 = icmp ne i8 %5, 0
  %.v = select i1 %6, i64 %rel_off1, i64 %rel_off2
  %7 = add i64 %.v, %3
  store i64 %7, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jne_.L_429c34(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jmpq_.L_429c60(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_429c65(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_429a07(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x0__MINUS0x38__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -56
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  store i32 0, i32* %7, align 4
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
define %struct.Memory* @routine_jge_.L_429d00(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movsd_0xb9355__rip____xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, ptrtoint (%G_0xb9355__rip__type* @G_0xb9355__rip_ to i64)
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
define %struct.Memory* @routine_movslq_MINUS0x38__rbp____rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -56
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
define %struct.Memory* @routine_movl_0xabf9b0___rax_4____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = shl i64 %3, 2
  %5 = add i64 %4, 11270576
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
define %struct.Memory* @routine_cvtsi2sdl_0xabf370___rax_4____xmm1(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1
  %4 = load i64, i64* %RAX, align 8
  %5 = shl i64 %4, 2
  %6 = add i64 %5, 11268976
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 9
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %6 to i32*
  %10 = load i32, i32* %9, align 4
  %11 = sitofp i32 %10 to double
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
define %struct.Memory* @routine_ja_.L_429cca(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %5 = load i8, i8* %4, align 1
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %7 = load i8, i8* %6, align 1
  %8 = or i8 %7, %5
  %9 = icmp eq i8 %8, 0
  %10 = zext i1 %9 to i8
  store i8 %10, i8* %BRANCH_TAKEN, align 1
  %.v = select i1 %9, i64 %rel_off1, i64 %rel_off2
  %11 = add i64 %.v, %3
  store i64 %11, i64* %PC, align 8
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
define %struct.Memory* @routine_cmpl__0x0____rax__rcx_4_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %RCX, align 8
  %5 = shl i64 %4, 2
  %6 = add i64 %5, %3
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 4
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %6 to i32*
  %10 = load i32, i32* %9, align 4
  %11 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %11, align 1
  %12 = and i32 %10, 255
  %13 = tail call i32 @llvm.ctpop.i32(i32 %12)
  %14 = trunc i32 %13 to i8
  %15 = and i8 %14, 1
  %16 = xor i8 %15, 1
  %17 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %16, i8* %17, align 1
  %18 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %18, align 1
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
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jne_.L_429ce3(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl_0xabf370___rax_4____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = shl i64 %3, 2
  %5 = add i64 %4, 11268976
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 7
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %5 to i32*
  %9 = load i32, i32* %8, align 4
  %10 = zext i32 %9 to i64
  store i64 %10, i64* %RCX, align 8
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
define %struct.Memory* @routine_jmpq_.L_429c7f(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_addq__0x10___rsp(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %3 = load i64, i64* %RSP, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 4
  store i64 %5, i64* %PC, align 8
  %6 = add i64 %3, 16
  store i64 %6, i64* %RSP, align 8
  %7 = icmp ugt i64 %3, -17
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
